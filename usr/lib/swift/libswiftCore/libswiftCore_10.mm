char *swift::findConformingSuperclass(char *a1, uint64_t a2)
{
  SuperclassForMaybeIncompleteMetadata = a1;
  v3 = (a2 + 4);
  v4 = (*(a2 + 12) >> 3) & 7;
  if (v4 == 1)
  {
    v9 = *v3;
    v10 = (v3 + v9);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v8 = *v11;
    if (!*v11)
    {
      goto LABEL_15;
    }

LABEL_13:
    v12 = 0;
    v13 = v8;
    if (!a1)
    {
      return SuperclassForMaybeIncompleteMetadata;
    }

    goto LABEL_17;
  }

  if (!v4)
  {
    v5 = *v3;
    v6 = v3 + v5;
    if (v5 && v6 != 0)
    {
      v8 = v3 + v5;
      if (v6)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  CanonicalTypeMetadata = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(a2);
  if (!CanonicalTypeMetadata)
  {
    if (!SuperclassForMaybeIncompleteMetadata)
    {
      return SuperclassForMaybeIncompleteMetadata;
    }

    getContextDescriptor(SuperclassForMaybeIncompleteMetadata, v25);
    v13 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v25[0];
    v15 = 1;
    if (!v25[0])
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = CanonicalTypeMetadata;
  v12 = 1;
  if (!SuperclassForMaybeIncompleteMetadata)
  {
    return SuperclassForMaybeIncompleteMetadata;
  }

LABEL_17:
  v15 = v13 == 0;
  if (v12)
  {
    if (v13 == SuperclassForMaybeIncompleteMetadata)
    {
      return SuperclassForMaybeIncompleteMetadata;
    }

    v16 = 1;
    v17 = v13;
    goto LABEL_29;
  }

  getContextDescriptor(SuperclassForMaybeIncompleteMetadata, v25);
  v19 = v25[0];
  if (v13)
  {
    v15 = 0;
    v18 = v13;
    v17 = v13;
    if (!v25[0])
    {
      goto LABEL_28;
    }

LABEL_27:
    if (swift::equalContexts(v19, v18))
    {
      return SuperclassForMaybeIncompleteMetadata;
    }

    goto LABEL_28;
  }

  v18 = 0;
  v15 = 1;
  v17 = 0;
  if (v25[0])
  {
    goto LABEL_27;
  }

LABEL_28:
  v16 = 0;
LABEL_29:
  SuperclassForMaybeIncompleteMetadata = getSuperclassForMaybeIncompleteMetadata(SuperclassForMaybeIncompleteMetadata, 0, 0, 1);
  if (SuperclassForMaybeIncompleteMetadata)
  {
    v21 = v20;
    do
    {
      if (v16)
      {
        if (v13 == SuperclassForMaybeIncompleteMetadata)
        {
          return SuperclassForMaybeIncompleteMetadata;
        }

        goto LABEL_32;
      }

      getContextDescriptor(SuperclassForMaybeIncompleteMetadata, v25);
      if (v15)
      {
        v23 = 0;
        if (!v25[0])
        {
          goto LABEL_32;
        }
      }

      else
      {
        v23 = v17;
        if (!v25[0])
        {
          goto LABEL_32;
        }
      }

      if (swift::equalContexts(v25[0], v23))
      {
        return SuperclassForMaybeIncompleteMetadata;
      }

LABEL_32:
      SuperclassForMaybeIncompleteMetadata = getSuperclassForMaybeIncompleteMetadata(SuperclassForMaybeIncompleteMetadata, v21, 1, 1);
      v21 = v22;
    }

    while (SuperclassForMaybeIncompleteMetadata);
  }

  return SuperclassForMaybeIncompleteMetadata;
}

uint64_t swift_conformsToProtocol(swift *a1, int *a2)
{
  v3 = swift_conformsToProtocol::Override;
  if (swift_conformsToProtocol::Override == 1)
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, v4, 0, v6);
    result = v6[0];
    if (!v6[0])
    {
      if (v7)
      {
        swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, v4, 1, v6);
        return v6[0];
      }

      else
      {
        return 0;
      }
    }
  }

  else if (swift_conformsToProtocol::Override)
  {

    return v3(a1, a2, swift_conformsToProtocolImpl);
  }

  else
  {

    return swift_conformsToProtocolSlow(a1, a2);
  }

  return result;
}

uint64_t swift_conformsToProtocolImpl(uint64_t a1, int *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, v3, 0, v5);
  result = v5[0];
  if (!v5[0])
  {
    if (v6)
    {
      swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, v3, 1, v5);
      return v5[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t swift_conformsToProtocolSlow(swift *a1, int *a2)
{
  Override_conformsToProtocol = swift::getOverride_conformsToProtocol(a1);
  if (Override_conformsToProtocol)
  {
    swift_conformsToProtocol::Override = Override_conformsToProtocol;

    return (Override_conformsToProtocol)(a1, a2, swift_conformsToProtocolImpl);
  }

  else
  {
    swift_conformsToProtocol::Override = 1;
    swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 0, v6);
    result = v6[0];
    if (!v6[0])
    {
      if (v7)
      {
        swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 1, v6);
        return v6[0];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t swift_conformsToProtocol2(swift *a1, int *a2)
{
  v3 = swift_conformsToProtocol2::Override;
  if (swift_conformsToProtocol2::Override == 1)
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, v4, 0, v6);
    result = v6[0];
    if (!v6[0])
    {
      if (v7)
      {
        swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, v4, 1, v6);
        return v6[0];
      }

      else
      {
        return 0;
      }
    }
  }

  else if (swift_conformsToProtocol2::Override)
  {

    return v3(a1, a2, swift_conformsToProtocol2Impl);
  }

  else
  {

    return swift_conformsToProtocol2Slow(a1, a2);
  }

  return result;
}

uint64_t swift_conformsToProtocol2Impl(uint64_t a1, int *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, v3, 0, v5);
  result = v5[0];
  if (!v5[0])
  {
    if (v6)
    {
      swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, v3, 1, v5);
      return v5[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t swift_conformsToProtocol2Slow(swift *a1, int *a2)
{
  Override_conformsToProtocol2 = swift::getOverride_conformsToProtocol2(a1);
  if (Override_conformsToProtocol2)
  {
    swift_conformsToProtocol2::Override = Override_conformsToProtocol2;

    return (Override_conformsToProtocol2)(a1, a2, swift_conformsToProtocol2Impl);
  }

  else
  {
    swift_conformsToProtocol2::Override = 1;
    swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 0, v6);
    result = v6[0];
    if (!v6[0])
    {
      if (v7)
      {
        swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 1, v6);
        return v6[0];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t swift_conformsToProtocolCommon(swift *a1, int *a2)
{
  v4 = swift_conformsToProtocolCommon::Override;
  if (swift_conformsToProtocolCommon::Override == 1)
  {
    swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 0, v6);
    result = v6[0];
    if (!v6[0])
    {
      if (v7)
      {
        swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 1, v6);
        return v6[0];
      }

      else
      {
        return 0;
      }
    }
  }

  else if (swift_conformsToProtocolCommon::Override)
  {

    return v4(a1, a2, swift_conformsToProtocolCommonImpl);
  }

  else
  {

    return swift_conformsToProtocolCommonSlow(a1, a2);
  }

  return result;
}

uint64_t swift_conformsToProtocolCommonImpl(uint64_t a1, int *a2)
{
  swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 0, v5);
  result = v5[0];
  if (!v5[0])
  {
    if (v6)
    {
      swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 1, v5);
      return v5[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t swift_conformsToProtocolCommonSlow(swift *a1, int *a2)
{
  Override_conformsToProtocolCommon = swift::getOverride_conformsToProtocolCommon(a1);
  if (Override_conformsToProtocolCommon)
  {
    swift_conformsToProtocolCommon::Override = Override_conformsToProtocolCommon;

    return (Override_conformsToProtocolCommon)(a1, a2, swift_conformsToProtocolCommonImpl);
  }

  else
  {
    swift_conformsToProtocolCommon::Override = 1;
    swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 0, v6);
    result = v6[0];
    if (!v6[0])
    {
      if (v7)
      {
        swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 1, v6);
        return v6[0];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t swift_conformsToProtocolWithExecutionContext(swift *a1, int *a2, _OWORD *a3)
{
  v6 = swift_conformsToProtocolWithExecutionContext::Override;
  if (swift_conformsToProtocolWithExecutionContext::Override == 1)
  {
    swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 0, &v9);
    result = v9;
    v8 = v10;
    if (!v9)
    {
      if (!v11)
      {
        result = 0;
        if (!a3)
        {
          return result;
        }

        goto LABEL_6;
      }

      swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 1, &v9);
      result = v9;
      v8 = v10;
    }

    if (!a3)
    {
      return result;
    }

LABEL_6:
    if (v8)
    {
      if (!*a3 || *a3 == v8)
      {
        *a3 = v8;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  if (swift_conformsToProtocolWithExecutionContext::Override)
  {

    return (v6)(a1, a2, a3, swift_conformsToProtocolWithExecutionContextImpl);
  }

  else
  {

    return swift_conformsToProtocolWithExecutionContextSlow(a1, a2, a3);
  }
}

uint64_t swift_conformsToProtocolWithExecutionContextImpl(uint64_t a1, int *a2, _OWORD *a3)
{
  swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 0, &v8);
  result = v8;
  v7 = v9;
  if (v8)
  {
LABEL_4:
    if (!a3)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v10)
  {
    swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 1, &v8);
    result = v8;
    v7 = v9;
    goto LABEL_4;
  }

  result = 0;
  if (!a3)
  {
    return result;
  }

LABEL_5:
  if (v7)
  {
    if (!*a3 || *a3 == v7)
    {
      *a3 = v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t swift_conformsToProtocolWithExecutionContextSlow(swift *a1, int *a2, _OWORD *a3)
{
  Override_conformsToProtocolWithExecutionContext = swift::getOverride_conformsToProtocolWithExecutionContext(a1);
  if (Override_conformsToProtocolWithExecutionContext)
  {
    swift_conformsToProtocolWithExecutionContext::Override = Override_conformsToProtocolWithExecutionContext;

    return (Override_conformsToProtocolWithExecutionContext)(a1, a2, a3, swift_conformsToProtocolWithExecutionContextImpl);
  }

  else
  {
    swift_conformsToProtocolWithExecutionContext::Override = 1;
    swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 0, &v9);
    result = v9;
    v8 = v10;
    if (!v9)
    {
      if (v11)
      {
        swift_conformsToProtocolMaybeInstantiateSuperclasses(a1, a2, 1, &v9);
        result = v9;
        v8 = v10;
      }

      else
      {
        result = 0;
      }
    }

    if (a3 && v8)
    {
      if (!*a3 || *a3 == v8)
      {
        *a3 = v8;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t swift_isInConformanceExecutionContext(swift *a1, void *a2)
{
  v3 = swift_isInConformanceExecutionContext::Override;
  if (swift_isInConformanceExecutionContext::Override == 1)
  {
    return !a2 || !*a2 || !swift::_swift_task_isCurrentGlobalActorHook || ((swift::_swift_task_isCurrentGlobalActorHook)(*a2, a2[1]) & 1) != 0;
  }

  if (swift_isInConformanceExecutionContext::Override)
  {

    return (v3)(a1, a2, swift_isInConformanceExecutionContextImpl);
  }

  else
  {

    return swift_isInConformanceExecutionContextSlow(a1, a2);
  }
}

uint64_t swift_isInConformanceExecutionContextSlow(swift *a1, void *a2)
{
  v4 = swift::getOverride_isInConformanceExecutionContext(a1);
  if (v4)
  {
    swift_isInConformanceExecutionContext::Override = v4;

    return (v4)(a1, a2, swift_isInConformanceExecutionContextImpl);
  }

  else
  {
    result = 1;
    swift_isInConformanceExecutionContext::Override = 1;
    if (a2)
    {
      return !*a2 || !swift::_swift_task_isCurrentGlobalActorHook || ((swift::_swift_task_isCurrentGlobalActorHook)() & 1) != 0;
    }
  }

  return result;
}

unint64_t swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getGlobalActorConformance(uint64_t a1)
{
  v1 = *(a1 + 12);
  if ((v1 & 0x80000) == 0)
  {
    return 0;
  }

  v3 = ((a1 + 4 * ((v1 >> 6) & 1) + 12 * BYTE1(v1) + ((v1 >> 21) & 0x7F8) + 19) & 0xFFFFFFFFFFFFFFFCLL);
  if ((v1 & 0x10000) != 0)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = &v3[3 * ((v1 >> 17) & 1) + 2 * v4 + ((v1 >> 16) & 1)];
  v6 = *(v5 + 4);
  result = (v6 & 0xFFFFFFFFFFFFFFFELL) + v5 + 4;
  if (v6)
  {
    if (!*result)
    {
      return 0;
    }

    return *result;
  }

  return result;
}

uint64_t std::__function::__func<_checkWitnessTableIsolation(swift::TargetMetadata<swift::InProcess> const*,swift::TargetWitnessTable<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,swift::ConformanceExecutionContext &)::$_0,std::allocator<_checkWitnessTableIsolation(swift::TargetMetadata<swift::InProcess> const*,swift::TargetWitnessTable<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,swift::ConformanceExecutionContext &)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD620;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<_checkWitnessTableIsolation(swift::TargetMetadata<swift::InProcess> const*,swift::TargetWitnessTable<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,swift::ConformanceExecutionContext &)::$_1,std::allocator<_checkWitnessTableIsolation(swift::TargetMetadata<swift::InProcess> const*,swift::TargetWitnessTable<swift::InProcess> const*,__swift::__runtime::llvm::ArrayRef<void const*>,swift::ConformanceExecutionContext &)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD668;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<_registerProtocolConformances(ConformanceState &,anonymous namespace::ConformanceSection)::$_0,std::allocator<_registerProtocolConformances(ConformanceState &,anonymous namespace::ConformanceSection)::$_0>,void ()(swift::ConcurrentFreeListNode *&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD6B0;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<_registerProtocolConformances(ConformanceState &,anonymous namespace::ConformanceSection)::$_0,std::allocator<_registerProtocolConformances(ConformanceState &,anonymous namespace::ConformanceSection)::$_0>,void ()(swift::ConcurrentFreeListNode *&)>::operator()(void *result, void *a2)
{
  v2 = *(result[1] + 80);
  if (v2)
  {
    v4 = result;
    do
    {
      while (1)
      {
        v5 = v2;
        atomic_compare_exchange_strong_explicit((v4[1] + 80), &v5, *(v2 + 24), memory_order_release, memory_order_relaxed);
        if (v5 != v2)
        {
          break;
        }

        result = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *result = *a2;
        result[1] = v2;
        *a2 = result;
        if (!v2)
        {
          return result;
        }
      }

      v2 = v5;
    }

    while (v5);
  }

  return result;
}

char *getSuperclassForMaybeIncompleteMetadata(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if ((*a1 - 1) <= 0x7FE)
  {
    return _swift_class_getSuperclass(a1);
  }

  if ((*(a1 + 32) & 2) != 0 && *(a1 + 64))
  {
    if ((a3 & 1) == 0)
    {
      v6 = a4;
      swift_checkMetadataState(256, a1);
      a4 = v6;
    }

    if (a2 == 1)
    {
      if (*(a1 + 8))
      {
        v8 = *(a1 + 8);
      }

      else
      {
        v8 = 0;
      }

      ObjCClassMetadata = swift_getObjCClassMetadata(v8);
      swift_checkMetadataState(256, ObjCClassMetadata);
      return ObjCClassMetadata;
    }

    else if (a2)
    {
      if (a4)
      {
        return getSuperclassMetadata(511, a1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8))
      {
        v7 = *(a1 + 8);
      }

      else
      {
        v7 = 0;
      }

      return swift_getObjCClassMetadata(v7);
    }
  }

  else if (*(a1 + 8))
  {
    return *(a1 + 8);
  }

  else
  {
    return 0;
  }
}

BOOL satisfiesLayoutConstraint@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a1 + 8))
  {
    operator new();
  }

  result = swift::TargetMetadata<swift::InProcess>::satisfiesClassConstraint(a2);
  if (!result)
  {
    v8 = *(a1 + 4);
    v7 = (a1 + 4);
    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v7 + v8, v6);
    swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v7 + *v7, v9);
    operator new();
  }

  *a3 = 0;
  a3[16] = 0;
  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,char const*,unsigned long>(char const*,int,char const*,char const*,unsigned long)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,char const*,unsigned long>(char const*,int,char const*,char const*,unsigned long)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 2), *(result + 3), *(result + 4));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C402607123CLL, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,unsigned long,unsigned long>(char const*,int,char const*,unsigned long,unsigned long)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,unsigned long,unsigned long>(char const*,int,char const*,unsigned long,unsigned long)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 2), *(result + 3), *(result + 4));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C409A01E8C7, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,int,char const*,unsigned long>(char const*,int,char const*,int,char const*,unsigned long)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,int,char const*,unsigned long>(char const*,int,char const*,int,char const*,unsigned long)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 2), *(result + 6), *(result + 4), *(result + 5));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C405416CA85, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*>(char const*,int,char const*)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*>(char const*,int,char const*)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 2));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C400D13D5BALL, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<unsigned long,unsigned long>(char const*,unsigned long,unsigned long)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<unsigned long,unsigned long>(char const*,unsigned long,unsigned long)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 1), *(result + 2));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C40E4AAA758, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<long,long>(char const*,long,long)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<long,long>(char const*,long,long)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 1), *(result + 2));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C40E4AAA758, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,char const*>(char const*,int,char const*,char const*)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,char const*>(char const*,int,char const*,char const*)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = *result;
      v4 = *(result + 2);
      v5 = *(result + 2);
      v6 = *(result + 3);
      v7 = 0;
      swift_asprintf(&v7, v3, a3, v5, v4, v6);
      return v7;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C404DAAC892, a3);
    return 0;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,int,char const*>(char const*,int,char const*,int,char const*)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,char const*,int,char const*>(char const*,int,char const*,int,char const*)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 2), *(result + 6), *(result + 4));
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C40229B2414, a3);
    return 0;
  }

  return result;
}

char *_ZZN5swift15TypeLookupErrorC1IZNS_L19TypeLookupErrorImplIJEEES0_PKcDpT_EUlvE_EERKT_ENUlPvNS0_7CommandESB_E_8__invokeESB_SC_SB__0(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 0;
      swift_asprintf(&v3, *result, a3);
      return v3;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x50C40EE9192B6, a3);
    return 0;
  }

  return result;
}

unint64_t swift::TargetContextDescriptor<swift::InProcess>::getInvertedProtocols(_DWORD *a1)
{
  v1 = *a1;
  if ((*a1 & 0x20) == 0)
  {
    return 0;
  }

  result = 0;
  v4 = v1 & 0x1F;
  if (v4 > 16)
  {
    if (v4 == 17)
    {
      if (a1)
      {
        v8 = a1;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v16 = v8;
      }

      else
      {
        v16 = 0;
      }

      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v16);
      v12 = *v16;
      v13 = *v16 & 0x80080;
      if (v13 == 524416)
      {
        v14 = v16;
        if (!v16)
        {
          v16 = 0;
        }

        v19 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v16);
        v20 = v16;
        goto LABEL_45;
      }
    }

    else
    {
      if (v4 != 18)
      {
        return result;
      }

      if (a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        v10 = v6;
      }

      else
      {
        v10 = 0;
      }

      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v10);
      v12 = *v10;
      v13 = *v10 & 0x80080;
      if (v13 == 524416)
      {
        v14 = v10;
        if (!v10)
        {
          v10 = 0;
        }

        v19 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v10);
        v20 = v10;
LABEL_45:
        v18 = *(v19 + 4 * ((*v20 & 0x30000) == 0x20000) + 12 * ((*v20 & 0x30000) == 0x10000));
        v17 = (~*v14 & 0x80080) == 0;
        return TrailingObjectsImpl + 4 * ((v12 & 0x30000) == 0x20000) + 12 * ((v12 & 0x30000) == 0x10000) + 4 * (v13 == 524416) + 4 * v18 + 4 * v17;
      }
    }

    v17 = 0;
    v18 = 0;
    return TrailingObjectsImpl + 4 * ((v12 & 0x30000) == 0x20000) + 12 * ((v12 & 0x30000) == 0x10000) + 4 * (v13 == 524416) + 4 * v18 + 4 * v17;
  }

  if (v4 == 4)
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = 0;
    }

    return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(v15) + 4 * *(v15 + 1);
  }

  else if (v4 == 16)
  {
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v9) + 4 * ((~*v9 & 0x80080) == 0);
  }

  return result;
}

unint64_t swift::TargetExtendedExistentialTypeShape<swift::InProcess>::getReqSigRequirements(unsigned int *a1)
{
  v2 = a1 + 4;
  v1 = *a1;
  if ((v1 & 0x800) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 4);
  }

  if ((*a1 & 0x1100) == 0x100)
  {
    v4 = *v2;
  }

  else
  {
    v4 = 0;
  }

  return (((&v2[2 * ((v1 >> 8) & 1)] + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v1 >> 9) & 1) + 4 * ((v1 >> 10) & 1) + v4 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<unsigned short>(char const*,unsigned short)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<unsigned short>(char const*,unsigned short)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = *result;
      v4 = *(result + 4);
      v5 = 0;
      swift_asprintf(&v5, v3, a3, v4);
      return v5;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C40A90F5278, a3);
    return 0;
  }

  return result;
}

uint64_t std::__function::__func<checkInvertibleRequirements(swift::TargetMetadata<swift::InProcess> const*,swift::InvertibleProtocolSet)::$_0,std::allocator<checkInvertibleRequirements(swift::TargetMetadata<swift::InProcess> const*,swift::InvertibleProtocolSet)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD6F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkInvertibleRequirements(swift::TargetMetadata<swift::InProcess> const*,swift::InvertibleProtocolSet)::$_1,std::allocator<checkInvertibleRequirements(swift::TargetMetadata<swift::InProcess> const*,swift::InvertibleProtocolSet)::$_1>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD740;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkInvertibleRequirements(swift::TargetMetadata<swift::InProcess> const*,swift::InvertibleProtocolSet)::$_2,std::allocator<checkInvertibleRequirements(swift::TargetMetadata<swift::InProcess> const*,swift::InvertibleProtocolSet)::$_2>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD788;
  a2[1] = v2;
  return result;
}

_DWORD *getContextDescriptor@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a1);
  if (result)
  {
    if ((*result & 0x30000) == 0x20000)
    {
      v5 = result;
      result = swift::ParsedTypeIdentity::parse(result, v11);
      *(a2 + 8) = v12;
      v6 = v5;
    }

    else
    {
      v6 = result;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = v6;
  }

  else if (*a1 != 771 || *(a1 + 12) != 1 || (v7 = (a1 + 16), v8 = *(a1 + 8), (v8 & 0x40000000) != 0) && *v7 || (v9 = v7[(v8 >> 30) & 1], (v9 & 1) != 0))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = v10;
  }

  return result;
}

void swift_conformsToProtocolMaybeInstantiateSuperclasses(uint64_t foreign_type_protocol_conformance_on_disk@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a5@<X8>)
{
  v6 = foreign_type_protocol_conformance_on_disk;
  v207 = *MEMORY[0x1E69E9840];
  v200 = a2;
  v201 = foreign_type_protocol_conformance_on_disk;
  v199 = a3;
  v7 = &unk_1ED426000;
  if (qword_1ED426500 != -1)
  {
    swift::addImageProtocolConformanceBlockCallback(foreign_type_protocol_conformance_on_disk);
  }

  v198 = 0;
  v197 = &v198;
  if (!qword_1ED4264C0)
  {
    v184 = 0;
    v185 = 0;
    v183 = 0;
    v22 = 0;
    goto LABEL_161;
  }

  v8 = 0;
  v9 = 0;
  if (!v6)
  {
    v22 = 0;
    v183 = 0;
    v184 = 0;
    v185 = 0;
    goto LABEL_82;
  }

  if (MEMORY[0x1EEE9AC10])
  {
    v10 = MEMORY[0x1EEE9AC18] == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v193 = v11;
  while (1)
  {
    v13 = v200;
    getContextDescriptor(v6, &v202);
    v14 = v202;
    v15 = v204[0];
    ObjCClassFromMetadataConditional = swift::swift_getObjCClassFromMetadataConditional(v6);
    v17 = ObjCClassFromMetadataConditional;
    if (byte_1ED4264B8 == 1)
    {
      if (v193)
      {
        if (v15)
        {
          foreign_type_protocol_conformance_on_disk = _dyld_find_foreign_type_protocol_conformance_on_disk();
          if (foreign_type_protocol_conformance_on_disk != 2)
          {
            goto LABEL_64;
          }
        }

        else
        {
          foreign_type_protocol_conformance_on_disk = _dyld_find_protocol_conformance_on_disk();
          if (foreign_type_protocol_conformance_on_disk != 2)
          {
            goto LABEL_64;
          }
        }
      }

      if (v13)
      {
        v23 = v13;
      }

      else
      {
        v23 = 0;
      }

      if (qword_1ED4264C0 > v23 || unk_1ED4264C8 <= v23)
      {
        goto LABEL_63;
      }

      if (v15)
      {
        foreign_type_protocol_conformance_on_disk = _dyld_find_foreign_type_protocol_conformance();
      }

      else if (qword_1ED4264C0 <= v17 && unk_1ED4264C8 > v17 || (!v14 ? (v25 = 0) : (v25 = v14), (v22 = 0, foreign_type_protocol_conformance_on_disk = 2, qword_1ED4264C0 <= v25) && unk_1ED4264C8 > v25))
      {
        foreign_type_protocol_conformance_on_disk = _dyld_find_protocol_conformance();
      }
    }

    else
    {
      if (v13)
      {
        v18 = v13;
      }

      else
      {
        v18 = 0;
      }

      if (qword_1ED4264C0 > v18 || unk_1ED4264C8 <= v18)
      {
        goto LABEL_58;
      }

      if (!v15)
      {
        if (qword_1ED4264C0 <= ObjCClassFromMetadataConditional && unk_1ED4264C8 > ObjCClassFromMetadataConditional)
        {
          goto LABEL_57;
        }

        if (v14)
        {
          v21 = v14;
          if (qword_1ED4264C0 > v14)
          {
            goto LABEL_61;
          }

LABEL_56:
          if (unk_1ED4264C8 > v21)
          {
LABEL_57:
            foreign_type_protocol_conformance_on_disk = _dyld_find_protocol_conformance();
            if (foreign_type_protocol_conformance_on_disk != 2)
            {
              goto LABEL_64;
            }

LABEL_58:
            if (v193)
            {
              if (v15)
              {
                foreign_type_protocol_conformance_on_disk = _dyld_find_foreign_type_protocol_conformance_on_disk();
                goto LABEL_64;
              }

LABEL_62:
              foreign_type_protocol_conformance_on_disk = _dyld_find_protocol_conformance_on_disk();
              goto LABEL_64;
            }

LABEL_63:
            v22 = 0;
            foreign_type_protocol_conformance_on_disk = 2;
            goto LABEL_64;
          }
        }

        else
        {
          v21 = 0;
          if (!qword_1ED4264C0)
          {
            goto LABEL_56;
          }
        }

LABEL_61:
        if (v193)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      foreign_type_protocol_conformance_on_disk = _dyld_find_foreign_type_protocol_conformance();
      if (foreign_type_protocol_conformance_on_disk == 2)
      {
        goto LABEL_58;
      }
    }

LABEL_64:
    if (foreign_type_protocol_conformance_on_disk != 1)
    {
      break;
    }

    if (v22)
    {
      v183 = 0;
      v184 = 0;
      v185 = v22;
      v22 = 0;
      goto LABEL_81;
    }

LABEL_13:
    foreign_type_protocol_conformance_on_disk = getSuperclassForMaybeIncompleteMetadata(v6, v9, v8, a3);
    v6 = foreign_type_protocol_conformance_on_disk;
    v9 = v12;
    v8 = 1;
    if (!foreign_type_protocol_conformance_on_disk)
    {
      v22 = 0;
      v183 = 0;
      v184 = 0;
      v185 = 0;
      v8 = 1;
      goto LABEL_81;
    }
  }

  if (foreign_type_protocol_conformance_on_disk == 3)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 24) = 0;
    *(a5 + 16) = 0;
    return;
  }

  if (foreign_type_protocol_conformance_on_disk)
  {
    goto LABEL_13;
  }

  if ((*(v22 + 12) & 0x20000) != 0 && v22 + 4 * ((*(v22 + 12) >> 6) & 1) + 12 * BYTE1(*(v22 + 12)) + 8 * HIBYTE(*(v22 + 12)) + 19 > 3)
  {
    v183 = 0;
    v184 = 0;
    v185 = 0;
  }

  else
  {
    v202 = 0;
    v203 = 0;
    v26 = v22;
    foreign_type_protocol_conformance_on_disk = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(v22, v6, &v202);
    v22 = v26;
    v183 = v202;
    v184 = v203;
    v185 = foreign_type_protocol_conformance_on_disk;
  }

LABEL_81:
  v7 = &unk_1ED426000;
LABEL_82:
  if (*v197)
  {
    v27 = 1;
  }

  else
  {
    v27 = v8 & (v9 == 255);
  }

  *v197 = v27;
  v28 = a5;
  if (qword_1ED4264C0 && byte_1ED4264D1 == 1)
  {
    v186 = v22;
    v191 = v201;
    v194 = v200;
    v29 = v199;
    v202 = v204;
    v203 = 0x800000000;
    atomic_fetch_add_explicit(&qword_1ED4264E0, 1uLL, memory_order_acquire);
    v30 = qword_1ED4264E8;
    if (qword_1ED4264E8)
    {
      explicit = atomic_load_explicit(qword_1ED4264E8, memory_order_acquire);
      if (explicit)
      {
        v32 = (v30 + 8);
        v188 = &v32[2 * explicit];
        do
        {
          v33 = *v32;
          v34 = v32[1];
          v190 = v32;
          while (v33 != v34)
          {
            v36 = (v33 + *v33);
            v37 = *v36;
            if (!v37)
            {
              goto LABEL_102;
            }

            v38 = (v36 + (v37 & 0xFFFFFFFFFFFFFFFELL));
            if ((v37 & 1) == 0)
            {
              if (v38)
              {
                v39 = (v36 + (v37 & 0xFFFFFFFFFFFFFFFELL));
                goto LABEL_104;
              }

LABEL_102:
              v39 = 0;
              goto LABEL_104;
            }

            v39 = *v38;
LABEL_104:
            if (v39 != v194)
            {
              goto LABEL_96;
            }

            v40 = v36 + 1;
            v41 = (v36[3] >> 3) & 7;
            if (v41 == 1)
            {
              v46 = *v40;
              v47 = (v40 + v46);
              if (v46)
              {
                v48 = v47;
              }

              else
              {
                v48 = 0;
              }

              v45 = *v48;
              if (!*v48)
              {
LABEL_121:
                CanonicalTypeMetadata = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(v36);
                if (CanonicalTypeMetadata)
                {
                  if (!v191)
                  {
                    goto LABEL_96;
                  }

                  v49 = CanonicalTypeMetadata;
                  if (CanonicalTypeMetadata == v191)
                  {
LABEL_93:
                    v35 = v203;
                    if (v203 >= HIDWORD(v203))
                    {
                      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v202, v204, v203 + 1, 8);
                      v35 = v203;
                    }

                    *(v202 + v35) = v36;
                    LODWORD(v203) = v203 + 1;
                    goto LABEL_96;
                  }

                  v51 = 0;
                  v55 = 1;
                  v53 = CanonicalTypeMetadata;
                  goto LABEL_131;
                }

                if (!v191)
                {
                  goto LABEL_96;
                }

                getContextDescriptor(v191, buf);
                v53 = 0;
                v49 = 0;
                v52 = 0;
                v50 = *buf;
                v51 = 1;
                if (*buf)
                {
LABEL_129:
                  if (swift::equalContexts(v50, v52))
                  {
                    goto LABEL_93;
                  }

                  goto LABEL_130;
                }

                goto LABEL_130;
              }
            }

            else
            {
              if (v41)
              {
                goto LABEL_121;
              }

              v42 = *v40;
              v43 = v40 + v42;
              if (!v42 || v43 == 0)
              {
                goto LABEL_121;
              }

              v45 = v40 + v42;
              if (!v43)
              {
                goto LABEL_121;
              }
            }

            if (!v191)
            {
              goto LABEL_96;
            }

            v49 = v45;
            getContextDescriptor(v191, buf);
            v50 = *buf;
            if (v49)
            {
              v51 = 0;
              v52 = v49;
              v53 = v49;
              if (*buf)
              {
                goto LABEL_129;
              }
            }

            else
            {
              v53 = 0;
              v52 = 0;
              v51 = 1;
              if (*buf)
              {
                goto LABEL_129;
              }
            }

LABEL_130:
            v55 = 0;
LABEL_131:
            SuperclassForMaybeIncompleteMetadata = getSuperclassForMaybeIncompleteMetadata(v191, 0, 0, v29);
            if (!SuperclassForMaybeIncompleteMetadata)
            {
              goto LABEL_96;
            }

            v58 = SuperclassForMaybeIncompleteMetadata;
            v59 = v57;
            while ((v55 & 1) == 0)
            {
              getContextDescriptor(v58, buf);
              if (v51)
              {
                v61 = 0;
                if (!*buf)
                {
                  goto LABEL_134;
                }
              }

              else
              {
                v61 = v49;
                if (!*buf)
                {
                  goto LABEL_134;
                }
              }

              if (swift::equalContexts(*buf, v61))
              {
                goto LABEL_93;
              }

LABEL_134:
              v58 = getSuperclassForMaybeIncompleteMetadata(v58, v59, 1, v29);
              v59 = v60;
              if (!v58)
              {
                goto LABEL_96;
              }
            }

            if (v53 != v58)
            {
              goto LABEL_134;
            }

            if (v53)
            {
              goto LABEL_93;
            }

LABEL_96:
            ++v33;
          }

          v32 = v190 + 2;
        }

        while (v190 + 2 != v188);
      }
    }

    atomic_fetch_add_explicit(&qword_1ED4264E0, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
    *&v196 = &v202;
    v22 = v186;
    if (v186)
    {
      foreign_type_protocol_conformance_on_disk = v202;
      v62 = v202;
      v28 = a5;
      v7 = &unk_1ED426000;
      if (v203)
      {
        v63 = 8 * v203;
        v62 = v202;
        while (*v62 != v186)
        {
          ++v62;
          v63 -= 8;
          if (!v63)
          {
            goto LABEL_147;
          }
        }
      }

      if (v62 == (v202 + 8 * v203))
      {
LABEL_147:
        TypeName = swift_getTypeName(v191, 1);
        v66 = v65;
        v67 = v194 + v194[2] + 8;
        if (buf[23] >= 0)
        {
          v70 = buf;
        }

        else
        {
          v70 = *buf;
        }

        swift::fatalError(0, "Checking conformance of %.*s %p to %s %p - dyld cached conformance descriptor %p not found in conformance records: (%s)\n", v68, v69, v66, TypeName, v191, v67, v194, v186, v70);
      }
    }

    else
    {
      if (v203)
      {
        v176 = swift_getTypeName(v191, 1);
        v178 = v177;
        v179 = v194 + v194[2] + 8;
        if (buf[23] >= 0)
        {
          v182 = buf;
        }

        else
        {
          v182 = *buf;
        }

        swift::fatalError(0, "Checking conformance of %.*s %p to %s %p - dyld found no conformance descriptor, but matching descriptors exist: (%s)\n", v180, v181, v178, v176, v191, v179, v194, v182);
      }

      foreign_type_protocol_conformance_on_disk = v202;
      v28 = a5;
      v7 = &unk_1ED426000;
    }

    if (foreign_type_protocol_conformance_on_disk != v204)
    {
      free(foreign_type_protocol_conformance_on_disk);
      v22 = v186;
    }
  }

  if ((byte_1ED4264B8 & 1) == 0)
  {
    if (v185)
    {
      *v28 = v185;
      *(v28 + 8) = v183;
      *(v28 + 16) = v184;
      *(v28 + 24) = 0;
      return;
    }

    v185 = 0;
  }

LABEL_161:
  v187 = v22;
  v72 = v200;
  v71 = v201;
  v73 = v199;
  if (v7[160] != -1)
  {
    swift::_searchConformancesByMangledTypeName(foreign_type_protocol_conformance_on_disk);
  }

  atomic_fetch_add_explicit(&Conformances, 1u, memory_order_acquire);
  do
  {
    v74 = atomic_load_explicit(&dword_1ED426464[1], memory_order_acquire);
    v75 = atomic_load_explicit(&dword_1ED426464[3], memory_order_acquire);
    v76 = atomic_load_explicit(dword_1ED426464, memory_order_acquire);
  }

  while (v74 != atomic_load_explicit(&dword_1ED426464[1], memory_order_acquire));
  if (!v71)
  {
    goto LABEL_189;
  }

  if (v75)
  {
    v77 = v76 == 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = v77 || v74 == 0;
  v79 = v78;
  v202 = v71;
  v203 = v72;
  {
    foreign_type_protocol_conformance_on_disk = v71;
    v82 = 0;
    for (i = 0; ; i = 1)
    {
      foreign_type_protocol_conformance_on_disk = getSuperclassForMaybeIncompleteMetadata(foreign_type_protocol_conformance_on_disk, v82, i, v73);
      if (!foreign_type_protocol_conformance_on_disk)
      {
        break;
      }

      v202 = foreign_type_protocol_conformance_on_disk;
      v203 = v72;
      if (!v79)
      {
        v84 = foreign_type_protocol_conformance_on_disk;
        v85 = v82;
        v82 = v85;
        v81 = v86;
        foreign_type_protocol_conformance_on_disk = v84;
        if (v81)
        {
          goto LABEL_183;
        }
      }
    }

LABEL_189:
    atomic_fetch_add_explicit(&Conformances, 0xFFFFFFFF, memory_order_release);
    v89 = v187;
    goto LABEL_190;
  }

  v81 = v80;
  foreign_type_protocol_conformance_on_disk = v71;
LABEL_183:
  v87 = v81[1];
  v88 = 0uLL;
  v89 = v187;
  if ((v87 & 2) != 0)
  {
    v90 = v87 & 0xFFFFFFFFFFFFFFFCLL;
    if (v90)
    {
      v88 = *(v90 + 8);
      goto LABEL_186;
    }

    atomic_fetch_add_explicit(&Conformances, 0xFFFFFFFF, memory_order_release);
    if (foreign_type_protocol_conformance_on_disk == v71)
    {
LABEL_287:
      v91 = v185;
      if (v185)
      {
        *a5 = v185;
        *(a5 + 8) = v183;
        *(a5 + 16) = v184;
        *(a5 + 24) = 0;
        return;
      }

      goto LABEL_289;
    }
  }

  else
  {
LABEL_186:
    v91 = v81[2];
    atomic_fetch_add_explicit(&Conformances, 0xFFFFFFFF, memory_order_release);
    if (foreign_type_protocol_conformance_on_disk == v71)
    {
      if (!v91)
      {
        goto LABEL_287;
      }

LABEL_289:
      *a5 = v91;
      *(a5 + 8) = v88;
      *(a5 + 24) = 0;
      return;
    }
  }

LABEL_190:
  if (v89)
  {
    v92 = (v89 + 4);
    v93 = (*(v89 + 12) >> 3) & 7;
    if (v93 == 1)
    {
      v115 = *v92;
      v116 = (v92 + v115);
      if (v115)
      {
        v117 = v116;
      }

      else
      {
        v117 = 0;
      }

      v95 = *v117;
      if (!*v117)
      {
        goto LABEL_227;
      }

LABEL_225:
      v118 = 0;
      v119 = v95;
      v120 = v201;
      if (!v201)
      {
        goto LABEL_304;
      }

LABEL_229:
      v122 = v199;
      v123 = v119 == 0;
      if (v118)
      {
        if (v119 != v120)
        {
          v124 = 1;
          v125 = v119;
          goto LABEL_293;
        }

        goto LABEL_303;
      }

      getContextDescriptor(v120, &v202);
      v127 = v202;
      if (v119)
      {
        v123 = 0;
        v126 = v119;
        v125 = v119;
        if (!v202)
        {
          goto LABEL_292;
        }
      }

      else
      {
        v126 = 0;
        v123 = 1;
        v125 = 0;
        if (!v202)
        {
          goto LABEL_292;
        }
      }
    }

    else
    {
      if (!v93)
      {
        v94 = *v92;
        if (v94)
        {
          if ((v92 + v94))
          {
            v95 = (v92 + v94);
            goto LABEL_225;
          }
        }
      }

LABEL_227:
      v121 = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(v89);
      if (v121)
      {
        v119 = v121;
        v118 = 1;
        v120 = v201;
        if (v201)
        {
          goto LABEL_229;
        }

LABEL_304:
        v202 = 0;
        v203 = 0;
        WitnessTable = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(v89, v120, &v202);
        v173 = v202;
        v174 = v203;
        v202 = WitnessTable;
        v203 = v173;
        v204[0] = v174;
        ConformanceState::cacheResult(&Conformances, v201, v200, &v202, 0);
        *a5 = WitnessTable;
        *(a5 + 8) = v173;
        *(a5 + 16) = v174;
        *(a5 + 24) = 0;
        return;
      }

      v120 = v201;
      if (!v201)
      {
        goto LABEL_304;
      }

      v122 = v199;
      getContextDescriptor(v201, &v202);
      v119 = 0;
      v125 = 0;
      v126 = 0;
      v127 = v202;
      v123 = 1;
      if (!v202)
      {
LABEL_292:
        v124 = 0;
LABEL_293:
        v120 = getSuperclassForMaybeIncompleteMetadata(v120, 0, 0, v122 & 1);
        if (v120)
        {
          v169 = v168;
          do
          {
            if (v124)
            {
              if (v119 == v120)
              {
                break;
              }

              goto LABEL_296;
            }

            getContextDescriptor(v120, &v202);
            if (v123)
            {
              v171 = 0;
              if (!v202)
              {
                goto LABEL_296;
              }
            }

            else
            {
              v171 = v125;
              if (!v202)
              {
                goto LABEL_296;
              }
            }

            if (swift::equalContexts(v202, v171))
            {
              break;
            }

LABEL_296:
            v120 = getSuperclassForMaybeIncompleteMetadata(v120, v169, 1, v122 & 1);
            v169 = v170;
          }

          while (v120);
        }

LABEL_303:
        v89 = v187;
        goto LABEL_304;
      }
    }

    if (!swift::equalContexts(v127, v126))
    {
      goto LABEL_292;
    }

    goto LABEL_303;
  }

  v202 = 1;
  v203 = -4096;
  v204[3] = -4096;
  v204[7] = -4096;
  v204[11] = -4096;
  v96 = v200;
  v97 = v201;
  if (qword_1ED426538 != -1)
  {
    swift_conformsToProtocolMaybeInstantiateSuperclasses(foreign_type_protocol_conformance_on_disk);
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy == 1 && !_os_trace_lazy_init_completed_4swift())
  {
    goto LABEL_206;
  }

  if (swift::runtime::trace::LogsToken != -1)
  {
    swift_conformsToProtocolMaybeInstantiateSuperclasses();
  }

  if (swift::runtime::trace::TracingEnabled == 1)
  {
    v98 = os_signpost_id_generate(swift::runtime::trace::ScanLog);
    if (os_signpost_enabled(swift::runtime::trace::ScanLog))
    {
      v99 = swift_getTypeName(v97, 1);
      v101 = v100;
      v102 = v96 ? v96 + v96[2] + 8 : "<null>";
      if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v175 = swift::runtime::trace::ScanLog;
        if (os_signpost_enabled(swift::runtime::trace::ScanLog))
        {
          *buf = 68158722;
          *&buf[4] = v101;
          *&buf[8] = 2080;
          *&buf[10] = v99;
          *&buf[18] = 2048;
          *&buf[20] = v97;
          *&buf[28] = 2080;
          *&buf[30] = v102;
          *&buf[38] = 2048;
          v206 = v96;
          _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v175, OS_SIGNPOST_INTERVAL_BEGIN, v98, "section_scan", "protocol conformance scan for %.*s(%p): %s(%p)", buf, 0x30u);
        }
      }
    }
  }

  else
  {
LABEL_206:
    v98 = 0;
  }

  atomic_fetch_add_explicit(&qword_1ED426490, 1uLL, memory_order_acquire);
  v103 = qword_1ED426498;
  v195 = v98;
  if (!qword_1ED426498)
  {
    goto LABEL_250;
  }

  v104 = atomic_load_explicit(qword_1ED426498, memory_order_acquire);
  if (byte_1ED4264B8 == 1)
  {
    if (v104)
    {
      v192 = v104;
      v105 = (16 * v104) | 8;
      do
      {
        v106 = v103 + v105;
        v105 -= 16;
        *buf = &v200;
        *&buf[8] = &v201;
        *&buf[16] = &v199;
        *&buf[24] = &v197;
        *&buf[32] = &Conformances;
        v206 = &v202;
        if (byte_1ED4264B8 == 1)
        {
          v107 = *(v106 - 8);
          v108 = *(v103 + v105);
          if (v107 != v108)
          {
            v109 = v107 - 4;
            do
            {
              v110 = *(v107 - 4);
              v107 -= 4;
              v109 -= 4;
            }

            while (v107 != v108);
          }
        }

        else
        {
          v111 = *(v103 + v105);
          v112 = *(v106 - 8);
          if (v111 != v112)
          {
            v113 = *(v103 + v105);
            do
            {
              v114 = *v113++;
            }

            while (v113 != v112);
          }
        }
      }

      while (v105 != 8);
      goto LABEL_251;
    }

LABEL_250:
    v192 = 0;
  }

  else
  {
    if (!v104)
    {
      goto LABEL_250;
    }

    v128 = (v103 + 8);
    v192 = v104;
    v129 = &v128[2 * v104];
    do
    {
      *buf = &v200;
      *&buf[8] = &v201;
      *&buf[16] = &v199;
      *&buf[24] = &v197;
      *&buf[32] = &Conformances;
      v206 = &v202;
      if (byte_1ED4264B8 == 1)
      {
        v131 = *v128;
        v130 = v128[1];
        if (v130 != *v128)
        {
          v132 = v130 - 1;
          do
          {
            v133 = *--v130;
          }

          while (v130 != v131);
        }
      }

      else
      {
        v134 = *v128;
        v135 = v128[1];
        if (*v128 != v135)
        {
          v136 = *v128;
          do
          {
            v137 = *v136++;
          }

          while (v136 != v135);
        }
      }

      v128 += 2;
    }

    while (v128 != v129);
LABEL_251:
    v98 = v195;
  }

  v196 = 0uLL;
  v138 = v201;
  if (!v201)
  {
    v163 = 0;
    v142 = 0;
    v139 = 0;
    goto LABEL_270;
  }

  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = v199;
  while (2)
  {
    if (v202)
    {
      v154 = 4;
      v155 = &v203;
      goto LABEL_260;
    }

    v154 = v204[0];
    if (LODWORD(v204[0]))
    {
      v155 = v203;
LABEL_260:
      v156 = v154 - 1;
      v157 = (v154 - 1) & ((v138 >> 4) ^ (v138 >> 9));
      v158 = v155[4 * v157];
      if (v158 == v138)
      {
LABEL_261:
        v159 = &v155[4 * v157];
        v160 = *(v159 + 1);
        if (v160)
        {
          if (v139)
          {
            v144 = v138;
            v145 = v140;
            v146 = v141;
            v147 = swift_getTypeName(v139, 1);
            v149 = v148;
            v150 = swift_getTypeName(v144, 1);
            swift::warning(0, "Warning: '%.*s' conforms to protocol '%s', but it also inherits conformance from '%.*s'.  Relying on a particular conformance is undefined behaviour.\n", v152, v153, v149, v147, v200 + v200[2] + 8, v151, v150);
            v141 = v146;
            v140 = v145;
            v138 = v144;
          }

          else
          {
            v196 = *(v159 + 1);
            v142 = v160;
            v139 = v138;
          }
        }
      }

      else
      {
        v161 = 1;
        while (v158 != -4096)
        {
          v162 = v157 + v161++;
          v157 = v162 & v156;
          v158 = v155[4 * v157];
          if (v158 == v138)
          {
            goto LABEL_261;
          }
        }
      }
    }

    v138 = getSuperclassForMaybeIncompleteMetadata(v138, v140, v141, v143);
    v141 = 1;
    if (v138)
    {
      continue;
    }

    break;
  }

  v163 = v140 == 255;
  v98 = v195;
LABEL_270:
  *v197 = (*v197 | v163) & 1;
  if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v164 = swift::runtime::trace::ScanLog;
    if (os_signpost_enabled(swift::runtime::trace::ScanLog))
    {
      *buf = 134217984;
      *&buf[4] = v142;
      _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v164, OS_SIGNPOST_INTERVAL_END, v98, "section_scan", "result=%p", buf, 0xCu);
    }
  }

  if (v139 == v201)
  {
LABEL_279:
    v166 = v185;
    if (v142 || !v185)
    {
      v165 = v198;
      goto LABEL_283;
    }

    goto LABEL_281;
  }

  if (v142 || (v165 = v198, (v198 & 1) == 0))
  {
    *buf = v142;
    *&buf[8] = v196;
    ConformanceState::cacheResult(&Conformances, v201, v200, buf, v192);
    goto LABEL_279;
  }

  v166 = v185;
  if (!v185)
  {
LABEL_283:
    v167 = a5;
    *a5 = v142;
    *(a5 + 8) = v196;
    goto LABEL_284;
  }

LABEL_281:
  v165 = 0;
  v167 = a5;
  *a5 = v166;
  *(a5 + 8) = v183;
  *(a5 + 16) = v184;
LABEL_284:
  *(v167 + 24) = v165;
  atomic_fetch_add_explicit(&qword_1ED426490, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  if ((v202 & 1) == 0)
  {
    __swift::__runtime::llvm::deallocate_buffer(v203, (32 * LODWORD(v204[0])));
  }
}

void ConformanceState::cacheResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, atomic_ullong *a5)
{
  v76[0] = a2;
  v76[1] = a3;
  v9 = a3;
  os_unfair_lock_lock((a1 + 24));
  v10 = *(a1 + 16);
  v11 = (v10 & 3) == 0;
  if ((v10 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v11 = 1;
  }

  v72 = a4;
  v71 = v11;
  if (v11)
  {
    v12 = 4;
  }

  else
  {
    v12 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v13 = *(a1 + 4);
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = (v14 + 2);
  }

  else
  {
    v15 = 0;
  }

  {
    __dmb(0xBu);
    if (!*a1)
    {
      v18 = (a1 + 32);
      v17 = *(a1 + 32);
      if (v17)
      {
        do
        {
          v19 = *v17;
          free(v17[1]);
          free(v17);
          v17 = v19;
        }

        while (v19);
      }

LABEL_104:
      *v18 = 0;
      goto LABEL_105;
    }

    goto LABEL_105;
  }

  v69 = v13;
  v70 = v16;
  v74 = v15;
  __src = v14 + 2;
  v67 = a2;
  v68 = v14;
  v20 = (v13 + 1);
  if ((1 << v12) / ((1 << v12) - v20) < 4)
  {
    v27 = v10;
    v28 = v69;
    v29 = v14;
    if (v14)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v65 = v9;
    v21 = v12;
    v22 = (v12 + 1);
    if (v22 >= 0x11)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 9)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = malloc_type_calloc(2 << v12, v24, 0x48DDA4AEuLL);
    if (!v25)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v26 = v15;
    v64 = a5;
    if (v24 != 1)
    {
      if (v24 == 4)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }
    }

    v27 = v24 | v25;
    *v25 = v12 + 1;
    if (v12)
    {
      v30 = ~(-2 << v12);
      v31 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v10 & 3) == 0)
      {
        v31 = 0;
      }

      v73 = v31;
      v32 = v27 & 3;
      if ((v27 & 3) != 0)
      {
        v33 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v33 = 0;
      }

      for (i = 1; !(i >> v21); ++i)
      {
        if ((v10 & 3) > 1)
        {
          if ((v10 & 3) == 2)
          {
            LODWORD(v35) = *(v73 + 2 * i);
            if (*(v73 + 2 * i))
            {
              goto LABEL_47;
            }
          }

          else
          {
            LODWORD(v35) = *(v73 + 4 * i);
            if (v35)
            {
LABEL_47:
              v36 = (v26 + 24 * (v35 - 1));
              v37 = *v36;
              v38 = v36[1];
              v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if ((v38 & 2) != 0)
              {
                if (v39)
                {
                  v39 = *v39;
                }
              }

              else if (!v39)
              {
                v39 = 0;
              }

              v77 = v37;
              v78 = v39;
              for (j = __swift::__runtime::llvm::hash_combine<swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolDescriptor<swift::InProcess> const*>(&v77, &v78); ; j = v42 + 1)
              {
                v42 = j & v30;
                if ((j & v30) != 0)
                {
                  if ((v27 & 3) > 1)
                  {
                    LODWORD(v41) = v32 == 2 ? *(v33 + 2 * v42) : *(v33 + 4 * v42);
                  }

                  else if ((v27 & 3) != 0)
                  {
                    LODWORD(v41) = *(v33 + v42);
                  }

                  else
                  {
                    v41 = (v27 >> (4 * v42)) & 0xF;
                  }

                  if (!v41)
                  {
                    break;
                  }
                }
              }

              if (v32 == 3)
              {
                *(v33 + 4 * v42) = v35;
                v26 = v74;
              }

              else
              {
                v26 = v74;
                if (v32 == 2)
                {
                  *(v33 + 2 * v42) = v35;
                }

                else
                {
                  *(v33 + v42) = v35;
                }
              }
            }
          }
        }

        else if ((v10 & 3) != 0)
        {
          LODWORD(v35) = *(v73 + i);
          if (*(v73 + i))
          {
            goto LABEL_47;
          }
        }

        else
        {
          v35 = (v10 >> (4 * i)) & 0xF;
          if (v35)
          {
            goto LABEL_47;
          }
        }
      }
    }

    atomic_store(v27, (a1 + 16));
    if (!v71)
    {
      v43 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      v26 = v74;
      *v43 = *(a1 + 32);
      v43[1] = v10 & 0xFFFFFFFFFFFFFFFCLL;
      *(a1 + 32) = v43;
    }

    v28 = v69;
    v70 = v44;
    v9 = v65;
    a5 = v64;
    v29 = v68;
    if (v68)
    {
LABEL_70:
      v45 = v29;
      if (v28 < *v29)
      {
        goto LABEL_77;
      }
    }
  }

  v46 = a5;
  v47 = v28 + (v28 >> 2);
  if (v47 <= v28 + 1)
  {
    v47 = v28 + 1;
  }

  v48 = malloc_good_size(24 * v47 + 8);
  v49 = malloc_type_malloc(v48, 0x106004055E0760FuLL);
  if (!v49)
  {
    swift::hashable_support::findHashableBaseTypeOfHashableType();
  }

  v45 = v49;
  *v49 = (v48 - 8) / 0x18;
  if (v29)
  {
    memcpy(v49 + 2, __src, 24 * v28);
    v50 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    *v50 = *(a1 + 32);
    v50[1] = v29;
    *(a1 + 32) = v50;
  }

  atomic_store(v45, (a1 + 8));
  a5 = v46;
LABEL_77:
  if (!a5)
  {
    goto LABEL_81;
  }

  atomic_fetch_add_explicit((a1 + 48), 1uLL, memory_order_acquire);
  explicit = *(a1 + 56);
  if (explicit)
  {
    explicit = atomic_load_explicit(explicit, memory_order_acquire);
  }

  atomic_fetch_add_explicit((a1 + 48), 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  if (explicit == a5)
  {
LABEL_81:
    v52 = (v45 + 24 * v28);
    v53 = *v72;
    v54 = *(v72 + 1);
    v52[1] = v67;
    v52[2] = 0;
    v52[3] = v53;
    if (v54)
    {
      v75 = v54;
      v55 = malloc_type_malloc(0x20uLL, 0x60040FAD0F902uLL);
      *v55 = v9;
      *(v55 + 8) = v75;
      *(v55 + 24) = 0;
      v52[2] = v55 | 2;
      v56 = *(a1 + 80);
      *(v55 + 24) = v56;
      v57 = v56;
      atomic_compare_exchange_strong_explicit((a1 + 80), &v57, v55, memory_order_release, memory_order_relaxed);
      if (v57 != v56)
      {
        v58 = v57;
        do
        {
          *(v55 + 24) = v57;
          atomic_compare_exchange_strong_explicit((a1 + 80), &v58, v55, memory_order_release, memory_order_relaxed);
          v59 = v58 == v57;
          v57 = v58;
        }

        while (!v59);
      }
    }

    else if (v9)
    {
      v52[2] = v9 & 0xFFFFFFFFFFFFFFFDLL;
    }

    else
    {
      v52[2] = 0;
    }

    atomic_store(v20, (a1 + 4));
    if ((v27 & 3) > 1)
    {
      if ((v27 & 3) == 2)
      {
        v60 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v27 & 3) == 0)
        {
          v60 = 0;
        }

        atomic_store(v20, (v60 + 2 * v70));
      }

      else
      {
        v61 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v27 & 3) == 0)
        {
          v61 = 0;
        }

        atomic_store(v20, (v61 + 4 * v70));
      }
    }

    else if ((v27 & 3) != 0)
    {
      atomic_store(v20, ((v27 & 0xFFFFFFFFFFFFFFFCLL) + v70));
    }

    else
    {
      atomic_store((v20 << (4 * v70)) | v27, (a1 + 16));
    }
  }

  __dmb(0xBu);
  if (!*a1)
  {
    v18 = (a1 + 32);
    v62 = *(a1 + 32);
    if (v62)
    {
      do
      {
        v63 = *v62;
        free(v62[1]);
        free(v62);
        v62 = v63;
      }

      while (v63);
    }

    goto LABEL_104;
  }

LABEL_105:
  os_unfair_lock_unlock((a1 + 24));
}

void validateDyldResults(ConformanceState &,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolDescriptor<swift::InProcess> const*,anonymous namespace::ConformanceLookupResult,swift::TargetProtocolConformanceDescriptor<swift::InProcess> const*,BOOL)::$_0::operator()(unint64_t ***a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a2 + 23) = 0;
  *a2 = 0;
  v3 = *a1;
  v4 = *(*a1 + 2);
  if (v4)
  {
    v5 = *v3;
    v6 = &(*v3)[v4];
    do
    {
      v9 = *v5;
      v10 = *(a2 + 23);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a2 + 8);
      }

      if (v10)
      {
        std::string::append(a2, ", ");
      }

      std::string::append(a2, "0x");
      if (v9)
      {
        v11 = 16;
        do
        {
          if ((v9 & 0xF) >= 0xA)
          {
            v12 = (v9 & 0xF) + 55;
          }

          else
          {
            v12 = v9 & 0xF | 0x30;
          }

          v17[v11--] = v12;
          v13 = v9 > 0xF;
          v9 >>= 4;
        }

        while (v13);
        v14 = v11 + 1;
      }

      else
      {
        v17[16] = 48;
        v14 = 16;
      }

      if ((17 - v14) > 0x16)
      {
        operator new();
      }

      v16 = 17 - v14;
      if (v14 != 17)
      {
        memcpy(__p, &v17[v14], 17 - v14);
      }

      *(__p + 17 - v14) = 0;
      if ((v16 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v16 & 0x80u) == 0)
      {
        v8 = v16;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a2, v7, v8);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

void *swift::ConcurrentReadableHashMap<anonymous namespace::ConformanceCacheEntry,swift::LazyMutex>::find<anonymous namespace::ConformanceCacheKey>(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift::__runtime::llvm::hash_combine<swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolDescriptor<swift::InProcess> const*>(a1, a1 + 1);
  v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v10 = 4;
  if ((a2 & 3) != 0 && v9)
  {
    v10 = *v9;
  }

  v11 = ~(-1 << v10);
  if ((a2 & 3) == 0)
  {
    v9 = 0;
  }

  while (1)
  {
    v13 = v8 & v11;
    if ((v8 & v11) <= 1)
    {
      v13 = 1;
    }

    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v14) = v9 + v13;
      LOBYTE(v14) = atomic_load_explicit(&v9[v13], memory_order_acquire);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = (a2 >> (4 * v13)) & 0xF;
      if (!v14)
      {
        return 0;
      }
    }

LABEL_22:
    v15 = (v14 - 1);
    if (v15 < a3)
    {
      result = (a4 + 24 * v15);
      if (*result == *a1)
      {
        v17 = result[1];
        v12 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v17 & 2) != 0)
        {
          if (v12)
          {
            v12 = *v12;
          }
        }

        else if (!v12)
        {
          v12 = 0;
        }

        if (v12 == a1[1])
        {
          return result;
        }
      }
    }

    v8 = v13 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v14) = v9 + 2 * v13;
    LOWORD(v14) = atomic_load_explicit(&v9[2 * v13], memory_order_acquire);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_22;
  }

  LODWORD(v14) = atomic_load_explicit(&v9[4 * v13], memory_order_acquire);
  if (v14)
  {
    goto LABEL_22;
  }

  return 0;
}

unint64_t __swift::__runtime::llvm::hash_combine<swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolDescriptor<swift::InProcess> const*>(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  {
    v5 = a1;
    v6 = a2;
    a1 = v5;
    a2 = v6;
  }

  v2 = *a1;
  v11 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  v7 = 0;
  *&v8[0] = v2;
  v3 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v8, &v7, v8 + 1, v9, *a2);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v8, v7, v3, v9);
}

void swift_conformsToProtocolMaybeInstantiateSuperclasses(swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolDescriptor<swift::InProcess> const*,BOOL)::$_1::operator() const(anonymous namespace::ConformanceSection const&)::{lambda(swift::TargetProtocolConformanceDescriptor<swift::InProcess> const&)#1}::operator()(uint64_t a1, char *a2)
{
  v4 = *a2;
  if (!v4)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_7;
  }

  v5 = &a2[v4 & 0xFFFFFFFFFFFFFFFELL];
  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      v6 = &a2[v4 & 0xFFFFFFFFFFFFFFFELL];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v6 = *v5;
LABEL_7:
  if (v6 != **a1)
  {
    return;
  }

  v7 = (a2 + 4);
  v8 = (*(a2 + 3) >> 3) & 7;
  if (v8 == 1)
  {
    v11 = *v7;
    v12 = (v7 + v11);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v10 = *v13;
    if (*v13)
    {
      goto LABEL_17;
    }
  }

  else if (!v8)
  {
    v9 = *v7;
    if (v9)
    {
      if ((v7 + v9))
      {
        v10 = (v7 + v9);
LABEL_17:
        v14 = 0;
        v15 = v10;
        goto LABEL_20;
      }
    }
  }

  CanonicalTypeMetadata = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(a2);
  if (CanonicalTypeMetadata)
  {
    v15 = CanonicalTypeMetadata;
    v14 = 1;
LABEL_20:
    v17 = *(a1 + 8);
    v18 = *v17;
    if (*v17)
    {
      v19 = **(a1 + 16);
      v20 = v15 == 0;
      if (v14)
      {
        if (v15 != v18)
        {
          v21 = 1;
          v22 = v15;
LABEL_33:
          SuperclassForMaybeIncompleteMetadata = getSuperclassForMaybeIncompleteMetadata(v18, 0, 0, v19 & 1);
          v25 = v27;
          if (SuperclassForMaybeIncompleteMetadata)
          {
            v18 = SuperclassForMaybeIncompleteMetadata;
            do
            {
              if (v21)
              {
                if (v15 == v18)
                {
                  goto LABEL_43;
                }

                goto LABEL_36;
              }

              getContextDescriptor(v18, &v57);
              if (v20)
              {
                v29 = 0;
                if (!v57)
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v29 = v22;
                if (!v57)
                {
                  goto LABEL_36;
                }
              }

              if (swift::equalContexts(v57, v29))
              {
                goto LABEL_43;
              }

LABEL_36:
              v18 = getSuperclassForMaybeIncompleteMetadata(v18, v25, 1, v19 & 1);
              v25 = v28;
            }

            while (v18);
          }

          v21 = 1;
          goto LABEL_46;
        }

LABEL_43:
        v21 = 0;
LABEL_44:
        v30 = 0;
        v31 = 0;
        goto LABEL_47;
      }

      getContextDescriptor(*v17, &v57);
      v24 = v57;
      if (v15)
      {
        v20 = 0;
        v23 = v15;
        v22 = v15;
        if (!v57)
        {
          goto LABEL_26;
        }

LABEL_32:
        v21 = 0;
        if (!swift::equalContexts(v24, v23))
        {
          goto LABEL_33;
        }

        goto LABEL_44;
      }

      v23 = 0;
      v20 = 1;
      v22 = 0;
      if (v57)
      {
        goto LABEL_32;
      }

LABEL_26:
      v21 = 0;
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v18 = **(a1 + 8);
  if (v18)
  {
    v19 = **(a1 + 16);
    getContextDescriptor(v18, &v57);
    v15 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v57;
    v20 = 1;
    if (v57)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_27:
  v21 = 0;
  v25 = 0;
LABEL_46:
  v18 = 0;
  v31 = v25 & 0xFFFFFFFFFFFFFF00;
  v30 = v25;
LABEL_47:
  v32 = **(a1 + 24);
  if ((v31 | v30) == 0xFF)
  {
    v33 = v21;
  }

  else
  {
    v33 = 0;
  }

  if (*v32)
  {
    v33 = 1;
  }

  *v32 = v33;
  if (v18)
  {
    v57 = 0;
    *&v58 = 0;
    WitnessTable = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(a2, v18, &v57);
    v35 = v57;
    v36 = v58;
    v37 = *(a1 + 32);
    v38 = **a1;
    v57 = WitnessTable;
    *&v58 = v35;
    *(&v58 + 1) = v36;
    ConformanceState::cacheResult(v37, v18, v38, &v57, 0);
    v41 = *(a1 + 40);
    v57 = v18;
    *&v58 = WitnessTable;
    *(&v58 + 1) = v35;
    v59 = v36;
    v43 = v41 + 8;
    v42 = *v41;
    if (*v41)
    {
      v44 = 4;
    }

    else
    {
      v44 = *(v41 + 16);
      if (!v44)
      {
        v49 = 0;
        v50 = 0;
        goto LABEL_60;
      }

      v43 = *(v41 + 8);
    }

    v45 = v44 - 1;
    v46 = v45 & ((v18 >> 4) ^ (v18 >> 9));
    v47 = (v43 + 32 * v46);
    v48 = *v47;
    if (v18 == *v47)
    {
      return;
    }

    v53 = 0;
    v54 = 1;
    while (v48 != -4096)
    {
      if (v53)
      {
        v55 = 0;
      }

      else
      {
        v55 = v48 == -8192;
      }

      if (v55)
      {
        v53 = v47;
      }

      v56 = v46 + v54++;
      v46 = v56 & v45;
      v47 = (v43 + 32 * v46);
      v48 = *v47;
      if (v18 == *v47)
      {
        return;
      }
    }

    if (v53)
    {
      v49 = v53;
    }

    else
    {
      v49 = v47;
    }

    if (v42)
    {
      v50 = 4;
    }

    else
    {
      v50 = *(v41 + 16);
    }

LABEL_60:
    v51 = v42 >> 1;
    if (4 * v51 + 4 >= 3 * v50)
    {
      v50 *= 2;
    }

    else if (v50 + ~v51 - *(v41 + 4) > v50 >> 3)
    {
LABEL_62:
      *v41 += 2;
      if (*v49 != -4096)
      {
        --*(v41 + 4);
      }

      *v49 = v18;
      v52 = v58;
      v49[3] = v59;
      *(v49 + 1) = v52;
      return;
    }

    v60 = 0;
    v49 = v60;
    goto LABEL_62;
  }
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::SmallDenseMap<swift::TargetMetadata<swift::InProcess> const*,anonymous namespace::ConformanceLookupResult,4u,__swift::__runtime::llvm::DenseMapInfo<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetMetadata<swift::InProcess> const*,anonymous namespace::ConformanceLookupResult>>,swift::TargetMetadata<swift::InProcess> const*,anonymous namespace::ConformanceLookupResult,__swift::__runtime::llvm::DenseMapInfo<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetMetadata<swift::InProcess> const*,anonymous namespace::ConformanceLookupResult>>::LookupBucketFor<swift::TargetMetadata<swift::InProcess> const*>(uint64_t result, void *a2, void *a3)
{
  v3 = result + 8;
  if (*result)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(result + 16);
    if (!v4)
    {
      *a3 = 0;
      return result;
    }

    v3 = *(result + 8);
  }

  v5 = v4 - 1;
  v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 32 * v6);
  v8 = *v7;
  if (*a2 == *v7)
  {
LABEL_6:
    *a3 = v7;
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (v3 + 32 * v6);
      v8 = *v7;
      if (*a2 == *v7)
      {
        goto LABEL_6;
      }
    }

    if (v9)
    {
      v7 = v9;
    }

    *a3 = v7;
  }

  return result;
}

unsigned int *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::SmallDenseMap<swift::TargetMetadata<swift::InProcess> const*,anonymous namespace::ConformanceLookupResult,4u,__swift::__runtime::llvm::DenseMapInfo<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetMetadata<swift::InProcess> const*,anonymous namespace::ConformanceLookupResult>>,swift::TargetMetadata<swift::InProcess> const*,anonymous namespace::ConformanceLookupResult,__swift::__runtime::llvm::DenseMapInfo<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::detail::DenseMapPair<swift::TargetMetadata<swift::InProcess> const*,anonymous namespace::ConformanceLookupResult>>::grow(unsigned int *result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v63[12] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v5 = (a2 - 1) | ((a2 - 1) >> 1);
    v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
    v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
    if ((v7 + 1) > 0x40)
    {
      a2 = v7 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v8 = *(result + 1);
    v9 = result[4];
    if (a2 > 4)
    {
      v22 = a2;
      buffer = __swift::__runtime::llvm::allocate_buffer(32 * a2, 8uLL);
      *(v4 + 1) = buffer;
      *(v4 + 2) = v22;
      v24 = *v4;
      v10 = (v8 + 32 * v9);
      *v4 = *v4 & 1;
      if ((v24 & 1) == 0)
      {
        v25 = &buffer[4 * v22];
        goto LABEL_24;
      }
    }

    else
    {
      v10 = (v8 + 32 * v9);
      *result = 1;
    }

    v25 = v4 + 34;
    buffer = v4 + 2;
LABEL_24:
    v26 = v25 - buffer - 32;
    if (v26 >= 0x20)
    {
      v30 = (v26 >> 5) + 1;
      v27 = &buffer[4 * (v30 & 0xFFFFFFFFFFFFFFELL)];
      v31 = buffer + 4;
      v32 = v30 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v31 - 4) = -4096;
        *v31 = -4096;
        v31 += 8;
        v32 -= 2;
      }

      while (v32);
      if (v30 == (v30 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_33:
        if (v9)
        {
          v33 = v8;
          do
          {
            v40 = *v33;
            if ((*v33 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              if (*v4)
              {
                v35 = 3;
                v34 = v4 + 2;
              }

              else
              {
                v34 = *(v4 + 1);
                v35 = v4[4] - 1;
              }

              v36 = v35 & ((v40 >> 4) ^ (v40 >> 9));
              v37 = &v34[8 * v36];
              v38 = *v37;
              if (v40 != *v37)
              {
                v41 = 0;
                v42 = 1;
                while (v38 != -4096)
                {
                  if (v41)
                  {
                    v43 = 0;
                  }

                  else
                  {
                    v43 = v38 == -8192;
                  }

                  if (v43)
                  {
                    v41 = v37;
                  }

                  v44 = v36 + v42++;
                  v36 = v44 & v35;
                  v37 = &v34[8 * v36];
                  v38 = *v37;
                  if (v40 == *v37)
                  {
                    goto LABEL_37;
                  }
                }

                if (v41)
                {
                  v37 = v41;
                }
              }

LABEL_37:
              *v37 = v40;
              v39 = *(v33 + 8);
              *(v37 + 3) = *(v33 + 3);
              *(v37 + 2) = v39;
              *v4 += 2;
            }

            v33 = (v33 + 32);
          }

          while (v33 != v10);
        }

        __swift::__runtime::llvm::deallocate_buffer(v8, (32 * v9));
      }
    }

    else
    {
      v27 = buffer;
    }

    do
    {
      *v27 = -4096;
      v27 += 8;
    }

    while (v27 != v25);
    goto LABEL_33;
  }

  v11 = &v60;
  if ((*(result + 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    v60 = *(result + 1);
    v61 = *(result + 1);
    v62 = *(result + 4);
    v11 = v63;
  }

  v12 = *(result + 5);
  if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v11 = v12;
    *(v11 + 1) = *(result + 3);
    v11[3] = *(result + 8);
    v11 += 4;
  }

  v13 = *(result + 9);
  if ((v13 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v11 = v13;
    v14 = *(result + 5);
    v11[3] = *(result + 12);
    *(v11 + 1) = v14;
    v11 += 4;
  }

  v15 = *(result + 13);
  if ((v15 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v11 = v15;
    v16 = *(result + 7);
    v11[3] = *(result + 16);
    *(v11 + 1) = v16;
    v11 += 4;
  }

  v17 = *result;
  if (a2 >= 5)
  {
    *result = v17 & 0xFFFFFFFE;
    v18 = a2;
    result = __swift::__runtime::llvm::allocate_buffer(32 * a2, 8uLL);
    *(v4 + 1) = result;
    *(v4 + 2) = v18;
    v17 = *v4;
  }

  *v4 = v17 & 1;
  if (v17)
  {
    v21 = v4 + 34;
    v20 = v4 + 2;
  }

  else
  {
    v19 = v4[4];
    if (!v19)
    {
      goto LABEL_61;
    }

    v20 = *(v4 + 1);
    v21 = &v20[8 * v19];
  }

  v28 = v21 - v20 - 32;
  if (v28 < 0x20)
  {
    v29 = v20;
    do
    {
LABEL_60:
      *v29 = -4096;
      v29 += 8;
    }

    while (v29 != v21);
    goto LABEL_61;
  }

  v45 = (v28 >> 5) + 1;
  v29 = &v20[8 * (v45 & 0xFFFFFFFFFFFFFFELL)];
  v46 = v20 + 8;
  v47 = v45 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *(v46 - 4) = -4096;
    *v46 = -4096;
    v46 += 8;
    v47 -= 2;
  }

  while (v47);
  if (v45 != (v45 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_60;
  }

LABEL_61:
  if (&v60 != v11)
  {
    v48 = &v60;
    do
    {
      v55 = *v48;
      if ((*v48 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v4)
        {
          v50 = 3;
          v49 = v4 + 2;
        }

        else
        {
          v49 = *(v4 + 1);
          v50 = v4[4] - 1;
        }

        v51 = v50 & ((v55 >> 4) ^ (v55 >> 9));
        v52 = &v49[8 * v51];
        v53 = *v52;
        if (v55 != *v52)
        {
          v56 = 0;
          v57 = 1;
          while (v53 != -4096)
          {
            if (v56)
            {
              v58 = 0;
            }

            else
            {
              v58 = v53 == -8192;
            }

            if (v58)
            {
              v56 = v52;
            }

            v59 = v51 + v57++;
            v51 = v59 & v50;
            v52 = &v49[8 * v51];
            v53 = *v52;
            if (v55 == *v52)
            {
              goto LABEL_65;
            }
          }

          if (v56)
          {
            v52 = v56;
          }
        }

LABEL_65:
        *v52 = v55;
        v54 = *(v48 + 1);
        *(v52 + 3) = v48[3];
        *(v52 + 2) = v54;
        *v4 += 2;
      }

      v48 += 4;
    }

    while (v48 != v11);
  }

  return result;
}

uint64_t std::__function::__func<swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(swift::TargetMetadata<swift::InProcess> const*,swift::ConformanceExecutionContext &)::$_0,std::allocator<swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(swift::TargetMetadata<swift::InProcess> const*,swift::ConformanceExecutionContext &)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD7D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(swift::TargetMetadata<swift::InProcess> const*,swift::ConformanceExecutionContext &)::$_1,std::allocator<swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(swift::TargetMetadata<swift::InProcess> const*,swift::ConformanceExecutionContext &)::$_1>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD818;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(swift::TargetMetadata<swift::InProcess> const*,swift::ConformanceExecutionContext &)::$_2,std::allocator<swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getWitnessTable(swift::TargetMetadata<swift::InProcess> const*,swift::ConformanceExecutionContext &)::$_2>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD860;
  a2[1] = v2;
  return result;
}

void ConformanceState::ConformanceState(ConformanceState *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 19) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 36) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  shared_cache_range = swift::runtime::bincompat::useLegacyProtocolConformanceReverseIteration(this);
  *(this + 88) = shared_cache_range;
  if (swift::runtime::environment::initializeToken == -1)
  {
    if (!MEMORY[0x1EEE9AC38])
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift::runtime::bincompat::checkBinCompatEnvironmentVariable();
    if (!MEMORY[0x1EEE9AC38])
    {
      goto LABEL_11;
    }
  }

  if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_SHARED_CACHE_PROTOCOL_CONFORMANCES_variable)
  {
    shared_cache_range = _dyld_swift_optimizations_version();
    if (shared_cache_range == 1)
    {
      shared_cache_range = _dyld_get_shared_cache_range();
      v3 = shared_cache_range;
      if (!shared_cache_range)
      {
        v3 = 0;
      }

      *(this + 12) = shared_cache_range;
      *(this + 13) = v3;
      if (swift::runtime::environment::initializeToken != -1)
      {
        LibPrespecializedState::LibPrespecializedState();
      }

      *(this + 113) = swift::runtime::environment::SWIFT_DEBUG_VALIDATE_SHARED_CACHE_PROTOCOL_CONFORMANCES_variable;
    }

    else
    {
      *(this + 12) = 0;
      *(this + 13) = 0;
    }
  }

LABEL_11:
  swift::initializeProtocolConformanceLookup(shared_cache_range);
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<unsigned int>(char const*,unsigned int)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<unsigned int>(char const*,unsigned int)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = *result;
      v4 = *(result + 2);
      v5 = 0;
      swift_asprintf(&v5, v3, a3, v4);
      return v5;
    }

    free(a3);
    return 0;
  }

  if (a2 == 2)
  {
    operator new();
  }

  if (result)
  {
    MEMORY[0x1865C92E0](result, 0x1050C40DB1D6C16, a3);
    return 0;
  }

  return result;
}

uint64_t swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::tryIncrementSlow(swift *a1, uint64_t a2, const char *a3, char *a4)
{
  if (a2 == -1)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift::swift_abortRetainOverflow(a1, a2, a3, a4);
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASP            X4, X5, X4, X5, [X0] }

  if ((_X4 & 0x100000000) != 0)
  {
    return 0;
  }

  _X3 = 0;
  while (1)
  {
    _X6 = _X4 + 0x200000000;
    if (_X4 + 0x200000000 < 0)
    {
      break;
    }

    v15 = _X3 | (v4 << 32);
    _X3 = v15;
    __asm { CASP            X2, X3, X6, X7, [X0] }

    v5 = _X2 == _X4;
    if (_X2 != _X4)
    {
      v4 = HIDWORD(v15);
      _X4 = _X2;
      if ((_X2 & 0x100000000) == 0)
      {
        continue;
      }
    }

    return v5;
  }

  if (_X4 == -1)
  {
    return 1;
  }

  return swift::RefCounts<swift::SideTableRefCountBits>::tryIncrementSlow((8 * a2 + 16), _X4, (_X3 | (v4 << 32)), _X3);
}

uint64_t swift::RefCounts<swift::SideTableRefCountBits>::tryIncrementSlow(swift *a1, uint64_t a2, const char *a3, char *a4)
{
  if (a2 != -1)
  {
    swift::swift_abortRetainOverflow(a1, a2, a3, a4);
  }

  return 1;
}

uint64_t swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::tryIncrementNonAtomicSlow(swift *a1, uint64_t a2, const char *a3, char *a4)
{
  if (a2 == -1)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift::swift_abortRetainOverflow(a1, a2, a3, a4);
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASP            X4, X5, X4, X5, [X0] }

  if ((_X4 & 0x100000000) != 0)
  {
    return 0;
  }

  _X2 = _X4 + 0x200000000;
  if (_X4 + 0x200000000 >= 0)
  {
    v12 = *(8 * a2 + 0x10);
    do
    {
      _X7 = *(8 * a2 + 0x18);
      __asm { CASP            X6, X7, X2, X3, [X0] }

      _ZF = _X6 == v12;
      v12 = _X6;
    }

    while (!_ZF);
    return 1;
  }

  if (_X4 == -1)
  {
    return 1;
  }

  return swift::RefCounts<swift::SideTableRefCountBits>::tryIncrementSlow((8 * a2 + 16), _X4, 0, a4);
}

unint64_t swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementUnownedSlow(atomic_ullong *a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = a2;
  _X22 = *a1;
  if ((*a1 & 0x8000000000000000) == 0 || _X22 == 0xFFFFFFFFLL)
  {
    result = swift_slowAlloc(0x20, 0xFuLL);
    *result = a1 - 1;
    while (1)
    {
      v8 = *(result + 16);
      do
      {
        _X5 = *(result + 24);
        __asm { CASP            X4, X5, X22, X23, [X10] }

        _ZF = _X4 == v8;
        v8 = _X4;
      }

      while (!_ZF);
      v14 = _X22;
      atomic_compare_exchange_strong_explicit(a1, &v14, (result >> 3) | 0xC000000000000000, memory_order_release, memory_order_relaxed);
      if (v14 == _X22)
      {
        goto LABEL_13;
      }

      _X22 = v14;
      if (v14 < 0)
      {
        _X22 = v14;
        if (v14 != 0xFFFFFFFFLL)
        {
          break;
        }
      }
    }

    result;
    result = 8 * v14;
    if (!(8 * v14))
    {
LABEL_28:
      swift::swift_abortUnownedRetainOverflow(result, a2, a3, a4);
    }
  }

  else
  {
    result = 8 * _X22;
    if (!(8 * _X22))
    {
      goto LABEL_28;
    }
  }

LABEL_13:
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  if ((_X2 & 0x8000000000000000) == 0 || _X2 != 0xFFFFFFFFLL)
  {
    v18 = v4 + (_X2 >> 1);
    v19 = 2 * (v4 + (_X2 >> 1));
    _ZF = v19 != -2 && v19 >> 1 == v18;
    if (!_ZF)
    {
LABEL_27:
      swift::RefCounts<swift::SideTableRefCountBits>::incrementUnownedSlow(result, a2, _X2, _X3);
    }

    LODWORD(_X5) = 0;
    while (1)
    {
      _X6 = _X2 & 0xFFFFFFFF00000001 | (2 * (v19 >> 1));
      _X3 = _X5 | (v18 << 32);
      _X5 = _X3;
      __asm { CASP            X4, X5, X6, X7, [X8] }

      if (_X4 == _X2)
      {
        break;
      }

      v18 = HIDWORD(_X3);
      v19 = 2 * (v4 + (_X4 >> 1));
      v24 = v19 != -2 && v19 >> 1 == v4 + (_X4 >> 1);
      _X2 = _X4;
      if (!v24)
      {
        goto LABEL_27;
      }
    }
  }

  return result;
}

unint64_t swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::allocateSideTable(atomic_ullong *a1, char a2)
{
  _X20 = *a1;
  if (*a1 < 0 && _X20 != 0xFFFFFFFFLL)
  {
    return 8 * _X20;
  }

  if ((_X20 & 0x100000000) == 0 || (a2 & 1) == 0)
  {
    v4 = a1 - 1;
    result = swift_slowAlloc(0x20, 0xFuLL);
    *(result + 16) = 0;
    *result = v4;
    *(result + 24) = 0;
    while ((_X20 & 0x100000000) == 0 || (a2 & 1) == 0)
    {
      v7 = *(result + 16);
      do
      {
        _X5 = *(result + 24);
        __asm { CASP            X4, X5, X20, X21, [X10] }

        _ZF = _X4 == v7;
        v7 = _X4;
      }

      while (!_ZF);
      v14 = _X20;
      atomic_compare_exchange_strong_explicit(a1, &v14, (result >> 3) | 0xC000000000000000, memory_order_release, memory_order_relaxed);
      if (v14 == _X20)
      {
        return result;
      }

      _X20 = v14;
      if (v14 < 0)
      {
        _X20 = v14;
        if (v14 != 0xFFFFFFFFLL)
        {
          v15 = 8 * v14;
          result;
          return v15;
        }
      }
    }
  }

  return 0;
}

atomic_ullong *swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == -1)
  {
    return a1 - 1;
  }

  if (a2 < 0)
  {
    _X2 = 0;
    v9 = (8 * a2 + 16);
    _X3 = 0;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    if (a3 != 1 && _X2 < 0)
    {
      v3 = 0xFFFFFFFFLL;
      if (_X2 == 0xFFFFFFFFLL)
      {
        return a1 - 1;
      }
    }

    LODWORD(_X5) = 0;
    v17 = a3 << 33;
    _X6 = (a3 << 33) + _X2;
    if (_X6 < 0)
    {
      _X4 = _X2;
      if (_X2 == -1)
      {
        return a1 - 1;
      }

      goto LABEL_32;
    }

    while (1)
    {
      _X3 = _X5 | (v4 << 32);
      _X5 = _X3;
      __asm { CASP            X4, X5, X6, X7, [X8] }

      if (_X4 == _X2)
      {
        break;
      }

      v3 = HIDWORD(_X3);
      v4 = HIDWORD(_X3);
      _X2 = _X4;
      _X6 = v17 + _X4;
      if (v17 + _X4 < 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    _X20 = *a1;
    if ((*a1 & 0x8000000000000000) == 0 || _X20 == 0xFFFFFFFFLL)
    {
      v20 = a1 - 1;
      v21 = a1;
      v7 = swift_slowAlloc(0x20, 0xFuLL);
      a1 = v21;
      *v7 = v20;
      v3 = 0xFFFFFFFFLL;
      while (1)
      {
        v22 = *(v7 + 16);
        do
        {
          _X5 = *(v7 + 24);
          __asm { CASP            X4, X5, X20, X21, [X11] }

          _ZF = _X4 == v22;
          v22 = _X4;
        }

        while (!_ZF);
        v4 = _X20;
        atomic_compare_exchange_strong_explicit(v21, &v4, (v7 >> 3) | 0xC000000000000000, memory_order_release, memory_order_relaxed);
        if (v4 == _X20)
        {
          break;
        }

        _X20 = v4;
        if ((v4 & 0x8000000000000000) != 0)
        {
          _X20 = v4;
          if (v4 != 0xFFFFFFFFLL)
          {
            v25 = 8 * v4;
            v7;
            a1 = v21;
            v7 = v25;
            break;
          }
        }
      }
    }

    else
    {
      v7 = 8 * _X20;
    }

    _X2 = 0;
    v9 = (v7 + 16);
    _X3 = 0;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    if (a3 == 1 || (_X2 & 0x8000000000000000) == 0 || (v3 = 0xFFFFFFFFLL, _X2 != 0xFFFFFFFFLL))
    {
      LODWORD(_X5) = 0;
      v28 = a3 << 33;
      _X6 = (a3 << 33) + _X2;
      if (_X6 >= 0)
      {
        while (1)
        {
          _X3 = _X5 | (v4 << 32);
          _X5 = _X3;
          __asm { CASP            X4, X5, X6, X7, [X8] }

          if (_X4 == _X2)
          {
            return a1 - 1;
          }

          v3 = HIDWORD(_X3);
          v4 = HIDWORD(_X3);
          _X2 = _X4;
          _X6 = v28 + _X4;
          if (v28 + _X4 < 0)
          {
            goto LABEL_31;
          }
        }
      }

      _X4 = _X2;
LABEL_31:
      if (_X4 != -1)
      {
LABEL_32:
        v31 = a1;
        swift::RefCounts<swift::SideTableRefCountBits>::incrementSlow(v9, _X4, (_X5 | (v3 << 32)), _X3);
        a1 = v31;
      }
    }
  }

  return a1 - 1;
}

uint64_t swift::RefCounts<swift::SideTableRefCountBits>::incrementSlow(swift *a1, uint64_t a2, const char *a3, char *a4)
{
  if (a2 != -1)
  {
    swift::swift_abortRetainOverflow(a1, a2, a3, a4);
  }

  return *(a1 - 2);
}

atomic_ullong *swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementNonAtomicSlow(atomic_ullong *result, uint64_t a2, uint64_t a3)
{
  if (a2 == -1)
  {
    return result;
  }

  if (a2 < 0)
  {
    _X2 = 0;
    result = (8 * a2 + 16);
    _X3 = 0;
    __asm { CASP            X2, X3, X2, X3, [X0] }

    if (a3 != 1 && _X2 < 0)
    {
      v3 = 0xFFFFFFFFLL;
      if (_X2 == 0xFFFFFFFFLL)
      {
        return result;
      }
    }

    LODWORD(_X5) = 0;
    v16 = a3 << 33;
    _X6 = (a3 << 33) + _X2;
    if (_X6 < 0)
    {
      _X4 = _X2;
      if (_X2 == -1)
      {
        return result;
      }

      goto LABEL_33;
    }

    while (1)
    {
      _X3 = _X5 | (v4 << 32);
      _X5 = _X3;
      __asm { CASP            X4, X5, X6, X7, [X0] }

      if (_X4 == _X2)
      {
        break;
      }

      v3 = HIDWORD(_X3);
      v4 = HIDWORD(_X3);
      _X2 = _X4;
      _X6 = v16 + _X4;
      if (v16 + _X4 < 0)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    _X20 = *result;
    if ((*result & 0x8000000000000000) == 0 || (v3 = 0xFFFFFFFFLL, _X20 == 0xFFFFFFFFLL))
    {
      v19 = result - 1;
      v20 = result;
      v7 = swift_slowAlloc(0x20, 0xFuLL);
      *v7 = v19;
      v3 = (v7 >> 3) | 0xC000000000000000;
      v4 = 0xFFFFFFFFLL;
      while (1)
      {
        v21 = *(v7 + 16);
        do
        {
          _X5 = *(v7 + 24);
          __asm { CASP            X4, X5, X20, X21, [X11] }

          _ZF = _X4 == v21;
          v21 = _X4;
        }

        while (!_ZF);
        v24 = _X20;
        atomic_compare_exchange_strong_explicit(v20, &v24, v3, memory_order_release, memory_order_relaxed);
        if (v24 == _X20)
        {
          break;
        }

        _X20 = v24;
        if (v24 < 0)
        {
          _X20 = v24;
          if (v24 != 0xFFFFFFFFLL)
          {
            v25 = 8 * v24;
            v7;
            v7 = v25;
            break;
          }
        }
      }
    }

    else
    {
      v7 = 8 * _X20;
    }

    _X2 = 0;
    result = (v7 + 16);
    _X3 = 0;
    __asm { CASP            X2, X3, X2, X3, [X0] }

    if (a3 == 1 || (_X2 & 0x8000000000000000) == 0 || (v3 = 0xFFFFFFFFLL, _X2 != 0xFFFFFFFFLL))
    {
      LODWORD(_X5) = 0;
      v28 = a3 << 33;
      _X6 = (a3 << 33) + _X2;
      if (_X6 >= 0)
      {
        while (1)
        {
          _X3 = _X5 | (v4 << 32);
          _X5 = _X3;
          __asm { CASP            X4, X5, X6, X7, [X0] }

          if (_X4 == _X2)
          {
            return result;
          }

          v3 = HIDWORD(_X3);
          v4 = HIDWORD(_X3);
          _X2 = _X4;
          _X6 = v28 + _X4;
          if (v28 + _X4 < 0)
          {
            goto LABEL_32;
          }
        }
      }

      _X4 = _X2;
LABEL_32:
      if (_X4 != -1)
      {
LABEL_33:

        return swift::RefCounts<swift::SideTableRefCountBits>::incrementSlow(result, _X4, (_X5 | (v3 << 32)), _X3);
      }
    }
  }

  return result;
}

swift *swift::RefCounts<swift::SideTableRefCountBits>::incrementNonAtomicSlow(swift *result, uint64_t a2, const char *a3, char *a4)
{
  if (a2 != -1)
  {
    swift::swift_abortRetainOverflow(result, a2, a3, a4);
  }

  return result;
}

unint64_t swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::formWeakReference(atomic_ullong *a1, uint64_t a2)
{
  _X20 = *a1;
  if ((*a1 & 0x8000000000000000) == 0 || _X20 == 0xFFFFFFFFLL)
  {
    if ((_X20 & 0x100000000) == 0)
    {
      result = swift_slowAlloc(0x20, 0xFuLL);
      *(result + 16) = 0;
      *result = a1 - 1;
      *(result + 24) = 0;
      while ((_X20 & 0x100000000) == 0)
      {
        v19 = *(result + 16);
        do
        {
          _X5 = *(result + 24);
          __asm { CASP            X4, X5, X20, X21, [X8] }

          _ZF = _X4 == v19;
          v19 = _X4;
        }

        while (!_ZF);
        v22 = _X20;
        atomic_compare_exchange_strong_explicit(a1, &v22, (result >> 3) | 0xC000000000000000, memory_order_release, memory_order_relaxed);
        if (v22 == _X20)
        {
          goto LABEL_4;
        }

        _X20 = v22;
        if (v22 < 0)
        {
          _X20 = v22;
          if (v22 != 0xFFFFFFFFLL)
          {
            result;
            result = 8 * v22;
            if (8 * v22)
            {
              goto LABEL_4;
            }

            return result;
          }
        }
      }
    }

    return 0;
  }

  result = 8 * _X20;
  if (!(8 * _X20))
  {
    return result;
  }

LABEL_4:
  _X2 = 0;
  v6 = result + 16;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  if ((_X2 & 0x100000000) != 0)
  {
    return 0;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  _X4 = _X2;
  while (1)
  {
    v17 = _X3 | (v6 << 32);
    _X3 = v17;
    __asm { CASP            X2, X3, X4, X5, [X8] }

    if (_X2 == _X4)
    {
      break;
    }

    v6 = HIDWORD(v17);
    _X4 = _X2;
    if (v17 == -1)
    {
      swift::swift_abortWeakRetainOverflow(result, a2, _X2, v17);
    }
  }

  return result;
}

uint64_t _swift_stdlib_immortalize(uint64_t result)
{
  v1 = *(result + 8);
  if ((~v1 & 0x80000000FFFFFFFFLL) != 0)
  {
    v2 = *(result + 8);
    atomic_compare_exchange_strong_explicit((result + 8), &v2, v1 | 0x80000000FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
    if (v2 != v1)
    {
      v3 = v2;
      do
      {
        atomic_compare_exchange_strong_explicit((result + 8), &v3, v2 | 0x80000000FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
        v4 = v3 == v2;
        v2 = v3;
      }

      while (!v4);
    }
  }

  return result;
}

char *swift_reflectionMirror_normalizedType(uint64_t *a1, void *a2, char *a3)
{
  v13 = a2;
  v11 = v5;
  v12 = result;
  if (a2)
  {
    v12 = a2;
    result = a2;
  }

  v10[0] = &v12;
  v10[1] = &v11;
  v10[2] = &v8;
  v9[0] = &v13;
  v9[1] = &v11;
  v9[2] = v10;
  v6 = *result;
  if (*result > 0x7FFuLL)
  {
    LODWORD(v6) = 0;
  }

  if (v6 <= 767)
  {
    if (v6 && v6 != 515)
    {
      return result;
    }

LABEL_13:
    if (a2)
    {
      return result;
    }

    for (i = swift::_swift_getClass(*v5, v5); (*(i + 32) & 2) != 0; i = *(i + 1))
    {
      if (*(i + 8))
      {
        break;
      }
    }

LABEL_29:
    v13 = i;
    return *v10[0];
  }

  if (v6 > 772)
  {
    if (v6 != 773)
    {
      if ((v6 - 1280) < 2 || v6 == 1024)
      {
        swift_reflectionMirror_normalizedType_cold_1();
      }

      return result;
    }

    goto LABEL_13;
  }

  if (v6 != 768)
  {
    return result;
  }

  if (result == &unk_1EEEAC358)
  {
    result = &unk_1EEEAC358;
    if (a2)
    {
      return result;
    }

    for (i = swift::_swift_getClass(*v5, v5); (*(i + 32) & 2) != 0; i = *(i + 1))
    {
      if (*(i + 8))
      {
        break;
      }
    }

    goto LABEL_29;
  }

  if (result == &unk_1EEEAC318)
  {
    result = &unk_1EEEAC318;
    if ((***v5 - 2048) <= 0xFFFFFFFFFFFFF800)
    {
      return _ZZN12_GLOBAL__N_14callIZ37swift_reflectionMirror_normalizedTypeE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v9, v5);
    }
  }

  return result;
}

uint64_t swift_getMetadataKind(void *a1)
{
  if (*a1 <= 0x7FFuLL)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t swift_reflectionMirror_count(uint64_t *a1, objc_class *a2, char *a3)
{
  i = a2;
  v30 = a2;
  v28 = v5;
  v29 = v4;
  if (i)
  {
    v29 = i;
    v4 = i;
  }

  v6 = 0;
  v27[0] = &v29;
  v27[1] = &v28;
  v27[2] = &v22;
  v26[0] = &v30;
  v26[1] = &v28;
  v26[2] = v27;
  v7 = *v4;
  if (*v4 > 0x7FF)
  {
    LODWORD(v7) = 0;
  }

  if (v7 <= 514)
  {
    if ((v7 - 513) < 2)
    {
      v23 = &unk_1EEEADA18;
      v24 = v4;
      v25 = v5;
      if (v4[1])
      {
        v11 = v4[1];
      }

      else
      {
        v11 = 0;
      }

      v6 = 0;
      v12 = *(v11 + 16);
      if (v12 && v12 != -16 - v11 && v5)
      {
        v13 = (*(*(v4 - 1) + 88))(v5, v4);
        return v32 != 0;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_23;
      }

      if (v7 == 512)
      {
        v8 = v4[1];
        v9 = v8 ? v4[1] : 0;
        v6 = 0;
        v17 = *(v9 + 16);
        if (v17)
        {
          if (v17 != -16 - v9)
          {
            if (v8)
            {
              v18 = v4[1];
            }

            else
            {
              v18 = 0;
            }

            return *(v18 + 20);
          }
        }
      }
    }
  }

  else
  {
    if (v7 <= 768)
    {
      if (v7 != 515)
      {
        if (v7 != 768)
        {
          return v6;
        }

        if (v4 != &unk_1EEEAC358)
        {
          if (v4 == &unk_1EEEAC318 && (***v5 - 2048) <= 0xFFFFFFFFFFFFF800)
          {
            return _ZZN12_GLOBAL__N_14callIZ28swift_reflectionMirror_countE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v26, v5);
          }

          return 0;
        }

        if (!i)
        {
          for (i = swift::_swift_getClass(*v5, v5); (*(i + 32) & 2) != 0; i = *(i + 1))
          {
            if (*(i + 8))
            {
              break;
            }
          }

          v30 = i;
        }

        v14 = *i;
        if (*i > 0x7FFuLL)
        {
          LODWORD(v14) = 0;
        }

        if (v14)
        {
          if (v14 != 773)
          {
            return 0;
          }

          i = *(i + 1);
          if (!i)
          {
            return 0;
          }
        }

        if ((*(i + 32) & 2) == 0)
        {
          return 0;
        }

        goto LABEL_57;
      }

LABEL_23:
      if (!i)
      {
        for (i = swift::_swift_getClass(*v5, v5); (*(i + 32) & 2) != 0; i = *(i + 1))
        {
          if (*(i + 8))
          {
            break;
          }
        }

        v30 = i;
      }

      v10 = *i;
      if (*i > 0x7FFuLL)
      {
        LODWORD(v10) = 0;
      }

      if (v10)
      {
        if (v10 != 773)
        {
          return 0;
        }

        i = *(i + 1);
        if (!i)
        {
          return 0;
        }
      }

      if ((*(i + 32) & 2) == 0)
      {
        return 0;
      }

LABEL_57:
      v15 = *(*v27[0] + 64);
      if (v15)
      {
        v16 = *(*v27[0] + 64);
      }

      else
      {
        v16 = 0;
      }

      v6 = 0;
      v19 = *(v16 + 16);
      if (v19 && v19 != -16 - v16)
      {
        if (v15)
        {
          v20 = *(*v27[0] + 64);
        }

        else
        {
          v20 = 0;
        }

        return *(v20 + 36);
      }

      return v6;
    }

    if (v7 > 772)
    {
      if (v7 != 773)
      {
        if ((v7 - 1280) < 2 || v7 == 1024)
        {
          swift_reflectionMirror_normalizedType_cold_1();
        }

        return v6;
      }

      goto LABEL_23;
    }

    if (v7 == 769)
    {
      return v4[1];
    }
  }

  return v6;
}

uint64_t swift_reflectionMirror_recursiveCount(char *a1)
{
  i = a1;
  v27 = a1;
  v25 = v3;
  v26 = v2;
  if (i)
  {
    v26 = i;
    v2 = i;
  }

  v4 = 0;
  v22 = &v26;
  v23 = &v25;
  v24 = &v17;
  v21[0] = &v27;
  v21[1] = &v25;
  v21[2] = &v22;
  v5 = *v2;
  if (*v2 > 0x7FF)
  {
    LODWORD(v5) = 0;
  }

  if (v5 <= 514)
  {
    if ((v5 - 513) < 2)
    {
      v18 = &unk_1EEEADA18;
      v19 = v2;
      v20 = v3;
      if (v2[1])
      {
        v10 = v2[1];
      }

      else
      {
        v10 = 0;
      }

      v4 = 0;
      v11 = *(v10 + 16);
      if (v11 && v11 != -16 - v10 && v3)
      {
        v12 = (*(*(v2 - 1) + 88))(v3, v2);
        return v29 != 0;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_23;
      }

      if (v5 == 512)
      {
        v6 = v2[1];
        v7 = v6 ? v2[1] : 0;
        v4 = 0;
        v14 = *(v7 + 16);
        if (v14)
        {
          if (v14 != -16 - v7)
          {
            if (v6)
            {
              v15 = v2[1];
            }

            else
            {
              v15 = 0;
            }

            return *(v15 + 20);
          }
        }
      }
    }
  }

  else
  {
    if (v5 <= 768)
    {
      if (v5 != 515)
      {
        if (v5 != 768)
        {
          return v4;
        }

        if (v2 != &unk_1EEEAC358)
        {
          if (v2 != &unk_1EEEAC318 || (***v3 - 2048) > 0xFFFFFFFFFFFFF800)
          {
            return 0;
          }

          return _ZZN12_GLOBAL__N_14callIZ37swift_reflectionMirror_recursiveCountE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v21, v3);
        }

        if (!i)
        {
          for (i = swift::_swift_getClass(*v3, v3); (*(i + 32) & 2) != 0; i = *(i + 1))
          {
            if (*(i + 8))
            {
              break;
            }
          }

          v27 = i;
        }

        v13 = *i;
        if (*i > 0x7FFuLL)
        {
          LODWORD(v13) = 0;
        }

        if (v13)
        {
          if (v13 != 773)
          {
            return 0;
          }

          i = *(i + 1);
          if (!i)
          {
            return 0;
          }
        }

        if ((*(i + 32) & 2) == 0)
        {
          return 0;
        }

LABEL_57:
        v28[0] = &unk_1EEEADAF8;
        v28[1] = *v22;
        v29 = *v23;
      }

LABEL_23:
      if (!i)
      {
        for (i = swift::_swift_getClass(*v3, v3); (*(i + 32) & 2) != 0; i = *(i + 1))
        {
          if (*(i + 8))
          {
            break;
          }
        }

        v27 = i;
      }

      v9 = *i;
      if (*i > 0x7FFuLL)
      {
        LODWORD(v9) = 0;
      }

      if (v9)
      {
        if (v9 != 773)
        {
          return 0;
        }

        i = *(i + 1);
        if (!i)
        {
          return 0;
        }
      }

      if ((*(i + 32) & 2) == 0)
      {
        return 0;
      }

      goto LABEL_57;
    }

    if (v5 > 772)
    {
      if (v5 != 773)
      {
        if ((v5 - 1280) < 2 || v5 == 1024)
        {
          swift_reflectionMirror_normalizedType_cold_1();
        }

        return v4;
      }

      goto LABEL_23;
    }

    if (v5 == 769)
    {
      return v2[1];
    }
  }

  return v4;
}

uint64_t swift_reflectionMirror_recursiveChildMetadata(char *a1, const char *a2, char **a3)
{
  v3 = a1;
  v17 = a3;
  v18[0] = a2;
  v15 = v18;
  v16 = &v17;
  v23 = a1;
  v21 = v5;
  v22 = v4;
  if (v3)
  {
    v22 = v3;
  }

  else
  {
    v3 = v4;
  }

  v20[0] = &v22;
  v20[1] = &v21;
  v20[2] = &v15;
  v19[0] = &v23;
  v19[1] = &v21;
  v19[2] = v20;
  v6 = *v3;
  if (*v3 > 0x7FFuLL)
  {
    LODWORD(v6) = 0;
  }

  if (v6 > 514)
  {
    if (v6 > 768)
    {
      if (v6 >= 773)
      {
        if (v6 > 773)
        {
          if ((v6 - 1280) < 2)
          {
            goto LABEL_13;
          }

          if (v6 != 774)
          {
            if (v6 == 1024)
            {
LABEL_13:
              swift_reflectionMirror_normalizedType_cold_1();
            }

LABEL_32:
            swift_reflectionMirror_recursiveChildMetadata_cold_4();
          }

LABEL_31:
          swift_reflectionMirror_recursiveChildMetadata_cold_2();
        }

        return _ZZN12_GLOBAL__N_14callIZ45swift_reflectionMirror_recursiveChildMetadataE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v19, v5);
      }

      if (v6 != 769)
      {
        if (v6 != 772)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v24[0] = &unk_1EEEAD8A8;
      v24[1] = v3;
      v25 = v5;
      v12 = *v16;
      *(*v16 + 16) = (*&v14 & 0xFF0000) == 0;
      v13 = (v14 >> 8) & 1;
      goto LABEL_27;
    }

    if (v6 != 515)
    {
      if (v6 != 768)
      {
        if (v6 == 516)
        {
          swift_reflectionMirror_recursiveChildMetadata_cold_3();
        }

        goto LABEL_32;
      }

      if (v3 != &unk_1EEEAC358 && (v3 != &unk_1EEEAC318 || (***v5 - 2048) > 0xFFFFFFFFFFFFF800))
      {
        goto LABEL_32;
      }
    }

    return _ZZN12_GLOBAL__N_14callIZ45swift_reflectionMirror_recursiveChildMetadataE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v19, v5);
  }

  if ((v6 - 513) < 2)
  {
    result = 0;
    *(v17 + 8) = 1;
    return result;
  }

  if (!v6)
  {
    return _ZZN12_GLOBAL__N_14callIZ45swift_reflectionMirror_recursiveChildMetadataE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v19, v5);
  }

  if (v6 != 512)
  {
    goto LABEL_32;
  }

  v18[1] = &unk_1EEEAD918;
  v18[2] = v3;
  v18[3] = v5;
  v7 = v17;
  result = v25;
  v9 = v26;
  v10 = v26 | (v27 << 16);
  *v7 = v24[0];
  v7[1] = 0;
  v11 = v10 < 0x10000;
  v12 = *v16;
  *(*v16 + 16) = v11;
  v13 = (v9 >> 8) & 1;
LABEL_27:
  *(v12 + 17) = v13;
  return result;
}

uint64_t (**swift_reflectionMirror_recursiveChildOffset(swift *a1, unint64_t a2))()
{
  Class = a1;
  if (Class)
  {
    v6 = Class;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  v8 = *v6;
  if (*v6 > 0x7FF)
  {
    LODWORD(v8) = 0;
  }

  if (v8 <= 514)
  {
    result = 0;
    if ((v8 - 513) < 2)
    {
      return result;
    }

    if (!v8)
    {
      goto LABEL_29;
    }

    if (v8 != 512)
    {
      goto LABEL_84;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v10 = v6[1];
      if (v10)
      {
        if (*(v10 + 5) >= a2)
        {
          v11 = v6[1];
LABEL_51:
          v17 = *(v11 + 6);
          v18 = &v6[v17];
          if (v17)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          return *(v19 + a2);
        }
      }

      else if (MEMORY[0x14] >= a2)
      {
        v11 = 0;
        goto LABEL_51;
      }
    }

    swift_reflectionMirror_recursiveChildOffset_cold_6();
  }

  if (v8 <= 768)
  {
    if (v8 != 515)
    {
      if (v8 != 768)
      {
        if (v8 == 516)
        {
          swift_reflectionMirror_recursiveChildOffset_cold_7();
        }

        goto LABEL_84;
      }

      v12 = &type metadata for Builtin.UnknownObject;
      if (v6 == &unk_1EEEAC358)
      {
        if (!Class)
        {
          v16 = v5;
          Class = swift::_swift_getClass(*v5, v5);
          if ((*(Class + 32) & 2) != 0)
          {
            v5 = v16;
            do
            {
              if (*(Class + 8))
              {
                break;
              }

              Class = *(Class + 1);
            }

            while ((*(Class + 32) & 2) != 0);
          }

          else
          {
            v5 = v16;
          }
        }

        v21 = *Class;
        if (*Class > 0x7FFuLL)
        {
          LODWORD(v21) = 0;
        }

        if (v21 && (v21 != 773 || (Class = *(Class + 1)) == 0) || (*(Class + 32) & 2) == 0)
        {
          swift_reflectionMirror_recursiveChildOffset_cold_2();
        }
      }

      else
      {
        v12 = &type metadata for Builtin.NativeObject;
        if (v6 != &unk_1EEEAC318 || (***v5 - 2048) > 0xFFFFFFFFFFFFF800)
        {
          goto LABEL_84;
        }

        if (!Class)
        {
          v13 = v5;
          Class = swift::_swift_getClass(*v5, v5);
          if ((*(Class + 32) & 2) != 0)
          {
            v5 = v13;
            do
            {
              if (*(Class + 8))
              {
                break;
              }

              Class = *(Class + 1);
            }

            while ((*(Class + 32) & 2) != 0);
          }

          else
          {
            v5 = v13;
          }
        }

        v20 = *Class;
        if (*Class > 0x7FFuLL)
        {
          LODWORD(v20) = 0;
        }

        if (v20 && (v20 != 773 || (Class = *(Class + 1)) == 0) || (*(Class + 32) & 2) == 0)
        {
          swift_reflectionMirror_recursiveChildOffset_cold_2();
        }
      }

      v22 = &unk_1EEEADAF8;
      v23 = v12 + 1;
      goto LABEL_75;
    }

LABEL_29:
    if (!Class)
    {
      v14 = v5;
      Class = swift::_swift_getClass(*v5, v5);
      if ((*(Class + 32) & 2) != 0)
      {
        v5 = v14;
        do
        {
          if (*(Class + 8))
          {
            break;
          }

          Class = *(Class + 1);
        }

        while ((*(Class + 32) & 2) != 0);
      }

      else
      {
        v5 = v14;
      }
    }

    v15 = *Class;
    if (*Class > 0x7FFuLL)
    {
      LODWORD(v15) = 0;
    }

    if (v15 && (v15 != 773 || (Class = *(Class + 1)) == 0) || (*(Class + 32) & 2) == 0)
    {
      swift_reflectionMirror_recursiveChildOffset_cold_2();
    }

    v22 = &unk_1EEEADAF8;
    v23 = v7;
LABEL_75:
    v24 = v5;
  }

  if (v8 >= 773)
  {
    if (v8 > 773)
    {
      if ((v8 - 1280) < 2)
      {
        goto LABEL_13;
      }

      if (v8 != 774)
      {
        if (v8 == 1024)
        {
LABEL_13:
          swift_reflectionMirror_normalizedType_cold_1();
        }

LABEL_84:
        swift_reflectionMirror_recursiveChildMetadata_cold_4();
      }

LABEL_83:
      swift_reflectionMirror_recursiveChildMetadata_cold_2();
    }

    goto LABEL_29;
  }

  if (v8 != 769)
  {
    if (v8 != 772)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if ((a2 & 0x8000000000000000) != 0 || v6[1] < a2)
  {
    swift_reflectionMirror_recursiveChildOffset_cold_6();
  }

  return v6[2 * a2 + 4];
}

double swift_reflectionMirror_subscript@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, char **a4@<X3>, void (__cdecl **a5)(void *)@<X4>, char *a6@<X5>, _OWORD *a7@<X8>)
{
  v7 = a2;
  v27 = a4;
  v28 = a3;
  v25[0] = &v28;
  v25[1] = &v27;
  v25[2] = &v26;
  v26 = a5;
  v36 = a2;
  v35 = v9;
  v34 = v10;
  if (v7)
  {
    v35 = v7;
  }

  else
  {
    v7 = v9;
  }

  v33[0] = &v35;
  v33[1] = &v34;
  v33[2] = v25;
  v32[0] = &v36;
  v32[1] = &v34;
  v32[2] = v33;
  v11 = *v7;
  if (*v7 > 0x7FF)
  {
    LODWORD(v11) = 0;
  }

  if (v11 <= 514)
  {
    if ((v11 - 513) < 2)
    {
      *&v37 = &unk_1EEEADA18;
      *(&v37 + 1) = v7;
      *&v38 = v10;
    }

    if (v11)
    {
      if (v11 != 512)
      {
        goto LABEL_34;
      }

      v29 = &unk_1EEEAD918;
      v30 = v7;
      v31 = v10;
      v13 = v27;
      v12 = v28;
      v14 = v26;
      v15 = v38;
      v16 = WORD4(v38) | (BYTE10(v38) << 16);
      *v13 = v37;
      *v14 = 0;
      v17 = v31;
      v18 = v29[2](&v29, v12);
    }

    return _ZZN12_GLOBAL__N_14callIZ32swift_reflectionMirror_subscriptE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v32, v10, a7);
  }

  if (v11 <= 768)
  {
    if (v11 != 515)
    {
      if (v11 != 768)
      {
        if (v11 == 516)
        {
          swift_reflectionMirror_subscript_cold_3();
        }

        goto LABEL_34;
      }

      if (v7 != &unk_1EEEAC358 && (v7 != &unk_1EEEAC318 || (***v10 - 2048) > 0xFFFFFFFFFFFFF800))
      {
        goto LABEL_34;
      }
    }

    return _ZZN12_GLOBAL__N_14callIZ32swift_reflectionMirror_subscriptE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v32, v10, a7);
  }

  if (v11 >= 773)
  {
    if (v11 > 773)
    {
      if ((v11 - 1280) < 2)
      {
        goto LABEL_13;
      }

      if (v11 != 774)
      {
        if (v11 == 1024)
        {
LABEL_13:
          swift_reflectionMirror_normalizedType_cold_1();
        }

LABEL_34:
        swift_reflectionMirror_recursiveChildMetadata_cold_4();
      }

LABEL_33:
      swift_reflectionMirror_recursiveChildMetadata_cold_2();
    }

    return _ZZN12_GLOBAL__N_14callIZ32swift_reflectionMirror_subscriptE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v32, v10, a7);
  }

  if (v11 != 769)
  {
    if (v11 != 772)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v29 = &unk_1EEEAD8A8;
  v30 = v7;
  v31 = v10;
  if (v28 < 0 || v7[1] < v28)
  {
    swift_reflectionMirror_recursiveChildOffset_cold_6();
  }

  v20 = v7[2 * v28 + 4];
  v22 = v31;
  *(&v38 + 1) = v21;
  v23 = swift::TargetMetadata<swift::InProcess>::allocateBoxForExistentialIn(v21, &v37);
  (*(*(*(&v38 + 1) - 8) + 16))(v23, v22 + v20);
  result = *&v37;
  v24 = v38;
  *a7 = v37;
  a7[1] = v24;
  return result;
}

uint64_t swift_reflectionMirror_displayStyle(uint64_t *a1, char *a2)
{
  v14 = 0;
  v12 = v3;
  v13 = v2;
  v11[0] = &v13;
  v11[1] = &v12;
  v11[2] = &v9;
  v10[0] = &v14;
  v10[1] = &v12;
  v10[2] = v11;
  v4 = *v2;
  if (*v2 > 0x7FFuLL)
  {
    LODWORD(v4) = 0;
  }

  if (v4 > 767)
  {
    if (v4 < 773)
    {
      if (v4 == 768)
      {
        if (v2 == &unk_1EEEAC358)
        {
          Class = swift::_swift_getClass(*v3, v3);
          if ((*(Class + 32) & 2) != 0)
          {
            v8 = Class;
            result = 99;
            while (!*(v8 + 8))
            {
              v8 = *(v8 + 1);
              if ((*(v8 + 32) & 2) == 0)
              {
                return result;
              }
            }
          }

          return 99;
        }

        if (v2 == &unk_1EEEAC318 && (***v3 - 2048) <= 0xFFFFFFFFFFFFF800)
        {
          return _ZZN12_GLOBAL__N_14callIZ35swift_reflectionMirror_displayStyleE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v10, v3);
        }
      }

      else if (v4 == 769)
      {
        return 116;
      }

      return 0;
    }

    if (v4 > 773)
    {
      if (v4 != 774 && ((v4 - 1280) < 2 || v4 == 1024))
      {
        swift_reflectionMirror_normalizedType_cold_1();
      }

      return 0;
    }
  }

  else
  {
    if (v4 > 512)
    {
      if ((v4 - 513) < 2)
      {
        return 101;
      }

      if (v4 != 515)
      {
        if (v4 == 516)
        {
          return 102;
        }

        return 0;
      }

      goto LABEL_19;
    }

    if (v4)
    {
      if (v4 == 512)
      {
        return 115;
      }

      return 0;
    }
  }

LABEL_19:
  for (i = swift::_swift_getClass(*v3, v3); (*(i + 32) & 2) != 0; i = *(i + 1))
  {
    if (*(i + 8))
    {
      break;
    }
  }

  return 99;
}

uint64_t swift_EnumCaseName(uint64_t *a1, char *a2)
{
  v20 = 0;
  result = 0;
  v18 = v2;
  v19 = v3;
  v17[0] = &v19;
  v17[1] = &v18;
  v17[2] = &v12;
  v16[0] = &v20;
  v16[1] = &v18;
  v16[2] = v17;
  v5 = *v3;
  if (*v3 > 0x7FF)
  {
    LODWORD(v5) = 0;
  }

  if (v5 <= 514)
  {
    if ((v5 - 513) >= 2)
    {
      if (v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v13 = &unk_1EEEADA18;
    v14 = v3;
    v15 = v2;
    if (v3[1])
    {
      v8 = v3[1];
    }

    else
    {
      v8 = 0;
    }

    result = 0;
    v10 = *(v8 + 16);
    if (v10 && v10 != -16 - v8)
    {
      v11 = (*(*(v3 - 1) + 88))(v2, v3);
      return v21[0];
    }
  }

  else
  {
    if (v5 <= 772)
    {
      if (v5 != 515)
      {
        if (v5 != 768)
        {
          return result;
        }

        if (v3 == &unk_1EEEAC358)
        {
          Class = swift::_swift_getClass(*v2, v2);
          if ((*(Class + 32) & 2) != 0)
          {
            v7 = Class;
            result = 0;
            while (!*(v7 + 8))
            {
              v7 = *(v7 + 1);
              if ((*(v7 + 32) & 2) == 0)
              {
                return result;
              }
            }
          }
        }

        else if (v3 == &unk_1EEEAC318 && (***v2 - 2048) <= 0xFFFFFFFFFFFFF800)
        {
          return _ZZN12_GLOBAL__N_14callIZ18swift_EnumCaseNameE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(v16, v2);
        }

        return 0;
      }

LABEL_19:
      for (i = swift::_swift_getClass(*v2, v2); (*(i + 32) & 2) != 0; i = *(i + 1))
      {
        if (*(i + 8))
        {
          break;
        }
      }

      return 0;
    }

    if (v5 == 773)
    {
      goto LABEL_19;
    }

    if ((v5 - 1280) < 2 || v5 == 1024)
    {
      swift_reflectionMirror_normalizedType_cold_1();
    }
  }

  return result;
}

const char *swift_OpaqueSummary(unint64_t *a1)
{
  result = 0;
  v3 = *a1;
  if (v3 > 0x7FF)
  {
    LODWORD(v3) = 0;
  }

  if (v3 <= 769)
  {
    if (v3 > 514)
    {
      if (v3 > 767)
      {
        if (v3 == 768)
        {
          return "(Opaque Value)";
        }

        else
        {
          return "(Tuple)";
        }
      }

      if (v3 == 515)
      {
        return "(Foreign Class)";
      }

      if (v3 == 516)
      {
        return "(Foreign Reference Type)";
      }
    }

    else if ((v3 - 512) < 3 || v3 == 0)
    {
      return result;
    }

    return "(Unknown)";
  }

  if (v3 > 773)
  {
    if (v3 <= 1023)
    {
      if (v3 == 774)
      {
        return "(Existential Metatype)";
      }

      if (v3 == 775)
      {
        return "(Extended Existential)";
      }
    }

    else
    {
      switch(v3)
      {
        case 0x400:
          return "(Heap Local Variable)";
        case 0x500:
          return "(Heap Generic Local Variable)";
        case 0x501:
          return "(ErrorType Object)";
      }
    }

    return "(Unknown)";
  }

  if (v3 > 771)
  {
    if (v3 != 772)
    {
      return "(Objective-C Class Wrapper)";
    }
  }

  else if (v3 == 770)
  {
    return "(Function)";
  }

  else
  {
    return "(Existential)";
  }

  return result;
}

id swift_reflectionMirror_quickLookObject(uint64_t *a1, char *a2)
{
  v4 = v2;
  result = 0;
  v6 = *v3;
  if (*v3 > 0x7FFuLL)
  {
    LODWORD(v6) = 0;
  }

  if (v6 <= 767)
  {
    if (v6 && v6 != 515)
    {
      return result;
    }
  }

  else if (v6 <= 772)
  {
    if (v6 != 768)
    {
      return result;
    }

    if (v3 != &unk_1EEEAC358 && (v3 != &unk_1EEEAC318 || (***v2 - 2048) >= 0xFFFFFFFFFFFFF801))
    {
      return 0;
    }
  }

  else if (v6 != 773)
  {
    if ((v6 - 1280) < 2 || v6 == 1024)
    {
      swift_reflectionMirror_normalizedType_cold_1();
    }

    return result;
  }

  for (i = swift::_swift_getClass(*v2, v2); (*(i + 32) & 2) != 0; i = *(i + 1))
  {
    if (*(i + 8))
    {
      break;
    }
  }

  return _quickLookObjectForPointer(v4);
}

char *swift_keyPath_copySymbolName(swift::SymbolInfo *a1)
{
  swift::SymbolInfo::lookup(v3, a1);
  if (v4 != 1 || !swift::SymbolInfo::getSymbolName(v3))
  {
    return 0;
  }

  SymbolName = swift::SymbolInfo::getSymbolName(v3);
  return strdup(SymbolName);
}

char *anonymous namespace::unwrapExistential(char *result, uint64_t *a2)
{
LABEL_1:
  while (2)
  {
    v3 = *result;
    if (*result > 0x7FFuLL)
    {
      LODWORD(v3) = 0;
    }

    while (v3 == 775)
    {
      v4 = **(result + 1);
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          result = swift_getMetatypeMetadata(*a2);
          goto LABEL_1;
        }

        if (v4 == 3)
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        if (!**(result + 1))
        {
          v7 = a2[3];
          a2 = swift::TargetOpaqueExistentialContainer<swift::InProcess>::projectValue(a2);
          result = v7;
          goto LABEL_1;
        }

        if (v4 == 1)
        {
          result = swift_getObjectType(*a2);
          goto LABEL_1;
        }
      }
    }

    if (v3 == 771)
    {
      v5 = result;
      DynamicType = swift::TargetExistentialTypeMetadata<swift::InProcess>::getDynamicType(result, a2);
      a2 = swift::TargetExistentialTypeMetadata<swift::InProcess>::projectValue(v5, a2);
      result = DynamicType;
      continue;
    }

    return result;
  }
}

uint64_t _ZZN12_GLOBAL__N_14callIZ37swift_reflectionMirror_normalizedTypeE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(uint64_t a1, const void *a2)
{
  if (!**a1)
  {
    for (i = swift::_swift_getClass(***(a1 + 8), a2); (*(i + 32) & 2) != 0; i = *(i + 1))
    {
      if (*(i + 8))
      {
        break;
      }
    }

    **a1 = i;
  }

  return ***(a1 + 16);
}

uint64_t anonymous namespace::TupleImpl::childOffset(_anonymous_namespace_::TupleImpl *this, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0 || (v2 = *(this + 1), *(v2 + 8) < a2))
  {
    swift_reflectionMirror_recursiveChildOffset_cold_6();
  }

  return *(v2 + 16 * a2 + 32);
}

uint64_t anonymous namespace::TupleImpl::childMetadata(_anonymous_namespace_::TupleImpl *this, const char *a2, char **a3, void (__cdecl **a4)(void *))
{
  if ((a2 & 0x8000000000000000) != 0 || (v5 = *(this + 1), *(v5 + 8) < a2))
  {
    swift_reflectionMirror_recursiveChildOffset_cold_6();
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = strchr(*(v5 + 16), 32);
  v10 = v9 != 0;
  if (a2 && v9)
  {
    v11 = a2 - 1;
    do
    {
      v8 = v9 + 1;
      v9 = strchr(v9 + 1, 32);
      v10 = v9 != 0;
      v12 = v11-- != 0;
    }

    while (v12 && v9);
  }

  if (!v10 || v8 == v9)
  {
LABEL_15:
    v17 = 0;
    swift_asprintf(&v17, a2, a2);
    *a3 = v17;
  }

  else
  {
    v14 = v9 - v8;
    v15 = malloc_type_malloc(v9 - v8 + 1, 0x100004077774924uLL);
    memcpy(v15, v8, v14);
    *(v15 + v14) = 0;
    *a3 = v15;
  }

  return *(v5 + 16 * a2 + 24);
}

double anonymous namespace::TupleImpl::subscript@<D0>(_anonymous_namespace_::TupleImpl *this@<X0>, const char **a2@<X2>, void (**a3)(const char *)@<X3>, uint64_t a4@<X1>, _OWORD *a5@<X8>)
{
  v10 = (*(*this + 16))(this);
  v11 = (*(*this + 24))(this, a4, a2, a3);
  v12 = *(this + 2);
  *(&v17 + 1) = v11;
  v13 = swift::TargetMetadata<swift::InProcess>::allocateBoxForExistentialIn(v11, &v16);
  (*(*(*(&v17 + 1) - 8) + 16))(v13, v12 + v10);
  result = *&v16;
  v15 = v17;
  *a5 = v16;
  a5[1] = v15;
  return result;
}

uint64_t anonymous namespace::StructImpl::count(_anonymous_namespace_::StructImpl *this)
{
  v1 = *(*(this + 1) + 8);
  if (v1)
  {
    v2 = *(*(this + 1) + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v3 == -16 - v2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (v1)
  {
    v6 = *(*(this + 1) + 8);
  }

  else
  {
    v6 = 0;
  }

  return *(v6 + 20);
}

uint64_t anonymous namespace::StructImpl::childOffset(_anonymous_namespace_::StructImpl *this, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v2 = *(*(this + 1) + 8);
  if (v2)
  {
    if (*(v2 + 20) >= a2)
    {
      v3 = *(*(this + 1) + 8);
      goto LABEL_7;
    }

LABEL_11:
    swift_reflectionMirror_recursiveChildOffset_cold_6();
  }

  if (MEMORY[0x14] < a2)
  {
    goto LABEL_11;
  }

  v3 = 0;
LABEL_7:
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = *(this + 1) + 8 * v4;
  }

  else
  {
    v5 = 0;
  }

  return *(v5 + 4 * a2);
}

uint64_t anonymous namespace::StructImpl::childMetadata(unint64_t **this, uint64_t a2, const char **a3, void (**a4)(const char *))
{
  result = v7[2];
  *a3 = v7[0];
  *a4 = 0;
  return result;
}

double anonymous namespace::StructImpl::subscript@<D0>(_anonymous_namespace_::StructImpl *this@<X0>, uint64_t a2@<X1>, const char **a3@<X2>, void (**a4)(const char *)@<X3>, _OWORD *a5@<X8>)
{
  v8 = (*(*this + 24))(this, a2, a3, a4);
  v10 = v9;
  v11 = *(this + 2);
  v12 = (v11 + (*(*this + 16))(this, a2));
}

void anonymous namespace::getFieldAt(unint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v57[33] = *MEMORY[0x1E69E9840];
  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a1);
  if (!TypeContextDescriptor || ((v8 = *(TypeContextDescriptor + 16), v9 = TypeContextDescriptor + 16 + v8, v8) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
    TypeName = swift_getTypeName(a1, 1);
    *a3 = "unknown";
    *(a3 + 8) = 7;
    *(a3 + 16) = &unk_1EEEAC658;
    *(a3 + 24) = 0;
    *(a3 + 26) = 0;
    return;
  }

  v15 = v9 + 12 * a2;
  v16 = *(v15 + 24);
  v15 += 24;
  v17 = (v15 - 8);
  v18 = (v16 + v15);
  if (v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = strlen(v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = v17[1];
  if (v21)
  {
    v22 = v21 == -(v17 + 1);
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = *v17 & 1;
    *a3 = v19;
    *(a3 + 8) = v20;
    *(a3 + 16) = 0;
    *(a3 + 26) = 0;
    *(a3 + 24) = v23;
    return;
  }

  SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v17 + v21 + 4, v7);
  v26 = v25;
  v52 = 0;
  v27 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a1);
  if (v27)
  {
    v53 = v27;
    if (!a1)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v53 = 0;
    if (!a1)
    {
LABEL_30:
      v33 = 0;
      goto LABEL_31;
    }
  }

  v28 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a1);
  if (!v28)
  {
    goto LABEL_30;
  }

  v29 = v28;
  if (!swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v28))
  {
    goto LABEL_30;
  }

  v30 = *v29;
  v31 = *v29 & 0x1F;
  if ((v31 - 17) >= 2)
  {
    if (v31 != 16)
    {
      __break(1u);
      return;
    }

    if ((v30 & 0x20000000) != 0)
    {
      ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(v29);
    }

    else
    {
      if ((v30 & 0x10000000) != 0)
      {
        v42 = 0;
        v43 = 6;
      }

      else
      {
        v42 = v29[7];
        v43 = 8;
      }

      ResilientImmediateMembersOffset = v42 - v29[v43];
    }
  }

  else
  {
    ResilientImmediateMembersOffset = 2;
  }

  v33 = &a1[ResilientImmediateMembersOffset];
LABEL_31:
  v54 = v33;
  v55 = v57;
  v56 = 0x800000000;
  v57[32] = 0;
  v46[0] = &unk_1EEEAD988;
  v46[1] = &v52;
  v47 = v46;
  v44[0] = &unk_1EEEAD9D0;
  v44[1] = &v52;
  v45 = v44;
  swift_getTypeByMangledName(0, SymbolicMangledNameStringRef, v26, v33, v46, v44, &v48);
  if (v45 == v44)
  {
    (*(*v45 + 32))(v45);
  }

  else if (v45)
  {
    (*(*v45 + 40))();
  }

  if (v47 == v46)
  {
    (*(*v47 + 32))(v47);
    v34 = v51;
    if (v51)
    {
LABEL_39:
      if (v34 == 1)
      {
        v35 = v49(v48, 0, 0);
        v49(v48, 1, v35);
        v39 = 0;
        v34 = v51;
        v40 = &unk_1EEEAC658;
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (v47)
    {
      (*(*v47 + 40))();
    }

    v34 = v51;
    if (v51)
    {
      goto LABEL_39;
    }
  }

  v40 = v48;
  v39 = v50;
LABEL_44:
  v41 = *v17;
  *a3 = v19;
  *(a3 + 8) = v20;
  *(a3 + 16) = v40;
  *(a3 + 24) = v41 & 1;
  *(a3 + 25) = (v41 & 2) != 0;
  *(a3 + 26) = v39;
  if (v34 == 1)
  {
    v49(v48, 3, 0);
  }

  if (v55 != v57)
  {
    free(v55);
  }
}

void anonymous namespace::missing_reflection_metadata_warning(_anonymous_namespace_ *this, const char *a2, uint64_t a3, char *a4, ...)
{
  va_start(va, a4);
  if (qword_1EA79EAB0 != -1)
  {
  }

  {
    swift::warningv(0, this, va, a4);
  }
}

uint64_t std::__function::__func<anonymous namespace::getFieldAt(swift::TargetMetadata<swift::InProcess> const*,unsigned int)::$_0,std::allocator<anonymous namespace::getFieldAt(swift::TargetMetadata<swift::InProcess> const*,unsigned int)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD988;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::getFieldAt(swift::TargetMetadata<swift::InProcess> const*,unsigned int)::$_1,std::allocator<anonymous namespace::getFieldAt(swift::TargetMetadata<swift::InProcess> const*,unsigned int)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAD9D0;
  a2[1] = v2;
  return result;
}

uint64_t anonymous namespace::missing_reflection_metadata_warning(char const*,...)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(BOOL *a1)
{
  result = _playgroundPrintHook.getter();
  v4 = result;
  if (result)
  {
    result = v3;
  }

  *a1 = v4 == 0;
  return result;
}

double anonymous namespace::copyFieldContents@<D0>(atomic_ullong **a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v4 = BYTE2(a3);
  *(&v18 + 1) = a2;
  v8 = swift::TargetMetadata<swift::InProcess>::allocateBoxForExistentialIn(a2, &v17);
  if (*a2 != 772)
  {
    goto LABEL_7;
  }

  v9 = a2 + 8;
  v12 = **(a2 + 8);
  if (v12 > 0x7FF)
  {
    LODWORD(v12) = 0;
  }

  if ((v12 - 769) >= 3 && (v12 - 512) > 2)
  {
LABEL_7:
    if (v4 > 1u)
    {
      if (v4 == 2)
      {
        v13 = v8;
        Strong = swift_unknownObjectUnownedLoadStrong(a1, v9, v10, v11);
        goto LABEL_16;
      }

      if (v4 != 4)
      {
LABEL_14:
        swift::warning(0, "Value with unrecognized reference type is reflected as ()", v10, v11);
        swift::TargetMetadata<swift::InProcess>::deallocateBoxForExistentialIn(a2, &v17);
        *(&v18 + 1) = &unk_1EEEAC658;
        goto LABEL_17;
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        v13 = v8;
        Strong = swift_unknownObjectWeakLoadStrong(a1);
LABEL_16:
        *v13 = Strong;
        memcpy(v13 + 1, a1 + 1, *(*(a2 - 8) + 64) - 8);
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    (*(*(a2 - 8) + 16))(v8, a1, a2);
    goto LABEL_17;
  }

  (*(*(a2 - 8) + 16))(v8, v9, a2);
LABEL_17:
  result = *&v17;
  v16 = v18;
  *a4 = v17;
  a4[1] = v16;
  return result;
}

BOOL anonymous namespace::EnumImpl::count(_anonymous_namespace_::EnumImpl *this)
{
  v3 = *(this + 1);
  if (*(v3 + 8))
  {
    v4 = *(*(this + 1) + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v5 == -16 - v4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v7 = *(this + 2);
  if (!v7)
  {
    return 0;
  }

  v11[6] = v1;
  v11[7] = v2;
  v9 = (*(*(v3 - 8) + 88))(v7);
  return v11[2] != 0;
}

double anonymous namespace::EnumImpl::subscript@<D0>(_anonymous_namespace_::EnumImpl *this@<X0>, const char **a2@<X2>, void (**a3)(const char *)@<X3>, _OWORD *a4@<X8>)
{
  v7 = (*(*(*(this + 1) - 8) + 88))(*(this + 2));
  v8 = v22[0];
  v9 = v22[2];
  v10 = v23;
  BoxForExistentialIn = swift::TargetMetadata<swift::InProcess>::allocateBoxForExistentialIn(*(this + 1), v22);
  (*(*(*(this + 1) - 8) + 16))(BoxForExistentialIn, *(this + 2));
  if (v10)
  {
    v12 = &unk_1EEEAC318;
  }

  else
  {
    v12 = v9;
  }

  v13 = swift_allocBox(v12);
  v15 = v14;
  (*(*(*(this + 1) - 8) + 96))(BoxForExistentialIn);
  (*(*(v12 - 1) + 32))(v15, BoxForExistentialIn, v12);
  swift::TargetMetadata<swift::InProcess>::deallocateBoxForExistentialIn(*(this + 1), v22);
  *(this + 2) = v15;
  if (v10)
  {
    *(this + 2) = swift_projectBox(*v15);
  }

  *a2 = v8;
  *a3 = 0;
  *(&v21 + 1) = v9;
  v16 = swift::TargetMetadata<swift::InProcess>::allocateBoxForExistentialIn(v9, &v20);
  (*(*(*(&v21 + 1) - 8) + 16))(v16, *(this + 2));
  v13;
  result = *&v20;
  v18 = v21;
  *a4 = v20;
  a4[1] = v18;
  return result;
}

uint64_t anonymous namespace::EnumImpl::enumCaseName(_anonymous_namespace_::EnumImpl *this)
{
  v3 = *(this + 1);
  if (*(v3 + 8))
  {
    v4 = *(*(this + 1) + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v5 == -16 - v4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v10[6] = v1;
  v10[7] = v2;
  v8 = (*(*(v3 - 8) + 88))(*(this + 2));
  return v10[0];
}

uint64_t anonymous namespace::ClassImpl::count(_anonymous_namespace_::ClassImpl *this)
{
  v1 = *(*(this + 1) + 64);
  if (v1)
  {
    v2 = *(*(this + 1) + 64);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v3 == -16 - v2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (v1)
  {
    v6 = *(*(this + 1) + 64);
  }

  else
  {
    v6 = 0;
  }

  return *(v6 + 36);
}

ptrdiff_t anonymous namespace::ClassImpl::childOffset(_anonymous_namespace_::ClassImpl *this, unint64_t a2)
{
  v3 = *(this + 1);
  v4 = v3 + 8;
  if ((a2 & 0x8000000000000000) != 0 || *(v3[8] + 36) < a2)
  {
    swift_reflectionMirror_recursiveChildOffset_cold_6();
  }

  if (swift::usesNativeSwiftReferenceCounting(v3))
  {
    if (*v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    v9 = v5;
    if ((*(v5 + 3) & 0x20) != 0)
    {
      swift::getResilientMetadataBounds(v5);
      v10 = *(v9 + 40) + (v11 >> 3);
    }

    else
    {
      v10 = *(v5 + 40);
    }

    if (v10)
    {
      v12 = &v3[v10];
    }

    else
    {
      v12 = 0;
    }

    return v12[a2];
  }

  else
  {
    v6 = class_copyIvarList(v3, 0);
    Offset = ivar_getOffset(v6[a2]);
    free(v6);
    return Offset;
  }
}

uint64_t anonymous namespace::ClassImpl::childMetadata(unint64_t **this, unsigned int a2, const char **a3, void (**a4)(const char *))
{
  result = v7[2];
  *a3 = v7[0];
  *a4 = 0;
  return result;
}

double anonymous namespace::ClassImpl::subscript@<D0>(_anonymous_namespace_::ClassImpl *this@<X0>, const char **a2@<X2>, void (**a3)(const char *)@<X3>, uint64_t a4@<X1>, _OWORD *a5@<X8>)
{
  v8 = (*(*this + 24))(this, a4, a2, a3);
  v10 = v9;
  v11 = **(this + 2);
  v12 = (v11 + (*(*this + 16))(this, a4));
}

uint64_t anonymous namespace::ClassImpl::recursiveCount(_anonymous_namespace_::ClassImpl *this)
{
  v2 = *(*(this + 1) + 64);
  if (v2)
  {
    v3 = *(*(this + 1) + 64);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 20);
  if (v4)
  {
    v5 = v4 == -20 - v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (v1 = *(this + 1), (v6 = *(v1 + 8)) != 0) && (*(v6 + 32) & 2) != 0)
  {
    v9 = *(v1 + 8);
    if (v2)
    {
      v10 = *(*(this + 1) + 64);
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v10 + 20);
    if (!v11 || v11 == -20 - v10)
    {
    }

    v14[0] = &unk_1EEEADAF8;
    v14[1] = v9;
    v14[2] = 0;
    return (*(*this + 8))(this) + v13;
  }

  else
  {
    v7 = *(*this + 8);

    return v7();
  }
}

uint64_t anonymous namespace::ClassImpl::recursiveChildOffset(_anonymous_namespace_::ClassImpl *this, uint64_t a2)
{
  v3 = *(*(this + 1) + 64);
  if (v3)
  {
    v4 = *(*(this + 1) + 64);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 20);
  if (v5)
  {
    v6 = v5 == -20 - v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v2 = *(this + 1);
    v7 = *(v2 + 8);
    if (v7)
    {
      if ((*(v7 + 32) & 2) != 0)
      {
        v8 = *(v2 + 8);
        if (v3)
        {
          v9 = *(*(this + 1) + 64);
        }

        else
        {
          v9 = 0;
        }

        v10 = *(v9 + 20);
        if (!v10 || v10 == -20 - v9)
        {
        }

        v11 = this;
        v12 = a2;
        v15[0] = &unk_1EEEADAF8;
        v15[1] = v8;
        v15[2] = 0;
        if (v12 < v13)
        {
        }

        a2 = v12 - v13;
        this = v11;
      }
    }
  }

  return (*(*this + 16))(this, a2);
}

uint64_t anonymous namespace::ClassImpl::recursiveChildMetadata(_anonymous_namespace_::ClassImpl *this, uint64_t a2, const char **a3, void (**a4)(const char *))
{
  v5 = *(*(this + 1) + 64);
  if (v5)
  {
    v6 = *(*(this + 1) + 64);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 20);
  if (v7)
  {
    v8 = v7 == -20 - v6;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v4 = *(this + 1);
    v9 = *(v4 + 8);
    if (v9)
    {
      if ((*(v9 + 32) & 2) != 0)
      {
        v10 = *(v4 + 8);
        if (v5)
        {
          v11 = *(*(this + 1) + 64);
        }

        else
        {
          v11 = 0;
        }

        v12 = *(v11 + 20);
        if (!v12 || v12 == -20 - v11)
        {
        }

        v13 = this;
        v14 = a2;
        v15 = a3;
        v16 = a4;
        v19[0] = &unk_1EEEADAF8;
        v19[1] = v10;
        v19[2] = 0;
        if (v14 < v17)
        {
        }

        a2 = v14 - v17;
        a4 = v16;
        a3 = v15;
        this = v13;
      }
    }
  }

  return (*(*this + 24))(this, a2, a3, a4);
}

uint64_t _ZZN12_GLOBAL__N_14callIZ28swift_reflectionMirror_countE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(Class **a1, const void *a2)
{
  v3 = **a1;
  if (!v3)
  {
    for (i = swift::_swift_getClass(**a1[1], a2); (*(i + 32) & 2) != 0; i = *(i + 1))
    {
      if (*(i + 8))
      {
        break;
      }
    }

    **a1 = i;
    v3 = **a1;
  }

  v5 = *v3;
  if (*v3 > 0x7FFuLL)
  {
    LODWORD(v5) = 0;
  }

  if (v5)
  {
    if (v5 != 773)
    {
      return 0;
    }

    v3 = *(v3 + 1);
    if (!v3)
    {
      return 0;
    }
  }

  if ((*(v3 + 32) & 2) == 0)
  {
    return 0;
  }

  v7 = *(**a1[2] + 64);
  if (v7)
  {
    v8 = *(**a1[2] + 64);
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  v9 = *(v8 + 16);
  if (v9 && v9 != -16 - v8)
  {
    if (v7)
    {
      v10 = *(**a1[2] + 64);
    }

    else
    {
      v10 = 0;
    }

    return *(v10 + 36);
  }

  return result;
}

uint64_t _ZZN12_GLOBAL__N_14callIZ37swift_reflectionMirror_recursiveCountE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(Class **a1, const void *a2)
{
  v3 = **a1;
  if (!v3)
  {
    for (i = swift::_swift_getClass(**a1[1], a2); (*(i + 32) & 2) != 0; i = *(i + 1))
    {
      if (*(i + 8))
      {
        break;
      }
    }

    **a1 = i;
    v3 = **a1;
  }

  v5 = *v3;
  if (*v3 > 0x7FFuLL)
  {
    LODWORD(v5) = 0;
  }

  if (v5)
  {
    if (v5 != 773)
    {
      return 0;
    }

    v3 = *(v3 + 1);
    if (!v3)
    {
      return 0;
    }
  }

  if ((*(v3 + 32) & 2) == 0)
  {
    return 0;
  }

  v7 = a1[2];
  v9 = *v7;
  v8 = v7[1];
  v10 = *v9;
  v11[0] = &unk_1EEEADAF8;
  v11[1] = v10;
  v11[2] = *v8;
}

uint64_t _ZZN12_GLOBAL__N_14callIZ45swift_reflectionMirror_recursiveChildMetadataE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(Class **i, const void *a2)
{
  v3 = **i;
  if (!v3)
  {
    for (j = swift::_swift_getClass(**i[1], a2); (*(j + 32) & 2) != 0; j = *(j + 1))
    {
      if (*(j + 8))
      {
        break;
      }
    }

    **i = j;
    v3 = **i;
  }

  v5 = *v3;
  if (*v3 > 0x7FF)
  {
    LODWORD(v5) = 0;
  }

  if (v5 && (v5 != 773 || (v3 = v3[1]) == 0) || (v3[4] & 2) == 0)
  {
    swift_reflectionMirror_recursiveChildOffset_cold_2();
  }

  v6 = i[2];
  v7 = v6[1];
  v8 = **v6;
  v13[0] = &unk_1EEEADAF8;
  v13[1] = v8;
  v13[2] = *v7;
  v9 = v6[2];
  v12 = *v9[1];
  *(v12 + 16) = (*&v11 & 0xFF0000) == 0;
  *(v12 + 17) = BYTE1(v11) & 1;
  return result;
}

double _ZZN12_GLOBAL__N_14callIZ32swift_reflectionMirror_subscriptE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv@<D0>(Class **i@<X0>, const void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = **i;
  if (!v5)
  {
    for (j = swift::_swift_getClass(**i[1], a2); (*(j + 32) & 2) != 0; j = *(j + 1))
    {
      if (*(j + 8))
      {
        break;
      }
    }

    **i = j;
    v5 = **i;
  }

  v7 = *v5;
  if (*v5 > 0x7FF)
  {
    LODWORD(v7) = 0;
  }

  if (v7 && (v7 != 773 || (v5 = v5[1]) == 0) || (v5[4] & 2) == 0)
  {
    swift_reflectionMirror_recursiveChildOffset_cold_2();
  }

  v8 = i[2];
  v9 = v8[1];
  v10 = **v8;
  v20[0] = &unk_1EEEADAF8;
  v20[1] = v10;
  v21 = *v9;
  v11 = v8[2];
  v12 = **v11;
  v13 = *v11[1];
  v14 = *v11[2];
  v15 = v22[2];
  v16 = v23 | (v24 << 16);
  *v13 = v22[0];
  *v14 = 0;
  v17 = *v21;
  v18 = (*(v20[0] + 16))(v20, v12);
}

uint64_t _ZZN12_GLOBAL__N_14callIZ35swift_reflectionMirror_displayStyleE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(uint64_t a1, const void *a2)
{
  if (**a1)
  {
    return 99;
  }

  for (i = swift::_swift_getClass(***(a1 + 8), a2); (*(i + 32) & 2) != 0; i = *(i + 1))
  {
    if (*(i + 8))
    {
      break;
    }
  }

  **a1 = i;
  return 99;
}

uint64_t _ZZN12_GLOBAL__N_14callIZ18swift_EnumCaseNameE3__0EEDTclfL0p2_LDnEEEPN5swift11OpaqueValueEPKNS3_14TargetMetadataINS3_9InProcessEEESA_RKT_ENKUlvE_clEv(uint64_t a1, const void *a2)
{
  if (**a1)
  {
    return 0;
  }

  for (i = swift::_swift_getClass(***(a1 + 8), a2); (*(i + 32) & 2) != 0; i = *(i + 1))
  {
    if (*(i + 8))
    {
      break;
    }
  }

  **a1 = i;
  return 0;
}

size_t swift_dtoa_optimal_binary16_p(_WORD *a1, _BYTE *a2, size_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v3 = *a1;
  v4 = (v3 >> 10) & 0x1F;
  if (v4)
  {
    if (v4 == 31)
    {
      if ((v3 & 0x3FF) != 0)
      {
        if (*a1)
        {
          snprintf(__str, 0x40uLL, "%s%snan(0x%llx)");
        }

        else
        {
          snprintf(__str, 0x40uLL, "%s%snan");
        }

        v36 = strlen(__str);
        if (v36 >= a3)
        {
          result = 0;
          *a2 = 0;
        }

        else
        {
          v37 = v36;
          memcpy(a2, __str, v36 + 1);
          return v37;
        }

        return result;
      }

      if ((v3 & 0x8000) == 0)
      {
        if (a3 >= 4)
        {
          v35 = 6712937;
LABEL_52:
          *a2 = v35;
          return 3;
        }

        goto LABEL_15;
      }

      if (a3 < 5)
      {
        goto LABEL_15;
      }

      a2[4] = 0;
      v38 = 1718511917;
LABEL_66:
      *a2 = v38;
      return 4;
    }

    v8 = v4 - 14;
    v9 = v3 & 0x3FF | 0x400;
  }

  else
  {
    if ((v3 & 0x3FF) == 0)
    {
      if ((v3 & 0x8000) != 0)
      {
        if (a3 < 5)
        {
          goto LABEL_15;
        }

        a2[4] = 0;
        v38 = 808333357;
        goto LABEL_66;
      }

      if (a3 >= 4)
      {
        v35 = 3157552;
        goto LABEL_52;
      }

LABEL_15:
      result = 0;
      *a2 = 0;
      return result;
    }

    v8 = -13;
    v9 = v3 & 0x3FF;
  }

  if ((v3 & 0x3FF) != 0)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (a3 <= 3)
  {
    goto LABEL_15;
  }

  v11 = 4 * v9;
  v12 = a2;
  if ((v3 & 0x8000) != 0)
  {
    *a2 = 45;
    v12 = a2 + 1;
  }

  v13 = (4 * (v9 & 0x7FF)) | 2;
  v14 = v10 + v11;
  if (v8 == -13 && v9 <= 0x68D)
  {
    v15 = 400000 * v13;
    v16 = 400000 * v14;
    v17 = 1600000 * v9;
    v18 = 40000000 * v13;
    v19 = 40000000 * v14;
    if (v9 <= 0x10)
    {
      v17 = 160000000 * v9;
      v20 = -7;
    }

    else
    {
      v18 = v15;
      v19 = v16;
      v20 = -5;
    }

    v21 = 10 * v18;
    if (v17 >> 28)
    {
      v21 = v18;
      v22 = v19;
    }

    else
    {
      v22 = 10 * v19;
    }

    if (v17 >> 28)
    {
      v23 = v17;
    }

    else
    {
      v23 = 10 * v17;
    }

    if (v17 >> 28)
    {
      v24 = v20;
    }

    else
    {
      v24 = v20 - 1;
    }

    if (!((v22 ^ v21) >> 28))
    {
      if (v12 > &a2[a3 - 6])
      {
        goto LABEL_15;
      }

      *v12 = (v23 >> 28) | 0x30;
      v25 = v12 + 2;
      v12[1] = 46;
      v26 = 5 * (v21 & 0xFFFFFFF);
      v27 = 10 * (v22 & 0xFFFFFFF);
      v28 = (v26 >> 27) & 0xF;
      if (v28 == v27 >> 28)
      {
        v29 = 2 * v26;
        do
        {
          *v25++ = v28 | 0x30;
          v23 *= 10;
          v30 = 5 * (v29 & 0xFFFFFFE);
          v29 = 10 * (v29 & 0xFFFFFFE);
          v27 = 10 * (v27 & 0xFFFFFFE);
          v28 = (v30 >> 27) & 0xF;
        }

        while (v28 == v27 >> 28);
      }

      v23 = 10 * (v23 & 0xFFFFFFF);
      v12 = v25;
    }

    if (v12 <= &a2[a3 - 6])
    {
      *v12 = ((v23 + 0x8000000) >> 28) | 0x30;
      *(v12 + 1) = 11621;
      *(v12 + 3) = *&asciiDigitTable[-2 * v24];
      v12[5] = 0;
      return v12 + 5 - a2;
    }

    goto LABEL_15;
  }

  v31 = (v11 - (v11 >> (13 - v8) << (13 - v8)));
  if (v8 <= 12)
  {
    v32 = v11 >> (13 - v8);
  }

  else
  {
    v31 = 0;
    v32 = v11 << (v8 - 13);
  }

  v33 = &a2[a3];
  if (v32 > 9)
  {
    if (v32 > 0x3E7)
    {
      if (v12 > v33 - 6)
      {
        goto LABEL_15;
      }

      if (v32 >> 4 >= 0x271)
      {
        *v12++ = v32 / 0x2710 + 48;
        v32 %= 0x2710u;
      }

      *v12 = *&asciiDigitTable[2 * (v32 / 0x64u)];
      *(v12 + 1) = *&asciiDigitTable[2 * (v32 % 0x64u)];
      v34 = v12 + 4;
    }

    else
    {
      if (v12 > v33 - 4)
      {
        goto LABEL_15;
      }

      if (v32 >= 0x64)
      {
        *v12++ = (v32 / 0x64u) | 0x30;
      }

      *v12 = *&asciiDigitTable[2 * (v32 % 0x64u)];
      v34 = v12 + 2;
    }
  }

  else
  {
    if (v12 > v33 - 3)
    {
      goto LABEL_15;
    }

    *v12 = v32 | 0x30;
    v34 = v12 + 1;
  }

  v39 = &a2[a3 - 3];
  if (v34 > v39)
  {
    goto LABEL_15;
  }

  *v34 = 46;
  v40 = v34 + 1;
  if (!v31)
  {
    *(v34 + 1) = 48;
    return v34 - a2 + 2;
  }

  v41 = v31 << (v8 + 15);
  v42 = 5 * ((v13 << (v8 + 15)) & 0xFFFFFFE);
  v43 = (v14 << (v8 + 15)) & 0xFFFFFFF;
  v44 = (v42 >> 27) & 0xF;
  v45 = ((5 * v43) >> 27) & 0xF;
  if (v44 == v45)
  {
    v46 = 2 * v42;
    v47 = 10 * v43;
    while (v40 <= v39)
    {
      v41 *= 10;
      *v40 = v44 | 0x30;
      v40 = (v40 + 1);
      v48 = 5 * (v46 & 0xFFFFFFE);
      v46 = 10 * (v46 & 0xFFFFFFE);
      v43 = v47 & 0xFFFFFFE;
      v47 = 10 * (v47 & 0xFFFFFFE);
      v44 = (v48 >> 27) & 0xF;
      v45 = ((5 * v43) >> 27) & 0xF;
      if (v44 != v45)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_15;
  }

LABEL_77:
  v49 = 10 * (v41 & 0xFFFFFFF) + 0x8000000;
  if ((v49 & 0xFFFFFFE) != 0)
  {
    v50 = v49 >> 28;
  }

  else
  {
    v50 = (v49 >> 28) & 0xE;
  }

  if (v43)
  {
    v51 = v50 > v45;
  }

  else
  {
    v51 = 1;
  }

  if (!v51)
  {
    LOBYTE(v50) = v50 + 1;
  }

  *v40 = (v50 + 48);
  return v40 + 1 - a2;
}

size_t swift_dtoa_optimal_binary32_p(unsigned int *a1, char *__dst, size_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *a1 & 0x7FFFFF;
  if (!(*a1 >> 23))
  {
    if (!v4)
    {
      if ((v3 & 0x80000000) == 0)
      {
        if (a3 >= 4)
        {
          v40 = 3157552;
          goto LABEL_53;
        }

LABEL_31:
        result = 0;
        *__dst = 0;
        return result;
      }

      if (a3 < 5)
      {
        goto LABEL_31;
      }

      __dst[4] = 0;
      v43 = 808333357;
LABEL_62:
      *__dst = v43;
      return 4;
    }

    v8 = v4 << 8;
    v9 = -125;
LABEL_11:
    v10 = v8 + 128;
    if (v4)
    {
      v11 = -128;
    }

    else
    {
      v11 = -64;
    }

    v12 = v8 + v11;
    v13 = (20201781 * v9) >> 26;
    if (v13 <= 0)
    {
      v16 = (-2 * ((20201781 * v9) >> 26)) | 1;
      v14 = powersOf10_Exact128[v16];
      if (-((20201781 * v9) >> 26) <= 0x1B)
      {
        v15 = powersOf10_Exact128[v16];
      }

      else
      {
        v15 = v14 + 1;
      }
    }

    else
    {
      v14 = powersOf10_negativeBinary32[(40 - v13)];
      v15 = v14 + 1;
    }

    v17 = ~(-1 << (7 - v9 - ((-55732705 * ((20201781 * v9) >> 26)) >> 24)));
    v18 = (HIDWORD(v15) * v10 + v17 + ((v15 * v10 + 0xFFFFFFFF) >> 32)) >> (7 - v9 - ((-55732705 * ((20201781 * v9) >> 26)) >> 24));
    v19 = (((v14 * v12) >> 32) + HIDWORD(v14) * v12) >> (7 - v9 - ((-55732705 * ((20201781 * v9) >> 26)) >> 24));
    v20 = (((v14 * v10) >> 32) + HIDWORD(v14) * v10) >> (7 - v9 - ((-55732705 * ((20201781 * v9) >> 26)) >> 24));
    v21 = (v17 + HIDWORD(v15) * v12 + ((v15 * v12 + 0xFFFFFFFF) >> 32)) >> (7 - v9 - ((-55732705 * ((20201781 * v9) >> 26)) >> 24));
    if (v3)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    if (v3)
    {
      v23 = v20;
    }

    else
    {
      v23 = v18;
    }

    v24 = v23 - v22;
    if (HIBYTE(v23))
    {
      v25 = v23;
    }

    else
    {
      do
      {
        LODWORD(v13) = v13 - 1;
        v25 = 10 * v23;
        v24 *= 10;
        v26 = v23 >= 0x1999999999999ALL;
        v23 *= 10;
      }

      while (!v26);
    }

    v27 = &__dst[a3];
    v28 = &__dst[a3 - 3];
    if (v28 < __dst)
    {
      goto LABEL_31;
    }

    v29 = __dst;
    if ((v3 & 0x80000000) != 0)
    {
      *__dst = 45;
      v29 = __dst + 1;
    }

    *v29 = *&asciiDigitTable[(v25 >> 55) & 0x1FE];
    v30 = (v29 + 2);
    v31 = v25 & 0xFFFFFFFFFFFFFFLL;
    v32 = 10 * v24;
    v33 = 10 * v31;
    v34 = (10 * v31) & 0xFFFFFFFFFFFFFELL;
    if (10 * v24 < v34)
    {
      while (v30 <= v28)
      {
        v35 = 100 * v24;
        *v30 = *&asciiDigitTable[((100 * v31) >> 55) & 0xFE];
        v30 += 2;
        v31 = (100 * v31) & 0xFFFFFFFFFFFFFCLL;
        v32 = 1000 * v24;
        v33 = 10 * v31;
        v34 = (10 * v31) & 0xFFFFFFFFFFFFF8;
        v24 *= 100;
        if (v32 >= v34)
        {
          v36 = (v30 - 2);
          v24 = v35;
          if (v35 < v31)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }
      }

      goto LABEL_31;
    }

    v36 = v29;
    if (v24 >= v31)
    {
LABEL_38:
      v32 = v24;
      v34 = v31;
    }

    else
    {
LABEL_40:
      if (v30 > (v27 - 2))
      {
        goto LABEL_31;
      }

      *v30 = HIBYTE(v33) | 0x30;
      v30 = (v36 + 3);
    }

    if (v32 > (v34 | 0x100000000000000))
    {
      v37 = (v32 >> 1) - v34;
      v38 = v32 - (v34 + v32 / 3);
      if (!v4)
      {
        v37 = v38;
      }

      if (((v37 + 0x800000) & 0xFFFFFFFF000000) == 0x80000000000000)
      {
        v39 = (*(v30 - 1) - HIBYTE(v37)) & 0xFE;
      }

      else
      {
        v39 = *(v30 - 1) - ((v37 + 0x80000000000000) >> 56);
      }

      *(v30 - 1) = v39;
    }

    v44 = v9 == 25;
    if (!v4)
    {
      v44 = 0;
    }

    v45 = v30 - v29 - 1;
    if (v9 > 25 || v44 || v13 <= -5)
    {
      *v29 = v29[1];
      if (v45 < 2)
      {
        --v30;
      }

      else
      {
        v29[1] = 46;
      }

      if (v30 > (v27 - 5))
      {
        goto LABEL_31;
      }

      *v30 = 101;
      if ((v13 & 0x80000000) == 0)
      {
        v49 = 43;
      }

      else
      {
        v49 = 45;
      }

      if ((v13 & 0x80000000) == 0)
      {
        v50 = v13;
      }

      else
      {
        v50 = -v13;
      }

      *(v30 + 1) = v49;
      v51 = v30 + 2;
      if (v50 < 0x64)
      {
        v52 = (v30 + 2);
      }

      else
      {
        if (v50 < 0x3E8)
        {
          if (v51 > (v27 - 4))
          {
            goto LABEL_31;
          }

          *(v30 + 2) = (v50 / 0x64u) | 0x30;
          v52 = (v30 + 3);
        }

        else
        {
          if (v51 > (v27 - 5))
          {
            goto LABEL_31;
          }

          *(v30 + 2) = *&asciiDigitTable[(v50 / 0x32uLL) & 0x7FFFFFE];
          v52 = (v30 + 4);
        }

        v50 %= 0x64u;
      }

      v55 = *&asciiDigitTable[2 * v50];
    }

    else
    {
      if ((v13 & 0x80000000) != 0)
      {
        if (&v27[v13 - 1] < v30)
        {
          goto LABEL_31;
        }

        v53 = __dst;
        memmove(&v29[-v13], v29, v30 - v29);
        memset(v29, 48, -v13);
        LODWORD(__dst) = v53;
        v29[1] = 46;
        v30 += -v13;
LABEL_97:
        *v30 = 0;
        return v30 - __dst;
      }

      v46 = v13 + 1;
      v47 = v46 - v45;
      if (v46 < v45)
      {
        v48 = __dst;
        memmove(v29, v29 + 1, v46);
        LODWORD(__dst) = v48;
        v29[v46] = 46;
        goto LABEL_97;
      }

      if (v30 + v13 - v45 > v28)
      {
        goto LABEL_31;
      }

      v54 = __dst;
      memmove(v29, v29 + 1, v45);
      memset((v30 - 1), 48, v47);
      LODWORD(__dst) = v54;
      v52 = (v30 - 1 + v47);
      v55 = 12334;
    }

    *v52 = v55;
    v30 = (v52 + 1);
    goto LABEL_97;
  }

  if ((*a1 >> 23) != 255)
  {
    v9 = (v3 >> 23) - 126;
    v8 = (v4 << 8) | 0x80000000;
    goto LABEL_11;
  }

  if (!v4)
  {
    if ((v3 & 0x80000000) == 0)
    {
      if (a3 >= 4)
      {
        v40 = 6712937;
LABEL_53:
        *__dst = v40;
        return 3;
      }

      goto LABEL_31;
    }

    if (a3 < 5)
    {
      goto LABEL_31;
    }

    __dst[4] = 0;
    v43 = 1718511917;
    goto LABEL_62;
  }

  v6 = __dst;
  if ((v3 & 0x1FFFFF) != 0)
  {
    snprintf(__str, 0x40uLL, "%s%snan(0x%llx)");
  }

  else
  {
    snprintf(__str, 0x40uLL, "%s%snan");
  }

  v41 = strlen(__str);
  if (v41 >= a3)
  {
    result = 0;
    *v6 = 0;
  }

  else
  {
    v42 = v41;
    memcpy(v6, __str, v41 + 1);
    return v42;
  }

  return result;
}

size_t swift_dtoa_optimal_binary64_p(unint64_t *a1, char *__dst, size_t a3)
{
  v121 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v3 = *a1;
  v4 = (*a1 >> 52) & 0x7FF;
  v5 = *a1 & 0xFFFFFFFFFFFFFLL;
  if (!v4)
  {
    if (!v5)
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        if (a3 >= 4)
        {
          v26 = 3157552;
          goto LABEL_27;
        }

LABEL_176:
        result = 0;
        *__dst = 0;
        return result;
      }

      if (a3 < 5)
      {
        goto LABEL_176;
      }

      __dst[4] = 0;
      v102 = 808333357;
LABEL_133:
      *__dst = v102;
      return 4;
    }

    v9 = v5 << 11;
    v10 = -1021;
LABEL_11:
    if (v5)
    {
      v11 = -1024;
    }

    else
    {
      v11 = -512;
    }

    v12 = (20201781 * v10) >> 26;
    v13 = 6 - v12;
    if ((6 - v12) > 0x37)
    {
      v19 = (406 - v12) / 0x1Cu;
      v15 = powersOf10_Binary64[2 * v19];
      v14 = powersOf10_Binary64[2 * v19 + 1];
      v20 = (406 - v12) % 0x1Cu;
      v16 = ((55732705 * (v13 - v20)) >> 24) + 1;
      if (v20)
      {
        v21 = powersOf10_Exact128[2 * v20 + 1];
        v16 += ((55732705 * v20) >> 24) + 1;
        v22 = (v21 * v14) >> 64;
        v23 = v21 * v14;
        v24 = (v21 * v15) >> 64;
        v25 = __CFADD__(v24, v23);
        v15 = v24 + v23;
        if (v25)
        {
          v14 = v22 + 1;
        }

        else
        {
          v14 = v22;
        }

        v25 = __CFADD__(v15, 2);
        v17 = v15 + 2;
      }

      else
      {
        v25 = __CFADD__(v15, 1);
        v17 = v15 + 1;
      }

      if (v25)
      {
        v18 = v14 + 1;
      }

      else
      {
        v18 = v14;
      }
    }

    else
    {
      v14 = powersOf10_Exact128[(2 * (v13 & 0x3FFFFFFF)) | 1u];
      v15 = powersOf10_Exact128[2 * v13];
      v16 = ((55732705 * v13) >> 24) + 1;
      v17 = v15;
      v18 = v14;
    }

    v27 = v9 + 1024;
    v28 = v9 + v11;
    v29 = v16 + v10;
    if (v3)
    {
      v50 = (v14 * v27) >> 64;
      v51 = v14 * v27;
      v52 = (v15 * v27) >> 64;
      v25 = __CFADD__(v52, v51);
      v53 = v52 + v51;
      if (v25)
      {
        v54 = v50 + 1;
      }

      else
      {
        v54 = v50;
      }

      v55 = 32 - v29;
      v56 = ((2 * v54) << ~v55) | (v53 >> v55);
      v57 = v54 >> v55;
      v58 = (v18 * v28) >> 64;
      v59 = v18 * v28;
      if (v17 * v28)
      {
        v60 = ((v17 * v28) >> 64) + 1;
      }

      else
      {
        v60 = (v17 * v28) >> 64;
      }

      v25 = __CFADD__(v60, v59);
      v61 = v60 + v59;
      if (v25)
      {
        ++v58;
      }

      v62 = ~(-1 << v55);
      v25 = __CFADD__(v61, v62);
      v63 = v61 + v62;
      if (v25)
      {
        ++v58;
      }

      v64 = (v55 & 0x40) == 0;
      if ((v55 & 0x40) != 0)
      {
        v44 = v57;
      }

      else
      {
        v44 = v56;
      }

      if ((v55 & 0x40) != 0)
      {
        v45 = 0;
      }

      else
      {
        v45 = v57;
      }

      v65 = v58 >> v55;
      v66 = ((2 * v58) << ~v55) | (v63 >> v55);
      if (v64)
      {
        v48 = v66;
      }

      else
      {
        v48 = v65;
      }

      if (v64)
      {
        v49 = v65;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v30 = (v18 * v27) >> 64;
      v31 = v18 * v27;
      if (v17 * v27)
      {
        v32 = ((v17 * v27) >> 64) + 1;
      }

      else
      {
        v32 = (v17 * v27) >> 64;
      }

      v25 = __CFADD__(v32, v31);
      v33 = v32 + v31;
      if (v25)
      {
        ++v30;
      }

      v34 = 32 - v29;
      v35 = ~(-1 << v34);
      v25 = __CFADD__(v33, v35);
      v36 = v33 + v35;
      if (v25)
      {
        ++v30;
      }

      v37 = v30 >> v34;
      v38 = ((2 * v30) << ~v34) | (v36 >> v34);
      v39 = (v14 * v28) >> 64;
      v40 = v14 * v28;
      v41 = (v15 * v28) >> 64;
      v25 = __CFADD__(v41, v40);
      v42 = v41 + v40;
      if (v25)
      {
        ++v39;
      }

      v43 = (v34 & 0x40) == 0;
      if ((v34 & 0x40) != 0)
      {
        v44 = v37;
      }

      else
      {
        v44 = v38;
      }

      if ((v34 & 0x40) != 0)
      {
        v45 = 0;
      }

      else
      {
        v45 = v37;
      }

      v46 = ((2 * v39) << ~v34) | (v42 >> v34);
      v47 = v39 >> v34;
      if (v43)
      {
        v48 = v46;
      }

      else
      {
        v48 = v47;
      }

      if (v43)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0;
      }
    }

    if (v45 > 0xF423FFFFFFFFFLL)
    {
      v67 = v45;
    }

    else
    {
      do
      {
        LODWORD(v12) = v12 - 1;
        v49 = (__PAIR128__(v49, v48) * 0xA) >> 64;
        v48 *= 10;
        v67 = (__PAIR128__(v45, v44) * 0xA) >> 64;
        v44 *= 10;
        v68 = v45 >> 37;
        v45 = v67;
      }

      while (v68 < 0xC35);
    }

    v70 = (__PAIR128__(v67, v44) - __PAIR128__(v49, v48)) >> 64;
    v69 = v44 - v48;
    v71 = __dst;
    if ((v3 & 0x8000000000000000) != 0)
    {
      if (a3 <= 0)
      {
        goto LABEL_176;
      }

      *__dst = 45;
      v71 = __dst + 1;
    }

    v72 = HIDWORD(v67);
    v73 = v67;
    if (__PAIR128__(v70, v69) >= __PAIR128__(v67, v44))
    {
      if (v48)
      {
        v84 = v49 + 1;
      }

      else
      {
        v84 = v49;
      }

      if (v5)
      {
        v85 = (v84 + v67) >> 1;
      }

      else
      {
        v85 = (v67 + 2 * v84) / 3;
      }

      if (v84)
      {
        v86 = HIDWORD(v84) + 1;
      }

      else
      {
        v86 = HIDWORD(v84);
      }

      v87 = HIDWORD(v85);
      v88 = (v44 | v67) == 0;
      v89 = (5 * v85) >> 31;
      v90 = &__dst[a3 - 9];
      for (i = -8; ; ++i)
      {
        v92 = v89 % 0xA;
        if (v72 < 0xA)
        {
          break;
        }

        LODWORD(v72) = v72 / 0xA;
        v86 = (v86 + 9) / 0xA;
        if (v72 < v86)
        {
          break;
        }

        if (v92)
        {
          v88 = 0;
        }

        v89 = v87;
        LODWORD(v87) = v87 / 0xA;
        ++v90;
      }

      if (v92 > 5 || (v92 == 5 ? (v93 = !v88) : (v93 = 0), v93))
      {
        LODWORD(v87) = v87 + 1;
      }

      else if (v92 == 5 && v88)
      {
        LODWORD(v87) = (v87 + 1) & 0xFFFFFFFE;
      }

      if (v71 > v90)
      {
        goto LABEL_176;
      }

      v95 = -i;
      if (-i <= 1)
      {
        v97 = -i;
      }

      else
      {
        v96 = -i;
        LODWORD(v97) = v95 - 2;
        v98 = v87 / 0x64;
        *&v71[(v95 - 2)] = *&asciiDigitTable[2 * (v87 % 0x64)];
        if (v95 > 3)
        {
          v99 = v95 - 4;
          *&v71[v96 - 4] = *&asciiDigitTable[2 * (v98 - 100 * ((42949673 * v98) >> 32))];
          v98 = v87 / 0x2710;
          if (v97 < 4)
          {
            LODWORD(v97) = v96 - 4;
          }

          else
          {
            LODWORD(v97) = v96 - 6;
            *&v71[v96 - 6] = *&asciiDigitTable[2 * (v98 - 100 * ((42949673 * v98) >> 32))];
            v98 = v87 / 0xF4240;
            if (v99 >= 4)
            {
              LODWORD(v97) = v96 - 8;
              *&v71[v96 - 8] = *&asciiDigitTable[2 * (v98 - 100 * ((42949673 * v98) >> 32))];
              v98 = v87 / 0x5F5E100;
            }
          }
        }

        LOBYTE(v87) = v98;
      }

      if (v97 == 1)
      {
        *v71 = v87 + 48;
      }

      v75 = &v71[-i];
    }

    else
    {
      v74 = &__dst[a3 - 9];
      if (v71 > v74)
      {
        goto LABEL_176;
      }

      *(v71 + 3) = *&asciiDigitTable[2 * (HIDWORD(v67) % 0x2710 % 0x64)];
      *(v71 + 2) = *&asciiDigitTable[2 * (HIDWORD(v67) % 0x2710 / 0x64)];
      *(v71 + 1) = *&asciiDigitTable[2 * (HIDWORD(v67) / 0x2710 - 100 * ((42949673 * (HIDWORD(v67) / 0x2710)) >> 32))];
      *v71 = *&asciiDigitTable[(HIDWORD(v67) / 0x7A120uLL) & 0x3FFE];
      v75 = v71 + 8;
      v76 = (__PAIR128__(v70, v69) * 0x5F5E100) >> 64;
      v77 = 100000000 * v69;
      v78 = (__PAIR128__(v73, v44) * 0x5F5E100) >> 64;
      if (__PAIR128__(v70, v69) * 0x5F5E100 < __PAIR128__(v78, 100000000 * v44))
      {
        if (v75 > v74)
        {
          goto LABEL_176;
        }

        v79 = ((__PAIR128__(v73, v44) * 0x5F5E100) >> 96) % 0x2710;
        *(v71 + 7) = *&asciiDigitTable[2 * (v79 % 0x64u)];
        *(v71 + 6) = *&asciiDigitTable[2 * (v79 / 0x64u)];
        *(v71 + 5) = *&asciiDigitTable[2 * ((((__PAIR128__(v73, v44) * 0x5F5E100) >> 96) / 0x2710) % 0x64u)];
        v75 = v71 + 16;
        *(v71 + 4) = *&asciiDigitTable[((281474977 * ((__PAIR128__(v73, v44) * 0x5F5E100) >> 96)) >> 47) & 0x3FE];
        v44 *= 100000000;
        v73 = v78;
        v69 = v77;
        v70 = v76;
      }

      if (__PAIR128__(v70, v69) < __PAIR128__(v73, v44))
      {
        while (v75 <= &__dst[a3 - 2])
        {
          v70 = (__PAIR128__(v70, v69) * 0xA) >> 64;
          v69 *= 10;
          v73 = (__PAIR128__(v73, v44) * 0xA) >> 64;
          v44 *= 10;
          v80 = HIDWORD(v73);
          v73 = v73;
          *v75++ = v80 + 48;
          if (__PAIR128__(v70, v69) >= __PAIR128__(v73, v44))
          {
            *(&v82 + 1) = v70;
            *&v82 = v69;
            v81 = v82 >> 36;
            *(&v82 + 1) = v73;
            *&v82 = v44;
            v83 = v82 >> 36;
            goto LABEL_135;
          }
        }

        goto LABEL_176;
      }

      *(&v103 + 1) = v73;
      *&v103 = v44;
      v83 = v103 >> 36;
      *(&v103 + 1) = v70;
      *&v103 = v69;
      v81 = v103 >> 36;
LABEL_135:
      if (v83 + 0x1000000000000000 <= v81)
      {
        v104 = (v81 >> 1) - v83;
        v105 = v81 - (v83 + v81 / 3);
        if (v5)
        {
          v105 = v104;
        }

        if ((v105 & 0xFFFFFFFFFFFFFFFLL) == 0x800000000000000)
        {
          v106 = (*(v75 - 1) - (v105 >> 60)) & 0xFE;
        }

        else
        {
          v106 = *(v75 - 1) - ((v105 + 0x800000000000000) >> 60);
        }

        *(v75 - 1) = v106;
      }
    }

    if (v5)
    {
      v107 = v10 == 54;
    }

    else
    {
      v107 = 0;
    }

    v108 = v75 - v71 - 1;
    if (v10 > 54 || v107 || v12 <= -5)
    {
      *v71 = v71[1];
      if (v108 < 2)
      {
        --v75;
      }

      else
      {
        v71[1] = 46;
      }

      v112 = &__dst[a3 - 5];
      if (v75 > v112)
      {
        goto LABEL_176;
      }

      *v75 = 101;
      if ((v12 & 0x80000000) == 0)
      {
        v113 = 43;
      }

      else
      {
        v113 = 45;
      }

      if ((v12 & 0x80000000) == 0)
      {
        v114 = v12;
      }

      else
      {
        v114 = -v12;
      }

      v75[1] = v113;
      v115 = v75 + 2;
      if (v114 < 0x64)
      {
        v116 = (v75 + 2);
      }

      else
      {
        if (v114 < 0x3E8)
        {
          if (v115 > &__dst[a3 - 4])
          {
            goto LABEL_176;
          }

          v75[2] = (v114 / 0x64u) | 0x30;
          v116 = (v75 + 3);
        }

        else
        {
          if (v115 > v112)
          {
            goto LABEL_176;
          }

          *(v75 + 1) = *&asciiDigitTable[(v114 / 0x32uLL) & 0x7FFFFFE];
          v116 = (v75 + 4);
        }

        v114 %= 0x64u;
      }

      v119 = *&asciiDigitTable[2 * v114];
    }

    else
    {
      if ((v12 & 0x80000000) != 0)
      {
        if (&__dst[a3 - 1 + v12] < v75)
        {
          goto LABEL_176;
        }

        v117 = __dst;
        memmove(&v71[-v12], v71, v75 - v71);
        memset(v71, 48, -v12);
        LODWORD(__dst) = v117;
        v71[1] = 46;
        v75 += -v12;
LABEL_181:
        *v75 = 0;
        return v75 - __dst;
      }

      v109 = v12 + 1;
      v110 = v109 - v108;
      if (v109 < v108)
      {
        v111 = __dst;
        memmove(v71, v71 + 1, v109);
        LODWORD(__dst) = v111;
        v71[v109] = 46;
        goto LABEL_181;
      }

      if (&v75[v12 - v108] > &__dst[a3 - 3])
      {
        goto LABEL_176;
      }

      v118 = __dst;
      memmove(v71, v71 + 1, v75 - v71 - 1);
      memset(v75 - 1, 48, v110);
      LODWORD(__dst) = v118;
      v116 = &v75[v110 - 1];
      v119 = 12334;
    }

    *v116 = v119;
    v75 = (v116 + 1);
    goto LABEL_181;
  }

  if (v4 != 2047)
  {
    v10 = v4 - 1022;
    v9 = (v5 << 11) | 0x8000000000000000;
    goto LABEL_11;
  }

  if (!v5)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      if (a3 >= 4)
      {
        v26 = 6712937;
LABEL_27:
        *__dst = v26;
        return 3;
      }

      goto LABEL_176;
    }

    if (a3 < 5)
    {
      goto LABEL_176;
    }

    __dst[4] = 0;
    v102 = 1718511917;
    goto LABEL_133;
  }

  v7 = __dst;
  if ((v3 & 0x3FFFFFFFFFFFFLL) != 0)
  {
    snprintf(__str, 0x40uLL, "%s%snan(0x%llx)");
  }

  else
  {
    snprintf(__str, 0x40uLL, "%s%snan");
  }

  v100 = strlen(__str);
  if (v100 >= a3)
  {
    result = 0;
    *v7 = 0;
  }

  else
  {
    v101 = v100;
    memcpy(v7, __str, v100 + 1);
    return v101;
  }

  return result;
}

void *swift::runtime::SwiftTLSContext::get(swift::runtime::SwiftTLSContext *this)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 800);
  if (!result)
  {
    v4 = 100;
    context[0] = &v4;
    context[1] = swift::runtime::SwiftTLSContext::get(void)::$_0::__invoke;
    if (swift::runtime::SwiftTLSContext::get(void)::token != -1)
    {
      dispatch_once_f(&swift::runtime::SwiftTLSContext::get(void)::token, context, swift::tls_init_once(long &,unsigned long,void (*)(void *))::{lambda(void *)#1}::__invoke);
    }

    result = swift_slowAlloc(0x10, 7uLL);
    *result = 0;
    result[1] = 0;
    *(StatusReg + 800) = result;
  }

  return result;
}

uint64_t swift::tls_init_once(long &,unsigned long,void (*)(void *))::{lambda(void *)#1}::__invoke(unsigned int **a1)
{
  result = pthread_key_init_np();
  if (result)
  {
    swift::threading::fatal("tls_init_once() failed to set destructor", v2, v3, v4);
  }

  return result;
}

void swift::runtime::SwiftTLSContext::get(void)::$_0::__invoke(void *a1)
{
  if (a1)
  {
    a1;
  }
}

os_log_t swift::runtime::trace::setupLogs(swift::runtime::trace *this, void *a2)
{
  swift::runtime::trace::TracingEnabled = 1;
  result = os_log_create("com.apple.swift", "SectionScan");
  swift::runtime::trace::ScanLog = result;
  return result;
}

void swift::addImageAccessibleFunctionsBlockCallbackUnsafe(swift *this, unint64_t a2, char *a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = &a3[a2];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v22 = v3;
  v23 = v4;
  os_unfair_lock_lock(&unk_1EA79EAF8);
  v5 = qword_1EA79EAF0;
  if (qword_1EA79EAF0)
  {
    v6 = *qword_1EA79EAF0;
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_1EA79EAF0;
  if (v6 >= qword_1EA79EAE0)
  {
    if (2 * v6 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = 2 * v6;
    }

    v9 = malloc_type_malloc((32 * (v8 >> 1)) | 8, 0x1000040504FFAC1uLL);
    if (!v9)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v7 = v9;
    *v9 = 0;
    if (v5)
    {
      if (v6)
      {
        v10 = v9 + 1;
        v11 = (v5 + 8);
        v12 = v9 + 2;
        v13 = v5 + 16;
        v14 = v6;
        do
        {
          *v10 = *v11;
          v15 = v11[1];
          v11 += 2;
          v10[1] = v15;
          v10 += 2;
          v12 += 2;
          v13 += 16;
          --v14;
        }

        while (v14);
      }

      atomic_store(v6, v9);
      v16 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v16 = qword_1EA79EB00;
      v16[1] = v5;
      qword_1EA79EB00 = v16;
    }

    qword_1EA79EAE0 = v8;
    atomic_store(v7, &qword_1EA79EAF0);
  }

  v7[2 * v6 + 1] = v22;
  v7[2 * v6 + 2] = v23;
  atomic_store(v6 + 1, v7);
  __dmb(0xBu);
  if (!qword_1EA79EAE8)
  {
    v17 = qword_1EA79EB00;
    if (qword_1EA79EB00)
    {
      do
      {
        v19 = *v17;
        v18 = v17[1];
        v20 = -1;
        do
        {
          v21 = atomic_load(v18);
          ++v20;
        }

        while (v20 < v21);
        free(v18);
        free(v17);
        v17 = v19;
      }

      while (v19);
    }

    qword_1EA79EB00 = 0;
  }

  os_unfair_lock_unlock(&unk_1EA79EAF8);
}

void swift::addImageAccessibleFunctionsBlockCallback(swift *this, unint64_t a2, char *a3)
{
  if (qword_1EA79EB08 == -1)
  {
  }

  else
  {
    v4 = a3;
    v5 = a2;
    swift::addImageAccessibleFunctionsBlockCallback(this);
    a2 = v5;
    a3 = v4;
  }

  swift::addImageAccessibleFunctionsBlockCallbackUnsafe(this, a2, a3);
}

uint64_t swift::Lazy<anonymous namespace::AccessibleFunctionsState>::defaultInitCallback(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return swift::initializeAccessibleFunctionsLookup(a1);
}

int *swift_findAccessibleFunction(const void *a1, size_t a2)
{
  v88 = *MEMORY[0x1E69E9840];
  if (qword_1EA79EB08 != -1)
  {
    v70 = a2;
    v71 = a1;
    swift::addImageAccessibleFunctionsBlockCallback(a1);
    a1 = v71;
    a2 = v70;
  }

  v85 = a1;
  v86 = a2;
  if (swift::runtime::environment::initializeToken != -1)
  {
    swift::runtime::bincompat::checkBinCompatEnvironmentVariable();
  }

  if (swift::runtime::environment::SWIFT_DUMP_ACCESSIBLE_FUNCTIONS_variable == 1 && swift_findAccessibleFunction::dumpAccessibleFunctionsToken != -1)
  {
    swift_findAccessibleFunction_cold_3();
  }

  do
  {
    explicit = atomic_load_explicit(&qword_1EA79EAC0, memory_order_acquire);
    v3 = atomic_load_explicit(&qword_1EA79EAC8, memory_order_acquire);
    v4 = atomic_load_explicit(&dword_1EA79EABC, memory_order_acquire);
  }

  while (explicit != atomic_load_explicit(&qword_1EA79EAC0, memory_order_acquire));
  if (explicit)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    if (v7)
    {
      if (v7[2])
      {
        v8 = v7[2];
      }

      else
      {
        v8 = 0;
      }

      return v8;
    }
  }

  v9 = v85;
  v10 = v86;
  if (qword_1ED426550 != -1)
  {
    swift_findAccessibleFunction_cold_4();
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy == 1 && !_os_trace_lazy_init_completed_4swift())
  {
    goto LABEL_30;
  }

  if (swift::runtime::trace::LogsToken != -1)
  {
    swift::_searchConformancesByMangledTypeName();
  }

  if (swift::runtime::trace::TracingEnabled == 1)
  {
    v11 = os_signpost_id_generate(swift::runtime::trace::ScanLog);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = swift::runtime::trace::ScanLog;
      if (os_signpost_enabled(swift::runtime::trace::ScanLog))
      {
        *buf = 68157954;
        *&buf[4] = v10;
        *&buf[8] = 2080;
        *&buf[10] = v9;
        _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v12, OS_SIGNPOST_INTERVAL_BEGIN, v11, "section_scan", "accessible function scan for '%.*s'", buf, 0x12u);
      }
    }
  }

  else
  {
LABEL_30:
    v11 = 0;
  }

  atomic_fetch_add_explicit(&qword_1EA79EAE8, 1uLL, memory_order_acquire);
  v13 = qword_1EA79EAF0;
  if (qword_1EA79EAF0 && (v14 = atomic_load_explicit(qword_1EA79EAF0, memory_order_acquire)) != 0)
  {
    v15 = (v13 + 8);
    v16 = v13 + 8 + 16 * v14;
    while (1)
    {
      v8 = *v15 ? *v15 : 0;
      v17 = v15[1];
      if (!v17)
      {
        break;
      }

      v18 = v15[1];
      if (v8 != v17)
      {
        goto LABEL_42;
      }

LABEL_34:
      v15 += 2;
      if (v15 == v16)
      {
        goto LABEL_54;
      }
    }

    v18 = 0;
    if (!v8)
    {
      goto LABEL_34;
    }

LABEL_42:
    v19 = v8;
    while (1)
    {
      SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v19 + *v8, v3);
      if (v3 == v10 && (!v10 || !memcmp(SymbolicMangledNameStringRef, v9, v10)))
      {
        break;
      }

      v8 += 5;
      v19 += 5;
      if (v8 == v18)
      {
        goto LABEL_34;
      }
    }

    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = swift::runtime::trace::ScanLog;
      if (os_signpost_enabled(swift::runtime::trace::ScanLog))
      {
        *buf = 134217984;
        *&buf[4] = v19;
        _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v21, OS_SIGNPOST_INTERVAL_END, v11, "section_scan", "result=%p", buf, 0xCu);
      }
    }

    atomic_fetch_add_explicit(&qword_1EA79EAE8, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
    v23 = v85;
    v22 = v86;
    *buf = v85;
    *&buf[8] = v86;
    os_unfair_lock_lock(&unk_1EA79EAD0);
    v24 = qword_1EA79EAC8;
    v77 = qword_1EA79EAC8 & 3;
    v25 = v77 == 0;
    if ((qword_1EA79EAC8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v25 = 1;
    }

    v78 = v25;
    v79 = qword_1EA79EAC8 & 0xFFFFFFFFFFFFFFFCLL;
    if (v25)
    {
      v26 = 4;
    }

    else
    {
      v26 = *(qword_1EA79EAC8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v81 = v26;
    v28 = dword_1EA79EABC;
    v29 = qword_1EA79EAC0;
    v30 = qword_1EA79EAC0 + 8;
    if (qword_1EA79EAC0)
    {
      v31 = qword_1EA79EAC0 + 8;
    }

    else
    {
      v31 = 0;
    }

    {
      __dmb(0xBu);
      {
        v33 = qword_1EA79EAD8;
        if (qword_1EA79EAD8)
        {
          do
          {
            v34 = *v33;
            free(v33[1]);
            free(v33);
            v33 = v34;
          }

          while (v34);
        }

        goto LABEL_145;
      }

      goto LABEL_146;
    }

    v83 = v31;
    v80 = v24;
    size = v22;
    v76 = v29;
    v73 = (v28 + 1);
    __src = v23;
    if ((1 << v81) / ((1 << v81) - v73) < 4)
    {
      v40 = v24;
    }

    else
    {
      v35 = (v81 + 1);
      v84 = v81;
      if (v35 >= 0x11)
      {
        v36 = 4;
      }

      else
      {
        v36 = 2;
      }

      if (v35 < 9)
      {
        v37 = 1;
      }

      else
      {
        v37 = v36;
      }

      v38 = malloc_type_calloc(2 << v81, v37, 0x48DDA4AEuLL);
      if (!v38)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v39 = v31;
      v72 = v28;
      if (v37 != 1)
      {
        if (v37 == 4)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }
      }

      v40 = v37 | v38;
      *v38 = v81 + 1;
      if (v81)
      {
        v41 = ~(-2 << v81);
        v42 = v24 & 3;
        v43 = v79;
        if (!v77)
        {
          v43 = 0;
        }

        v82 = v43;
        v44 = v40 & 3;
        if ((v40 & 3) != 0)
        {
          v45 = v38 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v45 = 0;
        }

        for (i = 1; !(i >> v84); ++i)
        {
          if (v42 > 1)
          {
            if (v42 == 2)
            {
              LODWORD(v47) = *(v82 + 2 * i);
              if (*(v82 + 2 * i))
              {
                goto LABEL_101;
              }
            }

            else
            {
              LODWORD(v47) = *(v82 + 4 * i);
              if (v47)
              {
LABEL_101:
                for (j = __swift::__runtime::llvm::hash_value(*(v39 + 24 * (v47 - 1)), *(v39 + 24 * (v47 - 1) + 8)); ; j = v50 + 1)
                {
                  v50 = j & v41;
                  if ((j & v41) != 0)
                  {
                    if ((v40 & 3) > 1)
                    {
                      LODWORD(v49) = v44 == 2 ? *(v45 + 2 * v50) : *(v45 + 4 * v50);
                    }

                    else if ((v40 & 3) != 0)
                    {
                      LODWORD(v49) = *(v45 + v50);
                    }

                    else
                    {
                      v49 = (v40 >> (4 * v50)) & 0xF;
                    }

                    if (!v49)
                    {
                      break;
                    }
                  }
                }

                if (v44 == 3)
                {
                  *(v45 + 4 * v50) = v47;
                  v39 = v83;
                  v42 = v80 & 3;
                }

                else
                {
                  v39 = v83;
                  v42 = v80 & 3;
                  if (v44 == 2)
                  {
                    *(v45 + 2 * v50) = v47;
                  }

                  else
                  {
                    *(v45 + v50) = v47;
                  }
                }
              }
            }
          }

          else if (v42)
          {
            LODWORD(v47) = *(v82 + i);
            if (*(v82 + i))
            {
              goto LABEL_101;
            }
          }

          else
          {
            v47 = (v80 >> (4 * i)) & 0xF;
            if (v47)
            {
              goto LABEL_101;
            }
          }
        }
      }

      atomic_store(v40, &qword_1EA79EAC8);
      if (!v78)
      {
        v51 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v39 = v83;
        *v51 = qword_1EA79EAD8;
        v51[1] = v79;
        qword_1EA79EAD8 = v51;
      }

      v28 = v72;
    }

    v52 = v76;
    v53 = v32;
    if (!v76 || v28 >= *v76)
    {
      v54 = v28 + (v28 >> 2);
      v55 = v28;
      if (v54 <= v28 + 1)
      {
        v54 = v28 + 1;
      }

      v28 = malloc_good_size(24 * v54 + 8);
      v56 = malloc_type_malloc(v28, 0x1070040D224386BuLL);
      if (!v56)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v52 = v56;
      *v56 = (v28 - 8) / 0x18;
      LODWORD(v28) = v55;
      if (v76)
      {
        if (v55)
        {
          v57 = v56 + 2;
          v58 = v56 + 6;
          v59 = v76 + 6;
          v60 = v55;
          do
          {
            *v57 = *v30;
            v61 = *(v30 + 16);
            v30 += 24;
            *(v57 + 2) = v61;
            v57 += 6;
            v58 += 6;
            v59 += 6;
            --v60;
          }

          while (v60);
        }

        v62 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v62 = qword_1EA79EAD8;
        v62[1] = v76;
        qword_1EA79EAD8 = v62;
      }

      atomic_store(v52, &qword_1EA79EAC0);
    }

    v63 = (v52 + 24 * v28);
    v63[3] = v19;
    v64 = malloc_type_malloc(size, 0x100004077774924uLL);
    memcpy(v64, __src, size);
    v63[1] = v64;
    v63[2] = size;
    atomic_store(v73, &dword_1EA79EABC);
    if ((v40 & 3) > 1)
    {
      if ((v40 & 3) == 2)
      {
        v65 = v40 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v40 & 3) == 0)
        {
          v65 = 0;
        }

        atomic_store(v73, (v65 + 2 * v53));
      }

      else
      {
        v66 = v40 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v40 & 3) == 0)
        {
          v66 = 0;
        }

        atomic_store(v73, (v66 + 4 * v53));
      }
    }

    else if ((v40 & 3) != 0)
    {
      atomic_store(v73, ((v40 & 0xFFFFFFFFFFFFFFFCLL) + v53));
    }

    else
    {
      atomic_store((v73 << (4 * v53)) | v40, &qword_1EA79EAC8);
    }

    __dmb(0xBu);
    {
      v67 = qword_1EA79EAD8;
      if (qword_1EA79EAD8)
      {
        do
        {
          v68 = *v67;
          free(v67[1]);
          free(v67);
          v67 = v68;
        }

        while (v68);
      }

LABEL_145:
      qword_1EA79EAD8 = 0;
    }

LABEL_146:
    os_unfair_lock_unlock(&unk_1EA79EAD0);
  }

  else
  {
LABEL_54:
    atomic_fetch_add_explicit(&qword_1EA79EAE8, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = swift::runtime::trace::ScanLog;
      if (os_signpost_enabled(swift::runtime::trace::ScanLog))
      {
        *buf = 134217984;
        *&buf[4] = 0;
        _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v27, OS_SIGNPOST_INTERVAL_END, v11, "section_scan", "result=%p", buf, 0xCu);
      }
    }

    return 0;
  }

  return v8;
}