uint64_t llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,false>::uninitialized_move<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion*,mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = 0;
    do
    {
      v4 = (a3 + v3);
      *v4 = *(result + v3);
      v5 = (result + v3 + 8);
      v6 = *v5;
      v4[1] = *v5;
      v7 = a3 + v3 + 8;
      v8 = *(result + v3 + 16);
      *(a3 + v3 + 16) = v8;
      if (v8)
      {
        *(v6 + 16) = v7;
        *(result + v3) = v5;
        *v5 = 0;
        *(result + v3 + 16) = 0;
      }

      else
      {
        *(a3 + v3) = v7;
      }

      v9 = a3 + v3;
      v10 = result + v3;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(result + v3 + 24);
      *(v10 + 24) = 0;
      *(v9 + 32) = *(result + v3 + 32);
      *(v10 + 32) = 0;
      v11 = *(a3 + v3 + 36);
      *(v9 + 36) = *(result + v3 + 36);
      *(v10 + 36) = v11;
      v12 = *(a3 + v3 + 40);
      *(v9 + 40) = *(result + v3 + 40);
      *(v10 + 40) = v12;
      *(v9 + 48) = *(result + v3 + 48);
      v3 += 56;
    }

    while (result + v3 != a2);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1 + 56 * v3 - 48;
    v5 = -56 * v3;
    do
    {
      MEMORY[0x25F891030](*(v4 + 16), 8);
      v6 = *v4;
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,false>::growAndEmplaceBack<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion>(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 56, &v14);
  v6 = &v5[56 * *(a1 + 8)];
  *v6 = *a2;
  v7 = (a2 + 8);
  v8 = *(a2 + 8);
  *(v6 + 1) = v8;
  v9 = v6 + 8;
  v10 = *(a2 + 16);
  *(v6 + 2) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    *a2 = v7;
    *v7 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *v6 = v9;
  }

  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  *(v6 + 10) = 0;
  *(v6 + 3) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v6 + 8) = *(a2 + 32);
  *(a2 + 32) = 0;
  v11 = *(v6 + 9);
  *(v6 + 9) = *(a2 + 36);
  *(a2 + 36) = v11;
  v12 = *(v6 + 10);
  *(v6 + 10) = *(a2 + 40);
  *(a2 + 40) = v12;
  *(v6 + 6) = *(a2 + 48);
  v13 = v14;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  ++*(a1 + 8);
  *(a1 + 12) = v13;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 24 * v5);
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
        v6 = (a1 + 24 * (v13 & v4));
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 72 * v5);
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
        v6 = (a1 + 72 * (v13 & v4));
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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::doFind<mlir::Operation const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 24 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 24 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::doFind<mlir::Attribute>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 72 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 72 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis *mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ExecAliasAnalysis(mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis *this, mlir::Operation *a2)
{
  *(this + 3) = 0;
  *(this + 2) = 0;
  *this = &unk_286E86360;
  *(this + 1) = this + 16;
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 11) = 0;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  v4[1] = this;
  v5 = this;
  v4[0] = &v5;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ExecAliasAnalysis(mlir::Operation *)::$_1>, v4, 1);
  return this;
}

const void **mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::getAliasSet@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2;
  *a3 = a3 + 24;
  *(a3 + 8) = 16;
  *(a3 + 16) = 0;
  *(a3 + 20) = 1;
  result = llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::findLeader(a1 + 72, &v7);
  if (result)
  {
    v5 = result;
    do
    {
      result = llvm::SmallPtrSetImpl<mlir::Value>::insert(a3, v5[2], &v6);
      v5 = (v5[1] & 0xFFFFFFFFFFFFFFFELL);
    }

    while (v5);
  }

  return result;
}

uint64_t llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::findLeader(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 48);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 48))
  {
    return 0;
  }

  else
  {
    return llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader(v6 + 32);
  }
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

__guard mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[236];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::DPSOpInterface>();
    *algn_27FC19778 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::DPSOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::DPSOpInterface]";
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

uint64_t mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(mlir::ODIE::Compiler::Exec::DPSOpInterface *this)
{
  v7[3] = *MEMORY[0x277D85DE8];
  (**(this + 1))(&v4, *(this + 1), *this);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v1 = *(v4 + 72);
  }

  else
  {
    v1 = 0;
  }

  v2 = v5;
  if (v6 != v7)
  {
    free(v6);
  }

  return v1 + 32 * v2;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ExecAliasAnalysis(mlir::Operation *)::$_1>(uint64_t a1, uint64_t a2)
{
  v80[6] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v65 = *a1;
  if (mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(a2) && (!a2 ? (v5 = 0) : (v5 = mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(a2)), a2))
  {
    v78 = a2;
    v79 = v5;
    v11 = a2 - 16;
    v64 = a2;
    v12 = *(a2 + 36);
    DpsInits = mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(&v78);
    if (v12)
    {
      v15 = a2 - 16;
    }

    else
    {
      v15 = 0;
    }

    if (v12 && v14)
    {
      v16 = 0;
      v17 = v4 + 1;
      v18 = v14 - 1;
      v19 = v12 - 1;
      v20 = (DpsInits + 24);
      v21 = a2 - 16;
      while (1)
      {
        v22 = v15;
        if (v16)
        {
          v23 = *(v64 - 8) & 7;
          v24 = v11;
          v25 = v16;
          if (v23 == 6)
          {
            goto LABEL_24;
          }

          v26 = (5 - v23);
          v22 = v21;
          v25 = v16 - v26;
          if (v16 > v26)
          {
            break;
          }
        }

LABEL_25:
        v74 = *v20;
        v27 = (*v65 + 72);
        if (v27 != v17)
        {
          llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v17, v22, &v74);
        }

        llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v27, v22, &v74);
        if (v19 != v16)
        {
          v21 -= 16;
          v20 += 4;
          v52 = v18 == v16++;
          if (!v52)
          {
            continue;
          }
        }

        return;
      }

      v24 = v11 - 16 * v26;
LABEL_24:
      v22 = v24 - 24 * v25;
      goto LABEL_25;
    }
  }

  else
  {
    v6 = *a1;
    if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id)
    {
      v7 = v4 + 5;
      v8 = *(a2 + 36);
      v78 = *(*(a2 + 72) + 24);
      v9 = (*v6 + 72);
      if (v8)
      {
        v10 = a2 - 16;
      }

      else
      {
        v10 = 0;
      }

      if (v9 != v7)
      {
        llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v7, v10, &v78);
      }

      llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v9, v10, &v78);
    }

    else
    {
      v28 = llvm::DefaultDoCastIfPossible<mlir::RegionBranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionBranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
      if (v28)
      {
        v30 = v28;
        v78 = v80;
        v79 = 0x200000000;
        (*(v29 + 16))(v29, v28, 0, &v78);
        v31 = v78;
        if (v79)
        {
          v58 = &v78[3 * v79];
          v32 = v4 + 1;
          v61 = v4;
          v59 = v30;
          do
          {
            if ((*(v30 + 46) & 0x80) != 0)
            {
              v33 = *(v30 + 72);
              v34 = *(v30 + 68);
            }

            else
            {
              v33 = 0;
              v34 = 0;
            }

            v35 = v31[1];
            v36 = v31[2];
            v60 = v31;
            v74 = v33;
            v75 = 0;
            v76 = v35;
            v77 = 0;
            if (v34 && v36)
            {
              v37 = v33 + 3;
              v38 = 1;
              do
              {
                v39 = *v37;
                v70 = mlir::ValueRange::dereference_iterator(&v76, v38 - 1);
                v40 = *v6;
                if (*v6 != v4)
                {
                  llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v4 + 9, v39, &v70);
                }

                llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets((v40 + 72), v39, &v70);
                v75 = v38;
                v77 = v38;
                if (v34 == v38)
                {
                  break;
                }

                v37 += 4;
                v52 = v36 == v38++;
              }

              while (!v52);
            }

            v41 = *v60;
            v42 = *(*v60 + 8);
            v62 = *v60;
            while (v42 != v41)
            {
              v43 = v42 - 8;
              if (!v42)
              {
                v43 = 0;
              }

              v44 = *(v43 + 32);
              InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v44);
              v67 = v44;
              v68 = InterfaceFor;
              v74 = &v76;
              v75 = 0x200000000;
              if ((*(v44 + 46) & 0x80) != 0)
              {
                v46 = *(v44 + 68);
              }

              else
              {
                v46 = 0;
              }

              v70 = &v72;
              v71 = 0x600000000;
              llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(&v70, v46);
              (*(v68 + 8))(v68, v67, v70, v71, &v74);
              if (v70 != &v72)
              {
                free(v70);
              }

              v47 = v74;
              if (v75)
              {
                v63 = v42;
                v66 = (v74 + 24 * v75);
                do
                {
                  v48 = v47[1];
                  v49 = v47[2];
                  SuccessorOperands = mlir::RegionBranchTerminatorOpInterface::getSuccessorOperands(&v67, *v47);
                  v70 = SuccessorOperands;
                  v71 = 0;
                  v72 = v48;
                  v73 = 0;
                  if (v51)
                  {
                    v52 = v49 == 0;
                  }

                  else
                  {
                    v52 = 1;
                  }

                  if (!v52)
                  {
                    v53 = v51;
                    v54 = SuccessorOperands + 3;
                    v55 = 1;
                    do
                    {
                      v56 = *v54;
                      v69 = mlir::ValueRange::dereference_iterator(&v72, v55 - 1);
                      v57 = (*v6 + 72);
                      if (v57 != v32)
                      {
                        llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v32, v56, &v69);
                      }

                      llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v57, v56, &v69);
                      v71 = v55;
                      v73 = v55;
                      if (v53 == v55)
                      {
                        break;
                      }

                      v54 += 4;
                      v52 = v49 == v55++;
                    }

                    while (!v52);
                  }

                  v47 += 3;
                }

                while (v47 != v66);
                v47 = v74;
                v4 = v61;
                v42 = v63;
              }

              if (v47 != &v76)
              {
                free(v47);
              }

              v42 = *(v42 + 8);
              v41 = v62;
            }

            v30 = v59;
            v31 = v60 + 3;
          }

          while (v60 + 3 != v58);
          v31 = v78;
        }

        if (v31 != v80)
        {
          free(v31);
        }
      }
    }
  }
}

uint64_t llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(uint64_t **a1, unint64_t a2, unint64_t *a3)
{
  v11 = &v11;
  v12 = 1;
  v13 = a2;
  v5 = std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::__emplace_unique_key_args<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>(a1, a2, &v11);
  v11 = &v11;
  v12 = 1;
  v13 = *a3;
  v6 = std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::__emplace_unique_key_args<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>(a1, v13, &v11);
  v7 = a1 + 1;
  if (v7 == v5)
  {
    Leader = 0;
  }

  else
  {
    Leader = llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader((v5 + 4));
  }

  if (v7 == v6)
  {
    result = 0;
  }

  else
  {
    result = llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader((v6 + 4));
  }

  if (Leader != result)
  {
    *(*Leader + 8) = *(*Leader + 8) & 1 | result;
    *Leader = *result;
    v10 = *(result + 8) & 0xFFFFFFFFFFFFFFFELL;
    *result = Leader;
    *(result + 8) = v10;
  }

  return result;
}

uint64_t **std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::__emplace_unique_key_args<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>(uint64_t **a1, unint64_t a2, uint64_t a3)
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
      v5 = v3[6];
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

uint64_t llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 8) & 1) == 0)
  {
    Leader = *a1;
    if ((*(*v1 + 8) & 1) == 0)
    {
      Leader = llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader(Leader);
      *v1 = Leader;
    }

    return Leader;
  }

  return v1;
}

void mlir::ODIE::Compiler::Exec::ExecDialect::ExecDialect(mlir::ODIE::Compiler::Exec::ExecDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "exec";
  *(this + 2) = 4;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ExecDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E86380;
  mlir::MLIRContext::loadDialect<mlir::func::FuncDialect>(a2, a2, a3, a4);
  mlir::MLIRContext::loadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(*(this + 4), v5, v6, v7);
  mlir::ODIE::Compiler::Exec::ExecDialect::initialize(this);
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::func::FuncDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "func", 4, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "func", 4uLL, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::func::FuncDialect * mlir::MLIRContext::getOrLoadDialect<mlir::func::FuncDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "coreml", 6, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "coreml", 6uLL, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::CoreMLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::ExecDialect::~ExecDialect(mlir::ODIE::Compiler::Exec::ExecDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::getAffineMap(mlir::ODIE::Compiler::Exec::MemoryLayoutAttr *this, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *(this + 8);
  if (v3 == *(this + 2) + 1)
  {
    return mlir::makeStridedLinearLayoutMap(*(this + 7) + 8, v3 - 1, 0, *(**this + 32));
  }

  else
  {
    return mlir::AffineMap::getMultiDimIdentityMap(*(this + 2), *(**this + 32), a3);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::ExecOpAsmDialectInterface::getAlias(int a1, uint64_t a2, llvm::raw_ostream *this)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4 || !*(a2 + 32))
  {
    return 0;
  }

  v5 = llvm::raw_ostream::operator<<(this, *(a2 + 8), v4);
  v6 = *(v5 + 4);
  if (*(v5 + 3) - v6 > 7uLL)
  {
    *v6 = 0x747865746E6F635FLL;
    *(v5 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v5, "_context", 8uLL);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::Exec::CallingConventionsAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail29CallingConventionsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_22CallingConventionsAttrEJNS4_18CallingConventionsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage,mlir::ODIE::Compiler::Exec::CallingConventions>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::Exec::CallingConventions &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage,mlir::ODIE::Compiler::Exec::CallingConventions>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::Exec::CallingConventions &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::get(uint64_t *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3, unint64_t *a4, uint64_t a5, llvm::hashing::detail::hash_state *a6, uint64_t a7, int a8, llvm::hashing::detail::hash_state *a9, llvm::hashing::detail::hash_state *a10)
{
  v34 = *MEMORY[0x277D85DE8];
  v14 = *a1;
  v23[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id;
  v23[1] = a1;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail23MemoryLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16MemoryLayoutAttrEJNS_8ArrayRefIiEENSF_IxEESH_SH_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v26[1] = v23;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25[0] = a9;
  v25[1] = a10;
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  v32 = 0;
  v33 = 0xFF51AFD7ED558CCDLL;
  v28 = llvm::hashing::detail::hash_combine_range_impl<int const>(a2, a2 + 4 * a3, a3, a4);
  v29 = llvm::hashing::detail::hash_combine_range_impl<long long const>(a4, &a4[a5], v15, v16);
  v27 = 0;
  v19 = llvm::hashing::detail::hash_combine_range_impl<long long const>(a6, a6 + 8 * a7, v17, v18);
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v28, &v27, v30, v31, v19);
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>>(&v28, v27, v20, v31, v25);
  v27 = v24;
  v28 = v24;
  v29 = v26;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v14 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id, v21, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v27, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v28);
}

void mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(uint64_t a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v4[1] = &v5;
  v5 = v7;
  v6 = 0x600000000;
  v4[0] = a2;
  if ((*(*a2 + 392))(a2, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v4, 0, 0))
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v6)
    {
      llvm::SmallVectorImpl<long long>::operator=(a1, &v5);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v3;
  if (v5 != v7)
  {
    free(v5);
  }
}

void *std::optional<llvm::SmallVector<long long,6u>>::value_or[abi:nn200100]<llvm::SmallVector<long long,6u>>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 64);
  *result = result + 2;
  result[1] = 0x600000000;
  if (v3 == 1)
  {
    if (*(a2 + 8))
    {
      return llvm::SmallVectorImpl<long long>::operator=(result, a2);
    }
  }

  else if (*(a3 + 8))
  {
    return llvm::SmallVectorImpl<long long>::operator=(result, a3);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ExecDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v32, a2, 0);
  v57 = "calling_conventions";
  v58 = 19;
  if (v35[2])
  {
    goto LABEL_2;
  }

  v6 = v34;
  if (v34 == 19)
  {
    if (*v33 != 0x5F676E696C6C6163 || v33[1] != 0x69746E65766E6F63 || *(v33 + 11) != 0x736E6F69746E6576)
    {
      goto LABEL_17;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_102;
    }

    v19 = (*(*a2 + 40))(a2);
    v61 = 0;
    v62 = 0;
    if (!mlir::AsmParser::parseKeyword(a2, &v61))
    {
      goto LABEL_101;
    }

    if (v62 == 11)
    {
      if (*v61 != 0x7465725F79706F63 || *(v61 + 3) != 0x6E72757465725F79)
      {
        goto LABEL_93;
      }

      v21 = 1;
    }

    else
    {
      if (v62 != 12 || (*v61 == 0x65725F636F6C6C61 ? (v20 = *(v61 + 2) == 1852994932) : (v20 = 0), !v20))
      {
LABEL_93:
        v68 = 257;
        (*(*a2 + 24))(&v50, a2, v19, &v65);
        if (v50)
        {
          mlir::Diagnostic::operator<<<10ul>(&v51, "expected ");
          if (v50)
          {
            mlir::Diagnostic::operator<<<49ul>(&v51, "::mlir::ODIE::Compiler::Exec::CallingConventions");
            if (v50)
            {
              mlir::Diagnostic::operator<<<16ul>(&v51, " to be one of: ");
              if (v50)
              {
                mlir::Diagnostic::operator<<<13ul>(&v51, "alloc_return");
                if (v50)
                {
                  mlir::Diagnostic::operator<<<3ul>(&v51, ", ");
                  if (v50)
                  {
                    mlir::Diagnostic::operator<<<12ul>(&v51, "copy_return");
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
LABEL_101:
        v26 = (*(*a2 + 40))(a2);
        v68 = 259;
        (*(*a2 + 24))(&v50, a2, v26, &v65);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
        goto LABEL_102;
      }

      v21 = 0;
    }

    if ((*(*a2 + 168))(a2))
    {
      v29 = (*(*a2 + 32))(a2);
      v5 = mlir::ODIE::Compiler::Exec::CallingConventionsAttr::get(*v29, v21);
      goto LABEL_118;
    }

LABEL_102:
    v5 = 0;
LABEL_118:
    v35[0] = v5 != 0;
    *&v35[1] = 257;
    goto LABEL_3;
  }

  if (v34)
  {
LABEL_17:
    v36 = "memory_layout";
    v37 = 13;
    goto LABEL_18;
  }

  (*(*v32[0] + 648))(v32[0], &v57, 1);
  v36 = "memory_layout";
  v37 = 13;
  if (v35[2])
  {
LABEL_2:
    v5 = 0;
LABEL_3:
    v6 = 0;
    v7 = 0;
    goto LABEL_80;
  }

  v6 = v34;
  if (v34)
  {
LABEL_18:
    if (v6 != 13)
    {
      goto LABEL_79;
    }

    if (*v33 != 0x6C5F79726F6D656DLL || *(v33 + 5) != 0x74756F79616C5F79)
    {
      goto LABEL_79;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(v65) = 0;
    v69 = 0;
    LOBYTE(v61) = 0;
    v64 = 0;
    LOBYTE(v57) = 0;
    v60 = 0;
    LOBYTE(v54[0]) = 0;
    v56 = 0;
    v52[8] = 257;
    if (((*(*a2 + 400))(a2, "ordering", 8, &v50) & 1) == 0 || ((*(*a2 + 104))(a2) & 1) == 0 || ((*(*a2 + 280))(a2) & 1) == 0)
    {
      goto LABEL_105;
    }

    mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(a2, &v50);
    std::__optional_storage_base<llvm::SmallVector<int,12u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<int,12u>,false>>(&v65, &v50);
    if (v53 == 1 && v50 != v52)
    {
      free(v50);
    }

    v11 = *a2;
    if (v69)
    {
      if (((*(v11 + 296))(a2) & 1) == 0)
      {
        goto LABEL_105;
      }

      if (((*(*a2 + 408))(a2, "alignments", 10) & 1) == 0)
      {
LABEL_40:
        if (((*(*a2 + 408))(a2, "interleave", 10) & 1) == 0)
        {
          goto LABEL_55;
        }

        if ((*(*a2 + 104))(a2) & 1) != 0 && ((*(*a2 + 280))(a2))
        {
          (*(*a2 + 40))(a2);
          if (v60 == 1 && v57 != v59)
          {
            free(v57);
          }

          v57 = v59;
          v58 = 0x600000000;
          v60 = 1;
          if ((*(*a2 + 600))(a2, &v57, 1, 0) & 1) != 0 && ((*(*a2 + 296))(a2))
          {
LABEL_55:
            if (((*(*a2 + 408))(a2, "strides", 7) & 1) == 0)
            {
              goto LABEL_56;
            }

            if ((*(*a2 + 104))(a2) & 1) != 0 && ((*(*a2 + 280))(a2))
            {
              (*(*a2 + 40))(a2);
              if (v56 == 1 && v54[0] != v55)
              {
                free(v54[0]);
              }

              v54[0] = v55;
              v54[1] = 0x600000000;
              v56 = 1;
              if ((*(*a2 + 600))(a2, v54, 1, 0) & 1) != 0 && ((*(*a2 + 296))(a2))
              {
LABEL_56:
                v13 = *(*(*a2 + 32))(a2);
                v30 = v66;
                v31 = v65;
                v48[0] = v49;
                v48[1] = 0x600000000;
                std::optional<llvm::SmallVector<long long,6u>>::value_or[abi:nn200100]<llvm::SmallVector<long long,6u>>(&v50, &v61, v48);
                v14 = v50;
                v15 = v51;
                v43[0] = v44;
                v43[1] = 0x600000000;
                std::optional<llvm::SmallVector<long long,6u>>::value_or[abi:nn200100]<llvm::SmallVector<long long,6u>>(&v45, &v57, v43);
                v16 = v45;
                v17 = v46;
                v38[0] = v39;
                v38[1] = 0x600000000;
                std::optional<llvm::SmallVector<long long,6u>>::value_or[abi:nn200100]<llvm::SmallVector<long long,6u>>(&v40, v54, v38);
                v5 = mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::get(v13, v31, v30, v14, v15, v16, v17, v18, v40, v41);
                if (v40 != &v42)
                {
                  free(v40);
                }

                if (v38[0] != v39)
                {
                  free(v38[0]);
                }

                if (v45 != &v47)
                {
                  free(v45);
                }

                if (v43[0] != v44)
                {
                  free(v43[0]);
                }

                if (v50 != v52)
                {
                  free(v50);
                }

                if (v48[0] != v49)
                {
                  free(v48[0]);
                }

                goto LABEL_106;
              }
            }
          }
        }

LABEL_105:
        v5 = 0;
LABEL_106:
        if (v56 == 1 && v54[0] != v55)
        {
          free(v54[0]);
        }

        if (v60 == 1 && v57 != v59)
        {
          free(v57);
        }

        if (v64 == 1 && v61 != v63)
        {
          free(v61);
        }

        if (v69 == 1 && v65 != &v67)
        {
          free(v65);
        }

        goto LABEL_118;
      }

      if (((*(*a2 + 104))(a2) & 1) == 0 || ((*(*a2 + 280))(a2) & 1) == 0)
      {
        goto LABEL_105;
      }

      mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(&v50, a2);
      std::__optional_storage_base<llvm::SmallVector<long long,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<long long,6u>,false>>(&v61, &v50);
      if (v53 == 1 && v50 != v52)
      {
        free(v50);
      }

      v12 = *a2;
      if (v64)
      {
        if (((*(v12 + 296))(a2) & 1) == 0)
        {
          goto LABEL_105;
        }

        goto LABEL_40;
      }

      v27 = (*(v12 + 40))(a2);
    }

    else
    {
      v27 = (*(v11 + 40))(a2);
    }

    v48[0] = v28;
    v49[8] = 259;
    (*(*a2 + 24))(&v50, a2, v27, v48);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    goto LABEL_105;
  }

  (*(*v32[0] + 648))(v32[0], &v36, 1);
  if (v35[2])
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_80;
  }

  v6 = v34;
LABEL_79:
  v5 = 0;
  v7 = v33;
  *v35 = 0;
  v35[2] = 1;
LABEL_80:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v32) & 0x100) == 0)
  {
    v63[8] = 257;
    (*(*a2 + 24))(&v50, a2, v4, &v61);
    if (v50)
    {
      if (v50)
      {
        v68 = 261;
        v65 = v7;
        v66 = v6;
        mlir::Diagnostic::operator<<(&v51, &v65);
        if (v50)
        {
          if (v50)
          {
            v22 = *(a1 + 8);
            v23 = *(a1 + 16);
            v68 = 261;
            v65 = v22;
            v66 = v23;
            mlir::Diagnostic::operator<<(&v51, &v65);
            if (v50)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    return 0;
  }

  return v5;
}

void mlir::ODIE::Compiler::Exec::ExecDialect::printAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 0x12)
    {
      *(v9 + 15) = 1936617321;
      *v9 = *"calling_conventions";
      *(v8 + 4) += 19;
    }

    else
    {
      llvm::raw_ostream::write(v8, "calling_conventions", 0x13uLL);
    }

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, "<", 1uLL);
    }

    else
    {
      *v11 = 60;
      ++*(v10 + 4);
    }

    v12 = *(a2 + 8);
    v13 = &byte_25D0A27DF;
    v14 = 11;
    if (v12 == 1)
    {
      v13 = "copy_return";
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = 12;
    }

    if (v12)
    {
      v16 = v13;
    }

    else
    {
      v16 = "alloc_return";
    }

    v17 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v17, v16, v15);
    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) != v19)
    {
      v20 = 62;
LABEL_114:
      *v19 = v20;
      ++*(v18 + 4);
      return;
    }

    llvm::raw_ostream::write(v18, ">", 1uLL);
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
  {
    v6 = (*(*a3 + 16))(a3);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 0xCuLL)
    {
      qmemcpy(v7, "memory_layout", 13);
      *(v6 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v6, "memory_layout", 0xDuLL);
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (v22 >= *(v21 + 3))
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      *(v21 + 4) = v22 + 1;
      *v22 = 32;
    }

    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (*(v23 + 3) - v24 > 7uLL)
    {
      *v24 = 0x676E69726564726FLL;
      *(v23 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v23, "ordering", 8uLL);
    }

    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (*(v25 + 3) == v26)
    {
      llvm::raw_ostream::write(v25, ":", 1uLL);
    }

    else
    {
      *v26 = 58;
      ++*(v25 + 4);
    }

    v27 = (*(*a3 + 16))(a3);
    v28 = *(v27 + 4);
    if (v28 >= *(v27 + 3))
    {
      llvm::raw_ostream::write(v27, 32);
    }

    else
    {
      *(v27 + 4) = v28 + 1;
      *v28 = 32;
    }

    v29 = (*(*a3 + 16))(a3);
    v30 = *(v29 + 4);
    if (*(v29 + 3) == v30)
    {
      llvm::raw_ostream::write(v29, "(", 1uLL);
    }

    else
    {
      *v30 = 40;
      ++*(v29 + 4);
    }

    v31 = *(a2 + 16);
    if (v31)
    {
      v32 = *(a2 + 8);
      v33 = (*(*a3 + 16))(a3);
      llvm::write_integer(v33, *v32, 0, 0);
      if (v31 != 1)
      {
        v34 = v32 + 1;
        v35 = 4 * v31 - 4;
        do
        {
          v36 = (*(*a3 + 16))(a3);
          v37 = *(v36 + 4);
          if (*(v36 + 3) - v37 > 1uLL)
          {
            *v37 = 8236;
            *(v36 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v36, ", ", 2uLL);
          }

          v38 = (*(*a3 + 16))(a3);
          v39 = *v34++;
          llvm::write_integer(v38, v39, 0, 0);
          v35 -= 4;
        }

        while (v35);
      }
    }

    v40 = (*(*a3 + 16))(a3);
    v41 = *(v40 + 4);
    if (*(v40 + 3) == v41)
    {
      llvm::raw_ostream::write(v40, ")", 1uLL);
    }

    else
    {
      *v41 = 41;
      ++*(v40 + 4);
    }

    if (*(a2 + 32))
    {
      v42 = (*(*a3 + 16))(a3);
      v43 = *(v42 + 4);
      if (v43 >= *(v42 + 3))
      {
        llvm::raw_ostream::write(v42, 32);
      }

      else
      {
        *(v42 + 4) = v43 + 1;
        *v43 = 32;
      }

      v44 = (*(*a3 + 16))(a3);
      v45 = *(v44 + 4);
      if ((*(v44 + 3) - v45) > 9)
      {
        *(v45 + 8) = 29556;
        *v45 = *"alignments";
        *(v44 + 4) += 10;
      }

      else
      {
        llvm::raw_ostream::write(v44, "alignments", 0xAuLL);
      }

      v46 = (*(*a3 + 16))(a3);
      v47 = *(v46 + 4);
      if (*(v46 + 3) == v47)
      {
        llvm::raw_ostream::write(v46, ":", 1uLL);
      }

      else
      {
        *v47 = 58;
        ++*(v46 + 4);
      }

      v48 = (*(*a3 + 16))(a3);
      v49 = *(v48 + 4);
      if (v49 >= *(v48 + 3))
      {
        llvm::raw_ostream::write(v48, 32);
      }

      else
      {
        *(v48 + 4) = v49 + 1;
        *v49 = 32;
      }

      v50 = (*(*a3 + 16))(a3);
      v51 = *(v50 + 4);
      if (*(v50 + 3) == v51)
      {
        llvm::raw_ostream::write(v50, "(", 1uLL);
      }

      else
      {
        *v51 = 40;
        ++*(v50 + 4);
      }

      v52 = *(a2 + 32);
      if (v52)
      {
        v53 = *(a2 + 24);
        v54 = (*(*a3 + 16))(a3);
        llvm::write_integer(v54, *v53, 0, 0);
        if (v52 != 1)
        {
          v55 = v53 + 1;
          v56 = 8 * v52 - 8;
          do
          {
            v57 = (*(*a3 + 16))(a3);
            v58 = *(v57 + 4);
            if (*(v57 + 3) - v58 > 1uLL)
            {
              *v58 = 8236;
              *(v57 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v57, ", ", 2uLL);
            }

            v59 = (*(*a3 + 16))(a3);
            v60 = *v55++;
            llvm::write_integer(v59, v60, 0, 0);
            v56 -= 8;
          }

          while (v56);
        }
      }

      v61 = (*(*a3 + 16))(a3);
      v62 = *(v61 + 4);
      if (*(v61 + 3) == v62)
      {
        llvm::raw_ostream::write(v61, ")", 1uLL);
      }

      else
      {
        *v62 = 41;
        ++*(v61 + 4);
      }
    }

    if (*(a2 + 48))
    {
      v63 = (*(*a3 + 16))(a3);
      v64 = *(v63 + 4);
      if (v64 >= *(v63 + 3))
      {
        llvm::raw_ostream::write(v63, 32);
      }

      else
      {
        *(v63 + 4) = v64 + 1;
        *v64 = 32;
      }

      v65 = (*(*a3 + 16))(a3);
      v66 = *(v65 + 4);
      if ((*(v65 + 3) - v66) > 9)
      {
        *(v66 + 8) = 25974;
        *v66 = *"interleave";
        *(v65 + 4) += 10;
      }

      else
      {
        llvm::raw_ostream::write(v65, "interleave", 0xAuLL);
      }

      v67 = (*(*a3 + 16))(a3);
      v68 = *(v67 + 4);
      if (*(v67 + 3) == v68)
      {
        llvm::raw_ostream::write(v67, ":", 1uLL);
      }

      else
      {
        *v68 = 58;
        ++*(v67 + 4);
      }

      v69 = (*(*a3 + 16))(a3);
      v70 = *(v69 + 4);
      if (v70 >= *(v69 + 3))
      {
        llvm::raw_ostream::write(v69, 32);
      }

      else
      {
        *(v69 + 4) = v70 + 1;
        *v70 = 32;
      }

      v71 = (*(*a3 + 16))(a3);
      v72 = *(v71 + 4);
      if (*(v71 + 3) == v72)
      {
        llvm::raw_ostream::write(v71, "(", 1uLL);
      }

      else
      {
        *v72 = 40;
        ++*(v71 + 4);
      }

      v87 = *(a2 + 40);
      v73 = (*(*a3 + 16))(a3);
      mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(v73, &v87);
      v74 = (*(*a3 + 16))(a3);
      v75 = *(v74 + 4);
      if (*(v74 + 3) == v75)
      {
        llvm::raw_ostream::write(v74, ")", 1uLL);
      }

      else
      {
        *v75 = 41;
        ++*(v74 + 4);
      }
    }

    if (*(a2 + 64))
    {
      v76 = (*(*a3 + 16))(a3);
      v77 = *(v76 + 4);
      if (v77 >= *(v76 + 3))
      {
        llvm::raw_ostream::write(v76, 32);
      }

      else
      {
        *(v76 + 4) = v77 + 1;
        *v77 = 32;
      }

      v78 = (*(*a3 + 16))(a3);
      v79 = *(v78 + 4);
      if (*(v78 + 3) - v79 > 6uLL)
      {
        *(v79 + 3) = 1936024681;
        *v79 = 1769108595;
        *(v78 + 4) += 7;
      }

      else
      {
        llvm::raw_ostream::write(v78, "strides", 7uLL);
      }

      v80 = (*(*a3 + 16))(a3);
      v81 = *(v80 + 4);
      if (*(v80 + 3) == v81)
      {
        llvm::raw_ostream::write(v80, ":", 1uLL);
      }

      else
      {
        *v81 = 58;
        ++*(v80 + 4);
      }

      v82 = (*(*a3 + 16))(a3);
      v83 = *(v82 + 4);
      if (v83 >= *(v82 + 3))
      {
        llvm::raw_ostream::write(v82, 32);
      }

      else
      {
        *(v82 + 4) = v83 + 1;
        *v83 = 32;
      }

      v84 = (*(*a3 + 16))(a3);
      v85 = *(v84 + 4);
      if (*(v84 + 3) == v85)
      {
        llvm::raw_ostream::write(v84, "(", 1uLL);
      }

      else
      {
        *v85 = 40;
        ++*(v84 + 4);
      }

      v87 = *(a2 + 56);
      v86 = (*(*a3 + 16))(a3);
      mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(v86, &v87);
      v18 = (*(*a3 + 16))(a3);
      v19 = *(v18 + 4);
      if (*(v18 + 3) == v19)
      {
        llvm::raw_ostream::write(v18, ")", 1uLL);
        return;
      }

      v20 = 41;
      goto LABEL_114;
    }
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.alloc_const", 0x10, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocConstOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86450;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::verifySymbolUses;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

__guard mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[241];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>();
    unk_27FC197A0 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::OutputIntentOpInterface]";
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

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::isInferenceInvariant;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0B8))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface>();
    _MergedGlobals_32 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F0B8);
  }

  return _MergedGlobals_32;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC1F0D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0D0))
  {
    qword_27FC1F0C0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface>();
    *algn_27FC1F0C8 = v1;
    __cxa_guard_release(&qword_27FC1F0D0);
  }

  return qword_27FC1F0C0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface]";
  v6 = 122;
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0E0))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>>();
    qword_27FC1F0D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F0E0);
  }

  return qword_27FC1F0D8;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F0F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0F8))
  {
    qword_27FC1F0E8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>>();
    unk_27FC1F0F0 = v1;
    __cxa_guard_release(&qword_27FC1F0F8);
  }

  return qword_27FC1F0E8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F108))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>>();
    qword_27FC1F100 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F108);
  }

  return qword_27FC1F100;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F120))
  {
    qword_27FC1F110 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>>();
    *algn_27FC1F118 = v1;
    __cxa_guard_release(&qword_27FC1F120);
  }

  return qword_27FC1F110;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<Empty>]";
  v6 = 146;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::AllocConstOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::Exec::AllocConstOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.alloc", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86518;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>::isInferenceInvariant;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::AllocOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::Exec::AllocOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.alloc_view", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E865E0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v3, v2);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::getSpeculatability;
  v5 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::getEffects;
  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v7, v6);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::getOutputIntents;
  v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v9, v8);
  v10 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v10 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::isInferenceInvariant;
  v11 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v11, v10);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[11] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::AllocViewOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v8 = a1, mlir::ODIE::Compiler::Exec::AllocViewOp::verifyInvariantsImpl(&v8)))
  {
    v8 = a1;
    v6 = mlir::ODIE::Compiler::Exec::AllocViewOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::RegionBranchOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.async.await", 0x10, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E866A8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::RegionBranchOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v3, v2);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getSpeculatability;
  v5 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getEffects;
  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v7, v6);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getOutputIntents;
  v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v9, v8);
  v10 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v10 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getEntrySuccessorOperands;
  v10[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getEntrySuccessorRegions;
  v10[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getSuccessorRegions;
  v10[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getRegionInvocationBounds;
  v10[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::areTypesCompatible;
  v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v11, v10);
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 44) & 0x800000) != 0)
  {
    return *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[11] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::AsyncAwaitOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && ((*(a1 + 46) & 0x80) == 0 ? (v4 = 0) : (v4 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v4)))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::Exec::AsyncAwaitOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.call", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86770;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

double mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::copyProperties(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::isEscaping;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::getDpsInitsMutable;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v10[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1F130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F130))
  {
    v8 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait>(void)::Empty>>();
    qword_27FC1F128 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC1F130);
  }

  v10[8] = qword_27FC1F128;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[9] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F148))
  {
    qword_27FC1F138 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait>(void)::Empty>>();
    unk_27FC1F140 = v1;
    __cxa_guard_release(&qword_27FC1F148);
  }

  return qword_27FC1F138;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F158))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>>();
    qword_27FC1F150 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F158);
  }

  return qword_27FC1F150;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F170))
  {
    qword_27FC1F160 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>>();
    *algn_27FC1F168 = v1;
    __cxa_guard_release(&qword_27FC1F170);
  }

  return qword_27FC1F160;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<Empty>]";
  v6 = 118;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::CallOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && ((*(a1 + 46) & 0x80) == 0 ? (v4 = 0) : (v4 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v4) && (v7 = a1, (mlir::ODIE::Compiler::Exec::CallOp::verifyInvariantsImpl(&v7))))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::Exec::CallOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.const", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86838;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

double mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::copyProperties(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isDeclaration;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[11] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1F180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F180))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl>(void)::Empty>>();
    qword_27FC1F178 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC1F180);
  }

  v10[4] = qword_27FC1F178;
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[10] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F198))
  {
    qword_27FC1F188 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl>(void)::Empty>>();
    unk_27FC1F190 = v1;
    __cxa_guard_release(&qword_27FC1F198);
  }

  return qword_27FC1F188;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::ConstOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v22[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 2);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
  {
    v19 = 257;
    mlir::Operation::emitOpError(&v21, a1, v18);
    if (v21)
    {
      mlir::Diagnostic::operator<<<19ul>(v22, "expects parent op ");
    }

    v17 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v21, &v17);
    v20[0] = "builtin.module";
    v20[1] = 14;
    v16[0] = v20;
    v16[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v16);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    if (v12)
    {
      return 0;
    }
  }

  v21 = a1;
  return mlir::ODIE::Compiler::Exec::ConstOp::verifyInvariantsImpl(&v21) && mlir::detail::SymbolOpInterfaceTrait<mlir::ODIE::Compiler::Exec::ConstOp>::verifyTrait(a1, v13);
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::ODIE::Compiler::Exec::ConstOp>::verifyTrait(mlir::detail *a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((mlir::detail::verifySymbol(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 2);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
  if (!v4)
  {
    return 1;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 1;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(v5 + 48) + 32))(*(v5 + 48), v6))
  {
    return 1;
  }

  v9 = *(*(v5 + 48) + 16);
  v7 = 1;
  if (v9 != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v10 = "symbol's parent must have the SymbolTable trait";
    v11 = 259;
    mlir::Operation::emitOpError(v12, a1, &v10);
    v7 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v7;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.context_extract", 0x14, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextExtractOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86900;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::ContextExtractOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::Exec::ContextExtractOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.context_insert", 0x13, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextInsertOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E869C8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::getOutputIntents(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 36);
  v3 = *(***(a2 + 24) + 32);
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v3, 0);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::assign(&v7, v2, v4);
  v5 = mlir::ArrayAttr::get(v3, v7, v8);
  if (v7 != v9)
  {
    free(v7);
  }

  return v5;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F1A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1A8))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>>();
    qword_27FC1F1A0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F1A8);
  }

  return qword_27FC1F1A0;
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F1C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1C0))
  {
    qword_27FC1F1B0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>>();
    *algn_27FC1F1B8 = v1;
    __cxa_guard_release(&qword_27FC1F1C0);
  }

  return qword_27FC1F1B0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<Empty>]";
  v6 = 145;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::ContextInsertOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::Exec::ContextInsertOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.copy", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86A90;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v3, v2);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getEffects;
  v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getDpsInitsMutable;
  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v7, v6);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getOutputIntents;
  v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v9, v8);
  v10 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::isCompatibleReturnTypes;
  v11 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v11, v10);
}

double mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 48);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = (v2 - v4 + 32) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getOutputIntents(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 36);
  v3 = *(***(a2 + 24) + 32);
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v3, 0);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::assign(&v7, v2, v4);
  v5 = mlir::ArrayAttr::get(v3, v7, v8);
  if (v7 != v9)
  {
    free(v7);
  }

  return v5;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::ODIE::Compiler::Exec::CopyOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "exec.copy";
      v22 = 9;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[12] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::CopyOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v8 = a1, mlir::ODIE::Compiler::Exec::CopyOp::verifyInvariantsImpl(&v8)))
  {
    v6 = mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::ODIE::Compiler::Exec::verifyDPSOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.get_type", 0xD, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::GetTypeOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86B58;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::isInferenceInvariant;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[11] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1F1D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1D0))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl>(void)::Empty>>();
    qword_27FC1F1C8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC1F1D0);
  }

  v10[2] = qword_27FC1F1C8;
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[10] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1E8))
  {
    qword_27FC1F1D8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl>(void)::Empty>>();
    unk_27FC1F1E0 = v1;
    __cxa_guard_release(&qword_27FC1F1E8);
  }

  return qword_27FC1F1D8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<Empty>]";
  v6 = 142;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::GetTypeOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::Exec::GetTypeOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.infer_type", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InferTypeOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86C20;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::isInferenceInvariant;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[7] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::InferTypeOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    v6 = a1;
    v4 = mlir::ODIE::Compiler::Exec::InferTypeOp::verifyInvariantsImpl(&v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::InitOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.init", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InitOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86CE8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::InitOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v3, v2);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::getSpeculatability;
  v5 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::getEffects;
  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v7, v6);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::getOutputIntents;
  v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v9, v8);
  v10 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v10 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::isInferenceInvariant;
  v11 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v11, v10);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[11] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::InitOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::Exec::InitOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.is_defined", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsDefinedOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86DB0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::inferReturnTypes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = mlir::IntegerType::get(a1, 1, 0);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::refineReturnTypes(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v19, 1uLL);
  v15 = mlir::IntegerType::get(a1, 1, 0);
  *v19 = v15;
  v16 = *(a11 + 8);
  v17 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
  v24 = v20;
  v22[0] = v17;
  v22[1] = v16;
  if (!llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22))
  {
    v23 = "exec.is_defined";
    v24 = 15;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v14;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[10] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[9] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  return v4 == a1;
}

__guard mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[276];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>();
    *algn_27FC198B8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<Empty>]";
  v6 = 123;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::IsDefinedOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    v6 = mlir::ODIE::Compiler::Exec::IsDefinedOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::Model(void *a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::readProperties;
  v4[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::writeProperties;
  v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v9, v5, v4);
  v6 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v6 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getEntrySuccessorOperands;
  v6[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getEntrySuccessorRegions;
  v6[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getSuccessorRegions;
  v6[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getRegionInvocationBounds;
  v6[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::areTypesCompatible;
  v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v9, v7, v6);
  mlir::OperationName::Impl::Impl(a1, "exec.isolated_group", 0x13, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id, v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v9);
  *a1 = &unk_286E86E78;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    return *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::IsolatedGroupOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    v6 = a1;
    return mlir::ODIE::Compiler::Exec::IsolatedGroupOp::verifyInvariantsImpl(&v6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(a1, a2))
  {
    v4 = mlir::detail::verifyTypesAlongControlFlowEdges(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::LoadOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.load", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::LoadOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86F40;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::LoadOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::LoadOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::Exec::LoadOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::Model(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v4[0] = v5;
  v4[1] = 0x300000000;
  mlir::OperationName::Impl::Impl(a1, "exec.undef", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::UndefOp,void>::id, v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v4);
  *a1 = &unk_286E87008;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[5] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::UndefOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    if (*(a1 + 9))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(a1, (*(v6 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::IsTerminator<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ReturnLike<mlir::ODIE::Compiler::Exec::YieldOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "exec.yield", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E870D0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::IsTerminator<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ReturnLike<mlir::ODIE::Compiler::Exec::YieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getSuccessorRegions;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v3 && *(v3 + 16))
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(v3 + 16));
    }

    else
    {
      InterfaceFor = 0;
    }
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(InterfaceFor + 16);

  return v5();
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[12] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1F1F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1F8))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl>(void)::Empty>>();
    qword_27FC1F1F0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC1F1F8);
  }

  v10[4] = qword_27FC1F1F0;
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v10[10] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[11] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F210))
  {
    qword_27FC1F200 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl>(void)::Empty>>();
    *algn_27FC1F208 = v1;
    __cxa_guard_release(&qword_27FC1F210);
  }

  return qword_27FC1F200;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp, mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<Empty>]";
  v6 = 186;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::YieldOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v23[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_18;
  }

  if ((v5 = *(a1 + 2)) == 0 || (v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v7 = *(v6 + 16)) == 0 || ((v8 = *(*(v7 + 48) + 16), v8 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id) ? (v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,void>::id) : (v9 = 1), !v9))
  {
    v20 = 257;
    mlir::Operation::emitOpError(&v22, a1, v19);
    if (v22)
    {
      mlir::Diagnostic::operator<<<19ul>(v23, "expects parent op ");
    }

    v18 = "to be one of '";
    v10 = mlir::InFlightDiagnostic::operator<<<char const*>(&v22, &v18);
    v21[0] = xmmword_2799BDE08;
    v21[1] = *&off_2799BDE18;
    v17[0] = v21;
    v17[1] = 2;
    v11 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v10, v17);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<2ul>((v11 + 1), "'");
    }

    v13 = *(v12 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    if (v13)
    {
      goto LABEL_18;
    }
  }

  v22 = a1;
  if (mlir::ODIE::Compiler::Exec::YieldOp::verifyInvariantsImpl(&v22))
  {
    IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v14);
  }

  else
  {
LABEL_18:
    IsTerminator = 0;
  }

  return IsTerminator & 1;
}

void mlir::Dialect::addAttribute<mlir::ODIE::Compiler::Exec::CallingConventionsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ODIE::Compiler::Exec::CallingConventionsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id, 0, v2);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::Exec::CallingConventionsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,mlir::Attribute,mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec22CallingConventionsAttrES2_NSF_6detail29CallingConventionsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec22CallingConventionsAttrES2_NSE_6detail29CallingConventionsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id, "exec.calling_conventions", 24);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v4 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::getAffineMap;
  v4[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::isIdentity;
  v4[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::verifyLayout;
  v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,mlir::Attribute,mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec16MemoryLayoutAttrES2_NSF_6detail23MemoryLayoutAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec16MemoryLayoutAttrES2_NSE_6detail23MemoryLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id, "exec.memory_layout", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::isIdentity(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v3 = 0;
    v4 = 4 * v2;
    while (v3 == *(a2[1] + 4 * v3))
    {
      ++v3;
      v4 -= 4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  if (a2[4] == v2 || a2[8] == v2 + 1)
  {
    return 0;
  }

  return a2[6] != v2;
}

BOOL mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::verifyLayout(int a1, mlir::ODIE::Compiler::Exec::MemoryLayoutAttr *this, mlir::MLIRContext *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a6)
{
  AffineMap = mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::getAffineMap(this, this, a3);

  return mlir::detail::verifyAffineMapAsLayout(AffineMap, a3, a4, a5, a6);
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,mlir::Attribute,mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec16MemoryLayoutAttrES2_NSE_6detail23MemoryLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t *a2)
{
  v47[6] = *MEMORY[0x277D85DE8];
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[8];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<int>,void>::replace(a2[1], a2[2], &v15);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v3, v4, &v45);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v5, v6, &v42);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v7, v8, &v39);
  v27 = v29;
  v28 = 0xC00000000;
  if (v16[0])
  {
    llvm::SmallVectorImpl<int>::operator=(&v27, &v15);
  }

  v30 = v32;
  v31 = 0x600000000;
  if (v46)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v30, &v45);
  }

  v33 = v35;
  v34 = 0x600000000;
  if (v43)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v33, &v42);
  }

  v36 = v38;
  v37 = 0x600000000;
  if (v40)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v36, &v39);
  }

  if (v39 != &v41)
  {
    free(v39);
  }

  if (v42 != &v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *(**a2 + 32);
  v15 = v17;
  *v16 = 0xC00000000;
  if (v28)
  {
    llvm::SmallVectorImpl<int>::operator=(&v15, &v27);
  }

  v18 = v20;
  *v19 = 0x600000000;
  if (v31)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v18, &v30);
  }

  v21 = v23;
  *v22 = 0x600000000;
  if (v34)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v21, &v33);
  }

  v24 = v26;
  v25 = 0x600000000;
  if (v37)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v24, &v36);
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v12 = 0;
    v11 = v26;
  }

  v13 = mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::get(v10, v15, v16[0], v18, v19[0], v21, v22[0], v9, v11, v12);
  if (v24 != v26)
  {
    free(v24);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return v13;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage,mlir::ODIE::Compiler::Exec::CallingConventions>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::Exec::CallingConventions &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail29CallingConventionsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_22CallingConventionsAttrEJNS4_18CallingConventionsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 4 * v3) && (v5 = *(a2 + 32), v5 == *(v2 + 24)) && !memcmp(*(a2 + 24), *(v2 + 16), 8 * v5) && (v6 = *(a2 + 48), v6 == *(v2 + 40)) && !memcmp(*(a2 + 40), *(v2 + 32), 8 * v6) && (v7 = *(a2 + 64), v7 == *(v2 + 56)))
  {
    return memcmp(*(a2 + 56), *(v2 + 48), 8 * v7) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  v8 = *(*a1 + 48);
  v9 = *(*a1 + 56);
  v10 = mlir::StorageUniquer::StorageAllocator::copyInto<int>(a2, **a1, *(*a1 + 8));
  v12 = v11;
  v13 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, v4, v5);
  v15 = v14;
  v16 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, v6, v7);
  v18 = v17;
  v19 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, v8, v9);
  v21 = v20;
  v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x48uLL, 3);
  *v22 = 0;
  v22[1] = v10;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v15;
  v22[5] = v16;
  v22[6] = v18;
  v22[7] = v19;
  v22[8] = v21;
  v23 = *(a1 + 8);
  if (*v23)
  {
    (*v23)(*(v23 + 8), v22);
  }

  return v22;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail23MemoryLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16MemoryLayoutAttrEJNS_8ArrayRefIiEENSF_IxEESH_SH_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v4 = 0;
  if ((mlir::AsmParser::parseInteger<long long>(v2, &v4) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<long long,true>::push_back(a1[1], v4);
  return 1;
}

uint64_t mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "name", 4uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v10[3])
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "name";
  v10[1] = 4;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
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

unint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701667182)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void *mlir::ODIE::Compiler::Exec::AllocConstOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, void *a4)
{
  if (a3 == 4 && *a2 == 1701667182)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      if (a4[3])
      {
        v4 = 0;
      }

      else
      {
        v4 = a4;
      }
    }

    else
    {
      v4 = 0;
    }

    *result = v4;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AllocConstOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::AllocConstOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !a1[3])
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<64ul>(v12, "' failed to satisfy constraint: flat symbol reference attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AllocConstOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, const char *a4, const char *a5)
{
  v10 = a3;
  v11[0] = a4;
  v6 = *a1;
  v12 = 261;
  v11[1] = a5;
  v7 = mlir::StringAttr::get(v6, v11, a3);
  v9 = mlir::SymbolRefAttr::get(v7, 0, 0, v8);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>(a2) = v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v10, v11);
}

BOOL mlir::ODIE::Compiler::Exec::AllocConstOp::verifyInvariantsImpl(unsigned int **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v9[0] = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v9))
    {
      if ((*this)[9])
      {
        v4 = *this - 4;
      }

      else
      {
        v4 = 0;
      }

      return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = "requires attribute 'name'";
    v8 = 259;
    mlir::Operation::emitOpError(v9, v2, &v7);
    v5 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v29[25] = *MEMORY[0x277D85DE8];
  v27 = a2;
  v26 = a5;
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v11 = *(a2 + 2) - 1;
    v12 = v11 > 0x3F;
    v13 = (1 << v11) & 0x8000000080000001;
    if (!v12 && v13 != 0)
    {
      return 1;
    }
  }

  else
  {
    if (v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      return 1;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v9 = llvm::cast<mlir::ShapedType,mlir::Type>(&v27);
      (*(v10 + 8))(v10, v9);
      return 1;
    }
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    return 1;
  }

  v25 = 261;
  v24[0] = a3;
  v24[1] = a4;
  mlir::Operation::emitOpError(&v28, a1, v24);
  if (v28)
  {
    mlir::Diagnostic::operator<<<3ul>(v29, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v28, &v26);
  v21 = v20;
  if (*v20)
  {
    mlir::Diagnostic::operator<<<340ul>((v20 + 1));
    if (*v21)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>((v21 + 1), &v27);
    }
  }

  v22 = (v21[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  return v22;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::parse(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v13, v5))
  {
    return 0;
  }

  if (v13)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>(a2);
    *v7 = v13;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10[0] = 0;
  if (((*(*a1 + 536))(a1, v10) & 1) == 0)
  {
    return 0;
  }

  __src = v10[0];
  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v10[0] = a1;
  v10[1] = &v11;
  v10[2] = a2;
  if (!mlir::ODIE::Compiler::Exec::AllocConstOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::AllocConstOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10))
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v13);
  return 1;
}

void mlir::ODIE::Compiler::Exec::AllocConstOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = *this - 16;
  if (!*(*this + 9))
  {
    v12 = 0;
  }

  (*(*a2 + 32))(a2, *(v12 + 1) & 0xFFFFFFFFFFFFFFF8);
  v14 = v16;
  v15 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v14, "name", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, v15);
  if (v14 != v16)
  {
    free(v14);
  }
}

void mlir::ODIE::Compiler::Exec::AllocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  if (a4)
  {
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::Exec::AllocOp::verifyInvariantsImpl(mlir::ODIE::Compiler::Exec::AllocOp *this)
{
  v13[26] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
LABEL_9:
    if (*(v2 + 36))
    {
      v7 = v2 - 16;
    }

    else
    {
      v7 = 0;
    }

    return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(v2, (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  v3 = *(v2 + 68);
  if (v3 < 2)
  {
    if (v3)
    {
      v6 = 0;
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps2(v2, *(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
      {
        return v6;
      }

      v2 = *this;
    }

    goto LABEL_9;
  }

  v10 = "operand group starting at #";
  v11 = 259;
  mlir::Operation::emitOpError(v13, v2, &v10);
  v4 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v13, &v12);
  v5 = v4;
  if (*v4)
  {
    mlir::Diagnostic::operator<<<37ul>((v4 + 1), " requires 0 or 1 element, but found ");
  }

  v9 = v3;
  v6 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v5, &v9) + 200) & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  return v6;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps2(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id)
  {
    return 1;
  }

  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  mlir::Operation::emitOpError(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<3ul>(v19, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<54ul>((v6 + 1), " must be A type reified as a runtime value., but got ");
    if (*v7)
    {
      v16 = 4;
      v17 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v16, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v11 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v11;
}

BOOL mlir::ODIE::Compiler::Exec::AllocOp::parse(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x400000000;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    goto LABEL_10;
  }

  (*(*a1 + 40))(a1);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v4 = (*(*a1 + 712))(a1, &v13, 1);
  if ((v4 & 0x100) != 0)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v16, &v13, 1);
    v6 = v16 + 32 * v17;
    v7 = v5[1];
    *v6 = *v5;
    v6[1] = v7;
    LODWORD(v17) = v17 + 1;
  }

  if ((*(*a1 + 296))(a1))
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
    {
      v12 = 0;
      if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v12))
      {
        v8 = *(v12 + 8);
        v13 = *(v12 + 16);
        v14 = v8;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v13 + 8 * v8), (v13 + 8 * v8 + 8 * *(v12 + 12)));
        v9 = (*(*a1 + 16))(a1);
        v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, &v16, &v13, v9, a2 + 16);
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  v10 = 0;
LABEL_11:
  if (v16 != v18)
  {
    free(v16);
  }

  return v10;
}

void mlir::ODIE::Compiler::Exec::AllocOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0 && *(v6 + 17) && *(*(v6 + 9) + 24))
  {
    (*(*a2 + 160))(a2);
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ")", 1uLL);
  }

  else
  {
    *v8 = 41;
    ++*(v7 + 4);
  }

  v23 = v25;
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, 0);
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v17 = *(v16 + 9);
    v18 = *(v16 + 17);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v22[0] = v17;
  v22[1] = 0;
  v22[2] = v17;
  v22[3] = v18;
  v19 = *(v16 + 9);
  v20 = v16 - 16;
  if (!v19)
  {
    v20 = 0;
  }

  v21[0] = v20;
  v21[1] = 0;
  v21[2] = v20;
  v21[3] = v19;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v22, v21);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::AllocOp::getEffects(void *a1, uint64_t a2)
{
  v4 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>();
  v9 = *a1 - 16;
  v10 = v4;
  v8 = 0;
  v7 = 1;
  v6 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v10, &v9, &v8, &v7, &v6);
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + 40 * v6;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *v7 = *a2;
  *(v7 + 8) = v11;
  *(v7 + 16) = v8 & 0xFFFFFFFFFFFFFFF9 | 4;
  *(v7 + 24) = 0;
  *(v7 + 32) = v9;
  *(v7 + 36) = v10;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

uint64_t *mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get()
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID();
    mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance = &unk_286E87198;
    unk_27FC198F0 = v1;
    __cxa_atexit(mlir::SideEffects::DefaultResource::~DefaultResource, &mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance, &dword_25C85D000);
  }

  return &mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
}

uint64_t mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v20, a4);
    if (v20)
    {
      mlir::Diagnostic::operator<<<42ul>(v21, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "is_type_adaptation", 0x12uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v20, a4);
        if (!v20)
        {
          goto LABEL_4;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v18 = 0;
        v19 = v11;
        goto LABEL_18;
      }

      *a1 = v11;
    }
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "offset", 6uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a3(&v20, a4);
        if (!v20)
        {
          goto LABEL_4;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v18 = 0;
        v19 = v14;
LABEL_18:
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
        v16 = v22 + 24 * v23;
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++v23;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
        return 0;
      }

      a1[1] = v14;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "is_type_adaptation";
    v15 = 18;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "offset";
    v15 = 6;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v10, v8);
  }

  v11 = v17;
  if (v18)
  {
    v12 = mlir::DictionaryAttr::get(a1, v17, v18);
    v11 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v19)
  {
    free(v11);
  }

  return v12;
}

unint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::computePropertiesHash(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v8 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v9, 0, v9, v10, &v8, &v7);
}

unint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 != 1936090735 || *(a3 + 4) != 29797)
    {
      goto LABEL_16;
    }

    v6 = a2[1];
LABEL_18:
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    return v8 | v6;
  }

  if (a4 == 18)
  {
    v4 = *a3 == 0x5F657079745F7369 && *(a3 + 8) == 0x6974617470616461;
    if (v4 && *(a3 + 16) == 28271)
    {
      v6 = *a2;
      goto LABEL_18;
    }
  }

LABEL_16:
  LOBYTE(v6) = 0;
  v8 = 0;
  return v8 | v6;
}

uint64_t *mlir::ODIE::Compiler::Exec::AllocViewOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1936090735 && *(a2 + 4) == 29797)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      result[1] = v7;
    }
  }

  else if (a3 == 18)
  {
    v4 = *a2 == 0x5F657079745F7369 && *(a2 + 8) == 0x6974617470616461;
    if (v4 && *(a2 + 16) == 28271)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

      *result = v8;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AllocViewOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "is_type_adaptation";
    v12 = 18;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "offset";
    v12 = 6;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::ODIE::Compiler::Exec::AllocViewOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(v10, "is_type_adaptation", 0x12, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v13, "offset", 6, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<47ul>(v12, "' failed to satisfy constraint: unit attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(void **a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1)[17] == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<48ul>(v12, "' failed to satisfy constraint: index attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AllocViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(a2) + 8) = a5;
  if (a6)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(a2) = a6;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v11);
}

BOOL mlir::ODIE::Compiler::Exec::AllocViewOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v4 = *(v3 + 9);
  if (v4)
  {
    v5 = *(v3 + 8);
    v11[0] = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v4, "offset", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v11) && (v11[0] = *this, mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(v5, "is_type_adaptation", 0x12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v11)) && mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v6 = *this - 16;
      }

      else
      {
        v6 = 0;
      }

      return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(v6 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = "requires attribute 'offset'";
    v10 = 259;
    mlir::Operation::emitOpError(v11, v2, &v9);
    v7 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v7;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::verify(mlir::ODIE::Compiler::Exec::AllocViewOp *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(v2 + 36))
  {
    v4 = v2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(*v5 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v7 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && v6 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  if (v8 && v3[6] != v5[6])
  {
    v9 = "incompatible memory space between source and result types";
LABEL_42:
    v34 = v9;
    v35 = 259;
    goto LABEL_43;
  }

  if (!*(v2 + 80))
  {
    if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v30 = v7[2];
      if (!v30)
      {
        goto LABEL_40;
      }

      v31 = v7[1];
      v32 = 8 * v30;
      while (*v31 != 0x8000000000000000)
      {
        ++v31;
        v32 -= 8;
        if (!v32)
        {
          goto LABEL_40;
        }
      }
    }

    v9 = "encountered ViewOp with dynamic shape";
    goto LABEL_42;
  }

  v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v12 = v11;
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v5);
  if (v10)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || (v16 = v13, v17 = v14, v18 = (*(v12 + 8))(v12, v10), v18 != (*(v17 + 8))(v17, v16)))
  {
LABEL_34:
    v34 = "op is marked with TypeAdaptation but types are not compatible";
    v35 = 259;
    v2 = *this;
LABEL_43:
    mlir::Operation::emitOpError(v36, v2, &v34);
    v27 = v37 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
    return v27 & 1;
  }

  v19 = (*(v12 + 24))(v12, v10);
  v21 = v20;
  v22 = (*(v17 + 24))(v17, v16);
  if (v21)
  {
    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = 8 * v23 - 8;
    v26 = 8 * v21 - 8;
    v27 = 1;
    while (*v22 == 0x8000000000000000 || *v19 == 0x8000000000000000 || *v19 == *v22)
    {
      if (v26)
      {
        ++v19;
        ++v22;
        v29 = v25;
        v25 -= 8;
        v26 -= 8;
        if (v29)
        {
          continue;
        }
      }

      return v27 & 1;
    }

    goto LABEL_34;
  }

LABEL_40:
  v27 = 1;
  return v27 & 1;
}

BOOL mlir::ODIE::Compiler::Exec::AllocViewOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::ODIE::Compiler::Exec::AllocViewOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::AllocViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
  {
    v6 = *(v9[0] + 8);
    v11 = *(v9[0] + 16);
    v12 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v6), (v11 + 8 * v6 + 8 * *(v9[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, &v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v7;
}

void mlir::ODIE::Compiler::Exec::AllocViewOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ")", 1uLL);
  }

  else
  {
    *v16 = 41;
    ++*(v15 + 4);
  }

  v31 = v33;
  v32 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v30[0] = v25;
  v30[1] = 0;
  v30[2] = v25;
  v30[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v29[0] = v28;
  v29[1] = 0;
  v29[2] = v28;
  v29[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v30, v29);
  if (v31 != v33)
  {
    free(v31);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
{
  v15[25] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a3)(&v14, a4);
    if (v14)
    {
      mlir::Diagnostic::operator<<<42ul>(v15, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
    return 0;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if (v10 & 1) != 0 && (v11 = *(v9 + 8)) != 0 || (v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL), (v13) && (v11 = *(v12 + 8)) != 0)
  {
    if ((convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1, 2, v11, a3, a4, "DenseI32ArrayAttr", 0x11) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getPropertiesAsAttr(uint64_t *a1, uint64_t a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x300000000;
  v3 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2, 2);
  v4 = *(**v3 + 32);
  v10 = 261;
  v9[0] = "operandSegmentSizes";
  v9[1] = 19;
  v6 = mlir::StringAttr::get(v4, v9, v5);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v11, v6, v3);
  if (v12)
  {
    v7 = mlir::DictionaryAttr::get(a1, v11, v12);
  }

  else
  {
    v7 = 0;
  }

  if (v11 != v13)
  {
    free(v11);
  }

  return v7;
}

unint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::computePropertiesHash(unsigned int *a1)
{
  v1 = a1[1] ^ 0xFF51AFD7ED558CCDLL;
  v2 = 0x9DDFEA08EB382D69 * (v1 ^ (8 * *a1 + 8));
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getInherentAttr(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 19)
  {
    v4 = *(a3 + 11);
    v5 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
    v6 = 1400139365;
  }

  else
  {
    if (a4 != 21)
    {
      goto LABEL_15;
    }

    v4 = *(a3 + 13);
    v5 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    v6 = 1935635566;
  }

  v7 = v6 | 0x73657A6900000000;
  if (v5 && v4 == v7)
  {
    v11 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2, 2);
    v10 = v11 & 0xFFFFFFFFFFFFFF00;
    v9 = v11;
    return v10 | v9;
  }

LABEL_15:
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

void *mlir::ODIE::Compiler::Exec::AsyncAwaitOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 19)
  {
    v4 = *a2 ^ 0x53646E617265706FLL;
    v5 = a2[1] ^ 0x6953746E656D6765;
    v6 = *(a2 + 11);
    v7 = 1400139365;
  }

  else
  {
    if (a3 != 21)
    {
      return result;
    }

    v4 = *a2 ^ 0x5F646E617265706FLL;
    v5 = a2[1] ^ 0x5F746E656D676573;
    v6 = *(a2 + 13);
    v7 = 1935635566;
  }

  if (v4 | v5 | v6 ^ (v7 | 0x73657A6900000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = a4 == 0;
  }

  if (!v8 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v9 = *(a4 + 8);
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v9[2] == 32 && *(a4 + 16) == 2)
    {
      v10 = *(a4 + 32);
      if (v10 >= 4)
      {
        return memmove(result, *(a4 + 24), v10 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AsyncAwaitOp::populateInherentAttrs(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2, 2);
  v5 = *(**v4 + 32);
  v9 = 261;
  v8[0] = "operandSegmentSizes";
  v8[1] = 19;
  v7 = mlir::StringAttr::get(v5, v8, v6);
  mlir::NamedAttrList::push_back(a3, v7, v4);
}

BOOL mlir::ODIE::Compiler::Exec::AsyncAwaitOp::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v8 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v8))
    {
      return 0;
    }

    if (*(v8 + 16) >= 3)
    {
      v6 = "size mismatch for operand/result_segment_size";
      v7 = 259;
      (*(*a1 + 16))(v9, a1, &v6);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
      return 0;
    }

    v4 = *(v8 + 32);
    if (v4 >= 4)
    {
      memmove(v3, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 2uLL) & 1) != 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v4 + 64, 2);
    (*(*a2 + 16))(a2, v5);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 64), 2);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::AsyncAwaitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34[26] = *MEMORY[0x277D85DE8];
  v2 = *(*this + 11);
  v3 = *(*this + 4 * ((v2 >> 23) & 1) + 16);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(*this + 9);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if (v3)
    {
LABEL_3:
      v5 = 0;
      v6 = v4 + 24;
      do
      {
        if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps3(*this, (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v5))
        {
          return 0;
        }

        ++v5;
        v6 += 32;
      }

      while (v3 != v5);
    }
  }

  ODSOperands = mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getODSOperands(this, 1u);
  if (v8)
  {
    v9 = v8;
    v10 = ODSOperands + 24;
    do
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps3(*this, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v3))
      {
        return 0;
      }

      LODWORD(v3) = v3 + 1;
      v10 += 32;
      --v9;
    }

    while (v9);
  }

  v11 = *this;
  v12 = *(*this + 9);
  v13 = *this - 16;
  if (*(*this + 9))
  {
    v14 = *this - 16;
  }

  else
  {
    v14 = 0;
  }

  if (!v12)
  {
    goto LABEL_23;
  }

  v15 = 0;
  v16 = *this - 16;
  do
  {
    v17 = v14;
    if (!v15)
    {
      goto LABEL_20;
    }

    v18 = *(v11 - 1) & 7;
    v19 = v13;
    v20 = v15;
    if (v18 != 6)
    {
      v21 = (5 - v18);
      v17 = v16;
      v20 = v15 - v21;
      if (v15 <= v21)
      {
        goto LABEL_20;
      }

      v19 = v13 - 16 * v21;
    }

    v17 = v19 - 24 * v20;
LABEL_20:
    if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps3(*this, (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v15))
    {
      return 0;
    }

    ++v15;
    v16 -= 16;
  }

  while (v12 != v15);
  v11 = *this;
LABEL_23:
  v22 = ((v11 + 16 * ((*(v11 + 11) >> 23) & 1) + ((*(v11 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v11 + 10);
  v33 = 0;
  v34[0] = *(v22 + 8);
  v31[0] = v22;
  v29[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__2;
  if (llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v34, v31, 1, v29))
  {
    return 1;
  }

  v31[0] = "region #";
  v32 = 259;
  mlir::Operation::emitOpError(v34, v11, v31);
  v23 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v34, &v33);
  v24 = v23;
  v28 = 1283;
  v27[0] = " ('";
  v27[2] = "region";
  v27[3] = 6;
  v29[0] = v27;
  v29[2] = "') ";
  v30 = 770;
  if (*v23)
  {
    mlir::Diagnostic::operator<<((v23 + 1), v29);
    if (*v24)
    {
      mlir::Diagnostic::operator<<<50ul>((v24 + 1), "failed to verify constraint: region with 1 blocks");
    }
  }

  v25 = *(v24 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
  return (v25 & 1) == 0;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps3(mlir::Operation *a1, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v20 = a5;
  v9 = *a2;
  v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v10))
  {
    return 1;
  }

  v19 = 261;
  v18[0] = a3;
  v18[1] = a4;
  mlir::Operation::emitOpError(&v23, a1, v18);
  if (v23)
  {
    mlir::Diagnostic::operator<<<3ul>(v24, " #");
  }

  v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v23, &v20);
  v13 = v12;
  if (*v12)
  {
    mlir::Diagnostic::operator<<<46ul>((v12 + 1), " must be variadic of Awaitable type, but got ");
    if (*v13)
    {
      v21 = 4;
      v22 = a2;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v21, 1);
      v15 = v13[3] + 24 * *(v13 + 8);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      ++*(v13 + 8);
    }
  }

  v11 = (v13[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  return v11;
}

BOOL mlir::ODIE::Compiler::Exec::AsyncAwaitOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x400000000;
  v22 = v24;
  v23 = 0x400000000;
  v18 = 0;
  v19 = &v21;
  v20 = 0x200000000;
  v17 = 0;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((*(*a1 + 408))(a1, "outs", 4))
  {
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_20;
    }

    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_20;
    }

    (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v22, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_20;
  }

  v15[0] = 0;
  v4 = (*(*a1 + 792))(a1, v15, 0, 0, 0);
  if ((v4 & 0x100) != 0)
  {
    if ((v4 & 1) == 0)
    {
      std::unique_ptr<mlir::Region>::reset[abi:nn200100](v15, 0);
      goto LABEL_20;
    }

    llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v19, v15);
    if ((*(*a1 + 128))(a1))
    {
      operator new();
    }
  }

  v5 = v15[0];
  v15[0] = 0;
  if (v5)
  {
    mlir::Region::~Region(v5);
    MEMORY[0x25F891040](v6);
  }

  if ((*(*a1 + 104))(a1))
  {
    v16 = 0;
    if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v16))
    {
      v7 = *(v16 + 8);
      v8 = *(v16 + 12);
      v17 = *(v16 + 16);
      v18 = v7;
      v9 = (v17 + 8 * v7);
      mlir::OperationState::addRegions(a2, v19, v20);
      v10 = v26;
      v11 = v23;
      *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>(a2) = v10 | (v11 << 32);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v9, &v9[8 * v8]);
      v15[0] = &v25;
      v15[1] = &v22;
      v12 = (*(*a1 + 16))(a1);
      v13 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(a1, v15, &v17, v12, a2 + 16);
      goto LABEL_21;
    }
  }

LABEL_20:
  v13 = 0;
LABEL_21:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v19);
  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return v13;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v53 = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  v10 = **a2;
  v11 = *v9;
  v12 = v10 + 32 * *(*a2 + 2);
  v13 = *v9 + 32 * *(v9 + 2);
  v48 = v10;
  v49 = v11;
  v50 = v12;
  v51 = v13;
  while (v10 != v12 || v11 != v13 || v50 != v12 || v51 != v13)
  {
    v15 = &unk_286E871B8;
    v16 = 16;
    do
    {
      v17 = v16;
      v18 = *(v15 - 1);
      v19 = (&v48 + (*v15 >> 1));
      if (*v15)
      {
        v18 = *(*v19 + v18);
      }

      if (v18(v19))
      {
        break;
      }

      v15 += 2;
      v16 = v17 - 16;
    }

    while (v17);
    ++v8;
    v10 = v48;
    v11 = v49;
  }

  v46 = a3[1];
  v47 = v8;
  if (v8 == v46)
  {
    v20 = a2[1];
    v21 = **a2;
    v22 = *v20;
    v23 = v21 + 32 * *(*a2 + 2);
    v24 = *v20 + 32 * *(v20 + 2);
    v25 = *a3;
    v48 = v21;
    v49 = v22;
    v50 = v23;
    v51 = v24;
    v52 = v25;
    while (v21 != v23 || v22 != v24 || v50 != v23 || v51 != v24)
    {
      v27 = &unk_286E871D8;
      do
      {
        v28 = *(v27 - 1);
        v29 = (&v48 + (*v27 >> 1));
        if (*v27)
        {
          v28 = *(*v29 + v28);
        }

        v27 += 2;
        v30 = v28(v29);
      }

      while (!v30);
      if (((*(*a1 + 728))(a1, v30, *v52, a5) & 1) == 0)
      {
        return 0;
      }

      v31 = &unk_286E871B8;
      v32 = 16;
      do
      {
        v33 = v32;
        v34 = *(v31 - 1);
        v35 = (&v48 + (*v31 >> 1));
        if (*v31)
        {
          v34 = *(*v35 + v34);
        }

        if (v34(v35))
        {
          break;
        }

        v31 += 2;
        v32 = v33 - 16;
      }

      while (v33);
      ++v52;
      v21 = v48;
      v22 = v49;
    }

    return 1;
  }

  else
  {
    v45 = 257;
    (*(*a1 + 24))(&v48, a1, a4, v44);
    if (v48)
    {
      mlir::Diagnostic::operator<<<48ul>(&v49, "number of operands and types do not match: got ");
    }

    v36 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v48, &v47);
    v37 = v36;
    if (*v36)
    {
      mlir::Diagnostic::operator<<<15ul>((v36 + 1), " operands and ");
    }

    v38 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v37, &v46);
    v39 = v38;
    if (*v38)
    {
      mlir::Diagnostic::operator<<<7ul>((v38 + 1), " types");
    }

    v40 = (v39[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
  }

  return v40;
}

void mlir::ODIE::Compiler::Exec::AsyncAwaitOp::print(mlir::ODIE::Compiler::Exec::AsyncAwaitOp *this, mlir::OpAsmPrinter *a2)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *(*this + 44);
  v7 = *(*this + 16 * ((v6 >> 23) & 1) + 64);
  if ((v6 & 0x800000) != 0)
  {
    v8 = *(*this + 72);
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v7)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v8 + 24));
    if (v7 != 1)
    {
      v11 = v7 - 1;
      v12 = (v8 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ")", 1uLL);
  }

  else
  {
    *v16 = 41;
    ++*(v15 + 4);
  }

  mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getODSOperands(this, 1u);
  if (v17)
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (v19 >= *(v18 + 3))
    {
      llvm::raw_ostream::write(v18, 32);
    }

    else
    {
      *(v18 + 4) = v19 + 1;
      *v19 = 32;
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 3uLL)
    {
      *v21 = 1937012079;
      *(v20 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v20, "outs", 4uLL);
    }

    v22 = (*(*a2 + 16))(a2);
    v23 = *(v22 + 4);
    if (v23 >= *(v22 + 3))
    {
      llvm::raw_ostream::write(v22, 32);
    }

    else
    {
      *(v22 + 4) = v23 + 1;
      *v23 = 32;
    }

    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (*(v24 + 3) == v25)
    {
      llvm::raw_ostream::write(v24, "=", 1uLL);
    }

    else
    {
      *v25 = 61;
      ++*(v24 + 4);
    }

    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if (v27 >= *(v26 + 3))
    {
      llvm::raw_ostream::write(v26, 32);
    }

    else
    {
      *(v26 + 4) = v27 + 1;
      *v27 = 32;
    }

    v28 = (*(*a2 + 16))(a2);
    v29 = *(v28 + 4);
    if (*(v28 + 3) == v29)
    {
      llvm::raw_ostream::write(v28, "(", 1uLL);
    }

    else
    {
      *v29 = 40;
      ++*(v28 + 4);
    }

    ODSOperands = mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getODSOperands(this, 1u);
    v32 = v31;
    v33 = (*(*a2 + 16))(a2);
    if (v32)
    {
      v34 = v33;
      (*(*a2 + 160))(a2, *(ODSOperands + 24));
      v35 = v32 - 1;
      if (v35)
      {
        v36 = (ODSOperands + 56);
        do
        {
          v37 = *(v34 + 4);
          if (*(v34 + 3) - v37 > 1uLL)
          {
            *v37 = 8236;
            *(v34 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v34, ", ", 2uLL);
          }

          v38 = *v36;
          v36 += 4;
          (*(*a2 + 160))(a2, v38);
          --v35;
        }

        while (v35);
      }
    }

    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if (*(v39 + 3) == v40)
    {
      llvm::raw_ostream::write(v39, ")", 1uLL);
    }

    else
    {
      *v40 = 41;
      ++*(v39 + 4);
    }
  }

  v64 = v66;
  v65 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v64, "operandSegmentSizes", 19);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v64, v65);
  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (v43 >= *(v42 + 3))
  {
    llvm::raw_ostream::write(v42, 32);
  }

  else
  {
    *(v42 + 4) = v43 + 1;
    *v43 = 32;
  }

  v44 = *(*this + 44);
  v45 = v44 & 0x7FFFFF;
  if ((v44 & 0x7FFFFF) != 0)
  {
    v46 = ((*this + 16 * ((v44 >> 23) & 1) + ((v44 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
    (*(*a2 + 224))(a2, v46, 1, 1, 0);
    if (v45 != 1)
    {
      v47 = v46 + 24;
      v48 = 24 * v45 - 24;
      do
      {
        v49 = (*(*a2 + 16))(a2);
        v50 = *(v49 + 4);
        if (*(v49 + 3) - v50 > 1uLL)
        {
          *v50 = 8236;
          *(v49 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v49, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v47, 1, 1, 0);
        v47 += 24;
        v48 -= 24;
      }

      while (v48);
    }
  }

  v51 = (*(*a2 + 16))(a2);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 32);
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 32;
  }

  v53 = (*(*a2 + 16))(a2);
  v54 = *(v53 + 4);
  if (*(v53 + 3) == v54)
  {
    llvm::raw_ostream::write(v53, ":", 1uLL);
  }

  else
  {
    *v54 = 58;
    ++*(v53 + 4);
  }

  v55 = (*(*a2 + 16))(a2);
  v56 = *(v55 + 4);
  if (v56 >= *(v55 + 3))
  {
    llvm::raw_ostream::write(v55, 32);
  }

  else
  {
    *(v55 + 4) = v56 + 1;
    *v56 = 32;
  }

  v57 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v58 = *(v57 + 72);
    v59 = *(v57 + 68);
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v63[0] = v58;
  v63[1] = 0;
  v63[2] = v58;
  v63[3] = v59;
  v60 = *(v57 + 36);
  v61 = v57 - 16;
  if (!v60)
  {
    v61 = 0;
  }

  v62[0] = v61;
  v62[1] = 0;
  v62[2] = v61;
  v62[3] = v60;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v63, v62);
  if (v64 != v66)
  {
    free(v64);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  *(result + 40) = v2[1];
  *(result + 24) = v3;
  v4 = *(a2 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = ((a2 + 64 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(result + 56) = v6;
  *(result + 64) = v5;
  return result;
}

void mlir::ODIE::Compiler::Exec::CallOp::getInputsMutable(uint64_t *__return_ptr a1@<X8>, mlir::ODIE::Compiler::Exec::CallOp *this@<X0>)
{
  v3 = *this;
  v4 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v5 = *(v4 + 88);
  v6 = *(*(*(*this + 48) + 96) + 8 * *(*(*this + 48) + 104) - 8);
  v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*this + 24) + 32), v4 + 88, 2);
  __src = 0;
  v9 = v6;
  v10 = v7;
  *a1 = v3;
  *(a1 + 2) = 0;
  *(a1 + 3) = v5;
  a1[2] = (a1 + 4);
  a1[3] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(a1 + 4, &__src, &v11);
}

void mlir::ODIE::Compiler::Exec::CallOp::getOutputsMutable(unsigned int *__return_ptr a1@<X8>, mlir::ODIE::Compiler::Exec::CallOp *this@<X0>)
{
  v3 = *this;
  v4 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v5 = *(v4 + 88);
  v6 = *(*(*(*this + 48) + 96) + 8 * *(*(*this + 48) + 104) - 8);
  v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*this + 24) + 32), v4 + 88, 2);
  __src = 1;
  v9 = v6;
  v10 = v7;
  *a1 = v3;
  *(a1 + 1) = v5;
  *(a1 + 2) = a1 + 8;
  *(a1 + 3) = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(a1 + 4, &__src, &v11);
}

BOOL mlir::ODIE::Compiler::Exec::CallOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a3)(&v27, a4);
    if (v27)
    {
      mlir::Diagnostic::operator<<<42ul>(v28, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "identifier", 0xAuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v11[3])
      {
        (a3)(&v27, a4);
        if (v27)
        {
LABEL_19:
          mlir::Diagnostic::operator<<<56ul>(v28, v12);
          goto LABEL_26;
        }

        goto LABEL_4;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "isDispatch", 0xAuLL);
  if (v14)
  {
    v11 = *(v13 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        (a3)(&v27, a4);
        if (v27)
        {
          goto LABEL_19;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
        return 0;
      }

      a1[1] = v11;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "output_intents", 0xEuLL);
  if (v16)
  {
    v11 = *(v15 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a3)(&v27, a4);
        if (v27)
        {
LABEL_26:
          if (v27)
          {
            v25 = 0;
            v26 = v11;
            v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v29, &v25, 1);
            v18 = v29 + 24 * v30;
            v19 = *v17;
            *(v18 + 16) = *(v17 + 16);
            *v18 = v19;
            ++v30;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      a1[2] = v11;
    }
  }

  v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v21 & 1) == 0 || (v22 = *(v20 + 8)) == 0)
  {
    v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL);
    if ((v24 & 1) == 0)
    {
      return 1;
    }

    v22 = *(v23 + 8);
    if (!v22)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 2, v22, a3, a4, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v22 = 261;
    v20 = "identifier";
    v21 = 10;
    v7 = mlir::StringAttr::get(v6, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v22 = 261;
    v20 = "isDispatch";
    v21 = 10;
    v10 = mlir::StringAttr::get(v9, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v22 = 261;
    v20 = "output_intents";
    v21 = 14;
    v13 = mlir::StringAttr::get(v12, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 2);
  v15 = *(**v14 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v17 = mlir::StringAttr::get(v15, &v20, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v17, v14);
  if (v24)
  {
    v18 = mlir::DictionaryAttr::get(a1, v23, v24);
  }

  else
  {
    v18 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return v18;
}

unint64_t mlir::ODIE::Compiler::Exec::CallOp::computePropertiesHash(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v15 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = HIDWORD(*(a1 + 16));
  v7 = 0x9DDFEA08EB382D69 * ((8 * *(a1 + 16) - 0xAE502812AA7333) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = *(a1 + 28) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (8 * *(a1 + 24) + 8));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v13 = v8;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v16, 0, v16, v17, &v15, &v14, &v13, &v12);
}

unint64_t mlir::ODIE::Compiler::Exec::CallOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v7 = *(a3 + 11);
      v8 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v9 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | a1;
      }

      v7 = *(a3 + 13);
      v8 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v9 = 1935635566;
    }

    v12 = v9 | 0x73657A6900000000;
    if (v8 && v7 == v12)
    {
      a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 2);
      v5 = a1 & 0xFFFFFFFFFFFFFF00;
      return v5 | a1;
    }

    goto LABEL_34;
  }

  if (a4 == 10)
  {
    if (*a3 == 0x696669746E656469 && *(a3 + 4) == 29285)
    {
      a1 = *a2;
    }

    else
    {
      if (*a3 != 0x7461707369447369 || *(a3 + 4) != 26723)
      {
        goto LABEL_34;
      }

      a1 = a2[1];
    }

    goto LABEL_37;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 != 0x695F74757074756FLL || *(a3 + 6) != 0x73746E65746E695FLL)
    {
LABEL_34:
      LOBYTE(a1) = 0;
      v5 = 0;
      return v5 | a1;
    }

    a1 = a2[2];
LABEL_37:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | a1;
}

uint64_t *mlir::ODIE::Compiler::Exec::CallOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      v6 = *a2 ^ 0x53646E617265706FLL;
      v7 = a2[1] ^ 0x6953746E656D6765;
      v8 = *(a2 + 11);
      v9 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v6 = *a2 ^ 0x5F646E617265706FLL;
      v7 = a2[1] ^ 0x5F746E656D676573;
      v8 = *(a2 + 13);
      v9 = 1935635566;
    }

    if (v6 | v7 | v8 ^ (v9 | 0x73657A6900000000))
    {
      v13 = 1;
    }

    else
    {
      v13 = a4 == 0;
    }

    if (!v13 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v14 = *(a4 + 8);
      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v14[2] == 32 && *(a4 + 16) == 2)
      {
        v15 = *(a4 + 32);
        if (v15 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v15 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (a3 == 10)
  {
    if (*a2 == 0x696669746E656469 && *(a2 + 4) == 29285)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        if (*(a4 + 24))
        {
          v16 = 0;
        }

        else
        {
          v16 = a4;
        }
      }

      else
      {
        v16 = 0;
      }

      *result = v16;
    }

    else if (*a2 == 0x7461707369447369 && *(a2 + 4) == 26723)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      result[1] = v12;
    }
  }

  else if (a3 == 14 && *a2 == 0x695F74757074756FLL && *(a2 + 6) == 0x73746E65746E695FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    result[2] = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::CallOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "identifier";
    v20 = 10;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "isDispatch";
    v20 = 10;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "output_intents";
    v20 = 14;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 2);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}