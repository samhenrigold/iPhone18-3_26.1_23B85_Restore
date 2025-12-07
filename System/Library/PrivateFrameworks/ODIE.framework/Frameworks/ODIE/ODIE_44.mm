uint64_t mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) & 1) == 0 || (mlir::OpTrait::impl::verifyOneOperand(a1, v4) & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (v5)
  {
    v17[0] = a1;
    if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(v5, "caseValues", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v17) || !mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps5(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13[0] = "requires attribute 'caseValues'";
    v14 = 259;
    mlir::Operation::emitOpError(v17, a1, v13);
    v7 = v18;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    if (v7)
    {
LABEL_13:
      v9 = 0;
      return v9 & 1;
    }
  }

  if ((mlir::OpTrait::impl::verifyIsTerminator(a1, v6) & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(a1 + 40) - 1;
  v15 = *(*(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1)) + 16);
  v16 = v8;
  if (v8 == v15)
  {
    v9 = 1;
  }

  else
  {
    v13[0] = "expected number of cases to match the number of case values, got ";
    v14 = 259;
    mlir::Operation::emitOpError(v17, a1, v13);
    v11 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v17, &v16);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<15ul>((v11 + 1), " but expected ");
    }

    v9 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v12, &v15) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v9 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchTypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchTypesOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchTypesOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "pdl_interp.switch_types", 0x17, a2, &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E84108;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v4 = *(a3 + 8) == 29541) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 10)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 0x756C615665736163 && v6 == 29541)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "caseValues";
    v7[1] = 10;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "caseValues", 0xAuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v14 = v20 + 24 * v21;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v21;
          }
        }

        goto LABEL_4;
      }

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "caseValues";
  v10[1] = 10;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchTypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchTypesOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchTypesOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 1uLL)
  {
    *v12 = 28532;
    *(v11 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, "to", 2uLL);
  }

  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = a2 + 64;
  (*(*a3 + 48))(a3, *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)));
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  v18 = *(a2 + 40);
  if (v18)
  {
    v19 = v18 - 1;
    if (v18 == 1)
    {
      goto LABEL_26;
    }

    v20 = ((v15 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  else
  {
    v19 = -1;
    v20 = 32;
  }

  (*(*a3 + 176))(a3, *(v20 + 24));
  if (v19 != 1)
  {
    v21 = v18 - 2;
    v22 = (v20 + 56);
    do
    {
      v23 = (*(*a3 + 16))(a3);
      v24 = *(v23 + 4);
      if (*(v23 + 3) - v24 > 1uLL)
      {
        *v24 = 8236;
        *(v23 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v23, ", ", 2uLL);
      }

      v25 = *v22;
      v22 += 4;
      (*(*a3 + 176))(a3, v25);
      --v21;
    }

    while (v21);
  }

LABEL_26:
  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ")", 1uLL);
  }

  else
  {
    *v27 = 41;
    ++*(v26 + 4);
  }

  v35 = v37;
  v36 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v35, "caseValues", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v35, v36);
  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = (*(*a3 + 16))(a3);
  v32 = *(v31 + 4);
  if (*(v31 + 3) - v32 > 1uLL)
  {
    *v32 = 15917;
    *(v31 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v31, "->", 2uLL);
  }

  v33 = (*(*a3 + 16))(a3);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 32);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 32;
  }

  (*(*a3 + 176))(a3, *(((v15 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (v35 != v37)
  {
    free(v35);
  }
}

uint64_t mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) & 1) == 0 || (mlir::OpTrait::impl::verifyOneOperand(a1, v4) & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (v5)
  {
    v17[0] = a1;
    if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps15(v5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v17) || !mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps6(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13[0] = "requires attribute 'caseValues'";
    v14 = 259;
    mlir::Operation::emitOpError(v17, a1, v13);
    v7 = v18;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    if (v7)
    {
LABEL_13:
      v9 = 0;
      return v9 & 1;
    }
  }

  if ((mlir::OpTrait::impl::verifyIsTerminator(a1, v6) & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(a1 + 40) - 1;
  v15 = *(*(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1)) + 16);
  v16 = v8;
  if (v8 == v15)
  {
    v9 = 1;
  }

  else
  {
    v13[0] = "expected number of cases to match the number of case values, got ";
    v14 = 259;
    mlir::Operation::emitOpError(v17, a1, v13);
    v11 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v17, &v16);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<15ul>((v11 + 1), " but expected ");
    }

    v9 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v12, &v15) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v9 & 1;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::pdl_interp::FuncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  *&v9 = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v9 + 1) = a4;
  *&v8 = a5 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v8 + 1) = a6;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v6, &v9, &v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E9E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E9E8))
  {
    qword_27FC1E9D8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>();
    unk_27FC1E9E0 = v1;
    __cxa_guard_release(&qword_27FC1E9E8);
  }

  return qword_27FC1E9D8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EA10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EA10))
  {
    qword_27FC1EA00 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>();
    *algn_27FC1EA08 = v1;
    __cxa_guard_release(&qword_27FC1EA10);
  }

  return qword_27FC1EA00;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties]";
  v6 = 132;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

BOOL mlir::AsmParser::parseType<mlir::pdl::PDLType>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 536))(a1, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(**v10 + 24) != &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of type specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EA38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EA38))
  {
    qword_27FC1EA28 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1EA30 = v1;
    __cxa_guard_release(&qword_27FC1EA38);
  }

  return qword_27FC1EA28;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties]";
  v6 = 134;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EA60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EA60))
  {
    qword_27FC1EA50 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>();
    *algn_27FC1EA58 = v1;
    __cxa_guard_release(&qword_27FC1EA60);
  }

  return qword_27FC1EA50;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EA88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EA88))
  {
    qword_27FC1EA78 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>();
    unk_27FC1EA80 = v1;
    __cxa_guard_release(&qword_27FC1EA88);
  }

  return qword_27FC1EA78;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EAB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EAB0))
  {
    qword_27FC1EAA0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>();
    *algn_27FC1EAA8 = v1;
    __cxa_guard_release(&qword_27FC1EAB0);
  }

  return qword_27FC1EAA0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EAD8))
  {
    qword_27FC1EAC8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>();
    unk_27FC1EAD0 = v1;
    __cxa_guard_release(&qword_27FC1EAD8);
  }

  return qword_27FC1EAC8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties]";
  v6 = 129;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EB00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EB00))
  {
    qword_27FC1EAF0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>();
    *algn_27FC1EAF8 = v1;
    __cxa_guard_release(&qword_27FC1EB00);
  }

  return qword_27FC1EAF0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EB28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EB28))
  {
    qword_27FC1EB18 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1EB20 = v1;
    __cxa_guard_release(&qword_27FC1EB28);
  }

  return qword_27FC1EB18;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EB50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EB50))
  {
    qword_27FC1EB40 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>();
    *algn_27FC1EB48 = v1;
    __cxa_guard_release(&qword_27FC1EB50);
  }

  return qword_27FC1EB40;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateOperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EB78))
  {
    qword_27FC1EB68 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>();
    unk_27FC1EB70 = v1;
    __cxa_guard_release(&qword_27FC1EB78);
  }

  return qword_27FC1EB68;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EBA0))
  {
    qword_27FC1EB90 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>();
    *algn_27FC1EB98 = v1;
    __cxa_guard_release(&qword_27FC1EBA0);
  }

  return qword_27FC1EB90;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties]";
  v6 = 131;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EBC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EBC8))
  {
    qword_27FC1EBB8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>();
    unk_27FC1EBC0 = v1;
    __cxa_guard_release(&qword_27FC1EBC8);
  }

  return qword_27FC1EBB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties]";
  v6 = 127;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EBF0))
  {
    qword_27FC1EBE0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>();
    *algn_27FC1EBE8 = v1;
    __cxa_guard_release(&qword_27FC1EBF0);
  }

  return qword_27FC1EBE0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties]";
  v6 = 124;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EC18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EC18))
  {
    qword_27FC1EC08 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1EC10 = v1;
    __cxa_guard_release(&qword_27FC1EC18);
  }

  return qword_27FC1EC08;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties]";
  v6 = 132;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EC40))
  {
    qword_27FC1EC30 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>();
    *algn_27FC1EC38 = v1;
    __cxa_guard_release(&qword_27FC1EC40);
  }

  return qword_27FC1EC30;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EC68))
  {
    qword_27FC1EC58 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>();
    unk_27FC1EC60 = v1;
    __cxa_guard_release(&qword_27FC1EC68);
  }

  return qword_27FC1EC58;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties]";
  v6 = 131;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EC90))
  {
    qword_27FC1EC80 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>();
    *algn_27FC1EC88 = v1;
    __cxa_guard_release(&qword_27FC1EC90);
  }

  return qword_27FC1EC80;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties]";
  v6 = 129;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ECB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ECB8))
  {
    qword_27FC1ECA8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>();
    unk_27FC1ECB0 = v1;
    __cxa_guard_release(&qword_27FC1ECB8);
  }

  return qword_27FC1ECA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ECE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ECE0))
  {
    qword_27FC1ECD0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>();
    *algn_27FC1ECD8 = v1;
    __cxa_guard_release(&qword_27FC1ECE0);
  }

  return qword_27FC1ECD0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties]";
  v6 = 131;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::RecordMatchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ED08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ED08))
  {
    qword_27FC1ECF8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1ED00 = v1;
    __cxa_guard_release(&qword_27FC1ED08);
  }

  return qword_27FC1ECF8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ED30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ED30))
  {
    qword_27FC1ED20 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>();
    *algn_27FC1ED28 = v1;
    __cxa_guard_release(&qword_27FC1ED30);
  }

  return qword_27FC1ED20;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

BOOL mlir::AsmParser::parseAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if (((*(*a1 + 440))(a1, &v11, 0) & 1) == 0)
  {
    return 0;
  }

  v5 = v11;
  if (mlir::DenseIntElementsAttr::classof(v11))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  v7 = 1;
  if (!v6)
  {
    v9 = "invalid kind of attribute specified";
    v10 = 259;
    (*(*a1 + 24))(v12, a1, v4, &v9);
    v7 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v7;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ED58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ED58))
  {
    qword_27FC1ED48 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>();
    unk_27FC1ED50 = v1;
    __cxa_guard_release(&qword_27FC1ED58);
  }

  return qword_27FC1ED48;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties]";
  v6 = 139;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ED80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ED80))
  {
    qword_27FC1ED70 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>();
    *algn_27FC1ED78 = v1;
    __cxa_guard_release(&qword_27FC1ED80);
  }

  return qword_27FC1ED70;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EDA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EDA8))
  {
    qword_27FC1ED98 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>();
    unk_27FC1EDA0 = v1;
    __cxa_guard_release(&qword_27FC1EDA8);
  }

  return qword_27FC1ED98;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EDD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EDD0))
  {
    qword_27FC1EDC0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>();
    *algn_27FC1EDC8 = v1;
    __cxa_guard_release(&qword_27FC1EDD0);
  }

  return qword_27FC1EDC0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties]";
  v6 = 131;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void anonymous namespace::PDLToPDLInterpPass::~PDLToPDLInterpPass(_anonymous_namespace_::PDLToPDLInterpPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::impl::ConvertPDLToPDLInterpBase<anonymous namespace::PDLToPDLInterpPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E84280;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::pdl_interp::PDLInterpDialect,void>::id, "pdl_interp", 0xAuLL, v3);
  return std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
}

void anonymous namespace::PDLToPDLInterpPass::runOnOperation(_anonymous_namespace_::PDLToPDLInterpPass *this)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1) + ((*(v1 + 44) >> 21) & 0x7F8) + 32 * *(v1 + 40) + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 5);
  v10[0] = *(***(*((*(v3 + 3) & 0xFFFFFFFFFFFFFFF8) + 16) + 24) + 32);
  v10[1] = 0;
  v10[2] = v3;
  v10[3] = v4;
  v5 = *(v1 + 24);
  v6 = *(*v10[0] + 384);
  *&v13 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  *&v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v13);
  *&v13 = &v12 + 2;
  *(&v13 + 1) = 1;
  v11 = xmmword_25D0A0640;
  v7 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v10[0], &v13, &v11);
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::FuncOp>(*(**v5 + 32));
  *&v13 = v5;
  *(&v13 + 1) = v8;
  v14 = v16;
  v15 = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = &v19;
  v18[10] = 0x100000000;
  v20 = &v22;
  v21 = 0x100000000;
  v24 = 0;
  v23 = 0;
  v25 = &mlir::detail::TypeIDResolver<void,void>::id;
  v26 = 0;
  v27 = 0;
  mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(v10, &v13, "matcher", 7, v7, 0, 0, v9, *(v7 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(v7 + 8));
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::FuncOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.func";
    v5[3] = 15;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

mlir::Block *anonymous namespace::PatternLowering::generateMatcher(_anonymous_namespace_::PatternLowering *this, mlir::pdl_to_pdl_interp::MatcherNode *a2, mlir::Region *a3, mlir::Block *a4)
{
  v6 = a2;
  v64[33] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    operator new();
  }

  v8 = *(this + 14);
  v54[0] = (this + 88);
  v54[1] = v8;
  *(this + 14) = v54;
  v54[2] = 0;
  v9 = *(a2 + 5);
  if (v9 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID())
  {
    *(this + 2) = a4;
    *(this + 3) = a4 + 32;
    mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(this, *(*(this + 4) + 24));
  }

  else
  {
    v10 = *(v6 + 3);
    if (v10)
    {
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(this + 120, Matcher);
    }

    else
    {
      Matcher = *(*(this + 15) + 8 * *(this + 32) - 8);
    }

    v53 = a4;
    v12 = *(v6 + 1);
    if (v12)
    {
      v52 = ValueAt;
      if (ValueAt && *(*(*&ValueAt[1] & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(this + 224, &v52);
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
      v52 = 0;
    }

    v50 = v6;
    v51 = 0;
    v15 = *(v6 + 5);
    if (v15 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID())
    {
      v54[5] = v52;
      v33 = *(v6 + 2);
      v57 = v59;
      v58 = 0x600000000;
      if (*v33 == 21)
      {
        v34 = *(v33 + 32);
        if (v34)
        {
          v35 = *(v33 + 24);
          v36 = 8 * v34;
          do
          {
            v37 = *v35++;
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v57, v38);
            v36 -= 8;
          }

          while (v36);
        }
      }

      else if (*v33 == 20)
      {
        LODWORD(v58) = 0;
        llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v57, __src, &__src[1]);
      }

      operator new();
    }

    v16 = *(v6 + 5);
    if (v16 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID())
    {
      v17 = v52;
      v18 = v53;
      v55 = v6;
      v19 = *(v6 + 2);
      v48 = *(*(this + 15) + 8 * *(this + 32) - 8);
      v49 = *(v53 + 3);
      if ((*v19 & 0xFFFFFFFD) == 0x10)
      {
        v20 = *(v6 + 20);
        __src[0] = &v61;
        __src[1] = 0x1000000000;
        llvm::SmallVectorImpl<unsigned int>::append<llvm::detail::SafeIntIterator<unsigned int,false>,void>(__src, 0, v20);
        v57 = v59;
        v58 = 0xC00000000;
        if (LODWORD(__src[1]))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(&v57, __src);
        }

        if (__src[0] != &v61)
        {
          free(__src[0]);
        }

        __src[0] = &v55;
        v21 = 126 - 2 * __clz(v58);
        if (v58)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(this + 120, v48);
        if (v58)
        {
          mlir::OpBuilder::createBlock(this, *(v40 + 3) & 0xFFFFFFFFFFFFFFF8, v40 + 1, 2, 0, 0, 0);
        }

        v41 = *(this + 32);
        v42 = *(*(this + 15) + 8 * v41 - 8);
        *(this + 32) = v41 - 1;
        if (*(v42 + 32) != v42 + 32)
        {
          llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(v18 + 32, v18 + 4, v42 + 32, *(v42 + 40), (v42 + 32));
        }

        llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::erase(*(v42 + 24) & 0xFFFFFFFFFFFFFFF8, v42 + 8);
        if (v57 != v59)
        {
          free(v57);
        }
      }

      else
      {
        v46 = v53;
        v47 = v14;
        LODWORD(v61) = 0;
        *__src = 0u;
        v62 = v64;
        v63 = 0;
        v23 = v6;
        v24 = *(v6 + 20);
        if (v24)
        {
          v25 = *(v6 + 9);
          v26 = 16 * v24;
          v27 = (v25 + 8);
          do
          {
            v29 = *(v27 - 1);
            v57 = v29;
            LODWORD(v58) = 0;
            v56 = 0;
            if ((llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Qualifier *>(__src, &v57, &v56) & 1) == 0)
            {
              v30 = llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::InsertIntoBucketImpl<mlir::pdl_to_pdl_interp::Qualifier *>(__src, &v57, v56);
              *v30 = v57;
              *(v30 + 2) = v58;
              v31 = v63;
              *(v30 + 2) = v63;
              if (v31 >= HIDWORD(v63))
              {
                llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::push_back(&v62, v29, v28);
              }

              else
              {
                v32 = v62 + 16 * v31;
                *v32 = v29;
                v32[1] = v28;
                LODWORD(v63) = v31 + 1;
              }
            }

            v27 += 2;
            v26 -= 16;
          }

          while (v26);
        }

        *(this + 2) = v46;
        *(this + 3) = v46 + 32;
        v39 = *v19;
        if (*v19 <= 14)
        {
          v6 = v23;
          if (v39 == 13)
          {
            createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(v17, v48, this, __src);
          }

          else if (*(*(*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
          {
            createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v17, v48, this, __src);
          }

          else
          {
            createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v17, v48, this, __src);
          }
        }

        else
        {
          v6 = v23;
          if (v39 == 15)
          {
            createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(v17, v48, this, __src);
          }

          else if (v39 == 17)
          {
            createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v17, v48, this, __src);
          }

          else
          {
            createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v17, v48, this, __src);
          }
        }

        if (v62 != v64)
        {
          free(v62);
        }

        MEMORY[0x25F891030](__src[0], 8);
        v14 = v47;
      }

      v51 = 1;
    }

    __src[0] = this;
    __src[1] = &v53;
    v43 = *(this + 15) - 8;
    v44 = *(this + 32);
    if (*(v43 + 8 * v44) != Matcher)
    {
      do
      {
        LODWORD(v44) = v44 - 1;
      }

      while (*(v43 + 8 * v44) != Matcher);
      *(this + 32) = v44;
    }

    if (*(v6 + 3))
    {
      *(this + 32) = v44 - 1;
    }

    if (v14)
    {
      llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::remove(this + 224, &v52);
    }
  }

  llvm::ScopedHashTableScope<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::~ScopedHashTableScope(v54);
  return a4;
}

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[501];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributePosition>();
    unk_27FC18FC0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributePosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributePosition]";
  v6 = 104;
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

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[506];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>();
    *algn_27FC18FE8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeLiteralPosition]";
  v6 = 111;
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

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintPosition,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[511];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ConstraintPosition>();
    unk_27FC19010 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ConstraintPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ConstraintPosition]";
  v6 = 105;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ForEachPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ForEachPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[4];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ForEachPosition>();
    *algn_27FC19038 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ForEachPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ForEachPosition]";
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[9];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandPosition>();
    unk_27FC19060 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandPosition]";
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[14];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandGroupPosition>();
    *algn_27FC19088 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandGroupPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandGroupPosition]";
  v6 = 107;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[19];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationPosition>();
    unk_27FC190B0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationPosition]";
  v6 = 104;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[24];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultPosition>();
    *algn_27FC190D8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultPosition]";
  v6 = 101;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[29];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultGroupPosition>();
    unk_27FC19100 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultGroupPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultGroupPosition]";
  v6 = 106;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[34];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypePosition>();
    *algn_27FC19128 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypePosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypePosition]";
  v6 = 99;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[39];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeLiteralPosition>();
    unk_27FC19150 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeLiteralPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeLiteralPosition]";
  v6 = 106;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UsersPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UsersPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[44];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::UsersPosition>();
    *algn_27FC19178 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::UsersPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::UsersPosition]";
  v6 = 100;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[49];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeAnswer>();
    unk_27FC191A0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeAnswer]";
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[54];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationNameAnswer>();
    *algn_27FC191C8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationNameAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationNameAnswer]";
  v6 = 106;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[59];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeAnswer>();
    unk_27FC191F0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeAnswer]";
  v6 = 97;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[64];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::UnsignedAnswer>();
    *algn_27FC19218 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::UnsignedAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::UnsignedAnswer]";
  v6 = 101;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::FalseAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::FalseAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 23;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::FalseAnswer>()
{
  if ((atomic_load_explicit(&qword_27FC1EDF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EDF8))
  {
    qword_27FC1EDE8 = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::FalseAnswer>();
    unk_27FC1EDF0 = v1;
    __cxa_guard_release(&qword_27FC1EDF8);
  }

  return qword_27FC1EDE8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::FalseAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::FalseAnswer]";
  v6 = 98;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TrueAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TrueAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 25;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[69];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TrueAnswer>();
    unk_27FC19240 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TrueAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TrueAnswer]";
  v6 = 97;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[74];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ConstraintQuestion>();
    *algn_27FC19268 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ConstraintQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ConstraintQuestion]";
  v6 = 105;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[79];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::EqualToQuestion>();
    unk_27FC19290 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::EqualToQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::EqualToQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::AttributeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 15;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[84];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeQuestion>();
    *algn_27FC192B8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeQuestion]";
  v6 = 104;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::IsNotNullQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::IsNotNullQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 12;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      IsNotNull = llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(IsNotNull, v4);
    }
  }

  return v0[89];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::IsNotNullQuestion>();
    unk_27FC192E0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::IsNotNullQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::IsNotNullQuestion]";
  v6 = 104;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 17;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[94];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandCountQuestion>();
    *algn_27FC19308 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandCountQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandCountQuestion]";
  v6 = 107;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 16;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[99];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>();
    unk_27FC19330 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion]";
  v6 = 114;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperationNameQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 13;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[104];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationNameQuestion>();
    *algn_27FC19358 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationNameQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationNameQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 19;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[109];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultCountQuestion>();
    unk_27FC19380 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultCountQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultCountQuestion]";
  v6 = 106;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 18;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[114];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>();
    *algn_27FC193A8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion]";
  v6 = 113;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TypeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 14;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[119];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeQuestion>();
    unk_27FC193D0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeQuestion]";
  v6 = 99;
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

uint64_t *llvm::ScopedHashTable<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::insertIntoScope(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](a1, a3);
  v8 = *(a2 + 16);
  v9 = *v7;
  result = llvm::allocate_buffer(0x20, 8uLL);
  v11 = *a4;
  result[2] = *a3;
  result[3] = v11;
  *result = v8;
  result[1] = v9;
  *v7 = result;
  *(a2 + 16) = result;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](void *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Position *>(*a1, *(a1 + 4), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Position *>(*a1, *(a1 + 4), *a2, &v10);
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Position *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Position *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = a3;
  v8 = *a6;
  v12 = 0;
  v13 = v8;
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::Position *,unsigned int>(v15, 0, v15, v16, &v12, &v13);
  v11 = &v12;
  *&v15[0] = &v12;
  *(&v15[0] + 1) = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*a1, a4, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::Position *,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::pdl_to_pdl_interp::Position *>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

void *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::pdl_to_pdl_interp::Position *>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
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
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v4 + 16) = 0;
  *v4 = &unk_286E842E8;
  *(v4 + 8) = 0;
  *(v4 + 24) = *v3;
  v5 = *v3;
  *v4 = &unk_286E842C8;
  *(v4 + 8) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

void mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v4 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id, *(**a2 + 32));
  if ((v5 & 1) == 0)
  {
    v10 = 1283;
    v9[2] = "pdl_interp.finalize";
    v9[3] = 19;
    v8 = 259;
    llvm::operator+(v9, &v7, v11);
    llvm::report_fatal_error(v11, 1);
  }

  v11[0] = a2;
  v11[1] = v4;
  v11[2] = v12;
  v11[3] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[8] = 4;
  v14[9] = v15;
  v14[10] = 0x100000000;
  v15[1] = v16;
  v15[2] = 0x100000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v16[4] = 0;
  v16[6] = 0;
  v6 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v6);
  mlir::OperationState::~OperationState(v11);
}

uint64_t anonymous namespace::PatternLowering::getValueAt(uint64_t a1, void *a2, uint64_t a3)
{
  v116 = *MEMORY[0x277D85DE8];
  v85 = a3;
  v7 = (a1 + 88);
  v6 = *(a1 + 88);
  v8 = *(a1 + 104);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = (v8 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v10 = *(v6 + 16 * v9);
  if (v10 != a3)
  {
    v73 = 1;
    while (v10 != -4096)
    {
      v74 = v9 + v73++;
      v9 = v74 & (v8 - 1);
      v10 = *(v6 + 16 * v9);
      if (v10 == a3)
      {
        goto LABEL_3;
      }
    }

LABEL_5:
    v84 = 0;
    v12 = *(a3 + 8);
    if (v12)
    {
      v11 = ValueAt;
      v84 = ValueAt;
      if (ValueAt)
      {
        v14 = *(ValueAt + 8) & 7;
        v15 = v14 == 7;
        if (v14 == 7)
        {
          v16 = 0;
        }

        else
        {
          v16 = ValueAt;
        }

        if (v15)
        {
          goto LABEL_12;
        }

        v19 = *(v16 + 8) & 7;
        if (v19 == 6)
        {
          v20 = v16 + 24 * *(v16 + 16) + 120;
          if (!v20)
          {
LABEL_12:
            v17 = (ValueAt + 32);
LABEL_21:
            v18 = ValueAt;
LABEL_22:
            v21 = *v17;
            v22 = *a2 + 32;
            *(a1 + 16) = *a2;
            *(a1 + 24) = v22;
            v86 = 0;
            v23 = *(a3 + 16);
            if (v23 > 5)
            {
              if (v23 > 8)
              {
                if (v23 != 9)
                {
                  if (v23 == 10)
                  {
                    if (*(*(*(v18 + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(a3 + 32) == 1)
                    {
                      LODWORD(v93) = 0;
                      v18 = mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(a1, v21, &v84, &v93) - 16;
                    }

                    v27 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id;
                    v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id, *(**v21 + 32));
                    if (v38)
                    {
                      v93 = v21;
                      v94 = v37;
                      v95 = v97;
                      v96 = 0x400000000;
                      v98 = v100;
                      v99 = 0x400000000;
                      v101 = v103;
                      v102 = 0x400000000;
                      v104 = 4;
                      v105 = &v107;
                      v106 = 0x100000000;
                      v108 = &v110;
                      v109 = 0x100000000;
                      v111 = 0;
                      v112 = 0;
                      v113 = &mlir::detail::TypeIDResolver<void,void>::id;
                      v114 = 0;
                      v115 = 0;
                      mlir::pdl_interp::GetUsersOp::build(a1, &v93, v18);
                      goto LABEL_62;
                    }

                    v92 = 1283;
                    v90 = "pdl_interp.get_users";
                    v75 = 20;
                  }

                  else
                  {
                    v69 = *(a1 + 120);
                    v70 = *(a1 + 128);
                    v71 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id, *(**v21 + 32));
                    if (v72)
                    {
                      v93 = v21;
                      v94 = v71;
                      v95 = v97;
                      v96 = 0x400000000;
                      v98 = v100;
                      v99 = 0x400000000;
                      v101 = v103;
                      v102 = 0x400000000;
                      v104 = 4;
                      v105 = &v107;
                      v106 = 0x100000000;
                      v108 = &v110;
                      v109 = 0x100000000;
                      v111 = 0;
                      v112 = 0;
                      v113 = &mlir::detail::TypeIDResolver<void,void>::id;
                      v114 = 0;
                      v115 = 0;
                      mlir::pdl_interp::ForEachOp::build(a1, &v93, v18, *(v69 + 8 * v70 - 8), 1);
                    }

                    v92 = 1283;
                    v90 = "pdl_interp.foreach";
                    v75 = 18;
                  }

LABEL_83:
                  v91 = v75;
                  v88 = 259;
                  llvm::operator+(v89, &v87, &v93);
                  llvm::report_fatal_error(&v93, 1);
                }

                v55 = *(a3 + 24);
                if (*(*v55 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
                {
                  v56 = *(a3 + 24);
                }

                else
                {
                  v56 = 0;
                }

                v93 = v56;
                if (v56)
                {
                  v30 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(a1, v21, &v93);
                }

                else
                {
                  v89[0] = v55;
                  v30 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(a1, v21, v89);
                }
              }

              else
              {
                if (v23 == 6)
                {
                  v41 = *(**a1 + 384);
                  v93 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
                  v42 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v41 + 232), &v93);
                  v43 = *v42;
                  if (*(a3 + 40) == 1)
                  {
                    v93 = *v42;
                    v43 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v43 + 32), &v93);
                  }

                  v44 = *(a3 + 32);
                  Results = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultsOp>(*(**v21 + 32));
                  v93 = v21;
                  v94 = Results;
                  v95 = v97;
                  v96 = 0x400000000;
                  v98 = v100;
                  v99 = 0x400000000;
                  v101 = v103;
                  v102 = 0x400000000;
                  v104 = 4;
                  v105 = &v107;
                  v106 = 0x100000000;
                  v108 = &v110;
                  v109 = 0x100000000;
                  v111 = 0;
                  v112 = 0;
                  v113 = &mlir::detail::TypeIDResolver<void,void>::id;
                  v114 = 0;
                  v115 = 0;
                  mlir::pdl_interp::GetResultsOp::build(a1, &v93, v43, v18, v44 & 0xFFFFFFFFFFLL);
                  v46 = mlir::Operation::create(&v93);
                  mlir::OpBuilder::insert(a1, v46);
                  v47 = *(*(v46 + 6) + 16);
                  v27 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id;
                  goto LABEL_65;
                }

                if (v23 != 7)
                {
                  Attribute = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateAttributeOp>(*(**v21 + 32));
                  v93 = v21;
                  v94 = Attribute;
                  v95 = v97;
                  v96 = 0x400000000;
                  v98 = v100;
                  v99 = 0x400000000;
                  v101 = v103;
                  v102 = 0x400000000;
                  v104 = 4;
                  v105 = &v107;
                  v106 = 0x100000000;
                  v108 = &v110;
                  v109 = 0x100000000;
                  v111 = 0;
                  v112 = 0;
                  v113 = &mlir::detail::TypeIDResolver<void,void>::id;
                  v114 = 0;
                  v115 = 0;
                  mlir::pdl_interp::CreateAttributeOp::build(a1, &v93, *(a3 + 24));
                  v46 = mlir::Operation::create(&v93);
                  mlir::OpBuilder::insert(a1, v46);
                  v47 = *(*(v46 + 6) + 16);
                  v27 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id;
                  goto LABEL_65;
                }

                if (*(*(*(v18 + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
                {
                  v30 = mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(a1, v21, &v84);
                }

                else
                {
                  v30 = mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(a1, v21, &v84);
                }
              }

              goto LABEL_73;
            }

            if (v23 <= 2)
            {
              if (v23)
              {
                if (v23 == 1)
                {
                  v24 = *(**a1 + 384);
                  v93 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
                  v25 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v24 + 232), &v93);
                  v26 = *(a3 + 32);
                  v27 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id;
                  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id, *(**v21 + 32));
                  if (v29)
                  {
                    v93 = v21;
                    v94 = v28;
                    v95 = v97;
                    v96 = 0x400000000;
                    v98 = v100;
                    v99 = 0x400000000;
                    v101 = v103;
                    v102 = 0x400000000;
                    v104 = 4;
                    v105 = &v107;
                    v106 = 0x100000000;
                    v108 = &v110;
                    v109 = 0x100000000;
                    v111 = 0;
                    v112 = 0;
                    v113 = &mlir::detail::TypeIDResolver<void,void>::id;
                    v114 = 0;
                    v115 = 0;
                    mlir::pdl_interp::GetOperandOp::build(a1, &v93, v25, v18, v26);
LABEL_62:
                    v46 = mlir::Operation::create(&v93);
                    mlir::OpBuilder::insert(a1, v46);
                    v47 = *(*(v46 + 6) + 16);
LABEL_65:
                    mlir::OperationState::~OperationState(&v93);
                    if (v47 == v27)
                    {
                      v68 = v46;
                    }

                    else
                    {
                      v68 = 0;
                    }

                    v11 = (v68 - 16);
                    goto LABEL_94;
                  }

                  v92 = 1283;
                  v90 = "pdl_interp.get_operand";
                  v75 = 22;
                }

                else
                {
                  v57 = *(**a1 + 384);
                  v93 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
                  v58 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v57 + 232), &v93);
                  v59 = *v58;
                  if (*(a3 + 40) == 1)
                  {
                    v93 = *v58;
                    v59 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v59 + 32), &v93);
                  }

                  v60 = *(a3 + 32);
                  v27 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id;
                  v61 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id, *(**v21 + 32));
                  if (v62)
                  {
                    v93 = v21;
                    v94 = v61;
                    v95 = v97;
                    v96 = 0x400000000;
                    v98 = v100;
                    v99 = 0x400000000;
                    v101 = v103;
                    v102 = 0x400000000;
                    v104 = 4;
                    v105 = &v107;
                    v106 = 0x100000000;
                    v108 = &v110;
                    v109 = 0x100000000;
                    v111 = 0;
                    v112 = 0;
                    v113 = &mlir::detail::TypeIDResolver<void,void>::id;
                    v114 = 0;
                    v115 = 0;
                    mlir::pdl_interp::GetOperandsOp::build(a1, &v93, v59, v18, v60 & 0xFFFFFFFFFFLL);
                    goto LABEL_62;
                  }

                  v92 = 1283;
                  v90 = "pdl_interp.get_operands";
                  v75 = 23;
                }

                goto LABEL_83;
              }

              v39 = *(a3 + 8);
              if (!v39 || (*(v39 + 16) - 1) > 1)
              {
LABEL_94:
                v86 = v11;
                llvm::ScopedHashTable<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::insertIntoScope(v7, *(a1 + 112), &v85, &v86);
                return v11;
              }

              v40 = *(**a1 + 384);
              v93 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
              v93 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v40 + 232), &v93);
              v30 = mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(a1, v21, &v93, &v84);
LABEL_73:
              v11 = v30 - 16;
              goto LABEL_94;
            }

            if (v23 == 3)
            {
              v48 = *(**a1 + 384);
              v93 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
              v49 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v48 + 232), &v93);
              v50 = *(a3 + 32);
              v51 = *(v50 + 16);
              v52 = *(v50 + 24);
              v27 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id;
              v53 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id, *(**v21 + 32));
              if (v54)
              {
                v93 = v21;
                v94 = v53;
                v95 = v97;
                v96 = 0x400000000;
                v98 = v100;
                v99 = 0x400000000;
                v101 = v103;
                v102 = 0x400000000;
                v104 = 4;
                v105 = &v107;
                v106 = 0x100000000;
                v108 = &v110;
                v109 = 0x100000000;
                v111 = 0;
                v112 = 0;
                v113 = &mlir::detail::TypeIDResolver<void,void>::id;
                v114 = 0;
                v115 = 0;
                mlir::pdl_interp::GetAttributeOp::build(a1, &v93, v49, v18, v51, v52);
                goto LABEL_62;
              }

              v92 = 1283;
              v90 = "pdl_interp.get_attribute";
              v75 = 24;
              goto LABEL_83;
            }

            if (v23 != 4)
            {
              v64 = *(**a1 + 384);
              v93 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
              v65 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v64 + 232), &v93);
              v66 = *(a3 + 32);
              v67 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultOp>(*(**v21 + 32));
              v93 = v21;
              v94 = v67;
              v95 = v97;
              v96 = 0x400000000;
              v98 = v100;
              v99 = 0x400000000;
              v101 = v103;
              v102 = 0x400000000;
              v104 = 4;
              v105 = &v107;
              v106 = 0x100000000;
              v108 = &v110;
              v109 = 0x100000000;
              v111 = 0;
              v112 = 0;
              v113 = &mlir::detail::TypeIDResolver<void,void>::id;
              v114 = 0;
              v115 = 0;
              mlir::pdl_interp::GetResultOp::build(a1, &v93, v65, v18, v66);
              v46 = mlir::Operation::create(&v93);
              mlir::OpBuilder::insert(a1, v46);
              v47 = *(*(v46 + 6) + 16);
              v27 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id;
              goto LABEL_65;
            }

            v31 = *(a1 + 272);
            v32 = *(a1 + 288);
            if (v32)
            {
              v33 = *(a3 + 24);
              v34 = ((v33 >> 4) ^ (v33 >> 9)) & (v32 - 1);
              v35 = *(v31 + 16 * v34);
              if (v35 == v33)
              {
LABEL_37:
                v36 = v31 + 16 * v34;
LABEL_89:
                v78 = v31 + 16 * v32;
                if (v36)
                {
                  v78 = v36;
                }

                v79 = *(v78 + 8);
                v80 = *(a3 + 32);
                v81 = v79 - 24 * (v80 - 5) - 96;
                v82 = v79 - 16 * v80 - 16;
                if (v80 <= 5)
                {
                  v11 = v82;
                }

                else
                {
                  v11 = v81;
                }

                goto LABEL_94;
              }

              v76 = 1;
              while (v35 != -4096)
              {
                v77 = v34 + v76++;
                v34 = v77 & (v32 - 1);
                v35 = *(v31 + 16 * v34);
                if (v35 == v33)
                {
                  goto LABEL_37;
                }
              }
            }

            v36 = 0;
            goto LABEL_89;
          }
        }

        else
        {
          v20 = v16 + 16 * v19 + 16;
        }

        v17 = (v20 + 24);
        goto LABEL_21;
      }

      v18 = 0;
    }

    else
    {
      v18 = 0;
    }

    v11 = 0;
    v17 = (**a1 + 616);
    goto LABEL_22;
  }

LABEL_3:
  if (v9 == v8)
  {
    goto LABEL_5;
  }

  v11 = *(*(v6 + 16 * v9 + 8) + 24);
  if (!v11)
  {
    goto LABEL_5;
  }

  return v11;
}

void llvm::detail::TypeSwitchBase<llvm::TypeSwitch<mlir::pdl_to_pdl_interp::MatcherNode *,void>,mlir::pdl_to_pdl_interp::MatcherNode *>::Case<anonymous namespace::PatternLowering::generateMatcher(mlir::pdl_to_pdl_interp::MatcherNode&,mlir::Region &,mlir::Block *)::$_1>(_BYTE *a1, uint64_t *a2)
{
  v28[13] = *MEMORY[0x277D85DE8];
  if ((a1[8] & 1) == 0)
  {
    v3 = *a1;
    v4 = *(*a1 + 40);
    v5 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID();
    if (v3 && v4 == v5)
    {
      v7 = *a2;
      v8 = *(v3 + 48);
      v9 = *(*a2 + 40);
      v11 = *(v9 + 40);
      v10 = *(v9 + 44);
      v19[10] = &v20;
      v19[11] = 0x800000000;
      v12 = *(((v9 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v11 + 8);
      if (v12)
      {
        v13 = v12 - 8;
      }

      else
      {
        v13 = 0;
      }

      *(v7 + 16) = v13;
      *(v7 + 24) = v13 + 32;
      v14 = *(v8 + 24);
      v15 = *v7;
      *v21 = xmmword_25D0A0640;
      *v19 = xmmword_25D0A0640;
      v16 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v15, v21, v19);
      v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::FuncOp>(*(**v14 + 32));
      v21[0] = v14;
      v21[1] = v17;
      v21[2] = &v22;
      v21[3] = 0x400000000;
      v23 = v25;
      v24 = 0x400000000;
      v25[4] = v26;
      v25[5] = 0x400000000;
      v26[8] = 4;
      v26[9] = v27;
      v26[10] = 0x100000000;
      v27[1] = v28;
      v27[2] = 0x100000000;
      v28[2] = 0;
      v28[1] = 0;
      v28[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v28[4] = 0;
      v28[6] = 0;
      mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(v7, v21, "pdl_generated_rewriter", 0x16, v16, 0, 0, v18, *(v16 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(v16 + 8));
    }
  }
}

BOOL llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::remove(uint64_t a1, void *a2)
{
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a1, a2);
  v5 = v4;
  if (v4)
  {
    *v4 = -8192;
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = &v6[v7];
    if (v7)
    {
      v9 = 8 * v7;
      while (*v6 != *a2)
      {
        ++v6;
        v9 -= 8;
        if (!v9)
        {
          v6 = v8;
          break;
        }
      }
    }

    if (v8 != v6 + 1)
    {
      memmove(v6, v6 + 1, v8 - (v6 + 1));
      LODWORD(v7) = *(a1 + 32);
    }

    *(a1 + 32) = v7 - 1;
  }

  return v5 != 0;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[124];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ExitNode>();
    *algn_27FC193F8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ExitNode>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ExitNode]";
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

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "pdl_interp.get_defining_op";
    v15[3] = 26;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  v17[0] = a2;
  v17[1] = v8;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::pdl_interp::GetDefiningOpOp::build(a1, v17, *a3, *a4);
  v10 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v11;
}

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "pdl_interp.extract";
    v15[3] = 18;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  v17[0] = a2;
  v17[1] = v8;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::pdl_interp::ExtractOp::build(a1, v17, *((*(*a3 + 8) & 0xFFFFFFFFFFFFFFF8) + 8), *a3, *a4);
  v10 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v11;
}

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id, *(**a2 + 32));
  if ((v7 & 1) == 0)
  {
    v14 = 1283;
    v13[2] = "pdl_interp.get_attribute_type";
    v13[3] = 29;
    v12 = 259;
    llvm::operator+(v13, &v11, v15);
    llvm::report_fatal_error(v15, 1);
  }

  v15[0] = a2;
  v15[1] = v6;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::pdl_interp::GetAttributeTypeOp::build(a1, v15, *a3);
  v8 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v8);
  if (*(*(v8 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v9;
}

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v14[8] = *MEMORY[0x277D85DE8];
  ValueType = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetValueTypeOp>(*(**a2 + 32));
  v9[0] = a2;
  v9[1] = ValueType;
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
  mlir::pdl_interp::GetValueTypeOp::build(a1, v9, *a3);
  v7 = mlir::Operation::create(v9);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v7 = 0;
  }

  mlir::OperationState::~OperationState(v9);
  return v7;
}

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id, *(**a2 + 32));
  if ((v7 & 1) == 0)
  {
    v14 = 1283;
    v13[2] = "pdl_interp.create_type";
    v13[3] = 22;
    v12 = 259;
    llvm::operator+(v13, &v11, v15);
    llvm::report_fatal_error(v15, 1);
  }

  v15[0] = a2;
  v15[1] = v6;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::pdl_interp::CreateTypeOp::build(a1, v15, *a3);
  v8 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v8);
  if (*(*(v8 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v9;
}

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v14[8] = *MEMORY[0x277D85DE8];
  Types = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateTypesOp>(*(**a2 + 32));
  v9[0] = a2;
  v9[1] = Types;
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
  mlir::pdl_interp::CreateTypesOp::build(a1, v9, *a3);
  v7 = mlir::Operation::create(v9);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    v7 = 0;
  }

  mlir::OperationState::~OperationState(v9);
  return v7;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetValueTypeOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.get_value_type";
    v5[3] = 25;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.get_result";
    v5[3] = 21;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultsOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.get_results";
    v5[3] = 22;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateAttributeOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.create_attribute";
    v5[3] = 27;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateTypesOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.create_types";
    v5[3] = 23;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[129];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::BoolNode>();
    unk_27FC19420 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::BoolNode>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::BoolNode]";
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

void mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id, *(**a2 + 32));
  if ((v13 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "pdl_interp.check_types";
    v17[3] = 22;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  v19[0] = a2;
  v19[1] = v12;
  v19[2] = v20;
  v19[3] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  mlir::pdl_interp::CheckTypesOp::build(a1, v19, *a3, *a4, *a5, *a6);
  v14 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v14);
  mlir::OperationState::~OperationState(v19);
}

void mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id, *(**a2 + 32));
  if ((v13 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "pdl_interp.check_type";
    v17[3] = 21;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  v19[0] = a2;
  v19[1] = v12;
  v19[2] = v20;
  v19[3] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  mlir::pdl_interp::CheckTypeOp::build(a1, v19, *a3, *a4, *a5, *a6);
  v14 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v14);
  mlir::OperationState::~OperationState(v19);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CheckOperandCountOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.check_operand_count";
    v5[3] = 30;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CheckResultCountOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.check_result_count";
    v5[3] = 29;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::LookupBucketFor<mlir::pdl_to_pdl_interp::ConstraintQuestion *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::LookupBucketFor<mlir::pdl_to_pdl_interp::ConstraintQuestion *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[134];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::SwitchNode>();
    *algn_27FC19448 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::SwitchNode>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::SwitchNode]";
  v6 = 97;
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

void createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, mlir::OpBuilder *a3, uint64_t a4)
{
  v36[8] = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<int>::reserve(&v26, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v23, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v23, v10);
      LODWORD(v31[0]) = *(*(v10 - 1) + 8);
      std::vector<int>::push_back[abi:nn200100](&v26.__begin_, v31);
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "pdl_interp.switch_operand_count";
    v29[3] = 31;
    v28 = 259;
    llvm::operator+(v29, &v27, v31);
    llvm::report_fatal_error(v31, 1);
  }

  v31[0] = v15;
  v31[1] = v16;
  v31[2] = v32;
  v31[3] = 0x400000000;
  v32[4] = v33;
  v32[5] = 0x400000000;
  v33[4] = v34;
  v33[5] = 0x400000000;
  v34[8] = 4;
  v34[9] = v35;
  v34[10] = 0x100000000;
  v35[1] = v36;
  v35[2] = 0x100000000;
  v36[1] = 0;
  v36[2] = 0;
  v18 = v23;
  v36[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v36[4] = 0;
  v19 = (v24 - v23) >> 3;
  if (v24 == v23)
  {
    v20 = 0;
  }

  else
  {
    v20 = v23 | 4;
  }

  v36[6] = 0;
  I32VectorAttr = mlir::Builder::getI32VectorAttr(a3, v26.__begin_, v26.__end_ - v26.__begin_);
  mlir::pdl_interp::SwitchOperandCountOp::build(I32VectorAttr, v31, a1, I32VectorAttr, a2, v20, v19);
  v22 = mlir::Operation::create(v31);
  mlir::OpBuilder::insert(a3, v22);
  mlir::OperationState::~OperationState(v31);
  if (v18)
  {
    operator delete(v18);
  }

  if (v26.__begin_)
  {
    v26.__end_ = v26.__begin_;
    operator delete(v26.__begin_);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, mlir::OpBuilder *a3, uint64_t a4)
{
  v36[8] = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<int>::reserve(&v26, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v23, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v23, v10);
      LODWORD(v31[0]) = *(*(v10 - 1) + 8);
      std::vector<int>::push_back[abi:nn200100](&v26.__begin_, v31);
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchResultCountOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "pdl_interp.switch_result_count";
    v29[3] = 30;
    v28 = 259;
    llvm::operator+(v29, &v27, v31);
    llvm::report_fatal_error(v31, 1);
  }

  v31[0] = v15;
  v31[1] = v16;
  v31[2] = v32;
  v31[3] = 0x400000000;
  v32[4] = v33;
  v32[5] = 0x400000000;
  v33[4] = v34;
  v33[5] = 0x400000000;
  v34[8] = 4;
  v34[9] = v35;
  v34[10] = 0x100000000;
  v35[1] = v36;
  v35[2] = 0x100000000;
  v36[1] = 0;
  v36[2] = 0;
  v18 = v23;
  v36[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v36[4] = 0;
  v19 = (v24 - v23) >> 3;
  if (v24 == v23)
  {
    v20 = 0;
  }

  else
  {
    v20 = v23 | 4;
  }

  v36[6] = 0;
  I32VectorAttr = mlir::Builder::getI32VectorAttr(a3, v26.__begin_, v26.__end_ - v26.__begin_);
  mlir::pdl_interp::SwitchResultCountOp::build(I32VectorAttr, v31, a1, I32VectorAttr, a2, v20, v19);
  v22 = mlir::Operation::create(v31);
  mlir::OpBuilder::insert(a3, v22);
  mlir::OperationState::~OperationState(v31);
  if (v18)
  {
    operator delete(v18);
  }

  if (v26.__begin_)
  {
    v26.__end_ = v26.__begin_;
    operator delete(v26.__begin_);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(uint64_t a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v6 = *(a4 + 32);
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::OperationName>>(v6);
  }

  v19 = a1;
  std::vector<mlir::Block *>::reserve(&v20, 0);
  if (*(a4 + 32))
  {
    std::vector<mlir::Block *>::push_back[abi:nn200100](&v20, (*(a4 + 24) + 8));
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::OperationName>>(1uLL);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16) + 120;
    if (!v9)
    {
LABEL_11:
      v10 = a1 + 32;
      goto LABEL_14;
    }
  }

  else
  {
    v9 = v7 + 16 * v8 + 16;
  }

  v10 = v9 + 24;
LABEL_14:
  v11 = *v10;
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id, *(***v10 + 32));
  if ((v13 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "pdl_interp.switch_operation_name";
    v25[3] = 32;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v28;
  v27[3] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v14 = v20;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  if (v21 == v20)
  {
    v15 = 0;
  }

  else
  {
    v15 = v20 | 4;
  }

  v32[6] = 0;
  mlir::pdl_interp::SwitchOperationNameOp::build(a3, v27, v19, 0, 0, a2, v15, (v21 - v20) >> 3);
  v16 = mlir::Operation::create(v27);
  mlir::OpBuilder::insert(a3, v16);
  mlir::OperationState::~OperationState(v27);
  if (v14)
  {
    operator delete(v14);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<mlir::Attribute>::reserve(&v27, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v24, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v24, v10);
      std::vector<mlir::Attribute>::push_back[abi:nn200100](&v27, (*(v10 - 1) + 8));
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v33 = 1283;
    v32[2] = "pdl_interp.switch_types";
    v32[3] = 23;
    v31 = 259;
    llvm::operator+(v32, &v30, v34);
    llvm::report_fatal_error(v34, 1);
  }

  v34[0] = v15;
  v34[1] = v16;
  v34[2] = v35;
  v34[3] = 0x400000000;
  v35[4] = v36;
  v35[5] = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[8] = 4;
  v37[9] = v38;
  v37[10] = 0x100000000;
  v38[1] = v39;
  v38[2] = 0x100000000;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v39[4] = 0;
  v18 = v27;
  v19 = v24;
  v39[6] = 0;
  v20 = (v25 - v24) >> 3;
  if (v25 == v24)
  {
    v21 = 0;
  }

  else
  {
    v21 = v24 | 4;
  }

  v22 = mlir::ArrayAttr::get(*a3, v27, ((v28 - v27) >> 3));
  mlir::pdl_interp::SwitchTypesOp::build(v22, v34, a1, v22, a2, v21, v20);
  v23 = mlir::Operation::create(v34);
  mlir::OpBuilder::insert(a3, v23);
  mlir::OperationState::~OperationState(v34);
  if (v19)
  {
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<mlir::Attribute>::reserve(&v27, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v24, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v24, v10);
      std::vector<mlir::Attribute>::push_back[abi:nn200100](&v27, (*(v10 - 1) + 8));
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v33 = 1283;
    v32[2] = "pdl_interp.switch_type";
    v32[3] = 22;
    v31 = 259;
    llvm::operator+(v32, &v30, v34);
    llvm::report_fatal_error(v34, 1);
  }

  v34[0] = v15;
  v34[1] = v16;
  v34[2] = v35;
  v34[3] = 0x400000000;
  v35[4] = v36;
  v35[5] = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[8] = 4;
  v37[9] = v38;
  v37[10] = 0x100000000;
  v38[1] = v39;
  v38[2] = 0x100000000;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v39[4] = 0;
  v18 = v27;
  v19 = v24;
  v39[6] = 0;
  v20 = (v25 - v24) >> 3;
  if (v25 == v24)
  {
    v21 = 0;
  }

  else
  {
    v21 = v24 | 4;
  }

  v22 = mlir::ArrayAttr::get(*a3, v27, ((v28 - v27) >> 3));
  mlir::pdl_interp::SwitchTypeOp::build(v22, v34, a1, v22, a2, v21, v20);
  v23 = mlir::Operation::create(v34);
  mlir::OpBuilder::insert(a3, v23);
  mlir::OperationState::~OperationState(v34);
  if (v19)
  {
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<mlir::Attribute>::reserve(&v27, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v24, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v24, v10);
      std::vector<mlir::Attribute>::push_back[abi:nn200100](&v27, (*(v10 - 1) + 8));
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v33 = 1283;
    v32[2] = "pdl_interp.switch_attribute";
    v32[3] = 27;
    v31 = 259;
    llvm::operator+(v32, &v30, v34);
    llvm::report_fatal_error(v34, 1);
  }

  v34[0] = v15;
  v34[1] = v16;
  v34[2] = v35;
  v34[3] = 0x400000000;
  v35[4] = v36;
  v35[5] = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[8] = 4;
  v37[9] = v38;
  v37[10] = 0x100000000;
  v38[1] = v39;
  v38[2] = 0x100000000;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v39[4] = 0;
  v18 = v27;
  v19 = v24;
  v39[6] = 0;
  v20 = (v25 - v24) >> 3;
  if (v25 == v24)
  {
    v21 = 0;
  }

  else
  {
    v21 = v24 | 4;
  }

  v22 = mlir::ArrayAttr::get(*a3, v27, ((v28 - v27) >> 3));
  mlir::pdl_interp::SwitchAttributeOp::build(v22, v34, a1, v22, a2, v21, v20);
  v23 = mlir::Operation::create(v34);
  mlir::OpBuilder::insert(a3, v23);
  mlir::OperationState::~OperationState(v34);
  if (v19)
  {
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
  }
}

void llvm::SmallVectorImpl<unsigned int>::append<llvm::detail::SafeIntIterator<unsigned int,false>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = a3 - a2 + v7;
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 4);
    v7 = *(a1 + 8);
  }

  v9 = a3 - v4;
  if (a3 != v4)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v9 - 1);
    v12 = (*a1 + 4 * v7 + 8);
    do
    {
      v13 = vdupq_n_s64(v10);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A0500)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 2) = v4;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A04F0)))).i32[1])
      {
        *v12 = v4 + 2;
        v12[1] = v4 + 3;
      }

      v10 += 4;
      LODWORD(v4) = v4 + 4;
      v12 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + v6;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v95 = *(a2 - 1);
        v96 = *v10;
        if (*(*(*(**a3 + 72) + 16 * v95) + 8) <= *(*(*(**a3 + 72) + 16 * v96) + 8))
        {
          return result;
        }

        *v10 = v95;
LABEL_176:
        *(a2 - 1) = v96;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v103 = *(**a3 + 72);
    }

    if (v11 == 5)
    {
      v87 = *(a2 - 1);
      v88 = v10[3];
      v89 = *(**a3 + 72);
      if (*(*(v89 + 16 * v87) + 8) > *(*(v89 + 16 * v88) + 8))
      {
        v10[3] = v87;
        *(a2 - 1) = v88;
        v91 = v10[2];
        v90 = v10[3];
        v92 = *(v89 + 16 * v90);
        if (*(v92 + 8) > *(*(v89 + 16 * v91) + 8))
        {
          v10[2] = v90;
          v10[3] = v91;
          v93 = v10[1];
          if (*(v92 + 8) > *(*(v89 + 16 * v93) + 8))
          {
            v10[1] = v90;
            v10[2] = v93;
            v94 = *v10;
            if (*(v92 + 8) > *(*(v89 + 16 * v94) + 8))
            {
              *v10 = v90;
              v10[1] = v94;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v104 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v105 = *(**a3 + 72);
            v106 = 4;
            v107 = v10;
            do
            {
              v109 = *v107;
              v108 = v107[1];
              v107 = v104;
              v110 = *(v105 + 16 * v108);
              if (*(v110 + 8) > *(*(v105 + 16 * v109) + 8))
              {
                v111 = v106;
                while (1)
                {
                  *(v10 + v111) = v109;
                  v112 = v111 - 4;
                  if (v111 == 4)
                  {
                    break;
                  }

                  v109 = *(v10 + v111 - 8);
                  v111 -= 4;
                  if (*(v110 + 8) <= *(*(v105 + 16 * v109) + 8))
                  {
                    v113 = (v10 + v112);
                    goto LABEL_126;
                  }
                }

                v113 = v10;
LABEL_126:
                *v113 = v108;
              }

              v104 = v107 + 1;
              v106 += 4;
            }

            while (v107 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v150 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v151 = *(**a3 + 72);
          do
          {
            v153 = *v9;
            v152 = v9[1];
            v9 = v150;
            v154 = *(v151 + 16 * v152);
            if (*(v154 + 8) > *(*(v151 + 16 * v153) + 8))
            {
              v155 = v9;
              do
              {
                *v155 = v153;
                v153 = *(v155 - 2);
                --v155;
              }

              while (*(v154 + 8) > *(*(v151 + 16 * v153) + 8));
              *v155 = v152;
            }

            v150 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v114 = (v11 - 2) >> 1;
        v115 = *a3;
        v116 = v114;
        do
        {
          v117 = v116;
          if (v114 >= v116)
          {
            v118 = (2 * v116) | 1;
            v119 = &v10[v118];
            v120 = *v119;
            if (2 * v117 + 2 >= v11)
            {
              v121 = *(*v115 + 72);
            }

            else
            {
              v121 = *(*v115 + 72);
              if (*(*(v121 + 16 * v120) + 8) > *(*(v121 + 16 * v119[1]) + 8))
              {
                v120 = v119[1];
                ++v119;
                v118 = 2 * v117 + 2;
              }
            }

            v122 = &v10[v117];
            v123 = *v122;
            v124 = *(v121 + 16 * v123);
            if (*(*(v121 + 16 * v120) + 8) <= *(v124 + 8))
            {
              do
              {
                v125 = v119;
                *v122 = v120;
                if (v114 < v118)
                {
                  break;
                }

                v126 = (2 * v118) | 1;
                v119 = &v10[v126];
                v127 = 2 * v118 + 2;
                v120 = *v119;
                if (v127 < v11 && *(*(v121 + 16 * v120) + 8) > *(*(v121 + 16 * v119[1]) + 8))
                {
                  v120 = v119[1];
                  ++v119;
                  v126 = v127;
                }

                v122 = v125;
                v118 = v126;
              }

              while (*(*(v121 + 16 * v120) + 8) <= *(v124 + 8));
              *v125 = v123;
            }
          }

          v116 = v117 - 1;
        }

        while (v117);
        do
        {
          v128 = 0;
          v129 = *v10;
          v130 = *a3;
          v131 = v10;
          do
          {
            v132 = &v131[v128];
            v133 = v132 + 1;
            v134 = v132[1];
            result = 2 * v128;
            v135 = (2 * v128) | 1;
            v128 = 2 * v128 + 2;
            if (v128 >= v11)
            {
              v128 = v135;
            }

            else
            {
              v137 = v132[2];
              v136 = v132 + 2;
              result = v137;
              if (*(*(*(*v130 + 72) + 16 * v134) + 8) <= *(*(*(*v130 + 72) + 16 * v137) + 8))
              {
                v128 = v135;
              }

              else
              {
                LODWORD(v134) = result;
                v133 = v136;
              }
            }

            *v131 = v134;
            v131 = v133;
          }

          while (v128 <= ((v11 - 2) >> 1));
          if (v133 == --a2)
          {
            *v133 = v129;
          }

          else
          {
            *v133 = *a2;
            *a2 = v129;
            v138 = (v133 - v10 + 4) >> 2;
            v139 = v138 < 2;
            v140 = v138 - 2;
            if (!v139)
            {
              v141 = v140 >> 1;
              v142 = &v10[v141];
              v143 = *v142;
              v144 = *v133;
              v145 = *(*v130 + 72);
              v146 = *(v145 + 16 * v144);
              if (*(*(v145 + 16 * v143) + 8) > *(v146 + 8))
              {
                do
                {
                  v147 = v142;
                  *v133 = v143;
                  if (!v141)
                  {
                    break;
                  }

                  v141 = (v141 - 1) >> 1;
                  v142 = &v10[v141];
                  v143 = *v142;
                  result = *(v146 + 8);
                  v133 = v147;
                }

                while (*(*(v145 + 16 * v143) + 8) > result);
                *v147 = v144;
              }
            }
          }

          v139 = v11-- <= 2;
        }

        while (!v139);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(**a3 + 72);
    v15 = *(a2 - 1);
    v16 = *(*(v14 + 16 * v15) + 8);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(*(v14 + 16 * v17) + 8);
      v20 = *(v14 + 16 * v18);
      if (v19 <= *(v20 + 8))
      {
        if (v16 > v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(*(v14 + 16 * v25) + 8) > *(*(v14 + 16 * v26) + 8))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 > v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v29 = *(a2 - 1);
        if (*(*(v14 + 16 * v29) + 8) > *(v20 + 8))
        {
          *v12 = v29;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v30 = v12 - 1;
      v31 = *(v12 - 1);
      v32 = v10[1];
      v33 = *(*(v14 + 16 * v31) + 8);
      v34 = *(v14 + 16 * v32);
      v35 = *(a2 - 2);
      v36 = *(*(v14 + 16 * v35) + 8);
      if (v33 <= *(v34 + 8))
      {
        if (v36 > v33)
        {
          *v30 = v35;
          *(a2 - 2) = v31;
          v37 = *v30;
          v38 = v10[1];
          if (*(*(v14 + 16 * v37) + 8) > *(*(v14 + 16 * v38) + 8))
          {
            v10[1] = v37;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v36 > v33)
        {
          v10[1] = v35;
          goto LABEL_39;
        }

        v10[1] = v31;
        *v30 = v32;
        v40 = *(a2 - 2);
        if (*(*(v14 + 16 * v40) + 8) > *(v34 + 8))
        {
          *v30 = v40;
LABEL_39:
          *(a2 - 2) = v32;
        }
      }

      v43 = v12[1];
      v41 = v12 + 1;
      v42 = v43;
      v44 = v10[2];
      v45 = *(*(v14 + 16 * v43) + 8);
      v46 = *(v14 + 16 * v44);
      v47 = *(a2 - 3);
      v48 = *(*(v14 + 16 * v47) + 8);
      if (v45 <= *(v46 + 8))
      {
        if (v48 > v45)
        {
          *v41 = v47;
          *(a2 - 3) = v42;
          v49 = *v41;
          v50 = v10[2];
          if (*(*(v14 + 16 * v49) + 8) > *(*(v14 + 16 * v50) + 8))
          {
            v10[2] = v49;
            *v41 = v50;
          }
        }
      }

      else
      {
        if (v48 > v45)
        {
          v10[2] = v47;
          goto LABEL_48;
        }

        v10[2] = v42;
        *v41 = v44;
        v51 = *(a2 - 3);
        if (*(*(v14 + 16 * v51) + 8) > *(v46 + 8))
        {
          *v41 = v51;
LABEL_48:
          *(a2 - 3) = v44;
        }
      }

      v52 = *v13;
      v53 = *v30;
      v54 = *(*(v14 + 16 * v52) + 8);
      v55 = *(v14 + 16 * v53);
      v56 = *v41;
      v57 = *(v14 + 16 * v56);
      result = *(v57 + 8);
      if (v54 <= *(v55 + 8))
      {
        if (result <= v54)
        {
          goto LABEL_56;
        }

        *v13 = v56;
        *v41 = v52;
        v41 = v13;
        LODWORD(v52) = v53;
        if (*(v57 + 8) <= *(v55 + 8))
        {
          LODWORD(v52) = v56;
          goto LABEL_56;
        }
      }

      else if (result <= v54)
      {
        *v30 = v52;
        *v13 = v53;
        v30 = v13;
        LODWORD(v52) = v56;
        if (*(v57 + 8) <= *(v55 + 8))
        {
          LODWORD(v52) = v53;
LABEL_56:
          v58 = *v10;
          *v10 = v52;
          *v13 = v58;
          goto LABEL_57;
        }
      }

      *v30 = v56;
      *v41 = v53;
      goto LABEL_56;
    }

    v21 = *v10;
    v22 = *v13;
    v23 = *(*(v14 + 16 * v21) + 8);
    v24 = *(v14 + 16 * v22);
    if (v23 <= *(v24 + 8))
    {
      if (v16 > v23)
      {
        *v10 = v15;
        *(a2 - 1) = v21;
        v27 = *v10;
        v28 = *v13;
        if (*(*(v14 + 16 * v27) + 8) > *(*(v14 + 16 * v28) + 8))
        {
          *v13 = v27;
          *v10 = v28;
        }
      }

      goto LABEL_57;
    }

    if (v16 > v23)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v22;
      goto LABEL_57;
    }

    *v13 = v21;
    *v10 = v22;
    v39 = *(a2 - 1);
    if (*(*(v14 + 16 * v39) + 8) > *(v24 + 8))
    {
      *v10 = v39;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v59 = *v10;
    if (a5)
    {
      v60 = *(v14 + 16 * v59);
      v61 = *(v60 + 8);
LABEL_60:
      v62 = 0;
      do
      {
        v63 = v10[++v62];
      }

      while (*(*(v14 + 16 * v63) + 8) > v61);
      v64 = &v10[v62];
      v65 = a2;
      if (v62 == 1)
      {
        v65 = a2;
        do
        {
          if (v64 >= v65)
          {
            break;
          }

          v67 = *--v65;
        }

        while (*(*(v14 + 16 * v67) + 8) <= v61);
      }

      else
      {
        do
        {
          v66 = *--v65;
        }

        while (*(*(v14 + 16 * v66) + 8) <= v61);
      }

      if (v64 >= v65)
      {
        v75 = v64 - 1;
      }

      else
      {
        v68 = *v65;
        v69 = v63;
        v70 = v64;
        v71 = v65;
        do
        {
          *v70 = v68;
          *v71 = v69;
          v72 = *(v60 + 8);
          do
          {
            v73 = v70[1];
            ++v70;
            v69 = v73;
          }

          while (*(*(v14 + 16 * v73) + 8) > v72);
          do
          {
            v74 = *--v71;
            v68 = v74;
          }

          while (*(*(v14 + 16 * v74) + 8) <= v72);
        }

        while (v70 < v71);
        v75 = v70 - 1;
      }

      if (v75 != v10)
      {
        *v10 = *v75;
      }

      *v75 = v59;
      if (v64 < v65)
      {
        goto LABEL_81;
      }

      v10 = v75 + 1;
      if (result)
      {
        a2 = v75;
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_81:
        a5 = 0;
        v10 = v75 + 1;
      }
    }

    else
    {
      v60 = *(v14 + 16 * v59);
      v61 = *(v60 + 8);
      if (*(*(v14 + 16 * *(v10 - 1)) + 8) > v61)
      {
        goto LABEL_60;
      }

      if (v61 <= *(*(v14 + 16 * *(a2 - 1)) + 8))
      {
        v78 = (v10 + 1);
        do
        {
          v10 = v78;
          if (v78 >= a2)
          {
            break;
          }

          v78 += 4;
        }

        while (v61 <= *(*(v14 + 16 * *v10) + 8));
      }

      else
      {
        do
        {
          v77 = v10[1];
          ++v10;
        }

        while (v61 <= *(*(v14 + 16 * v77) + 8));
      }

      v79 = a2;
      if (v10 < a2)
      {
        v79 = a2;
        do
        {
          v80 = *--v79;
        }

        while (v61 > *(*(v14 + 16 * v80) + 8));
      }

      if (v10 < v79)
      {
        v81 = *v10;
        v82 = *v79;
        do
        {
          *v10 = v82;
          *v79 = v81;
          v83 = *(v60 + 8);
          do
          {
            v84 = v10[1];
            ++v10;
            v81 = v84;
          }

          while (v83 <= *(*(v14 + 16 * v84) + 8));
          do
          {
            v85 = *--v79;
            v82 = v85;
          }

          while (v83 > *(*(v14 + 16 * v85) + 8));
        }

        while (v10 < v79);
      }

      v86 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v86;
      }

      a5 = 0;
      *v86 = v59;
    }
  }

  v96 = *v10;
  v97 = v10[1];
  v98 = *(**a3 + 72);
  v99 = *(*(v98 + 16 * v97) + 8);
  v100 = *(v98 + 16 * v96);
  v101 = *(a2 - 1);
  v102 = *(*(v98 + 16 * v101) + 8);
  if (v99 > *(v100 + 8))
  {
    if (v102 <= v99)
    {
      *v10 = v97;
      v10[1] = v96;
      v156 = *(a2 - 1);
      if (*(*(v98 + 16 * v156) + 8) <= *(v100 + 8))
      {
        return result;
      }

      v10[1] = v156;
    }

    else
    {
      *v10 = v101;
    }

    goto LABEL_176;
  }

  if (v102 > v99)
  {
    v10[1] = v101;
    *(a2 - 1) = v97;
    v149 = *v10;
    v148 = v10[1];
    if (*(*(v98 + 16 * v148) + 8) > *(*(v98 + 16 * v149) + 8))
    {
      *v10 = v148;
      v10[1] = v149;
    }
  }

  return result;
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*(a5 + 16 * v5) + 8);
  v8 = *(a5 + 16 * v6);
  v9 = *a3;
  v10 = *(*(a5 + 16 * *a3) + 8);
  if (v7 <= *(v8 + 8))
  {
    if (v10 <= v7)
    {
      v6 = *a3;
      goto LABEL_14;
    }

    *a2 = v9;
    *a3 = v5;
    v11 = *a2;
    v12 = *result;
    if (*(*(a5 + 16 * v11) + 8) <= *(*(a5 + 16 * v12) + 8))
    {
      v6 = v5;
      v9 = v5;
      goto LABEL_14;
    }

    *result = v11;
    *a2 = v12;
    v6 = *a3;
  }

  else
  {
    if (v10 <= v7)
    {
      *result = v5;
      *a2 = v6;
      v9 = *a3;
      if (*(*(a5 + 16 * *a3) + 8) <= *(v8 + 8))
      {
        v6 = *a3;
        goto LABEL_14;
      }

      *a2 = v9;
    }

    else
    {
      *result = v9;
    }

    *a3 = v6;
  }

  v9 = v6;
LABEL_14:
  v13 = *a4;
  if (*(*(a5 + 16 * v13) + 8) > *(*(a5 + 16 * v6) + 8))
  {
    *a3 = v13;
    *a4 = v9;
    v14 = *a3;
    v15 = *a2;
    if (*(*(a5 + 16 * v14) + 8) > *(*(a5 + 16 * v15) + 8))
    {
      *a2 = v14;
      *a3 = v15;
      v16 = *a2;
      v17 = *result;
      if (*(*(a5 + 16 * v16) + 8) > *(*(a5 + 16 * v17) + 8))
      {
        *result = v16;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v18 = *(**a3 + 72);
        v19 = *(*(v18 + 16 * v17) + 8);
        v20 = *(v18 + 16 * v8);
        v21 = *(a2 - 1);
        v22 = *(*(v18 + 16 * v21) + 8);
        if (v19 <= *(v20 + 8))
        {
          if (v22 > v19)
          {
            a1[1] = v21;
            *(a2 - 1) = v17;
            v37 = *a1;
            v36 = a1[1];
            if (*(*(v18 + 16 * v36) + 8) > *(*(v18 + 16 * v37) + 8))
            {
              *a1 = v36;
              a1[1] = v37;
            }
          }

          return 1;
        }

        if (v22 > v19)
        {
          *a1 = v21;
          goto LABEL_41;
        }

        *a1 = v17;
        a1[1] = v8;
        v47 = *(a2 - 1);
        if (*(*(v18 + 16 * v47) + 8) > *(v20 + 8))
        {
          a1[1] = v47;
          goto LABEL_41;
        }

        return 1;
      case 4:
        return 1;
      case 5:
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(**a3 + 72);
        if (*(*(v11 + 16 * v9) + 8) > *(*(v11 + 16 * v10) + 8))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v13 = a1[2];
          v12 = a1[3];
          v14 = *(v11 + 16 * v12);
          if (*(v14 + 8) > *(*(v11 + 16 * v13) + 8))
          {
            a1[2] = v12;
            a1[3] = v13;
            v15 = a1[1];
            if (*(v14 + 8) > *(*(v11 + 16 * v15) + 8))
            {
              a1[1] = v12;
              a1[2] = v15;
              v16 = *a1;
              if (*(v14 + 8) > *(*(v11 + 16 * v16) + 8))
              {
                *a1 = v12;
                a1[1] = v16;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      if (*(*(*(**a3 + 72) + 16 * v7) + 8) > *(*(*(**a3 + 72) + 16 * v8) + 8))
      {
        *a1 = v7;
LABEL_41:
        *(a2 - 1) = v8;
        return 1;
      }

      return 1;
    }
  }

  v23 = a1 + 2;
  v24 = a1[2];
  v25 = a1[1];
  v26 = *a1;
  v27 = *(**a3 + 72);
  v28 = *(*(v27 + 16 * v25) + 8);
  v29 = *(v27 + 16 * v26);
  v30 = *(v27 + 16 * v24);
  v31 = *(v30 + 8);
  if (v28 <= *(v29 + 8))
  {
    if (v31 <= v28)
    {
      goto LABEL_28;
    }

    a1[1] = v24;
    *v23 = v25;
    v34 = *(v30 + 8);
    v35 = *(v29 + 8);
    v32 = a1;
    v33 = a1 + 1;
LABEL_26:
    if (v34 <= v35)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v32 = a1;
  v33 = a1 + 2;
  if (v31 <= v28)
  {
    *a1 = v25;
    a1[1] = v26;
    v34 = *(v30 + 8);
    v35 = *(v29 + 8);
    v32 = a1 + 1;
    v33 = a1 + 2;
    goto LABEL_26;
  }

LABEL_27:
  *v32 = v24;
  *v33 = v26;
LABEL_28:
  v38 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v39 = 0;
  for (i = 12; ; i += 4)
  {
    v41 = *v38;
    v42 = *v23;
    v43 = *(v27 + 16 * v41);
    if (*(v43 + 8) > *(*(v27 + 16 * v42) + 8))
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v42;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v42 = *(a1 + v44 - 8);
        v44 -= 4;
        if (*(v43 + 8) <= *(*(v27 + 16 * v42) + 8))
        {
          v46 = (a1 + v45);
          goto LABEL_36;
        }
      }

      v46 = a1;
LABEL_36:
      *v46 = v41;
      if (++v39 == 8)
      {
        break;
      }
    }

    v23 = v38++;
    if (v38 == a2)
    {
      return 1;
    }
  }

  return v38 + 1 == a2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Qualifier *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::InsertIntoBucketImpl<mlir::pdl_to_pdl_interp::Qualifier *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Qualifier *>(a1, a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::grow(uint64_t **a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 2;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Qualifier *>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(this, __n);
  }
}

void std::vector<mlir::Block *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Block *>>(a2);
  }
}

void std::vector<mlir::Block *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<mlir::Block *>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Block *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::vector<int>::push_back[abi:nn200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Block *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::OperationName>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<mlir::Attribute>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Attribute>>(a2);
  }
}

void std::vector<mlir::Attribute>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<mlir::Attribute>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Attribute>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Attribute>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[139];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::SuccessNode>();
    unk_27FC19470 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::SuccessNode>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::SuccessNode]";
  v6 = 98;
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

double mlir::Region::getOps<mlir::pdl::OperationOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

char *anonymous namespace::PatternLowering::generateRewriter(mlir::pdl::PatternOp,llvm::SmallVectorImpl<mlir::pdl_to_pdl_interp::Position *> &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v33 = a2;
  v3 = *(a1 + 8);
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](*a1, &v33);
  result = *v4;
  if (!*v4)
  {
    v6 = v33;
    if ((~*(v33 + 8) & 7) == 0)
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = *(v6 + 8) & 7;
      if (v7 == 6)
      {
        v8 = v6 + 24 * *(v6 + 16) + 120;
      }

      else
      {
        v8 = v6 + 16 * v7 + 16;
      }

      v9 = *(*(v8 + 48) + 16);
      if (v8)
      {
        v10 = v9 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v15 = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64);
        if (v15)
        {
          v16 = *(v8 + 24);
          Attribute = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateAttributeOp>(*(**v16 + 32));
          v34[0] = v16;
          v34[1] = Attribute;
          v34[2] = v35;
          v34[3] = 0x400000000;
          v35[4] = v36;
          v35[5] = 0x400000000;
          v36[4] = v37;
          v36[5] = 0x400000000;
          v37[8] = 4;
          v37[9] = v38;
          v37[10] = 0x100000000;
          v38[1] = v39;
          v38[2] = 0x100000000;
          v39[1] = 0;
          v39[2] = 0;
          v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v39[4] = 0;
          v39[6] = 0;
          mlir::pdl_interp::CreateAttributeOp::build(v3, v34, v15);
          v18 = mlir::Operation::create(v34);
          mlir::OpBuilder::insert(v3, v18);
          v19 = *(*(v18 + 6) + 16);
          mlir::OperationState::~OperationState(v34);
          if (v19 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }

          result = v20 - 16;
          goto LABEL_49;
        }
      }

      else
      {
        if (v8)
        {
          v11 = v9 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          v34[0] = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64);
          if (v34[0])
          {
            v14 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(v3, *(v8 + 24), v34);
            goto LABEL_30;
          }
        }

        else
        {
          if (v8)
          {
            v12 = v9 == &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id;
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
            v34[0] = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64);
            if (v34[0])
            {
              v13 = *(v8 + 24);
              v32 = *(v8 - 8) & 0xFFFFFFFFFFFFFFF8;
              v14 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(v3, v13, &v32, v34);
LABEL_30:
              result = v14 - 16;
LABEL_49:
              *v4 = result;
              return result;
            }
          }
        }
      }
    }

    v21 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::doFind<mlir::Value>(v3 + 25, &v33);
    if (v21)
    {
      v22 = *(v21 + 8);
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a1 + 16);
    v24 = *(v23 + 8);
    if (v24 >= *(v23 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 16), (v23 + 16), v24 + 1, 8);
      LODWORD(v24) = *(v23 + 8);
    }

    *(*v23 + 8 * v24) = v22;
    ++*(v23 + 8);
    v25 = **(a1 + 24);
    v26 = *(((v25 + 16 * ((*(v25 + 44) >> 23) & 1) + ((*(v25 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v25 + 40) + 8);
    if (v26)
    {
      v27 = (v26 - 8);
    }

    else
    {
      v27 = 0;
    }

    if ((~*(v33 + 8) & 7) != 0)
    {
      v28 = v33;
    }

    else
    {
      v28 = 0;
    }

    if (!v28)
    {
      goto LABEL_45;
    }

    v29 = *(v28 + 8) & 7;
    if (v29 == 6)
    {
      v30 = v28 + 24 * *(v28 + 16) + 120;
      if (!v30)
      {
LABEL_45:
        v31 = (v33 + 32);
        goto LABEL_48;
      }
    }

    else
    {
      v30 = v28 + 16 * v29 + 16;
    }

    v31 = (v30 + 24);
LABEL_48:
    mlir::Block::addArgument(v27, *(v33 + 8) & 0xFFFFFFFFFFFFFFF8, *v31);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  Types = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateTypesOp>(*(**a2 + 32));
  v14[0] = a2;
  v14[1] = Types;
  v14[2] = &v15;
  v14[3] = 0x400000000;
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  v9 = *a4;
  v13 = *a3;
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(v14) = v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v16, &v13, v14);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v11;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::doFind<mlir::Value>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
    LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
    v6 = v2 - 1;
    v7 = v4 & (v2 - 1);
    v8 = *(*a1 + 16 * v7);
    if (*a2 == v8)
    {
      return v3 + 16 * v7;
    }

    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v3 + 16 * v7);
      if (*a2 == v8)
      {
        return v3 + 16 * v7;
      }
    }
  }

  return 0;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::ApplyRewriteOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.apply_rewrite";
    v5[3] = 24;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

void mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id, *(**a2 + 32));
  if ((v7 & 1) == 0)
  {
    v12 = 1283;
    v11[2] = "pdl_interp.erase";
    v11[3] = 16;
    v10 = 259;
    llvm::operator+(v11, &v9, v13);
    llvm::report_fatal_error(v13, 1);
  }

  v13[0] = a2;
  v13[1] = v6;
  v14[0] = v15;
  v14[1] = 0x400000000;
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
  v11[0] = *a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v14, v11, 0, v11, 1);
  v8 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v8);
  mlir::OperationState::~OperationState(v13);
}

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v14[8] = *MEMORY[0x277D85DE8];
  Results = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultsOp>(*(**a2 + 32));
  v9[0] = a2;
  v9[1] = Results;
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
  mlir::pdl_interp::GetResultsOp::build(a1, v9, *a3);
  v7 = mlir::Operation::create(v9);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v7 = 0;
  }

  mlir::OperationState::~OperationState(v9);
  return v7;
}

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::GetResultsOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  ValueType = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetValueTypeOp>(*(**a2 + 32));
  v11[0] = a2;
  v11[1] = ValueType;
  v11[2] = v12;
  v11[3] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[8] = 4;
  v14[9] = v15;
  v14[10] = 0x100000000;
  v15[1] = v16;
  v15[2] = 0x100000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v16[4] = 0;
  v7 = *a3 - 16;
  v16[6] = 0;
  mlir::pdl_interp::GetValueTypeOp::build(a1, v11, v7);
  v8 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v8);
  if (*(*(v8 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  return v9;
}

mlir::Operation *mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v14[8] = *MEMORY[0x277D85DE8];
  Results = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultsOp>(*(**a2 + 32));
  v9[0] = a2;
  v9[1] = Results;
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
  mlir::pdl_interp::GetResultsOp::build(a1, v9, *a3);
  v7 = mlir::Operation::create(v9);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v7 = 0;
  }

  mlir::OperationState::~OperationState(v9);
  return v7;
}

void *mlir::InFlightDiagnostic::operator<<<char const(&)[42]>(void *a1)
{
  if (*a1)
  {
    mlir::Diagnostic::operator<<<42ul>((a1 + 1), "unable to infer result type for operation");
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>,mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::doFind<mlir::Operation const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

int32x2_t **llvm::ScopedHashTableScope<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::~ScopedHashTableScope(int32x2_t **a1)
{
  (*a1)[3] = a1[1];
  for (i = a1[2]; i; i = a1[2])
  {
    v3 = *a1;
    if (i[1])
    {
      *llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](v3, &i[2]) = i[1];
    }

    else
    {
      v4 = v3[2].i32[0];
      if (v4)
      {
        v5 = *v3;
        v6 = i[2];
        v7 = v4 - 1;
        v8 = ((v6.i32[0] >> 4) ^ (v6.i32[0] >> 9)) & (v4 - 1);
        v9 = *(*v3 + 16 * v8);
        if (v9 == *&v6)
        {
LABEL_6:
          *(*&v5 + 16 * v8) = -8192;
          v3[1] = vadd_s32(v3[1], 0x1FFFFFFFFLL);
        }

        else
        {
          v10 = 1;
          while (v9 != -4096)
          {
            v11 = v8 + v10++;
            v8 = v11 & v7;
            v9 = *(*&v5 + 16 * v8);
            if (v9 == *&v6)
            {
              goto LABEL_6;
            }
          }
        }
      }
    }

    a1[2] = *i;
    MEMORY[0x25F891030](i, 8);
  }

  return a1;
}

void mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(uint64_t a1@<X0>, uint64_t **a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v406 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  v6 = *(a1 + 44);
  v385 = &v387;
  v386 = 0x1000000000;
  mlir::Region::getOps<mlir::pdl::PatternOp>((((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v7), &v365);
  v361 = v365;
  v362 = v366;
  v363 = v367;
  v364 = v368;
  v329 = v369;
  if (v366 == v369)
  {
    goto LABEL_289;
  }

  v344 = a3;
  v353 = a2;
  while (1)
  {
    v8 = (*(&v364 + 1))();
    v10 = *(v8 + 40);
    v9 = *(v8 + 44);
    v331 = v8 + 64;
    v332 = v8;
    v359 = 0;
    v360 = v8;
    v358[0] = 0;
    v358[1] = 0;
    v403 = 0;
    v404 = 0;
    LODWORD(v405) = 0;
    mlir::Region::getOps<mlir::pdl::OperationOp>((((v8 + 64 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v10), __p);
    v392 = *&__p[2];
    v391 = *__p;
    v393 = v396;
    v394 = v397;
    v11 = v399;
    while (v392 != v11)
    {
      v12 = (*(&v394 + 1))();
      v13 = *(v12 + 44);
      if ((v13 & 0x800000) != 0)
      {
        v14 = *(v12 + 72);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v12 + 16 * ((v13 >> 23) & 1) + 80);
      if (v15)
      {
        v16 = v14 + 24;
        do
        {
          v17 = *v16;
          if ((~*(*v16 + 8) & 7) == 0)
          {
            v17 = 0;
          }

          if (v17)
          {
            v18 = v17[1] & 7;
            if (v18 == 6)
            {
              v17 += 3 * v17[2] + 15;
            }

            else
            {
              v17 += 2 * v18 + 2;
            }

            v19 = *(v17[6] + 16);
            if (v17)
            {
              v20 = v19 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id;
            }

            else
            {
              v20 = 0;
            }

            if (v20)
            {
LABEL_21:
              v375[0] = *(v17[9] + 24);
              llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v403, v375, &v380);
              goto LABEL_22;
            }
          }

          else
          {
            v19 = *(MEMORY[0x30] + 16);
          }

          if (v19 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
          {
            goto LABEL_21;
          }

LABEL_22:
          v16 += 32;
          --v15;
        }

        while (v15);
      }

      mlir::Region::OpIterator::operator++(&v391);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v391);
    }

    v21 = *(((v331 + 16 * ((*(v332 + 44) >> 23) & 1) + ((*(v332 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v332 + 40) + 8);
    if (v21)
    {
      v22 = v21 - 8;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(v22 + 32);
    v24 = *(v23 + 44);
    v25 = *(v23 + 16 * ((v24 >> 23) & 1) + 72);
    if ((v24 & 0x800000) != 0)
    {
      v26 = *(v23 + 72);
      if (v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = 0;
      if (v25)
      {
LABEL_30:
        __p[0] = *(v26 + 24);
        if (__p[0])
        {
          v27 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(&v403, __p);
          if (v27)
          {
            *v27 = -8192;
            v404 = vadd_s32(v404, 0x1FFFFFFFFLL);
          }
        }
      }
    }

    v388 = v390;
    v389 = 0x600000000;
    mlir::Region::getOps<mlir::pdl::OperationOp>((((v331 + 16 * ((*(v332 + 44) >> 23) & 1) + ((*(v332 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v332 + 40)), __p);
    v392 = *&__p[2];
    v391 = *__p;
    v393 = v396;
    v394 = v397;
    v28 = v399;
    while (v392 != v28)
    {
      *&v380 = (*(&v394 + 1))() - 16;
      v29 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(&v403, &v380);
      if (!v29 || v29 == &v403[8 * v405])
      {
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v388, v380);
      }

      mlir::Region::OpIterator::operator++(&v391);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v391);
    }

    MEMORY[0x25F891030](v403, 8);
    v373[1] = 0;
    v373[0] = 0;
    v374 = 0;
    v30 = v388;
    v381 = 0;
    v380 = 0u;
    v382 = &v384;
    v383 = 0;
    if (!v389)
    {
      LODWORD(v334) = 0;
      v333 = 0;
      goto LABEL_216;
    }

    v340 = 0;
    v334 = 0;
    v31 = 0;
    v333 = 0;
    v336 = (v388 + 8 * v389);
    do
    {
      v32 = *v30;
      v396 = 0u;
      memset(__p, 0, sizeof(__p));
      v33 = __p[1];
      v34 = __p[2];
      v35 = *(&v396 + 1);
      v36 = *(__p[1] + (((v396 + *(&v396 + 1)) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v396 + *(&v396 + 1)) & 0x7F);
      *v36 = v32;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0x100000000;
      *(v36 + 24) = 0;
      v375[0] = 0;
      v37 = v334;
      v39 = v375[0];
      v348 = v31;
      if ((v38 & 1) == 0)
      {
        v403 = v375[0];
        if (4 * v31 + 4 >= (3 * v334))
        {
          v40 = 2 * v334;
        }

        else
        {
          v40 = v334;
          if (v334 - v340 + ~v31 > v334 >> 3)
          {
            v41 = v334;
LABEL_45:
            ++v348;
            v42 = *v39 != -4096;
            *(v39 + 1) = 0;
            *(v39 + 2) = 0;
            v340 -= v42;
            *v39 = v32;
            v39[6] = 0;
            v37 = v41;
            goto LABEL_46;
          }
        }

        v122 = (v40 - 1) | ((v40 - 1) >> 1);
        v123 = v122 | (v122 >> 2) | ((v122 | (v122 >> 2)) >> 4);
        v124 = ((v123 | (v123 >> 8)) >> 16) | v123 | (v123 >> 8);
        if ((v124 + 1) > 0x40)
        {
          v41 = (v124 + 1);
        }

        else
        {
          v41 = 64;
        }

        buffer = llvm::allocate_buffer((32 * v41), 8uLL);
        v126 = buffer;
        v127 = (v41 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL;
        v128 = v127 - ((v41 + 0x7FFFFFFFFFFFFFFLL) & 1) + 2;
        v129 = vdupq_n_s64(v127);
        v130 = v333;
        if (v333)
        {
          v131 = 0;
          v132 = buffer + 4;
          do
          {
            v133 = vmovn_s64(vcgeq_u64(v129, vorrq_s8(vdupq_n_s64(v131), xmmword_25D0A0500)));
            if (v133.i8[0])
            {
              *(v132 - 4) = -4096;
            }

            if (v133.i8[4])
            {
              *v132 = -4096;
            }

            v131 += 2;
            v132 += 8;
          }

          while (v128 != v131);
          v338 = v30;
          v341 = buffer;
          if (v334)
          {
            v348 = 0;
            v134 = (v333 + 24);
            v135 = 32 * v334;
            do
            {
              v136 = *(v134 - 3);
              if ((v136 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                *&v391 = 0;
                v137 = v391;
                *(v391 + 24) = 0;
                *(v137 + 8) = 0;
                *(v137 + 16) = 0;
                *v137 = v136;
                *(v137 + 8) = *(v134 - 2);
                *(v134 - 2) = 0;
                *(v137 + 16) = *(v134 - 2);
                *(v134 - 2) = 0;
                v138 = *(v137 + 20);
                *(v137 + 20) = *(v134 - 1);
                *(v134 - 1) = v138;
                v139 = *(v137 + 24);
                *(v137 + 24) = *v134;
                *v134 = v139;
                ++v348;
                MEMORY[0x25F891030](0, 8);
              }

              v134 += 8;
              v135 -= 32;
            }

            while (v135);
          }

          else
          {
            v348 = 0;
          }

          MEMORY[0x25F891030](v333, 8);
          v30 = v338;
          v126 = v341;
        }

        else
        {
          v140 = buffer + 4;
          do
          {
            v141 = vmovn_s64(vcgeq_u64(v129, vorrq_s8(vdupq_n_s64(v130), xmmword_25D0A0500)));
            if (v141.i8[0])
            {
              *(v140 - 4) = -4096;
            }

            if (v141.i8[4])
            {
              *v140 = -4096;
            }

            v130 += 2;
            v140 += 8;
          }

          while (v128 != v130);
          v348 = 0;
        }

        v340 = 0;
        v39 = v403;
        v333 = v126;
        goto LABEL_45;
      }

LABEL_46:
      v334 = v37;
      v43 = v35 + 1;
      if (!v43)
      {
        goto LABEL_152;
      }

      v337 = v30;
      do
      {
        while (1)
        {
          while (1)
          {
            v44 = __p[1];
            v45 = v396;
            v46 = *(__p[1] + ((v396 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v396 & 0x7F);
            v48 = *v46;
            v47 = *(v46 + 8);
            v378 = *(v46 + 16);
            v379 = *(v46 + 20);
            v49 = *(v46 + 24);
            *(&v396 + 1) = --v43;
            *&v396 = v396 + 1;
            if (v396 >= 0x100)
            {
              operator delete(*__p[1]);
              __p[1] = v44 + 8;
              *&v396 = v45 - 127;
            }

            LODWORD(v370) = v378;
            BYTE4(v370) = v379;
            v375[0] = 0;
            {
              goto LABEL_96;
            }

            v50 = v375[0];
            v403 = v375[0];
            v51 = v39[4];
            v52 = v39[6];
            if (4 * v51 + 4 >= 3 * v52)
            {
              v53 = 2 * v52;
            }

            else
            {
              v53 = v39[6];
              if (v52 + ~v51 - v39[5] > v52 >> 3)
              {
                goto LABEL_53;
              }
            }

            v98 = *(v39 + 1);
            v99 = (v53 - 1) | ((v53 - 1) >> 1);
            v100 = v99 | (v99 >> 2) | ((v99 | (v99 >> 2)) >> 4);
            v101 = ((v100 | (v100 >> 8)) >> 16) | v100 | (v100 >> 8);
            v102 = (v101 + 1) > 0x40 ? v101 + 1 : 64;
            v39[6] = v102;
            v103 = llvm::allocate_buffer((24 * v102), 8uLL);
            *(v39 + 1) = v103;
            v335 = v98;
            if (v98)
            {
              *(v39 + 2) = 0;
              v104 = v39[6];
              if (v104)
              {
                v105 = 0;
                v106 = (24 * v104 - 24) / 0x18;
                v107 = vdupq_n_s64(v106);
                do
                {
                  v108 = vmovn_s64(vcgeq_u64(v107, vorrq_s8(vdupq_n_s64(v105), xmmword_25D0A0500)));
                  if (v108.i8[0])
                  {
                    *v103 = -4096;
                  }

                  if (v108.i8[4])
                  {
                    v103[3] = -4096;
                  }

                  v105 += 2;
                  v103 += 6;
                }

                while (((v106 + 2) & 0x1FFFFFFFFFFFFFFELL) != v105);
              }

              if (v52)
              {
                v109 = 24 * v52;
                v110 = (v98 + 8);
                do
                {
                  v111 = *(v110 - 1);
                  if ((v111 | 0x1000) != 0xFFFFFFFFFFFFF000)
                  {
                    *&v391 = 0;
                    v112 = v391;
                    *v391 = v111;
                    *(v112 + 8) = *v110;
                    ++v39[4];
                  }

                  v110 = (v110 + 24);
                  v109 -= 24;
                }

                while (v109);
              }

              MEMORY[0x25F891030](v335, 8);
            }

            else
            {
              *(v39 + 2) = 0;
              v113 = v39[6];
              if (v113)
              {
                v114 = 0;
                v115 = (24 * v113 - 24) / 0x18;
                v116 = vdupq_n_s64(v115);
                do
                {
                  v117 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(vdupq_n_s64(v114), xmmword_25D0A0500)));
                  if (v117.i8[0])
                  {
                    *v103 = -4096;
                  }

                  if (v117.i8[4])
                  {
                    v103[3] = -4096;
                  }

                  v114 += 2;
                  v103 += 6;
                }

                while (((v115 + 2) & 0x1FFFFFFFFFFFFFFELL) != v114);
              }
            }

            v51 = v39[4];
            v50 = v403;
LABEL_53:
            v39[4] = v51 + 1;
            if (*v50 != -4096)
            {
              --v39[5];
            }

            *v50 = v48;
            v50[1] = v47;
            *(v50 + 4) = v370;
            *(v50 + 20) = BYTE4(v370);
            v370 = v48;
            LODWORD(v371) = 0;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int const&>(&v380, &v370, &v371, v375);
            v54 = v375[0];
            if (v376)
            {
              v403 = &v405;
              v404 = 0x100000000;
              *&v391 = v48;
              v55 = v382;
              if (v383 >= HIDWORD(v383))
              {
                if (v382 <= &v391 && v382 + 40 * v383 > &v391)
                {
                  v118 = &v391 - v382;
                  v55 = v382;
                  v56 = (v382 + v118);
                }

                else
                {
                  v56 = &v391;
                  v55 = v382;
                }
              }

              else
              {
                v56 = &v391;
              }

              v57 = &v55[40 * v383];
              *v57 = *v56;
              LODWORD(v383) = v383 + 1;
              if (*(&v391 + 1) != (&v392 + 8))
              {
                free(*(&v391 + 1));
              }

              if (v403 != &v405)
              {
                free(v403);
              }

              v58 = v383 - 1;
              *(v54 + 8) = v383 - 1;
            }

            else
            {
              v58 = *(v375[0] + 8);
            }

            v59 = (v382 + 40 * v58);
            v60 = v59 + 2;
            v61 = v59[4];
            if (v61 >= v59[5])
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod((v59 + 2), v59 + 6, v61 + 1, 16);
              v61 = v60[2];
            }

            a3 = a3 & 0xFFFFFFFF00000000 | v49;
            v62 = (*v60 + 16 * v61);
            *v62 = v32;
            v62[1] = a3;
            ++v60[2];
            if ((~*(v48 + 8) & 7) != 0)
            {
              v63 = v48;
            }

            else
            {
              v63 = 0;
            }

            if (!v63)
            {
              v65 = *(MEMORY[0x30] + 16);
              goto LABEL_78;
            }

            v64 = *(v63 + 8) & 7;
            v63 += v64 == 6 ? 24 * *(v63 + 16) + 120 : 16 * v64 + 16;
            v65 = *(*(v63 + 48) + 16);
            if (v63 && v65 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
            {
              break;
            }

LABEL_78:
            if (v65 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id)
            {
              *&v391 = v63;
              v82 = *(*(v63 + 72) + 24);
              Index = mlir::pdl::ResultOp::getIndex(&v391);
              v84 = __p[1];
              if (__p[2] == __p[1])
              {
                v85 = 0;
              }

              else
              {
                v85 = 16 * (__p[2] - __p[1]) - 1;
              }

              v86 = *(&v396 + 1);
              v87 = *(&v396 + 1) + v396;
              if (v85 == *(&v396 + 1) + v396)
              {
                v84 = __p[1];
                v86 = *(&v396 + 1);
                v87 = *(&v396 + 1) + v396;
              }

              v88 = *&v84[(v87 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v87 & 0x7F);
              v89 = Index | 0x100000000;
              goto LABEL_110;
            }

            if (v65 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
            {
              *&v391 = v63;
              v82 = *(*(v63 + 72) + 24);
              v90 = mlir::pdl::ResultsOp::getIndex(&v391);
              v91 = __p[1];
              if (__p[2] == __p[1])
              {
                v92 = 0;
              }

              else
              {
                v92 = 16 * (__p[2] - __p[1]) - 1;
              }

              v86 = *(&v396 + 1);
              v93 = *(&v396 + 1) + v396;
              if (v92 == *(&v396 + 1) + v396)
              {
                v91 = __p[1];
                v86 = *(&v396 + 1);
                v93 = *(&v396 + 1) + v396;
              }

              v88 = *&v91[(v93 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v93 & 0x7F);
              v89 = v90 & 0xFFFFFFFFFFLL;
LABEL_110:
              *v88 = v82;
              *(v88 + 8) = v48;
              *(v88 + 16) = v89;
              *(v88 + 24) = v49;
              goto LABEL_111;
            }

            v43 = *(&v396 + 1);
            if (!*(&v396 + 1))
            {
              goto LABEL_151;
            }
          }

          v67 = *(v63 + 44);
          v68 = (v67 & 0x800000) != 0 ? *(v63 + 72) : 0;
          v69 = *(v63 + 16 * ((v67 >> 23) & 1) + 80);
          if (v69 == 1)
          {
            v70 = *(v68 + 24);
            if (*(*(*(v70 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
            {
              break;
            }
          }

          if ((v67 & 0x800000) != 0)
          {
            v71 = *(v63 + 72);
          }

          else
          {
            v71 = 0;
          }

          v43 = *(&v396 + 1);
          if (v69)
          {
            v72 = __p[2];
            v73 = __p[1];
            v74 = v49 + 1;
            v75 = (v71 + 24);
            v76 = 0x100000000;
            v77 = v396;
            do
            {
              v78 = *v75;
              if (v72 == v73)
              {
                v79 = 0;
              }

              else
              {
                v79 = 16 * (v72 - v73) - 1;
              }

              v80 = v77 + v43;
              if (v79 == v77 + v43)
              {
                v73 = __p[1];
                v72 = __p[2];
                v43 = *(&v396 + 1);
                v77 = v396;
                v80 = *(&v396 + 1) + v396;
              }

              v81 = *&v73[(v80 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v80 & 0x7F);
              *v81 = v78;
              *(v81 + 8) = v48;
              *(v81 + 16) = v76;
              *(v81 + 24) = v74;
              *(&v396 + 1) = ++v43;
              ++v76;
              v75 += 4;
              --v69;
            }

            while (v69);
          }

LABEL_96:
          if (!v43)
          {
            goto LABEL_151;
          }
        }

        v94 = __p[1];
        if (__p[2] == __p[1])
        {
          v95 = 0;
        }

        else
        {
          v95 = 16 * (__p[2] - __p[1]) - 1;
        }

        v86 = *(&v396 + 1);
        v96 = *(&v396 + 1) + v396;
        if (v95 == *(&v396 + 1) + v396)
        {
          v94 = __p[1];
          v86 = *(&v396 + 1);
          v96 = *(&v396 + 1) + v396;
        }

        v97 = *&v94[(v96 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v96 & 0x7F);
        *v97 = v70;
        *(v97 + 8) = v48;
        *(v97 + 16) = 0;
        *(v97 + 24) = v49 + 1;
LABEL_111:
        v43 = v86 + 1;
        *(&v396 + 1) = v86 + 1;
      }

      while (v86 != -1);
LABEL_151:
      v33 = __p[1];
      v34 = __p[2];
      v30 = v337;
LABEL_152:
      v119 = v34 - v33;
      v31 = v348;
      if ((v34 - v33) >= 0x11)
      {
        do
        {
          v120 = *v33++;
          operator delete(v120);
          v119 -= 8;
        }

        while (v119 > 0x10);
        __p[1] = v33;
      }

      while (v33 != v34)
      {
        v121 = *v33++;
        operator delete(v121);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      ++v30;
    }

    while (v30 != v336);
    v142 = v382;
    if (!v383)
    {
      a3 = v344;
      goto LABEL_214;
    }

    v143 = 0;
    v342 = v382 + 40 * v383;
    while (2)
    {
      v144 = *(v142 + 4);
      v145 = v144 == 1 || v144 == 0;
      v349 = v142;
      if (!v145)
      {
        v146 = 0;
        v147 = *v142;
        v148 = v142[1];
        v149 = &v148[2 * v144];
        v150 = 16 * v144;
        for (i = v148; i != v149; i += 2)
        {
          v152 = v146;
          v153 = v150;
          v154 = v148;
          do
          {
            if (!v152)
            {
              goto LABEL_202;
            }

            v155 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::operator[](v373, v154);
            v156 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::operator[](v155, i);
            if (!v156[1])
            {
              *(v156 + 1) = v143++;
              v157 = *(v154 + 2);
LABEL_201:
              *v156 = v157;
              v156[1] = v147;
              goto LABEL_202;
            }

            v157 = *(v154 + 2);
            if (*v156 > v157)
            {
              goto LABEL_201;
            }

LABEL_202:
            v154 += 2;
            v152 -= 16;
            v153 -= 16;
          }

          while (v153);
          v146 += 16;
        }
      }

      v142 = v349 + 5;
      if (v349 + 5 != v342)
      {
        continue;
      }

      break;
    }

    v142 = v382;
    if (v383)
    {
      v158 = v382 + 40 * v383 - 16;
      v159 = -40 * v383;
      a3 = v344;
      do
      {
        v160 = *(v158 - 2);
        if (v158 != v160)
        {
          free(v160);
        }

        v158 -= 40;
        v159 += 40;
      }

      while (v159);
      v142 = v382;
    }

    else
    {
      a3 = v344;
    }

LABEL_214:
    if (v142 != &v384)
    {
      free(v142);
    }

LABEL_216:
    MEMORY[0x25F891030](v380, 8);
    v161 = *(((v331 + 16 * ((*(v332 + 44) >> 23) & 1) + ((*(v332 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v332 + 40) + 8);
    if (v161)
    {
      v162 = v161 - 8;
    }

    else
    {
      v162 = 0;
    }

    v163 = *(v162 + 32);
    v164 = *(v163 + 44);
    v165 = *(v163 + 16 * ((v164 >> 23) & 1) + 72);
    if ((v164 & 0x800000) != 0)
    {
      v166 = *(v163 + 72);
      if (v165)
      {
LABEL_221:
        v167 = *(v166 + 24);
        if (v167)
        {
          v371 = 0;
          v370 = 0;
          v372 = 0;
          v168 = v167;
          llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::copyFrom(&v370, v373);
          __p[0] = v370;
          v370 = 0;
          __p[1] = v371;
          v371 = 0;
          LODWORD(__p[2]) = v372;
          v372 = 0;
          __p[3] = v168;
          v396 = 0uLL;
          LODWORD(v397) = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::destroyAll(&v370);
          MEMORY[0x25F891030](0, 8);
          mlir::pdl_to_pdl_interp::OptimalBranching::solve(__p);
          mlir::pdl_to_pdl_interp::OptimalBranching::preOrderTraversal(__p, v388, v389, &v391);
        }
      }
    }

    else
    {
      v166 = 0;
      if (v165)
      {
        goto LABEL_221;
      }
    }

    if (v389)
    {
      v169 = *v388;
      v371 = 0;
      v370 = 0;
      v372 = 0;
      llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::copyFrom(&v370, v373);
      __p[0] = v370;
      v370 = 0;
      __p[1] = v371;
      v371 = 0;
      LODWORD(__p[2]) = v372;
      v372 = 0;
      __p[3] = v169;
      v396 = 0uLL;
      LODWORD(v397) = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::destroyAll(&v370);
      MEMORY[0x25F891030](0, 8);
      mlir::pdl_to_pdl_interp::OptimalBranching::solve(__p);
      mlir::pdl_to_pdl_interp::OptimalBranching::preOrderTraversal(__p, v388, v389, &v391);
    }

    v170 = *v353;
    __p[0] = 0;
    LODWORD(v391) = 0;
    v171 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID();
    v172 = v170;
    v173 = v353;
    v174 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(v172, 0, 0, v171, __p, &v391);
    getTreePredicates(v358, 0, v353, a3, v174);
    v175 = (((v331 + 16 * ((*(v332 + 44) >> 23) & 1) + ((*(v332 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v332 + 40));
    if (*v175 != v175)
    {
      for (j = v175[1]; j != v175; j = j[1])
      {
        v177 = j - 1;
        if (!j)
        {
          v177 = 0;
        }

        if (v177[4] != v177 + 4)
        {
          break;
        }
      }

      if (j != v175)
      {
        v178 = j - 1;
        if (!j)
        {
          v178 = 0;
        }

        v179 = v178[5];
        v375[0] = ((v331 + 16 * ((*(v332 + 44) >> 23) & 1) + ((*(v332 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v332 + 40);
        v375[1] = j;
        v376 = v179;
        if (v179)
        {
          while (2)
          {
            v180 = *(*(v179 + 48) + 16);
            if (v180 != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id)
            {
              if (v180 == &mlir::detail::TypeIDResolver<mlir::pdl::ApplyNativeConstraintOp,void>::id)
              {
                v377 = v179;
                std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::Position *>>(*(v179 + 68));
              }

              if (v180 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id)
              {
                __p[0] = v179;
                *&v391 = v179 - 16;
                v190 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::operator[](a3, &v391);
                if (*v190)
                {
                  goto LABEL_275;
                }

                v191 = v190;
                *&v391 = *(*(v179 + 72) + 24);
                v192 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::doFind<mlir::Value>(a3, &v391);
                if (v192)
                {
                  v193 = *(v192 + 8);
                }

                else
                {
                  v193 = 0;
                }

                v197 = mlir::pdl::ResultOp::getIndex(__p);
                v198 = *v353;
                v199 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID();
                *v191 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v198, v199, v193, v197);
                v200 = v353;
              }

              else
              {
                if (v180 != &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
                {
                  if (v180 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
                  {
                    __p[0] = v179;
                    v181 = v179 - 16;
                    *&v391 = __p;
                    v182 = llvm::function_ref<mlir::Attribute ()(void)>::callback_fn<getNonTreePredicates(mlir::pdl::PatternOp,std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_3::operator() const(mlir::pdl::TypeOp)::{lambda(void)#1}>;
                    v183 = v173;
LABEL_256:
                    getTypePredicates(v181, v182, &v391, v183, a3);
                  }

                  else if (v180 == &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
                  {
                    __p[0] = v179;
                    v181 = v179 - 16;
                    *&v391 = __p;
                    v182 = llvm::function_ref<mlir::Attribute ()(void)>::callback_fn<getNonTreePredicates(mlir::pdl::PatternOp,std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_4::operator() const(mlir::pdl::TypesOp)::{lambda(void)#1}>;
                    v183 = v353;
                    goto LABEL_256;
                  }

LABEL_275:
                  mlir::Region::OpIterator::operator++(v375);
                  v179 = v376;
                  v173 = v353;
                  if (!v376)
                  {
                    goto LABEL_276;
                  }

                  continue;
                }

                __p[0] = v179;
                *&v391 = v179 - 16;
                v194 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::operator[](a3, &v391);
                if (*v194)
                {
                  goto LABEL_275;
                }

                v191 = v194;
                *&v391 = *(*(v179 + 72) + 24);
                v195 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::doFind<mlir::Value>(a3, &v391);
                v196 = v195 ? *(v195 + 8) : 0;
                v201 = *(*(*(v179 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
                v202 = mlir::pdl::ResultsOp::getIndex(__p);
                *v191 = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultGroup(*v353, v196, v202 & 0xFFFFFFFFFFLL, v201);
                if ((v202 & 0x100000000) == 0)
                {
                  goto LABEL_275;
                }

                v200 = v353;
              }

              IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(v200);
              v205 = IsNotNull;
              v206 = v358[1];
              if (v358[1] >= v359)
              {
                v208 = v358[0];
                v209 = v358[1] - v358[0];
                v210 = 0xAAAAAAAAAAAAAAABLL * ((v358[1] - v358[0]) >> 3);
                v211 = v210 + 1;
                if (v210 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate>::__throw_length_error[abi:nn200100]();
                }

                if (0x5555555555555556 * ((v359 - v358[0]) >> 3) > v211)
                {
                  v211 = 0x5555555555555556 * ((v359 - v358[0]) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v359 - v358[0]) >> 3) >= 0x555555555555555)
                {
                  v212 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v212 = v211;
                }

                if (v212)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v212);
                }

                v213 = (8 * ((v358[1] - v358[0]) >> 3));
                *v213 = *v191;
                v213[1] = v205;
                v213[2] = v204;
                v207 = (24 * v210 + 24);
                v214 = v213 - v209;
                memcpy(v213 - v209, v208, v209);
                v358[0] = v214;
                v358[1] = v207;
                v359 = 0;
                if (v208)
                {
                  operator delete(v208);
                }
              }

              else
              {
                *v358[1] = *v191;
                v206[1] = IsNotNull;
                v206[2] = v204;
                v207 = v206 + 3;
              }

              v358[1] = v207;
              goto LABEL_275;
            }

            break;
          }

          __p[0] = (v179 - 16);
          v184 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::operator[](a3, __p);
          if (!*v184)
          {
            v185 = v184;
            v186 = *(v179 + 16 * ((*(v179 + 44) >> 23) & 1) + 64);
            v187 = *v353;
            v188 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID();
            v189 = *v187;
            __p[1] = 0;
            __p[0] = 0;
            *&v380 = v186;
            v403 = &v380;
            *&v391 = &v380;
            *(&v391 + 1) = __p;
            *v185 = mlir::detail::StorageUniquerImpl::getOrCreate(v189, v188, (v186 >> 4) ^ (v186 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v403, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v391);
          }

          goto LABEL_275;
        }
      }
    }

LABEL_276:
    if (v334)
    {
      v215 = 32 * v334;
      v216 = (v333 + 8);
      do
      {
        if ((*(v216 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          MEMORY[0x25F891030](*v216, 8);
        }

        v216 += 4;
        v215 -= 32;
      }

      while (v215);
    }

    MEMORY[0x25F891030](v333, 8);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::destroyAll(v373);
    MEMORY[0x25F891030](v373[0], 8);
    if (v388 != v390)
    {
      free(v388);
    }

    v357 = 0;
    if (v386 >= HIDWORD(v386))
    {
      llvm::SmallVectorTemplateBase<mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::PatternPredicates,false>::growAndEmplaceBack<mlir::pdl::PatternOp &,mlir::Value&,std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate>>(&v385, &v360, &v357, v358);
      if (v358[0])
      {
        operator delete(v358[0]);
      }
    }

    else
    {
      v217 = v385 + 40 * v386;
      v218 = v359;
      *v217 = v360;
      *(v217 + 1) = 0;
      *(v217 + 1) = *v358;
      *(v217 + 4) = v218;
      LODWORD(v386) = v386 + 1;
    }

    mlir::Region::OpIterator::operator++(&v361);
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v361);
    if (v362 == v329)
    {
LABEL_289:
      v391 = 0uLL;
      LODWORD(v392) = 0;
      if (!v386)
      {
        v389 = 0;
        v388 = 0;
        v390[0] = 0;
        goto LABEL_420;
      }

      v219 = 0;
      v220 = v385;
      v221 = (v385 + 40 * v386);
LABEL_291:
      v222 = v220[2];
      v223 = v220[3];
      while (1)
      {
        if (v222 == v223)
        {
          v220 += 5;
          if (v220 == v221)
          {
            v389 = 0;
            v388 = 0;
            v390[0] = 0;
            if (v386)
            {
              if (v386)
              {
                v273 = v385;
                v343 = v385 + 40 * v386;
                while (1)
                {
                  v347 = v273[1];
                  v352 = v273;
                  v274 = v273[2];
                  v356 = v273[3];
                  v345 = *v273;
                  v275 = 0;
                  v276 = 0;
                  v277 = 0;
                  v278 = 0;
                  if (v274 != v356)
                  {
                    break;
                  }

LABEL_408:
                  v309 = v389;
                  if (v389 >= v390[0])
                  {
                    v311 = 0xCCCCCCCCCCCCCCCDLL * ((v389 - v388) >> 3);
                    v312 = v311 + 1;
                    if ((v311 + 1) > 0x666666666666666)
                    {
                    }

                    if (0x999999999999999ALL * ((v390[0] - v388) >> 3) > v312)
                    {
                      v312 = 0x999999999999999ALL * ((v390[0] - v388) >> 3);
                    }

                    if (0xCCCCCCCCCCCCCCCDLL * ((v390[0] - v388) >> 3) >= 0x333333333333333)
                    {
                      v313 = 0x666666666666666;
                    }

                    else
                    {
                      v313 = v312;
                    }

                    v314 = __p[2];
                    *__p[2] = v345;
                    v314[1] = v347;
                    v314[2] = v275;
                    *(v314 + 6) = v276;
                    *(v314 + 7) = v277;
                    *(v314 + 8) = v278;
                    __p[2] = __p[2] + 40;
                    v310 = v389;
                  }

                  else
                  {
                    *v389 = v345;
                    *(v309 + 8) = v347;
                    *(v309 + 16) = v275;
                    *(v309 + 24) = v276;
                    *(v309 + 28) = v277;
                    v310 = v309 + 40;
                    *(v309 + 32) = v278;
                  }

                  v389 = v310;
                  MEMORY[0x25F891030](0, 8);
                  v273 = v352 + 5;
                  if (v352 + 5 == v343)
                  {
                    goto LABEL_420;
                  }
                }

                v339 = 0;
                while (2)
                {
                  v280 = *v274;
                  v279 = v274[1];
                  v365.i64[0] = *v274;
                  v365.i64[1] = v279;
                  *&v366 = 0;
                  DWORD2(v366) = 0;
                  v367 = 0uLL;
                  LODWORD(v368) = 0;
                  v281 = v391;
                  v282 = v392;
                  if (!v392)
                  {
                    v282 = 0;
                    goto LABEL_367;
                  }

                  v399 = 0u;
                  v400 = 0u;
                  v397 = 0u;
                  v398 = 0u;
                  v396 = 0u;
                  memset(__p, 0, sizeof(__p));
                  v401 = 0;
                  v402 = 0xFF51AFD7ED558CCDLL;
                  v283 = (v282 - 1) & llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::Position *,mlir::pdl_to_pdl_interp::Qualifier *>(__p, __p, &v398, v280, &v365.i64[1]);
                  v284 = v281 + 56 * v283;
                  v286 = *v284;
                  v285 = *(v284 + 8);
                  if (v280 == *v284 && v279 == v285)
                  {
LABEL_365:
                    MEMORY[0x25F891030](0, 8);
                  }

                  else
                  {
                    v291 = 1;
                    while (v286 != -4096 || v285 != -4096)
                    {
                      v292 = v283 + v291++;
                      v283 = v292 & (v282 - 1);
                      v284 = v281 + 56 * v283;
                      v286 = *v284;
                      v285 = *(v284 + 8);
                      if (v280 == *v284 && v279 == v285)
                      {
                        goto LABEL_365;
                      }
                    }

                    MEMORY[0x25F891030](0, 8);
LABEL_367:
                    v284 = v281 + 56 * v282;
                  }

                  MEMORY[0x25F891030](0, 8);
                  v361.i64[0] = 0;
                  {
                    v288 = v361.i64[0];
                    v365.i64[0] = v361.i64[0];
                    if (4 * v276 + 4 >= (3 * v278))
                    {
                      v289 = 2 * v278;
                    }

                    else
                    {
                      v289 = v278;
                      if (v278 - v277 + ~v276 > v278 >> 3)
                      {
                        v290 = v278;
                        goto LABEL_372;
                      }
                    }

                    v294 = (v289 - 1) | ((v289 - 1) >> 1);
                    v295 = v294 | (v294 >> 2) | ((v294 | (v294 >> 2)) >> 4);
                    v296 = ((v295 | (v295 >> 8)) >> 16) | v295 | (v295 >> 8);
                    if ((v296 + 1) > 0x40)
                    {
                      v290 = (v296 + 1);
                    }

                    else
                    {
                      v290 = 64;
                    }

                    v297 = llvm::allocate_buffer((8 * v290), 8uLL);
                    v275 = v297;
                    v298 = (v290 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
                    v299 = v298 - ((v290 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
                    v300 = vdupq_n_s64(v298);
                    v301 = v339;
                    if (v339)
                    {
                      v302 = 0;
                      do
                      {
                        v303 = vmovn_s64(vcgeq_u64(v300, vorrq_s8(vdupq_n_s64(v302), xmmword_25D0A0500)));
                        if (v303.i8[0])
                        {
                          v297[v302] = -4096;
                        }

                        if (v303.i8[4])
                        {
                          v297[v302 + 1] = -4096;
                        }

                        v302 += 2;
                      }

                      while (v299 != v302);
                      v276 = 0;
                      if (v278)
                      {
                        v304 = 8 * v278;
                        v305 = v339;
                        do
                        {
                          v306 = *v305;
                          if ((*v305 | 0x1000) != 0xFFFFFFFFFFFFF000)
                          {
                            __p[0] = 0;
                            *__p[0] = v306;
                            ++v276;
                          }

                          ++v305;
                          v304 -= 8;
                        }

                        while (v304);
                      }

                      MEMORY[0x25F891030](v339, 8);
                    }

                    else
                    {
                      v307 = v297 + 1;
                      do
                      {
                        v308 = vmovn_s64(vcgeq_u64(v300, vorrq_s8(vdupq_n_s64(v301), xmmword_25D0A0500)));
                        if (v308.i8[0])
                        {
                          *(v307 - 1) = -4096;
                        }

                        if (v308.i8[4])
                        {
                          *v307 = -4096;
                        }

                        v301 += 2;
                        v307 += 2;
                      }

                      while (v299 != v301);
                      v276 = 0;
                    }

                    v277 = 0;
                    v288 = v365.i64[0];
                    v339 = v275;
LABEL_372:
                    ++v276;
                    v277 -= *v288 != -4096;
                    *v288 = v284;
                    v278 = v290;
                  }

                  ++*(v284 + 16);
                  v274 += 3;
                  if (v274 == v356)
                  {
                    goto LABEL_408;
                  }

                  continue;
                }
              }
            }

LABEL_420:
            v315 = v388;
            v316 = v389;
            while (1)
            {
              if (v315 == v316)
              {
                if (DWORD2(v391))
                {
                  operator new();
                }

                v326 = v391 + 56 * v392;
                v365 = vdupq_n_s64(v326);
                if (v326 != v365.i64[0])
                {
                  operator new();
                }

                *a4 = 0;
                if (v388 != v389)
                {
                  operator new();
                }

                foldSwitchToBool(a4);
                v327 = a4;
                do
                {
                  v328 = *v327;
                  v327 = (*v327 + 24);
                }

                while (v328);
                operator new();
              }

              if (*(v315 + 6))
              {
                v317 = *(v315 + 8);
                if (v317)
                {
                  v318 = 8 * v317;
                  v319 = v315[2];
                  while ((*v319 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    ++v319;
                    v318 -= 8;
                    if (!v318)
                    {
                      goto LABEL_441;
                    }
                  }
                }

                else
                {
                  v319 = v315[2];
                }

                v320 = v315[2] + 8 * v317;
                if (v320 != v319)
                {
                  v321 = 0;
                  v322 = v319;
                  do
                  {
                    v324 = *v322++;
                    v323 = v324;
                    while (v322 != v320 && (*v322 | 0x1000) == 0xFFFFFFFFFFFFF000)
                    {
                      ++v322;
                    }

                    v321 += *(v323 + 16) * *(v323 + 16);
                  }

                  while (v322 != v320);
                  do
                  {
                    v325 = *v319++;
                    *(v325 + 20) += v321;
                    while (v319 != v320 && (*v319 | 0x1000) == 0xFFFFFFFFFFFFF000)
                    {
                      ++v319;
                    }
                  }

                  while (v319 != v320);
                }
              }

LABEL_441:
              v315 += 5;
            }
          }

          goto LABEL_291;
        }

        *__p = *v222;
        __p[2] = 0;
        LODWORD(__p[3]) = 0;
        v396 = 0uLL;
        LODWORD(v397) = 0;
        v361.i64[0] = 0;
        v224 = v392;
        v226 = v225;
        v227 = v361.i64[0];
        if (v225)
        {
          v228 = v396;
          goto LABEL_301;
        }

        v388 = v361.i64[0];
        v229 = DWORD2(v391);
        if (4 * DWORD2(v391) + 4 >= (3 * v224))
        {
          break;
        }

        v230 = v224;
        if (v224 + ~DWORD2(v391) - HIDWORD(v391) <= v224 >> 3)
        {
          goto LABEL_311;
        }

LABEL_297:
        DWORD2(v391) = v229 + 1;
        if (*v227 != -4096 || *(v227 + 1) != -4096)
        {
          --HIDWORD(v391);
        }

        MEMORY[0x25F891030](0, 8);
        *v227 = *__p;
        *(v227 + 12) = *(&__p[1] + 4);
        MEMORY[0x25F891030](*(v227 + 4), 8);
        v228 = 0;
        *(v227 + 4) = v396;
        *&v396 = 0;
        *(v227 + 5) = *(&v396 + 1);
        *(&v396 + 1) = 0;
        *(v227 + 12) = v397;
LABEL_301:
        MEMORY[0x25F891030](v228, 8);
        v231 = *v220;
        v388 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *>>,mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *>>::LookupBucketFor<mlir::Operation *>(*(v227 + 4), *(v227 + 12), v231, &v388))
        {
          goto LABEL_307;
        }

        v232 = v388;
        v233 = *(v227 + 12);
        v365.i64[0] = v388;
        v234 = *(v227 + 10);
        if (4 * v234 + 4 >= (3 * v233))
        {
          v235 = 2 * v233;
LABEL_326:
          v355 = *(v227 + 4);
          v249 = (v235 - 1) | ((v235 - 1) >> 1);
          v250 = v249 | (v249 >> 2) | ((v249 | (v249 >> 2)) >> 4);
          v251 = ((v250 | (v250 >> 8)) >> 16) | v250 | (v250 >> 8);
          if ((v251 + 1) > 0x40)
          {
            v252 = v251 + 1;
          }

          else
          {
            v252 = 64;
          }

          *(v227 + 12) = v252;
          v253 = llvm::allocate_buffer((16 * v252), 8uLL);
          *(v227 + 4) = v253;
          if (v355)
          {
            *(v227 + 5) = 0;
            v254 = *(v227 + 12);
            if (v254)
            {
              v255 = 0;
              v256 = v254 + 0xFFFFFFFFFFFFFFFLL;
              v257 = v256 & 0xFFFFFFFFFFFFFFFLL;
              v258 = (v256 & 0xFFFFFFFFFFFFFFFLL) - (v256 & 1) + 2;
              v259 = vdupq_n_s64(v257);
              v260 = v253 + 2;
              do
              {
                v261 = vmovn_s64(vcgeq_u64(v259, vorrq_s8(vdupq_n_s64(v255), xmmword_25D0A0500)));
                if (v261.i8[0])
                {
                  *(v260 - 2) = -4096;
                }

                if (v261.i8[4])
                {
                  *v260 = -4096;
                }

                v255 += 2;
                v260 += 4;
              }

              while (v258 != v255);
            }

            v351 = v221;
            if (v233)
            {
              v262 = 16 * v233;
              v263 = v355;
              do
              {
                v264 = *v263;
                if ((*v263 | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  __p[0] = 0;
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *>>,mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *>>::LookupBucketFor<mlir::Operation *>(*(v227 + 4), *(v227 + 12), v264, __p);
                  v265 = __p[0];
                  *__p[0] = *v263;
                  v265[1] = v263[1];
                  ++*(v227 + 10);
                }

                v263 += 2;
                v262 -= 16;
              }

              while (v262);
            }

            MEMORY[0x25F891030](v355, 8);
            LODWORD(v266) = *(v227 + 12);
            v221 = v351;
          }

          else
          {
            *(v227 + 5) = 0;
            v266 = *(v227 + 12);
            if (v266)
            {
              v267 = 0;
              v268 = (v266 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
              v269 = v268 - ((v266 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2;
              v270 = vdupq_n_s64(v268);
              v271 = v253 + 2;
              do
              {
                v272 = vmovn_s64(vcgeq_u64(v270, vorrq_s8(vdupq_n_s64(v267), xmmword_25D0A0500)));
                if (v272.i8[0])
                {
                  *(v271 - 2) = -4096;
                }

                if (v272.i8[4])
                {
                  *v271 = -4096;
                }

                v267 += 2;
                v271 += 4;
              }

              while (v269 != v267);
            }
          }

          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *>>,mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *>>::LookupBucketFor<mlir::Operation *>(*(v227 + 4), v266, v231, &v365);
          v234 = *(v227 + 10);
          v232 = v365.i64[0];
          goto LABEL_304;
        }

        v235 = v233;
        if (v233 + ~v234 - *(v227 + 11) <= v233 >> 3)
        {
          goto LABEL_326;
        }

LABEL_304:
        *(v227 + 10) = v234 + 1;
        if (*v232 != -4096)
        {
          --*(v227 + 11);
        }

        *v232 = v231;
        v232[1] = *(v222 + 16);
LABEL_307:
        if ((v226 & 1) == 0)
        {
          *(v227 + 6) = DWORD2(v391) - 1;
        }

        v222 += 24;
      }

      v230 = 2 * v224;
LABEL_311:
      v236 = (v230 - 1) | ((v230 - 1) >> 1);
      v237 = v236 | (v236 >> 2) | ((v236 | (v236 >> 2)) >> 4);
      v238 = ((v237 | (v237 >> 8)) >> 16) | v237 | (v237 >> 8);
      if ((v238 + 1) > 0x40)
      {
        v239 = v238 + 1;
      }

      else
      {
        v239 = 64;
      }

      LODWORD(v392) = v239;
      *&v391 = llvm::allocate_buffer((56 * v239), 8uLL);
      if (v219)
      {
        if (v224)
        {
          v350 = v391;
          v240 = DWORD2(v391);
          v346 = v392;
          v241 = 56 * v224;
          v242 = v219;
          do
          {
            v243 = *(v242 + 8);
            if ((*v242 != -4096 || v243 != -4096) && (*v242 != -8192 || v243 != -8192))
            {
              v365.i64[0] = 0;
              v354 = v240;
              v244 = v221;
              v245 = v365.i64[0];
              v246 = *(v242 + 12);
              *v365.i64[0] = *v242;
              *(v245 + 12) = v246;
              MEMORY[0x25F891030](*(v245 + 32), 8);
              *(v245 + 32) = 0;
              *(v245 + 40) = 0;
              *(v245 + 48) = 0;
              *(v245 + 32) = *(v242 + 32);
              *(v242 + 32) = 0;
              *(v245 + 40) = *(v242 + 40);
              *(v242 + 40) = 0;
              v247 = *(v245 + 44);
              *(v245 + 44) = *(v242 + 44);
              *(v242 + 44) = v247;
              v248 = *(v245 + 48);
              *(v245 + 48) = *(v242 + 48);
              v221 = v244;
              *(v242 + 48) = v248;
              v240 = v354 + 1;
            }

            MEMORY[0x25F891030](*(v242 + 32), 8);
            v242 += 56;
            v241 -= 56;
          }

          while (v241);
          DWORD2(v391) = v240;
        }

        MEMORY[0x25F891030](0, 8);
        MEMORY[0x25F891030](0, 8);
        MEMORY[0x25F891030](v219, 8);
      }

      else
      {
      }

      v219 = v391;
      v229 = DWORD2(v391);
      v227 = v388;
      goto LABEL_297;
    }
  }
}