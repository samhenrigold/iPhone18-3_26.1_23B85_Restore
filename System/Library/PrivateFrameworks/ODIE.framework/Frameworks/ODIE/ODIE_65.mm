uint64_t mlir::FieldParser<mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr>::parse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if ((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM22TBAATypeDescriptorAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v11))
  {
    v5 = v10;
    v6 = 1;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id)
    {
      v8 = "invalid kind of attribute specified";
      v9 = 259;
      (*(*a1 + 24))(v11, a1, v4, &v8);
      v6 = (v12 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM22TBAATypeDescriptorAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::TBAATypeDescriptorAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseExpressionArg(mlir::AsmParser &,unsigned long long,llvm::SmallVector<unsigned long long,6u> &)::$_0>(uint64_t *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (*(*a1 + 8) && *a1[1] == 4097 && (v11 = 0, v12 = 0, ((*(*a1[2] + 416))(a1[2], &v11) & 1) != 0))
  {
    AttributeEncoding = llvm::dwarf::getAttributeEncoding(v11, v12);
    v3 = AttributeEncoding;
    v13 = AttributeEncoding;
    if (!AttributeEncoding)
    {
      v4 = a1[2];
      v5 = (*(*v4 + 40))(v4);
      v10[16] = 257;
      (*(*v4 + 24))(&v16, v4, v5, v10);
      if (v16)
      {
        mlir::Diagnostic::operator<<<41ul>(v17, "encountered unknown attribute encoding ");
        if (v16)
        {
          v15 = 261;
          v14[0] = v11;
          v14[1] = v12;
          mlir::Diagnostic::operator<<(v17, v14);
          if (v16)
          {
            mlir::Diagnostic::operator<<<2ul>(v17, "");
          }
        }
      }

LABEL_14:
      v6 = v17[192] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
      return v6 & 1;
    }
  }

  else
  {
    if ((mlir::AsmParser::parseInteger<unsigned long long>(a1[2], &v13) & 1) == 0)
    {
      v7 = a1[2];
      v8 = (*(*v7 + 40))(v7);
      v15 = 257;
      (*(*v7 + 24))(&v16, v7, v8, v14);
      if (v16)
      {
        mlir::Diagnostic::operator<<<25ul>(v17, "expected integer operand");
      }

      goto LABEL_14;
    }

    v3 = v13;
  }

  llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(*a1, v3);
  v6 = 1;
  return v6 & 1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1FE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE50))
  {
    v1 = llvm::getTypeName<mlir::LLVM::DIRecursiveTypeAttrInterface>();
    _MergedGlobals_38 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1FE50);
  }

  return _MergedGlobals_38;
}

uint64_t llvm::getTypeName<mlir::LLVM::DIRecursiveTypeAttrInterface>()
{
  if ((atomic_load_explicit(&qword_27FC1FE68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE68))
  {
    qword_27FC1FE58 = llvm::detail::getTypeNameImpl<mlir::LLVM::DIRecursiveTypeAttrInterface>();
    unk_27FC1FE60 = v1;
    __cxa_guard_release(&qword_27FC1FE68);
  }

  return qword_27FC1FE58;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::DIRecursiveTypeAttrInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::DIRecursiveTypeAttrInterface]";
  v6 = 102;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::CConvAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::CConvAttrStorage,mlir::LLVM::cconv::CConv>(llvm::function_ref<void ()(mlir::LLVM::detail::CConvAttrStorage *)>,mlir::TypeID,mlir::LLVM::cconv::CConv &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail16CConvAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_9CConvAttrEJNS2_5cconv5CConvEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ComdatAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ComdatAttrStorage,mlir::LLVM::comdat::Comdat>(llvm::function_ref<void ()(mlir::LLVM::detail::ComdatAttrStorage *)>,mlir::TypeID,mlir::LLVM::comdat::Comdat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail17ComdatAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10ComdatAttrEJNS2_6comdat6ComdatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LinkageAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LinkageAttrStorage,mlir::LLVM::linkage::Linkage>(llvm::function_ref<void ()(mlir::LLVM::detail::LinkageAttrStorage *)>,mlir::TypeID,mlir::LLVM::linkage::Linkage &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18LinkageAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11LinkageAttrEJNS2_7linkage7LinkageEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::FramePointerKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FramePointerKindAttrStorage,mlir::LLVM::framePointerKind::FramePointerKind>(llvm::function_ref<void ()(mlir::LLVM::detail::FramePointerKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::framePointerKind::FramePointerKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27FramePointerKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20FramePointerKindAttrEJNS2_16framePointerKind16FramePointerKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5, unsigned int *a6, unsigned int *a7)
{
  v17 = a2;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  v12 = *a6;
  v18 = v17;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, v11, a4, (v12 >> 4) ^ (v12 >> 9));
  v14 = *a7;
  v19 = v18;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v13, a4, (v14 >> 4) ^ (v14 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v19, v15, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopVectorizeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopVectorizeAttrStorage,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopVectorizeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 6);
  v8 = (*a1)[1];
  v9 = **a1;
  v7 = (*a1)[2];
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x40uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v9;
  *(v4 + 24) = v8;
  *(v4 + 40) = v7;
  *(v4 + 56) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24LoopVectorizeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17LoopVectorizeAttrEJNS1_8BoolAttrESD_SD_NS1_11IntegerAttrENS2_18LoopAnnotationAttrESF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopInterleaveAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopInterleaveAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopInterleaveAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopInterleaveAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopInterleaveAttrEJNS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnrollAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 6);
  v8 = (*a1)[1];
  v9 = **a1;
  v7 = (*a1)[2];
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x40uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v9;
  *(v4 + 24) = v8;
  *(v4 + 40) = v7;
  *(v4 + 56) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LoopUnrollAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14LoopUnrollAttrEJNS1_8BoolAttrENS1_11IntegerAttrESD_SD_NS2_18LoopAnnotationAttrESF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5, void *a6, unsigned int *a7, unsigned int *a8)
{
  v15 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v15, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(a1, v15, v13, a4, *a6, a7, a8);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAndJamAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 6);
  v8 = (*a1)[1];
  v9 = **a1;
  v7 = (*a1)[2];
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x40uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v9;
  *(v4 + 24) = v8;
  *(v4 + 40) = v7;
  *(v4 + 56) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27LoopUnrollAndJamAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20LoopUnrollAndJamAttrEJNS1_8BoolAttrENS1_11IntegerAttrENS2_18LoopAnnotationAttrESF_SF_SF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::BoolAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopLICMAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopLICMAttrStorage,mlir::BoolAttr,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopLICMAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19LoopLICMAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12LoopLICMAttrEJNS1_8BoolAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopDistributeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopDistributeAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopDistributeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v7 = (*a1)[1];
  v8 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x30uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v8;
  *(v4 + 24) = v7;
  *(v4 + 40) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopDistributeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopDistributeAttrEJNS1_8BoolAttrENS2_18LoopAnnotationAttrESE_SE_SE_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopPipelineAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPipelineAttrStorage,mlir::BoolAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPipelineAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LoopPipelineAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16LoopPipelineAttrEJNS1_8BoolAttrENS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopPeeledAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPeeledAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPeeledAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LoopPeeledAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14LoopPeeledAttrEJNS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnswitchAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnswitchAttrStorage,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnswitchAttrStorage *)>,mlir::TypeID,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LoopUnswitchAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16LoopUnswitchAttrEJNS1_8BoolAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopAnnotationAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] != v2[1])
  {
    return 0;
  }

  if (a2[3] != v2[2])
  {
    return 0;
  }

  if (a2[4] != v2[3])
  {
    return 0;
  }

  if (a2[5] != v2[4])
  {
    return 0;
  }

  if (a2[6] != v2[5])
  {
    return 0;
  }

  if (a2[7] != v2[6])
  {
    return 0;
  }

  if (a2[8] != v2[7])
  {
    return 0;
  }

  if (a2[9] != v2[8])
  {
    return 0;
  }

  if (a2[10] != v2[9])
  {
    return 0;
  }

  if (a2[11] != v2[10])
  {
    return 0;
  }

  if (a2[12] != v2[11])
  {
    return 0;
  }

  if (a2[13] != v2[12])
  {
    return 0;
  }

  if (a2[14] != v2[13])
  {
    return 0;
  }

  v3 = a2[16];
  if (v3 != v2[15])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[15];
  v5 = v2[14];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopAnnotationAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v19 = **a1;
  v17 = (*a1)[2];
  v18 = (*a1)[1];
  v15 = (*a1)[4];
  v16 = (*a1)[3];
  v13 = (*a1)[6];
  v14 = (*a1)[5];
  v4 = *(*a1 + 15);
  if (v4)
  {
    v5 = *(*a1 + 14);
    v6 = 8 * v4;
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v4, 3);
    v8 = v7;
    do
    {
      v9 = *v5++;
      *v8++ = v9;
      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x88uLL, 3);
  *v10 = 0;
  *(v10 + 8) = v19;
  *(v10 + 24) = v18;
  *(v10 + 40) = v17;
  *(v10 + 56) = v16;
  *(v10 + 72) = v15;
  *(v10 + 88) = v14;
  *(v10 + 104) = v13;
  *(v10 + 120) = v7;
  *(v10 + 128) = v4;
  v11 = a1[1];
  if (*v11)
  {
    (*v11)(*(v11 + 1), v10);
  }

  return v10;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopAnnotationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopAnnotationAttrEJNS1_8BoolAttrENS2_17LoopVectorizeAttrENS2_18LoopInterleaveAttrENS2_14LoopUnrollAttrENS2_20LoopUnrollAndJamAttrENS2_12LoopLICMAttrENS2_18LoopDistributeAttrENS2_16LoopPipelineAttrENS2_14LoopPeeledAttrENS2_16LoopUnswitchAttrESD_SD_NS1_8FusedLocESN_NS_8ArrayRefINS2_15AccessGroupAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueEST_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSV_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::AccessGroupAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::AccessGroupAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIExpressionElemAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionElemAttrStorage,unsigned int,llvm::ArrayRef<unsigned long long>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionElemAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<unsigned long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIExpressionElemAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionElemAttrStorage,unsigned int,llvm::ArrayRef<unsigned long long>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionElemAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<unsigned long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 2);
  if (v5)
  {
    v6 = *(*a1 + 1);
    v7 = 8 * v5;
    v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v5, 3);
    v9 = v8;
    do
    {
      v10 = *v6++;
      *v9++ = v10;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v11 = 0;
  *(v11 + 8) = v4;
  *(v11 + 16) = v8;
  *(v11 + 24) = v5;
  v12 = a1[1];
  if (*v12)
  {
    (*v12)(*(v12 + 1), v11);
  }

  return v11;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIExpressionElemAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIExpressionElemAttrEJjNS_8ArrayRefIyEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionAttrStorage,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionAttrStorage,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *(*a1 + 8);
  if (v4)
  {
    v5 = **a1;
    v6 = 8 * v4;
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v4, 3);
    v8 = v7;
    do
    {
      v9 = *v5++;
      *v8++ = v9;
      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v10 = 0;
  v10[1] = v7;
  v10[2] = v4;
  v11 = *(a1 + 8);
  if (*v11)
  {
    (*v11)(*(v11 + 8), v10);
  }

  return v10;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIExpressionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIExpressionAttrEJNS_8ArrayRefINS2_20DIExpressionElemAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DIExpressionElemAttr,6u>,llvm::SmallVector<mlir::LLVM::DIExpressionElemAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*(**a1 + 32))(*a1);
  mlir::MLIRContext::getOrLoadDialect(*v3, "llvm", 4uLL, v4);
  v5 = (*(*v2 + 40))(v2);
  v13 = 0;
  v14[0] = v2;
  if (((*(*v2 + 448))(v2, &v13, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DIExpressionElemAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v14) & 1) == 0)
  {
    return 0;
  }

  v6 = v13;
  if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id)
  {
    v11 = "invalid kind of attribute specified";
    v12 = 259;
    (*(*v2 + 24))(v14, v2, v5, &v11);
    v7 = v15;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    if (v7)
    {
      return 0;
    }

    v6 = 0;
  }

  v9 = a1[1];
  v10 = *(v9 + 8);
  if (v10 >= *(v9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v10 + 1, 8);
    LODWORD(v10) = *(v9 + 8);
  }

  *(*v9 + 8 * v10) = v6;
  ++*(v9 + 8);
  return 1;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DIExpressionElemAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DIExpressionElemAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionElemAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::DIExpressionElemAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIBasicTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIBasicTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIBasicTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 1);
  v5 = *(*a1 + 2);
  v6 = (*a1)[6];
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v7 = 0;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 1), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22DIBasicTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15DIBasicTypeAttrEJjNS1_10StringAttrEyjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(unint64_t a1, void *__dst, char *a3, unsigned int a4, int *a5, unsigned int *a6, unsigned int *a7, char *a8, uint64_t *a9, uint64_t *a10)
{
  v37 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v37, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v38 = v37;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v38, v16, a3, *a5);
  v18 = *a6;
  v39 = v38;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v39, v17, a3, (v18 >> 4) ^ (v18 >> 9));
  v20 = *a7;
  v40 = v39;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v40, v19, a3, (v20 >> 4) ^ (v20 >> 9));
  v41 = v40;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v41, v21, a3, *a8);
  v23 = v41;
  v24 = *a9;
  __src = *a9;
  v25 = (v22 + 8);
  if (v22 + 8 <= a3)
  {
    *v22 = v24;
  }

  else
  {
    v26 = (a3 - v22);
    memcpy(v22, &__src, a3 - v22);
    if (v23)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v27, v28);
      v23 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(&v42, a1, *(a1 + 120), v27, v28);
      v29 = v43;
      *(a1 + 64) = v42;
      *(a1 + 80) = v29;
      *(a1 + 96) = v44;
      *(a1 + 112) = v45;
      v23 = 64;
    }

    v25 = a1 + 8 - v26;
    if (v25 > a3)
    {
      v25 = a1;
    }

    else
    {
      memcpy(a1, &__src + v26, 8 - v26);
    }
  }

  v30 = *a10;
  __src = *a10;
  v31 = (v25 + 8);
  if (v25 + 8 <= a3)
  {
    *v25 = v30;
  }

  else
  {
    v32 = &a3[-v25];
    memcpy(v25, &__src, &a3[-v25]);
    if (v23)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v33, v34);
      v23 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(&v42, a1, *(a1 + 120), v33, v34);
      v35 = v43;
      *(a1 + 64) = v42;
      *(a1 + 80) = v35;
      *(a1 + 96) = v44;
      *(a1 + 112) = v45;
      v23 = 64;
    }

    v31 = (a1 + 8 - v32);
    if (v31 > a3)
    {
      v31 = a1;
    }

    else
    {
      memcpy(a1, &__src + v32, 8 - v32);
    }
  }

  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v23, v31, a3);
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__n128 **a1, unint64_t *a2)
{
  v4 = mlir::LLVM::detail::DICompileUnitAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = a1[1];
  if (v6->n128_u64[0])
  {
    (v6->n128_u64[0])(v6->n128_u64[1], v3, v4);
  }

  return v5;
}

__n128 mlir::LLVM::detail::DICompileUnitAttrStorage::construct(unint64_t *a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  v3 = a2->n128_u32[2];
  v4 = a2[2].n128_u8[0];
  v5 = a2[2].n128_u64[1];
  v6 = a2[3].n128_u64[0];
  v9 = a2[1];
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 0x40uLL, 3);
  *v7 = 0;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  result = v9;
  *(v7 + 24) = v9;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICompileUnitAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICompileUnitAttrEJNS1_12DistinctAttrEjNS2_10DIFileAttrENS1_10StringAttrEbNS2_14DIEmissionKindENS2_15DINameTableKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::LLVM::detail::DICompileUnitAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICompileUnitAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICompileUnitAttrEJRNS1_12DistinctAttrERjRNS2_10DIFileAttrERNS1_10StringAttrERbRNS2_14DIEmissionKindERNS2_15DINameTableKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESR_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPST_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

_DWORD *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::LLVM::DIFlags>(uint64_t a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(v14, a1, *(a1 + 120), v9, v10);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 4 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 4 - v8);
      a1 += 4 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::LLVM::DINodeAttr const*>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v7 = 0;
    return llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
  }

  else
  {
    v5 = a1;
    for (i = 0; i <= 0x38; i += 8)
    {
      v7 = i + 8;
      v8 = *v5;
      v5 += 2;
      *&__src[i] = (v8 >> 4) ^ (v8 >> 9);
      if (v5 == a2)
      {
        return llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
      }
    }

    v17[0] = xmmword_25D0A0610;
    v17[1] = xmmword_25D0A0620;
    v17[2] = xmmword_25D0A0630;
    v18 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v17, __src, a3, a4);
    v10 = 64;
    while (v5 != a2)
    {
      v11 = 0;
      do
      {
        v12 = *v5;
        v5 += 2;
        v13 = v11 + 8;
        *&__src[v11] = (v12 >> 4) ^ (v12 >> 9);
        if (v5 == a2)
        {
          break;
        }

        v14 = v11 >= 0x31;
        v11 += 8;
      }

      while (!v14);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v13], &v20);
      llvm::hashing::detail::hash_state::mix(v17, __src, v15, v16);
      v10 += v13;
    }

    return llvm::hashing::detail::hash_state::finalize(v17, v10);
  }
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIExpressionAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICompositeTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompositeTypeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 16) != *(v2 + 8))
  {
    return 0;
  }

  if (*(a2 + 20) != *(v2 + 3))
  {
    return 0;
  }

  if (*(a2 + 24) != v2[2])
  {
    return 0;
  }

  if (*(a2 + 32) != v2[3])
  {
    return 0;
  }

  if (*(a2 + 40) != *(v2 + 8))
  {
    return 0;
  }

  if (*(a2 + 48) != v2[5])
  {
    return 0;
  }

  if (*(a2 + 56) != v2[6])
  {
    return 0;
  }

  if (*(a2 + 64) != *(v2 + 14))
  {
    return 0;
  }

  if (*(a2 + 72) != v2[8])
  {
    return 0;
  }

  if (*(a2 + 80) != v2[9])
  {
    return 0;
  }

  v3 = *(a2 + 96);
  if (v3 != v2[11])
  {
    return 0;
  }

  if (v3)
  {
    v4 = *(a2 + 88);
    v5 = v2[10];
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  if (*(a2 + 104) != v2[12] || *(a2 + 112) != v2[13] || *(a2 + 120) != v2[14])
  {
    return 0;
  }

  return *(a2 + 128) == v2[15];
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompositeTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompositeTypeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 3);
  v7 = *(*a1 + 8);
  v8 = *(*a1 + 14);
  v9 = (*a1)[8];
  v20 = (*a1)[9];
  v16 = *(*a1 + 1);
  v17 = *(*a1 + 5);
  v18 = *(*a1 + 7);
  v19 = *(*a1 + 6);
  v10 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(a2, (*a1)[10], (*a1)[11]);
  v12 = v11;
  v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x88uLL, 3);
  *v13 = 0;
  *(v13 + 8) = v4;
  *(v13 + 16) = v5;
  *(v13 + 20) = v6;
  *(v13 + 24) = v16;
  *(v13 + 40) = v7;
  *(v13 + 48) = v17;
  *(v13 + 64) = v8;
  *(v13 + 72) = v9;
  *(v13 + 80) = v20;
  *(v13 + 88) = v10;
  *(v13 + 96) = v12;
  *(v13 + 104) = v19;
  *(v13 + 120) = v18;
  v14 = a1[1];
  if (*v14)
  {
    (*v14)(v14[1], v13);
  }

  return v13;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = 8 * a3;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 8 * a3, 3);
  v6 = result;
  do
  {
    v7 = *a2++;
    *v6++ = v7;
    v4 -= 8;
  }

  while (v4);
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DICompositeTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DICompositeTypeAttrEJNS1_12DistinctAttrEbjNS1_10StringAttrENS2_10DIFileAttrEjNS2_11DIScopeAttrENS2_10DITypeAttrENS2_7DIFlagsEyyNS_8ArrayRefINS2_10DINodeAttrEEENS2_16DIExpressionAttrESM_SM_SM_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void llvm::operator<<(llvm::raw_ostream *this, unsigned int a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x200000000;
  v4 = a2;
  if ((~a2 & 3) == 0)
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Public", 6);
    v4 = a2 & 0xFFFFFFFC;
LABEL_3:
    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_54;
  }

  if ((a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Protected", 9);
  v4 &= ~2u;
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Private", 7);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Bit1", 4);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "FwdDecl", 7);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "AppleBlock", 10);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "ReservedBit4", 12);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Virtual", 7);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Artificial", 10);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Explicit", 8);
  if ((v4 & 0x100) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Prototyped", 10);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "ObjcClassComplete", 17);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "ObjectPointer", 13);
  if ((v4 & 0x800) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Vector", 6);
  if ((v4 & 0x1000) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "StaticMember", 12);
  if ((v4 & 0x2000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "LValueReference", 15);
  if ((v4 & 0x4000) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "RValueReference", 15);
  if ((v4 & 0x8000) == 0)
  {
LABEL_19:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "ExportSymbols", 13);
  if ((v4 & 0x10000) == 0)
  {
LABEL_20:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "SingleInheritance", 17);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "MultipleInheritance", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "VirtualInheritance", 18);
  if ((v4 & 0x40000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "IntroducedVirtual", 17);
  if ((v4 & 0x80000) == 0)
  {
LABEL_22:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "BitField", 8);
  if ((v4 & 0x100000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "NoReturn", 8);
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "TypePassByValue", 15);
  if ((v4 & 0x800000) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "TypePassByReference", 19);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "EnumClass", 9);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "Thunk", 5);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "NonTrivial", 10);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_80:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "LittleEndian", 12);
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_79:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "BigEndian", 9);
  if ((v4 & 0x10000000) != 0)
  {
    goto LABEL_80;
  }

LABEL_30:
  if ((v4 & 0x20000000) != 0)
  {
LABEL_31:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "AllCallsDescribed", 17);
  }

LABEL_32:
  v5 = v22;
  v6 = v23;
  memset(&__p, 0, sizeof(__p));
  if (v23)
  {
    v7 = 16 * v23;
    v8 = v23 - 1;
    v9 = 8;
    v10 = v22 + v7;
    do
    {
      v8 += *(v22 + v9);
      v9 += 16;
      v7 -= 16;
    }

    while (v7);
    std::string::reserve(&__p, v8);
    std::string::append(&__p, *v5, *(v5 + 1));
    if (v6 != 1)
    {
      v11 = v5 + 16;
      do
      {
        std::string::append(&__p, "|", 1uLL);
        v12 = *v11;
        v13 = *(v11 + 1);
        v11 += 16;
        std::string::append(&__p, v12, v13);
      }

      while (v11 != v10);
    }
  }

  if (v22 != v24)
  {
    free(v22);
  }

  if (a2 != 3 && (a2 & (a2 - 1)) != 0)
  {
    v16 = *(this + 4);
    if (v16 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 34);
    }

    else
    {
      *(this + 4) = v16 + 1;
      *v16 = 34;
    }

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

    v19 = llvm::raw_ostream::write(this, p_p, size);
    v20 = *(v19 + 4);
    if (v20 >= *(v19 + 3))
    {
      llvm::raw_ostream::write(v19, 34);
    }

    else
    {
      *(v19 + 4) = v20 + 1;
      *v20 = 34;
    }
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    llvm::raw_ostream::write(this, v14, v15);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIDerivedTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIDerivedTypeAttrStorage,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIDerivedTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1 || *(a2 + 16) != *(v2 + 1) || *(a2 + 24) != *(v2 + 2) || *(a2 + 32) != *(v2 + 3) || *(a2 + 40) != v2[8] || *(a2 + 48) != *(v2 + 5))
  {
    return 0;
  }

  v3 = *(a2 + 60);
  v4 = *(v2 + 52);
  if (v3 == v4 && v3 != 0)
  {
    v3 = *(a2 + 56);
    v4 = v2[12];
  }

  return v3 == v4 && *(a2 + 64) == *(v2 + 7);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIDerivedTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIDerivedTypeAttrStorage,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIDerivedTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 3);
  v5 = (*a1)[8];
  v6 = *(*a1 + 7);
  v10 = *(*a1 + 2);
  v11 = *(*a1 + 10);
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x48uLL, 3);
  *v7 = 0;
  *(v7 + 8) = v3;
  *(v7 + 16) = v10;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v11;
  *(v7 + 64) = v6;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 1), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DIDerivedTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DIDerivedTypeAttrEJjNS1_10StringAttrENS2_10DITypeAttrEyjyNSt3__18optionalIjEENS2_10DINodeAttrEEEENSF_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::StringAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, _DWORD *a5)
{
  v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(a1, v10, v8, a3, a5);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, _DWORD *a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIFileAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIFileAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail17DIFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10DIFileAttrEJNS1_10StringAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail37DIGlobalVariableExpressionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_30DIGlobalVariableExpressionAttrEJNS2_20DIGlobalVariableAttrENS2_16DIExpressionAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 5);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 13);
  v10 = (*a1)[1];
  v11 = **a1;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x40uLL, 3);
  *v7 = 0;
  *(v7 + 8) = v11;
  *(v7 + 24) = v10;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  *(v7 + 60) = v6;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 1), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIGlobalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIGlobalVariableAttrEJNS2_11DIScopeAttrENS1_10StringAttrESE_NS2_10DIFileAttrEjNS2_10DITypeAttrEbbjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, int *a6, int *a7)
{
  v16 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v13 = *a5;
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v12, a3, (v13 >> 4) ^ (v13 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned int>(a1, v17, v14, a3, a6, a7);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25DILexicalBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18DILexicalBlockAttrEJNS2_11DIScopeAttrENS2_10DIFileAttrEjjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25DILexicalBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18DILexicalBlockAttrEJRNS2_11DIScopeAttrERNS2_10DIFileAttrERjSH_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, void *a5, int *a6)
{
  v12 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIFileAttr,unsigned int>(a1, v12, v10, a3, *a5, a6);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIFileAttr,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29DILexicalBlockFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22DILexicalBlockFileAttrEJNS2_11DIScopeAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29DILexicalBlockFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22DILexicalBlockFileAttrEJRNS2_11DIScopeAttrERNS2_10DIFileAttrERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int *a7, int *a8, int *a9, unsigned int *a10, int *a11)
{
  v30 = 0;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v30, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v18 = *a5;
  v31 = v30;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v31, v17, a3, (v18 >> 4) ^ (v18 >> 9));
  v20 = *a6;
  v32 = v31;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v32, v19, a3, (v20 >> 4) ^ (v20 >> 9));
  v33 = v32;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v33, v21, a3, *a7);
  v23 = *a8;
  v34 = v33;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v34, v22, a3, v23);
  v35 = v34;
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v35, v24, a3, *a9);
  v26 = *a10;
  v36 = v35;
  v27 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v36, v25, a3, (v26 >> 4) ^ (v26 >> 9));
  v37 = v36;
  v28 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::LLVM::DIFlags>(a1, &v37, v27, a3, *a11);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v37, v28, a3);
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__n128 **a1, unint64_t *a2)
{
  v4 = mlir::LLVM::detail::DILocalVariableAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = a1[1];
  if (v6->n128_u64[0])
  {
    (v6->n128_u64[0])(v6->n128_u64[1], v3, v4);
  }

  return v5;
}

__n128 mlir::LLVM::detail::DILocalVariableAttrStorage::construct(unint64_t *a1, __n128 *a2)
{
  v2 = a2[1].n128_u64[0];
  v3 = a2[2].n128_u32[0];
  v4 = a2[2].n128_u64[1];
  v5 = a2[3].n128_u32[0];
  v6 = a2[1].n128_u64[1];
  v9 = *a2;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 0x40uLL, 3);
  *v7 = 0;
  result = v9;
  *(v7 + 8) = v9;
  *(v7 + 24) = v2;
  *(v7 + 32) = v6;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DILocalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DILocalVariableAttrEJNS2_11DIScopeAttrENS1_10StringAttrENS2_10DIFileAttrEjjjNS2_10DITypeAttrENS2_7DIFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::LLVM::detail::DILocalVariableAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DILocalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DILocalVariableAttrEJRNS2_11DIScopeAttrENS1_10StringAttrERNS2_10DIFileAttrERjSI_SI_RNS2_10DITypeAttrERNS2_7DIFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, unsigned int *a5, uint64_t a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::LLVM::DINodeAttr const*>(a5, &a5[2 * a6], a3, a4);
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v10, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubprogramAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubprogramAttrStorage,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubprogramAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 16) != *(v2 + 8))
  {
    return 0;
  }

  if (*(a2 + 24) != v2[2])
  {
    return 0;
  }

  if (*(a2 + 32) != v2[3])
  {
    return 0;
  }

  if (*(a2 + 40) != v2[4])
  {
    return 0;
  }

  if (*(a2 + 48) != v2[5])
  {
    return 0;
  }

  if (*(a2 + 56) != v2[6])
  {
    return 0;
  }

  if (*(a2 + 64) != v2[7])
  {
    return 0;
  }

  if (*(a2 + 72) != *(v2 + 16))
  {
    return 0;
  }

  if (*(a2 + 76) != *(v2 + 17))
  {
    return 0;
  }

  if (*(a2 + 80) != *(v2 + 18))
  {
    return 0;
  }

  if (*(a2 + 88) != v2[10])
  {
    return 0;
  }

  v3 = *(a2 + 104);
  if (v3 != v2[12])
  {
    return 0;
  }

  if (v3)
  {
    v4 = *(a2 + 96);
    v5 = v2[11];
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_18:
  v7 = *(a2 + 120);
  if (v7 != v2[14])
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v8 = *(a2 + 112);
  v9 = v2[13];
  v10 = 8 * v7 - 8;
  do
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v8++;
    result = v13 == v11;
    v15 = v13 != v11 || v10 == 0;
    v10 -= 8;
  }

  while (!v15);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubprogramAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubprogramAttrStorage,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubprogramAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 18);
  v7 = (*a1)[10];
  v8 = (*a1)[13];
  v9 = (*a1)[14];
  v10 = (*a1)[8];
  v21 = *(*a1 + 2);
  v22 = *(*a1 + 1);
  v20 = *(*a1 + 3);
  v11 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(a2, (*a1)[11], (*a1)[12]);
  v13 = v12;
  v14 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(a2, v8, v9);
  v16 = v15;
  v17 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x80uLL, 3);
  *v17 = 0;
  *(v17 + 8) = v4;
  *(v17 + 16) = v5;
  *(v17 + 24) = v22;
  *(v17 + 40) = v21;
  *(v17 + 56) = v20;
  *(v17 + 72) = v10;
  *(v17 + 80) = v6;
  *(v17 + 88) = v7;
  *(v17 + 96) = v11;
  *(v17 + 104) = v13;
  *(v17 + 112) = v14;
  *(v17 + 120) = v16;
  v18 = a1[1];
  if (*v18)
  {
    (*v18)(v18[1], v17);
  }

  return v17;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DISubprogramAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DISubprogramAttrEJNS1_12DistinctAttrEbSD_NS2_17DICompileUnitAttrENS2_11DIScopeAttrENS1_10StringAttrESG_NS2_10DIFileAttrEjjNS2_17DISubprogramFlagsENS2_20DISubroutineTypeAttrENS_8ArrayRefINS2_10DINodeAttrEEESM_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIModuleAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIModuleAttrStorage,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DIModuleAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 52);
  v9 = (*a1)[1];
  v10 = **a1;
  v8 = (*a1)[2];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x40uLL, 3);
  *v5 = 0;
  *(v5 + 8) = v10;
  *(v5 + 24) = v9;
  *(v5 + 40) = v8;
  *(v5 + 56) = v3;
  *(v5 + 60) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19DIModuleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12DIModuleAttrEJNS2_10DIFileAttrENS2_11DIScopeAttrENS1_10StringAttrESF_SF_SF_jbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DINamespaceAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DINamespaceAttrStorage,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DINamespaceAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 16);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22DINamespaceAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15DINamespaceAttrEJNS1_10StringAttrENS2_11DIScopeAttrEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIImportedEntityAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIImportedEntityAttrStorage,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIImportedEntityAttrStorage *)>,mlir::TypeID,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 16) != *(v2 + 1))
  {
    return 0;
  }

  if (*(a2 + 24) != *(v2 + 2))
  {
    return 0;
  }

  if (*(a2 + 32) != *(v2 + 3))
  {
    return 0;
  }

  if (*(a2 + 40) != v2[8])
  {
    return 0;
  }

  if (*(a2 + 48) != *(v2 + 5))
  {
    return 0;
  }

  v3 = *(a2 + 64);
  if (v3 != *(v2 + 7))
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(a2 + 56);
  v5 = *(v2 + 6);
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIImportedEntityAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIImportedEntityAttrStorage,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIImportedEntityAttrStorage *)>,mlir::TypeID,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 3);
  v6 = (*a1)[8];
  v7 = *(*a1 + 5);
  v14 = *(*a1 + 2);
  v8 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(a2, *(*a1 + 6), *(*a1 + 7));
  v10 = v9;
  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x48uLL, 3);
  *v11 = 0;
  *(v11 + 8) = v4;
  *(v11 + 16) = v14;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  *(v11 + 64) = v10;
  v12 = a1[1];
  if (*v12)
  {
    (*v12)(*(v12 + 1), v11);
  }

  return v11;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIImportedEntityAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIImportedEntityAttrEJjNS2_11DIScopeAttrENS2_10DINodeAttrENS2_10DIFileAttrEjNS1_10StringAttrENS_8ArrayRefISE_EEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIAnnotationAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIAnnotationAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIAnnotationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIAnnotationAttrEJNS1_10StringAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, _DWORD *a7)
{
  v18 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v13 = *a5;
  v19 = v18;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v12, a3, (v13 >> 4) ^ (v13 >> 9));
  v15 = *a6;
  v20 = v19;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v20, v14, a3, (v15 >> 4) ^ (v15 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute>(a1, v20, v16, a3, a7);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = (*a1)[1];
  v7 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v7;
  *(v3 + 24) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21DISubrangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14DISubrangeAttrEJNS1_9AttributeESD_SD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5, void *a6, int *a7)
{
  v13 = a2;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIFileAttr,unsigned int>(a1, v13, v11, a4, *a6, a7);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICommonBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICommonBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DICommonBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 8);
  v7 = (*a1)[1];
  v8 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x30uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v8;
  *(v4 + 24) = v7;
  *(v4 + 40) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICommonBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICommonBlockAttrEJNS2_11DIScopeAttrENS2_20DIGlobalVariableAttrENS1_10StringAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGenericSubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGenericSubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGenericSubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = (*a1)[1];
  v7 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v7;
  *(v3 + 24) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail28DIGenericSubrangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_21DIGenericSubrangeAttrEJNS1_9AttributeESD_SD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubroutineTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubroutineTypeAttrStorage,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubroutineTypeAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (v3 != *(v2 + 2))
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(a2 + 16);
  v5 = *(v2 + 1);
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubroutineTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubroutineTypeAttrStorage,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubroutineTypeAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 2);
  if (v5)
  {
    v6 = *(*a1 + 1);
    v7 = 8 * v5;
    v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v5, 3);
    v9 = v8;
    do
    {
      v10 = *v6++;
      *v9++ = v10;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v11 = 0;
  *(v11 + 8) = v4;
  *(v11 + 16) = v8;
  *(v11 + 24) = v5;
  v12 = a1[1];
  if (*v12)
  {
    (*v12)(*(v12 + 1), v11);
  }

  return v11;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DISubroutineTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DISubroutineTypeAttrEJjNS_8ArrayRefINS2_10DITypeAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, void *a5, void *a6, int *a7)
{
  v14 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v14, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(a1, v14, v12, a3, *a5, a6, a7);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v4 = *(*a1 + 6);
  v8 = **a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v5 = 0;
  *(v5 + 8) = v8;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18DILabelAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11DILabelAttrEJNS2_11DIScopeAttrENS1_10StringAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v4 = *(*a1 + 6);
  v8 = **a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v5 = 0;
  *(v5 + 8) = v8;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18DILabelAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11DILabelAttrEJRNS2_11DIScopeAttrENS1_10StringAttrERNS2_10DIFileAttrERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIStringTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIStringTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIStringTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 1);
  v5 = *(*a1 + 2);
  v6 = (*a1)[6];
  v7 = *(*a1 + 6);
  v8 = (*a1)[14];
  v12 = *(*a1 + 2);
  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x48uLL, 3);
  *v9 = 0;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = a1[1];
  if (*v10)
  {
    (*v10)(*(v10 + 1), v9);
  }

  return v9;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIStringTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIStringTypeAttrEJjNS1_10StringAttrEyjNS2_14DIVariableAttrENS2_16DIExpressionAttrESF_jEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::MemoryEffectsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::MemoryEffectsAttrStorage,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>(llvm::function_ref<void ()(mlir::LLVM::detail::MemoryEffectsAttrStorage *)>,mlir::TypeID,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v7 = **a1;
  v3 = *(*a1 + 2);
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24MemoryEffectsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17MemoryEffectsAttrEJNS2_10ModRefInfoESD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::StringAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, _DWORD *a5)
{
  v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(a1, v10, v8, a3, a5);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::Attribute,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27AliasScopeDomainAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20AliasScopeDomainAttrEJNS1_9AttributeENS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::DistinctAttr,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27AliasScopeDomainAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20AliasScopeDomainAttrEJNS1_12DistinctAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, _DWORD *a6)
{
  v14 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v14, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v11 = *a5;
  v15 = v14;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v15, v10, a3, (v11 >> 4) ^ (v11 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(a1, v15, v12, a3, a6);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJNS1_9AttributeENS2_20AliasScopeDomainAttrENS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJRNS1_9AttributeERNS2_20AliasScopeDomainAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJNS1_12DistinctAttrERNS2_20AliasScopeDomainAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AccessGroupAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AccessGroupAttrStorage,mlir::DistinctAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AccessGroupAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22AccessGroupAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15AccessGroupAttrEJNS1_12DistinctAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAARootAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAARootAttrStorage,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAARootAttrStorage *)>,mlir::TypeID,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19TBAARootAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12TBAARootAttrEJNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::TBAANodeAttr,long long>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, uint64_t *a5)
{
  v11 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v12 = v11;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<long long>(a1, &v12, v8, a3, *a5);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v9, a3);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr,long long>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr,long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21TBAAMemberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14TBAAMemberAttrEJNS2_12TBAANodeAttrExEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr &,long long &>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr &,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21TBAAMemberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14TBAAMemberAttrEJRNS2_12TBAANodeAttrERxEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATypeDescriptorAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 != *(*a1 + 8) || v3 && memcmp(*(a2 + 8), *v2, v3))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (v5 != *(v2 + 24))
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v6 = *(a2 + 24);
  v7 = *(v2 + 16);
  v8 = 8 * v5 - 8;
  do
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *v6++;
    result = v11 == v9;
    v13 = v11 != v9 || v8 == 0;
    v8 -= 8;
  }

  while (!v13);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATypeDescriptorAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v5 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v6 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, **a1, *(*a1 + 8));
  v8 = v7;
  if (v4)
  {
    v9 = 8 * v4;
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v4, 3);
    v11 = v10;
    do
    {
      v12 = *v5++;
      *v11++ = v12;
      v9 -= 8;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v13 = 0;
  v13[1] = v6;
  v13[2] = v8;
  v13[3] = v10;
  v13[4] = v4;
  v14 = *(a1 + 8);
  if (*v14)
  {
    (*v14)(*(v14 + 8), v13);
  }

  return v13;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29TBAATypeDescriptorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22TBAATypeDescriptorAttrEJNS_9StringRefENS_8ArrayRefINS2_14TBAAMemberAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAAMemberAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::TBAAMemberAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAATagAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATagAttrStorage,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATagAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v4 = *(*a1 + 24);
  v8 = **a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v5 = 0;
  *(v5 + 8) = v8;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18TBAATagAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11TBAATagAttrEJNS2_22TBAATypeDescriptorAttrESD_xbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt,llvm::APInt>(llvm::hashing::detail::hash_combine_recursive_helper *a1, const llvm::APInt *a2, char *a3, llvm::hashing::detail::hash_state **this, llvm::hashing::detail::hash_state **a5)
{
  *v12 = 0;
  v9 = llvm::hash_value(this, a2, a3, this);
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, v12, a2, a3, v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt>(a1, *v12, v10, a3, a5);
}

BOOL mlir::LLVM::detail::ConstantRangeAttrStorage::operator==(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0x40)
  {
    if (!memcmp(*(a1 + 8), *a2, ((v4 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*(a1 + 8) != *a2)
  {
    return 0;
  }

LABEL_3:
  v5 = *(a1 + 32);
  if (v5 > 0x40)
  {
    return memcmp(*(a1 + 24), a2[2], ((v5 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  else
  {
    return *(a1 + 24) == a2[2];
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt,llvm::APInt>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 2);
  v5 = **a1;
  *(v3 + 2) = 0;
  v6 = *(v3 + 6);
  v7 = v3[2];
  *(v3 + 6) = 0;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v8 + 16) = v4;
  *v8 = 0;
  *(v8 + 8) = v5;
  *(v8 + 32) = v6;
  *(v8 + 24) = v7;
  v9 = a1[1];
  if (*v9)
  {
    (*v9)(v9[1], v8);
  }

  return v8;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24ConstantRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ConstantRangeAttrEJNS_5APIntESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt &,llvm::APInt &>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 2);
  v5 = **a1;
  *(v3 + 2) = 0;
  v6 = *(v3 + 6);
  v7 = v3[2];
  *(v3 + 6) = 0;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v8 + 16) = v4;
  *v8 = 0;
  *(v8 + 8) = v5;
  *(v8 + 32) = v6;
  *(v8 + 24) = v7;
  v9 = a1[1];
  if (*v9)
  {
    (*v9)(v9[1], v8);
  }

  return v8;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24ConstantRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ConstantRangeAttrEJRNS_5APIntESE_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::VScaleRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VScaleRangeAttrStorage,mlir::IntegerAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::VScaleRangeAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22VScaleRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15VScaleRangeAttrEJNS1_11IntegerAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    result = v6 == v8;
    v10 = v6 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::StringAttr>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25TargetFeaturesAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18TargetFeaturesAttrEJNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    result = v6 == v8;
    v10 = v6 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::StringAttr>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25TargetFeaturesAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18TargetFeaturesAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::VecTypeHintAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VecTypeHintAttrStorage,mlir::TypeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::VecTypeHintAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22VecTypeHintAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15VecTypeHintAttrEJNS1_8TypeAttrEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TailCallKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TailCallKindAttrStorage,mlir::LLVM::tailcallkind::TailCallKind>(llvm::function_ref<void ()(mlir::LLVM::detail::TailCallKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::tailcallkind::TailCallKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23TailCallKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16TailCallKindAttrEJNS2_12tailcallkind12TailCallKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::WorkgroupAttributionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::WorkgroupAttributionAttrStorage,mlir::IntegerAttr,mlir::TypeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::WorkgroupAttributionAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::TypeAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail31WorkgroupAttributionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24WorkgroupAttributionAttrEJNS1_11IntegerAttrENS1_8TypeAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage,mlir::LLVM::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::FastmathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FastmathFlagsAttrStorage,mlir::LLVM::FastmathFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::FastmathFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::FastmathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24FastmathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastmathFlagsAttrEJNS2_13FastmathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void mlir::Dialect::addAttribute<mlir::LLVM::CConvAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::CConvAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::ComdatAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::ComdatAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LinkageAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LinkageAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::FramePointerKindAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::FramePointerKindAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopVectorizeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopVectorizeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopInterleaveAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopInterleaveAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopUnrollAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopUnrollAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopUnrollAndJamAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopUnrollAndJamAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopLICMAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopLICMAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopDistributeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopDistributeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopPipelineAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopPipelineAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopPeeledAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopPeeledAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopUnswitchAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopUnswitchAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopAnnotationAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopAnnotationAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIExpressionElemAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIExpressionElemAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIExpressionAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIExpressionAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id, 0, v2);
}

uint64_t mlir::Dialect::addAttribute<mlir::LLVM::DINullTypeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DINullTypeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::DINullTypeAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIBasicTypeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIBasicTypeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DICompileUnitAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DICompileUnitAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DICompositeTypeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DICompositeTypeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIDerivedTypeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIDerivedTypeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIFileAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIFileAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIGlobalVariableExpressionAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIGlobalVariableExpressionAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIGlobalVariableAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIGlobalVariableAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DILexicalBlockAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DILexicalBlockAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DILexicalBlockFileAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DILexicalBlockFileAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DILocalVariableAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DILocalVariableAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DISubprogramAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DISubprogramAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIModuleAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIModuleAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DINamespaceAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DINamespaceAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIImportedEntityAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIImportedEntityAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIAnnotationAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIAnnotationAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DISubrangeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DISubrangeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DICommonBlockAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DICommonBlockAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIGenericSubrangeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIGenericSubrangeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DISubroutineTypeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DISubroutineTypeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DILabelAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DILabelAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIStringTypeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIStringTypeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::MemoryEffectsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::MemoryEffectsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::AliasScopeDomainAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::AliasScopeDomainAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::AliasScopeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::AliasScopeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::AccessGroupAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::AccessGroupAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TBAARootAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TBAARootAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TBAAMemberAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TBAAMemberAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TBAATypeDescriptorAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TBAATypeDescriptorAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TBAATagAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TBAATagAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::ConstantRangeAttr>(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  v8[1] = 0x300000000;
  *&v7[0] = mlir::detail::StorageUserBase<mlir::LLVM::ConstantRangeAttr,mlir::Attribute,mlir::LLVM::detail::ConstantRangeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(&v7[1] + 1) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v8[0] = v9;
  mlir::AbstractAttribute::AbstractAttribute(&v4, a1, v8, v7, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17ConstantRangeAttrES2_NSD_6detail24ConstantRangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17ConstantRangeAttrES2_NSC_6detail24ConstantRangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id, "llvm.constant_range", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v7);
  mlir::detail::InterfaceMap::~InterfaceMap(v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::LLVM::detail::ConstantRangeAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v4);
}

void mlir::Dialect::addAttribute<mlir::LLVM::VScaleRangeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::VScaleRangeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TargetFeaturesAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TargetFeaturesAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id, 0, v2);
}

uint64_t mlir::Dialect::addAttribute<mlir::LLVM::UndefAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::UndefAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::UndefAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id);
}

uint64_t mlir::Dialect::addAttribute<mlir::LLVM::PoisonAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::PoisonAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::PoisonAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::VecTypeHintAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::VecTypeHintAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id, 0, v2);
}

uint64_t mlir::Dialect::addAttribute<mlir::LLVM::ZeroAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::ZeroAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::ZeroAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TailCallKindAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TailCallKindAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::WorkgroupAttributionAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::WorkgroupAttributionAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::IntegerOverflowFlagsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::IntegerOverflowFlagsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::LLVM::FastmathFlagsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::FastmathFlagsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id, 0, v2);
}

void mlir::AbstractAttribute::get<mlir::LLVM::CConvAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::CConvAttr,mlir::Attribute,mlir::LLVM::detail::CConvAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM9CConvAttrES2_NSD_6detail16CConvAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM9CConvAttrES2_NSC_6detail16CConvAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id, "llvm.cconv", 10);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::LLVM::ComdatAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::ComdatAttr,mlir::Attribute,mlir::LLVM::detail::ComdatAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10ComdatAttrES2_NSD_6detail17ComdatAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10ComdatAttrES2_NSC_6detail17ComdatAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id, "llvm.comdat", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LinkageAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LinkageAttr,mlir::Attribute,mlir::LLVM::detail::LinkageAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11LinkageAttrES2_NSD_6detail18LinkageAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11LinkageAttrES2_NSC_6detail18LinkageAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id, "llvm.linkage", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::LLVM::FramePointerKindAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::FramePointerKindAttr,mlir::Attribute,mlir::LLVM::detail::FramePointerKindAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20FramePointerKindAttrES2_NSD_6detail27FramePointerKindAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20FramePointerKindAttrES2_NSC_6detail27FramePointerKindAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id, "llvm.framePointerKind", 21);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopVectorizeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopVectorizeAttr,mlir::Attribute,mlir::LLVM::detail::LoopVectorizeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LoopVectorizeAttrES2_NSD_6detail24LoopVectorizeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LoopVectorizeAttrES2_NSC_6detail24LoopVectorizeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id, "llvm.loop_vectorize", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LoopVectorizeAttrES2_NSD_6detail24LoopVectorizeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v10 = a2[6];
  v9 = a2[7];
  v11 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v11;
  }

  if (v6)
  {
    (v11)(a4, v6);
    a3 = v11;
  }

  if (v5)
  {
    (v11)(a4, v5);
    a3 = v11;
  }

  if (v8)
  {
    (v11)(a4, v8);
    a3 = v11;
  }

  if (v7)
  {
    (v11)(a4, v7);
    a3 = v11;
  }

  if (v10)
  {
    (v11)(a4, v10);
    a3 = v11;
  }

  if (v9)
  {

    (a3)(a4, v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LoopVectorizeAttrES2_NSC_6detail24LoopVectorizeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (a2[3])
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (a2[4])
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (a2[5])
  {
    v12 = *a3++;
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a2[7];
  if (!a2[6])
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_18:
    v16 = 0;
    return mlir::LLVM::LoopVectorizeAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
  }

  v15 = *a3++;
  v14 = v15;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_16:
  v16 = *a3;
  return mlir::LLVM::LoopVectorizeAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopInterleaveAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopInterleaveAttr,mlir::Attribute,mlir::LLVM::detail::LoopInterleaveAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopInterleaveAttrES2_NSD_6detail25LoopInterleaveAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopInterleaveAttrES2_NSC_6detail25LoopInterleaveAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id, "llvm.loop_interleave", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopInterleaveAttrES2_NSD_6detail25LoopInterleaveAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopInterleaveAttrES2_NSC_6detail25LoopInterleaveAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::LoopInterleaveAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopUnrollAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopUnrollAttr,mlir::Attribute,mlir::LLVM::detail::LoopUnrollAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopUnrollAttrES2_NSD_6detail21LoopUnrollAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopUnrollAttrES2_NSC_6detail21LoopUnrollAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id, "llvm.loop_unroll", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopUnrollAttrES2_NSD_6detail21LoopUnrollAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v10 = a2[6];
  v9 = a2[7];
  v11 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v11;
  }

  if (v6)
  {
    (v11)(a4, v6);
    a3 = v11;
  }

  if (v5)
  {
    (v11)(a4, v5);
    a3 = v11;
  }

  if (v8)
  {
    (v11)(a4, v8);
    a3 = v11;
  }

  if (v7)
  {
    (v11)(a4, v7);
    a3 = v11;
  }

  if (v10)
  {
    (v11)(a4, v10);
    a3 = v11;
  }

  if (v9)
  {

    (a3)(a4, v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopUnrollAttrES2_NSC_6detail21LoopUnrollAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (a2[3])
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (a2[4])
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (a2[5])
  {
    v12 = *a3++;
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a2[7];
  if (!a2[6])
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_18:
    v16 = 0;
    return mlir::LLVM::LoopUnrollAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
  }

  v15 = *a3++;
  v14 = v15;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_16:
  v16 = *a3;
  return mlir::LLVM::LoopUnrollAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopUnrollAndJamAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopUnrollAndJamAttr,mlir::Attribute,mlir::LLVM::detail::LoopUnrollAndJamAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20LoopUnrollAndJamAttrES2_NSD_6detail27LoopUnrollAndJamAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20LoopUnrollAndJamAttrES2_NSC_6detail27LoopUnrollAndJamAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id, "llvm.loop_unroll_and_jam", 24);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20LoopUnrollAndJamAttrES2_NSD_6detail27LoopUnrollAndJamAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v10 = a2[6];
  v9 = a2[7];
  v11 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v11;
  }

  if (v6)
  {
    (v11)(a4, v6);
    a3 = v11;
  }

  if (v5)
  {
    (v11)(a4, v5);
    a3 = v11;
  }

  if (v8)
  {
    (v11)(a4, v8);
    a3 = v11;
  }

  if (v7)
  {
    (v11)(a4, v7);
    a3 = v11;
  }

  if (v10)
  {
    (v11)(a4, v10);
    a3 = v11;
  }

  if (v9)
  {

    (a3)(a4, v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20LoopUnrollAndJamAttrES2_NSC_6detail27LoopUnrollAndJamAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (a2[3])
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (a2[4])
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (a2[5])
  {
    v12 = *a3++;
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a2[7];
  if (!a2[6])
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_18:
    v16 = 0;
    return mlir::LLVM::LoopUnrollAndJamAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
  }

  v15 = *a3++;
  v14 = v15;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_16:
  v16 = *a3;
  return mlir::LLVM::LoopUnrollAndJamAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopLICMAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopLICMAttr,mlir::Attribute,mlir::LLVM::detail::LoopLICMAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12LoopLICMAttrES2_NSD_6detail19LoopLICMAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12LoopLICMAttrES2_NSC_6detail19LoopLICMAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id, "llvm.loop_licm", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12LoopLICMAttrES2_NSD_6detail19LoopLICMAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12LoopLICMAttrES2_NSC_6detail19LoopLICMAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::LoopLICMAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopDistributeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopDistributeAttr,mlir::Attribute,mlir::LLVM::detail::LoopDistributeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopDistributeAttrES2_NSD_6detail25LoopDistributeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopDistributeAttrES2_NSC_6detail25LoopDistributeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id, "llvm.loop_distribute", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopDistributeAttrES2_NSD_6detail25LoopDistributeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v9;
  }

  if (v6)
  {
    (v9)(a4, v6);
    a3 = v9;
  }

  if (v5)
  {
    (v9)(a4, v5);
    a3 = v9;
  }

  if (v8)
  {
    (v9)(a4, v8);
    a3 = v9;
  }

  if (v7)
  {

    (a3)(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopDistributeAttrES2_NSC_6detail25LoopDistributeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (a2[3])
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = a2[5];
  if (!a2[4])
  {
    v10 = 0;
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_12:
    v12 = 0;
    return mlir::LLVM::LoopDistributeAttr::get(*(**a2 + 32), v3, v4, v7, v10, v12);
  }

  v11 = *a3++;
  v10 = v11;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = *a3;
  return mlir::LLVM::LoopDistributeAttr::get(*(**a2 + 32), v3, v4, v7, v10, v12);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopPipelineAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopPipelineAttr,mlir::Attribute,mlir::LLVM::detail::LoopPipelineAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopPipelineAttrES2_NSD_6detail23LoopPipelineAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopPipelineAttrES2_NSC_6detail23LoopPipelineAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id, "llvm.loop_pipeline", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopPipelineAttrES2_NSD_6detail23LoopPipelineAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopPipelineAttrES2_NSC_6detail23LoopPipelineAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::LoopPipelineAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopPeeledAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopPeeledAttr,mlir::Attribute,mlir::LLVM::detail::LoopPeeledAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopPeeledAttrES2_NSD_6detail21LoopPeeledAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopPeeledAttrES2_NSC_6detail21LoopPeeledAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id, "llvm.loop_peeled", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopPeeledAttrES2_NSD_6detail21LoopPeeledAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopPeeledAttrES2_NSC_6detail21LoopPeeledAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::LoopPeeledAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopUnswitchAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopUnswitchAttr,mlir::Attribute,mlir::LLVM::detail::LoopUnswitchAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopUnswitchAttrES2_NSD_6detail23LoopUnswitchAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopUnswitchAttrES2_NSC_6detail23LoopUnswitchAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id, "llvm.loop_unswitch", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopUnswitchAttrES2_NSD_6detail23LoopUnswitchAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopUnswitchAttrES2_NSC_6detail23LoopUnswitchAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::LoopUnswitchAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopAnnotationAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::LoopAnnotationAttr,mlir::Attribute,mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopAnnotationAttrES2_NSD_6detail25LoopAnnotationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopAnnotationAttrES2_NSC_6detail25LoopAnnotationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id, "llvm.loop_annotation", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopAnnotationAttrES2_NSD_6detail25LoopAnnotationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v16 = a2[9];
  v17 = a2[10];
  v18 = a2[11];
  v19 = a2[12];
  v20 = a2[13];
  v13 = a2[15];
  v21 = a2[14];
  v22 = a2[16];
  if (a2[1])
  {
    result = (a3)(a4);
  }

  if (v7)
  {
    result = a3(a4, v7);
  }

  if (v6)
  {
    result = a3(a4, v6);
  }

  if (v9)
  {
    result = a3(a4, v9);
  }

  if (v8)
  {
    result = a3(a4, v8);
  }

  if (v10)
  {
    result = a3(a4, v10);
  }

  if (v11)
  {
    result = a3(a4, v11);
  }

  if (v12)
  {
    result = a3(a4, v12);
  }

  if (v16)
  {
    result = (a3)(a4);
  }

  if (v17)
  {
    result = (a3)(a4);
  }

  if (v18)
  {
    result = (a3)(a4);
  }

  if (v19)
  {
    result = (a3)(a4);
  }

  if (v20)
  {
    result = (a3)(a4);
  }

  if (v21)
  {
    result = (a3)(a4);
  }

  if (v22)
  {
    v15 = 8 * v22;
    do
    {
      if (*v13)
      {
        result = (a3)(a4);
      }

      ++v13;
      v15 -= 8;
    }

    while (v15);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopAnnotationAttrES2_NSC_6detail25LoopAnnotationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4)
  {
    --a4;
    v6 = *a3;
    a3 += 2;
    v4 = v6;
  }

  v7 = *(a2 + 24);
  if (v5)
  {
    --a4;
    v8 = *a3;
    a3 += 2;
    v5 = v8;
  }

  if (v7)
  {
    --a4;
    v9 = *a3;
    a3 += 2;
    v7 = v9;
  }

  if (*(a2 + 32))
  {
    --a4;
    v11 = *a3;
    a3 += 2;
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 40))
  {
    --a4;
    v13 = *a3;
    a3 += 2;
    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  if (*(a2 + 48))
  {
    --a4;
    v15 = *a3;
    a3 += 2;
    v14 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = *(a2 + 64);
  if (*(a2 + 56))
  {
    --a4;
    v18 = *a3;
    a3 += 2;
    v17 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = *(a2 + 72);
  if (v16)
  {
    --a4;
    v20 = *a3;
    a3 += 2;
    v16 = v20;
  }

  v21 = *(a2 + 80);
  if (v19)
  {
    --a4;
    v22 = *a3;
    a3 += 2;
    v19 = v22;
  }

  v23 = *(a2 + 88);
  if (v21)
  {
    --a4;
    v24 = *a3;
    a3 += 2;
    v21 = v24;
  }

  v25 = *(a2 + 96);
  if (v23)
  {
    --a4;
    v26 = *a3;
    a3 += 2;
    v23 = v26;
  }

  v27 = *(a2 + 104);
  if (v25)
  {
    --a4;
    v28 = *a3;
    a3 += 2;
    v25 = v28;
  }

  v29 = *(a2 + 128);
  if (v27)
  {
    --a4;
    v30 = *a3;
    a3 += 2;
    v27 = v30;
  }

  if (*(a2 + 112))
  {
    --a4;
    v32 = *a3;
    a3 += 2;
    v31 = v32;
  }

  else
  {
    v31 = 0;
  }

  if (a4 < v29)
  {
    v29 = a4;
  }

  *&v35 = v27;
  *(&v35 + 1) = v31;
  *&v34 = v23;
  *(&v34 + 1) = v25;
  return mlir::LLVM::LoopAnnotationAttr::get(*(**a2 + 32), v4, v5, v7, v10, v12, v14, v17, v16, v19, v21, v34, v35, a3, v29);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIExpressionElemAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIExpressionElemAttr,mlir::Attribute,mlir::LLVM::detail::DIExpressionElemAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIExpressionElemAttrES2_NSD_6detail27DIExpressionElemAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIExpressionElemAttrES2_NSC_6detail27DIExpressionElemAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id, "llvm.di_expression_elem", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIExpressionElemAttrES2_NSC_6detail27DIExpressionElemAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v3 = v14;
  v19 = &v21;
  v20 = 0x600000000;
  if (*(&v14 + 1))
  {
    v4 = 8 * *(&v14 + 1);
    do
    {
      v5 = *v3;
      v6 = v20;
      if (v20 >= HIDWORD(v20))
      {
        llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(&v19, v5);
      }

      else
      {
        *(v19 + v20) = v5;
        LODWORD(v20) = v6 + 1;
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
    v15 = &v17;
    v16 = 0x600000000;
    if (v20)
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(&v15, &v19);
    }
  }

  else
  {
    v15 = &v17;
    v16 = 0x600000000;
  }

  if (v19 != &v21)
  {
    free(v19);
  }

  v19 = &v13;
  v20 = v22;
  v21 = 0x600000000;
  if (v16)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v20, &v15);
  }

  if (v15 != &v17)
  {
    free(v15);
  }

  v7 = *(**a2 + 32);
  v8 = v19;
  v15 = v19;
  v16 = v18;
  v17 = 0x600000000;
  if (v21)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v16, &v20);
    v8 = v15;
    v9 = v16;
    v10 = v17;
  }

  else
  {
    v10 = 0;
    v9 = v18;
  }

  v11 = mlir::LLVM::DIExpressionElemAttr::get(v7, *v8, v9, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  return v11;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIExpressionAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIExpressionAttr,mlir::Attribute,mlir::LLVM::detail::DIExpressionAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIExpressionAttrES2_NSD_6detail23DIExpressionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIExpressionAttrES2_NSC_6detail23DIExpressionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id, "llvm.di_expression", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIExpressionAttrES2_NSD_6detail23DIExpressionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = *(a2 + 8);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIExpressionAttrES2_NSC_6detail23DIExpressionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, unsigned int *a2, unsigned int *a3, unint64_t *a4)
{
  if (a4 >= a2[4])
  {
    v5 = a2[4];
  }

  else
  {
    v5 = a4;
  }

  return mlir::LLVM::DIExpressionAttr::get(*(**a2 + 32), a3, v5, a4);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DINullTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DINullTypeAttr,mlir::LLVM::DITypeAttr,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DINullTypeAttrENSD_10DITypeAttrENS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DINullTypeAttrENSC_10DITypeAttrENS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id, "llvm.di_null_type", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::DINullTypeAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM14DINullTypeAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM14DINullTypeAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*(a1 + 8), *a1);
  *a2 = result;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIBasicTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIBasicTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DIBasicTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DIBasicTypeAttrENSD_10DITypeAttrENSD_6detail22DIBasicTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DIBasicTypeAttrENSC_10DITypeAttrENSC_6detail22DIBasicTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id, "llvm.di_basic_type", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DIBasicTypeAttrENSD_10DITypeAttrENSD_6detail22DIBasicTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 16))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DIBasicTypeAttrENSC_10DITypeAttrENSC_6detail22DIBasicTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DIBasicTypeAttr::get(*(**a2 + 32), v4, v5, *(a2 + 24), *(a2 + 32));
}

void mlir::AbstractAttribute::get<mlir::LLVM::DICompileUnitAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICompileUnitAttrENSD_11DIScopeAttrENSD_6detail24DICompileUnitAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICompileUnitAttrENSC_11DIScopeAttrENSC_6detail24DICompileUnitAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id, "llvm.di_compile_unit", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICompileUnitAttrENSD_11DIScopeAttrENSD_6detail24DICompileUnitAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[3];
  v5 = a2[4];
  v7 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v7;
  }

  if (v6)
  {
    (v7)(a4, v6);
    a3 = v7;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICompileUnitAttrENSC_11DIScopeAttrENSC_6detail24DICompileUnitAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (*(a2 + 8))
  {
    v5 = *a3++;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a2 + 32);
  if (v3)
  {
    v7 = *a3++;
    v3 = v7;
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (v6)
  {
    v6 = *a3;
  }

  v11 = *(**v4 + 32);
  v12 = *v11;
  v15[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id;
  v15[1] = v11;
  v23[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICompileUnitAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICompileUnitAttrEJRNS1_12DistinctAttrERjRNS2_10DIFileAttrERNS1_10StringAttrERbRNS2_14DIEmissionKindERNS2_15DINameTableKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESR_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPST_E_EEvlS5_;
  v23[1] = v15;
  v17 = v4;
  v18 = v8;
  v19 = v3;
  v20 = v6;
  v21[0] = v9;
  v22 = v10;
  memset(v25, 0, sizeof(v25));
  memset(__dst, 0, sizeof(__dst));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(__dst, __dst, v25, v4, &v18, &v19, &v20, v21, &v22, &v22 + 1);
  v16 = &v17;
  *&__dst[0] = &v17;
  *(&__dst[0] + 1) = v23;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DICompositeTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::getIsRecSelf;
  v4[1] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::getRecId;
  v4[2] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::withRecId;
  v4[3] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::getRecSelf;
  v5 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::LLVM::DICompositeTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::detail::AttributeUniquer,mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DICompositeTypeAttrENSD_10DITypeAttrENSD_6detail26DICompositeTypeAttrStorageENSB_16AttributeUniquerEJNSD_28DIRecursiveTypeAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DICompositeTypeAttrENSC_10DITypeAttrENSC_6detail26DICompositeTypeAttrStorageENSA_16AttributeUniquerEJNSC_28DIRecursiveTypeAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id, "llvm.di_composite_type", 22);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

void *mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::withRecId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = mlir::LLVM::DICompositeTypeAttr::get(*(**a2 + 32), a3, *(a2 + 16), *(a2 + 20), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104), *(a2 + 112), *(a2 + 120), *(a2 + 128));
  v4 = v3;
  if (v3)
  {
    v5 = *v3;
    v6 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
  }

  return v4;
}

void *mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::getRecSelf(uint64_t a1)
{
  v1 = mlir::LLVM::DICompositeTypeAttr::get(*(**a1 + 32), a1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v2 = v1;
  if (v1)
  {
    v3 = *v1;
    v4 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v3 + 8, v4);
  }

  return v2;
}

BOOL mlir::detail::StorageUserBase<mlir::LLVM::DICompositeTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::detail::AttributeUniquer,mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1FE78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE78))
  {
    v1 = llvm::getTypeName<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>>();
    qword_27FC1FE70 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1FE78);
  }

  return qword_27FC1FE70;
}

uint64_t llvm::getTypeName<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1FE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE90))
  {
    qword_27FC1FE80 = llvm::detail::getTypeNameImpl<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>>();
    *algn_27FC1FE88 = v1;
    __cxa_guard_release(&qword_27FC1FE90);
  }

  return qword_27FC1FE80;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<Empty>]";
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

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DICompositeTypeAttrENSD_10DITypeAttrENSD_6detail26DICompositeTypeAttrStorageENSB_16AttributeUniquerEJNSD_28DIRecursiveTypeAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[3];
  v5 = a2[4];
  v8 = a2[6];
  v7 = a2[7];
  v10 = a2[11];
  v9 = a2[12];
  v12 = a2[13];
  v11 = a2[14];
  v13 = a2[15];
  v15 = a2[16];
  v16 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v16;
  }

  if (v6)
  {
    (v16)(a4, v6);
    a3 = v16;
  }

  if (v5)
  {
    (v16)(a4, v5);
    a3 = v16;
  }

  if (v8)
  {
    (v16)(a4, v8);
    a3 = v16;
  }

  if (v7)
  {
    (v16)(a4, v7);
    a3 = v16;
  }

  if (v9)
  {
    v14 = 8 * v9;
    do
    {
      if (*v10)
      {
        v16(a4);
        a3 = v16;
      }

      ++v10;
      v14 -= 8;
    }

    while (v14);
  }

  if (v12)
  {
    (v16)(a4, v12);
    a3 = v16;
  }

  if (v11)
  {
    (v16)(a4, v11);
    a3 = v16;
  }

  if (v13)
  {
    (v16)(a4, v13);
    a3 = v16;
  }

  if (v15)
  {

    a3(a4);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DICompositeTypeAttrENSC_10DITypeAttrENSC_6detail26DICompositeTypeAttrStorageENSA_16AttributeUniquerEJNSC_28DIRecursiveTypeAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4)
{
  v5 = *(a2 + 24);
  if (*(a2 + 8))
  {
    --a4;
    v7 = *a3;
    a3 += 2;
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    --a4;
    v9 = *a3;
    a3 += 2;
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 32))
  {
    --a4;
    v11 = *a3;
    a3 += 2;
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = *(a2 + 96);
  if (*(a2 + 48))
  {
    --a4;
    v14 = *a3;
    a3 += 2;
    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  if (*(a2 + 56))
  {
    --a4;
    v16 = *a3;
    a3 += 2;
    v15 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = &a3[2 * v12];
  if (*(a2 + 104))
  {
    v19 = *v17++;
    v18 = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = *(a2 + 120);
  if (*(a2 + 112))
  {
    v22 = *v17++;
    v21 = v22;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v23 = *v17++;
    v20 = v23;
  }

  if (*(a2 + 128))
  {
    v24 = *v17;
  }

  else
  {
    v24 = 0;
  }

  if (a4 < v12)
  {
    v12 = a4;
  }

  return mlir::LLVM::DICompositeTypeAttr::get(*(**a2 + 32), v6, *(a2 + 16), *(a2 + 20), v8, v10, *(a2 + 40), v13, v15, *(a2 + 64), *(a2 + 72), *(a2 + 80), a3, v12, v18, v21, v20, v24);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIDerivedTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIDerivedTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DIDerivedTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DIDerivedTypeAttrENSD_10DITypeAttrENSD_6detail24DIDerivedTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DIDerivedTypeAttrENSC_10DITypeAttrENSC_6detail24DIDerivedTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id, "llvm.di_derived_type", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DIDerivedTypeAttrENSD_10DITypeAttrENSD_6detail24DIDerivedTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = a2[3];
  v6 = a2[8];
  v7 = a3;
  if (a2[2])
  {
    a3(a4);
    a3 = v7;
  }

  if (v5)
  {
    (v7)(a4, v5);
    a3 = v7;
  }

  if (v6)
  {

    (a3)(a4, v6);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DIDerivedTypeAttrENSC_10DITypeAttrENSC_6detail24DIDerivedTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  if (*(a2 + 16))
  {
    v3 = a3 + 1;
    v4 = *a3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 64);
  if (!*(a2 + 24))
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    return mlir::LLVM::DIDerivedTypeAttr::get(*(**a2 + 32), *(a2 + 8), v4, v6, *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), v8);
  }

  v7 = *v3++;
  v6 = v7;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = *v3;
  return mlir::LLVM::DIDerivedTypeAttr::get(*(**a2 + 32), *(a2 + 8), v4, v6, *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), v8);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIFileAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DIFileAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10DIFileAttrENSD_11DIScopeAttrENSD_6detail17DIFileAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10DIFileAttrENSC_11DIScopeAttrENSC_6detail17DIFileAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id, "llvm.di_file", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10DIFileAttrENSD_11DIScopeAttrENSD_6detail17DIFileAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10DIFileAttrENSC_11DIScopeAttrENSC_6detail17DIFileAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DIFileAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIGlobalVariableExpressionAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIGlobalVariableExpressionAttr,mlir::Attribute,mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM30DIGlobalVariableExpressionAttrES2_NSD_6detail37DIGlobalVariableExpressionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM30DIGlobalVariableExpressionAttrES2_NSC_6detail37DIGlobalVariableExpressionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id, "llvm.di_global_variable_expression", 34);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM30DIGlobalVariableExpressionAttrES2_NSD_6detail37DIGlobalVariableExpressionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM30DIGlobalVariableExpressionAttrES2_NSC_6detail37DIGlobalVariableExpressionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DIGlobalVariableExpressionAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIGlobalVariableAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DIGlobalVariableAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIGlobalVariableAttrENSD_10DINodeAttrENSD_6detail27DIGlobalVariableAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIGlobalVariableAttrENSC_10DINodeAttrENSC_6detail27DIGlobalVariableAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id, "llvm.di_global_variable", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIGlobalVariableAttrENSD_10DINodeAttrENSD_6detail27DIGlobalVariableAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  v9 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v9;
  }

  if (v6)
  {
    (v9)(a4, v6);
    a3 = v9;
  }

  if (v5)
  {
    (v9)(a4, v5);
    a3 = v9;
  }

  if (v7)
  {
    (v9)(a4, v7);
    a3 = v9;
  }

  if (v8)
  {

    (a3)(a4, v8);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIGlobalVariableAttrENSC_10DINodeAttrENSC_6detail27DIGlobalVariableAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (*(a2 + 24))
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 32))
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 48))
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  return mlir::LLVM::DIGlobalVariableAttr::get(*(**a2 + 32), v3, v4, v7, v9, *(a2 + 40), v11, *(a2 + 56), *(a2 + 57), *(a2 + 60));
}

void mlir::AbstractAttribute::get<mlir::LLVM::DILexicalBlockAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DILexicalBlockAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18DILexicalBlockAttrENSD_11DIScopeAttrENSD_6detail25DILexicalBlockAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18DILexicalBlockAttrENSC_11DIScopeAttrENSC_6detail25DILexicalBlockAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id, "llvm.di_lexical_block", 21);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18DILexicalBlockAttrENSD_11DIScopeAttrENSD_6detail25DILexicalBlockAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18DILexicalBlockAttrENSC_11DIScopeAttrENSC_6detail25DILexicalBlockAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2[2];
  if (a2[1])
  {
    v5 = *a3++;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v6 = a2[3];
  if (v3)
  {
    v3 = *a3;
  }

  v7 = *(**v4 + 32);
  v8 = *v7;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id;
  v11[1] = v7;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25DILexicalBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18DILexicalBlockAttrEJRNS2_11DIScopeAttrERNS2_10DIFileAttrERjSH_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v16[1] = v11;
  v13 = v4;
  v14 = v3;
  v15 = v6;
  memset(v18, 0, sizeof(v18));
  memset(__dst, 0, sizeof(__dst));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(__dst, __dst, v18, v4, &v14, &v15, &v15 + 1);
  v12 = &v13;
  *&__dst[0] = &v13;
  *(&__dst[0] + 1) = v16;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DILexicalBlockFileAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DILexicalBlockFileAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22DILexicalBlockFileAttrENSD_11DIScopeAttrENSD_6detail29DILexicalBlockFileAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22DILexicalBlockFileAttrENSC_11DIScopeAttrENSC_6detail29DILexicalBlockFileAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id, "llvm.di_lexical_block_file", 26);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22DILexicalBlockFileAttrENSD_11DIScopeAttrENSD_6detail29DILexicalBlockFileAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22DILexicalBlockFileAttrENSC_11DIScopeAttrENSC_6detail29DILexicalBlockFileAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = *a3++;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a2 + 24);
  if (v3)
  {
    v3 = *a3;
  }

  v7 = *(**v4 + 32);
  v8 = *v7;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id;
  v11[1] = v7;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29DILexicalBlockFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22DILexicalBlockFileAttrEJRNS2_11DIScopeAttrERNS2_10DIFileAttrERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v16[1] = v11;
  v13 = v4;
  v14 = v3;
  v15 = v6;
  memset(v18, 0, sizeof(v18));
  memset(__dst, 0, sizeof(__dst));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(__dst, __dst, v18, v4, &v14, &v15);
  v12 = &v13;
  *&__dst[0] = &v13;
  *(&__dst[0] + 1) = v16;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DILocalVariableAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DILocalVariableAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DILocalVariableAttrENSD_10DINodeAttrENSD_6detail26DILocalVariableAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DILocalVariableAttrENSC_10DINodeAttrENSC_6detail26DILocalVariableAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id, "llvm.di_local_variable", 22);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DILocalVariableAttrENSD_10DINodeAttrENSD_6detail26DILocalVariableAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[6];
  v8 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v8;
  }

  if (v6)
  {
    (v8)(a4, v6);
    a3 = v8;
  }

  if (v5)
  {
    (v8)(a4, v5);
    a3 = v8;
  }

  if (v7)
  {

    (a3)(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DILocalVariableAttrENSC_10DINodeAttrENSC_6detail26DILocalVariableAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = *a3;
    a3 = (a3 + 8);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v6 = *a3;
    a3 = (a3 + 8);
    v3 = v6;
  }

  if (*(a2 + 24))
  {
    v8 = *a3;
    a3 = (a3 + 8);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  if (*(a2 + 48))
  {
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(v3 + 16);
  v13 = *(v3 + 24);
  v15 = *(**v4 + 32);
  v21 = 261;
  v20[0] = v14;
  v20[1] = v13;
  v16 = mlir::StringAttr::get(v15, v20, a3);
  v17 = *v15;
  v22[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id;
  v22[1] = v15;
  v31[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DILocalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DILocalVariableAttrEJRNS2_11DIScopeAttrENS1_10StringAttrERNS2_10DIFileAttrERjSI_SI_RNS2_10DITypeAttrERNS2_7DIFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_;
  v31[1] = v22;
  v24 = v4;
  v25 = v16;
  v26 = v7;
  v27 = v9;
  v28 = v10;
  v29 = v12;
  v30 = v11;
  memset(v33, 0, sizeof(v33));
  memset(__dst, 0, sizeof(__dst));
  v34 = 0;
  v35 = 0xFF51AFD7ED558CCDLL;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(__dst, __dst, v33, v4, &v25, &v26, &v27, &v27 + 1, &v28, &v29, &v30);
  v23 = &v24;
  __dst[0] = &v24;
  __dst[1] = v31;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v17 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id, v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DISubprogramAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::getIsRecSelf;
  v4[1] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::getRecId;
  v4[2] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::withRecId;
  v4[3] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::getRecSelf;
  v5 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::LLVM::DISubprogramAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DISubprogramAttrStorage,mlir::detail::AttributeUniquer,mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DISubprogramAttrENSD_11DIScopeAttrENSD_6detail23DISubprogramAttrStorageENSB_16AttributeUniquerEJNSD_28DIRecursiveTypeAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DISubprogramAttrENSC_11DIScopeAttrENSC_6detail23DISubprogramAttrStorageENSA_16AttributeUniquerEJNSC_28DIRecursiveTypeAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id, "llvm.di_subprogram", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

void *mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::withRecId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v8[8] = *(a2 + 104);
  *v8 = *(a2 + 96);
  v3 = mlir::LLVM::DISubprogramAttr::get(*(**a2 + 32), a3, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72), HIDWORD(*(a2 + 72)), *(a2 + 80), *(a2 + 88), *v8, *(a2 + 112), *(a2 + 120));
  v4 = v3;
  if (v3)
  {
    v5 = *v3;
    v6 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
  }

  return v4;
}

void *mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::getRecSelf(uint64_t a1)
{
  v1 = mlir::LLVM::DISubprogramAttr::get(*(**a1 + 32), a1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v2 = v1;
  if (v1)
  {
    v3 = *v1;
    v4 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v3 + 8, v4);
  }

  return v2;
}

BOOL mlir::detail::StorageUserBase<mlir::LLVM::DISubprogramAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DISubprogramAttrStorage,mlir::detail::AttributeUniquer,mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DISubprogramAttrENSD_11DIScopeAttrENSD_6detail23DISubprogramAttrStorageENSB_16AttributeUniquerEJNSD_28DIRecursiveTypeAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = a2[3];
  v6 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  v11 = a2[7];
  v10 = a2[8];
  v12 = a2[12];
  v13 = a2[14];
  v17 = a2[11];
  v18 = a2[13];
  v19 = a2[15];
  if (a2[1])
  {
    result = (a3)(a4);
  }

  if (v7)
  {
    result = a3(a4, v7);
  }

  if (v6)
  {
    result = a3(a4, v6);
  }

  if (v9)
  {
    result = a3(a4, v9);
  }

  if (v8)
  {
    result = a3(a4, v8);
  }

  if (v11)
  {
    result = a3(a4, v11);
  }

  if (v10)
  {
    result = a3(a4, v10);
  }

  if (v17)
  {
    result = (a3)(a4);
  }

  if (v18)
  {
    v15 = 8 * v18;
    do
    {
      if (*v12)
      {
        result = (a3)(a4);
      }

      ++v12;
      v15 -= 8;
    }

    while (v15);
  }

  if (v19)
  {
    v16 = 8 * v19;
    do
    {
      if (*v13)
      {
        result = (a3)(a4);
      }

      ++v13;
      v16 -= 8;
    }

    while (v16);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DISubprogramAttrENSC_11DIScopeAttrENSC_6detail23DISubprogramAttrStorageENSA_16AttributeUniquerEJNSC_28DIRecursiveTypeAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  if (v4)
  {
    --a4;
    v6 = *a3++;
    v4 = v6;
  }

  if (v5)
  {
    --a4;
    v7 = *a3++;
    v5 = v7;
  }

  if (*(a2 + 32))
  {
    --a4;
    v9 = *a3++;
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 40))
  {
    --a4;
    v11 = *a3++;
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 48))
  {
    --a4;
    v13 = *a3++;
    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(a2 + 64);
  if (*(a2 + 56))
  {
    --a4;
    v16 = *a3++;
    v15 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = *(a2 + 104);
  v18 = *(a2 + 120);
  v19 = *(a2 + 88);
  if (v14)
  {
    --a4;
    v20 = *a3++;
    v14 = v20;
  }

  if (v19)
  {
    --a4;
    v21 = *a3++;
    v19 = v21;
  }

  v22 = a4 - v17;
  if (a4 >= v17)
  {
    a4 = *(a2 + 104);
  }

  v23 = &a3[v17];
  if (v22 < v18)
  {
    v18 = v22;
  }

  *&v25 = a3;
  *(&v25 + 1) = a4;
  return mlir::LLVM::DISubprogramAttr::get(*(**a2 + 32), v4, *(a2 + 16), v5, v8, v10, v12, v15, v14, *(a2 + 72), *(a2 + 76), *(a2 + 80), v19, v25, v23, v18);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIModuleAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIModuleAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DIModuleAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12DIModuleAttrENSD_11DIScopeAttrENSD_6detail19DIModuleAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12DIModuleAttrENSC_11DIScopeAttrENSC_6detail19DIModuleAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id, "llvm.di_module", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12DIModuleAttrENSD_11DIScopeAttrENSD_6detail19DIModuleAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = a2[6];
  v10 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v10;
  }

  if (v6)
  {
    (v10)(a4, v6);
    a3 = v10;
  }

  if (v5)
  {
    (v10)(a4, v5);
    a3 = v10;
  }

  if (v8)
  {
    (v10)(a4, v8);
    a3 = v10;
  }

  if (v7)
  {
    (v10)(a4, v7);
    a3 = v10;
  }

  if (v9)
  {

    (a3)(a4, v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12DIModuleAttrENSC_11DIScopeAttrENSC_6detail19DIModuleAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (*(a2 + 24))
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 32))
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 40))
  {
    v12 = *a3++;
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + 48))
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  return mlir::LLVM::DIModuleAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v13, *(a2 + 56), *(a2 + 60));
}

void mlir::AbstractAttribute::get<mlir::LLVM::DINamespaceAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DINamespaceAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DINamespaceAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DINamespaceAttrENSD_11DIScopeAttrENSD_6detail22DINamespaceAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DINamespaceAttrENSC_11DIScopeAttrENSC_6detail22DINamespaceAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id, "llvm.di_namespace", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DINamespaceAttrENSD_11DIScopeAttrENSD_6detail22DINamespaceAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DINamespaceAttrENSC_11DIScopeAttrENSC_6detail22DINamespaceAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (*(a2 + 16))
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DINamespaceAttr::get(*(**a2 + 32), v3, v5, *(a2 + 24));
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIImportedEntityAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIImportedEntityAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DIImportedEntityAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIImportedEntityAttrENSD_10DINodeAttrENSD_6detail27DIImportedEntityAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIImportedEntityAttrENSC_10DINodeAttrENSC_6detail27DIImportedEntityAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id, "llvm.di_imported_entity", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIImportedEntityAttrENSD_10DINodeAttrENSD_6detail27DIImportedEntityAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = a2[3];
  v6 = a2[4];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  if (a2[2])
  {
    result = (a3)(a4);
  }

  if (v7)
  {
    result = a3(a4, v7);
  }

  if (v6)
  {
    result = a3(a4, v6);
  }

  if (v8)
  {
    result = a3(a4, v8);
  }

  if (v10)
  {
    v12 = 8 * v10;
    do
    {
      if (*v9)
      {
        result = (a3)(a4);
      }

      ++v9;
      v12 -= 8;
    }

    while (v12);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIImportedEntityAttrENSC_10DINodeAttrENSC_6detail27DIImportedEntityAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v8)
  {
    --a4;
    v10 = *a3;
    a3 += 2;
    v8 = v10;
  }

  if (v9)
  {
    --a4;
    v11 = *a3;
    a3 += 2;
    v9 = v11;
  }

  v12 = *(a2 + 64);
  v13 = *(a2 + 48);
  if (*(a2 + 32))
  {
    --a4;
    v15 = *a3;
    a3 += 2;
    v14 = v15;
    if (v13)
    {
LABEL_7:
      --a4;
      v17 = *a3;
      a3 += 2;
      v16 = v17;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  v16 = 0;
LABEL_10:
  if (a4 < v12)
  {
    v12 = a4;
  }

  return mlir::LLVM::DIImportedEntityAttr::get(*(**a2 + 32), *(a2 + 8), v8, v9, v14, *(a2 + 40), v16, a8, a3, v12);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIAnnotationAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIAnnotationAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DIAnnotationAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIAnnotationAttrENSD_10DINodeAttrENSD_6detail23DIAnnotationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIAnnotationAttrENSC_10DINodeAttrENSC_6detail23DIAnnotationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id, "llvm.di_annotation", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIAnnotationAttrENSD_10DINodeAttrENSD_6detail23DIAnnotationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIAnnotationAttrENSC_10DINodeAttrENSC_6detail23DIAnnotationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DIAnnotationAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DISubrangeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DISubrangeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DISubrangeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DISubrangeAttrENSD_10DINodeAttrENSD_6detail21DISubrangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DISubrangeAttrENSC_10DINodeAttrENSC_6detail21DISubrangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id, "llvm.di_subrange", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void *_ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DISubrangeAttrENSD_10DINodeAttrENSD_6detail21DISubrangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v9[0] = *(a2 + 8);
  v9[1] = v6;
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::walk(v9, v8);
}

void *mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::walk(void *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    result = (*a2)(*(a2 + 8));
  }

  if (v3[1])
  {
    result = (*a2)(*(a2 + 8));
  }

  if (v3[2])
  {
    result = (*a2)(*(a2 + 8));
  }

  if (v3[3])
  {
    v5 = *a2;
    v4 = *(a2 + 8);

    return v5(v4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DISubrangeAttrENSC_10DINodeAttrENSC_6detail21DISubrangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v14[0] = *(a2 + 8);
  v14[1] = v5;
  v13.i64[0] = a3;
  v13.i64[1] = a4;
  mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::replace(v12, v14, &v13);
  v6 = *(**a2 + 32);
  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];

  return mlir::LLVM::DISubrangeAttr::get(v6, v7, v8, v9, v10);
}

void *mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::replace(void *result, uint64_t *a2, int64x2_t *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_25D0A0600);
    v3 = *v4.i64[0];
  }

  v5 = a2[1];
  if (v5)
  {
    v6 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_25D0A0600);
    v5 = *v6.i64[0];
  }

  v7 = a2[2];
  if (v7)
  {
    v8 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_25D0A0600);
    v7 = *v8.i64[0];
  }

  if (a2[3])
  {
    v9 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_25D0A0600);
    v10 = *v9.i64[0];
  }

  else
  {
    v10 = 0;
  }

  *result = v3;
  result[1] = v5;
  result[2] = v7;
  result[3] = v10;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DICommonBlockAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DICommonBlockAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DICommonBlockAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICommonBlockAttrENSD_11DIScopeAttrENSD_6detail24DICommonBlockAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICommonBlockAttrENSC_11DIScopeAttrENSC_6detail24DICommonBlockAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id, "llvm.di_common_block", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICommonBlockAttrENSD_11DIScopeAttrENSD_6detail24DICommonBlockAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v8;
  }

  if (v6)
  {
    (v8)(a4, v6);
    a3 = v8;
  }

  if (v5)
  {
    (v8)(a4, v5);
    a3 = v8;
  }

  if (v7)
  {

    (a3)(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICommonBlockAttrENSC_11DIScopeAttrENSC_6detail24DICommonBlockAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  v7 = *(a2 + 32);
  if (!*(a2 + 24))
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = 0;
    return mlir::LLVM::DICommonBlockAttr::get(*(**a2 + 32), v3, v4, v8, v10, *(a2 + 40));
  }

  v9 = *a3++;
  v8 = v9;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = *a3;
  return mlir::LLVM::DICommonBlockAttr::get(*(**a2 + 32), v3, v4, v8, v10, *(a2 + 40));
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIGenericSubrangeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIGenericSubrangeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DIGenericSubrangeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM21DIGenericSubrangeAttrENSD_10DINodeAttrENSD_6detail28DIGenericSubrangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM21DIGenericSubrangeAttrENSC_10DINodeAttrENSC_6detail28DIGenericSubrangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id, "llvm.di_generic_subrange", 24);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void *_ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM21DIGenericSubrangeAttrENSD_10DINodeAttrENSD_6detail28DIGenericSubrangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v9[0] = *(a2 + 8);
  v9[1] = v6;
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::walk(v9, v8);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM21DIGenericSubrangeAttrENSC_10DINodeAttrENSC_6detail28DIGenericSubrangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v14[0] = *(a2 + 8);
  v14[1] = v5;
  v13.i64[0] = a3;
  v13.i64[1] = a4;
  mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::replace(v12, v14, &v13);
  v6 = *(**a2 + 32);
  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];

  return mlir::LLVM::DIGenericSubrangeAttr::get(v6, v7, v8, v9, v10);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DISubroutineTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DISubroutineTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DISubroutineTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DISubroutineTypeAttrENSD_10DITypeAttrENSD_6detail27DISubroutineTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DISubroutineTypeAttrENSC_10DITypeAttrENSC_6detail27DISubroutineTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id, "llvm.di_subroutine_type", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DISubroutineTypeAttrENSD_10DITypeAttrENSD_6detail27DISubroutineTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v7 = *(a2 + 16);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DISubroutineTypeAttrENSC_10DITypeAttrENSC_6detail27DISubroutineTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, unsigned int *a2, unsigned int *a3, unint64_t *a4)
{
  if (a4 >= a2[6])
  {
    a4 = a2[6];
  }

  return mlir::LLVM::DISubroutineTypeAttr::get(*(**a2 + 32), a2[2], a3, a4);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DILabelAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DILabelAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DILabelAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11DILabelAttrENSD_10DINodeAttrENSD_6detail18DILabelAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11DILabelAttrENSC_10DINodeAttrENSC_6detail18DILabelAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id, "llvm.di_label", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11DILabelAttrENSD_10DINodeAttrENSD_6detail18DILabelAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v7;
  }

  if (v6)
  {
    (v7)(a4, v6);
    a3 = v7;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11DILabelAttrENSC_10DINodeAttrENSC_6detail18DILabelAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = *a3;
    a3 = (a3 + 8);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v6 = *a3;
    a3 = (a3 + 8);
    v3 = v6;
  }

  v7 = *(a2 + 32);
  if (*(a2 + 24))
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  v11 = *(**v4 + 32);
  v17 = 261;
  v16[0] = v10;
  v16[1] = v9;
  v12 = mlir::StringAttr::get(v11, v16, a3);
  v13 = *v11;
  v18[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id;
  v18[1] = v11;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18DILabelAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11DILabelAttrEJRNS2_11DIScopeAttrENS1_10StringAttrERNS2_10DIFileAttrERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_;
  v24[1] = v18;
  v20 = v4;
  v21 = v12;
  v22 = v8;
  v23 = v7;
  memset(v26, 0, sizeof(v26));
  memset(__dst, 0, sizeof(__dst));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(__dst, __dst, v26, v4, &v21, &v22, &v23);
  v19 = &v20;
  *&__dst[0] = &v20;
  *(&__dst[0] + 1) = v24;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id, v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIStringTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::DIStringTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DIStringTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIStringTypeAttrENSD_10DITypeAttrENSD_6detail23DIStringTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIStringTypeAttrENSC_10DITypeAttrENSC_6detail23DIStringTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id, "llvm.di_string_type", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIStringTypeAttrENSD_10DITypeAttrENSD_6detail23DIStringTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[5];
  v5 = a2[6];
  v7 = a2[7];
  v8 = a3;
  if (a2[2])
  {
    a3(a4);
    a3 = v8;
  }

  if (v6)
  {
    (v8)(a4, v6);
    a3 = v8;
  }

  if (v5)
  {
    (v8)(a4, v5);
    a3 = v8;
  }

  if (v7)
  {

    (a3)(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIStringTypeAttrENSC_10DITypeAttrENSC_6detail23DIStringTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  if (*(a2 + 16))
  {
    v3 = a3 + 1;
    v4 = *a3;
  }

  else
  {
    v4 = 0;
  }

  if (*(a2 + 40))
  {
    v6 = *v3++;
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 48))
  {
    v8 = *v3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 56))
  {
    v9 = *v3;
  }

  else
  {
    v9 = 0;
  }

  return mlir::LLVM::DIStringTypeAttr::get(*(**a2 + 32), *(a2 + 8), v4, *(a2 + 24), *(a2 + 32), v5, v7, v9, *(a2 + 64));
}

void mlir::AbstractAttribute::get<mlir::LLVM::MemoryEffectsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::MemoryEffectsAttr,mlir::Attribute,mlir::LLVM::detail::MemoryEffectsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17MemoryEffectsAttrES2_NSD_6detail24MemoryEffectsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17MemoryEffectsAttrES2_NSC_6detail24MemoryEffectsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id, "llvm.memory_effects", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::LLVM::AliasScopeDomainAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::AliasScopeDomainAttr,mlir::Attribute,mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20AliasScopeDomainAttrES2_NSD_6detail27AliasScopeDomainAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20AliasScopeDomainAttrES2_NSC_6detail27AliasScopeDomainAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id, "llvm.alias_scope_domain", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20AliasScopeDomainAttrES2_NSD_6detail27AliasScopeDomainAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20AliasScopeDomainAttrES2_NSC_6detail27AliasScopeDomainAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::AliasScopeDomainAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::AliasScopeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::AliasScopeAttr,mlir::Attribute,mlir::LLVM::detail::AliasScopeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14AliasScopeAttrES2_NSD_6detail21AliasScopeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14AliasScopeAttrES2_NSC_6detail21AliasScopeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, "llvm.alias_scope", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14AliasScopeAttrES2_NSD_6detail21AliasScopeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v7;
  }

  if (v6)
  {
    (v7)(a4, v6);
    a3 = v7;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14AliasScopeAttrES2_NSC_6detail21AliasScopeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2[2];
  if (a2[1])
  {
    v5 = *a3++;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v6 = a2[3];
  if (v3)
  {
    v7 = *a3++;
    v3 = v7;
  }

  if (v6)
  {
    v6 = *a3;
  }

  v8 = *(**a2 + 32);
  v9 = *v8;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id;
  v12[1] = v8;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJNS1_9AttributeENS2_20AliasScopeDomainAttrENS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v17[1] = v12;
  v14 = v4;
  v15 = v3;
  v16 = v6;
  memset(v19, 0, sizeof(v19));
  memset(__dst, 0, sizeof(__dst));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(__dst, __dst, v19, v4, &v15, &v16);
  v13 = &v14;
  *&__dst[0] = &v14;
  *(&__dst[0] + 1) = v17;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v9 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

void mlir::AbstractAttribute::get<mlir::LLVM::AccessGroupAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::AccessGroupAttr,mlir::Attribute,mlir::LLVM::detail::AccessGroupAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15AccessGroupAttrES2_NSD_6detail22AccessGroupAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15AccessGroupAttrES2_NSC_6detail22AccessGroupAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id, "llvm.access_group", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15AccessGroupAttrES2_NSD_6detail22AccessGroupAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15AccessGroupAttrES2_NSC_6detail22AccessGroupAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::AccessGroupAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::TBAARootAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::TBAARootAttr,mlir::LLVM::TBAANodeAttr,mlir::LLVM::detail::TBAARootAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12TBAARootAttrENSD_12TBAANodeAttrENSD_6detail19TBAARootAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12TBAARootAttrENSC_12TBAANodeAttrENSC_6detail19TBAARootAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id, "llvm.tbaa_root", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12TBAARootAttrENSD_12TBAANodeAttrENSD_6detail19TBAARootAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12TBAARootAttrENSC_12TBAANodeAttrENSC_6detail19TBAARootAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::TBAARootAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::TBAAMemberAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::TBAAMemberAttr,mlir::Attribute,mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14TBAAMemberAttrES2_NSD_6detail21TBAAMemberAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14TBAAMemberAttrES2_NSC_6detail21TBAAMemberAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id, "llvm.tbaa_member", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14TBAAMemberAttrES2_NSD_6detail21TBAAMemberAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14TBAAMemberAttrES2_NSC_6detail21TBAAMemberAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = *a3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(**v4 + 32);
  v6 = *v5;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id;
  v9[1] = v5;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21TBAAMemberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14TBAAMemberAttrEJRNS2_12TBAANodeAttrERxEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v13[1] = v9;
  v11 = v4;
  v12 = v3;
  memset(v15, 0, sizeof(v15));
  memset(__dst, 0, sizeof(__dst));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::TBAANodeAttr,long long>(__dst, __dst, v15, v4, &v12);
  v10 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v13;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr &,long long &>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr &,long long &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr &,long long &>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr &,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

void mlir::AbstractAttribute::get<mlir::LLVM::TBAATypeDescriptorAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAANodeAttr,mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22TBAATypeDescriptorAttrENSD_12TBAANodeAttrENSD_6detail29TBAATypeDescriptorAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22TBAATypeDescriptorAttrENSC_12TBAANodeAttrENSC_6detail29TBAATypeDescriptorAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id, "llvm.tbaa_type_desc", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22TBAATypeDescriptorAttrENSD_12TBAANodeAttrENSD_6detail29TBAATypeDescriptorAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v7 = *(a2 + 24);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22TBAATypeDescriptorAttrENSC_12TBAANodeAttrENSC_6detail29TBAATypeDescriptorAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  if (a4 >= *(a2 + 32))
  {
    v4 = *(a2 + 32);
  }

  else
  {
    v4 = a4;
  }

  return mlir::LLVM::TBAATypeDescriptorAttr::get(*(**a2 + 32), *(a2 + 8), *(a2 + 16), a3, v4);
}

void mlir::AbstractAttribute::get<mlir::LLVM::TBAATagAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::TBAATagAttr,mlir::Attribute,mlir::LLVM::detail::TBAATagAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11TBAATagAttrES2_NSD_6detail18TBAATagAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11TBAATagAttrES2_NSC_6detail18TBAATagAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id, "llvm.tbaa_tag", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11TBAATagAttrES2_NSD_6detail18TBAATagAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11TBAATagAttrES2_NSC_6detail18TBAATagAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (*(a2 + 16))
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::TBAATagAttr::get(*(**a2 + 32), v3, v5, *(a2 + 24), *(a2 + 32));
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17ConstantRangeAttrES2_NSD_6detail24ConstantRangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2)
{
  result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm5APIntES4_EEC2B8nn200100IJLm0ELm1EEJS4_S4_EJEJEJRKS4_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(&v3, a2 + 8, a2 + 24);
  if (v6 >= 0x41)
  {
    result = v5;
    if (v5)
    {
      result = MEMORY[0x25F891010](v5, 0x1000C8000313F17);
    }
  }

  if (v4 >= 0x41)
  {
    result = v3;
    if (v3)
    {
      return MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm5APIntES4_EEC2B8nn200100IJLm0ELm1EEJS4_S4_EJEJEJRKS4_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  *a1 = *a2;
  v4 = *(a3 + 8);
  *(a1 + 24) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *(a1 + 16) = *a3;
  return a1;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17ConstantRangeAttrES2_NSC_6detail24ConstantRangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm5APIntES4_EEC2B8nn200100IJLm0ELm1EEJS4_S4_EJEJEJRKS4_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(&__src, a2 + 8, a2 + 24);
  v3 = *(**a2 + 32);
  if (v9 > 0x40)
  {
    operator new[]();
  }

  if (v11 > 0x40)
  {
    operator new[]();
  }

  v4 = *v3;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id;
  v12[1] = v3;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24ConstantRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ConstantRangeAttrEJNS_5APIntESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18[1] = v12;
  v15 = v9;
  v14 = __src;
  v17 = v11;
  v16 = v10;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt,llvm::APInt>(v19, v19, v20, &v14, &v16);
  v13 = &v14;
  *&v19[0] = &v14;
  *(&v19[0] + 1) = v18;
  v6 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt,llvm::APInt>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt,llvm::APInt &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt,llvm::APInt>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x25F891010](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x25F891010](v14, 0x1000C8000313F17);
  }

  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  if (v9 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  return v6;
}

void llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::LLVM::detail::ConstantRangeAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) >= 0x41u)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }

  if (*(a2 + 16) >= 0x41u && *(a2 + 8))
  {

    JUMPOUT(0x25F891010);
  }
}

void mlir::AbstractAttribute::get<mlir::LLVM::VScaleRangeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::VScaleRangeAttr,mlir::Attribute,mlir::LLVM::detail::VScaleRangeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VScaleRangeAttrES2_NSD_6detail22VScaleRangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VScaleRangeAttrES2_NSC_6detail22VScaleRangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id, "llvm.vscale_range", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VScaleRangeAttrES2_NSD_6detail22VScaleRangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VScaleRangeAttrES2_NSC_6detail22VScaleRangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::VScaleRangeAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::TargetFeaturesAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::TargetFeaturesAttr,mlir::Attribute,mlir::LLVM::detail::TargetFeaturesAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18TargetFeaturesAttrES2_NSD_6detail25TargetFeaturesAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18TargetFeaturesAttrES2_NSC_6detail25TargetFeaturesAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id, "llvm.target_features", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18TargetFeaturesAttrES2_NSD_6detail25TargetFeaturesAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = *(a2 + 8);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18TargetFeaturesAttrES2_NSC_6detail25TargetFeaturesAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, unsigned int *a2, unsigned int *a3, unint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2[4];
  if (a4 < v4)
  {
    v4 = a4;
  }

  v5 = *(**a2 + 32);
  v6 = *v5;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id;
  v9[1] = v5;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25TargetFeaturesAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18TargetFeaturesAttrEJNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v12[1] = v9;
  v11[0] = a3;
  v11[1] = v4;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::StringAttr>>(v13, 0, v13, v14, v11);
  v10 = v11;
  *&v13[0] = v11;
  *(&v13[0] + 1) = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void mlir::AbstractAttribute::get<mlir::LLVM::UndefAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::UndefAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM9UndefAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM9UndefAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id, "llvm.undef", 10);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::UndefAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM9UndefAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM9UndefAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*(a1 + 8), *a1);
  *a2 = result;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::PoisonAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10PoisonAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10PoisonAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id, "llvm.poison", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::PoisonAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*(a1 + 8), *a1);
  *a2 = result;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::VecTypeHintAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::VecTypeHintAttr,mlir::Attribute,mlir::LLVM::detail::VecTypeHintAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VecTypeHintAttrES2_NSD_6detail22VecTypeHintAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VecTypeHintAttrES2_NSC_6detail22VecTypeHintAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id, "llvm.vec_type_hint", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VecTypeHintAttrES2_NSD_6detail22VecTypeHintAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VecTypeHintAttrES2_NSC_6detail22VecTypeHintAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 8))
  {
    v3 = *a3;
  }

  else
  {
    v3 = 0;
  }

  return mlir::LLVM::VecTypeHintAttr::get(*(**a2 + 32), v3, *(a2 + 16));
}

void mlir::AbstractAttribute::get<mlir::LLVM::ZeroAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::ZeroAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM8ZeroAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM8ZeroAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id, "llvm.zero", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::ZeroAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM8ZeroAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM8ZeroAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*(a1 + 8), *a1);
  *a2 = result;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::TailCallKindAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::TailCallKindAttr,mlir::Attribute,mlir::LLVM::detail::TailCallKindAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16TailCallKindAttrES2_NSD_6detail23TailCallKindAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16TailCallKindAttrES2_NSC_6detail23TailCallKindAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id, "llvm.tailcallkind", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::LLVM::WorkgroupAttributionAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::WorkgroupAttributionAttr,mlir::Attribute,mlir::LLVM::detail::WorkgroupAttributionAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24WorkgroupAttributionAttrES2_NSD_6detail31WorkgroupAttributionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24WorkgroupAttributionAttrES2_NSC_6detail31WorkgroupAttributionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id, "llvm.mlir.workgroup_attribution", 31);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24WorkgroupAttributionAttrES2_NSD_6detail31WorkgroupAttributionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24WorkgroupAttributionAttrES2_NSC_6detail31WorkgroupAttributionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::WorkgroupAttributionAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::IntegerOverflowFlagsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::IntegerOverflowFlagsAttr,mlir::Attribute,mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24IntegerOverflowFlagsAttrES2_NSD_6detail31IntegerOverflowFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24IntegerOverflowFlagsAttrES2_NSC_6detail31IntegerOverflowFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id, "llvm.overflow", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::LLVM::FastmathFlagsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::LLVM::FastmathFlagsAttr,mlir::Attribute,mlir::LLVM::detail::FastmathFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17FastmathFlagsAttrES2_NSD_6detail24FastmathFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17FastmathFlagsAttrES2_NSC_6detail24FastmathFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id, "llvm.fastmath", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::LLVM::LLVMDialect::LLVMDialect(mlir::LLVM::LLVMDialect *this, mlir::MLIRContext *a2, const llvm::Twine *a3)
{
  *(this + 1) = "llvm";
  *(this + 2) = 4;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E8B3A8;
  v4 = 262;
  v3[0] = "llvm.workgroup_attribution";
  v3[1] = 26;
  *(this + 12) = mlir::StringAttr::get(a2, v3, a3);
  _ZNSt3__115allocate_sharedB8nn200100IN4mlir16ThreadLocalCacheIN4llvm8DenseSetINS1_4TypeENS3_12DenseMapInfoIS5_vEEEEE16PerInstanceStateENS_9allocatorISA_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void mlir::LLVM::LLVMDialect::~LLVMDialect(mlir::LLVM::LLVMDialect *this)
{
  *this = &unk_286E8B3A8;
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  mlir::Dialect::~Dialect(this);
}

{
  mlir::LLVM::LLVMDialect::~LLVMDialect(this);

  JUMPOUT(0x25F891040);
}

void processFMFAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * a3;
  *&v15 = a2;
  *(&v15 + 1) = v4;
  llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v15);
  *&v17 = v4;
  *(&v17 + 1) = v4;
  llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v17);
  v5 = v16;
  v6 = v17;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  v17 = v15;
  v7 = v15;
  v18 = v5;
  if (v15 == v6)
  {
    v9 = 0;
    v8 = 0;
    v10 = 8;
  }

  else
  {
    v8 = 0;
    do
    {
      ++v8;
      *&v15 = v7 + 16;
      llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v15);
      v7 = v15;
    }

    while (v15 != v6);
    v9 = *(a1 + 8);
    v10 = *(a1 + 12);
  }

  v11 = v8 + v9;
  if (v11 <= v10)
  {
    v12 = v9;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 16);
    v12 = *(a1 + 8);
    v9 = *(a1 + 8);
  }

  v13 = v17;
  if (v17 != v6)
  {
    v14 = (*a1 + 16 * v12);
    do
    {
      *v14++ = *v13;
      *&v17 = v13 + 1;
      llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v17);
      v13 = v17;
    }

    while (v17 != v6);
    v9 = *(a1 + 8);
  }

  *(a1 + 8) = v9 + v8;
}

uint64_t mlir::LLVM::ICmpOp::parse(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0;
  memset(v22, 0, 24);
  memset(v21, 0, 24);
  v20 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v23, 0, "predicate", 9, a2 + 112) || ((*(*a1 + 704))(a1, v22, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v21, 1) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 536))(a1, &v20) & 1) == 0) || ((*(*a1 + 728))(a1, v22, v20, a2 + 16) & 1) == 0 || ((*(*a1 + 728))(a1, v21, v20, a2 + 16) & 1) == 0)
  {
    v14 = 0;
    return v14 & 1;
  }

  v6 = mlir::LLVM::symbolizeICmpPredicate(*(v23 + 16), *(v23 + 24));
  if ((v7 & 1) == 0)
  {
    v19 = 257;
    (*(*a1 + 24))(&__src, a1, v4, v18);
    if (__src)
    {
      mlir::Diagnostic::operator<<<2ul>(v27, "'");
      if (__src)
      {
        v17 = *(v23 + 16);
        v16 = *(v23 + 24);
        v25 = 261;
        v24[0] = v17;
        v24[1] = v16;
        mlir::Diagnostic::operator<<(v27, v24);
        if (__src)
        {
          mlir::Diagnostic::operator<<<53ul>(v27, "' is an incorrect value of the 'predicate' attribute");
        }
      }
    }

    goto LABEL_20;
  }

  v8 = v6;
  v9 = (*(*a1 + 32))(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v8);
  mlir::NamedAttrList::set((a2 + 112), "predicate", 9, I64IntegerAttr);
  if ((mlir::LLVM::LLVMDialect::isCompatibleType(v20, v11, v12, v13) & 1) == 0)
  {
    v24[0] = "expected LLVM dialect-compatible type";
    v25 = 259;
    (*(*a1 + 24))(&__src, a1, v5, v24);
LABEL_20:
    v14 = v27[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v14 & 1;
  }

  __src = getI1SameShape(v20);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v27);
  v14 = 1;
  return v14 & 1;
}

uint64_t mlir::LLVM::FCmpOp::parse(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0;
  memset(v22, 0, 24);
  memset(v21, 0, 24);
  v20 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v23, 0, "predicate", 9, a2 + 112) || ((*(*a1 + 704))(a1, v22, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v21, 1) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 536))(a1, &v20) & 1) == 0) || ((*(*a1 + 728))(a1, v22, v20, a2 + 16) & 1) == 0 || ((*(*a1 + 728))(a1, v21, v20, a2 + 16) & 1) == 0)
  {
    v14 = 0;
    return v14 & 1;
  }

  v6 = mlir::LLVM::symbolizeFCmpPredicate(*(v23 + 16), *(v23 + 24));
  if ((v7 & 1) == 0)
  {
    v19 = 257;
    (*(*a1 + 24))(&__src, a1, v4, v18);
    if (__src)
    {
      mlir::Diagnostic::operator<<<2ul>(v27, "'");
      if (__src)
      {
        v17 = *(v23 + 16);
        v16 = *(v23 + 24);
        v25 = 261;
        v24[0] = v17;
        v24[1] = v16;
        mlir::Diagnostic::operator<<(v27, v24);
        if (__src)
        {
          mlir::Diagnostic::operator<<<53ul>(v27, "' is an incorrect value of the 'predicate' attribute");
        }
      }
    }

    goto LABEL_20;
  }

  v8 = v6;
  v9 = (*(*a1 + 32))(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v8);
  mlir::NamedAttrList::set((a2 + 112), "predicate", 9, I64IntegerAttr);
  if ((mlir::LLVM::LLVMDialect::isCompatibleType(v20, v11, v12, v13) & 1) == 0)
  {
    v24[0] = "expected LLVM dialect-compatible type";
    v25 = 259;
    (*(*a1 + 24))(&__src, a1, v5, v24);
LABEL_20:
    v14 = v27[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    return v14 & 1;
  }

  __src = getI1SameShape(v20);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v27);
  v14 = 1;
  return v14 & 1;
}

uint64_t getBoolAttribute(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = 592;
  if (a3)
  {
    v3 = 600;
  }

  v4 = *(a2 + v3);
  v8 = v4;
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (v5)
  {
    return mlir::DenseElementsAttr::get(v5, v6, &v8, 1uLL);
  }

  return v4;
}

uint64_t mlir::LLVM::AllocaOp::getAlignment(mlir::LLVM::AllocaOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    if (*(v1 + 24) > 0x40u)
    {
      operator new[]();
    }

    return *(v1 + 16);
  }

  return v1;
}

uint64_t mlir::LLVM::AllocaOp::parse(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v23, 0, 24);
  v21 = 0;
  v22 = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(*(*(a2 + 8) + 96) + 16);
    v5 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v4, *(**v5 + 608));
  }

  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  v26 = 257;
  if (((*(*a1 + 400))(a1, "x", 1, &__src) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 536))(a1, &v21) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 536))(a1, &v22) & 1) == 0)
  {
    return 0;
  }

  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a2 + 112, "alignment", 9uLL);
  if ((v8 & 1) == 0)
  {
    goto LABEL_22;
  }

  v9 = *(v7 + 8);
  if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v9 = 0;
  }

  v20 = v9;
  if (!v9)
  {
    v12 = (*(*a1 + 16))(a1);
    v18[0] = "expected integer alignment";
    v19 = 259;
    (*(*a1 + 24))(&__src, a1, v12, v18);
    goto LABEL_30;
  }

  mlir::IntegerAttr::getValue(&__src, &v20);
  v10 = v25[0];
  if (v25[0] > 0x40)
  {
    v13 = llvm::APInt::countLeadingZerosSlowCase(&__src);
    if (__src)
    {
      MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }

    if (v13 != v10)
    {
      goto LABEL_22;
    }
  }

  else if (__src)
  {
    goto LABEL_22;
  }

  mlir::NamedAttrList::erase(a2 + 112, "alignment", 9uLL);
LABEL_22:
  v14 = v22;
  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id && *(v22 + 8) == 1 && *(v22 + 12) == 1)
  {
    if ((*(*a1 + 728))(a1, v23, **(v22 + 16), a2 + 16))
    {
      v15 = *(*(v14 + 16) + 8 * *(v14 + 8));
      if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
      {
        v16 = mlir::TypeAttr::get(v21);
        mlir::OperationState::addAttribute(a2, "elem_type", 9, v16);
        v15 = *(*(v14 + 16) + 8 * *(v14 + 8));
      }

      __src = v15;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v25);
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    return v17 & 1;
  }

  v18[0] = "expected trailing function type with one argument and one result";
  v19 = 259;
  (*(*a1 + 24))(&__src, a1, v6, v18);
LABEL_30:
  v17 = v27 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  return v17 & 1;
}

void mlir::LLVM::CondBrOp::getSuccessorOperands(mlir::LLVM::CondBrOp *this, uint64_t a2, int a3)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a3)
  {
    v7 = *(v5 + 16);
    v8 = *(v5 + 20);
    v6 = v5 + 16;
    v9 = *(v6 + 8);
    v10 = v8 + v7;
    v11 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6, 3);
    __src = 2;
    v17 = v11;
    v18 = v12;
    *&v19 = a2;
    *(&v19 + 1) = __PAIR64__(v9, v10);
  }

  else
  {
    v13 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v14 = *(v5 + 16);
    v15 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 16, 3);
    __src = 1;
    v17 = v13;
    v18 = v15;
    *&v19 = a2;
    *(&v19 + 1) = v14;
  }

  v20 = v22;
  v21 = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v20, &__src, &v19);
  *this = 0;
  *(this + 8) = v19;
  *(this + 3) = this + 40;
  *(this + 4) = 0x100000000;
  if (v21)
  {
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v20);
  }

  if (v20 != v22)
  {
    free(v20);
  }
}

void mlir::LLVM::SwitchOp::getSuccessorOperands(mlir::LLVM::SwitchOp *this, mlir::Operation **a2, int a3)
{
  v36[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a2;
    v7 = (*a2 + 16 * ((*(*a2 + 11) >> 23) & 1));
    v8 = v7[22];
    v9 = v7[23];
    v7 += 22;
    v10 = v7[2];
    v11 = v9 + v8;
    v12 = *(*(*(*a2 + 6) + 96) + 8 * *(*(*a2 + 6) + 104) - 8);
    v13 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a2 + 3) + 32), v7, 3);
    __src = 2;
    v30 = v12;
    v31 = v13;
    *&v34 = v6;
    *(&v34 + 1) = __PAIR64__(v10, v11);
    v35[0] = v36;
    v35[1] = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v35, &__src, v32);
    AttrDictionary = mlir::Operation::getAttrDictionary(*a2);
    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(AttrDictionary + 8), (*(AttrDictionary + 8) + 16 * *(AttrDictionary + 16)), *(*(*(*a2 + 6) + 96) + 8));
    if (v17)
    {
      v18 = *v15;
      v16 = v15[1];
    }

    else
    {
      v18 = 0;
    }

    mlir::MutableOperandRangeRange::MutableOperandRangeRange(&__src, &v34, v18, v16);
    if (v35[0] != v36)
    {
      free(v35[0]);
    }

    mlir::MutableOperandRangeRange::dereference(&__src, v33[5] + (a3 - 1), &v25);
    if (v31 != v33)
    {
      free(v31);
    }

    *this = 0;
    *(this + 8) = v25;
    *(this + 3) = this + 40;
    *(this + 4) = 0x100000000;
    if (v27)
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v26);
    }

    v24 = v26;
    if (v26 != v28)
    {
LABEL_16:
      free(v24);
    }
  }

  else
  {
    v19 = *a2;
    v20 = *a2 + 16 * ((*(*a2 + 11) >> 23) & 1);
    v21 = *(v20 + 11);
    v22 = *(*(*(*a2 + 6) + 96) + 8 * *(*(*a2 + 6) + 104) - 8);
    v23 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(v19 + 3) + 32), (v20 + 88), 3);
    __src = 1;
    v30 = v22;
    v31 = v23;
    *&v25 = v19;
    *(&v25 + 1) = v21;
    v26 = v28;
    v27 = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v26, &__src, v32);
    *this = 0;
    *(this + 8) = v25;
    *(this + 3) = this + 40;
    *(this + 4) = 0x100000000;
    if (v27)
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v26);
    }

    v24 = v26;
    if (v26 != v28)
    {
      goto LABEL_16;
    }
  }
}

void mlir::LLVM::GEPOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, int a8, _BYTE *a9, uint64_t a10)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v17 = a5;
  __src = a3;
  v22 = v24;
  v23 = 0xC00000000;
  v19 = v21;
  v20 = 0x600000000;
  destructureIndices(a4, a6, a7, &v22, &v19);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v19);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a9, &a9[16 * a10]);
  v14 = *(*(*(a2 + 8) + 96) + 16);
  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(*a1, v22, v23);
  mlir::NamedAttrList::push_back(a2 + 112, v14, v15);
  if (a8)
  {
    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 8), *(**a1 + 608));
  }

  v16 = mlir::TypeAttr::get(a4);
  mlir::OperationState::addAttribute(a2, "elem_type", 9, v16);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v19 & 0xFFFFFFFFFFFFFFF9, 0, v19 & 0xFFFFFFFFFFFFFFF9, v20);
  if (v19 != v21)
  {
    free(v19);
  }

  if (v22 != v24)
  {
    free(v22);
  }
}

void destructureIndices(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a5;
    v9 = 8 * a3;
    LODWORD(v10) = *(a4 + 8);
    v11 = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    v12 = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id;
    v13 = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v14 = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id;
    while (1)
    {
      v15 = 0;
      if (v10 && result)
      {
        v15 = *(*result + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id;
      }

      if ((*a2 & 4) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = *a2 & 0xFFFFFFFFFFFFFFF8;
      }

      if (!v16)
      {
        llvm::SmallVectorTemplateBase<int,true>::push_back(a4, *a2 >> 35);
        goto LABEL_30;
      }

      v39 = 1;
      v38 = 0;
      if (!v15)
      {
        break;
      }

      v37 = &v38;
      v17 = *(v16 + 8) & 7;
      v18 = v17 == 7;
      v19 = v17 == 7 ? 0 : v16;
      if (v18)
      {
        break;
      }

      v20 = *(v19 + 8) & 7;
      if (v20 == 6)
      {
        v21 = v19 + 24 * *(v19 + 16);
        v22 = (v21 + 120);
        if (v21 == -120)
        {
          break;
        }
      }

      else
      {
        v22 = (v19 + 16 * v20 + 16);
      }

      if (!mlir::detail::constant_int_value_binder::match(&v37, v22))
      {
        break;
      }

      v23 = v14;
      v24 = v13;
      v25 = v11;
      v26 = v12;
      v27 = v39;
      v28 = v27 - llvm::APInt::getNumSignBits(&v38);
      v12 = v26;
      v11 = v25;
      v13 = v24;
      v14 = v23;
      v5 = a5;
      if ((v28 + 1) > 0x1D)
      {
        break;
      }

      if (v39 > 0x40)
      {
        v29 = *v38;
      }

      else if (v39)
      {
        v29 = (v38 << -v39) >> -v39;
      }

      else
      {
        LODWORD(v29) = 0;
      }

      llvm::SmallVectorTemplateBase<int,true>::push_back(a4, v29);
LABEL_27:
      if (v39 >= 0x41 && v38)
      {
        MEMORY[0x25F891010](v38, 0x1000C8000313F17);
      }

LABEL_30:
      v10 = *(a4 + 8);
      if (v10 == 1)
      {
        v30 = result;
      }

      else
      {
        v30 = 0;
      }

      if (v10 == 1 || result == 0)
      {
        result = v30;
      }

      else
      {
        v32 = *(*result + 136);
        if (v32 == v11)
        {
          result = *(result + 24);
        }

        else if (v32 == v12 || v32 == v13 || v32 == v14)
        {
          result = *(result + 8);
        }

        else
        {
          if (v32 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
          {
            v33 = *(*a4 + 4 * v10 - 4);
            if ((v33 & 0x80000000) == 0)
            {
              v34 = *(result + 24);
              if (v34)
              {
                if (v33 < *(result + 28) >> 3)
                {
                  v35 = 16;
                  goto LABEL_57;
                }
              }

              else if (v33 < v34 >> 2)
              {
                v35 = 8;
LABEL_57:
                result = *(*(result + v35) + 8 * v33);
                goto LABEL_47;
              }
            }
          }

          result = 0;
        }
      }

LABEL_47:
      ++a2;
      v9 -= 8;
      if (!v9)
      {
        return;
      }
    }

    llvm::SmallVectorTemplateBase<int,true>::push_back(a4, 0x80000000);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v5, v16);
    goto LABEL_27;
  }
}

uint64_t *llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *>(a1, a2);
  }

  else
  {
    v5 = (*a1 + 40 * v4);
    result = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
    *v5 = a2;
    v5[1] = result;
    v5[2] = 0;
    v5[3] = 0;
    *(v5 + 29) = 0;
    ++*(a1 + 8);
  }

  return result;
}

void mlir::LLVM::LoadOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v27 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v27, 0, &v27, 1);
  if (a5)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 16) = a5;
  }

  if (a6)
  {
    v21 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 80) = v21;
  }

  if (a7)
  {
    v22 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 48) = v22;
  }

  if (a8)
  {
    v23 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 24) = v23;
  }

  if (a9)
  {
    v24 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 32) = v24;
  }

  v25 = mlir::IntegerType::get(*a1, 64, 0);
  v26 = mlir::IntegerAttr::get(v25, a10);
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 56) = v26;
  if (a11)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 64) = a11;
  }

  if (a12)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) = a12;
  }

  if (a13)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 8) = a13;
  }

  if (a14)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 40) = a14;
  }

  if (a15)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 72) = a15;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v29);
}

void *mlir::LLVM::StoreOp::build(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = a4;
  v27 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v27, 0, &v27, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v26, 0, &v26, 1);
  if (a5)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 16) = a5;
  }

  if (a6)
  {
    v20 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 72) = v20;
  }

  if (a7)
  {
    v21 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 40) = v21;
  }

  if (a8)
  {
    v22 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 24) = v22;
  }

  v23 = mlir::IntegerType::get(*a1, 64, 0);
  v24 = mlir::IntegerAttr::get(v23, a9);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
  result[6] = v24;
  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    result[7] = a10;
  }

  if (a11)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    *result = a11;
  }

  if (a12)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    result[1] = a12;
  }

  if (a13)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    result[4] = a13;
  }

  if (a14)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    result[8] = a14;
  }

  return result;
}

llvm::raw_ostream *printOpBundles(llvm::raw_ostream *result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 3))
  {
    return result;
  }

  v7 = result;
  v8 = (*(*result + 16))(result);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "[", 1uLL);
  }

  else
  {
    *v9 = 91;
    ++*(v8 + 4);
  }

  v62 = *a2;
  v63 = *(a2 + 2);
  v10 = *a3;
  v47 = *a3;
  LOBYTE(v48[0]) = 0;
  v51[0] = 0;
  v11 = *(a3 + 40);
  if (v11 == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::__value_func[abi:nn200100](v48, a3 + 8);
    v51[0] = 1;
    v10 = v47;
  }

  v12 = *(a4 + 8);
  v55 = v62;
  v56 = v63;
  v57.i64[0] = 0;
  v57.i64[1] = v10;
  v58[0] = 0;
  v60 = 0;
  if (!v11)
  {
    v61 = v12;
    goto LABEL_15;
  }

  if (!v50)
  {
    v13 = &v59;
    goto LABEL_13;
  }

  if (v50 != v48)
  {
    v13 = &v50;
    v59 = v50;
LABEL_13:
    *v13 = 0;
    v60 = 1;
    v61 = v12;
LABEL_14:
    std::__function::__value_func<mlir::TypeRange ()>::~__value_func[abi:nn200100](v48);
    goto LABEL_15;
  }

  v59 = v58;
  (*(*v50 + 24))();
  v60 = 1;
  v61 = v12;
  if (v51[0])
  {
    goto LABEL_14;
  }

LABEL_15:
  v45 = *a2;
  v14 = *(a2 + 3);
  v46 = *(a2 + 2);
  v15 = *(a3 + 48);
  *&v62 = v15;
  BYTE8(v62) = 0;
  v66 = 0;
  v16 = *(a3 + 88);
  if (v16 == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::__value_func[abi:nn200100](&v62 + 8, a3 + 56);
    v66 = 1;
    v15 = v62;
  }

  v17 = *(a4 + 8) + 8 * *(a4 + 16);
  v48[0] = *(&v45 + 1);
  v48[1] = v46;
  v49 = v14;
  v50 = v15;
  v51[0] = 0;
  v53 = 0;
  if (v16)
  {
    if (v65)
    {
      if (v65 == (&v62 + 8))
      {
        v52 = v51;
        (*(*v65 + 24))(v65, v51);
        v53 = 1;
        v54 = v17;
        if ((v66 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v18 = &v65;
      v52 = v65;
    }

    else
    {
      v18 = &v52;
    }

    *v18 = 0;
    v53 = 1;
    v54 = v17;
LABEL_24:
    std::__function::__value_func<mlir::TypeRange ()>::~__value_func[abi:nn200100](&v62 + 8);
    goto LABEL_25;
  }

  v54 = v17;
LABEL_25:
  if (v57.i64[0] != v49 && v57.i64[1] != v50 && v61 != v54)
  {
    v19 = v56 + v57.i64[0];
    if (v56 + v57.i64[0])
    {
      LODWORD(v20) = 0;
      v21 = 4 * v19;
      v22 = *(*(&v55 + 1) + 24);
      do
      {
        v23 = *v22++;
        v20 = (v23 + v20);
        v21 -= 4;
      }

      while (v21);
    }

    else
    {
      v20 = 0;
    }

    v24 = v55 + 32 * v20;
    v25 = *(*(*(&v55 + 1) + 24) + 4 * v19);
    v26 = std::function<mlir::TypeRange ()>::operator()(v59, v57.i32[2]);
    *&v62 = v24;
    *(&v62 + 1) = v25;
    v63 = v26;
    v64 = v27;
    v65 = v61;
    printOpBundles(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRangeRange,mlir::TypeRangeRange,std::optional<mlir::ArrayAttr>)::$_0::operator()<std::tuple<mlir::OperandRange,mlir::TypeRange,mlir::Attribute const&>>(v7, &v62);
    v28 = vaddq_s64(v57, vdupq_n_s64(1uLL));
    v57 = v28;
    v29 = v61 + 8;
    v61 = (v61 + 8);
    if (v28.i64[0] != v49)
    {
      v30 = v28.i64[1];
      v44 = vdupq_n_s64(1uLL);
      do
      {
        if (v30 == v50 || v29 == v54)
        {
          break;
        }

        v32 = (*(*v7 + 16))(v7);
        v33 = *(v32 + 4);
        if (*(v32 + 3) - v33 > 1uLL)
        {
          *v33 = 8236;
          *(v32 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v32, ", ", 2uLL);
        }

        v34 = v56 + v57.i64[0];
        if (v56 + v57.i64[0])
        {
          LODWORD(v35) = 0;
          v36 = 4 * v34;
          v37 = *(*(&v55 + 1) + 24);
          do
          {
            v38 = *v37++;
            v35 = (v38 + v35);
            v36 -= 4;
          }

          while (v36);
        }

        else
        {
          v35 = 0;
        }

        v39 = v55 + 32 * v35;
        v40 = *(*(*(&v55 + 1) + 24) + 4 * v34);
        v41 = std::function<mlir::TypeRange ()>::operator()(v59, v57.i32[2]);
        *&v62 = v39;
        *(&v62 + 1) = v40;
        v63 = v41;
        v64 = v42;
        v65 = v61;
        printOpBundles(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRangeRange,mlir::TypeRangeRange,std::optional<mlir::ArrayAttr>)::$_0::operator()<std::tuple<mlir::OperandRange,mlir::TypeRange,mlir::Attribute const&>>(v7, &v62);
        v57 = vaddq_s64(v57, v44);
        v29 = v61 + 8;
        v61 = (v61 + 8);
        v30 = v57.i64[1];
      }

      while (v57.i64[0] != v49);
    }
  }

  if (v53 == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::~__value_func[abi:nn200100](v51);
  }

  if (v60 == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::~__value_func[abi:nn200100](v58);
  }

  result = (*(*v7 + 16))(v7);
  v43 = *(result + 4);
  if (*(result + 3) == v43)
  {
    return llvm::raw_ostream::write(result, "]", 1uLL);
  }

  *v43 = 93;
  ++*(result + 4);
  return result;
}

uint64_t mlir::LLVM::CallOp::parse(uint64_t a1, uint64_t a2)
{
  v48[20] = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = 0;
  v43 = v45;
  v44 = 0x100000000;
  v40 = &v42;
  v41 = 0x100000000;
  v37 = &v39;
  v38 = 0x100000000;
  v30 = 0;
  v4 = **(*(a2 + 8) + 96);
  v5 = *(*(*a1 + 32))(a1);
  v6 = parseOptionalLLVMKeyword<mlir::LLVM::cconv::CConv,mlir::LLVM::cconv::CConv>(a1);
  v7 = mlir::LLVM::CConvAttr::get(v5, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v4, v7);
  v8 = *(*(*(a2 + 8) + 96) + 8);
  v9 = 0;
  v10 = *(*(*a1 + 32))(a1);
  v46 = v48;
  v47 = 0xA00000000;
  do
  {
    if (v9 > 3)
    {
      v11 = 0;
      v12 = &str_2_25;
    }

    else
    {
      v11 = qword_25D0A01D0[v9];
      v12 = (&off_2799BEBF0)[v9];
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v46, v12, v11);
    ++v9;
  }

  while (v9 != 4);
  v13 = parseOptionalKeywordAlternative(a1, v46, v47);
  if (v46 != v48)
  {
    free(v46);
  }

  if (v13 == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = mlir::LLVM::TailCallKindAttr::get(v10, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v8, v15);
  if ((parseOptionalCallFuncPtr(a1, &v43) & 1) == 0)
  {
    goto LABEL_31;
  }

  v16 = v44;
  if (!v44 && !mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v32, a2 + 112))
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 720))(a1, &v43, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((*(*a1 + 408))(a1, "vararg", 6))
  {
    v17 = *(*(*(a2 + 8) + 96) + 128);
    if (((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v31, *(v17 + 16), *(v17 + 24), a2 + 112) || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v18 = (*(*a1 + 40))(a1);
  v19 = parseOpBundles(a1, &v40, &v37, &v30);
  if (v19 >= 0x100u && (v19 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (v30 && *(v30 + 16))
  {
    v20 = *(*(*(a2 + 8) + 96) + 104);
    mlir::OperationState::addAttribute(a2, *(v20 + 16), *(v20 + 24), v30);
  }

  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v46 = v48;
    v47 = 0x600000000;
    v34 = v36;
    v35 = 0x600000000;
    if ((parseCallTypeAndResolveOperands(a1, a2, v16 == 0, v43, v44, &v46, &v34) & 1) != 0 && (v21 = (*(*a1 + 32))(a1), mlir::call_interface_impl::addArgAndResultAttrs(v21, a2, v46, v47, v34, v35, *(*(*(a2 + 8) + 96) + 32), *(*(*(a2 + 8) + 96) + 112)), resolveOpBundleOperands(a1, v18, a2, v40, v41, v37, v38, *(*(*(a2 + 8) + 96) + 96))))
    {
      if (v41)
      {
        v22 = 0;
        v23 = 48 * v41;
        v24 = v40 + 1;
        do
        {
          v25 = *v24;
          v24 += 6;
          v22 += v25;
          v23 -= 48;
        }

        while (v23);
      }

      else
      {
        v22 = 0;
      }

      v28 = (*(*a1 + 32))(a1);
      v33[0] = v44;
      v33[1] = v22;
      v29 = mlir::detail::DenseArrayAttrImpl<int>::get(*v28, v33, 2);
      mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13, v29);
      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    if (v34 != v36)
    {
      free(v34);
    }

    if (v46 != v48)
    {
      free(v46);
    }
  }

  else
  {
LABEL_31:
    v26 = 0;
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v37);
  llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v40);
  if (v43 != v45)
  {
    free(v43);
  }

  return v26;
}

uint64_t parseOptionalLLVMKeyword<mlir::LLVM::cconv::CConv,mlir::LLVM::cconv::CConv>(uint64_t a1)
{
  v2 = 0;
  v10[20] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = 0xA00000000;
  do
  {
    v3 = mlir::LLVM::cconv::stringifyCConv(v2);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v8, v3, v4);
    ++v2;
  }

  while (v2 != 102);
  v5 = parseOptionalKeywordAlternative(a1, v8, v9);
  if (v8 != v10)
  {
    free(v8);
  }

  if (v5 == -1)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t parseOptionalCallFuncPtr(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, 24);
  v3 = 1;
  v4 = (*(*a1 + 712))(a1, v9, 1);
  if ((v4 & 0x100) != 0)
  {
    v3 = v4;
    if (v4)
    {
      v3 = 1;
      v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(a2, v9, 1);
      v6 = (*a2 + 32 * *(a2 + 8));
      v7 = v5[1];
      *v6 = *v5;
      v6[1] = v7;
      ++*(a2 + 8);
    }
  }

  return v3;
}

uint64_t parseOpBundles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 320))(a1))
  {
    if ((*(*a1 + 336))(a1))
    {
      v8 = 1;
    }

    else
    {
      v12[3] = &v13;
      v13 = v15;
      v14 = 0x600000000;
      v12[0] = a1;
      v12[1] = a2;
      v12[2] = a3;
      if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOpBundles(mlir::OpAsmParser &,llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u> &,llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u> &,mlir::ArrayAttr &)::$_0>, v12, 0, 0) & 1) != 0 && ((*(*a1 + 328))(a1))
      {
        v10 = (*(*a1 + 32))(a1);
        *a4 = mlir::ArrayAttr::get(*v10, v13, v14);
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      if (v13 != v15)
      {
        free(v13);
      }
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v8 | (v9 << 8);
}

uint64_t parseCallTypeAndResolveOperands(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v14 = (*(*a1 + 40))(a1);
  v37 = v39;
  v38 = 0x600000000;
  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    goto LABEL_3;
  }

  llvm::SmallVectorImpl<mlir::Type>::emplace_back<>(&v37);
  if (((*(*a1 + 536))(a1, v37 + 8 * v38 - 8) & 1) == 0)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_26;
  }

  if (((*(*a1 + 128))(a1) & 1) == 0)
  {
    v34 = "expected indirect call to have 2 trailing types";
    v36[8] = 259;
    (*(*a1 + 24))(&v40, a1, v14, &v34);
    v16 = v42 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    goto LABEL_26;
  }

LABEL_3:
  v34 = v36;
  v35 = 0x600000000;
  __src = v33;
  v32 = 0x600000000;
  if ((mlir::call_interface_impl::parseFunctionSignature(a1, &v34, a6, &__src, a7, 1) & 1) == 0)
  {
    if (a3)
    {
      v15 = "expected direct call to have 1 trailing types";
    }

    else
    {
      v15 = "expected trailing function type";
    }

    goto LABEL_21;
  }

  if (v32 < 2)
  {
    if (v32 == 1)
    {
      v17 = *(**__src + 136);
      if (v17 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
      {
        v15 = "expected a non-void result type";
        goto LABEL_21;
      }
    }

    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(&v37, v34, v34 + 8 * v35);
    v18 = (*(*a1 + 16))(a1);
    v19 = v37;
    v29 = v38;
    v30 = a5;
    if (a5 == v38)
    {
      if (a5)
      {
        v20 = 32 * a5;
        while (((*(*a1 + 728))(a1, a4, *v19, a2 + 16) & 1) != 0)
        {
          a4 += 32;
          ++v19;
          v20 -= 32;
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      v28 = 257;
      (*(*a1 + 24))(&v40, a1, v18, v27);
      if (v40)
      {
        mlir::Diagnostic::operator<<<48ul>(&v41, "number of operands and types do not match: got ");
      }

      v22 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v40, &v30);
      v23 = v22;
      if (*v22)
      {
        mlir::Diagnostic::operator<<<15ul>((v22 + 1), " operands and ");
      }

      v24 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v23, &v29);
      v25 = v24;
      if (*v24)
      {
        mlir::Diagnostic::operator<<<7ul>((v24 + 1), " types");
      }

      v26 = *(v25 + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
      if (v26)
      {
LABEL_36:
        v16 = 0;
        goto LABEL_22;
      }
    }

LABEL_37:
    if (v32)
    {
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v32);
    }

    v16 = 1;
    goto LABEL_22;
  }

  v15 = "expected function with 0 or 1 result";
LABEL_21:
  v27[0] = v15;
  v28 = 259;
  (*(*a1 + 24))(&v40, a1, v14, v27);
  v16 = v42 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
LABEL_22:
  if (__src != v33)
  {
    free(__src);
  }

  if (v34 != v36)
  {
    free(v34);
  }

LABEL_26:
  if (v37 != v39)
  {
    free(v37);
  }

  return v16 & 1;
}

BOOL resolveOpBundleOperands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v40[24] = *MEMORY[0x277D85DE8];
  v37 = 0;
  if (a5)
  {
    v14 = &a4[6 * a5];
    v15 = a4;
    while (1)
    {
      v16 = *(v15 + 2);
      if (v16 != *(a6 + 8))
      {
        v35 = "expected ";
        v36 = 259;
        (*(*a1 + 24))(&v38, a1, a2, &v35);
        v34 = *(v15 + 2);
        v27 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v38, &v34);
        v28 = v27;
        if (*v27)
        {
          mlir::Diagnostic::operator<<<56ul>((v27 + 1), " types for operand bundle operands for operand bundle #");
        }

        v29 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v28, &v37);
        v30 = v29;
        if (*v29)
        {
          mlir::Diagnostic::operator<<<20ul>((v29 + 1), ", but actually got ");
        }

        v33 = *(a6 + 8);
        v23 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v30, &v33) + 200) & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
        return v23;
      }

      if (v16)
      {
        break;
      }

LABEL_8:
      v15 += 6;
      a6 += 64;
      if (v15 == v14)
      {
        v38 = v40;
        v39 = 0xC00000000;
        if (a5 >= 0xD)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v40, a5, 4);
        }

        v20 = 48 * a5;
        v21 = (a4 + 1);
        v8 = a8;
        do
        {
          v22 = *v21;
          v21 += 12;
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v38, v22);
          v20 -= 48;
        }

        while (v20);
        goto LABEL_16;
      }
    }

    v17 = *v15;
    v18 = *a6;
    v19 = 32 * v16;
    while (((*(*a1 + 728))(a1, v17, *v18, a3 + 16) & 1) != 0)
    {
      v17 += 32;
      ++v18;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
    v38 = v40;
    v39 = 0xC00000000;
LABEL_16:
    v24 = (*(*a1 + 32))(a1);
    v25 = mlir::detail::DenseArrayAttrImpl<int>::get(*v24, v38, v39);
    mlir::NamedAttrList::push_back(a3 + 112, v8, v25);
    if (v38 != v40)
    {
      free(v38);
    }

    return 1;
  }
}