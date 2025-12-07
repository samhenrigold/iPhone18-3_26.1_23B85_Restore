uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getClosureContextInfo(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a1 + 976);
  v51[0] = a1 + 976;
  v51[1] = 0x100000000;
  v52 = 0;
  v53 = 1;
  v54 = 9;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v58 = 1;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, v49);
  v11 = 0;
  if (v50 != 1)
  {
LABEL_54:
    v36 = v55;
    if (!v55)
    {
      return v11;
    }

LABEL_55:
    v37 = v56;
    v38 = v36;
    if (v56 != v36)
    {
      do
      {
        v39 = *(v37 - 25);
        v37 -= 6;
        if (v39 < 0)
        {
          operator delete(*v37);
        }
      }

      while (v37 != v36);
      v38 = v55;
    }

    v56 = v36;
    operator delete(v38);
    return v11;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v49[0], v49[1], &v59);
  if (!v61 || *v61 != 1024)
  {
    v11 = 0;
    goto LABEL_54;
  }

  swift::reflection::RecordTypeInfoBuilder::addField(v51, *(v61 + 8), 8u, 0, 1);
  swift::reflection::RecordTypeInfoBuilder::addField(v51, 8 * *(a4 + 48), 8u, 0, 1);
  v60 = 0;
  v61 = 0;
  v59 = &v60;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  v12 = *a4;
  v13 = *(a4 + 8) - *a4;
  if (!v13)
  {
LABEL_52:
    v11 = swift::reflection::RecordTypeInfoBuilder::build(v51);
    goto LABEL_64;
  }

  v14 = v13 >> 3;
  v40 = a4;
  v41 = a5;
  while (1)
  {
    v15 = *v12;
    if (!*v12)
    {
      goto LABEL_63;
    }

    if (swift::reflection::TypeRef::isConcreteAfterSubstitutions(*v12, v47))
    {
      result = swift::reflection::TypeRef::subst(v15, a1 + 328, v47);
      v15 = result;
      if (result)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

    result = swift::reflection::TypeConverter::hasFixedSize(v10, v15);
    if (result)
    {
LABEL_9:
      v46 = 0;
      LOBYTE(__p[0]) = 0;
      swift::reflection::RecordTypeInfoBuilder::addField(v51, __p, v15, a5);
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v58 & 0x100) == 0)
      {
        --v14;
        ++v12;
        goto LABEL_51;
      }

LABEL_63:
      v11 = 0;
LABEL_64:
      __swift::__runtime::llvm::deallocate_buffer(v47[0], (16 * v48), 8uLL);
      std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(&v59, v60);
      v36 = v55;
      if (!v55)
      {
        return v11;
      }

      goto LABEL_55;
    }

LABEL_14:
    v42 = v14;
    v43 = v12;
    v17 = *(a4 + 24);
    v18 = *(a4 + 32);
    if (v17 == v18)
    {
      goto LABEL_63;
    }

    v19 = 0;
LABEL_18:
    v20 = *v17;
    v21 = v17[1];
    if (v60)
    {
      v22 = v60;
      do
      {
        v23 = v22[4];
        if (v20 >= v23)
        {
          if (v23 >= v20)
          {
            v24 = v22[5];
            if (v21 < v24)
            {
              goto LABEL_21;
            }

            if (v24 >= v21)
            {
              goto LABEL_17;
            }
          }

          ++v22;
        }

LABEL_21:
        v22 = *v22;
      }

      while (v22);
    }

    if (v21)
    {
      break;
    }

LABEL_17:
    v17 += 2;
    if (v17 != v18)
    {
      goto LABEL_18;
    }

    a4 = v40;
    a5 = v41;
    v14 = v42;
    v12 = v43;
    if ((v19 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_51:
    if (!v14)
    {
      goto LABEL_52;
    }
  }

  v25 = v17[1];
  while (1)
  {
    v26 = *(v25 + 8);
    if (v26 != 3)
    {
      break;
    }

    v25 = *(v25 + 16);
    if (!v25)
    {
      goto LABEL_17;
    }
  }

  if (v26 <= 5)
  {
    v27 = 1 << v26;
    if ((v27 & 0x31) == 0)
    {
      if ((v27 & 6) == 0)
      {
        goto LABEL_66;
      }

      if (*(v25 + 12) >= -1431655765 * ((v56 - v55) >> 4))
      {
        goto LABEL_17;
      }
    }

    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(a1, a2, a3, v17[1], v51, __p);
    if (v45 != 1)
    {
      goto LABEL_63;
    }

    TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p[0], __p[1], 0, 50, v28, v29, v30);
    if (!TypeFromMetadata)
    {
      goto LABEL_63;
    }

    result = swift::reflection::TypeRef::deriveSubstitutions(v47, v20, TypeFromMetadata);
    if (!result)
    {
      goto LABEL_63;
    }

    v32 = v60;
LABEL_41:
    if (!v32)
    {
LABEL_47:
      operator new();
    }

    while (1)
    {
      v33 = v32;
      v34 = v32[4];
      if (v20 < v34)
      {
LABEL_40:
        v32 = *v33;
        goto LABEL_41;
      }

      if (v34 >= v20)
      {
        v35 = v33[5];
        if (v21 < v35)
        {
          goto LABEL_40;
        }

        if (v35 >= v21)
        {
          break;
        }
      }

      v32 = v33[1];
      if (!v32)
      {
        goto LABEL_47;
      }
    }

    v17 += 2;
    v19 = 1;
    if (v17 == v18)
    {
      a4 = v40;
      a5 = v41;
      v14 = v42;
      v12 = v43;
      goto LABEL_51;
    }

    goto LABEL_18;
  }

LABEL_66:
  __break(1u);
  return result;
}

void swift::reflection::ClosureContextInfo::~ClosureContextInfo(swift::reflection::ClosureContextInfo *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = *(a4 + 8);
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = *(*(a5 + 32) + 48 * *(a4 + 12) + 24);
        *&v16 = 0;
        BYTE8(v16) = 0;
        if ((*(**(result + 2800) + 96))(*(result + 2800), a2 + v8, a3, &v16, 8))
        {
          swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(result, v16, *(&v16 + 1), a6);
          return;
        }
      }

      goto LABEL_16;
    }

    v13 = (8 * *(a4 + 12) + 16);
LABEL_13:
    *&v16 = 0;
    BYTE8(v16) = 0;
    if ((*(**(result + 2800) + 96))(*(result + 2800), a2 + v13, a3, &v16, 8))
    {
      v12 = v16;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v13 = *(*(a5 + 32) + 48 * *(a4 + 12) + 24);
    goto LABEL_13;
  }

  if (v7 == 3)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(result, a2, a3, *(a4 + 16), a5, &v16);
    if (v17)
    {
      swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readGenericArgFromMetadata(result, v16, *(&v16 + 1), *(a4 + 12), &v14);
      if (v15)
      {
        v12 = v14;
LABEL_15:
        *a6 = v12;
        a6[16] = 1;
        return;
      }
    }
  }

LABEL_16:
  *a6 = 0;
  a6[16] = 0;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readGenericArgFromMetadata(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, _BYTE *a5@<X8>)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v21);
  if (!v23)
  {
    goto LABEL_30;
  }

  v8 = *v23;
  if (*v23 > 0x7FF)
  {
    LODWORD(v8) = 0;
  }

  if ((v8 - 512) >= 5)
  {
    if (v8 || (swift_reflection_classIsSwiftMask & v23[4]) == 0)
    {
      goto LABEL_30;
    }

    v9 = 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(a1 + 2816) & v23[v9];
  if (!v10)
  {
    goto LABEL_30;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v10, 0, &v19);
  if (!v20)
  {
    goto LABEL_30;
  }

  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(v20);
  if (!GenericContext)
  {
    goto LABEL_30;
  }

  v12 = *v20 & 0x1F;
  if ((v12 - 17) >= 2)
  {
    if (v12 != 16)
    {
      goto LABEL_30;
    }

    v16 = v20 ? v20 : 0;
    if ((*v16 & 0x20000000) != 0)
    {
      v24 = v19;
      v25 = v20;
      v18 = GenericContext;
      swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(a1, &v24, &v26);
      v14 = *(&v26 + 1) >> 3;
      v13 = (*(&v26 + 1) >> 3) & 0xFFFFFF00;
      if (!v27)
      {
        LOBYTE(v14) = 0;
        LODWORD(v13) = 0;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_30;
      }

      GenericContext = v18;
    }

    else
    {
      if ((*v16 & 0x10000000) != 0)
      {
        v17 = 0;
        v13 = 24;
      }

      else
      {
        v17 = v16[7];
        v13 = 32;
      }

      LODWORD(v14) = v17 - *(v16 + v13);
      LODWORD(v13) = v14 & 0xFFFFFF00;
    }
  }

  else
  {
    LODWORD(v13) = 0;
    LOBYTE(v14) = 2;
  }

  if (*(GenericContext + 4) <= a4)
  {
LABEL_30:
    *a5 = 0;
    a5[16] = 0;
    return;
  }

  *&v26 = 0;
  BYTE8(v26) = 0;
  if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), v21 + 8 * ((v13 | v14) + a4), v22, &v26, 8))
  {
    *a5 = v26;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    *a5 = 0;
  }

  a5[16] = v15;
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
            v10 = a2[2];
          }

          else
          {
            v10 = *(v2 + 8);
            v11 = *v10;
            *(v2 + 8) = *v10;
            v12 = v2;
            if (v11)
            {
              *(v11 + 16) = v2;
              v3 = *(v2 + 16);
              v12 = *v3;
            }

            *(v10 + 16) = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            *(v2 + 16) = v10;
            v3 = *(v10 + 16);
            v4 = *v3;
          }

          *(v10 + 24) = 1;
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
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v13[2] = v3;
            v3[*v3 != v2] = v13;
            v13[1] = v2;
            *(v2 + 16) = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
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

void std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(a1, *a2);
    std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, &v24);
  if (v26 != 1)
  {
    return 0;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v24, v25, __p);
  if (!v19)
  {
    return 0;
  }

  v8 = *v19;
  if (*v19 > 0x7FF)
  {
    LODWORD(v8) = 0;
  }

  if (v8 != 1280)
  {
    if (v8 != 1024)
    {
      if (!v8)
      {
        return swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(a1, v24, v25, a4);
      }

      return 0;
    }

    *&v10 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v24, v25, &v27);
    if (v28 && *v28 == 1024)
    {
      (*(**(a1 + 2800) + 40))(__p, v10);
      v11 = __p[0];
      v12 = SHIBYTE(v19);
      if (v20 && ((swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getCaptureDescriptor((a1 + 2216), v20, v21, &v22), v22) || BYTE8(v22)))
      {
        v27 = v22;
        v28 = v23;
        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getClosureContextInfo((a1 + 2216), &v27, __p);
        ClosureContextInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getClosureContextInfo(a1, a2, a3, __p, a4);
        swift::reflection::ClosureContextInfo::~ClosureContextInfo(__p);
        result = ClosureContextInfo;
      }

      else
      {
        result = 0;
      }

      if (v12 < 0)
      {
        v17 = result;
        operator delete(v11);
        return v17;
      }

      return result;
    }

    return 0;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v24, v25, __p);
  if (!v19)
  {
    return 0;
  }

  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v19[2], a3, 0, 50, v13, v14, v15);
  if (result)
  {
    return swift::reflection::TypeConverter::getTypeInfo(a1 + 976, result, a4);
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getClosureContextInfo(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a1 + 976);
  v51[0] = a1 + 976;
  v51[1] = 0x100000000;
  v52 = 0;
  v53 = 1;
  v54 = 9;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v58 = 1;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, v49);
  v11 = 0;
  if (v50 != 1)
  {
LABEL_54:
    v36 = v55;
    if (!v55)
    {
      return v11;
    }

LABEL_55:
    v37 = v56;
    v38 = v36;
    if (v56 != v36)
    {
      do
      {
        v39 = *(v37 - 25);
        v37 -= 6;
        if (v39 < 0)
        {
          operator delete(*v37);
        }
      }

      while (v37 != v36);
      v38 = v55;
    }

    v56 = v36;
    operator delete(v38);
    return v11;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v49[0], v49[1], &v59);
  if (!v61 || *v61 != 1024)
  {
    v11 = 0;
    goto LABEL_54;
  }

  swift::reflection::RecordTypeInfoBuilder::addField(v51, *(v61 + 8), 8u, 0, 1);
  swift::reflection::RecordTypeInfoBuilder::addField(v51, 8 * *(a4 + 48), 8u, 0, 1);
  v60 = 0;
  v61 = 0;
  v59 = &v60;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  v12 = *a4;
  v13 = *(a4 + 8) - *a4;
  if (!v13)
  {
LABEL_52:
    v11 = swift::reflection::RecordTypeInfoBuilder::build(v51);
    goto LABEL_64;
  }

  v14 = v13 >> 3;
  v40 = a4;
  v41 = a5;
  while (1)
  {
    v15 = *v12;
    if (!*v12)
    {
      goto LABEL_63;
    }

    if (swift::reflection::TypeRef::isConcreteAfterSubstitutions(*v12, v47))
    {
      result = swift::reflection::TypeRef::subst(v15, a1 + 328, v47);
      v15 = result;
      if (result)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

    result = swift::reflection::TypeConverter::hasFixedSize(v10, v15);
    if (result)
    {
LABEL_9:
      v46 = 0;
      LOBYTE(__p[0]) = 0;
      swift::reflection::RecordTypeInfoBuilder::addField(v51, __p, v15, a5);
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v58 & 0x100) == 0)
      {
        --v14;
        ++v12;
        goto LABEL_51;
      }

LABEL_63:
      v11 = 0;
LABEL_64:
      __swift::__runtime::llvm::deallocate_buffer(v47[0], (16 * v48), 8uLL);
      std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(&v59, v60);
      v36 = v55;
      if (!v55)
      {
        return v11;
      }

      goto LABEL_55;
    }

LABEL_14:
    v42 = v14;
    v43 = v12;
    v17 = *(a4 + 24);
    v18 = *(a4 + 32);
    if (v17 == v18)
    {
      goto LABEL_63;
    }

    v19 = 0;
LABEL_18:
    v20 = *v17;
    v21 = v17[1];
    if (v60)
    {
      v22 = v60;
      do
      {
        v23 = v22[4];
        if (v20 >= v23)
        {
          if (v23 >= v20)
          {
            v24 = v22[5];
            if (v21 < v24)
            {
              goto LABEL_21;
            }

            if (v24 >= v21)
            {
              goto LABEL_17;
            }
          }

          ++v22;
        }

LABEL_21:
        v22 = *v22;
      }

      while (v22);
    }

    if (v21)
    {
      break;
    }

LABEL_17:
    v17 += 2;
    if (v17 != v18)
    {
      goto LABEL_18;
    }

    a4 = v40;
    a5 = v41;
    v14 = v42;
    v12 = v43;
    if ((v19 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_51:
    if (!v14)
    {
      goto LABEL_52;
    }
  }

  v25 = v17[1];
  while (1)
  {
    v26 = *(v25 + 8);
    if (v26 != 3)
    {
      break;
    }

    v25 = *(v25 + 16);
    if (!v25)
    {
      goto LABEL_17;
    }
  }

  if (v26 <= 5)
  {
    v27 = 1 << v26;
    if ((v27 & 0x31) == 0)
    {
      if ((v27 & 6) == 0)
      {
        goto LABEL_66;
      }

      if (*(v25 + 12) >= -1431655765 * ((v56 - v55) >> 4))
      {
        goto LABEL_17;
      }
    }

    swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(a1, a2, a3, v17[1], v51, __p);
    if (v45 != 1)
    {
      goto LABEL_63;
    }

    TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p[0], __p[1], 0, 50, v28, v29, v30);
    if (!TypeFromMetadata)
    {
      goto LABEL_63;
    }

    result = swift::reflection::TypeRef::deriveSubstitutions(v47, v20, TypeFromMetadata);
    if (!result)
    {
      goto LABEL_63;
    }

    v32 = v60;
LABEL_41:
    if (!v32)
    {
LABEL_47:
      operator new();
    }

    while (1)
    {
      v33 = v32;
      v34 = v32[4];
      if (v20 < v34)
      {
LABEL_40:
        v32 = *v33;
        goto LABEL_41;
      }

      if (v34 >= v20)
      {
        v35 = v33[5];
        if (v21 < v35)
        {
          goto LABEL_40;
        }

        if (v35 >= v21)
        {
          break;
        }
      }

      v32 = v33[1];
      if (!v32)
      {
        goto LABEL_47;
      }
    }

    v17 += 2;
    v19 = 1;
    if (v17 == v18)
    {
      a4 = v40;
      a5 = v41;
      v14 = v42;
      v12 = v43;
      goto LABEL_51;
    }

    goto LABEL_18;
  }

LABEL_66:
  __break(1u);
  return result;
}

void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = *(a4 + 8);
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = *(*(a5 + 32) + 48 * *(a4 + 12) + 24);
        *&v16 = 0;
        BYTE8(v16) = 0;
        if ((*(**(result + 2800) + 96))(*(result + 2800), a2 + v8, a3, &v16, 8))
        {
          swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(result, v16, *(&v16 + 1), a6);
          return;
        }
      }

      goto LABEL_16;
    }

    v13 = (8 * *(a4 + 12) + 16);
LABEL_13:
    *&v16 = 0;
    BYTE8(v16) = 0;
    if ((*(**(result + 2800) + 96))(*(result + 2800), a2 + v13, a3, &v16, 8))
    {
      v12 = v16;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v13 = *(*(a5 + 32) + 48 * *(a4 + 12) + 24);
    goto LABEL_13;
  }

  if (v7 == 3)
  {
    swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(result, a2, a3, *(a4 + 16), a5, &v16);
    if (v17)
    {
      swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readGenericArgFromMetadata(result, v16, *(&v16 + 1), *(a4 + 12), &v14);
      if (v15)
      {
        v12 = v14;
LABEL_15:
        *a6 = v12;
        a6[16] = 1;
        return;
      }
    }
  }

LABEL_16:
  *a6 = 0;
  a6[16] = 0;
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readGenericArgFromMetadata(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, _BYTE *a5@<X8>)
{
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v21);
  if (!v23)
  {
    goto LABEL_32;
  }

  v8 = *v23;
  if (*v23 > 0x7FF)
  {
    LODWORD(v8) = 0;
  }

  if (v8 > 514)
  {
    if (v8 != 515 && v8 != 516)
    {
      goto LABEL_32;
    }

    goto LABEL_10;
  }

  if ((v8 - 512) < 3)
  {
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  if (v8)
  {
    goto LABEL_32;
  }

  v9 = 5;
LABEL_11:
  v10 = *(a1 + 2816) & v23[v9];
  if (!v10)
  {
    goto LABEL_32;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v10, 0, &v19);
  if (!v20)
  {
    goto LABEL_32;
  }

  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(v20);
  if (!GenericContext)
  {
    goto LABEL_32;
  }

  v12 = *v20 & 0x1F;
  if ((v12 - 17) >= 2)
  {
    if (v12 != 16)
    {
      goto LABEL_32;
    }

    if (v20)
    {
      v16 = v20;
    }

    else
    {
      v16 = 0;
    }

    if ((*v16 & 0x20000000) != 0)
    {
      v24 = v19;
      v25 = v20;
      v18 = GenericContext;
      swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(a1, &v24, &v26);
      v14 = *(&v26 + 1) >> 3;
      v13 = (*(&v26 + 1) >> 3) & 0xFFFFFF00;
      if (!v27)
      {
        LOBYTE(v14) = 0;
        LODWORD(v13) = 0;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_32;
      }

      GenericContext = v18;
    }

    else
    {
      if ((*v16 & 0x10000000) != 0)
      {
        v17 = 0;
        v13 = 24;
      }

      else
      {
        v17 = v16[7];
        v13 = 32;
      }

      LODWORD(v14) = v17 - *(v16 + v13);
      LODWORD(v13) = v14 & 0xFFFFFF00;
    }
  }

  else
  {
    LODWORD(v13) = 0;
    LOBYTE(v14) = 2;
  }

  if (*(GenericContext + 4) <= a4)
  {
LABEL_32:
    *a5 = 0;
    a5[16] = 0;
    return;
  }

  *&v26 = 0;
  BYTE8(v26) = 0;
  if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), v21 + 8 * ((v13 | v14) + a4), v22, &v26, 8))
  {
    *a5 = v26;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    *a5 = 0;
  }

  a5[16] = v15;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfInstance::$_0>(swift_reflection_childOfInstance::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  result = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, **v4, 0, 0);
  if (result)
  {
    v6 = *(result + 8);
    if (v6 == 1 || v6 == 4)
    {
      v8 = *(result + 40) + 48 * **(v4 + 8);
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      *a3 = v9;
      *(a3 + 8) = *(v8 + 24);
      result = getTypeInfoKind(*(v8 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v8 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfInstance::$_0>(swift_reflection_childOfInstance::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  result = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, **v4, 0, 0);
  if (result)
  {
    v6 = *(result + 8);
    if (v6 == 1 || v6 == 4)
    {
      v8 = *(result + 40) + 48 * **(v4 + 8);
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      *a3 = v9;
      *(a3 + 8) = *(v8 + 24);
      result = getTypeInfoKind(*(v8 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v8 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

_DWORD *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectExistential::$_0>(swift_reflection_projectExistential::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = **v2;
  v5 = **(v2 + 8);
  v10 = 0;
  v8 = 0;
  v9 = 0;
  result = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistential(v3, v5, 0, v4, &v10, &v8, 0);
  if (result)
  {
    v7 = *(v2 + 24);
    ***(v2 + 16) = v10;
    **v7 = v8;
  }

  return result;
}

_DWORD *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectExistential::$_0>(swift_reflection_projectExistential::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = **v2;
  v5 = **(v2 + 8);
  v10 = 0;
  v8 = 0;
  v9 = 0;
  result = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistential(v3, v5, 0, v4, &v10, &v8, 0);
  if (result)
  {
    v7 = *(v2 + 24);
    ***(v2 + 16) = v10;
    **v7 = v8;
  }

  return result;
}

_DWORD *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistential(uint64_t a1, unint64_t a2, uint64_t a3, swift::reflection::TypeRefBuilder **a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    return 0;
  }

  result = swift::reflection::TypeConverter::getTypeInfo(a1 + 976, a4, a7);
  if (!result)
  {
    return result;
  }

  if (result[2] != 1)
  {
    return 0;
  }

  v13 = result[8];
  switch(v13)
  {
    case 4:
      swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(a1, a2, a3, v17);
      break;
    case 7:
      swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(a1, a2, a3, v17);
      break;
    case 5:
      *a5 = *(*(result + 5) + 32);
      *a6 = a2;
      *(a6 + 8) = a3;
      return &dword_0 + 1;
    default:
      return 0;
  }

  if (v19 == 1)
  {
    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v17[0], v17[1], 0, 50, v14, v15, v16);
    if (!result)
    {
      return result;
    }

    *a5 = result;
    *a6 = v17[2];
    *(a6 + 8) = v18;
    return &dword_0 + 1;
  }

  return 0;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(**(a1 + 2800) + 32))(*(a1 + 2800), a2, a3, v17, 32) & 1) != 0 && (v8 = v18, *&v9 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v18, a3, v16), v16[2]) && (v22 = 0, (*(**(a1 + 2800) + 32))(*(a1 + 2800), v8 - 8, a3, &v19, 8, v9)) && ((*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 2816) & v19, 0, &v20, 88))
  {
    v10 = v22;
    if ((v22 & 0x20000) != 0)
    {
      v20 = 0;
      v21 = 0;
      v12 = (*(**(a1 + 2800) + 96))(*(a1 + 2800), a2, a3, &v20, 8);
      v11 = 0;
      v13 = a4;
      if (v12)
      {
        v14 = v21;
        v15 = v20 + ((v10 + 16) & ~v10);
        *a4 = v8;
        *(a4 + 8) = a3;
        *(a4 + 16) = v15;
        *(a4 + 24) = v14;
        v13 = (a4 + 32);
        v11 = 1;
      }

      *v13 = 0;
    }

    else
    {
      *a4 = v8;
      *(a4 + 8) = a3;
      *(a4 + 16) = a2;
      *(a4 + 24) = a3;
      *(a4 + 32) = 0;
      v11 = 1;
    }

    *(a4 + 40) = v11;
  }

  else
  {
    *a4 = 0;
    *(a4 + 40) = 0;
  }
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, &v26);
  if ((v27 & 1) == 0 || (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v26, *(&v26 + 1), &v24), !v25))
  {
    *a4 = 0;
    *(a4 + 40) = 0;
    return;
  }

  if ((*v25 - 1) < 0x7FF)
  {
    goto LABEL_4;
  }

  if ((swift_reflection_classIsSwiftMask & v25[4]) == 0)
  {
    __p = 0;
    v30 = 0;
    v31 = 0;
    ObjCRODataPtr = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(a1, v26, BYTE8(v26));
    if (ObjCRODataPtr)
    {
      *&v22 = 0;
      BYTE8(v22) = 0;
      if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), ObjCRODataPtr + 24, v15, &v22, 8))
      {
        if (v22)
        {
          if ((*(**(a1 + 2800) + 16))(*(a1 + 2800), v22, *(&v22 + 1), &__p))
          {
            if (SHIBYTE(v31) < 0)
            {
              p_p = __p;
              if (v30 != 20)
              {
                operator delete(__p);
                goto LABEL_13;
              }
            }

            else
            {
              if (SHIBYTE(v31) != 20)
              {
                goto LABEL_13;
              }

              p_p = &__p;
            }

            v19 = 0x5F5F53776966744ELL;
            v20 = bswap64(*p_p);
            if (v20 == 0x5F5F53776966744ELL && (v19 = 0x61746976654E5345, v20 = bswap64(*(p_p + 1)), v20 == 0x61746976654E5345) && (v19 = 1920102258, v20 = bswap32(*(p_p + 4)), v20 == 1920102258))
            {
              v21 = 0;
            }

            else if (v20 < v19)
            {
              v21 = -1;
            }

            else
            {
              v21 = 1;
            }

            v18 = v21 == 0;
            v17 = v21 != 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p);
            if (v17)
            {
              goto LABEL_13;
            }
          }

          else if (v17)
          {
            goto LABEL_13;
          }

          if (v18)
          {
            v9 = 40;
            v8 = 32;
LABEL_5:
            v10 = v9 + a2;
            swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, v10, a3, &v22);
            if (v23 == 1 && (v32 = 0, (*(**(a1 + 2800) + 32))(*(a1 + 2800), v22 - 8, BYTE8(v22), &v28, 8)) && ((*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 2816) & v28, 0, &__p, 88) & 1) != 0)
            {
              v11 = (v10 + v8 + v32) & ~v32;
              *a4 = v22;
              *(a4 + 16) = v11;
              *(a4 + 24) = a3;
              v12 = (a4 + 32);
              v13 = 1;
            }

            else
            {
              v13 = 0;
              v12 = a4;
            }

            *v12 = 0;
            goto LABEL_14;
          }
        }
      }
    }

LABEL_4:
    v8 = 16;
    v9 = 16;
    goto LABEL_5;
  }

LABEL_13:
  *a4 = v26;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  v13 = 1;
  *(a4 + 32) = 1;
LABEL_14:
  *(a4 + 40) = v13;
}

_DWORD *swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistential(uint64_t a1, unint64_t a2, uint64_t a3, swift::reflection::TypeRefBuilder **a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    return 0;
  }

  result = swift::reflection::TypeConverter::getTypeInfo(a1 + 976, a4, a7);
  if (!result)
  {
    return result;
  }

  if (result[2] != 1)
  {
    return 0;
  }

  v13 = result[8];
  switch(v13)
  {
    case 4:
      swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(a1, a2, a3, v17);
      break;
    case 7:
      swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(a1, a2, a3, v17);
      break;
    case 5:
      *a5 = *(*(result + 5) + 32);
      *a6 = a2;
      *(a6 + 8) = a3;
      return &dword_0 + 1;
    default:
      return 0;
  }

  if (v19 == 1)
  {
    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v17[0], v17[1], 0, 50, v14, v15, v16);
    if (!result)
    {
      return result;
    }

    *a5 = result;
    *a6 = v17[2];
    *(a6 + 8) = v18;
    return &dword_0 + 1;
  }

  return 0;
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(**(a1 + 2800) + 32))(*(a1 + 2800), a2, a3, v17, 32) & 1) != 0 && (v8 = v18, *&v9 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v18, a3, v16), v16[2]) && (v22 = 0, (*(**(a1 + 2800) + 32))(*(a1 + 2800), v8 - 8, a3, &v19, 8, v9)) && ((*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 2816) & v19, 0, &v20, 88))
  {
    v10 = v22;
    if ((v22 & 0x20000) != 0)
    {
      v20 = 0;
      v21 = 0;
      v12 = (*(**(a1 + 2800) + 96))(*(a1 + 2800), a2, a3, &v20, 8);
      v11 = 0;
      v13 = a4;
      if (v12)
      {
        v14 = v21;
        v15 = v20 + ((v10 + 16) & ~v10);
        *a4 = v8;
        *(a4 + 8) = a3;
        *(a4 + 16) = v15;
        *(a4 + 24) = v14;
        v13 = (a4 + 32);
        v11 = 1;
      }

      *v13 = 0;
    }

    else
    {
      *a4 = v8;
      *(a4 + 8) = a3;
      *(a4 + 16) = a2;
      *(a4 + 24) = a3;
      *(a4 + 32) = 0;
      v11 = 1;
    }

    *(a4 + 40) = v11;
  }

  else
  {
    *a4 = 0;
    *(a4 + 40) = 0;
  }
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, &v15);
  if ((v16 & 1) != 0 && (swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v15, *(&v15 + 1), &v13), v14))
  {
    if ((*v14 - 1) >= 0x7FF)
    {
      *a4 = v15;
      *(a4 + 16) = a2;
      *(a4 + 24) = a3;
      v10 = 1;
      *(a4 + 32) = 1;
    }

    else
    {
      swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2 + 16, a3, &v11);
      if (v12 == 1 && (v19 = 0, (*(**(a1 + 2800) + 32))(*(a1 + 2800), v11 - 8, BYTE8(v11), &v17, 8)) && ((*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 2816) & v17, 0, v18, 88) & 1) != 0)
      {
        v8 = (a2 + v19 + 32) & ~v19;
        *a4 = v11;
        *(a4 + 16) = v8;
        *(a4 + 24) = a3;
        v9 = (a4 + 32);
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v9 = a4;
      }

      *v9 = 0;
    }

    *(a4 + 40) = v10;
  }

  else
  {
    *a4 = 0;
    *(a4 + 40) = 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectExistentialAndUnwrapClass::$_0>(swift_reflection_projectExistentialAndUnwrapClass::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(*a2, **(v2 + 8), 0, **v2, v5);
  result = v6;
  if (v6 == 1)
  {
    v4 = *(v2 + 24);
    ***(v2 + 16) = v5[0];
    **v4 = v5[1];
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectExistentialAndUnwrapClass::$_0>(swift_reflection_projectExistentialAndUnwrapClass::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(*a2, **(v2 + 8), 0, **v2, v5);
  result = v6;
  if (v6 == 1)
  {
    v4 = *(v2 + 24);
    ***(v2 + 16) = v5[0];
    **v4 = v5[1];
  }

  return result;
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, swift::reflection::TypeRefBuilder **a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  TypeInfo = swift::reflection::TypeConverter::getTypeInfo(a1 + 976, a4, 0);
  if (!TypeInfo || *(TypeInfo + 2) != 1)
  {
    goto LABEL_30;
  }

  v10 = *(TypeInfo + 8);
  if (v10 == 4)
  {
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(a1, a2, a3, &__p);
    if (v33 != 1)
    {
      goto LABEL_30;
    }

    TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p, v30, 0, 50, v18, v19, v20);
    if (!TypeFromMetadata)
    {
      goto LABEL_30;
    }

    v22 = TypeFromMetadata;
    v23 = *(&v31 + 1);
    v24 = v31;
    v25 = *(TypeFromMetadata + 2);
    if ((v25 - 1) > 1)
    {
      if ((v25 - 11) > 1)
      {
        goto LABEL_23;
      }
    }

    else if ((swift::reflection::NominalTypeTrait::isClass((TypeFromMetadata + 2)) & 1) == 0)
    {
LABEL_23:
      v26 = v23;
      goto LABEL_29;
    }

    swift::remote::MemoryReader::readPointer(*(a1 + 2800), v24, v23, 8u, &__p);
    if (v34 != 1)
    {
      goto LABEL_30;
    }

    v24 = v32;
    v26 = v33;
    if (SBYTE7(v31) < 0)
    {
      operator delete(__p);
    }

    if (!v24)
    {
      goto LABEL_30;
    }

LABEL_29:
    *a5 = v22;
    *(a5 + 8) = v24;
    *(a5 + 16) = v26 | v23 & 0xFFFFFFFFFFFFFF00;
    *(a5 + 24) = 1;
    return;
  }

  if (v10 == 7)
  {
    swift::remote::MemoryReader::readPointer(*(a1 + 2800), a2, a3, 8u, &__p);
    if (v34 == 1)
    {
      v11 = v32;
      v12 = v33;
      if (SBYTE7(v31) < 0)
      {
        operator delete(__p);
      }

      if (v11)
      {
        swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(a1, v11, v12 | a3 & 0xFFFFFFFFFFFFFF00, &__p);
        if (v33 == 1)
        {
          v16 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p, v30, 0, 50, v13, v14, v15);
          if (v16)
          {
            *&v27[8] = v31;
            *v27 = v16;
            v27[24] = 1;
            if (v32 & 1) != 0 || !swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::reflection::TypeRef const*)#1}::operator()(&__p, v16) || (swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::remote::RemoteAddress&)#1}::operator()(&v28, &v27[8]))
            {
              v17 = *&v27[16];
              *a5 = *v27;
              *(a5 + 16) = v17;
              return;
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  if (v10 != 5)
  {
LABEL_30:
    *a5 = 0;
    *(a5 + 24) = 0;
    return;
  }

  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getDynamicTypeAndAddressClassExistential(a1, a2, a3, a5);
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getDynamicTypeAndAddressClassExistential(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift::remote::MemoryReader::readPointer(*(a1 + 2800), a2, a3, 8u, __p);
  if (v18 != 1)
  {
    goto LABEL_10;
  }

  v6 = v16;
  v7 = v17;
  if ((v15 & 0x80000000) == 0)
  {
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_10:
    *a4 = 0;
    *(a4 + 24) = 0;
    return;
  }

  operator delete(__p[0]);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, v6, v7, __p);
  if ((v14 & 1) != 0 && (TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p[0], __p[1], 0, 50, v8, v9, v10)) != 0)
  {
    *a4 = TypeFromMetadata;
    *(a4 + 8) = v6;
    v12 = 1;
    *(a4 + 16) = v7;
  }

  else
  {
    v12 = 0;
    *a4 = 0;
  }

  *(a4 + 24) = v12;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::remote::RemoteAddress&)#1}::operator()(uint64_t a1, uint64_t *a2)
{
  swift::remote::MemoryReader::readPointer(*(*a1 + 2800), *a2, a2[1], 8u, &__p);
  if (v10 == 1)
  {
    v3 = v8;
    v4 = v9;
    if (v7 < 0)
    {
      operator delete(__p);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else if (v8)
    {
LABEL_4:
      *a2 = v3;
      *(a2 + 8) = v4;
      return 1;
    }
  }

  return 0;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::reflection::TypeRef const*)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (a2 && v2 == 1 || a2 && v2 == 2)
  {
    return swift::reflection::NominalTypeTrait::isClass((a2 + 16));
  }

  else
  {
    return (v2 - 11) < 2;
  }
}

void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, swift::reflection::TypeRefBuilder **a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  TypeInfo = swift::reflection::TypeConverter::getTypeInfo(a1 + 976, a4, 0);
  if (!TypeInfo || *(TypeInfo + 2) != 1)
  {
    goto LABEL_30;
  }

  v10 = *(TypeInfo + 8);
  if (v10 == 4)
  {
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(a1, a2, a3, &__p);
    if (v33 != 1)
    {
      goto LABEL_30;
    }

    TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p, v30, 0, 50, v18, v19, v20);
    if (!TypeFromMetadata)
    {
      goto LABEL_30;
    }

    v22 = TypeFromMetadata;
    v23 = *(&v31 + 1);
    v24 = v31;
    v25 = *(TypeFromMetadata + 2);
    if ((v25 - 1) > 1)
    {
      if ((v25 - 11) > 1)
      {
        goto LABEL_23;
      }
    }

    else if ((swift::reflection::NominalTypeTrait::isClass((TypeFromMetadata + 2)) & 1) == 0)
    {
LABEL_23:
      v26 = v23;
      goto LABEL_29;
    }

    swift::remote::MemoryReader::readPointer(*(a1 + 2800), v24, v23, 8u, &__p);
    if (v34 != 1)
    {
      goto LABEL_30;
    }

    v24 = v32;
    v26 = v33;
    if (SBYTE7(v31) < 0)
    {
      operator delete(__p);
    }

    if (!v24)
    {
      goto LABEL_30;
    }

LABEL_29:
    *a5 = v22;
    *(a5 + 8) = v24;
    *(a5 + 16) = v26 | v23 & 0xFFFFFFFFFFFFFF00;
    *(a5 + 24) = 1;
    return;
  }

  if (v10 == 7)
  {
    swift::remote::MemoryReader::readPointer(*(a1 + 2800), a2, a3, 8u, &__p);
    if (v34 == 1)
    {
      v11 = v32;
      v12 = v33;
      if (SBYTE7(v31) < 0)
      {
        operator delete(__p);
      }

      if (v11)
      {
        swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(a1, v11, v12 | a3 & 0xFFFFFFFFFFFFFF00, &__p);
        if (v33 == 1)
        {
          v16 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p, v30, 0, 50, v13, v14, v15);
          if (v16)
          {
            *&v27[8] = v31;
            *v27 = v16;
            v27[24] = 1;
            if (v32 & 1) != 0 || !swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::reflection::TypeRef const*)#1}::operator()(&__p, v16) || (swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::remote::RemoteAddress&)#1}::operator()(&v28, &v27[8]))
            {
              v17 = *&v27[16];
              *a5 = *v27;
              *(a5 + 16) = v17;
              return;
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  if (v10 != 5)
  {
LABEL_30:
    *a5 = 0;
    *(a5 + 24) = 0;
    return;
  }

  swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getDynamicTypeAndAddressClassExistential(a1, a2, a3, a5);
}

void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getDynamicTypeAndAddressClassExistential(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift::remote::MemoryReader::readPointer(*(a1 + 2800), a2, a3, 8u, __p);
  if (v18 != 1)
  {
    goto LABEL_10;
  }

  v6 = v16;
  v7 = v17;
  if ((v15 & 0x80000000) == 0)
  {
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_10:
    *a4 = 0;
    *(a4 + 24) = 0;
    return;
  }

  operator delete(__p[0]);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, v6, v7, __p);
  if ((v14 & 1) != 0 && (TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p[0], __p[1], 0, 50, v8, v9, v10)) != 0)
  {
    *a4 = TypeFromMetadata;
    *(a4 + 8) = v6;
    v12 = 1;
    *(a4 + 16) = v7;
  }

  else
  {
    v12 = 0;
    *a4 = 0;
  }

  *(a4 + 24) = v12;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectEnumValue::$_0>(swift_reflection_projectEnumValue::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(swift::reflection::TypeRefBuilder ******a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = **v2;
  if (!v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *v2[1];
  v6 = *v2[2];
  result = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v2, 0);
  if (!result)
  {
    return result;
  }

  if (*(result + 2) != 4)
  {
    return 0;
  }

  result = (*(*result + 32))(result, *(v4 + 2800), v5, 0, v6);
  if (result)
  {
    TypeInfo = swift::reflection::TypeConverter::getTypeInfo(v4 + 976, v3, 0);
    if (*(TypeInfo + 2) == 4)
    {
      v9 = TypeInfo;
    }

    else
    {
      v9 = 0;
    }

    return (-1431655765 * ((v9[6] - v9[5]) >> 4) > **v2[2]);
  }

  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectEnumValue::$_0>(swift_reflection_projectEnumValue::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(swift::reflection::TypeRefBuilder ******a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = **v2;
  if (!v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *v2[1];
  v6 = *v2[2];
  result = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v2, 0);
  if (!result)
  {
    return result;
  }

  if (*(result + 2) != 4)
  {
    return 0;
  }

  result = (*(*result + 32))(result, *(v4 + 2800), v5, 0, v6);
  if (result)
  {
    TypeInfo = swift::reflection::TypeConverter::getTypeInfo(v4 + 976, v3, 0);
    if (*(TypeInfo + 2) == 4)
    {
      v9 = TypeInfo;
    }

    else
    {
      v9 = 0;
    }

    return (-1431655765 * ((v9[6] - v9[5]) >> 4) > **v2[2]);
  }

  return result;
}

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForTypeRef::$_0>(swift_reflection_dumpInfoForTypeRef::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(swift::reflection::TypeRefBuilder ******a1, void *a2)
{
  v2 = **a1;
  v3 = **v2;
  if (v3)
  {
    TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v2, 0);
    if (TypeInfo)
    {
      swift::reflection::TypeInfo::dump(TypeInfo, &std::cout, 0);
      v22[1] = 0;
      v22[2] = 0;
      v23 = 0;
      v24 = 2400;
      v25 = 0;
      v26 = 0;
      v61 = 0;
      v22[0] = off_E13E8;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v59 = 0;
      Demangling = swift::reflection::TypeRef::getDemangling(v3, v22);
      swift::Demangle::__runtime::mangleNode(Demangling, 0);
      memset(&v19, 0, sizeof(v19));
      if (v20)
      {
        std::string::assign(&v19, "<failed to mangle name>");
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Failed to get mangled name: Node ", 33);
        v6 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, " error ", 7);
        v7 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ":", 1);
        v8 = std::ostream::operator<<();
      }

      else
      {
        std::string::operator=(&v19, &__p);
        v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Mangled name: ", 14);
        v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, "$s", 2);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v19;
        }

        else
        {
          v12 = v19.__r_.__value_.__r.__words[0];
        }

        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v19.__r_.__value_.__l.__size_;
        }

        v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v12, size);
      }

      v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "\n", 1);
      v15 = swift_reflection_copyNameForTypeRef(v14, **v2, 0);
      v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Demangled name: ", 16);
      v17 = strlen(v15);
      v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, v15, v17);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, "\n", 1);
      free(v15);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        v22[0] = off_E13E8;
        if (v61 == &v60)
        {
          (*(*v61 + 32))(v61);
        }

        else if (v61)
        {
          (*(*v61 + 40))();
        }

        v22[0] = off_E13C0;
        result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v23);
        if (v25)
        {
          *(v25 + 48) = 0;
        }

        return result;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_17;
    }
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
}

void *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForTypeRef::$_0>(swift_reflection_dumpInfoForTypeRef::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(swift::reflection::TypeRefBuilder ******a1, void *a2)
{
  v2 = **a1;
  v3 = **v2;
  if (v3)
  {
    TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v2, 0);
    if (TypeInfo)
    {
      swift::reflection::TypeInfo::dump(TypeInfo, &std::cout, 0);
      v22[1] = 0;
      v22[2] = 0;
      v23 = 0;
      v24 = 2400;
      v25 = 0;
      v26 = 0;
      v61 = 0;
      v22[0] = off_E13E8;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v59 = 0;
      Demangling = swift::reflection::TypeRef::getDemangling(v3, v22);
      swift::Demangle::__runtime::mangleNode(Demangling, 0);
      memset(&v19, 0, sizeof(v19));
      if (v20)
      {
        std::string::assign(&v19, "<failed to mangle name>");
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Failed to get mangled name: Node ", 33);
        v6 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, " error ", 7);
        v7 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ":", 1);
        v8 = std::ostream::operator<<();
      }

      else
      {
        std::string::operator=(&v19, &__p);
        v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Mangled name: ", 14);
        v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, "$s", 2);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v19;
        }

        else
        {
          v12 = v19.__r_.__value_.__r.__words[0];
        }

        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v19.__r_.__value_.__l.__size_;
        }

        v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v12, size);
      }

      v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "\n", 1);
      v15 = swift_reflection_copyNameForTypeRef(v14, **v2, 0);
      v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Demangled name: ", 16);
      v17 = strlen(v15);
      v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, v15, v17);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, "\n", 1);
      free(v15);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        v22[0] = off_E13E8;
        if (v61 == &v60)
        {
          (*(*v61 + 32))(v61);
        }

        else if (v61)
        {
          (*(*v61 + 40))();
        }

        v22[0] = off_E13C0;
        result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v23);
        if (v25)
        {
          *(v25 + 48) = 0;
        }

        return result;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_17;
    }
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
}

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForMetadata::$_0>(swift_reflection_dumpInfoForMetadata::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  MetadataTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, ****a1, 0, 0);
  if (MetadataTypeInfo)
  {

    return swift::reflection::TypeInfo::dump(MetadataTypeInfo, &std::cout, 0);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForMetadata::$_0>(swift_reflection_dumpInfoForMetadata::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  MetadataTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, ****a1, 0, 0);
  if (MetadataTypeInfo)
  {

    return swift::reflection::TypeInfo::dump(MetadataTypeInfo, &std::cout, 0);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForInstance::$_0>(swift_reflection_dumpInfoForInstance::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  InstanceTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, ****a1, 0, 0);
  if (InstanceTypeInfo)
  {

    return swift::reflection::TypeInfo::dump(InstanceTypeInfo, &std::cout, 0);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForInstance::$_0>(swift_reflection_dumpInfoForInstance::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  InstanceTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, ****a1, 0, 0);
  if (InstanceTypeInfo)
  {

    return swift::reflection::TypeInfo::dump(InstanceTypeInfo, &std::cout, 0);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateConformanceCache::$_0>(swift_reflection_iterateConformanceCache::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = off_E1050;
  v4 = *v2;
  v5 = &v3;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateConformances();
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateConformanceCache::$_0>(swift_reflection_iterateConformanceCache::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = off_E10E0;
  v4 = *v2;
  v5 = &v3;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateConformances();
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::IterateConformanceTable(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  (*(**(a1 + 2800) + 24))(&v16);
  if (!v16)
  {
    goto LABEL_19;
  }

  v7 = *(v16 + 4);
  (*(**(a1 + 2800) + 24))(&v13);
  v8 = v13;
  if (v13)
  {
    if (v7)
    {
      v9 = (v13 + 16);
      while (1)
      {
        v10 = *v9;
        v20[0] = *(v9 - 1);
        v20[1] = a3;
        v19[0] = v10;
        v19[1] = a3;
        v11 = *(a4 + 24);
        if (!v11)
        {
          goto LABEL_24;
        }

        v9 += 3;
        (*(*v11 + 48))(v11, v20, v19);
        if (!--v7)
        {
          v8 = v13;
          v13 = 0;
          if (v8)
          {
            goto LABEL_10;
          }

          goto LABEL_12;
        }
      }
    }

    v13 = 0;
LABEL_10:
    v20[0] = v8;
    if (!v15)
    {
      goto LABEL_24;
    }

    (*(*v15 + 48))(v15, v20);
  }

LABEL_12:
  if (v15 == &v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  v12 = v16;
  v16 = 0;
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  if (!v18)
  {
LABEL_24:
    std::__throw_bad_function_call[abi:nn200100]();
    _ZNSt3__110__function6__funcIZZ40swift_reflection_iterateConformanceCacheENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_E_NS_9allocatorISI_EEFvNS4_6remote13RemoteAddressESM_EED1Ev();
    return;
  }

  (*(*v18 + 48))(v18, &v13);
LABEL_19:
  if (v18 == &v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18);
  }
}

__n128 _ZNKSt3__110__function6__funcIZZ40swift_reflection_iterateConformanceCacheENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_E_NS_9allocatorISI_EEFvNS4_6remote13RemoteAddressESM_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1050;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void SwiftReflectionContext::allocateTemporaryObject<std::string>(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    (*(*v1 + 48))(v1);
    operator new();
  }

  std::__throw_bad_function_call[abi:nn200100]();
  std::__function::__func<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1},std::allocator<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1}>,void ()(void)>::~__func();
}

uint64_t std::__function::__func<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1},std::allocator<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E1098;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1},std::allocator<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZ40swift_reflection_iterateConformanceCacheENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_E_NS_9allocatorISI_EEFvNS4_6remote13RemoteAddressESM_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E10E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocations::$_0>(swift_reflection_iterateMetadataAllocations::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = off_E1138;
  v4 = *v2;
  v5 = &v3;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateMetadataAllocations();
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocations::$_0>(swift_reflection_iterateMetadataAllocations::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = off_E1180;
  v4 = *v2;
  v5 = &v3;
  swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::iterateMetadataAllocations();
}

__n128 _ZNKSt3__110__function6__funcIZZ43swift_reflection_iterateMetadataAllocationsENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_E_NS_9allocatorISH_EEFvNS5_18MetadataAllocationISC_EEEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1138;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZ43swift_reflection_iterateMetadataAllocationsENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_E_NS_9allocatorISH_EEFvNS5_18MetadataAllocationISC_EEEEclEOSL_(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 4);
  v4 = *(a1 + 16);
  v5 = **(a1 + 8);
  v7 = *a2;
  v8 = v2;
  v9 = v3;
  return v5(&v7, *v4);
}

__n128 _ZNKSt3__110__function6__funcIZZ43swift_reflection_iterateMetadataAllocationsENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_E_NS_9allocatorISH_EEFvNS5_18MetadataAllocationISC_EEEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZ43swift_reflection_iterateMetadataAllocationsENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_E_NS_9allocatorISH_EEFvNS5_18MetadataAllocationISC_EEEEclEOSL_(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 4);
  v4 = *(a1 + 16);
  v5 = **(a1 + 8);
  v7 = *a2;
  v8 = v2;
  v9 = v3;
  return v5(&v7, *v4);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_allocationMetadataPointer::$_0>(swift_reflection_allocationMetadataPointer::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(_WORD ****a1, uint64_t a2)
{
  if (****a1 != 14)
  {
    return 0;
  }

  (*(**(*a2 + 2800) + 24))(&v7);
  v2 = v7;
  if (!v7)
  {
    v3 = 0;
LABEL_7:
    if (v9 == &v8)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    return v3;
  }

  v3 = *(v7 + 32);
  v7 = 0;
  v10 = v2;
  if (v9)
  {
    (*(*v9 + 48))(v9, &v10);
    goto LABEL_7;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_allocationMetadataPointer::$_0>(swift_reflection_allocationMetadataPointer::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v5, v6);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_allocationMetadataPointer::$_0>(swift_reflection_allocationMetadataPointer::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(_WORD ****a1, uint64_t a2)
{
  if (****a1 != 14)
  {
    return 0;
  }

  (*(**(*a2 + 2800) + 24))(&v7);
  v2 = v7;
  if (!v7)
  {
    v3 = 0;
LABEL_7:
    if (v9 == &v8)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    return v3;
  }

  v3 = *(v7 + 32);
  v7 = 0;
  v10 = v2;
  if (v9)
  {
    (*(*v9 + 48))(v9, &v10);
    goto LABEL_7;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_metadataAllocationTagName::$_0>(swift_reflection_metadataAllocationTagName::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v5, v6);
}

std::string *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_metadataAllocationTagName::$_0>(swift_reflection_metadataAllocationTagName::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unsigned int ****a1, void *a2)
{
  v2 = **a1;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationTagName(**v2, &v9);
  v3 = **(v2 + 8);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v8 = 0;
  if (v10 == 1)
  {
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v9;
    }

    v8 = 1;
    SwiftReflectionContext::allocateTemporaryObject<std::string>(v3);
    v4 = v5;
    std::string::operator=(v5, &__p);
    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = v4->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v4 = 0;
  }

  if (v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 == 1 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v4;
}

std::string *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_metadataAllocationTagName::$_0>(swift_reflection_metadataAllocationTagName::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unsigned int ****a1, void *a2)
{
  v2 = **a1;
  swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationTagName(**v2, &v9);
  v3 = **(v2 + 8);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v8 = 0;
  if (v10 == 1)
  {
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v9;
    }

    v8 = 1;
    SwiftReflectionContext::allocateTemporaryObject<std::string>(v3);
    v4 = v5;
    std::string::operator=(v5, &__p);
    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = v4->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v4 = 0;
  }

  if (v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 == 1 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v4;
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationTagName(int a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *a2 = 0x746553746F4ELL;
      v2 = 6;
      goto LABEL_35;
    case 1:
      *a2 = 0x7365786F42;
      v2 = 5;
      goto LABEL_35;
    case 2:
      strcpy(a2, "ObjCClassWrappers");
      v2 = 17;
      goto LABEL_35;
    case 3:
      v6 = 0x6E6F6974636E7546;
      goto LABEL_15;
    case 4:
      v6 = 0x657079746174654DLL;
LABEL_15:
      *a2 = v6;
      strcpy((a2 + 8), "Types");
      v2 = 13;
      goto LABEL_35;
    case 5:
      operator new();
    case 6:
      *(a2 + 16) = 1936027769;
      v4 = *"ialMetatypes";
      v5 = 0x746E657473697845;
      goto LABEL_27;
    case 7:
      v7 = 0x746E657473697845;
      v8 = 0x73657079546C6169;
      goto LABEL_17;
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      *(a2 + 16) = 1936026722;
      v4 = *"itnessTables";
      v5 = 0x576E676965726F46;
      goto LABEL_27;
    case 11:
      operator new();
    case 12:
      strcpy(a2, "Metadata");
      v2 = 8;
      goto LABEL_35;
    case 13:
      strcpy(a2, "TupleCache");
      v2 = 10;
      goto LABEL_35;
    case 14:
      *(a2 + 16) = 1701340001;
      v4 = *"etadataCache";
      v5 = 0x4D636972656E6547;
      goto LABEL_27;
    case 15:
      *(a2 + 16) = 1701340001;
      v4 = *"etadataCache";
      v5 = 0x4D6E676965726F46;
      goto LABEL_27;
    case 16:
      operator new();
    case 17:
      *(a2 + 16) = 1635017060;
      v4 = *"lassMetadata";
      v5 = 0x43636972656E6547;
      goto LABEL_27;
    case 18:
      *(a2 + 16) = 1635017060;
      v4 = *"alueMetadata";
      v5 = 0x56636972656E6547;
LABEL_27:
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 20) = 0;
      v2 = 20;
      goto LABEL_35;
    case 19:
      operator new();
    case 20:
      strcpy(a2, "GlobalMetadataCache");
      v2 = 19;
      goto LABEL_35;
    case 21:
      operator new();
    case 22:
      operator new();
    case 23:
      operator new();
    case 24:
      *a2 = 0x617461646174654DLL;
      v9 = 1801675088;
      goto LABEL_34;
    case 25:
      v7 = 0x547373656E746957;
      v8 = 0x6B636150656C6261;
LABEL_17:
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0;
      v2 = 16;
      goto LABEL_35;
    case 26:
      *a2 = 0x745374756F79614CLL;
      v9 = 1735289202;
LABEL_34:
      *(a2 + 8) = v9;
      *(a2 + 12) = 0;
      v2 = 12;
LABEL_35:
      *(a2 + 23) = v2;
      v3 = 1;
      break;
    case 27:
      strcpy(a2, "FixedArrayCache");
      v3 = 1;
      *(a2 + 23) = 15;
      break;
    default:
      v3 = 0;
      *a2 = 0;
      break;
  }

  *(a2 + 24) = v3;
}

void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationTagName(int a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *a2 = 0x746553746F4ELL;
      v2 = 6;
      goto LABEL_35;
    case 1:
      *a2 = 0x7365786F42;
      v2 = 5;
      goto LABEL_35;
    case 2:
      strcpy(a2, "ObjCClassWrappers");
      v2 = 17;
      goto LABEL_35;
    case 3:
      v6 = 0x6E6F6974636E7546;
      goto LABEL_15;
    case 4:
      v6 = 0x657079746174654DLL;
LABEL_15:
      *a2 = v6;
      strcpy((a2 + 8), "Types");
      v2 = 13;
      goto LABEL_35;
    case 5:
      operator new();
    case 6:
      *(a2 + 16) = 1936027769;
      v4 = *"ialMetatypes";
      v5 = 0x746E657473697845;
      goto LABEL_27;
    case 7:
      v7 = 0x746E657473697845;
      v8 = 0x73657079546C6169;
      goto LABEL_17;
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      *(a2 + 16) = 1936026722;
      v4 = *"itnessTables";
      v5 = 0x576E676965726F46;
      goto LABEL_27;
    case 11:
      operator new();
    case 12:
      strcpy(a2, "Metadata");
      v2 = 8;
      goto LABEL_35;
    case 13:
      strcpy(a2, "TupleCache");
      v2 = 10;
      goto LABEL_35;
    case 14:
      *(a2 + 16) = 1701340001;
      v4 = *"etadataCache";
      v5 = 0x4D636972656E6547;
      goto LABEL_27;
    case 15:
      *(a2 + 16) = 1701340001;
      v4 = *"etadataCache";
      v5 = 0x4D6E676965726F46;
      goto LABEL_27;
    case 16:
      operator new();
    case 17:
      *(a2 + 16) = 1635017060;
      v4 = *"lassMetadata";
      v5 = 0x43636972656E6547;
      goto LABEL_27;
    case 18:
      *(a2 + 16) = 1635017060;
      v4 = *"alueMetadata";
      v5 = 0x56636972656E6547;
LABEL_27:
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 20) = 0;
      v2 = 20;
      goto LABEL_35;
    case 19:
      operator new();
    case 20:
      strcpy(a2, "GlobalMetadataCache");
      v2 = 19;
      goto LABEL_35;
    case 21:
      operator new();
    case 22:
      operator new();
    case 23:
      operator new();
    case 24:
      *a2 = 0x617461646174654DLL;
      v9 = 1801675088;
      goto LABEL_34;
    case 25:
      v7 = 0x547373656E746957;
      v8 = 0x6B636150656C6261;
LABEL_17:
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0;
      v2 = 16;
      goto LABEL_35;
    case 26:
      *a2 = 0x745374756F79614CLL;
      v9 = 1735289202;
LABEL_34:
      *(a2 + 8) = v9;
      *(a2 + 12) = 0;
      v2 = 12;
LABEL_35:
      *(a2 + 23) = v2;
      v3 = 1;
      break;
    case 27:
      strcpy(a2, "FixedArrayCache");
      v3 = 1;
      *(a2 + 23) = 15;
      break;
    default:
      v3 = 0;
      *a2 = 0;
      break;
  }

  *(a2 + 24) = v3;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_metadataAllocationCacheNode::$_0>(swift_reflection_metadataAllocationCacheNode::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = (*v2)[1];
  v5 = *(*v2 + 4);
  v7 = **v2;
  v8 = 0;
  v9 = 0;
  v10 = v4;
  v11 = v5;
  v12 = 0;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationCacheNode(v3, &v7, &v13);
  result = 0;
  if (v14 == 1)
  {
    **v2[1] = v13;
    return 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_metadataAllocationCacheNode::$_0>(swift_reflection_metadataAllocationCacheNode::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = (*v2)[1];
  v5 = *(*v2 + 4);
  v7 = **v2;
  v8 = 0;
  v9 = 0;
  v10 = v4;
  v11 = v5;
  v12 = 0;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationCacheNode(v3, &v7, &v13);
  result = 0;
  if (v14 == 1)
  {
    **v2[1] = v13;
    return 1;
  }

  return result;
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationCacheNode@<X0>(uint64_t *result@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  v5 = v4 > 0x17;
  v6 = (1 << v4) & 0xC1E7FE;
  if (v5 || v6 == 0)
  {
    *a3 = 0;
    a3[16] = 0;
    return result;
  }

  (*(*result[350] + 24))(&v11);
  v8 = v11;
  if (v11)
  {
    *a3 = *v11;
    a3[16] = 1;
    v11 = 0;
    v14 = v8;
    if (!v13)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocationBacktraces::$_0>(swift_reflection_iterateMetadataAllocationBacktraces::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v9, v10);
    }

    (*(*v13 + 48))(v13, &v14);
  }

  else
  {
    *a3 = 0;
    a3[16] = 0;
  }

  result = v13;
  if (v13 == &v12)
  {
    return (*(*v13 + 32))(v13);
  }

  if (v13)
  {
    return (*(*v13 + 40))(v13);
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocationBacktraces::$_0>(swift_reflection_iterateMetadataAllocationBacktraces::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = off_E1208;
  v4 = *v2;
  v5 = &v3;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateMetadataAllocationBacktraces();
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocationBacktraces::$_0>(swift_reflection_iterateMetadataAllocationBacktraces::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = off_E1250;
  v4 = *v2;
  v5 = &v3;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateMetadataAllocationBacktraces();
}

__n128 _ZNKSt3__110__function6__funcIZZ52swift_reflection_iterateMetadataAllocationBacktracesENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_T1_E_NS_9allocatorISJ_EEFvyjPKyEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1208;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZ52swift_reflection_iterateMetadataAllocationBacktracesENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_T1_E_NS_9allocatorISJ_EEFvyjPKyEEclEOyOjOSN_(uint64_t a1, uint64_t *a2, unsigned int *a3, const void **a4)
{
  v4 = *a3;
  if (v4)
  {
    operator new();
  }

  (**(a1 + 8))(*a2, v4, 0, **(a1 + 16));
}

__n128 _ZNKSt3__110__function6__funcIZZ52swift_reflection_iterateMetadataAllocationBacktracesENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_T1_E_NS_9allocatorISJ_EEFvyjPKyEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1250;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZ52swift_reflection_iterateMetadataAllocationBacktracesENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_T1_E_NS_9allocatorISJ_EEFvyjPKyEEclEOyOjOSN_(uint64_t a1, uint64_t *a2, unsigned int *a3, const void **a4)
{
  v4 = *a3;
  if (v4)
  {
    operator new();
  }

  (**(a1 + 8))(*a2, v4, 0, **(a1 + 16));
}

std::string *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_slab_return SwiftReflectionContext::withContext<swift_async_task_slab_return,swift_reflection_asyncTaskSlabPointer::$_0>(swift_reflection_asyncTaskSlabPointer::$_0 const&)::{lambda(swift_async_task_slab_return&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(*a2);
  if (*(v3 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v3, 0, 0, &v10);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v3, 0, 0, &v10);
  }

  if (v11 == 1)
  {
    v4 = **(v2 + 8);
    __p.__r_.__value_.__s.__data_[0] = 0;
    v9 = 0;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v10;
    }

    v9 = 1;
    SwiftReflectionContext::allocateTemporaryObject<std::string>(v4);
    v5 = v6;
    std::string::operator=(v6, &__p);
    if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = v5->__r_.__value_.__r.__words[0];
    }

    if (v9 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v11 == 1 && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v5;
}

std::string *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_slab_return SwiftReflectionContext::withContext<swift_async_task_slab_return,swift_reflection_asyncTaskSlabPointer::$_0>(swift_reflection_asyncTaskSlabPointer::$_0 const&)::{lambda(swift_async_task_slab_return&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(*a2);
  if (*(v3 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v3, 0, 0, &v10);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v3, 0, 0, &v10);
  }

  if (v11 == 1)
  {
    v4 = **(v2 + 8);
    __p.__r_.__value_.__s.__data_[0] = 0;
    v9 = 0;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v10;
    }

    v9 = 1;
    SwiftReflectionContext::allocateTemporaryObject<std::string>(v4);
    v5 = v6;
    std::string::operator=(v6, &__p);
    if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = v5->__r_.__value_.__r.__words[0];
    }

    if (v9 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v11 == 1 && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v5;
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(uint64_t a1)
{
  if ((*(a1 + 2920) & 1) == 0)
  {
    operator new();
  }
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, std::string *a4@<X8>)
{
  v6 = a1;
  swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(a1[350], &v91);
  if (!v91)
  {
    operator new();
  }

  v62 = a3;
  v65 = a4;
  v77 = 0;
  v87 = 0u;
  v88 = 0u;
  v90 = 0;
  v89 = 0u;
  v8 = *(v91 + 32);
  v9 = *(v91 + 36);
  LODWORD(v76) = v8;
  DWORD1(v76) = BYTE1(v8);
  v10 = vdupq_n_s32(v8);
  v11 = *(v91 + 96);
  v12 = *(v91 + 100);
  HIDWORD(v77) = BYTE1(v11) & 1;
  BYTE5(v77) = (v11 & 0x200) != 0;
  BYTE6(v77) = (v11 & 0x400) != 0;
  v79 = (v11 & 0x1000) != 0;
  v80 = (v11 & 0x2000) != 0;
  BYTE12(v76) = 0;
  v10.i64[0] = *&vmovn_s32(vshlq_u32(v10, xmmword_DA680)) & 0xFF01FF01FF01FF01;
  DWORD2(v76) = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
  v81 = (v11 & 0x4000) != 0;
  v78 = v12 > 3;
  HIBYTE(v77) = 1;
  v13 = v12 >= 4;
  v14 = v12 | 3;
  if (!v13)
  {
    v14 = 0;
  }

  v82 = 1;
  v83 = v14;
  v15 = v9 | (*(v91 + 144) << 32);
  v16 = *(v91 + 120);
  v84 = v15;
  v86 = v16;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getRunJob<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v6, v91);
  v17 = 0;
  v85 = v18;
  v19 = *(v91 + 104);
  v20 = &v71;
  v21 = 0x1000C0077774924;
  while (v19 && v17 < a2)
  {
    v22 = v17 + 1;
    swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v73);
    if (v73)
    {
      v23 = *v73;
      if (v23 != 2)
      {
        if (v23 == 1)
        {
          swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v70);
          v24 = v70;
          if (v70)
          {
            goto LABEL_13;
          }

LABEL_17:
          v25 = 0;
          goto LABEL_18;
        }

LABEL_72:
        v26 = 0;
        v44 = v73;
        v19 = v73[1];
        v73 = 0;
        v17 = v22;
        v70 = v44;
        if (!v75)
        {
          goto LABEL_116;
        }

        (*(*v75 + 48))(v75, &v70);
        goto LABEL_74;
      }

      swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v70);
      v24 = v70;
      if (!v70)
      {
        goto LABEL_17;
      }

LABEL_13:
      v25 = v24[2];
      v70 = 0;
      __p = v24;
      if (!v72)
      {
        goto LABEL_116;
      }

      (*(*v72 + 48))(v72, &__p);
LABEL_18:
      if (v72 == v20)
      {
        (*(*v72 + 32))(v72);
        if (!v25)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v72)
        {
          (*(*v72 + 40))();
        }

        if (!v25)
        {
          goto LABEL_72;
        }
      }

      if (a2 <= v22)
      {
        v27 = v17 + 1;
      }

      else
      {
        v27 = a2;
      }

      v28 = v27 + 1;
      if (v22 >= a2)
      {
        v22 = v28;
      }

      else
      {
        v63 = v28;
        v66 &= 0xFFFFFFFFFFFFFF00;
        v29 = v17 + 2;
        while (1)
        {
          swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v6[350], &v70);
          if (!v70)
          {
            operator new();
          }

          v30 = *(&v87 + 1);
          if (*(&v87 + 1) >= v88)
          {
            v32 = v87;
            v33 = *(&v87 + 1) - v87;
            v34 = (*(&v87 + 1) - v87) >> 3;
            v35 = v34 + 1;
            if ((v34 + 1) >> 61)
            {
              goto LABEL_117;
            }

            v36 = v6;
            v37 = a2;
            v38 = v20;
            v39 = v21;
            v40 = v88 - v87;
            if ((v88 - v87) >> 2 > v35)
            {
              v35 = v40 >> 2;
            }

            if (v40 >= 0x7FFFFFFFFFFFFFF8)
            {
              v41 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v35;
            }

            if (v41)
            {
              if (!(v41 >> 61))
              {
                operator new();
              }

LABEL_118:
              std::string::__throw_length_error[abi:nn200100]();
            }

            *(8 * v34) = v25;
            v31 = 8 * v34 + 8;
            memcpy(0, v32, v33);
            *&v87 = 0;
            *(&v87 + 1) = v31;
            *&v88 = 0;
            if (v32)
            {
              operator delete(v32);
            }

            v21 = v39;
            v20 = v38;
            a2 = v37;
            v6 = v36;
          }

          else
          {
            **(&v87 + 1) = v25;
            v31 = v30 + 8;
          }

          *(&v87 + 1) = v31;
          if (*(v91 + 35))
          {
            if (!v6[372])
            {
              operator new();
            }

            v64 &= 0xFFFFFFFFFFFFFF00;
            swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &__p);
            v42 = __p;
            if (__p)
            {
              v25 = *(__p + 1);
              __p = 0;
              v94 = v42;
              if (!v69)
              {
                goto LABEL_116;
              }

              (*(*v69 + 48))(v69, &v94);
            }

            else
            {
              v25 = 0;
            }

            if (v69 == &v68)
            {
              (*(*v69 + 32))(v69);
            }

            else if (v69)
            {
              (*(*v69 + 40))();
            }
          }

          else
          {
            v25 = 0;
          }

          v43 = v70;
          v70 = 0;
          if (v43)
          {
            __p = v43;
            if (!v72)
            {
              goto LABEL_116;
            }

            (*(*v72 + 48))(v72, &__p);
          }

          if (v72 == v20)
          {
            (*(*v72 + 32))(v72);
          }

          else if (v72)
          {
            (*(*v72 + 40))();
          }

          if (!v25)
          {
            break;
          }

          v13 = v29++ >= a2;
          if (v13)
          {
            v22 = v63;
            goto LABEL_72;
          }
        }

        v22 = v29;
      }

      goto LABEL_72;
    }

    v26 = 3;
    ++v17;
LABEL_74:
    if (v75 == &v74)
    {
      (*(*v75 + 32))(v75);
    }

    else if (v75)
    {
      (*(*v75 + 40))();
    }

    if (v26)
    {
      break;
    }
  }

  v45 = *(v91 + 64);
  v90 = v45;
  if (HIBYTE(v77) == 1 && !v78)
  {
    v48 = v62 + 1;
    do
    {
      if (!v45)
      {
        break;
      }

      if (!--v48)
      {
        break;
      }

      swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v73);
      v49 = v73;
      if (v73)
      {
        v50 = v6[352] & v73[1];
        v51 = v89;
        if (v89 >= *(&v89 + 1))
        {
          v53 = *(&v88 + 1);
          v54 = v89 - *(&v88 + 1);
          v55 = (v89 - *(&v88 + 1)) >> 3;
          v56 = v55 + 1;
          if ((v55 + 1) >> 61)
          {
            goto LABEL_117;
          }

          v57 = *(&v89 + 1) - *(&v88 + 1);
          if ((*(&v89 + 1) - *(&v88 + 1)) >> 2 > v56)
          {
            v56 = v57 >> 2;
          }

          if (v57 >= 0x7FFFFFFFFFFFFFF8)
          {
            v58 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v58 = v56;
          }

          if (v58)
          {
            if (!(v58 >> 61))
            {
              operator new();
            }

            goto LABEL_118;
          }

          *(8 * v55) = v50;
          v52 = 8 * v55 + 8;
          memcpy(0, v53, v54);
          *(&v88 + 1) = 0;
          v89 = v52;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *v89 = v50;
          v52 = v51 + 8;
        }

        *&v89 = v52;
        v59 = v73;
        v60 = *v73;
        v61 = v6[352];
        v73 = 0;
        v70 = v59;
        if (!v75)
        {
          goto LABEL_116;
        }

        v45 = v61 & v60;
        (*(*v75 + 48))(v75, &v70);
      }

      if (v75 == &v74)
      {
        (*(*v75 + 32))(v75);
      }

      else if (v75)
      {
        (*(*v75 + 40))();
      }
    }

    while (v49);
  }

  std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::nullopt_t const&,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(v65, &std::nullopt, &v76);
  if (*(&v88 + 1))
  {
    *&v89 = *(&v88 + 1);
    operator delete(*(&v88 + 1));
  }

  if (v87)
  {
    *(&v87 + 1) = v87;
    operator delete(v87);
  }

  v46 = v91;
  v91 = 0;
  if (v46)
  {
    *&v76 = v46;
    if (!v93)
    {
LABEL_116:
      std::__throw_bad_function_call[abi:nn200100]();
LABEL_117:
      std::string::__throw_length_error[abi:nn200100]();
    }

    (*(*v93 + 48))(v93, &v76);
  }

  result = v93;
  if (v93 == &v92)
  {
    return (*(*v93 + 32))(v93);
  }

  if (v93)
  {
    return (*(*v93 + 40))();
  }

  return result;
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, std::string *a4@<X8>)
{
  v6 = a1;
  swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(a1[350], &v86);
  if (!v86)
  {
    operator new();
  }

  v60 = a3;
  v63 = a4;
  v75 = 0;
  v82 = 0u;
  v83 = 0u;
  v85 = 0;
  v84 = 0u;
  v8 = *(v86 + 32);
  v9 = *(v86 + 36);
  v10 = vdupq_n_s32(v8);
  LODWORD(v74) = v8;
  DWORD1(v74) = BYTE1(v8);
  v11 = *(v86 + 96);
  HIDWORD(v75) = BYTE1(v11) & 1;
  BYTE5(v75) = (v11 & 0x200) != 0;
  HIWORD(v75) = (v11 & 0x400) != 0;
  HIBYTE(v75) = 1;
  BYTE12(v74) = 0;
  v10.i64[0] = *&vmovn_s32(vshlq_u32(v10, xmmword_DA680)) & 0xFF01FF01FF01FF01;
  DWORD2(v74) = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
  *v10.i8 = vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v11), xmmword_DA6A0)), 0x1000100010001);
  v76 = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
  v77 = 0;
  v78 = 0;
  v12 = v9 | (*(v86 + 144) << 32);
  v13 = *(v86 + 120);
  v79 = v12;
  v81 = v13;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getRunJob<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v6, v86);
  v14 = 0;
  v80 = v15;
  v16 = *(v86 + 104);
  v17 = &v69;
  v18 = 0x1000C0077774924;
  while (v16 && v14 < a2)
  {
    v19 = v14 + 1;
    swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v71);
    if (v71)
    {
      v20 = *v71;
      if (v20 != 2)
      {
        if (v20 == 1)
        {
          swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v68);
          v21 = v68;
          if (v68)
          {
            goto LABEL_11;
          }

LABEL_15:
          v22 = 0;
          goto LABEL_16;
        }

LABEL_70:
        v23 = 0;
        v42 = v71;
        v16 = v71[1];
        v71 = 0;
        v14 = v19;
        v68 = v42;
        if (!v73)
        {
          goto LABEL_114;
        }

        (*(*v73 + 48))(v73, &v68);
        goto LABEL_72;
      }

      swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v68);
      v21 = v68;
      if (!v68)
      {
        goto LABEL_15;
      }

LABEL_11:
      v22 = v21[2];
      v68 = 0;
      __p = v21;
      if (!v70)
      {
        goto LABEL_114;
      }

      (*(*v70 + 48))(v70, &__p);
LABEL_16:
      if (v70 == v17)
      {
        (*(*v70 + 32))(v70);
        if (!v22)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v70)
        {
          (*(*v70 + 40))();
        }

        if (!v22)
        {
          goto LABEL_70;
        }
      }

      if (a2 <= v19)
      {
        v24 = v14 + 1;
      }

      else
      {
        v24 = a2;
      }

      v25 = v24 + 1;
      if (v19 >= a2)
      {
        v19 = v25;
      }

      else
      {
        v61 = v25;
        v64 &= 0xFFFFFFFFFFFFFF00;
        v26 = v14 + 2;
        while (1)
        {
          swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v6[350], &v68);
          if (!v68)
          {
            operator new();
          }

          v27 = *(&v82 + 1);
          if (*(&v82 + 1) >= v83)
          {
            v29 = v82;
            v30 = *(&v82 + 1) - v82;
            v31 = (*(&v82 + 1) - v82) >> 3;
            v32 = v31 + 1;
            if ((v31 + 1) >> 61)
            {
              goto LABEL_115;
            }

            v33 = v6;
            v34 = a2;
            v35 = v17;
            v36 = v18;
            v37 = v83 - v82;
            if ((v83 - v82) >> 2 > v32)
            {
              v32 = v37 >> 2;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFF8)
            {
              v38 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v32;
            }

            if (v38)
            {
              if (!(v38 >> 61))
              {
                operator new();
              }

LABEL_116:
              std::string::__throw_length_error[abi:nn200100]();
            }

            *(8 * v31) = v22;
            v28 = 8 * v31 + 8;
            memcpy(0, v29, v30);
            *&v82 = 0;
            *(&v82 + 1) = v28;
            *&v83 = 0;
            if (v29)
            {
              operator delete(v29);
            }

            v18 = v36;
            v17 = v35;
            a2 = v34;
            v6 = v33;
          }

          else
          {
            **(&v82 + 1) = v22;
            v28 = v27 + 8;
          }

          *(&v82 + 1) = v28;
          if (*(v86 + 35))
          {
            if (!v6[372])
            {
              operator new();
            }

            v62 &= 0xFFFFFFFFFFFFFF00;
            swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &__p);
            v39 = __p;
            if (__p)
            {
              v22 = *(__p + 1);
              __p = 0;
              v89 = v39;
              if (!v67)
              {
                goto LABEL_114;
              }

              (*(*v67 + 48))(v67, &v89);
            }

            else
            {
              v22 = 0;
            }

            if (v67 == &v66)
            {
              (*(*v67 + 32))(v67);
            }

            else if (v67)
            {
              (*(*v67 + 40))();
            }
          }

          else
          {
            v22 = 0;
          }

          v40 = v68;
          v68 = 0;
          if (v40)
          {
            __p = v40;
            if (!v70)
            {
              goto LABEL_114;
            }

            (*(*v70 + 48))(v70, &__p);
          }

          if (v70 == v17)
          {
            (*(*v70 + 32))(v70);
          }

          else if (v70)
          {
            (*(*v70 + 40))();
          }

          if (!v22)
          {
            break;
          }

          if (v26++ >= a2)
          {
            v19 = v61;
            goto LABEL_70;
          }
        }

        v19 = v26;
      }

      goto LABEL_70;
    }

    v23 = 3;
    ++v14;
LABEL_72:
    if (v73 == &v72)
    {
      (*(*v73 + 32))(v73);
    }

    else if (v73)
    {
      (*(*v73 + 40))();
    }

    if (v23)
    {
      break;
    }
  }

  v43 = *(v86 + 64);
  v85 = v43;
  if (HIBYTE(v75) == 1 && (v76 & 1) == 0)
  {
    v46 = v60 + 1;
    do
    {
      if (!v43)
      {
        break;
      }

      if (!--v46)
      {
        break;
      }

      swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v71);
      v47 = v71;
      if (v71)
      {
        v48 = v6[352] & v71[1];
        v49 = v84;
        if (v84 >= *(&v84 + 1))
        {
          v51 = *(&v83 + 1);
          v52 = v84 - *(&v83 + 1);
          v53 = (v84 - *(&v83 + 1)) >> 3;
          v54 = v53 + 1;
          if ((v53 + 1) >> 61)
          {
            goto LABEL_115;
          }

          v55 = *(&v84 + 1) - *(&v83 + 1);
          if ((*(&v84 + 1) - *(&v83 + 1)) >> 2 > v54)
          {
            v54 = v55 >> 2;
          }

          if (v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            v56 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v56 = v54;
          }

          if (v56)
          {
            if (!(v56 >> 61))
            {
              operator new();
            }

            goto LABEL_116;
          }

          *(8 * v53) = v48;
          v50 = 8 * v53 + 8;
          memcpy(0, v51, v52);
          *(&v83 + 1) = 0;
          v84 = v50;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v84 = v48;
          v50 = v49 + 8;
        }

        *&v84 = v50;
        v57 = v71;
        v58 = *v71;
        v59 = v6[352];
        v71 = 0;
        v68 = v57;
        if (!v73)
        {
          goto LABEL_114;
        }

        v43 = v59 & v58;
        (*(*v73 + 48))(v73, &v68);
      }

      if (v73 == &v72)
      {
        (*(*v73 + 32))(v73);
      }

      else if (v73)
      {
        (*(*v73 + 40))();
      }
    }

    while (v47);
  }

  std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::nullopt_t const&,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(v63, &std::nullopt, &v74);
  if (*(&v83 + 1))
  {
    *&v84 = *(&v83 + 1);
    operator delete(*(&v83 + 1));
  }

  if (v82)
  {
    *(&v82 + 1) = v82;
    operator delete(v82);
  }

  v44 = v86;
  v86 = 0;
  if (v44)
  {
    *&v74 = v44;
    if (!v88)
    {
LABEL_114:
      std::__throw_bad_function_call[abi:nn200100]();
LABEL_115:
      std::string::__throw_length_error[abi:nn200100]();
    }

    (*(*v88 + 48))(v88, &v74);
  }

  result = v88;
  if (v88 == &v87)
  {
    return (*(*v88 + 32))(v88);
  }

  if (v88)
  {
    return (*(*v88 + 40))();
  }

  return result;
}

std::string *std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v5;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  v6 = *a3;
  v7 = a3[1];
  v8 = a3[3];
  *&this[2].__r_.__value_.__r.__words[2] = a3[2];
  *&this[3].__r_.__value_.__r.__words[1] = v8;
  *&this[1].__r_.__value_.__r.__words[1] = v6;
  *&this[2].__r_.__value_.__l.__data_ = v7;
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  v10 = *(a3 + 8);
  v9 = *(a3 + 9);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_13;
  }

  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  v12 = *(a3 + 11);
  v11 = *(a3 + 12);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_13:
    std::string::__throw_length_error[abi:nn200100]();
  }

  this[6].__r_.__value_.__r.__words[0] = *(a3 + 14);
  return this;
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getRunJob<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2816) & *(a2 + 56);
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(a1);
  v5 = *(a1 + 2936);
  if (v5)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    (*(**(a1 + 2800) + 24))(&v14);
    v11 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 2944);
  if (v7)
  {
    v8 = v4 == v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || ((v9 = *(a1 + 2952)) != 0 && v4 == v9 || (v10 = *(a1 + 2960)) != 0 && v4 == v10) && *(a2 + 160))
  {
    (*(**(a1 + 2800) + 24))(&v14);
    v11 = v14;
    if (v14)
    {
LABEL_18:
      v14 = 0;
      v17 = v11;
      if (!v16)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        std::vector<unsigned long long>::push_back[abi:nn200100](v12, v13);
        return;
      }

      (*(*v16 + 48))(v16, &v17);
    }

LABEL_20:
    if (v16 == &v15)
    {
      (*(*v16 + 32))(v16);
    }

    else if (v16)
    {
      (*(*v16 + 40))(v16);
    }
  }
}

void std::vector<unsigned long long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

_BYTE *swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v13);
  if (v15)
  {
    if (v15 == v14)
    {
      v12 = v11;
      (*(*v15 + 24))();
      v3 = v12;
    }

    else
    {
      v3 = (*(*v15 + 16))();
      v12 = v3;
    }

    v5 = v13;
    v13 = 0;
    *a2 = v5;
    v6 = a2 + 1;
    if (v3)
    {
      if (v3 == v11)
      {
        a2[4] = v6;
        (*(*v3 + 24))(v3);
      }

      else
      {
        a2[4] = (*(*v3 + 16))(v3, v6);
      }

      if (v12 == v11)
      {
        (*(*v12 + 32))(v12);
      }

      else if (v12)
      {
        (*(*v12 + 40))();
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v4 = v13;
    v13 = 0;
    *a2 = v4;
    a2[4] = 0;
  }

  v7 = v13;
  result = v15;
  v13 = 0;
  if (v7)
  {
    v11[0] = v7;
    if (!v15)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v9, v10);
    }

    (*(*v15 + 48))();
    result = v15;
  }

  if (result == v14)
  {
    return (*(*result + 32))(result);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

_BYTE *swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v13);
  if (v15)
  {
    if (v15 == v14)
    {
      v12 = v11;
      (*(*v15 + 24))();
      v3 = v12;
    }

    else
    {
      v3 = (*(*v15 + 16))();
      v12 = v3;
    }

    v5 = v13;
    v13 = 0;
    *a2 = v5;
    v6 = a2 + 1;
    if (v3)
    {
      if (v3 == v11)
      {
        a2[4] = v6;
        (*(*v3 + 24))(v3);
      }

      else
      {
        a2[4] = (*(*v3 + 16))(v3, v6);
      }

      if (v12 == v11)
      {
        (*(*v12 + 32))(v12);
      }

      else if (v12)
      {
        (*(*v12 + 40))();
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v4 = v13;
    v13 = 0;
    *a2 = v4;
    a2[4] = 0;
  }

  v7 = v13;
  result = v15;
  v13 = 0;
  if (v7)
  {
    v11[0] = v7;
    if (!v15)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v9, v10);
    }

    (*(*v15 + 48))();
    result = v15;
  }

  if (result == v14)
  {
    return (*(*result + 32))(result);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

_BYTE *swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v14);
  if (v16)
  {
    if (v16 == v15)
    {
      v13 = v12;
      (*(*v16 + 24))();
      v3 = v13;
    }

    else
    {
      v3 = (*(*v16 + 16))();
      v13 = v3;
    }

    v5 = v14;
    v14 = 0;
    *a2 = v5;
    v6 = a2 + 1;
    if (v3)
    {
      if (v3 == v12)
      {
        a2[4] = v6;
        (*(*v3 + 24))(v3);
      }

      else
      {
        a2[4] = (*(*v3 + 16))(v3, v6);
      }

      if (v13 == v12)
      {
        (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        (*(*v13 + 40))();
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v4 = v14;
    v14 = 0;
    *a2 = v4;
    a2[4] = 0;
  }

  v7 = v14;
  result = v16;
  v14 = 0;
  if (v7)
  {
    v12[0] = v7;
    if (!v16)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::string,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(v9, v10, v11);
    }

    (*(*v16 + 48))();
    result = v16;
  }

  if (result == v15)
  {
    return (*(*result + 32))(result);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::string,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 24) = 1;
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[3];
  *(a1 + 64) = a3[2];
  *(a1 + 80) = v6;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  v8 = *(a3 + 8);
  v7 = *(a3 + 9);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_8;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v10 = *(a3 + 11);
  v9 = *(a3 + 12);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_8:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *(a1 + 144) = *(a3 + 14);
  return a1;
}

uint64_t std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::nullopt_t const&,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a1 + 64) = a3[2];
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  v7 = *(a3 + 8);
  v6 = *(a3 + 9);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_8;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v9 = *(a3 + 11);
  v8 = *(a3 + 12);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_8:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *(a1 + 144) = *(a3 + 14);
  return a1;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_slab_allocations_return SwiftReflectionContext::withContext<swift_async_task_slab_allocations_return,swift_reflection_asyncTaskSlabAllocations::$_0>(swift_reflection_asyncTaskSlabAllocations::$_0 const&)::{lambda(swift_async_task_slab_allocations_return&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskSlabAllocations(*a2, &__p);
  v5 = v19;
  v6 = v20;
  SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(**(v4 + 8));
  v8 = v7;
  if (v7[2] - *v7 < (v22 - v21))
  {
    if (((v22 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = v21;
  v10 = v22;
  if (v21 != v22)
  {
    do
    {
      *&v15 = *v9;
      v12 = *(v9 + 3);
      DWORD2(v15) = *(v9 + 2);
      if ((v12 - 1) <= 5)
      {
        v11 = dword_DA8B0[v12 - 1];
      }

      else
      {
        v11 = 0;
      }

      HIDWORD(v15) = v11;
      std::vector<swift_async_task_allocation_chunk>::push_back[abi:nn200100](v8, &v15);
      v9 += 16;
    }

    while (v9 != v10);
    v9 = v21;
  }

  v13 = *v8;
  v14 = (v8[1] - *v8) >> 4;
  *a3 = 0;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 20) = v14;
  *(a3 + 24) = v13;
  if (v9)
  {
    v22 = v9;
    operator delete(v9);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_slab_allocations_return SwiftReflectionContext::withContext<swift_async_task_slab_allocations_return,swift_reflection_asyncTaskSlabAllocations::$_0>(swift_reflection_asyncTaskSlabAllocations::$_0 const&)::{lambda(swift_async_task_slab_allocations_return&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskSlabAllocations(*a2, &__p);
  v5 = v19;
  v6 = v20;
  SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(**(v4 + 8));
  v8 = v7;
  if (v7[2] - *v7 < (v22 - v21))
  {
    if (((v22 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = v21;
  v10 = v22;
  if (v21 != v22)
  {
    do
    {
      *&v15 = *v9;
      v12 = *(v9 + 3);
      DWORD2(v15) = *(v9 + 2);
      if ((v12 - 1) <= 5)
      {
        v11 = dword_DA8B0[v12 - 1];
      }

      else
      {
        v11 = 0;
      }

      HIDWORD(v15) = v11;
      std::vector<swift_async_task_allocation_chunk>::push_back[abi:nn200100](v8, &v15);
      v9 += 16;
    }

    while (v9 != v10);
    v9 = v21;
  }

  v13 = *v8;
  v14 = (v8[1] - *v8) >> 4;
  *a3 = 0;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 20) = v14;
  *(a3 + 24) = v13;
  if (v9)
  {
    v22 = v9;
    operator delete(v9);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskSlabAllocations@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  (*(**(a1 + 2800) + 24))(&v5);
  if (v5)
  {
    operator new();
  }

  strcpy(a3, "failure reading slab");
  *(a3 + 23) = 276;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  result = v7;
  if (v7 == &v6)
  {
    return (*(*v7 + 32))(v7);
  }

  if (v7)
  {
    return (*(*v7 + 40))(v7);
  }

  return result;
}

void SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    (*(*v1 + 48))(v1);
    operator new();
  }

  std::__throw_bad_function_call[abi:nn200100]();
  std::vector<swift_async_task_allocation_chunk>::push_back[abi:nn200100](v2, v3);
}

void std::vector<swift_async_task_allocation_chunk>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t std::__function::__func<std::vector<swift_async_task_allocation_chunk> * SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(void)::{lambda(void)#1},std::allocator<std::vector<swift_async_task_allocation_chunk> * SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E12B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::vector<swift_async_task_allocation_chunk> * SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(void)::{lambda(void)#1},std::allocator<std::vector<swift_async_task_allocation_chunk> * SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_info SwiftReflectionContext::withContext<swift_async_task_info,swift_reflection_asyncTaskInfo::$_0>(swift_reflection_asyncTaskInfo::$_0 const&)::{lambda(swift_async_task_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(*a2);
  if (*(v5 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, 1000000, 1000, &v14);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, 1000000, 1000, &v14);
  }

  if (v15 != 1)
  {
    v7 = SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(**(v4 + 8));
    v8 = v16;
    v9 = v17;
    if (v16 != v17)
    {
      do
      {
        std::vector<unsigned long long>::push_back[abi:nn200100](v7, v8++);
      }

      while (v8 != v9);
    }

    SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(**(v4 + 8));
  }

  v6 = **(v4 + 8);
  __str.__r_.__value_.__s.__data_[0] = 0;
  v13 = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v14;
  }

  v13 = 1;
  SwiftReflectionContext::allocateTemporaryObject<std::string>(v6);
  v11 = v10;
  std::string::operator=(v10, &__str);
  if (SHIBYTE(v11->__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v11->__r_.__value_.__r.__words[0];
  }

  if (v13 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *a3 = v11;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_info SwiftReflectionContext::withContext<swift_async_task_info,swift_reflection_asyncTaskInfo::$_0>(swift_reflection_asyncTaskInfo::$_0 const&)::{lambda(swift_async_task_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(*a2);
  if (*(v5 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, 1000000, 1000, &v14);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, 1000000, 1000, &v14);
  }

  if (v15 != 1)
  {
    v7 = SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(**(v4 + 8));
    v8 = v16;
    v9 = v17;
    if (v16 != v17)
    {
      do
      {
        std::vector<unsigned long long>::push_back[abi:nn200100](v7, v8++);
      }

      while (v8 != v9);
    }

    SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(**(v4 + 8));
  }

  v6 = **(v4 + 8);
  __str.__r_.__value_.__s.__data_[0] = 0;
  v13 = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v14;
  }

  v13 = 1;
  SwiftReflectionContext::allocateTemporaryObject<std::string>(v6);
  v11 = v10;
  std::string::operator=(v10, &__str);
  if (SHIBYTE(v11->__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v11->__r_.__value_.__r.__words[0];
  }

  if (v13 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *a3 = v11;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void *SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    (*(*v1 + 48))(v1);
    operator new();
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(v2);
}

uint64_t std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E1310;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void std::function<void ()(void)>::operator=<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},void>(uint64_t a1, uint64_t *a2)
{
  v2 = a2[4];
  if (v2)
  {
    if (v2 == a2 + 1)
    {
      v4 = v3;
      (*(*v2 + 24))(v2, v3);
    }

    else
    {
      v4 = a2[4];
      a2[4] = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  operator new();
}

void *std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = off_E1358;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = off_E1358;
  v1 = a1 + 2;
  v2 = a1[5];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  operator delete();
}

uint64_t std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  *a2 = off_E1358;
  a2[1] = v3;
  v4 = *(result + 40);
  if (v4)
  {
    if (v4 == result + 16)
    {
      a2[5] = a2 + 2;
      v5 = *(**(result + 40) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 40));
      a2[5] = result;
    }
  }

  else
  {
    a2[5] = 0;
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = a1 + 16;
  result = *(a1 + 40);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(char *__p)
{
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  operator delete(__p);
}

void std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(*v3 + 48);

    v4();
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
    std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_actor_info SwiftReflectionContext::withContext<swift_actor_info,swift_reflection_actorInfo::$_0>(swift_reflection_actorInfo::$_0 const&)::{lambda(swift_actor_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v5, v6, v7);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_actor_info SwiftReflectionContext::withContext<swift_actor_info,swift_reflection_actorInfo::$_0>(swift_reflection_actorInfo::$_0 const&)::{lambda(swift_actor_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  if (*(*a2 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, &v17);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, &v17);
  }

  v7 = **(v4 + 8);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v16 = 0;
  if (v18 == 1)
  {
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v17;
    }

    v16 = 1;
    SwiftReflectionContext::allocateTemporaryObject<std::string>(v7);
    v8 = v9;
    std::string::operator=(v9, &__p);
    if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = v8->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v8 = 0;
  }

  if (v16 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = v19;
  v11 = v21;
  v12 = v22;
  *a3 = v8;
  v6.i32[0] = v20;
  v13 = vmovl_u8(v6).u64[0];
  v14 = vuzp1_s16(v13, vrev32_s16(v13));
  *(a3 + 8) = vuzp1_s8(v14, v14).u32[0];
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 25) = 0;
  *(a3 + 27) = 0;
  *(a3 + 28) = v12;
  if (v18 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_actor_info SwiftReflectionContext::withContext<swift_actor_info,swift_reflection_actorInfo::$_0>(swift_reflection_actorInfo::$_0 const&)::{lambda(swift_actor_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  if (*(*a2 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, &v17);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, &v17);
  }

  v7 = **(v4 + 8);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v16 = 0;
  if (v18 == 1)
  {
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v17;
    }

    v16 = 1;
    SwiftReflectionContext::allocateTemporaryObject<std::string>(v7);
    v8 = v9;
    std::string::operator=(v9, &__p);
    if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = v8->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v8 = 0;
  }

  if (v16 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = v19;
  v11 = v21;
  v12 = v22;
  *a3 = v8;
  v6.i32[0] = v20;
  v13 = vmovl_u8(v6).u64[0];
  v14 = vuzp1_s16(v13, vrev32_s16(v13));
  *(a3 + 8) = vuzp1_s8(v14, v14).u32[0];
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 25) = 0;
  *(a3 + 27) = 0;
  *(a3 + 28) = v12;
  if (v18 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift::remote::MemoryReader::readObj<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(*(a1 + 2800), &v15);
  v3 = v15;
  if (v15)
  {
    v4 = *(v15 + 32);
    v5 = (v4 >> 4) & 1;
    v6 = *(v15 + 16);
    v7 = v4 & 7;
    if ((v4 & 7) != 0)
    {
      v8 = *(v15 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v15 + 36);
    v10 = v4 >> 8;
    *a2 = 0;
    if (v9 >= 4)
    {
      v11 = v9 | 3;
    }

    else
    {
      v11 = 0;
    }

    *(a2 + 24) = 0;
    *(a2 + 32) = v8;
    *(a2 + 40) = v7;
    *(a2 + 41) = v5;
    *(a2 + 42) = v6;
    *(a2 + 43) = v10;
    *(a2 + 44) = 1;
    *(a2 + 45) = 0;
    *(a2 + 47) = 0;
    *(a2 + 48) = v11;
    *(a2 + 52) = 0;
    v15 = 0;
    v18 = v3;
    if (!v17)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v13, v14);
    }

    (*(*v17 + 48))(v17, &v18);
  }

  else
  {
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    strcpy(a2, "failure reading actor");
    *(a2 + 22) = 0;
    *(a2 + 23) = 277;
  }

  result = v17;
  if (v17 == &v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))(v17);
  }

  return result;
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift::remote::MemoryReader::readObj<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(*(a1 + 2800), &v10);
  v3 = v10;
  if (v10)
  {
    v4 = *(v10 + 32);
    v5 = *(v10 + 16);
    if ((v4 & 7) != 0)
    {
      v6 = *(v10 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v6 = 0;
    }

    *a2 = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v6;
    *(a2 + 40) = v4 & 7;
    *(a2 + 41) = (v4 & 0x10) != 0;
    *(a2 + 42) = v5;
    *(a2 + 43) = BYTE1(v4);
    *(a2 + 44) = 0;
    *(a2 + 52) = 0;
    v10 = 0;
    v13 = v3;
    if (!v12)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return swift::remote::MemoryReader::readObj<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v8, v9);
    }

    (*(*v12 + 48))(v12, &v13);
  }

  else
  {
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    strcpy(a2, "failure reading actor");
    *(a2 + 22) = 0;
    *(a2 + 23) = 277;
  }

  result = v12;
  if (v12 == &v11)
  {
    return (*(*v12 + 32))(v12);
  }

  if (v12)
  {
    return (*(*v12 + 40))(v12);
  }

  return result;
}

_BYTE *swift::remote::MemoryReader::readObj<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v13);
  if (v15)
  {
    if (v15 == v14)
    {
      v12 = v11;
      (*(*v15 + 24))();
      v3 = v12;
    }

    else
    {
      v3 = (*(*v15 + 16))();
      v12 = v3;
    }

    v5 = v13;
    v13 = 0;
    *a2 = v5;
    v6 = a2 + 1;
    if (v3)
    {
      if (v3 == v11)
      {
        a2[4] = v6;
        (*(*v3 + 24))(v3);
      }

      else
      {
        a2[4] = (*(*v3 + 16))(v3, v6);
      }

      if (v12 == v11)
      {
        (*(*v12 + 32))(v12);
      }

      else if (v12)
      {
        (*(*v12 + 40))();
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v4 = v13;
    v13 = 0;
    *a2 = v4;
    a2[4] = 0;
  }

  v7 = v13;
  result = v15;
  v13 = 0;
  if (v7)
  {
    v11[0] = v7;
    if (!v15)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_nextJob::$_0>(swift_reflection_nextJob::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v9, v10);
    }

    (*(*v15 + 48))();
    result = v15;
  }

  if (result == v14)
  {
    return (*(*result + 32))(result);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_nextJob::$_0>(swift_reflection_nextJob::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t a1, uint64_t a2)
{
  (*(**(*a2 + 2800) + 24))(&v8);
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 + 16);
    v8 = 0;
    v11 = v2;
    if (!v10)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_nextJob::$_0>(swift_reflection_nextJob::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v6, v7);
    }

    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    (*(*v10 + 48))(v10, &v11);
  }

  else
  {
    v4 = 0;
  }

  if (v10 == &v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  return v4;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_nextJob::$_0>(swift_reflection_nextJob::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t a1, uint64_t a2)
{
  (*(**(*a2 + 2800) + 24))(&v3);
  v2 = v3;
  if (v3)
  {
    v3 = 0;
    v6 = v2;
    if (!v5)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      OUTLINED_FUNCTION_0();
      return;
    }

    (*(*v5 + 48))(v5, &v6);
  }

  if (v5 == &v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }
}

void swift::Demangle::__runtime::Context::Context(swift::Demangle::__runtime::Context *this)
{
  operator new();
}

{
  operator new();
}

void swift::Demangle::__runtime::Context::~Context(swift::Demangle::__runtime::Context *this)
{
  if (*this)
  {
    (*(**this + 8))(*this);
  }
}

{
  if (*this)
  {
    (*(**this + 8))(*this);
  }
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::Context::demangleSymbolAsNode(swift::Demangle::__runtime::NodeFactory **a1, _WORD *a2, unint64_t a3)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v7 = *a1;
  if (ManglingPrefixLength)
  {
    v11 = 0;
    v8 = swift::Demangle::__runtime::Demangler::demangleSymbol(v7, a2, a3, v10);
    if (v11 == v10)
    {
      (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      (*(*v11 + 40))();
    }

    return v8;
  }

  else
  {

    return swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v7);
  }
}

uint64_t swift::Demangle::__runtime::Context::demangleTypeAsNode(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v7 = 0;
  v4 = swift::Demangle::__runtime::Demangler::demangleType(v3, a2, a3, v6);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return v4;
}

void swift::Demangle::__runtime::Context::demangleSymbolAsString(swift::Demangle::__runtime::NodeFactory **a1@<X0>, _WORD *a2@<X1>, size_t a3@<X2>, swift::Demangle::__runtime::Node *a4@<X3>, uint64_t a5@<X8>)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v11 = *a1;
  if (!ManglingPrefixLength)
  {
    v12 = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v11);
    goto LABEL_7;
  }

  v20 = 0;
  v12 = swift::Demangle::__runtime::Demangler::demangleSymbol(v11, a2, a3, __p);
  if (v20 == __p)
  {
    v17 = v12;
    (*(*v20 + 4))(v20);
    v12 = v17;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!v20)
  {
LABEL_7:
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v14 = v12;
  (*(*v20 + 5))(v20);
  v12 = v14;
  if (!v14)
  {
LABEL_13:
    if (!a2)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    if (a3 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a3 >= 0x17)
      {
        operator new();
      }

      *(a5 + 23) = a3;
      if (a3)
      {
        memmove(a5, a2, a3);
      }

      *(a5 + a3) = 0;
      return;
    }

LABEL_34:
    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_8:
  swift::Demangle::__runtime::nodeToString(__p, v12, a4, v13);
  v15 = HIBYTE(v19);
  v16 = HIBYTE(v19);
  if (v19 < 0)
  {
    v15 = __p[1];
  }

  if (v15)
  {
    *a5 = *__p;
    *(a5 + 16) = v19;
    return;
  }

  if (!a2)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if ((v16 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_34;
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a5 + 23) = a3;
  if (a3)
  {
    memmove(a5, a2, a3);
  }

  *(a5 + a3) = 0;
  if (v19 < 0)
  {
LABEL_32:
    operator delete(__p[0]);
  }
}

uint64_t swift::Demangle::__runtime::Context::demangleSymbolAsString(swift::Demangle::__runtime::NodeFactory **a1, _WORD *a2, unint64_t a3, swift::Demangle::__runtime::Node *a4)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v9 = *a1;
  if (ManglingPrefixLength)
  {
    v15 = 0;
    v10 = swift::Demangle::__runtime::Demangler::demangleSymbol(v9, a2, a3, v14);
    if (v15 == v14)
    {
      v12 = v10;
      (*(*v15 + 32))(v15);
      goto LABEL_7;
    }

    if (v15)
    {
      v12 = v10;
      (*(*v15 + 40))(v15);
LABEL_7:
      v10 = v12;
    }
  }

  else
  {
    v10 = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v9);
  }

  return swift::Demangle::__runtime::nodeToString(v10, a4, v11);
}

void swift::Demangle::__runtime::Context::demangleTypeAsString(uint64_t *a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, swift::Demangle::__runtime::Node *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v16 = 0;
  v11 = swift::Demangle::__runtime::Demangler::demangleType(v9, a2, a3, __p);
  if (v16 == __p)
  {
    (*(*v16 + 4))(v16);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (!a2)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    if (a3 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a3 >= 0x17)
      {
        operator new();
      }

      *(a5 + 23) = a3;
      if (a3)
      {
        memmove(a5, a2, a3);
      }

      *(a5 + a3) = 0;
      return;
    }

LABEL_31:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v16)
  {
    (*(*v16 + 5))();
  }

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_5:
  swift::Demangle::__runtime::nodeToString(__p, v11, a4, v10);
  v12 = HIBYTE(v15);
  v13 = HIBYTE(v15);
  if (v15 < 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    *a5 = *__p;
    *(a5 + 16) = v15;
    return;
  }

  if (!a2)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if ((v13 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_31;
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a5 + 23) = a3;
  if (a3)
  {
    memmove(a5, a2, a3);
  }

  *(a5 + a3) = 0;
  if (v15 < 0)
  {
LABEL_29:
    operator delete(__p[0]);
  }
}

BOOL swift::Demangle::__runtime::Context::isThunkSymbol(uint64_t *a1, char *a2, size_t a3)
{
  v3 = a3;
  if (!swift::Demangle::__runtime::getManglingPrefixLength(a2, a3))
  {
    v10 = v3 - 2;
    if (v3 < 2 || *a2 != 21599 || v10 < 2)
    {
      return 0;
    }

    if (*(a2 + 1) != 28500 && *(a2 + 1) != 20308)
    {
      if (v3 == 4)
      {
        return 0;
      }

      v11 = *(a2 + 1) == 16720 && a2[4] == 95;
      if (!v11 && (v10 < 4 || *(a2 + 2) != 1601126736))
      {
        return 0;
      }
    }

    return 1;
  }

  if (a2[v3 - 1] - 48 > 9)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = memchr(a2, 46, v3);
  if (v6)
  {
    v7 = v3 >= v6 - a2 ? v6 - a2 : v3;
    if (v6 - a2 != -1)
    {
      v3 = v7;
LABEL_10:
      if (!v3)
      {
        return 0;
      }

      if (a2[v3 - 1] == 95)
      {
        if (v3 == 1)
        {
          return 0;
        }

        v8 = 0;
        v9 = a2;
        while (v9[v3 - 2] - 48 <= 9)
        {
          ++v8;
          --v9;
          if (v3 - 1 == v8)
          {
            goto LABEL_34;
          }
        }

        if (~v8 + v3 >= 2 && (*&v9[v3 - 3] == 20820 || *&v9[v3 - 3] == 22868))
        {
          v3 = v3 - v8 - 3;
        }
      }
    }
  }

LABEL_34:
  if (v3 < 2)
  {
    return 0;
  }

  v12 = &a2[v3];
  if (*&a2[v3 - 2] != 16724 && *(v12 - 1) != 24916 && *(v12 - 1) != 28500 && *(v12 - 1) != 20308 && *(v12 - 1) != 21076 && *(v12 - 1) != 29268 && *(v12 - 1) != 22356 && *(v12 - 1) != 17254)
  {
    return 0;
  }

  v13 = *a1;
  v21 = 0;
  v14 = swift::Demangle::__runtime::Demangler::demangleSymbol(v13, a2, v3, v20);
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v21)
    {
      (*(*v21 + 40))();
    }

    if (!v14)
    {
      return 0;
    }
  }

  if (*(v14 + 16) == 101)
  {
    v15 = *(v14 + 18);
    if ((v15 - 1) < 2)
    {
      goto LABEL_54;
    }

    if (v15 == 5 && *(v14 + 8))
    {
      v14 = *v14;
LABEL_54:
      v16 = *(*v14 + 16);
      return (v16 - 170) <= 0x29 && ((1 << (v16 + 86)) & 0x31000000C11) != 0 || v16 == 0;
    }
  }

  return 0;
}

void swift::Demangle::__runtime::Context::getThunkTarget(uint64_t *a1@<X0>, std::string::size_type a2@<X1>, char *a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a3;
  v37[0] = a2;
  if (!swift::Demangle::__runtime::Context::isThunkSymbol(a1, a2, a3))
  {
    goto LABEL_75;
  }

  if (!swift::Demangle::__runtime::getManglingPrefixLength(a2, v4))
  {
    if (v4 >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v4;
    }

    v12 = a2 + v11;
    v13 = &v4[-v11];
    v14 = v13 - 3;
    if (v13 >= 3)
    {
      if (*v12 == 16720 && *(v12 + 2) == 95)
      {
        if (v14 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(a4 + 23) = v14;
          if (v13 != 3)
          {
            memmove(a4, (v12 + 3), v14);
          }

          *(a4 + v14) = 0;
          return;
        }

        goto LABEL_87;
      }

      if (v13 != 3 && *v12 == 1601126736)
      {
        v32 = v13 - 4;
        if (v13 - 4 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v32 >= 0x17)
          {
            operator new();
          }

          *(a4 + 23) = v32;
          if (v13 != 4)
          {
            memmove(a4, (v12 + 4), v32);
          }

          *(a4 + v32) = 0;
          return;
        }

        goto LABEL_87;
      }
    }

    *(&v36.__r_.__value_.__s + 23) = 2;
    strcpy(&v36, "_T");
    if (v13 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v13;
    }

    if (!a2)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      __p = 0;
      v34 = 0;
      v35 = 0;
LABEL_43:
      if ((v22 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v21;
      }

      if ((v22 & 0x80u) == 0)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      v25 = std::string::append(&v36, p_p, v24);
      v26 = v25->__r_.__value_.__r.__words[2];
      *a4 = *&v25->__r_.__value_.__l.__data_;
      *(a4 + 2) = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      return;
    }

    v17 = v13 - v16;
    if (v13 - v16 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v17 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v35) = v13 - v16;
      if (v13 >= 3)
      {
        memmove(&__p, (v12 + v16), v17);
      }

      *(&__p + v17) = 0;
      v22 = HIBYTE(v35);
      v21 = __p;
      v20 = v34;
      goto LABEL_43;
    }

LABEL_87:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v4[a2 - 1];
  if ((v7 - 48) <= 9 && v4)
  {
    v8 = memchr(a2, 46, v4);
    if (!v8)
    {
      goto LABEL_61;
    }

    if (v4 >= &v8[-a2])
    {
      v9 = &v8[-a2];
    }

    else
    {
      v9 = v4;
    }

    if (&v8[-a2] == -1)
    {
      v10 = v4;
    }

    else
    {
      v10 = v9;
    }

    if (v10 != v4)
    {
      goto LABEL_75;
    }
  }

  if (!v4)
  {
    goto LABEL_62;
  }

  if (v7 != 95)
  {
    goto LABEL_61;
  }

  if (v4 == &dword_0 + 1)
  {
LABEL_62:
    v27 = (v4 - 2);
    if (v4 < v4 - 2)
    {
      v27 = v4;
    }

    v36.__r_.__value_.__r.__words[0] = a2;
    v36.__r_.__value_.__l.__size_ = v27;
    __swift::__runtime::llvm::StringRef::str(&v36.__r_.__value_.__l.__data_, a4);
    return;
  }

  v18 = 0;
  v19 = a2;
  while (v4[v19 - 2] - 48 <= 9)
  {
    ++v18;
    --v19;
    if (v4 - 1 == v18)
    {
      goto LABEL_61;
    }
  }

  if (&v4[~v18] >= 2 && (*&v4[v19 - 3] == 20820 || *&v4[v19 - 3] == 22868))
  {
    v4 = (v4 - v18 - 3);
  }

LABEL_61:
  v37[1] = v4;
  if (v4 < 2)
  {
    goto LABEL_62;
  }

  v28 = &v4[a2];
  if (*&v4[a2 - 2] == 21076 || *(v28 - 1) == 29268 || *(v28 - 1) == 22356)
  {
LABEL_75:
    *a4 = 0;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    return;
  }

  if (*(v28 - 1) != 17254)
  {
    goto LABEL_62;
  }

  __swift::__runtime::llvm::StringRef::str(v37, a4);
  v29 = *(a4 + 23);
  v30 = (v29 & 0x80u) != 0;
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a4 + 1);
  }

  if (v30)
  {
    v31 = *a4;
  }

  else
  {
    v31 = a4;
  }

  *(v31 + v29 - 1) = 99;
}

uint64_t swift::Demangle::__runtime::Context::hasSwiftCallingConvention(swift::Demangle::__runtime::NodeFactory **a1, _WORD *a2, unint64_t a3)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v7 = *a1;
  if (ManglingPrefixLength)
  {
    v15 = 0;
    v8 = swift::Demangle::__runtime::Demangler::demangleSymbol(v7, a2, a3, v14);
    if (v15 == v14)
    {
      (*(*v15 + 32))(v15);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v15)
    {
      (*(*v15 + 40))();
      if (!v8)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v7);
  }

  if (!v8)
  {
    return 0;
  }

LABEL_8:
  if (*(v8 + 16) != 101)
  {
    return 0;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) >= 2)
  {
    if (v9 != 5 || !*(v8 + 8))
    {
      return 0;
    }

    v8 = *v8;
  }

  result = 0;
  v11 = *(*v8 + 16);
  if (v11 <= 0x8F)
  {
    v13 = v11 > 0xA || ((1 << v11) & 0x640) == 0;
    if (v13 && v11 != 91)
    {
      return 1;
    }
  }

  else
  {
    v12 = v11 - 208 > 0x38 || ((1 << (v11 + 48)) & 0x100020000000001) == 0;
    if (v12 && v11 != 144 && v11 != 174)
    {
      return 1;
    }
  }

  return result;
}

unint64_t swift::Demangle::__runtime::Context::getModuleName@<X0>(swift::Demangle::__runtime::Node **a1@<X0>, _WORD *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v9 = *a1;
  if (!ManglingPrefixLength)
  {
    result = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v9);
    v11 = result;
    goto LABEL_7;
  }

  v22 = 0;
  v11 = swift::Demangle::__runtime::Demangler::demangleSymbol(v9, a2, a3, v21);
  result = v22;
  if (v22 != v21)
  {
    if (v22)
    {
      result = (*(*v22 + 40))();
      if (v11)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

LABEL_7:
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  result = (*(*v22 + 32))(v22);
  if (!v11)
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  while (1)
  {
LABEL_15:
    v15 = v11 + 16;
    v14 = *(v11 + 16);
    if (v14 > 0xF2)
    {
      if (v14 == 243 || v14 == 247)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

    if (v14 == 101)
    {
      v16 = *(v11 + 18);
      v17 = v11;
      if ((v16 - 1) >= 2)
      {
        if (v16 == 5)
        {
          v18 = *v11;
          v17 = *v11;
          goto LABEL_35;
        }

        v17 = 0;
      }

      if (v16 == 1)
      {
        v15 = v11 + 8;
        goto LABEL_39;
      }

      if (v16 == 2)
      {
        goto LABEL_39;
      }

      if (v16 != 5)
      {
        v15 = 0;
LABEL_39:
        while (v17 != v15)
        {
          v11 = *v17;
          result = swift::Demangle::__runtime::isFunctionAttr(*(*v17 + 16));
          if ((result & 1) == 0)
          {
            goto LABEL_14;
          }

          ++v17;
        }

        goto LABEL_8;
      }

      v18 = *v11;
LABEL_35:
      v15 = v18 + 8 * *(v11 + 8);
      goto LABEL_39;
    }

    if (v14 == 163)
    {
      break;
    }

LABEL_27:
    if (swift::Demangle::__runtime::isSpecialized(v11, v10))
    {
      result = swift::Demangle::__runtime::getUnspecialized(v21, v11, *a1);
      if (LODWORD(v21[0]))
      {
        goto LABEL_8;
      }

      v11 = v22;
      goto LABEL_14;
    }

    result = swift::Demangle::__runtime::isContext();
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_12:
    v13 = *(v11 + 18);
    if ((v13 - 1) >= 2)
    {
      if (v13 != 5 || !*(v11 + 8))
      {
        goto LABEL_8;
      }

      v11 = *v11;
    }

    v11 = *v11;
LABEL_14:
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v19 = *v11;
  if (!*v11)
  {
    goto LABEL_8;
  }

  v20 = *(v11 + 8);
  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = v20;
  if (v20)
  {
    result = memmove(a4, v19, v20);
  }

  *(a4 + v20) = 0;
  return result;
}

void swift::Demangle::__runtime::failAssert(swift::Demangle::__runtime *this, char *a2, swift::Demangle::__runtime *a3, swift::Demangle::__runtime::Node *a4, const char *a5)
{
  NodeTreeAsString = swift::Demangle::__runtime::getNodeTreeAsString(&v13, a3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v13;
  }

  else
  {
    v12 = v13.__r_.__value_.__r.__words[0];
  }

  swift::Demangle::__runtime::fatal(0, "%s:%u: assertion failed for Node %p: %s\n%s:%u: Node %p is:\n%s\n", v9, v10, NodeTreeAsString, this, a2, a3, a4, this, a2, a3, v12);
}

uint64_t swift::Demangle::__runtime::isFunctionAttr(int a1)
{
  v1 = a1 - 55;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 24:
    case 33:
    case 34:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 98:
    case 115:
    case 119:
    case 125:
    case 126:
    case 213:
    case 235:
    case 245:
    case 246:
    case 278:
    case 287:
    case 288:
    case 289:
    case 291:
    case 292:
    case 299:
    case 316:
    case 317:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

_BYTE *swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(_BYTE *this, const char *a2)
{
  if (this)
  {
    v2 = *this;
    if (*this)
    {
      v3 = this;
      do
      {
        if (v2 >= 0x18)
        {
          v4 = 8 * ((v2 & 0xF8) == 24);
        }

        else
        {
          v4 = 4;
        }

        v5 = &v3[v4];
        v6 = v5[1];
        v3 = v5 + 1;
        v2 = v6;
      }

      while (v6);
    }
  }

  return this;
}

uint64_t swift::Demangle::__runtime::getManglingPrefixLength(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 3)
  {
    if (a2 != 1 && (*a1 == 21284 || *a1 == 29476 || *a1 == 25892))
    {
      return 2;
    }

    return 0;
  }

  if (*a1 == 21599 && *(a1 + 2) == 48)
  {
    return 3;
  }

  if (*a1 != 21284)
  {
    if (*a1 == 9311 && *(a1 + 2) == 83)
    {
      return 3;
    }

    if (*a1 != 29476)
    {
      if (*a1 == 9311 && *(a1 + 2) == 115)
      {
        return 3;
      }

      if (*a1 != 25892)
      {
        if (*a1 != 9311 || *(a1 + 2) != 101)
        {
          if (a2 >= 0xE && *a1 == 0x74666977735F5F40 && *(a1 + 6) == 0x5F6F7263616D7466)
          {
            return 14;
          }

          return 0;
        }

        return 3;
      }
    }
  }

  return 2;
}

uint64_t swift::Demangle::__runtime::isSwiftSymbol(swift::Demangle::__runtime *this, const char *a2)
{
  if (!this)
  {
    v3 = 0;
    return swift::Demangle::__runtime::getManglingPrefixLength(this, v3) != 0;
  }

  v2 = this;
  v3 = strlen(this);
  if (v3 < 2)
  {
    this = v2;
    return swift::Demangle::__runtime::getManglingPrefixLength(this, v3) != 0;
  }

  this = v2;
  if (*v2 != 21599)
  {
    return swift::Demangle::__runtime::getManglingPrefixLength(this, v3) != 0;
  }

  return 1;
}

BOOL swift::Demangle::__runtime::isObjCSymbol(uint64_t a1, unint64_t a2)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a1, a2);
  if (a2 < ManglingPrefixLength)
  {
    ManglingPrefixLength = a2;
  }

  if (a2 - ManglingPrefixLength < 2)
  {
    return 0;
  }

  if (*(ManglingPrefixLength + a1) == 28499)
  {
    return 1;
  }

  return *(ManglingPrefixLength + a1) == 17235;
}

unint64_t swift::Demangle::__runtime::dropSwiftManglingPrefix(uint64_t a1, unint64_t a2)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a1, a2);
  if (a2 < ManglingPrefixLength)
  {
    ManglingPrefixLength = a2;
  }

  return ManglingPrefixLength + a1;
}

uint64_t swift::Demangle::__runtime::isAlias(uint64_t a1, uint64_t a2)
{
  v11[1] = 0;
  v11[2] = 0;
  v12 = 0;
  v13 = 2400;
  v14 = 0;
  v15 = 0;
  v50 = 0;
  v11[0] = off_E13E8;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v48 = 0;
  v10 = 0;
  v2 = swift::Demangle::__runtime::Demangler::demangleType(v11, a1, a2, v9);
  if (!v2)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 != 243)
    {
      break;
    }

    v4 = *(v2 + 18);
    if ((v4 - 1) >= 2)
    {
      if (v4 != 5 || !*(v2 + 8))
      {
        goto LABEL_11;
      }

      v2 = *v2;
    }

    v2 = *v2;
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  if (v3 == 245)
  {
    v5 = 1;
  }

  else
  {
LABEL_11:
    v5 = 0;
  }

  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v11[0] = off_E13E8;
  if (v50 == &v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))();
  }

  v11[0] = off_E13C0;
  v6 = v12;
  if (v12)
  {
    do
    {
      v7 = *v6;
      free(v6);
      v6 = v7;
    }

    while (v7);
  }

  if (v14)
  {
    *(v14 + 48) = 0;
  }

  return v5;
}

uint64_t swift::Demangle::__runtime::Demangler::demangleType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  if (v7)
  {
    if (v7 == a4)
    {
      v22 = v21;
      (*(*v7 + 24))(v7, v21);
    }

    else
    {
      v22 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  swift::Demangle::__runtime::Demangler::DemangleInitRAII::DemangleInitRAII(v23, a1, a2, a3, v21);
  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
  }

  else if (v22)
  {
    (*(*v22 + 40))();
  }

  v12 = *(a1 + 64);
  while (1)
  {
    v13 = *(a1 + 72);
    if (v13 >= v12 || v13 >= *(a1 + 64) || !*(*(a1 + 56) + v13))
    {
      break;
    }

    v14 = swift::Demangle::__runtime::Demangler::demangleOperator(a1, v8, v9, v10, v11);
    if (!v14)
    {
      goto LABEL_21;
    }

    v24 = v14;
    swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back((a1 + 88), &v24, a1);
  }

  v15 = *(a1 + 96);
  if (!v15)
  {
LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  v16 = *(a1 + 88);
  v17 = *(v16 + 8 * (v15 - 1));
  *(a1 + 96) = v15 - 1;
  if (v15 != 1)
  {
    v18 = v15 - 2;
    v19 = *(v16 + 8 * v18);
    *(a1 + 96) = v18;
    if (v19)
    {
      v17 = 0;
    }
  }

LABEL_22:
  swift::Demangle::__runtime::Demangler::DemangleInitRAII::~DemangleInitRAII(v23);
  return v17;
}

uint64_t swift::Demangle::__runtime::isClass(uint64_t a1, uint64_t a2)
{
  v12[1] = 0;
  v12[2] = 0;
  v13 = 0;
  v14 = 2400;
  v15 = 0;
  v16 = 0;
  v51 = 0;
  v12[0] = off_E13E8;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v49 = 0;
  v11 = 0;
  v2 = swift::Demangle::__runtime::Demangler::demangleType(v12, a1, a2, v10);
  if (!v2)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 != 243)
    {
      break;
    }

    v4 = *(v2 + 18);
    if ((v4 - 1) >= 2)
    {
      if (v4 != 5 || !*(v2 + 8))
      {
        goto LABEL_16;
      }

      v2 = *v2;
    }

    v2 = *v2;
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  if (v3 == 13 || v3 == 25)
  {
    v6 = 1;
  }

  else
  {
LABEL_16:
    v6 = 0;
  }

  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  v12[0] = off_E13E8;
  if (v51 == &v50)
  {
    (*(*v51 + 32))(v51);
  }

  else if (v51)
  {
    (*(*v51 + 40))();
  }

  v12[0] = off_E13C0;
  v7 = v13;
  if (v13)
  {
    do
    {
      v8 = *v7;
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  if (v15)
  {
    *(v15 + 48) = 0;
  }

  return v6;
}

uint64_t swift::Demangle::__runtime::isEnum(uint64_t a1, uint64_t a2)
{
  v11[1] = 0;
  v11[2] = 0;
  v12 = 0;
  v13 = 2400;
  v14 = 0;
  v15 = 0;
  v50 = 0;
  v11[0] = off_E13E8;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v48 = 0;
  v10 = 0;
  v2 = swift::Demangle::__runtime::Demangler::demangleType(v11, a1, a2, v9);
  if (!v2)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 != 243)
    {
      break;
    }

    v4 = *(v2 + 18);
    if ((v4 - 1) >= 2)
    {
      if (v4 != 5 || !*(v2 + 8))
      {
        goto LABEL_12;
      }

      v2 = *v2;
    }

    v2 = *v2;
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  v5 = 1;
  if (v3 != 14 && v3 != 63)
  {
LABEL_12:
    v5 = 0;
  }

  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v11[0] = off_E13E8;
  if (v50 == &v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))();
  }

  v11[0] = off_E13C0;
  v6 = v12;
  if (v12)
  {
    do
    {
      v7 = *v6;
      free(v6);
      v6 = v7;
    }

    while (v7);
  }

  if (v14)
  {
    *(v14 + 48) = 0;
  }

  return v5;
}

uint64_t swift::Demangle::__runtime::isProtocol(uint64_t a1, unint64_t a2)
{
  v14[1] = 0;
  v14[2] = 0;
  v15 = 0;
  v16 = 2400;
  v17 = 0;
  v18 = 0;
  v53 = 0;
  v14[0] = off_E13E8;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v51 = 0;
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a1, a2);
  if (a2 < ManglingPrefixLength)
  {
    ManglingPrefixLength = a2;
  }

  v13 = 0;
  v5 = swift::Demangle::__runtime::Demangler::demangleType(v14, ManglingPrefixLength + a1, a2 - ManglingPrefixLength, v12);
  if (!v5)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = *(v5 + 16);
    if (v6 != 243)
    {
      break;
    }

    v7 = *(v5 + 18);
    if ((v7 - 1) >= 2)
    {
      if (v7 != 5 || !*(v5 + 8))
      {
        goto LABEL_14;
      }

      v5 = *v5;
    }

    v5 = *v5;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  v8 = 1;
  if ((v6 - 190) >= 2 && v6 != 361)
  {
LABEL_14:
    v8 = 0;
  }

  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v14[0] = off_E13E8;
  if (v53 == &v52)
  {
    (*(*v53 + 32))(v53);
  }

  else if (v53)
  {
    (*(*v53 + 40))();
  }

  v14[0] = off_E13C0;
  v9 = v15;
  if (v15)
  {
    do
    {
      v10 = *v9;
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  if (v17)
  {
    *(v17 + 48) = 0;
  }

  return v8;
}

uint64_t swift::Demangle::__runtime::isStruct(uint64_t a1, uint64_t a2)
{
  v11[1] = 0;
  v11[2] = 0;
  v12 = 0;
  v13 = 2400;
  v14 = 0;
  v15 = 0;
  v50 = 0;
  v11[0] = off_E13E8;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v48 = 0;
  v10 = 0;
  v2 = swift::Demangle::__runtime::Demangler::demangleType(v11, a1, a2, v9);
  if (!v2)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 != 243)
    {
      break;
    }

    v4 = *(v2 + 18);
    if ((v4 - 1) >= 2)
    {
      if (v4 != 5 || !*(v2 + 8))
      {
        goto LABEL_12;
      }

      v2 = *v2;
    }

    v2 = *v2;
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  v5 = 1;
  if (v3 != 15 && v3 != 230)
  {
LABEL_12:
    v5 = 0;
  }

  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v11[0] = off_E13E8;
  if (v50 == &v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))();
  }

  v11[0] = off_E13C0;
  v6 = v12;
  if (v12)
  {
    do
    {
      v7 = *v6;
      free(v6);
      v6 = v7;
    }

    while (v7);
  }

  if (v14)
  {
    *(v14 + 48) = 0;
  }

  return v5;
}

void *swift::Demangle::__runtime::mangledNameForTypeMetadataAccessor@<X0>(const void *a1@<X0>, size_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, __int16 a5@<W4>, unsigned int a6@<W5>, std::string *a7@<X8>)
{
  v71 = 0;
  v72 = 0;
  v107 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v105 = 0;
  v66 = off_E13E8;
  v73 = 0;
  v70 = 4800;
  v10 = malloc_type_malloc(0x12C8uLL, 0x2004093837F09uLL);
  v69 = v10;
  *v10 = 0;
  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 24;
  *(v13 + 16) = 101;
  *(v13 + 18) = 0;
  __dst = (v13 + 24);
  v68 = (v10 + 601);
  if (v13 + 48 > (v10 + 601))
  {
    v15 = 2 * v70;
    if ((2 * v70) <= 0x20)
    {
      v15 = 32;
    }

    v70 = v15;
    v16 = v15 + 8;
    v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
    v18 = v17 + v16;
    *v17 = v69;
    v14 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = v18;
    v69 = v17;
  }

  *(v14 + 16) = 249;
  *(v14 + 18) = 0;
  v19 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  __dst = v19;
  if (!v19 || v19 + 24 > v68)
  {
    v20 = 2 * v70;
    if ((2 * v70) <= 0x20)
    {
      v20 = 32;
    }

    v70 = v20;
    v21 = v20 + 8;
    v22 = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
    *v22 = v69;
    v19 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = v22 + v21;
    v69 = v22;
  }

  v23 = (v19 + 24);
  __dst = (v19 + 24);
  *(v19 + 16) = 243;
  *(v19 + 18) = 0;
  if (a2)
  {
    v24 = &v23[a2];
    if (&v23[a2] > v68)
    {
      v25 = 2 * v70;
      if (2 * v70 <= a2 + 1)
      {
        v25 = a2 + 1;
      }

      v70 = v25;
      v26 = v25 + 8;
      v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
      v28 = &v27[v26];
      *v27 = v69;
      v23 = v27 + 8;
      v68 = v28;
      v69 = v27;
      v24 = &v27[a2 + 8];
    }

    __dst = v24;
    memmove(v23, a1, a2);
    v29 = v23;
    v23 = __dst;
  }

  else
  {
    v29 = 0;
  }

  v30 = ((v23 + 7) & 0xFFFFFFFFFFFFFFF8);
  __dst = v30;
  if (!v30 || (v30 + 3) > v68)
  {
    v31 = 2 * v70;
    if ((2 * v70) <= 0x20)
    {
      v31 = 32;
    }

    v70 = v31;
    v32 = v31 + 8;
    v33 = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
    v34 = v33 + v32;
    *v33 = v69;
    v30 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    v68 = v34;
    v69 = v33;
  }

  __dst = v30 + 3;
  *(v30 + 8) = 163;
  *(v30 + 18) = 3;
  *v30 = v29;
  v30[1] = a2;
  if (a4)
  {
    v35 = __dst;
    if (!__dst || (v36 = __dst + a4, __dst + a4 > v68))
    {
      v37 = 2 * v70;
      if (2 * v70 <= a4 + 1)
      {
        v37 = a4 + 1;
      }

      v70 = v37;
      v38 = v37 + 8;
      v39 = malloc_type_malloc(v37 + 8, 0x2004093837F09uLL);
      *v39 = v69;
      v35 = v39 + 1;
      v68 = v39 + v38;
      v69 = v39;
      v36 = v39 + a4 + 8;
    }

    __dst = v36;
    memmove(v35, a3, a4);
  }

  else
  {
    v35 = 0;
  }

  v40 = (__dst + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v40 || v40 + 24 > v68)
  {
    v41 = 2 * v70;
    if ((2 * v70) <= 0x20)
    {
      v41 = 32;
    }

    v70 = v41;
    v42 = v41 + 8;
    v43 = malloc_type_malloc(v41 + 8, 0x2004093837F09uLL);
    v44 = v43 + v42;
    *v43 = v69;
    v40 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = v44;
    v69 = v43;
  }

  __dst = (v40 + 24);
  *(v40 + 16) = 103;
  *(v40 + 18) = 3;
  *v40 = v35;
  *(v40 + 8) = a4;
  v45 = (__dst + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v45 || v45 + 24 > v68)
  {
    v46 = 2 * v70;
    if ((2 * v70) <= 0x20)
    {
      v46 = 32;
    }

    v70 = v46;
    v47 = v46 + 8;
    v48 = malloc_type_malloc(v46 + 8, 0x2004093837F09uLL);
    v49 = v48 + v47;
    *v48 = v69;
    v45 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = v49;
    v69 = v48;
  }

  __dst = (v45 + 24);
  *(v45 + 16) = a5;
  *(v45 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v45, v30, &v66, v11, v12);
  swift::Demangle::__runtime::Node::addChild(v45, v40, &v66, v50, v51);
  swift::Demangle::__runtime::Node::addChild(v19, v45, &v66, v52, v53);
  swift::Demangle::__runtime::Node::addChild(v14, v19, &v66, v54, v55);
  swift::Demangle::__runtime::Node::addChild(v13, v14, &v66, v56, v57);
  swift::Demangle::__runtime::mangleNode(v13, a6);
  if (SHIBYTE(v65) < 0)
  {
    std::string::__init_copy_ctor_external(a7, __p, *(&__p + 1));
    operator delete(__p);
  }

  else
  {
    *&a7->__r_.__value_.__l.__data_ = __p;
    a7->__r_.__value_.__r.__words[2] = v65;
  }

  v66 = off_E13E8;
  if (v107 == &v106)
  {
    (*(*v107 + 32))(v107);
  }

  else if (v107)
  {
    (*(*v107 + 40))();
  }

  v66 = off_E13C0;
  result = v69;
  if (v69)
  {
    do
    {
      v59 = *result;
      free(result);
      result = v59;
    }

    while (v59);
  }

  if (v71)
  {
    *(v71 + 48) = 0;
  }

  return result;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNode(void *a1, __int16 a2)
{
  result = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = result;
  if (!result || result + 24 > a1[2])
  {
    v5 = 2 * a1[4];
    if (v5 <= 0x20)
    {
      v5 = 32;
    }

    a1[4] = v5;
    v6 = v5 + 8;
    v7 = malloc_type_malloc(v5 + 8, 0x2004093837F09uLL);
    *v7 = a1[3];
    result = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v7 + v6;
    a1[3] = v7;
  }

  a1[1] = result + 24;
  *(result + 16) = a2;
  *(result + 18) = 0;
  return result;
}

swift::Demangle::__runtime *swift::Demangle::__runtime::Node::addChild(swift::Demangle::__runtime *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::NodeFactory *a3, uint64_t a4, const char *a5)
{
  if (!a2)
  {
    swift::Demangle::__runtime::failAssert("/Library/Caches/com.apple.xbs/Sources/swiftlang_SwiftRemoteMirror/swift/lib/Demangling/Demangler.cpp", &stru_158.segname[13], this, "Child", a5);
  }

  v5 = *(this + 18);
  if (v5 <= 1)
  {
    if (*(this + 18))
    {
      if (v5 == 1)
      {
        *(this + 1) = a2;
        *(this + 18) = 2;
      }
    }

    else
    {
      *this = a2;
      *(this + 1) = 0;
      *(this + 18) = 1;
    }

    return this;
  }

  if (v5 != 2)
  {
    if (v5 != 5)
    {
      return this;
    }

    v6 = *(this + 2);
    v7 = *(this + 3);
    v8 = *this;
    if (v6 < v7)
    {
      goto LABEL_38;
    }

    v9 = 8 * v7;
    v10 = *(a3 + 1);
    if (&v8[v7] == v10)
    {
      v11 = *(a3 + 2);
      if ((v10 + 8) <= v11)
      {
        *(a3 + 1) = v10 + 8;
        v8 = *this;
        LODWORD(v26) = 1;
LABEL_37:
        *(this + 3) = v7 + v26;
        v6 = *(this + 2);
LABEL_38:
        *(this + 2) = v6 + 1;
        v8[v6] = a2;
        return this;
      }
    }

    else
    {
      v11 = *(a3 + 2);
    }

    if ((2 * v7) <= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = (2 * v7);
    }

    v27 = v26 + v7;
    v8 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(a3 + 1) = v8;
    if (!v8 || &v8[v27] > v11)
    {
      v28 = 2 * *(a3 + 4);
      if (v28 <= v27 * 8 + 8)
      {
        v28 = v27 * 8 + 8;
      }

      *(a3 + 4) = v28;
      v29 = v28 + 8;
      v30 = this;
      v31 = a2;
      v32 = a3;
      v33 = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
      a3 = v32;
      a2 = v31;
      v34 = v33;
      this = v30;
      v35 = v34 + v29;
      *v34 = *(v32 + 3);
      v8 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
      *(v32 + 2) = v35;
      *(v32 + 3) = v34;
    }

    *(a3 + 1) = &v8[v27];
    if (v7)
    {
      v36 = this;
      v37 = a2;
      memcpy(v8, *this, v9);
      a2 = v37;
      this = v36;
    }

    *this = v8;
    LODWORD(v7) = *(this + 3);
    goto LABEL_37;
  }

  v13 = *this;
  v12 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  v15 = *(a3 + 1);
  v14 = *(a3 + 2);
  if (v15 || v14 < 0x18)
  {
    v16 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(a3 + 1) = v16;
    if (v16)
    {
      v18 = (v16 + 4) > v14;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = 2 * *(a3 + 4);
      if (v19 <= 0x28)
      {
        v19 = 40;
      }

      *(a3 + 4) = v19;
      v20 = v19 + 8;
      v21 = this;
      v22 = a2;
      v23 = a3;
      v24 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      a3 = v23;
      a2 = v22;
      v25 = v24;
      this = v21;
      *v25 = *(v23 + 3);
      v16 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
      *(v23 + 2) = v25 + v20;
      *(v23 + 3) = v25;
      v17 = v21[3] + 4;
    }

    else
    {
      v17 = 4;
    }

    *(a3 + 1) = v16 + 4;
    *this = v16;
  }

  else
  {
    *(a3 + 1) = 24;
    v16 = *this;
    v17 = 3;
  }

  *v16 = v13;
  *(*this + 8) = v12;
  *(*this + 16) = a2;
  *(this + 2) = 3;
  *(this + 3) = v17;
  *(this + 18) = 5;
  return this;
}

uint64_t swift::Demangle::__runtime::Node::removeChildAt(uint64_t this, unsigned int a2)
{
  v2 = *(this + 18);
  switch(v2)
  {
    case 5:
      v3 = *(this + 8) - 1;
      if (v3 != a2)
      {
        do
        {
          *(*this + 8 * a2) = *(*this + 8 * (a2 + 1));
          ++a2;
        }

        while (v3 != a2);
        v3 = *(this + 8) - 1;
      }

      *(this + 8) = v3;
      break;
    case 2:
      if (!a2)
      {
        *this = *(this + 8);
      }

      *(this + 18) = 1;
      break;
    case 1:
      *(this + 18) = 0;
      break;
  }

  return this;
}

uint64_t swift::Demangle::__runtime::Node::replaceChild(uint64_t this, unsigned int a2, swift::Demangle::__runtime::Node *a3)
{
  v3 = *(this + 18);
  if (v3 != 1)
  {
    if (v3 == 5)
    {
      this = *this + 8 * a2;
    }

    else
    {
      if (v3 != 2)
      {
        return this;
      }

      this += 8 * a2;
    }
  }

  *this = a3;
  return this;
}

int8x16_t swift::Demangle::__runtime::Node::reverseChildren(int8x16_t *this, uint64_t a2)
{
  v2 = this[1].u8[2];
  if (v2 == 5)
  {
    v4 = this->i64[0] + 8 * a2;
    v5 = this->u32[2];
    v6 = (this->i64[0] + 8 * v5 - 8);
    if (v5 != a2 && v6 > v4)
    {
      v8 = v4 + 8;
      do
      {
        v9 = *(v8 - 8);
        *(v8 - 8) = *v6;
        *v6-- = v9;
        v10 = v8 >= v6;
        v8 += 8;
      }

      while (!v10);
    }
  }

  else if (v2 == 2 && a2 == 0)
  {
    result = vextq_s8(*this, *this, 8uLL);
    *this = result;
  }

  return result;
}

uint64_t swift::Demangle::__runtime::Node::findByKind(uint64_t result, uint64_t a2, int a3)
{
  v3 = (result + 16);
  if (*(result + 16) != a2)
  {
    v4 = a3 - 1;
    if (a3 < 1)
    {
      return 0;
    }

    v6 = *(result + 18);
    v7 = result;
    if ((v6 - 1) >= 2)
    {
      if (v6 == 5)
      {
        v8 = *result;
        v7 = *result;
        goto LABEL_11;
      }

      v7 = 0;
    }

    switch(v6)
    {
      case 1:
        v3 = (result + 8);
        if (v7 != (result + 8))
        {
          goto LABEL_12;
        }

        return 0;
      case 2:
        goto LABEL_12;
      case 5:
        v8 = *result;
LABEL_11:
        v3 = (v8 + 8 * *(result + 8));
        if (v7 != v3)
        {
          goto LABEL_12;
        }

        return 0;
    }

    v3 = 0;
    if (!v7)
    {
      return 0;
    }

LABEL_12:
    while (1)
    {
      result = swift::Demangle::__runtime::Node::findByKind(*v7, a2, v4);
      if (result)
      {
        break;
      }

      if (++v7 == v3)
      {
        return 0;
      }
    }
  }

  return result;
}

void *swift::Demangle::__runtime::NodeFactory::freeSlabs(void *result)
{
  if (result)
  {
    do
    {
      v1 = *result;
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

void *swift::Demangle::__runtime::NodeFactory::clear(void *this)
{
  v1 = this[3];
  if (v1)
  {
    v2 = this;
    this = *v1;
    if (*v1)
    {
      do
      {
        v3 = *this;
        free(this);
        this = v3;
      }

      while (v3);
      v1 = v2[3];
    }

    *v1 = 0;
    v2[1] = v1 + 1;
  }

  return this;
}

__n128 swift::Demangle::__runtime::NodeFactory::pushCheckpoint@<Q0>(swift::Demangle::__runtime::NodeFactory *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 3);
  result = *(this + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 swift::Demangle::__runtime::NodeFactory::popCheckpoint(void *result, void *a2, const char *a3, char *a4)
{
  v6 = *a2;
  v7 = result[3];
  if (*a2 != v7)
  {
    if (v7)
    {
      if (a2[2] - a2[1] >= (result[2] - v7 - 8) >> 4)
      {
        v9 = 0;
        v8 = result[3];
LABEL_10:
        while (*a2 != v8)
        {
          result[3] = *v8;
          free(v8);
          v8 = result[3];
          if (!v8)
          {
            v6 = *a2;
            v7 = v9;
            goto LABEL_13;
          }
        }

        v7 = v9;
        if (v9)
        {
          goto LABEL_15;
        }

LABEL_17:
        v13 = *(a2 + 1);
        *(result + 1) = v13;
        return v13;
      }

      v8 = *v7;
      result[3] = *v7;
      v9 = v7;
      if (v8)
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    if (v6)
    {
      swift::Demangle::__runtime::fatal(0, "Popping checkpoint {%p, %p, %p} with slab that is not within the allocator's slab chain.\n", a3, a4, v6, a2[1], a2[2]);
    }

    v8 = 0;
    if (v7)
    {
LABEL_15:
      *v7 = v8;
      result[3] = v7;
      result[1] = v7 + 1;
      return v13;
    }

    goto LABEL_17;
  }

  v10 = a2[1];
  v11 = a2[2];
  if (v10 > result[1])
  {
    swift::Demangle::__runtime::fatal(0, "Popping checkpoint {%p, %p, %p} that is after the current pointer.\n", a3, a4, v6, v10, v11);
  }

  v12 = result[2];
  if (v11 != v12)
  {
    swift::Demangle::__runtime::fatal(0, "Popping checkpoint {%p, %p, %p} with End that does not match current End %p.\n", a3, a4, v6, v10, v11, v12);
  }

  result[1] = v10;
  return v13;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNode(void *a1, __int16 a2, uint64_t a3)
{
  result = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = result;
  if (!result || result + 24 > a1[2])
  {
    v7 = 2 * a1[4];
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    a1[4] = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    *v9 = a1[3];
    result = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v9 + v8;
    a1[3] = v9;
  }

  a1[1] = result + 24;
  *(result + 16) = a2;
  *(result + 18) = 4;
  *result = a3;
  return result;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  result = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = result;
  if (!result || result + 24 > a1[2])
  {
    v9 = 2 * a1[4];
    if (v9 <= 0x20)
    {
      v9 = 32;
    }

    a1[4] = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    *v11 = a1[3];
    result = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v11 + v10;
    a1[3] = v11;
  }

  a1[1] = result + 24;
  *(result + 16) = a2;
  *(result + 18) = 3;
  *result = a3;
  *(result + 8) = a4;
  return result;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNode(void *a1, __int16 a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  result = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = result;
  if (!result || result + 24 > a1[2])
  {
    v8 = 2 * a1[4];
    if (v8 <= 0x20)
    {
      v8 = 32;
    }

    a1[4] = v8;
    v9 = v8 + 8;
    v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
    *v10 = a1[3];
    result = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v10 + v9;
    a1[3] = v10;
  }

  a1[1] = result + 24;
  *(result + 16) = a2;
  *(result + 18) = 3;
  *result = v5;
  *(result + 8) = v6;
  return result;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNode(void *a1, __int16 a2, char *__s)
{
  v6 = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = v6;
  if (!v6 || v6 + 24 > a1[2])
  {
    v7 = 2 * a1[4];
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    a1[4] = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    v10 = v9 + v8;
    *v9 = a1[3];
    v6 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v10;
    a1[3] = v9;
  }

  a1[1] = v6 + 24;
  if (__s)
  {
    v11 = strlen(__s);
  }

  else
  {
    v11 = 0;
  }

  *(v6 + 16) = a2;
  *(v6 + 18) = 3;
  *v6 = __s;
  *(v6 + 8) = v11;
  return v6;
}

void *swift::Demangle::__runtime::CharVector::append(char **a1, const void *a2, size_t a3, void *a4)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *a1;
  if (a3 + v6 > v7)
  {
    v9 = a4[1];
    if (&v8[v7] == v9)
    {
      v10 = a4[2];
      if (&v9[a3] <= v10)
      {
        a4[1] = &v9[a3];
        LODWORD(v12) = a3;
LABEL_18:
        *(a1 + 3) = v7 + v12;
        goto LABEL_19;
      }
    }

    else
    {
      v10 = a4[2];
    }

    v11 = (2 * v7);
    if (a3 > v11)
    {
      v11 = a3;
    }

    if (v11 <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12 + v7;
    if (!v9 || &v9[v13] > v10)
    {
      v14 = 2 * a4[4];
      if (v14 <= v13 + 1)
      {
        v14 = v13 + 1;
      }

      a4[4] = v14;
      v15 = v14 + 8;
      v16 = a2;
      v17 = a4;
      v18 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
      a4 = v17;
      a2 = v16;
      v19 = v18 + v15;
      *v18 = v17[3];
      v9 = (v18 + 1);
      v17[2] = v19;
      v17[3] = v18;
    }

    a4[1] = &v9[v13];
    if (v7)
    {
      v20 = a2;
      memcpy(v9, *a1, v7);
      a2 = v20;
    }

    *a1 = v9;
    v8 = v9;
    v6 = *(a1 + 2);
    LODWORD(v7) = *(a1 + 3);
    goto LABEL_18;
  }

LABEL_19:
  result = memcpy(&v8[v6], a2, a3);
  *(a1 + 2) += a3;
  return result;
}

unsigned int *swift::Demangle::__runtime::CharVector::append(unsigned int *this, unsigned int a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v4 = this;
  v5 = this[2];
  v6 = this[3];
  v7 = *this;
  if (v5 + 11 > v6)
  {
    v8 = *(a3 + 1);
    if ((v7 + v6) == v8)
    {
      v9 = *(a3 + 2);
      if (v8 + 11 <= v9)
      {
        *(a3 + 1) = v8 + 11;
        LODWORD(v10) = 11;
LABEL_16:
        v4[3] = v6 + v10;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = *(a3 + 2);
    }

    if ((2 * v6) <= 0xB)
    {
      v10 = 11;
    }

    else
    {
      v10 = (2 * v6);
    }

    v11 = v10 + v6;
    if (!v8 || v8 + v11 > v9)
    {
      v12 = 2 * *(a3 + 4);
      if (v12 <= v11 + 1)
      {
        v12 = v11 + 1;
      }

      *(a3 + 4) = v12;
      v13 = v12 + 8;
      v14 = a3;
      this = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
      a3 = v14;
      v15 = this + v13;
      *this = *(v14 + 3);
      v8 = this + 2;
      *(v14 + 2) = v15;
      *(v14 + 3) = this;
    }

    *(a3 + 1) = v8 + v11;
    if (v6)
    {
      this = memcpy(v8, *v4, v6);
    }

    *v4 = v8;
    v7 = v8;
    v5 = v4[2];
    LODWORD(v6) = v4[3];
    goto LABEL_16;
  }

LABEL_17:
  v16 = v7 + v5;
  if ((a2 & 0x80000000) != 0)
  {
    v17 = 0;
    *v16 = 45;
    v24 = v16 + 1;
    v25 = -a2;
    v26 = v16;
    do
    {
      *++v26 = (v25 % 0xA) | 0x30;
      ++v17;
      v19 = v25 > 9;
      v25 /= 0xAu;
    }

    while (v19);
    v26[1] = 0;
    if (v26 > v16)
    {
      v27 = v26;
      do
      {
        v28 = *v26;
        *v27-- = *v24;
        *v24++ = v28;
        v23 = v24 >= v26;
        v26 = v27;
      }

      while (!v23);
    }
  }

  else if (a2)
  {
    v17 = 0;
    v18 = v16;
    do
    {
      *v18++ = (a2 % 0xA) | 0x30;
      ++v17;
      v19 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v19);
    *v18 = 0;
    v20 = v18 - 1;
    if (v18 > v16)
    {
      v21 = v18 - 1;
      do
      {
        v22 = *v20;
        *v21-- = *v16;
        *v16++ = v22;
        v23 = v16 >= v20;
        v20 = v21;
      }

      while (!v23);
    }
  }

  else
  {
    *v16 = 48;
    v17 = 1;
  }

  v4[2] += v17;
  return this;
}

unsigned int *swift::Demangle::__runtime::CharVector::append(unsigned int *this, unint64_t a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v4 = this;
  v5 = this[2];
  v6 = this[3];
  v7 = *this;
  if (v5 + 21 > v6)
  {
    v8 = *(a3 + 1);
    if ((v7 + v6) == v8)
    {
      v9 = *(a3 + 2);
      if (v8 + 21 <= v9)
      {
        *(a3 + 1) = v8 + 21;
        LODWORD(v10) = 21;
LABEL_16:
        v4[3] = v6 + v10;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = *(a3 + 2);
    }

    if ((2 * v6) <= 0x15)
    {
      v10 = 21;
    }

    else
    {
      v10 = (2 * v6);
    }

    v11 = v10 + v6;
    if (!v8 || v8 + v11 > v9)
    {
      v12 = 2 * *(a3 + 4);
      if (v12 <= v11 + 1)
      {
        v12 = v11 + 1;
      }

      *(a3 + 4) = v12;
      v13 = v12 + 8;
      v14 = a3;
      this = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
      a3 = v14;
      v15 = this + v13;
      *this = *(v14 + 3);
      v8 = this + 2;
      *(v14 + 2) = v15;
      *(v14 + 3) = this;
    }

    *(a3 + 1) = v8 + v11;
    if (v6)
    {
      this = memcpy(v8, *v4, v6);
    }

    *v4 = v8;
    v7 = v8;
    v5 = v4[2];
    LODWORD(v6) = v4[3];
    goto LABEL_16;
  }

LABEL_17:
  v16 = v7 + v5;
  if (a2)
  {
    v17 = 0;
    v18 = v16;
    do
    {
      *v18++ = (a2 % 0xA) | 0x30;
      ++v17;
      v19 = a2 > 9;
      a2 /= 0xAuLL;
    }

    while (v19);
    *v18 = 0;
    v20 = v18 - 1;
    if (v18 > v16)
    {
      v21 = v18 - 1;
      do
      {
        v22 = *v20;
        *v21-- = *v16;
        *v16++ = v22;
        v23 = v16 >= v20;
        v20 = v21;
      }

      while (!v23);
    }
  }

  else
  {
    *v16 = 48;
    v17 = 1;
  }

  v4[2] += v17;
  return this;
}

_DWORD *swift::Demangle::__runtime::Demangler::clear(_DWORD *this)
{
  this[25] = 0;
  *(this + 11) = 0;
  this[29] = 0;
  *(this + 13) = 0;
  v1 = *(this + 3);
  if (v1)
  {
    v2 = this;
    this = *v1;
    if (*v1)
    {
      do
      {
        v3 = *this;
        free(this);
        this = v3;
      }

      while (v3);
      v1 = *(v2 + 3);
    }

    *v1 = 0;
    *(v2 + 1) = v1 + 1;
  }

  return this;
}

uint64_t swift::Demangle::__runtime::Demangler::DemangleInitRAII::DemangleInitRAII(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = *(a2 + 88);
  *(a1 + 24) = *(a2 + 104);
  *(a1 + 40) = *(a2 + 536);
  *(a1 + 48) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 72);
  v10 = a2 + 544;
  v11 = *(a2 + 568);
  if (v11)
  {
    if (v11 == v10)
    {
      *(a1 + 96) = a1 + 72;
      (*(**(a2 + 568) + 24))(*(a2 + 568));
    }

    else
    {
      *(a1 + 96) = v11;
      *(a2 + 568) = 0;
    }
  }

  else
  {
    *(a1 + 96) = 0;
  }

  v12 = (*(a2 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a2 + 8) = v12;
  if (!v12 || (v13 = *(a2 + 16), v12 + 128 > v13))
  {
    v14 = 2 * *(a2 + 32);
    if (v14 <= 0x88)
    {
      v14 = 136;
    }

    *(a2 + 32) = v14;
    v15 = v14 + 8;
    v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
    v13 = v16 + v15;
    *v16 = *(a2 + 24);
    v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + 16) = v16 + v15;
    *(a2 + 24) = v16;
  }

  *(a2 + 88) = v12;
  *(a2 + 96) = 0x1000000000;
  v17 = (v12 + 135) & 0xFFFFFFFFFFFFFFF8;
  *(a2 + 8) = v17;
  if (!v17 || v17 + 128 > v13)
  {
    v18 = 2 * *(a2 + 32);
    if (v18 <= 0x88)
    {
      v18 = 136;
    }

    *(a2 + 32) = v18;
    v19 = v18 + 8;
    v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
    *v20 = *(a2 + 24);
    v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + 16) = v20 + v19;
    *(a2 + 24) = v20;
  }

  *(a2 + 8) = v17 + 128;
  *(a2 + 104) = v17;
  *(a2 + 112) = 0x1000000000;
  *(a2 + 536) = 0;
  *(a2 + 56) = a3;
  *(a2 + 64) = a4;
  *(a2 + 72) = 0;
  v21 = *(a2 + 568);
  *(a2 + 568) = 0;
  if (v21 != v10)
  {
    if (v21)
    {
      (*(*v21 + 40))(v21);
    }

    v22 = *(a5 + 24);
    if (v22)
    {
      goto LABEL_20;
    }

LABEL_23:
    *(a2 + 568) = 0;
    return a1;
  }

  (*(*v21 + 32))(v21);
  v22 = *(a5 + 24);
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v22 == a5)
  {
    *(a2 + 568) = v10;
    (*(**(a5 + 24) + 24))(*(a5 + 24), v10);
  }

  else
  {
    *(a2 + 568) = v22;
    *(a5 + 24) = 0;
  }

  return a1;
}

void swift::Demangle::__runtime::Demangler::DemangleInitRAII::~DemangleInitRAII(swift::Demangle::__runtime::Demangler::DemangleInitRAII *this)
{
  *(*this + 88) = *(this + 8);
  *(*this + 104) = *(this + 24);
  v2 = *this;
  *(v2 + 536) = *(this + 10);
  *(v2 + 56) = *(this + 3);
  v3 = *this;
  *(v3 + 72) = *(this + 8);
  v4 = *(v3 + 568);
  *(v3 + 568) = 0;
  if (v4 == v3 + 544)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = this + 72;
  v6 = *(this + 12);
  if (v6)
  {
    if (v6 != v5)
    {
      *(v3 + 568) = v6;
      *(this + 12) = 0;
      return;
    }

    *(v3 + 568) = v3 + 544;
    (*(**(this + 12) + 24))(*(this + 12), v3 + 544);
  }

  else
  {
    *(v3 + 568) = 0;
  }

  v7 = *(this + 12);
  if (v7 == v5)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

unint64_t swift::Demangle::__runtime::Demangler::demangleSymbol(uint64_t a1, _WORD *a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  if (v7)
  {
    if (v7 == a4)
    {
      v41 = v40;
      (*(*v7 + 24))(v7, v40);
    }

    else
    {
      v41 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  swift::Demangle::__runtime::Demangler::DemangleInitRAII::DemangleInitRAII(v42, a1, a2, a3, v40);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
  }

  else if (v41)
  {
    (*(*v41 + 40))();
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (v8 >= v9)
  {
    v10 = *(a1 + 72);
  }

  else
  {
    v10 = *(a1 + 64);
  }

  if (v8 - v10 >= 3)
  {
    v11 = *(a1 + 56);
    v12 = (v11 + v10);
    v13 = *v12;
    v14 = *(v12 + 2);
    if (v13 == 21599 && v14 == 116)
    {
      *(a1 + 72) = v9 + 3;
      v24 = swift::Demangle::__runtime::demangleOldSymbolAsNode(v11, v8, a1);
      goto LABEL_51;
    }
  }

  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  if (!ManglingPrefixLength)
  {
    goto LABEL_50;
  }

  if (a3 >= 2)
  {
    if (*a2 == 25892)
    {
      *(a1 + 81) = 1;
    }

    v21 = *a2 == 21599;
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 80) = v21;
  v22 = v9 + ManglingPrefixLength;
  for (*(a1 + 72) = v22; v22 < v8; v22 = *(a1 + 72))
  {
    if (v22 >= *(a1 + 64) || !*(*(a1 + 56) + v22))
    {
      break;
    }

    v23 = swift::Demangle::__runtime::Demangler::demangleOperator(a1, v17, v18, v19, v20);
    if (!v23)
    {
      goto LABEL_50;
    }

    v43 = v23;
    swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back((a1 + 88), &v43, a1);
  }

  v24 = (*(a1 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 8) = v24;
  if (!v24 || v24 + 24 > *(a1 + 16))
  {
    v25 = 2 * *(a1 + 32);
    if (v25 <= 0x20)
    {
      v25 = 32;
    }

    *(a1 + 32) = v25;
    v26 = v25 + 8;
    v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
    v28 = v27 + v26;
    *v27 = *(a1 + 24);
    v24 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 16) = v28;
    *(a1 + 24) = v27;
  }

  *(a1 + 8) = v24 + 24;
  *(v24 + 16) = 101;
  *(v24 + 18) = 0;
  v29 = *(a1 + 96);
  if (!v29)
  {
LABEL_50:
    v24 = 0;
    goto LABEL_51;
  }

  v30 = v29 - 1;
  v31 = *(*(a1 + 88) + 8 * (v29 - 1));
  if (*(v31 + 8) == 232)
  {
    *(a1 + 96) = v30;
    if (v29 == 1)
    {
LABEL_46:
      swift::Demangle::__runtime::Node::addChild(v24, v31, a1, v19, v20);
      goto LABEL_47;
    }
  }

  else
  {
    v31 = 0;
    v30 = *(a1 + 96);
  }

  v32 = v24;
  do
  {
    v33 = *(a1 + 88);
    v34 = v33[v30 - 1];
    if (!swift::Demangle::__runtime::isFunctionAttr(v34[8]))
    {
      v37 = 8 * v30;
      while (1)
      {
        v38 = *v33;
        if (*(*v33 + 8) == 243)
        {
          v39 = *(v38 + 18);
          if ((v39 - 1) >= 2)
          {
            if (v39 != 5 || !*(v38 + 2))
            {
              v38 = 0;
              goto LABEL_56;
            }

            v38 = *v38;
          }

          v38 = *v38;
        }

LABEL_56:
        swift::Demangle::__runtime::Node::addChild(v32, v38, a1, v19, v20);
        ++v33;
        v37 -= 8;
        if (!v37)
        {
          goto LABEL_45;
        }
      }
    }

    *(a1 + 96) = v30 - 1;
    swift::Demangle::__runtime::Node::addChild(v32, v34, a1, v19, v20);
    if ((v34[8] & 0xFFFE) == 0xB4)
    {
      v32 = v34;
    }

    v30 = *(a1 + 96);
  }

  while (v30);
LABEL_45:
  if (v31)
  {
    goto LABEL_46;
  }

LABEL_47:
  v35 = *(v24 + 18);
  if ((v35 - 1) >= 2 && (v35 != 5 || !*(v24 + 8)))
  {
    goto LABEL_50;
  }

LABEL_51:
  swift::Demangle::__runtime::Demangler::DemangleInitRAII::~DemangleInitRAII(v42);
  return v24;
}

uint64_t swift::Demangle::__runtime::Demangler::nextIf(void *a1, const void *a2, size_t a3)
{
  v3 = a1[8];
  v4 = a1[9];
  if (v3 >= v4)
  {
    v5 = a1[9];
  }

  else
  {
    v5 = a1[8];
  }

  if (v3 - v5 < a3)
  {
    return 0;
  }

  if (a3)
  {
    v6 = a1;
    v7 = a3;
    v8 = memcmp((a1[7] + v5), a2, a3);
    a3 = v7;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      return 0;
    }
  }

  a1[9] = v4 + a3;
  return 1;
}