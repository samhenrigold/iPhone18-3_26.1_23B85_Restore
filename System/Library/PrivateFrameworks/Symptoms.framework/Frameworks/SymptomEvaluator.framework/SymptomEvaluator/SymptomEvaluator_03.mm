void *InitializeDefrules(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x10u, 0x40uLL, DeallocateDefruleData);
  InitializeEngine(a1);
  InitializeAgenda(a1);
  InitializePatterns(a1);
  *(*(*(a1 + 48) + 128) + 8) = RegisterModuleItem(a1, "defrule", AllocateModule, ReturnModule, BloadDefruleModuleReference, 0, EnvFindDefruleInModule);
  AddReservedPatternSymbol(a1, "and", 0);
  AddReservedPatternSymbol(a1, "not", 0);
  AddReservedPatternSymbol(a1, "or", 0);
  AddReservedPatternSymbol(a1, "test", 0);
  AddReservedPatternSymbol(a1, "logical", 0);
  AddReservedPatternSymbol(a1, "exists", 0);
  AddReservedPatternSymbol(a1, "forall", 0);
  DefruleBasicCommands(a1);
  DefruleCommands(a1);
  **(*(a1 + 48) + 128) = AddConstruct(a1, "defrule", "defrules", ParseDefrule, EnvFindDefrule, GetConstructNamePointer, GetConstructPPForm, GetConstructModuleItem, EnvGetNextDefrule, SetNextConstruct, EnvIsDefruleDeletable, EnvUndefrule, ReturnDefrule);
  result = gm3(a1, 0x320uLL);
  v3 = 0;
  *(*(*(a1 + 48) + 128) + 24) = result;
  do
  {
    *(*(*(*(a1 + 48) + 128) + 24) + v3) = 0;
    v3 += 8;
  }

  while (v3 != 800);
  v4 = *(a1 + 48);
  v5 = *(v4 + 128);
  *(v5 + 32) = 1;
  *(v5 + 40) = 0;
  *(*(v4 + 128) + 48) = 0;
  return result;
}

uint64_t DeallocateDefruleData(uint64_t a1)
{
  result = Bloaded(a1);
  if (!result)
  {
    DoForAllConstructs(a1, DestroyDefruleAction, *(*(*(a1 + 48) + 128) + 8), 0, 0);
    NextDefmodule = EnvGetNextDefmodule(a1, 0);
    if (NextDefmodule)
    {
      v4 = NextDefmodule;
      do
      {
        ModuleItem = GetModuleItem(a1, v4, *(*(*(a1 + 48) + 128) + 8));
        v6 = *(ModuleItem + 32);
        if (v6)
        {
          do
          {
            v7 = *(v6 + 48);
            v8 = *(a1 + 48);
            *(*(v8 + 472) + 32) = v6;
            **(*(v8 + 472) + 32) = *(*(*(v8 + 472) + 40) + 448);
            *(*(*(v8 + 472) + 40) + 448) = *(*(v8 + 472) + 32);
            v6 = v7;
          }

          while (v7);
        }

        v9 = *(ModuleItem + 24);
        if (v9)
        {
          do
          {
            v10 = *(v9 + 24);
            v11 = *(a1 + 48);
            *(*(v11 + 472) + 32) = v9;
            **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 320);
            *(*(*(v11 + 472) + 40) + 320) = *(*(v11 + 472) + 32);
            v9 = v10;
          }

          while (v10);
        }

        v12 = *(a1 + 48);
        *(*(v12 + 472) + 32) = ModuleItem;
        **(*(v12 + 472) + 32) = *(*(*(v12 + 472) + 40) + 320);
        *(*(*(v12 + 472) + 40) + 320) = *(*(v12 + 472) + 32);
        v4 = EnvGetNextDefmodule(a1, v4);
      }

      while (v4);
    }

    v13 = *(*(*(a1 + 48) + 128) + 24);

    return rm(a1, v13, 0x320uLL);
  }

  return result;
}

BOOL EnvIsDefruleDeletable(uint64_t a1, uint64_t a2)
{
  result = ConstructsDeletable(a1);
  if (result)
  {
    if (a2)
    {
      while ((*(a2 + 56) & 0x80000000) == 0)
      {
        a2 = *(a2 + 96);
        if (!a2)
        {
          return *(*(*(a1 + 48) + 144) + 92) == 0;
        }
      }

      return 0;
    }

    else
    {
      return *(*(*(a1 + 48) + 144) + 92) == 0;
    }
  }

  return result;
}

uint64_t EnvGetDisjunctCount(uint64_t a1, uint64_t a2)
{
  for (result = 0; a2; a2 = *(a2 + 96))
  {
    ++result;
  }

  return result;
}

uint64_t EnvGetNthDisjunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (result = a2; result; result = *(result + 96))
  {
    if (!--a3)
    {
      break;
    }
  }

  return result;
}

void AddBetaMemoriesToJoin(uint64_t a1, int *a2)
{
  if (!*(a2 + 7) && !*(a2 + 8))
  {
    v4 = *a2;
    if ((*a2 & 0x1D) == 1)
    {
      *(a2 + 7) = 0;
    }

    else
    {
      v5 = *(a1 + 48);
      v6 = *(v5 + 472);
      v7 = *(*(v6 + 40) + 256);
      if (*(a2 + 11))
      {
        if (v7)
        {
          *(v6 + 32) = v7;
          *(*(*(v5 + 472) + 40) + 256) = **(*(v5 + 472) + 32);
          v8 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v8 = genalloc(a1, 0x20uLL);
        }

        *(a2 + 7) = v8;
        v10 = genalloc(a1, 0x88uLL);
        *(*(a2 + 7) + 16) = v10;
        v10[16] = 0;
        *(v10 + 6) = 0u;
        *(v10 + 7) = 0u;
        *(v10 + 4) = 0u;
        *(v10 + 5) = 0u;
        *(v10 + 2) = 0u;
        *(v10 + 3) = 0u;
        v11 = 17;
        *v10 = 0u;
        *(v10 + 1) = 0u;
      }

      else
      {
        if (v7)
        {
          *(v6 + 32) = v7;
          *(*(*(v5 + 472) + 40) + 256) = **(*(v5 + 472) + 32);
          v9 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v9 = genalloc(a1, 0x20uLL);
        }

        *(a2 + 7) = v9;
        v12 = genalloc(a1, 8uLL);
        *(*(a2 + 7) + 16) = v12;
        *v12 = 0;
        v11 = 1;
      }

      v13 = *(a2 + 7);
      *v13 = v11;
      v13[1] = 0;
      v13[3] = 0;
      v4 = *a2;
      if ((*a2 & 1) != 0 && (v4 & 0x1C) != 0)
      {
        CreateEmptyPartialMatch(a1);
        **(*(a2 + 7) + 16) = v14;
        *(**(*(a2 + 7) + 16) + 16) = a2;
        v4 = *a2;
      }
    }

    if ((v4 & 4) != 0)
    {
      v15 = *(a1 + 48);
      v16 = *(v15 + 472);
      v17 = *(*(v16 + 40) + 256);
      if (*(a2 + 11))
      {
        if (v17)
        {
          *(v16 + 32) = v17;
          *(*(*(v15 + 472) + 40) + 256) = **(*(v15 + 472) + 32);
          v18 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v18 = genalloc(a1, 0x20uLL);
        }

        *(a2 + 8) = v18;
        *(*(a2 + 8) + 16) = genalloc(a1, 0x88uLL);
        v24 = genalloc(a1, 0x88uLL);
        v25 = *(a2 + 8);
        *(v25 + 24) = v24;
        v26 = *(v25 + 16);
        *v26 = 0u;
        *(v26 + 16) = 0u;
        *(v26 + 32) = 0u;
        *(v26 + 48) = 0u;
        *(v26 + 64) = 0u;
        *(v26 + 80) = 0u;
        *(v26 + 96) = 0u;
        *(v26 + 112) = 0u;
        *(v26 + 128) = 0;
        v27 = *(*(a2 + 8) + 24);
        *(v27 + 128) = 0;
        *(v27 + 96) = 0u;
        *(v27 + 112) = 0u;
        *(v27 + 64) = 0u;
        *(v27 + 80) = 0u;
        *(v27 + 32) = 0u;
        *(v27 + 48) = 0u;
        *v27 = 0u;
        *(v27 + 16) = 0u;
        v28 = *(a2 + 8);
        v29 = xmmword_232816A90;
      }

      else
      {
        if (v17)
        {
          *(v16 + 32) = v17;
          *(*(*(v15 + 472) + 40) + 256) = **(*(v15 + 472) + 32);
          v23 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v23 = genalloc(a1, 0x20uLL);
        }

        *(a2 + 8) = v23;
        *(*(a2 + 8) + 16) = genalloc(a1, 8uLL);
        v32 = genalloc(a1, 8uLL);
        v33 = *(a2 + 8);
        *(v33 + 24) = v32;
        **(v33 + 16) = 0;
        **(*(a2 + 8) + 24) = 0;
        v28 = *(a2 + 8);
        v29 = xmmword_232816AA0;
      }
    }

    else
    {
      if (*(a2 + 13))
      {
        *(a2 + 8) = 0;
        return;
      }

      v19 = *(a1 + 48);
      v20 = *(v19 + 472);
      v21 = *(*(v20 + 40) + 256);
      if (v21)
      {
        *(v20 + 32) = v21;
        *(*(*(v19 + 472) + 40) + 256) = **(*(v19 + 472) + 32);
        v22 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v22 = genalloc(a1, 0x20uLL);
      }

      *(a2 + 8) = v22;
      *(*(a2 + 8) + 16) = genalloc(a1, 8uLL);
      *(*(a2 + 8) + 24) = genalloc(a1, 8uLL);
      CreateEmptyPartialMatch(a1);
      **(*(a2 + 8) + 16) = v30;
      v31 = *(*(a2 + 8) + 16);
      *(*v31 + 16) = a2;
      **v31 |= 4u;
      **(*(a2 + 8) + 24) = **(*(a2 + 8) + 16);
      v28 = *(a2 + 8);
      v29 = vdupq_n_s64(1uLL);
    }

    *v28 = v29;
  }
}

void *AllocateModule(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 472);
  v3 = *(*(v2 + 40) + 320);
  if (v3)
  {
    *(v2 + 32) = v3;
    *(*(*(v1 + 472) + 40) + 320) = **(*(v1 + 472) + 32);
    result = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x28uLL);
  }

  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t ReturnModule(uint64_t a1, uint64_t a2)
{
  result = FreeConstructHeaderModule(a1, a2, **(*(a1 + 48) + 128));
  v5 = *(a1 + 48);
  *(*(v5 + 472) + 32) = a2;
  **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 320);
  *(*(*(v5 + 472) + 40) + 320) = *(*(v5 + 472) + 32);
  return result;
}

uint64_t CallDeffunction(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v22, 0, sizeof(v22));
  *(a4 + 8) = 2;
  result = EnvFalseSymbol(a1);
  *(a4 + 16) = result;
  v9 = a1[6];
  v10 = *(v9 + 352);
  *(v10 + 8) = 0;
  if (!*(v10 + 12))
  {
    v11 = *(v9 + 440);
    v12 = *(v11 + 112);
    v23[0] = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    v23[1] = v12;
    *(v11 + 112) = v23;
    v13 = ExecutingConstruct(a1);
    SetExecutingConstruct(a1, 1);
    v14 = a1[6];
    v15 = *(v14 + 184);
    v16 = *(v15 + 144);
    *(v15 + 144) = a2;
    ++*(*(v14 + 352) + 16);
    ++*(a2 + 52);
    v17 = CountArguments(a3);
    DefruleName = EnvGetDefruleName(a1, a2);
    PushProcParameters(a1, a3, v17, DefruleName, "deffunction", UnboundDeffunctionErr);
    v19 = a1[6];
    if (*(v19[44] + 8))
    {
      v20 = v19 + 44;
      --*(a2 + 52);
      *(v19[23] + 144) = v16;
    }

    else
    {
      if (*(a2 + 56))
      {
        WatchDeffunction(a1, ">> ");
        v19 = a1[6];
      }

      StartProfile(a1, v22, (a2 + 40), *(v19[15] + 72));
      EvaluateProcActions(a1, **(a2 + 16), *(a2 + 64), *(a2 + 80), a4, UnboundDeffunctionErr);
      EndProfile(a1, v22);
      if (*(a2 + 56))
      {
        WatchDeffunction(a1, "<< ");
      }

      **(a1[6] + 104) = 0;
      --*(a2 + 52);
      PopProcParameters(a1);
      v21 = a1[6];
      *(*(v21 + 184) + 144) = v16;
      v20 = (v21 + 352);
    }

    --*(*v20 + 16);
    RestorePriorGarbageFrame(a1, v23, v12, a4);
    CallPeriodicTasks(a1);
    return SetExecutingConstruct(a1, v13);
  }

  return result;
}

uint64_t UnboundDeffunctionErr(uint64_t a1)
{
  EnvPrintRouter(a1, "werror", "deffunction ");
  DefruleName = EnvGetDefruleName(a1, *(*(*(a1 + 48) + 184) + 144));
  EnvPrintRouter(a1, "werror", DefruleName);

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t WatchDeffunction(uint64_t a1, char *a2)
{
  EnvPrintRouter(a1, "wtrace", "DFN ");
  EnvPrintRouter(a1, "wtrace", a2);
  v4 = **(*(*(*(a1 + 48) + 184) + 144) + 16);
  if (v4 != EnvGetCurrentModule(a1))
  {
    ConstructNameString = EnvGetConstructNameString(a1, **(*(*(*(a1 + 48) + 184) + 144) + 16));
    EnvPrintRouter(a1, "wtrace", ConstructNameString);
    EnvPrintRouter(a1, "wtrace", "::");
  }

  EnvPrintRouter(a1, "wtrace", *(**(*(*(a1 + 48) + 184) + 144) + 24));
  EnvPrintRouter(a1, "wtrace", " ED:");
  PrintLongInteger(a1, "wtrace", *(*(*(a1 + 48) + 352) + 16));

  return PrintProcParamArray(a1, "wtrace");
}

void *CreateMultifield2(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = 16 * v3 + 24;
  if (v4 <= 0x1F3 && (v5 = *(a1 + 48), v6 = *(v5 + 472), (v7 = *(*(v6 + 40) + 8 * v4)) != 0))
  {
    *(v6 + 32) = v7;
    *(*(*(v5 + 472) + 40) + 8 * v4) = **(*(v5 + 472) + 32);
    result = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    result = genalloc(a1, v4);
  }

  *result = 0;
  result[1] = a2;
  result[2] = 0;
  return result;
}

uint64_t ReturnMultifield(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2[1];
    if (v2)
    {
      v3 = 16 * v2 + 24;
    }

    else
    {
      v3 = 40;
    }

    v4 = *(result + 48);
    v5 = *(v4 + 472);
    *(v5 + 48) = v3;
    if (v3 > 0x1F3)
    {
      return genfree(result, a2, v3);
    }

    else
    {
      *(v5 + 32) = a2;
      **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 8 * *(*(v4 + 472) + 48));
      *(*(*(v4 + 472) + 40) + 8 * *(*(v4 + 472) + 48)) = *(*(v4 + 472) + 32);
    }
  }

  return result;
}

uint64_t MultifieldInstall(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    ++*a2;
    if (v2)
    {
      v3 = result;
      v4 = (a2 + 32);
      do
      {
        v5 = *(v4 - 4);
        v6 = *v4;
        v4 += 2;
        result = AtomInstall(v3, v5, v6);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *MultifieldDeinstall(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    --*a2;
    if (v2)
    {
      v3 = result;
      v4 = (a2 + 32);
      do
      {
        v5 = *(v4 - 4);
        v6 = *v4;
        v4 += 2;
        result = AtomDeinstall(v3, v5, v6);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *StringToMultifield(uint64_t a1, char *__s)
{
  v18 = 0;
  v19 = 0;
  __s1 = 0;
  OpenStringSource(a1, "multifield-str", __s, 0);
  GetToken(a1, "multifield-str", &v18);
  v3 = 0;
  v4 = 0;
  for (i = 0; ; i = v11)
  {
    v6 = v18;
    if (v18 < 4u || v18 == 8)
    {
      v8 = v19;
      v9 = a1;
      goto LABEL_8;
    }

    if (v18 == 172)
    {
      break;
    }

    v8 = EnvAddSymbol(a1, __s1);
    v9 = a1;
    v6 = 3;
LABEL_8:
    v10 = GenConstant(v9, v6, v8);
    v11 = v10;
    v12 = v10;
    if (v4)
    {
      i[3] = v10;
      v12 = v4;
    }

    GetToken(a1, "multifield-str", &v18);
    ++v3;
    v4 = v12;
  }

  CloseStringSource(a1, "multifield-str");
  Multifield = EnvCreateMultifield(a1, v3);
  v14 = Multifield;
  if (v4)
  {
    v15 = Multifield + 4;
    v16 = v4;
    do
    {
      *(v15 - 4) = *v16;
      *v15 = *(v16 + 8);
      v15 += 2;
      v16 = *(v16 + 24);
    }

    while (v16);
  }

  ReturnExpression(a1, v4);
  return v14;
}

void *EnvCreateMultifield(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v4 = 16 * a2 + 24;
  }

  else
  {
    v4 = 40;
  }

  if (v4 <= 0x1F3 && (v5 = *(a1 + 48), v6 = *(v5 + 472), (v7 = *(*(v6 + 40) + 8 * v4)) != 0))
  {
    *(v6 + 32) = v7;
    *(*(*(v5 + 472) + 40) + 8 * v4) = **(*(v5 + 472) + 32);
    v8 = *(a1 + 48);
    result = *(*(v8 + 472) + 32);
  }

  else
  {
    result = genalloc(a1, v4);
    v8 = *(a1 + 48);
  }

  *result = 0;
  result[1] = a2;
  result[2] = 0;
  result[2] = *(*(*(v8 + 440) + 112) + 56);
  *(*(*(v8 + 440) + 112) + 56) = result;
  v10 = *(*(v8 + 440) + 112);
  *v10 = 1;
  if (!*(v10 + 64))
  {
    *(v10 + 64) = result;
  }

  return result;
}

void *DOToMultifield(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 4)
  {
    return 0;
  }

  Multifield2 = CreateMultifield2(a1, *(a2 + 32) - *(a2 + 24) + 1);
  memcpy(Multifield2 + 3, (*(a2 + 16) + 16 * *(a2 + 24) + 24), 16 * Multifield2[1]);
  return Multifield2;
}

uint64_t AddToMultifieldList(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  *(a2 + 16) = *(*(*(v2 + 440) + 112) + 56);
  *(*(*(v2 + 440) + 112) + 56) = a2;
  v3 = *(*(v2 + 440) + 112);
  *v3 = 1;
  if (!*(v3 + 64))
  {
    *(v3 + 64) = a2;
  }

  return result;
}

void *DuplicateMultifield(uint64_t a1, uint64_t a2, void *a3)
{
  *(a2 + 8) = 4;
  *(a2 + 24) = 0;
  v5 = a3[4] - a3[3];
  *(a2 + 32) = v5;
  Multifield2 = CreateMultifield2(a1, v5 + 1);
  *(a2 + 16) = Multifield2;
  v7 = Multifield2 + 3;
  v8 = (a3[2] + 16 * a3[3] + 24);
  v9 = 16 * *(a2 + 32) + 16;

  return memcpy(v7, v8, v9);
}

void *CopyMultifield(uint64_t a1, uint64_t a2)
{
  Multifield2 = CreateMultifield2(a1, *(a2 + 8));
  memcpy(Multifield2 + 3, (a2 + 24), 16 * *(a2 + 8));
  return Multifield2;
}

void *StoreInMultifield(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v8 = CountArguments(a3);
  if (v8)
  {
    v9 = v8;
    memset(v35, 0, sizeof(v35));
    v10 = 48 * v8;
    v11 = gm3(a1, v10);
    v12 = v11;
    if (v9 < 1)
    {
      v13 = 0;
LABEL_14:
      if (a4)
      {
        Multifield = EnvCreateMultifield(a1, v13);
      }

      else
      {
        Multifield = CreateMultifield2(a1, v13);
      }

      if (v9 >= 1)
      {
        v21 = 0;
        v22 = 1;
        do
        {
          v23 = &v12[6 * v21];
          v24 = *(v23 + 4);
          if (v24 != 175)
          {
            if (v24 == 4)
            {
              v26 = v23[3];
              v25 = v23[4];
              if (v26 <= v25)
              {
                v27 = v23[2];
                v28 = v22 + v25 - v26 + 1;
                v29 = v25 - v26 + 1;
                v30 = &Multifield[2 * v22 + 2];
                v31 = (v27 + 16 * v26 + 32);
                do
                {
                  *(v30 - 4) = *(v31 - 4);
                  v32 = *v31;
                  v31 += 2;
                  *v30 = v32;
                  v30 += 2;
                  --v29;
                }

                while (v29);
                v22 = v28;
              }
            }

            else
            {
              v33 = &Multifield[2 * v22 + 1];
              *v33 = v24;
              *(v33 + 8) = v23[2];
              ++v22;
            }
          }

          ++v21;
        }

        while (v21 != v9);
      }

      *(a2 + 8) = 4;
      *(a2 + 24) = 0;
      *(a2 + 32) = v13 - 1;
    }

    else
    {
      v13 = 0;
      v14 = (v11 + 3);
      v34 = vdupq_n_s64(1uLL);
      v15 = v9;
      while (1)
      {
        EvaluateExpression(a1, v5, v35);
        if (*(*(*(a1 + 48) + 352) + 8))
        {
          break;
        }

        v16 = v35[0].u16[4];
        v14[-1].i16[0] = v35[0].i16[4];
        v14[-1].i64[1] = v35[1].i64[0];
        v17 = xmmword_232816AA0;
        if (v16 != 175)
        {
          if (v16 == 4)
          {
            v17 = vaddq_s64(*(&v35[1] + 8), v34);
          }

          else
          {
            v17.i64[0] = -1;
            v17.i64[1] = -1;
          }
        }

        v13 = v13 - v17.i64[0] + v17.i64[1] + 1;
        v18.i64[0] = -1;
        v18.i64[1] = -1;
        *v14 = vaddq_s64(v17, v18);
        v14 += 3;
        v5 = *(v5 + 24);
        if (!--v15)
        {
          goto LABEL_14;
        }
      }

      *(a2 + 8) = 4;
      *(a2 + 24) = xmmword_2328169C0;
      if (a4)
      {
        Multifield = EnvCreateMultifield(a1, 0);
      }

      else
      {
        Multifield = CreateMultifield2(a1, 0);
      }
    }

    *(a2 + 16) = Multifield;
    return rm(a1, v12, v10);
  }

  else
  {
    *(a2 + 8) = 4;
    *(a2 + 24) = xmmword_2328169C0;
    if (a4)
    {
      result = EnvCreateMultifield(a1, 0);
    }

    else
    {
      result = CreateMultifield2(a1, 0);
    }

    *(a2 + 16) = result;
  }

  return result;
}

uint64_t MultifieldDOsEqual(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a1[4] - v2;
  v4 = a2[3];
  if (v3 == a2[4] - v4)
  {
    v5 = __CFADD__(v3, 1);
    v6 = v3 + 1;
    if (v5)
    {
      return 1;
    }

    v7 = (a2[2] + 16 * v4 + 24);
    v8 = (a1[2] + 16 * v2 + 24);
    while (*v8 == *v7 && *(v8 + 1) == *(v7 + 1))
    {
      v10 = v6-- > 1;
      v8 += 8 * v10;
      v7 += 8 * v10;
      if (!v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MultifieldsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    if (v2 < 1)
    {
      return 1;
    }

    v3 = (a2 + 32);
    for (i = (a1 + 32); ; i += 2)
    {
      v5 = *(i - 4);
      if (v5 != *(v3 - 4))
      {
        break;
      }

      v6 = *i;
      v7 = *v3;
      if (v5 == 4)
      {
        result = MultifieldsEqual(v6, v7);
        if (!result)
        {
          return result;
        }
      }

      else if (v6 != v7)
      {
        return 0;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t HashMultifield(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 0;
    v5 = -v2;
    v6 = (a1 + 32);
    v7 = 29;
    while (1)
    {
      v8 = *(v6 - 4);
      if (v8 > 3)
      {
        if (v8 == 6)
        {
          v9 = *v6;
        }

        else
        {
          if (v8 != 5)
          {
            if (v8 == 4)
            {
              v4 += HashMultifield(*v6, a2);
            }

            goto LABEL_17;
          }

          v9 = *(*v6 + 24);
        }

        v4 += v7 * v9;
      }

      else if (v8 - 2 < 2)
      {
        v4 += HashSymbol(*(*v6 + 24), a2) * v7;
      }

      else if (*(v6 - 4))
      {
        if (v8 == 1)
        {
          v4 += *(*v6 + 24) + *(*v6 + 24) * v7;
        }
      }

      else
      {
        v4 += *(*v6 + 24) * v7 + *(*v6 + 24);
      }

LABEL_17:
      ++v7;
      v6 += 2;
      if (v5 + v7 == 29)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t *ImplodeMultifield(uint64_t a1, void *a2)
{
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v3 = a2[3];
  if (v3 > a2[4])
  {
    return EnvAddSymbol(a1, "");
  }

  v5 = 0;
  v6 = a2[2] + 24;
  do
  {
    v7 = (v6 + 16 * v3);
    v8 = *v7;
    if (v8 == 3)
    {
      v10 = *(*(v7 + 1) + 24);
      v5 += strlen(v10) + 3;
      while (1)
      {
        v11 = *v10;
        if (v11 == 34 || v11 == 92)
        {
          ++v5;
        }

        else if (!*v10)
        {
          goto LABEL_17;
        }

        ++v10;
      }
    }

    if (v8 == 1)
    {
      v9 = LongIntegerToString(a1, *(*(v7 + 1) + 24));
    }

    else if (*v7)
    {
      WORD4(v36) = *v7;
      *&v37 = *(v7 + 1);
      v9 = DataObjectToString(a1, &v36);
    }

    else
    {
      v9 = FloatToString(a1, *(*(v7 + 1) + 24));
    }

    v5 += strlen(v9) + 1;
LABEL_17:
    v12 = v3++ < a2[4];
  }

  while (v12);
  if (!v5)
  {
    return EnvAddSymbol(a1, "");
  }

  v13 = gm2(a1, v5);
  v14 = a2[3];
  if (v14 <= a2[4])
  {
    v15 = 0;
    do
    {
      v17 = (v6 + 16 * v14);
      v18 = *v17;
      if (v18 == 3)
      {
        v27 = *(*(v17 + 1) + 24);
        v13[v15] = 34;
        while (1)
        {
          v28 = v15 + 1;
          v29 = *v27;
          if (v29 == 34 || v29 == 92)
          {
            v13[v28] = 92;
            v28 = v15 + 2;
          }

          else if (!*v27)
          {
            v13[v28] = 34;
            v15 += 2;
            goto LABEL_44;
          }

          v30 = *v27++;
          v13[v28] = v30;
          v15 = v28;
        }
      }

      if (v18 == 1)
      {
        v23 = LongIntegerToString(a1, *(*(v17 + 1) + 24));
        v24 = *v23;
        if (*v23)
        {
          v25 = v23 + 1;
          do
          {
            v13[v15++] = v24;
            v26 = *v25++;
            v24 = v26;
          }

          while (v26);
        }
      }

      else if (*v17)
      {
        WORD4(v36) = *v17;
        *&v37 = *(v17 + 1);
        v31 = DataObjectToString(a1, &v36);
        v32 = *v31;
        if (*v31)
        {
          v33 = (v31 + 1);
          do
          {
            v13[v15++] = v32;
            v34 = *v33++;
            v32 = v34;
          }

          while (v34);
        }
      }

      else
      {
        v19 = FloatToString(a1, *(*(v17 + 1) + 24));
        v20 = *v19;
        if (*v19)
        {
          v21 = v19 + 1;
          do
          {
            v13[v15++] = v20;
            v22 = *v21++;
            v20 = v22;
          }

          while (v22);
        }
      }

LABEL_44:
      v13[v15++] = 32;
      v12 = v14++ < a2[4];
    }

    while (v12);
  }

  else
  {
    v15 = 0;
  }

  v13[v15 - 1] = 0;
  v16 = EnvAddSymbol(a1, v13);
  rm(a1, v13, v5);
  return v16;
}

void *as_setup(const char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "whois.radb.net";
  }

  *&v12.sa_data[10] = 0;
  *&v12.sa_data[2] = 0;
  *&v12.sa_len = 528;
  v2 = getservbyname("whois", "tcp");
  if (v2)
  {
    s_port = v2->s_port;
  }

  else
  {
    warnx("warning: whois/tcp service not found");
    LOWORD(s_port) = 11008;
  }

  *v12.sa_data = s_port;
  if (inet_aton(v1, &v12.sa_data[2]))
  {
    v4 = socket(2, 1, 0);
    if (v4 != -1)
    {
      v5 = v4;
      if (!connect(v4, &v12, 0x10u))
      {
        goto LABEL_9;
      }

LABEL_18:
      close(v5);
      warn("connect");
      return 0;
    }

LABEL_20:
    warn("socket");
    return 0;
  }

  v9 = gethostbyname(v1);
  if (!v9 || (v10 = v9, !*v9->h_addr_list))
  {
    as_setup_cold_1(v1);
    return 0;
  }

  v11 = socket(2, 1, 0);
  if (v11 == -1)
  {
    goto LABEL_20;
  }

  v5 = v11;
  while (1)
  {
    __memcpy_chk();
    ++v10->h_addr_list;
    if (!connect(v5, &v12, 0x10u))
    {
      break;
    }

    if (!*v10->h_addr_list)
    {
      goto LABEL_18;
    }
  }

LABEL_9:
  v6 = fdopen(v5, "r+");
  if (!v6)
  {
    warn("fdopen");
    return 0;
  }

  v7 = v6;
  fwrite("!!\n", 3uLL, 1uLL, v6);
  fflush(v7);
  result = malloc_type_malloc(8uLL, 0xAFACDBE5uLL);
  if (result)
  {
    *result = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t as_lookup(FILE **a1, const char *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = 32;
  if (a3 == 30)
  {
    v5 = 128;
  }

  v10 = 0;
  fprintf(v4, "!r%s/%d,l\n", a2, v5);
  fflush(*a1);
  if (fgets(__s, 1024, *a1))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v12[1016] = 0;
      if ((v7 & 1) != 0 && (v6 = __s[0], __s[0] == 65))
      {
        sscanf(__s, "A%d\n");
      }

      else
      {
        if (!v10)
        {
          v6 = __s[0];
        }

        if (v6 != 65)
        {
          return 0;
        }

        v10 -= strlen(__s);
        if (!strncasecmp(__s, "origin:", 7uLL))
        {
          sscanf(v12, " AS%u");
        }
      }

      v8 = fgets(__s, 1024, *a1);
      v7 = 0;
      v6 = 65;
    }

    while (v8);
  }

  return 0;
}

void as_shutdown(FILE **a1)
{
  fwrite("!q\n", 3uLL, 1uLL, *a1);
  fclose(*a1);

  free(a1);
}

const char *findsaddr(__int128 *a1, _OWORD *a2, _WORD *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  bzero(&__buf, 0x25CuLL);
  v25 = 1029;
  v27 = 0x2100000807;
  v6 = socket(17, 3, 0);
  if (v6 < 0)
  {
    v17 = __error();
    strerror(*v17);
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "socket: %.128s");
    return v16;
  }

  v7 = v6;
  v8 = getpid();
  v29 = 1;
  v31 = *a1;
  v9 = v31;
  if ((v31 & 3) != 0)
  {
    v9 = (v31 & 0xFC) + 4;
  }

  v10 = v9 + 92;
  __buf = v9 + 92;
  v11 = write(v7, &__buf, v9 + 92);
  if (v11 < 0)
  {
    v18 = __error();
    strerror(*v18);
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "write: %.128s");
LABEL_20:
    close(v7);
    return v16;
  }

  if (v11 != v10)
  {
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "short write (%zd != %zd)");
    goto LABEL_20;
  }

  v12 = &v31;
  do
  {
    bzero(&__buf, 0x25CuLL);
    v13 = read(v7, &__buf, 0x25CuLL);
    if (v13 < 0)
    {
      v19 = __error();
      strerror(*v19);
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "read: %.128s");
      goto LABEL_20;
    }
  }

  while (v29 != 1 || v28 != v8);
  v15 = v13;
  close(v7);
  if (v25 == 5)
  {
    if (v15 >= __buf)
    {
      if (!__errnum)
      {
        v21 = 1;
        v16 = "failed!";
        while (1)
        {
          if ((HIDWORD(v27) & v21) != 0)
          {
            if (v21 == 32 && v12[1] == 2 && *(v12 + 1))
            {
              v16 = 0;
              *a2 = *v12;
              *a3 = v26;
              return v16;
            }

            v22 = (*v12 & 0xFC) + 4;
            if ((*v12 & 3) == 0)
            {
              v22 = *v12;
            }

            v23 = &v12[v22];
            if (*v12)
            {
              v12 = v23;
            }

            else
            {
              v12 += 4;
            }
          }

          v21 *= 2;
          if (!v21)
          {
            return v16;
          }
        }
      }

      strerror(__errnum);
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "rtm_errno: %.128s");
    }

    else
    {
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "bad msglen %d > %zd");
    }
  }

  else
  {
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "bad version %d");
  }

  return v16;
}

uint64_t ifaddrlist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v34 = 0u;
  v10 = socket(2, 2, 0);
  if (v10 < 0)
  {
    v24 = __error();
    v25 = strerror(*v24);
    snprintf(v8, v6, "socket: %s", v25);
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v30 = 0x8000;
  v31 = v36;
  if (ioctl(v10, 0xC00C6924uLL, &v30) < 0 || v30 <= 0x1F)
  {
    if (*__error() == 22)
    {
      snprintf(v8, v6, "SIOCGIFCONF: ifreq struct too small (%d bytes)");
    }

    else
    {
      v26 = __error();
      strerror(*v26);
      snprintf(v8, v6, "SIOCGIFCONF: %s");
    }

    close(v11);
    return 0xFFFFFFFFLL;
  }

  if (v30 <= 0)
  {
    close(v11);
    v13 = 0;
LABEL_38:
    *v9 = v33;
    return v13;
  }

  v12 = 0;
  v13 = 0;
  v14 = &v36[v30];
  v15 = v36;
  v16 = v33;
  while (1)
  {
    v17 = v15[16];
    if (v17 >= 0x10)
    {
      v18 = v17 + 16;
    }

    else
    {
      v18 = 32;
    }

    if (v15[17] != 2)
    {
      goto LABEL_27;
    }

    v19 = 0;
    while (1)
    {
      v20 = v15[v19];
      *(&v34 + v19) = v20;
      if (!v20)
      {
        break;
      }

      if (++v19 == 15)
      {
        HIBYTE(v34) = 0;
        break;
      }
    }

    if ((ioctl(v11, 0xC0206911uLL, &v34) & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 6)
    {
      v28 = __error();
      strerror(*v28);
      snprintf(v8, v6, "SIOCGIFFLAGS: %.*s: %s");
      goto LABEL_43;
    }

LABEL_27:
    v15 += v18;
    if (v15 >= v14)
    {
      close(v11);
      if (v12)
      {
        free(v12);
      }

      goto LABEL_38;
    }
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_27;
  }

  v21 = 0;
  while (1)
  {
    v22 = *(&v34 + v21);
    __s1[v21] = v22;
    if (!v22)
    {
      break;
    }

    if (++v21 == 16)
    {
      __s1[16] = 0;
      break;
    }
  }

  if (ioctl(v11, 0xC0206921uLL, &v34) < 0)
  {
    v29 = __error();
    strerror(*v29);
    snprintf(v8, v6, "SIOCGIFADDR: %s: %s");
    goto LABEL_43;
  }

  if (v13 < 0x400)
  {
    *v16 = DWORD1(v35);
    if (v12)
    {
      free(v12);
    }

    v23 = strdup(__s1);
    if (!v23)
    {
      __break(1u);
    }

    v12 = v23;
    *(v16 + 1) = v23;
    v16 += 16;
    v13 = (v13 + 1);
    goto LABEL_27;
  }

  snprintf(v8, v6, "Too many interfaces (%d)");
LABEL_43:
  close(v11);
  if (v12)
  {
    free(v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t traceroute4_context_init(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, 0x750uLL);
  result = 0;
  *(a1 + 560) = 0u;
  *(a1 + 1752) = 0x8000;
  *(a1 + 1760) = 0xFFFFFFFFLL;
  *(a1 + 1768) = 1;
  *(a1 + 1780) = 5;
  *(a1 + 1840) = 0u;
  *(a1 + 1792) = 1;
  *(a1 + 1864) = 0;
  *(a1 + 1836) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0xFFFFFFFFLL;
  *(a1 + 8) = null_output_callback;
  return result;
}

uint64_t traceroute4_set_result_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

uint64_t traceroute6_context_init(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, 0x10D88uLL);
  result = 0;
  *(a1 + 3368) = 20;
  *(a1 + 3424) = 3;
  *(a1 + 3384) = 0xFFFFFFFF00000001;
  *(a1 + 3432) = 30;
  *(a1 + 3364) = -32102;
  *(a1 + 3440) = 5;
  *(a1 + 3404) = 17;
  *(a1 + 8) = null_output_callback;
  return result;
}

uint64_t traceroute4_cleanup(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 544);
    if (v2)
    {
      free(v2);
      *(v1 + 544) = 0;
    }

    v3 = *(v1 + 688);
    if (v3)
    {
      free(v3);
      *(v1 + 688) = 0;
    }

    v4 = *(v1 + 1740);
    if (v4)
    {
      close(v4);
      *(v1 + 1740) = -1;
    }

    result = *(v1 + 1744);
    if (result)
    {
      result = close(result);
      *(v1 + 1744) = -1;
    }
  }

  return result;
}

uint64_t traceroute6_cleanup(uint64_t a1)
{
  v2 = *(a1 + 3372);
  if (v2)
  {
    close(v2);
    *(a1 + 3372) = -1;
  }

  result = *(a1 + 3376);
  if (result)
  {
    result = close(result);
    *(a1 + 3376) = -1;
  }

  return result;
}

_BYTE *clean_non_printable(_BYTE *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = MEMORY[0x277D85DE0];
      for (i = a1; ; ++i)
      {
        v6 = *i;
        if (!*i)
        {
          return a1;
        }

        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v4 + 4 * v6 + 60) & 0x40000) == 0)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (!--v3)
        {
          return a1;
        }
      }

      if (__maskrune(v6, 0x40000uLL))
      {
        goto LABEL_8;
      }

LABEL_7:
      *i = 63;
      goto LABEL_8;
    }
  }

  return a1;
}

uint64_t dump_hex(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  for (i = 0; i != a2; ++i)
  {
    result = printf("%02x", *(v3 + i));
    if ((~i & 0xF) != 0)
    {
      if ((i & 1) == 0)
      {
        continue;
      }

      v5 = 32;
    }

    else
    {
      v5 = 10;
    }

    result = putchar(v5);
  }

  if ((a2 & 0xF) != 0)
  {

    return putchar(10);
  }

  return result;
}

uint64_t in_cksum(unsigned __int16 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = *a1++;
      v2 += v3;
      a2 -= 2;
    }

    while (a2 > 1);
  }

  if (a2 == 1)
  {
    v2 += *a1;
  }

  return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
}

unsigned __int8 *udp_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  v3 = *(a2 + 1800);
  if (v3)
  {
    v4 = *result;
  }

  else
  {
    v4 = 0;
  }

  *v2 = bswap32(v4 + *(a2 + 1832)) >> 16;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *result;
  }

  v2[1] = bswap32(v5 + *(a2 + 1834)) >> 16;
  v6 = *(a2 + 656);
  v2[2] = bswap32(v6) >> 16;
  v2[3] = 0;
  if (*(a2 + 1792))
  {
    result = p_cksum(*(a2 + 544), v2, v6, v6);
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = -1;
    }

    v2[3] = v7;
  }

  return result;
}

BOOL udp_check(unsigned __int16 *a1, int a2, uint64_t a3)
{
  result = 0;
  v5 = bswap32(*a1);
  v6 = *(a3 + 1800);
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v7 + *(a3 + 1832) == HIWORD(v5))
  {
    v8 = bswap32(a1[1]);
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    return v9 + *(a3 + 1834) == HIWORD(v8);
  }

  return result;
}

unsigned __int8 *tcp_prep(unsigned __int8 *result, uint64_t a2)
{
  v3 = *(a2 + 552);
  *v3 = bswap32(*(a2 + 1832)) >> 16;
  if (*(a2 + 1800))
  {
    v4 = 0;
  }

  else
  {
    v4 = *result;
  }

  v3[1] = bswap32(v4 + *(a2 + 1834)) >> 16;
  *(v3 + 1) = v3[1] | (*v3 << 16);
  *(v3 + 2) = 0;
  *(v3 + 12) = v3[6] & 0xF | 0x50;
  *(v3 + 13) = 2;
  v3[8] = 0;
  if (*(a2 + 1792))
  {
    result = p_cksum(*(a2 + 544), v3, *(a2 + 656), *(a2 + 656));
    v3[8] = result;
  }

  if (*(a2 + 1776) >= 2)
  {
    return fprintf(*MEMORY[0x277D85DF8], "tcp_prep: th_sport %u th_dport %u th_seq %u\n", bswap32(*v3) >> 16, bswap32(v3[1]) >> 16, *(v3 + 1));
  }

  return result;
}

BOOL tcp_check(unsigned __int16 *a1, int a2, uint64_t a3)
{
  if (*(a3 + 1776) >= 2)
  {
    fprintf(*MEMORY[0x277D85DF8], "tcp_check: th_sport %u th_dport %u th_seq %u\n", bswap32(*a1) >> 16, bswap32(a1[1]) >> 16, *(a1 + 1));
  }

  v6 = *a1;
  if (*(a3 + 1832) == bswap32(v6) >> 16 && ((v7 = a1[1], v8 = bswap32(v7), *(a3 + 1800)) ? (v9 = 0) : (v9 = a2), v9 + *(a3 + 1834) == HIWORD(v8)))
  {
    return *(a1 + 1) == (v7 | (v6 << 16));
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *gre_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = 288;
  v2[1] = bswap32(*(a2 + 1834)) >> 16;
  v2[2] = 0;
  v2[3] = bswap32(*(a2 + 1832) + *result) >> 16;
  return result;
}

uint64_t icmp_prep(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = 8;
  v2[2] = bswap32(*(a2 + 1832)) >> 16;
  v2[3] = *a1 << 8;
  v2[1] = 0;
  result = in_cksum(v2, *(a2 + 656));
  v2[1] = result;
  if (!v2[1])
  {
    v2[1] = -1;
  }

  return result;
}

unsigned __int8 *gen_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = bswap32(*(a2 + 1832)) >> 16;
  v2[1] = bswap32(*(a2 + 1834) + *result) >> 16;
  return result;
}

uint64_t traceroute4_parseargs(uint64_t *a1, int a2, char *const *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "TR: begin traceroute4_parseargs\n", buf, 2u);
  }

  *MEMORY[0x277D85E70] = 0;
  while (2)
  {
    v7 = getopt(a2, a3, "aA:eEdDFInrSvxf:g:i:M:m:P:p:q:s:t:w:z:");
    v8 = v7;
    switch(v7)
    {
      case 'A':
        *(a1 + 447) = 1;
        a1[230] = *MEMORY[0x277D85E68];
        continue;
      case 'B':
      case 'C':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'N':
      case 'O':
      case 'Q':
      case 'R':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'k':
      case 'l':
      case 'o':
      case 'u':
      case 'y':
        goto LABEL_34;
      case 'D':
        *(a1 + 451) = 1;
        continue;
      case 'E':
        *(a1 + 452) = 1;
        continue;
      case 'F':
        *(a1 + 918) = 0x4000;
        continue;
      case 'I':
        v9 = "icmp";
        goto LABEL_23;
      case 'M':
      case 'f':
        *(a1 + 442) = str2val(*MEMORY[0x277D85E68], "first ttl", 1, 255);
        continue;
      case 'P':
        v9 = *MEMORY[0x277D85E68];
LABEL_23:
        a1[233] = setproto(v9);
        continue;
      case 'S':
        *(a1 + 457) = 1;
        continue;
      case 'a':
        *(a1 + 447) = 1;
        continue;
      case 'd':
        *(a1 + 443) |= 1u;
        continue;
      case 'e':
        *(a1 + 450) = 1;
        continue;
      case 'g':
        v10 = *(a1 + 453);
        if (v10 >= 8)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s: No more than %d gateways\n", "libtraceroute", 8);
          return 0xFFFFFFFFLL;
        }

        v11 = gethostinfo(*MEMORY[0x277D85E68]);
        *(a1 + v10 + 144) = **(v11 + 2);
        freehostinfo(v11);
        ++*(a1 + 453);
        continue;
      case 'i':
        a1[85] = *MEMORY[0x277D85E68];
        continue;
      case 'm':
        *(a1 + 441) = str2val(*MEMORY[0x277D85E68], "max ttl", 1, 255);
        continue;
      case 'n':
        ++*(a1 + 446);
        continue;
      case 'p':
        *(a1 + 456) = str2val(*MEMORY[0x277D85E68], "port", 1, 0xFFFF);
        continue;
      case 'q':
        *(a1 + 440) = str2val(*MEMORY[0x277D85E68], "nprobes", 1, -1);
        continue;
      case 'r':
        *(a1 + 443) |= 0x10u;
        continue;
      case 's':
        a1[84] = *MEMORY[0x277D85E68];
        continue;
      case 't':
        *(a1 + 454) = str2val(*MEMORY[0x277D85E68], "tos", 0, 255);
        ++*(a1 + 455);
        continue;
      case 'v':
        ++*(a1 + 444);
        continue;
      case 'w':
        *(a1 + 445) = str2val(*MEMORY[0x277D85E68], "wait time", 1, 86400);
        continue;
      case 'x':
        *(a1 + 448) = 1;
        continue;
      case 'z':
        *(a1 + 166) = str2val(*MEMORY[0x277D85E68], "pause msecs", 0, 3600000);
        continue;
      default:
        if (v7 != -1)
        {
LABEL_34:
          v14 = otherLogHandle;
          if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            return 0xFFFFFFFFLL;
          }

          *buf = 67109120;
          *v41 = v8;
          v15 = "TR: libtraceroute, unhandled case '%c'";
          v16 = v14;
          v17 = OS_LOG_TYPE_ERROR;
          v18 = 8;
          goto LABEL_36;
        }

        v12 = MEMORY[0x277D85E78];
        if (a2 == 1)
        {
          v13 = 0;
          *MEMORY[0x277D85E78] = 0;
        }

        else
        {
          v13 = *MEMORY[0x277D85E78];
        }

        v20 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          v21 = a3[v13];
          *buf = 67109890;
          *v41 = a2;
          *&v41[4] = 1024;
          *&v41[6] = v13;
          v42 = 1024;
          v43 = v13;
          v44 = 2080;
          v45 = v21;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "TR: libtraceroute, argc: %d, optind: %d, argv[%d]: %s", buf, 0x1Eu);
          v13 = *v12;
        }

        if (a2 - v13 == 1)
        {
          goto LABEL_46;
        }

        if (a2 - v13 != 2)
        {
          v31 = otherLogHandle;
          if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v15 = "TR: libtraceroute, default case";
            v16 = v31;
            v17 = OS_LOG_TYPE_DEFAULT;
            v18 = 2;
LABEL_36:
            _os_log_impl(&dword_23255B000, v16, v17, v15, buf, v18);
          }

          return 0xFFFFFFFFLL;
        }

        a1[81] = str2val(a3[v13 + 1], "packet length", *(a1 + 437), *(a1 + 438));
        v13 = *v12;
LABEL_46:
        v22 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v23 = a3[v13];
          *buf = 136315138;
          *v41 = v23;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "TR: libtraceroute, hostname: %s", buf, 0xCu);
          v13 = *v12;
        }

        v24 = gethostinfo(a3[v13]);
        a1[232] = v24;
        if (!v24)
        {
          v32 = otherLogHandle;
          if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            v33 = a3[*v12];
            *buf = 136315138;
            *v41 = v33;
            v15 = "TR: libtraceroute, no hostinfo for %s";
            v16 = v32;
            v17 = OS_LOG_TYPE_ERROR;
            v18 = 12;
            goto LABEL_36;
          }

          return 0xFFFFFFFFLL;
        }

        v25 = v24;
        v26.s_addr = **(v24 + 2);
        *(a1 + 612) = 0;
        *(a1 + 620) = 0;
        *(a1 + 306) = 528;
        *(a1 + 154) = v26;
        if (v25[2] >= 2)
        {
          v27 = a1[1];
          v28 = a3[*v12];
          if (v27)
          {
            v29 = *a1;
            v30 = inet_ntoa(v26);
            v27(v29, "%s: Warning: %s has multiple addresses; using %s\n", "libtraceroute", v28, v30);
          }

          else
          {
            v34 = *MEMORY[0x277D85DF8];
            v35 = inet_ntoa(v26);
            fprintf(v34, "%s: Warning: %s has multiple addresses; using %s\n", "libtraceroute", v28, v35);
          }
        }

        v36 = a1[86];
        if (v36)
        {
          free(v36);
          a1[86] = 0;
        }

        v37 = a1[232];
        if (!*v37 || (v38 = strdup(*v37)) == 0)
        {
          __break(1u);
        }

        a1[86] = v38;
        freehostinfo(v37);
        *MEMORY[0x277D85E88] = 1;
        *v12 = 1;
        v39 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "TR: end traceroute4_parseargs\n", buf, 2u);
        }

        return 0;
    }
  }
}

uint64_t str2val(char *__str, uint64_t a2, int a3, int a4)
{
  __endptr = 0;
  if (*__str == 48 && (__str[1] | 0x20) == 0x78)
  {
    __str += 2;
    v6 = 16;
  }

  else
  {
    v6 = 10;
  }

  result = strtol(__str, &__endptr, v6);
  if (*__endptr)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: %s bad value for %s \n");
    return 0xFFFFFFFFLL;
  }

  if (a3 < 0 || result >= a3)
  {
    if ((a4 & 0x80000000) == 0 && result > a4)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: %s must be <= %d\n");
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85DF8];
    if (a3)
    {
      fprintf(v8, "%s: %s must be > %d\n");
    }

    else
    {
      fprintf(v8, "%s: %s must be >= %d\n");
    }

    return 1;
  }

  return result;
}

char **setproto(char *a1)
{
  v2 = protos;
  if (protos[0])
  {
    if (!strcasecmp(protos[0], a1))
    {
      return v2;
    }

    v2 = off_28192C9F0;
    while (1)
    {
      v3 = *v2;
      if (!*v2)
      {
        break;
      }

      v2 += 5;
      if (!strcasecmp(v3, a1))
      {
        v2 -= 5;
        return v2;
      }
    }
  }

  v4 = getprotobyname(a1);
  if (v4)
  {
    p_proto = v4->p_proto;
  }

  else
  {
    LOBYTE(p_proto) = str2val(*MEMORY[0x277D85E68], "proto number", 1, 255);
  }

  *(v2 + 16) = p_proto;
  return v2;
}

_BYTE *gethostinfo(const char *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (strlen(a1) >= 0x100)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: hostname %.32s... is too long\n", prog, a1);
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x572EF47AuLL);
  if (!v2)
  {
LABEL_28:
    __break(1u);
  }

  v3 = v2;
  v4 = inet_addr(a1);
  if (v4 != -1)
  {
    if (a1)
    {
      v5 = v4;
      v6 = strdup(a1);
      if (v6)
      {
        *v3 = v6;
        v3[2] = 1;
        v7 = malloc_type_calloc(1uLL, 4uLL, 0xE04EC303uLL);
        if (v7)
        {
          *(v3 + 2) = v7;
          *v7 = v5;
          return v3;
        }
      }
    }

    goto LABEL_28;
  }

  v8 = gethostbyname(a1);
  if (!v8)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: unknown host %s\n");
    goto LABEL_25;
  }

  v9 = v8;
  if (v8->h_addrtype != 2 || v8->h_length != 4)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: bad host %s\n");
LABEL_25:
    freehostinfo(v3);
    return 0;
  }

  h_name = v8->h_name;
  if (!v9->h_name)
  {
    goto LABEL_28;
  }

  v11 = strdup(h_name);
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v11;
  *v3 = v11;
  v13 = strlen(v11);
  result = clean_non_printable(v12, v13);
  h_addr_list = v9->h_addr_list;
  if (*h_addr_list)
  {
    v16 = 0;
    v17 = h_addr_list + 1;
      ;
    }

    v3[2] = v16;
    v19 = malloc_type_calloc(v16, 4uLL, 0x681248ACuLL);
    if (v19)
    {
      *(v3 + 2) = v19;
      v20 = v9->h_addr_list;
      v21 = *v20;
      if (*v20)
      {
        v22 = v20 + 1;
        do
        {
          *v19++ = *v21;
          v23 = *v22++;
          v21 = v23;
        }

        while (v23);
      }

      v24 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *v3;
        *buf = 136315394;
        v27 = a1;
        v28 = 2080;
        v29 = v25;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "TR: hostname: %s, hi->name: %s", buf, 0x16u);
      }

      return v3;
    }

    goto LABEL_28;
  }

  v3[2] = 0;
  __break(1u);
  return result;
}

void freehostinfo(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t traceroute4_run(void *a1)
{
  v308 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "TR: begin traceroute4_run\n", buf, 2u);
  }

  v290 = 1;
  v289 = 0;
  v3 = a1[86];
  if (!v3)
  {
    v13 = a1[1];
    if (v13)
    {
      v13(*a1, "%s: Error: No hostname provided in context.\n", prog);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Error: No hostname provided in context.\n", prog);
    }

    return 0xFFFFFFFFLL;
  }

  v4 = (a1 + 612);
  if (!a1[232])
  {
    v5 = gethostinfo(v3);
    a1[232] = v5;
    if (v5)
    {
      v6 = v5;
      v7.s_addr = **(v5 + 2);
      *v4 = 0;
      *(a1 + 620) = 0;
      *(a1 + 306) = 528;
      *(a1 + 154) = v7;
      if (v6[2] >= 2)
      {
        v8 = a1[1];
        v9 = prog;
        v10 = *v6;
        if (v8)
        {
          v11 = *a1;
          v12 = inet_ntoa(v7);
          v8(v11, "%s: Warning: %s has multiple addresses; using %s\n", v9, v10, v12);
        }

        else
        {
          v15 = *MEMORY[0x277D85DF8];
          v16 = inet_ntoa(v7);
          fprintf(v15, "%s: Warning: %s has multiple addresses; using %s\n", v9, v10, v16);
        }
      }

      v17 = a1[86];
      if (v17)
      {
        free(v17);
        a1[86] = 0;
      }

      v18 = a1[232];
      if (!*v18)
      {
        goto LABEL_465;
      }

      v19 = strdup(*v18);
      if (!v19)
      {
        goto LABEL_465;
      }

      a1[86] = v19;
      freehostinfo(v18);
    }
  }

  a1[233] = protos;
  v20 = getprotobyname("icmp");
  if (v20)
  {
    RawSocket = NEHelperGetRawSocket();
    *(a1 + 435) = RawSocket;
    if (RawSocket < 0 || (v22 = NEHelperGetRawSocket(), *(a1 + 436) = v22, v22 < 0))
    {
      v23 = *__error();
    }

    else
    {
      v23 = 0;
    }

    v24 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 436);
      v26 = *(a1 + 435);
      *buf = 67109376;
      *&buf[4] = v25;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "TR: Raw sockets created over IPv4 via NEHelper, UDP sndsock: %d, ICMP rcvsock: %d", buf, 0xEu);
    }
  }

  else
  {
    v23 = 0;
  }

  v27 = a1 + 441;
  if (!*(a1 + 441))
  {
    *buf = xmmword_232816AD0;
    *v304 = 4;
    if (sysctl(buf, 4u, a1 + 1764, v304, 0, 0) == -1)
    {
      perror("sysctl(net.inet.ip.ttl)");
      return 1;
    }
  }

  v28 = *(a1 + 456);
  if (v28 == -1)
  {
    LOWORD(v28) = *(a1[233] + 20);
  }

  *(a1 + 917) = v28;
  if (*(a1 + 440) == -1)
  {
    if (*(a1 + 451))
    {
      v29 = 1;
    }

    else
    {
      v29 = 3;
    }

    *(a1 + 440) = v29;
  }

  v30 = *(a1 + 441);
  if (*(a1 + 442) > v30)
  {
    v31 = a1[1];
    if (v31)
    {
      v31(*a1, "%s: first ttl (%d) may not be greater than max ttl (%d)\n", prog, *(a1 + 442), v30);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: first ttl (%d) may not be greater than max ttl (%d)\n", prog, *(a1 + 442), v30);
    }

    return 1;
  }

  if (!*(a1 + 448))
  {
    v32 = a1[1];
    if (v32)
    {
      v32(*a1, "%s: Warning: ip checksums disabled\n", prog);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Warning: ip checksums disabled\n", prog);
    }
  }

  v33 = *(a1 + 453);
  if (v33 <= 0)
  {
    v34 = *(a1 + 449);
  }

  else
  {
    v34 = 4 * v33 + 4;
    *(a1 + 449) = v34;
  }

  LODWORD(v35) = *(a1[233] + 18) + v34 + 20;
  *(a1 + 437) = v35;
  if (v35 <= 40)
  {
    v35 = 40;
  }

  else
  {
    v35 = v35;
  }

  v36 = a1 + 81;
  a1[81] = v35;
  setvbuf(*MEMORY[0x277D85E08], 0, 1, 0);
  v37 = a1[81];
  v38 = *(a1 + 449);
  v39 = v37 - v38 - 20;
  if (*(a1[233] + 16) == 6)
  {
    LODWORD(v37) = v38 + 40;
    *v36 = v38 + 40;
  }

  a1[82] = v39;
  if (!v37 || (v40 = malloc_type_malloc(v37, 0xB34814EFuLL)) == 0)
  {
LABEL_465:
    __break(1u);
  }

  a1[68] = v40;
  bzero(v40, a1[81]);
  *a1[68] = *a1[68] & 0xF | 0x40;
  v41 = a1[68];
  if (*(a1 + 455))
  {
    *(v41 + 1) = *(a1 + 454);
  }

  if (*(a1 + 452))
  {
    *(v41 + 1) |= 1u;
  }

  *(v41 + 2) = a1[81];
  *(v41 + 6) = *(a1 + 918);
  *(v41 + 9) = *(a1[233] + 16);
  a1[69] = v41 + 20;
  *(v41 + 16) = *(a1 + 154);
  *v41 = *v41 & 0xF0 | 5;
  *(a1 + 916) = getpid() | 0x8000;
  if (!v20)
  {
    v63 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 136315394;
    *&buf[4] = prog;
    *&buf[12] = 2080;
    *&buf[14] = "icmp";
    v59 = "TR: %s: unknown protocol %s\n";
LABEL_104:
    v60 = buf;
    goto LABEL_105;
  }

  v42 = *(a1 + 435);
  if (v42 < 0)
  {
    *__error() = v23;
    v63 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v64 = prog;
    v65 = __error();
    v66 = strerror(*v65);
    *buf = 136315394;
    *&buf[4] = v64;
    *&buf[12] = 2080;
    *&buf[14] = v66;
    v59 = "TR: %s: icmp socket: %s\n";
    goto LABEL_104;
  }

  setsockopt(v42, 0xFFFF, 4356, &v290, 4u);
  v43 = *(a1 + 443);
  if (v43)
  {
    setsockopt(*(a1 + 435), 0xFFFF, 1, &v290, 4u);
    v43 = *(a1 + 443);
  }

  if ((v43 & 0x10) != 0)
  {
    setsockopt(*(a1 + 435), 0xFFFF, 16, &v290, 4u);
  }

  v44 = *(a1 + 436);
  if (v44 < 0)
  {
    *__error() = v23;
    v63 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v67 = prog;
    v68 = __error();
    v69 = strerror(*v68);
    *buf = 136315394;
    *&buf[4] = v67;
    *&buf[12] = 2080;
    *&buf[14] = v69;
    v59 = "TR: %s: raw socket: %s\n";
    goto LABEL_104;
  }

  if (*(a1 + 453) < 1)
  {
    goto LABEL_69;
  }

  v45 = getprotobyname("ip");
  if (!v45)
  {
    v63 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *v304 = 136315394;
    *&v304[4] = prog;
    v305 = 2080;
    v306 = "ip";
    v59 = "TR: %s: unknown protocol %s\n";
LABEL_99:
    v60 = v304;
LABEL_105:
    v61 = v63;
    v62 = 22;
    goto LABEL_106;
  }

  v46 = v45;
  *(a1 + *(a1 + 453) + 144) = *(a1 + 154);
  v47 = *(a1 + 453) + 1;
  *(a1 + 453) = v47;
  *buf = -31999;
  v48 = 4 * v47;
  buf[2] = (4 * v47) | 3;
  buf[3] = 4;
  __memcpy_chk();
  if (setsockopt(*(a1 + 436), v46->p_proto, 1, buf, v48 + 4) < 0)
  {
    v63 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v73 = prog;
    v74 = __error();
    v75 = strerror(*v74);
    *v304 = 136315394;
    *&v304[4] = v73;
    v305 = 2080;
    v306 = v75;
    v59 = "TR: %s: IP_OPTIONS: %s\n";
    goto LABEL_99;
  }

  v44 = *(a1 + 436);
LABEL_69:
  if (setsockopt(v44, 0xFFFF, 4097, a1 + 81, 8u) < 0)
  {
    v63 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v70 = prog;
    v71 = __error();
    v72 = strerror(*v71);
    *buf = 136315394;
    *&buf[4] = v70;
    *&buf[12] = 2080;
    *&buf[14] = v72;
    v59 = "TR: %s: SO_SNDBUF: %s\n";
    goto LABEL_104;
  }

  if (setsockopt(*(a1 + 436), 0, 2, &v290, 4u) < 0)
  {
    v63 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v76 = prog;
    v77 = __error();
    v78 = strerror(*v77);
    *buf = 136315394;
    *&buf[4] = v76;
    *&buf[12] = 2080;
    *&buf[14] = v78;
    v59 = "TR: %s: IP_HDRINCL: %s\n";
    goto LABEL_104;
  }

  v50 = *(a1 + 443);
  if (v50)
  {
    setsockopt(*(a1 + 436), 0xFFFF, 1, &v290, 4u);
    v50 = *(a1 + 443);
  }

  if ((v50 & 0x10) != 0)
  {
    setsockopt(*(a1 + 436), 0xFFFF, 16, &v290, 4u);
  }

  v51 = ifaddrlist(&v289, v304, 132, v49);
  if (v51 < 0)
  {
    v63 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 136315394;
    *&buf[4] = prog;
    *&buf[12] = 2080;
    *&buf[14] = v304;
    v59 = "TR: %s: ifaddrlist: %s\n";
    goto LABEL_104;
  }

  v52 = v51;
  if (!v51)
  {
    v79 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 136315138;
    *&buf[4] = prog;
    v59 = "TR: %s: Can't find any network interfaces\n";
    v60 = buf;
    v61 = v79;
    v62 = 12;
    goto LABEL_106;
  }

  v53 = (a1 + 628);
  v54 = a1[85];
  v274 = (a1 + 628);
  if (!v54)
  {
    v80 = (a1 + 84);
    v81 = a1[84];
    if (v81)
    {
      goto LABEL_115;
    }

    LOWORD(v284[0]) = 0;
LABEL_129:
    v97 = findsaddr(v4, v53, v284);
    if (v97)
    {
      v98 = v97;
      v63 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 136315394;
      *&buf[4] = prog;
      *&buf[12] = 2080;
      *&buf[14] = v98;
      v59 = "TR: %s: findsaddr: %s\n";
      goto LABEL_104;
    }

    v99 = if_indextoname(LOWORD(v284[0]), a1 + 696);
    a1[85] = v99;
    if (v99)
    {
      goto LABEL_143;
    }

    v100 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v101 = prog;
    v102 = LOWORD(v284[0]);
    v103 = __error();
    v104 = strerror(*v103);
    *buf = 136315650;
    *&buf[4] = v101;
    *&buf[12] = 1024;
    *&buf[14] = v102;
    *&buf[18] = 2080;
    *&buf[20] = v104;
    v59 = "TR: %s: if_indextoname(%u): %s\n";
    v60 = buf;
    v61 = v100;
LABEL_85:
    v62 = 28;
LABEL_106:
    _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_ERROR, v59, v60, v62);
    return 1;
  }

  v55 = otherLogHandle;
  v56 = v289;
  v57 = v51 + 1;
  do
  {
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v58 = *(v56 + 1);
      *buf = 136315394;
      *&buf[4] = v58;
      *&buf[12] = 2080;
      *&buf[14] = v58;
      _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEFAULT, "TR: ctx: %s al: %s\n", buf, 0x16u);
      v55 = otherLogHandle;
      v54 = a1[85];
      v56 = v289;
    }

    if (!strcmp(v54, *(v56 + 1)))
    {
      v80 = (a1 + 84);
      v81 = a1[84];
      if (v81)
      {
        v4 = (a1 + 612);
LABEL_115:
        v82 = gethostinfo(v81);
        v83 = v82;
        v84 = *v82;
        a1[84] = *v82;
        *v82 = 0;
        v85 = a1[85];
        if (v85)
        {
          v86 = *(v82 + 2);
          if (v86 >= 1)
          {
            v87 = *(v82 + 2);
            v88 = *v289;
            v89 = v86 + 1;
            while (*v87 != v88)
            {
              ++v87;
              if (--v89 <= 1)
              {
                goto LABEL_120;
              }
            }

            v27 = a1 + 441;
            *&v274->sa_len = 0;
            *(a1 + 636) = 0;
            *(a1 + 314) = 528;
            *(a1 + 158) = v88;
            v36 = a1 + 81;
            goto LABEL_142;
          }

LABEL_120:
          v90 = otherLogHandle;
          if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = prog;
            *&buf[12] = 2080;
            *&buf[14] = v84;
            *&buf[22] = 1040;
            *&buf[24] = 32;
            *v297 = 2080;
            *&v297[2] = v85;
            _os_log_impl(&dword_23255B000, v90, OS_LOG_TYPE_ERROR, "TR: %s: %s is not on interface %.32s\n", buf, 0x26u);
          }
        }

        else
        {
          v91.s_addr = **(v82 + 2);
          *&v274->sa_len = 0;
          *(a1 + 636) = 0;
          *(a1 + 314) = 528;
          *(a1 + 158) = v91;
          if (v83[2] >= 2)
          {
            v92 = a1[1];
            v93 = prog;
            if (v92)
            {
              v94 = *a1;
              v95 = inet_ntoa(v91);
              v92(v94, "%s: Warning: %s has multiple addresses; using %s\n", v93, v84, v95);
            }

            else
            {
              v105 = *MEMORY[0x277D85DF8];
              v106 = inet_ntoa(v91);
              fprintf(v105, "%s: Warning: %s has multiple addresses; using %s\n", v93, v84, v106);
            }

            v4 = (a1 + 612);
          }

          v107 = v289;
          v108 = **(v83 + 2);
          v109 = v52 + 1;
          v27 = a1 + 441;
          v36 = a1 + 81;
          do
          {
            if (*v107 == v108)
            {
              a1[85] = *(v107 + 1);
            }

            v107 += 4;
            --v109;
          }

          while (v109 > 1);
          v289 = v107;
          if (a1[85])
          {
LABEL_142:
            freehostinfo(v83);
            goto LABEL_143;
          }

          v118 = a1[1];
          v119 = prog;
          v120.s_addr = *(a1 + 158);
          if (v118)
          {
            v121 = *a1;
            v122 = inet_ntoa(v120);
            v118(v121, "%s: no device for: %s\n", v119, v122);
          }

          else
          {
            v129 = *MEMORY[0x277D85DF8];
            v130 = inet_ntoa(v120);
            fprintf(v129, "%s: no device for: %s\n", v119, v130);
          }
        }

        freehostinfo(v83);
        return 1;
      }

      LOWORD(v284[0]) = 0;
      v4 = (a1 + 612);
      v27 = a1 + 441;
      if (v54)
      {
        v96 = *v289;
        *&v274->sa_len = 0;
        *(a1 + 636) = 0;
        *(a1 + 314) = 528;
        *(a1 + 158) = v96;
        v36 = a1 + 81;
LABEL_143:
        if (*(a1 + 444))
        {
          v110 = a1[1];
          if (v110)
          {
            v110(*a1, "Using interface: %s\n", a1[85]);
          }

          else
          {
            printf("Using interface: %s\n", a1[85]);
          }
        }

        *(a1[68] + 12) = *(a1 + 158);
        if ((bind(*(a1 + 436), v274, 0x10u) & 0x80000000) == 0)
        {
          if (*(a1 + 447))
          {
            v111 = as_setup(a1[230]);
            a1[231] = v111;
            if (!v111)
            {
              v112 = a1[1];
              if (v112)
              {
                v112(*a1, "%s: as_setup failed, AS# lookups disabled\n", prog);
              }

              else
              {
                fprintf(*MEMORY[0x277D85DF8], "%s: as_setup failed, AS# lookups disabled\n", prog);
              }

              fflush(*MEMORY[0x277D85DF8]);
              *(a1 + 447) = 0;
            }
          }

          if (*(a1[233] + 16) == 6)
          {
            pcap_on_interface = create_pcap_on_interface(a1, a1[85]);
          }

          else
          {
            pcap_on_interface = 0;
          }

          v272 = (a1 + 89);
          if (getnameinfo(v4, *(a1 + 612), a1 + 712, 0x401u, 0, 0, 2))
          {
            v132 = 0;
            *(a1 + 712) = 40;
            do
            {
              *(a1 + v132 + 713) = aInvalid[v132 + 1];
              ++v132;
            }

            while (v132 != 9);
          }

          v133 = a1[1];
          if (v133)
          {
            v133(*a1, "%s to %s (%s)", prog, a1[86], v272);
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], "%s to %s (%s)", prog, a1[86], v272);
          }

          if (*v80)
          {
            v134 = a1[1];
            if (v134)
            {
              v134(*a1, " from %s", *v80);
            }

            else
            {
              fprintf(*MEMORY[0x277D85DF8], " from %s", *v80);
            }
          }

          v135 = a1[1];
          v136 = a1[81];
          if (v135)
          {
            v135(*a1, ", %d hops max, %zu byte packets\n", *(a1 + 441), v136);
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], ", %d hops max, %zu byte packets\n", *(a1 + 441), v136);
          }

          fflush(*MEMORY[0x277D85DF8]);
          v137 = *(a1 + 442);
          if (v137 > *(a1 + 441))
          {
LABEL_459:
            if (*(a1 + 447))
            {
              as_shutdown(a1[231]);
            }

            if (pcap_on_interface)
            {
              pcap_close(pcap_on_interface);
            }

            v266 = otherLogHandle;
            v267 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT);
            result = 0;
            if (v267)
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v266, OS_LOG_TYPE_DEFAULT, "TR: end traceroute4_run\n", buf, 2u);
              return 0;
            }

            return result;
          }

          v279 = 0;
          __dst = a1 + 4;
          v283 = pcap_on_interface;
          while (1)
          {
            bzero(buf, 0x8B8uLL);
            *buf = 2;
            *&buf[8] = v137;
            v303 = a1 + 89;
            v138 = a1[1];
            v275 = v137;
            if (v138)
            {
              v138(*a1, "%2d ", v137);
            }

            else
            {
              printf("%2d ", v137);
            }

            v139 = *(a1 + 440);
            if (v139 >= 1)
            {
              break;
            }

            v273 = 0;
            v261 = 0;
            v262 = 1;
LABEL_448:
            if (*(a1 + 457))
            {
              v263 = v261 / v139;
              *v297 = v263;
              v264 = a1[1];
              if (v264)
              {
                v264(*a1, " (%d%% loss)", v263);
              }

              else
              {
                printf(" (%d%% loss)", v263);
              }
            }

            v265 = a1[1];
            if (v265)
            {
              v265(*a1, "\n");
            }

            else
            {
              putchar(10);
            }

            if (v262 && (v273 < 1 || v273 < *(a1 + 440) - 1))
            {
              v137 = v275 + 1;
              if (v275 < *v27)
              {
                continue;
              }
            }

            goto LABEL_459;
          }

          v140 = 0;
          v141 = 0;
          v273 = 0;
          v271 = 0;
          v270 = 0;
LABEL_186:
          v277 = v140;
          v288.tv_sec = 0;
          *&v288.tv_usec = 0;
          v287.tv_sec = 0;
          *&v287.tv_usec = 0;
          v286 = 0;
          *v284 = 0;
          v285 = 0;
          v280 = v141;
          if (v141)
          {
            v142 = *(a1 + 166);
            if (v142)
            {
              usleep(1000 * v142);
            }
          }

          LOBYTE(v284[0]) = v279 + 1;
          BYTE1(v284[0]) = v275;
          gettimeofday(&v288, &v286);
          v285 = v288;
          (*(a1[233] + 24))(v284, a1);
          v143 = a1[68];
          v143[8] = v275;
          ++v279;
          *(v143 + 2) = bswap32(*(a1 + 916) + v279) >> 16;
          if (*(a1 + 444) < 2)
          {
LABEL_202:
            v147 = sendto(*(a1 + 436), v143, a1[81], 0, v4, 0x10u);
            v148 = v147;
            if (v147 < 0)
            {
              v150 = *MEMORY[0x277D85DF8];
              v151 = prog;
              v152 = __error();
              v153 = strerror(*v152);
              fprintf(v150, "%s: sendto: %s\n", v151, v153);
              v149 = *v36;
            }

            else
            {
              v149 = *v36;
              if (v147 == *v36)
              {
LABEL_207:
                v278 = 0;
                v281 = v280 + 1;
LABEL_208:
                v154 = *(a1 + 435);
                v307.tv_sec = 0;
                *&v307.tv_usec = 0;
                v294 = 0;
                v293 = 16;
                if (pcap_on_interface)
                {
                  selectable_fd = pcap_get_selectable_fd(pcap_on_interface);
                }

                else
                {
                  selectable_fd = -1;
                }

                if (selectable_fd <= v154)
                {
                  v156 = v154;
                }

                else
                {
                  v156 = selectable_fd;
                }

                if (selectable_fd == -1)
                {
                  v156 = v154;
                }

                v157 = v156 + 1;
                v158 = (v156 + 1) >> 5;
                if ((v157 & 0x1FLL) != 0)
                {
                  ++v158;
                }

                v159 = v158 << 7;
                if (!(v158 << 7))
                {
                  goto LABEL_465;
                }

                v160 = malloc_type_malloc(v158 << 7, 0x82685057uLL);
                if (!v160)
                {
                  goto LABEL_465;
                }

                v161 = v160;
                v295.tv_sec = 0;
                *&v295.tv_usec = 0;
                bzero(v160, v159);
                v162 = 1 << v154;
                v163 = v154 >> 5;
                v164 = 1 << selectable_fd;
                tv_sec = v288.tv_sec;
                tv_usec = v288.tv_usec;
                v166 = selectable_fd >> 5;
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      if (__darwin_check_fd_set_overflow(v154, v161, 0))
                      {
                        v161->fds_bits[v163] |= v162;
                      }

                      if (selectable_fd != -1 && __darwin_check_fd_set_overflow(selectable_fd, v161, 0))
                      {
                        v161->fds_bits[v166] |= v164;
                      }

                      v295.tv_sec = tv_sec + *(a1 + 445);
                      v295.tv_usec = tv_usec;
                      gettimeofday(&v307, &v294);
                      v167 = v295.tv_sec;
                      v168 = v295.tv_usec - v307.tv_usec;
                      v295.tv_usec = v168;
                      if (v168 < 0)
                      {
                        v167 = v295.tv_sec - 1;
                        v295.tv_usec = v168 + 1000000;
                      }

                      v295.tv_sec = v167 - v307.tv_sec;
                      if (v167 - v307.tv_sec < 0)
                      {
                        v295.tv_sec = 0;
                        v295.tv_usec = 1;
                      }

                      v169 = select(v157, v161, 0, 0, &v295);
                      if (v169 == -1)
                      {
                        if (*__error() == 22)
                        {
                          fprintf(*MEMORY[0x277D85DF8], "%s: botched select() args\n", prog);
                          free(v161);
                          v174 = -1;
                          v4 = (a1 + 612);
                          pcap_on_interface = v283;
                          goto LABEL_264;
                        }

LABEL_302:
                        free(v161);
                        v36 = a1 + 81;
                        v4 = (a1 + 612);
                        pcap_on_interface = v283;
LABEL_303:
                        v140 = v277 + 1;
                        *&buf[12] = 1;
                        v205 = a1[1];
                        if (v205)
                        {
                          v205(*a1, " *");
                        }

                        else
                        {
                          printf(" *");
                        }

                        v27 = a1 + 441;
                        goto LABEL_307;
                      }

                      if (v169 < 1)
                      {
                        goto LABEL_302;
                      }

                      if (__darwin_check_fd_set_overflow(v154, v161, 0) && (v161->fds_bits[v163] & v162) != 0)
                      {
                        v174 = recvfrom(v154, __dst, 0x200uLL, 0, v274, &v293);
                        v36 = a1 + 81;
                        v4 = (a1 + 612);
                        pcap_on_interface = v283;
                        goto LABEL_263;
                      }

                      if (selectable_fd == -1 || !__darwin_check_fd_set_overflow(selectable_fd, v161, 0) || (v161->fds_bits[v166] & v164) == 0)
                      {
                        goto LABEL_302;
                      }

                      v291 = 0;
                      v292 = 0;
                      if (pcap_next_ex(v283, &v292, &v291) != 1)
                      {
                        v174 = 0;
                        v4 = (a1 + 612);
                        goto LABEL_260;
                      }

                      if (*(a1 + 444) >= 2)
                      {
                        fprintf(*MEMORY[0x277D85DF8], "# got TCP packet %d bytes\n", v292->caplen);
                        dump_hex(v291, v292->caplen);
                      }

                      v170 = pcap_datalink(v283);
                      if (v170 == 1)
                      {
                        break;
                      }

                      if (v170 != 108)
                      {
                        if (v170 == 12)
                        {
                          v172 = 0;
                          caplen = v292->caplen;
LABEL_256:
                          v175 = caplen - v172;
                          if (v175 >= 0x200)
                          {
                            v174 = 512;
                          }

                          else
                          {
                            v174 = v175;
                          }

                          memcpy(__dst, &v291[v172], v174);
                          v4 = (a1 + 612);
                          *v274 = *(a1 + 612);
                          v278 = 1;
LABEL_260:
                          pcap_on_interface = v283;
                        }

                        else
                        {
                          v187 = *MEMORY[0x277D85DF8];
                          pcap_on_interface = v283;
                          v188 = pcap_datalink(v283);
                          fprintf(v187, "# cannot process TCP packet with data link %d\n", v188);
                          v174 = 0;
                          v4 = (a1 + 612);
                        }

                        v36 = a1 + 81;
LABEL_263:
                        free(v161);
                        if (!v174)
                        {
                          goto LABEL_303;
                        }

LABEL_264:
                        gettimeofday(&v287, &v286);
                        if (v278)
                        {
                          a1[70] = __dst;
                          v176 = 4 * (a1[4] & 0xF);
                          if (v176 + 20 > v174)
                          {
LABEL_274:
                            if (*(a1 + 444))
                            {
                              v181.s_addr = *(a1 + 158);
                              v182 = inet_ntoa(v181);
                              printf("packet too short (%zu bytes) from %s\n", v174, v182);
                            }
                          }

                          else
                          {
                            v177 = &__dst[v176];
                            if (*(a1 + 444) >= 2)
                            {
                              fprintf(*MEMORY[0x277D85DF8], "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*v177) >> 16, bswap32(v177[1]) >> 16, *(v177 + 1));
                            }

                            if (*(a1 + 916) == bswap32(v177[1]) >> 16)
                            {
                              v178 = bswap32(*v177);
                              v179 = v279;
                              if (*(a1 + 450))
                              {
                                v179 = 0;
                              }

                              if (v179 + *(a1 + 917) == HIWORD(v178))
                              {
LABEL_312:
                                v207 = -2;
                                goto LABEL_313;
                              }
                            }
                          }

                          goto LABEL_208;
                        }

                        v180 = 4 * (*__dst & 0xF);
                        if (v174 < v180 + 8)
                        {
                          goto LABEL_274;
                        }

                        v183 = &__dst[v180];
                        v184 = __dst[4 * (*__dst & 0xF)];
                        v185 = __dst[v180 + 1];
                        if (v185 == 4)
                        {
                          v186 = bswap32(*(v183 + 3)) >> 16;
                        }

                        else
                        {
                          v186 = 0;
                        }

                        *(a1 + 439) = v186;
                        if (!v184)
                        {
                          v189 = a1[233];
                          if (*(v189 + 16) == 1)
                          {
                            if ((*(v189 + 32))(v183, v279, a1))
                            {
                              goto LABEL_312;
                            }
                          }
                        }

                        v190 = v174 - v180;
                        v192 = v184 == 11 && v185 == 0;
                        if (v184 != 3 && !v192 || (v193 = v183[8], a1[70] = v183 + 8, a1[71] = &__dst[v174] - (v183 + 8), v194 = 4 * (v193 & 0xF), v190 < (v194 + 16)) || (v195 = a1[233], v183[17] != *(v195 + 16)) || !(*(v195 + 32))(&v183[v194 + 8], v279, a1))
                        {
                          if (*(a1 + 444))
                          {
                            v196.s_addr = *(a1 + 158);
                            v197 = inet_ntoa(v196);
                            printf("\n%zu bytes from %s to ", v190, v197);
                            v198.s_addr = *(a1 + 12);
                            v199 = inet_ntoa(v198);
                            v200 = "OUT-OF-RANGE";
                            if (v184 <= 0x10)
                            {
                              v200 = pr_type_ttab[v184];
                            }

                            printf("%s: icmp type %d (%s) code %d\n", v199, v184, v200, v183[1]);
                            if (v190 >= 5)
                            {
                              v201 = (v183 + 8);
                              v202 = 8;
                              do
                              {
                                v203 = *v201++;
                                printf("%2d: x%8.8x\n", v202 - 4, v203);
                                v204 = v190 <= v202;
                                v202 += 4;
                              }

                              while (!v204);
                            }
                          }

                          goto LABEL_208;
                        }

                        if (v184 == 11)
                        {
                          v207 = -1;
                        }

                        else
                        {
                          v207 = v185 + 1;
                        }

LABEL_313:
                        if (v271)
                        {
                          if (*(a1 + 158) == v270)
                          {
                            v36 = a1 + 81;
                            v140 = v277;
                            goto LABEL_344;
                          }

                          v208 = a1[1];
                          if (v208)
                          {
                            v208(*a1, "\n   ");
                          }

                          else
                          {
                            printf("\n   ");
                          }
                        }

                        v209.s_addr = *(a1 + 158);
                        v299 = 0;
                        v301 = 0;
                        v298 = 528;
                        s_addr = v209.s_addr;
                        v210 = *(a1 + 32);
                        v211 = inet_ntoa(v209);
                        if (!v211)
                        {
                          goto LABEL_465;
                        }

                        v212 = 0;
                        v213 = v174 - 4 * (v210 & 0xF);
                        v140 = v277;
                        while (1)
                        {
                          v214 = v211[v212];
                          *(&v307.tv_sec + v212) = v214;
                          if (!v214)
                          {
                            break;
                          }

                          if (++v212 == 15)
                          {
                            *(&v307.tv_usec + 7) = 0;
                            break;
                          }
                        }

                        v302 = v307;
                        if (*(a1 + 447))
                        {
                          *&buf[4] = as_lookup(a1[231], &v307, 2);
                          v215 = a1[1];
                          if (v215)
                          {
                            v216 = *a1;
                            v268 = as_lookup(a1[231], &v307, 2);
                            v217 = v216;
                            v140 = v277;
                            v215(v217, " [AS%u]", v268);
                          }

                          else
                          {
                            v218 = as_lookup(a1[231], &v307, 2);
                            printf(" [AS%u]", v218);
                          }
                        }

                        if (*(a1 + 446))
                        {
                          v219 = a1[1];
                          if (v219)
                          {
                            v219(*a1, " %s", &v307);
                          }

                          else
                          {
                            printf(" %s", &v307);
                          }
                        }

                        else
                        {
                          v220.s_addr = *(a1 + 158);
                          v221 = inetname(v220, 0);
                          strnlen(v221, 0x401uLL);
                          __memcpy_chk();
                          v222 = a1[1];
                          if (v222)
                          {
                            v222(*a1, " %s (%s)", v221, &v307);
                          }

                          else
                          {
                            printf(" %s (%s)", v221, &v307);
                          }

                          free(v221);
                          v140 = v277;
                        }

                        if (*(a1 + 444))
                        {
                          v223 = a1[1];
                          if (v223)
                          {
                            v224 = *a1;
                            v225.s_addr = *(a1 + 12);
                            v269 = inet_ntoa(v225);
                            v226 = v224;
                            v140 = v277;
                            v223(v226, " %zu bytes to %s", v213, v269);
                          }

                          else
                          {
                            v227.s_addr = *(a1 + 12);
                            v228 = inet_ntoa(v227);
                            printf(" %zu bytes to %s", v213, v228);
                          }
                        }

                        v270 = *(a1 + 158);
                        LODWORD(v271) = v271 + 1;
                        v36 = a1 + 81;
LABEL_344:
                        v229 = (v287.tv_sec - tv_sec);
                        v230 = (v287.tv_usec - tv_usec) / 1000.0;
                        v231 = v230 + v229 * 1000.0;
                        v232 = a1[1];
                        if (v232)
                        {
                          v232(*a1, "  %.*f ms", 3, v230 + v229 * 1000.0);
                        }

                        else
                        {
                          printf("  %.*f ms", 3, v230 + v229 * 1000.0);
                        }

                        v27 = a1 + 441;
                        *&v297[4] = v231;
                        if (*(a1 + 452))
                        {
                          v233 = *(a1[70] + 1) & 3;
                          if (v233 != (*(a1[68] + 1) & 3))
                          {
                            if ((*(a1[70] + 1) & 3) != 0)
                            {
                              if (v233 != 3)
                              {
                                goto LABEL_361;
                              }

                              v234 = a1[1];
                              if (!v234)
                              {
                                printf(" (ecn=mangled)");
                                goto LABEL_361;
                              }

                              v235 = *a1;
                              v236 = " (ecn=mangled)";
                            }

                            else
                            {
                              v234 = a1[1];
                              if (!v234)
                              {
                                printf(" (ecn=bleached)");
                                goto LABEL_361;
                              }

                              v235 = *a1;
                              v236 = " (ecn=bleached)";
                            }

LABEL_358:
                            v234(v235, v236);
                            goto LABEL_361;
                          }

                          v234 = a1[1];
                          if (v234)
                          {
                            v235 = *a1;
                            v236 = " (ecn=passed)";
                            goto LABEL_358;
                          }

                          printf(" (ecn=passed)");
                        }

LABEL_361:
                        if (*(a1 + 451))
                        {
                          v237 = a1[1];
                          if (v237)
                          {
                            v237(*a1, "\n");
                          }

                          else
                          {
                            putchar(10);
                          }

                          v238 = a1[1];
                          if (v238)
                          {
                            v238(*a1, "%*.*s%s\n", -8 * (*a1[68] & 0xF), 8 * (*a1[68] & 0xF), ip_hdr_key, *(a1[233] + 8));
                          }

                          else
                          {
                            printf("%*.*s%s\n", -8 * (*a1[68] & 0xF), 8 * (*a1[68] & 0xF), ip_hdr_key, *(a1[233] + 8));
                          }

                          v239 = a1[68];
                          v240 = a1[81];
                          v241 = a1[70];
                          v242 = a1[71];
                          if (v240 >= 1)
                          {
                            v243 = a1[68];
                            v244 = a1[81];
                            do
                            {
                              v245 = *v243++;
                              printf("%02x", v245);
                              --v244;
                            }

                            while (v244);
                          }

                          putchar(10);
                          if (v240 >= v242)
                          {
                            v240 = v242;
                          }

                          v246 = v241;
                          v247 = v240;
                          if (v240 < 1)
                          {
                            v252 = 0;
                          }

                          else
                          {
                            do
                            {
                              v249 = *v239++;
                              v248 = v249;
                              v251 = *v246++;
                              v250 = v251;
                              if (v248 == v251)
                              {
                                printf("__");
                              }

                              else
                              {
                                printf("%02x", v250);
                              }

                              --v247;
                            }

                            while (v247);
                            v252 = v240;
                          }

                          v204 = v242 <= v252;
                          v253 = v242 - v252;
                          v4 = (a1 + 612);
                          v140 = v277;
                          if (!v204)
                          {
                            v254 = &v241[v252];
                            do
                            {
                              v255 = *v254++;
                              printf("%02x", v255);
                              --v253;
                            }

                            while (v253);
                          }

                          putchar(10);
                          v27 = a1 + 441;
                          v36 = a1 + 81;
                        }

                        if (v207 != -1)
                        {
                          if (v207 == -2)
                          {
                            if (*(a1 + 40) <= 1u)
                            {
                              v256 = a1[1];
                              if (v256)
                              {
                                v256(*a1, " !");
                              }

                              else
                              {
                                printf(" !");
                              }
                            }

                            ++HIDWORD(v271);
                          }

                          else
                          {
                            *&buf[16] = v207 - 1;
                            switch(v207)
                            {
                              case 1:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !N";
                                  goto LABEL_427;
                                }

                                printf(" !N");
                                break;
                              case 2:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !H";
                                  goto LABEL_427;
                                }

                                printf(" !H");
                                break;
                              case 3:
                                ++HIDWORD(v271);
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !P";
                                  goto LABEL_427;
                                }

                                printf(" !P");
                                break;
                              case 4:
                                if (*(a1 + 40) <= 1u)
                                {
                                  v260 = a1[1];
                                  if (v260)
                                  {
                                    v260(*a1, " !");
                                  }

                                  else
                                  {
                                    printf(" !");
                                  }
                                }

                                ++HIDWORD(v271);
                                break;
                              case 5:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !F-%d";
                                  goto LABEL_427;
                                }

                                printf(" !F-%d");
                                break;
                              case 6:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !S";
                                  goto LABEL_427;
                                }

                                printf(" !S");
                                break;
                              case 7:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !U";
                                  goto LABEL_427;
                                }

                                printf(" !U");
                                break;
                              case 8:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !W";
                                  goto LABEL_427;
                                }

                                printf(" !W");
                                break;
                              case 9:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !I";
                                  goto LABEL_427;
                                }

                                printf(" !I");
                                break;
                              case 10:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !A";
                                  goto LABEL_427;
                                }

                                printf(" !A");
                                break;
                              case 11:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !Z";
                                  goto LABEL_427;
                                }

                                printf(" !Z");
                                break;
                              case 12:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !Q";
                                  goto LABEL_427;
                                }

                                printf(" !Q");
                                break;
                              case 13:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !T";
                                  goto LABEL_427;
                                }

                                printf(" !T");
                                break;
                              case 14:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !X";
                                  goto LABEL_427;
                                }

                                printf(" !X");
                                break;
                              case 15:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !V";
                                  goto LABEL_427;
                                }

                                printf(" !V");
                                break;
                              case 16:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !C";
                                  goto LABEL_427;
                                }

                                printf(" !C");
                                break;
                              default:
                                ++v273;
                                v257 = a1[1];
                                if (v257)
                                {
                                  v258 = *a1;
                                  v259 = " !<%d>";
LABEL_427:
                                  v257(v258, v259);
                                }

                                else
                                {
                                  printf(" !<%d>");
                                }

                                break;
                            }

                            v36 = a1 + 81;
                            v4 = (a1 + 612);
                            v27 = a1 + 441;
                            pcap_on_interface = v283;
                            v140 = v277;
                          }
                        }

LABEL_307:
                        v206 = a1[3];
                        if (v206)
                        {
                          v206(a1[2], buf);
                        }

                        else
                        {
                          fflush(*MEMORY[0x277D85E08]);
                        }

                        v139 = *(a1 + 440);
                        v141 = v281;
                        if (v281 >= v139)
                        {
                          v261 = 100 * v140;
                          v262 = HIDWORD(v271) == 0;
                          goto LABEL_448;
                        }

                        goto LABEL_186;
                      }

                      caplen = v292->caplen;
                      v172 = 4;
LABEL_243:
                      if (v172 <= caplen)
                      {
                        goto LABEL_256;
                      }
                    }

                    caplen = v292->caplen;
                  }

                  while (caplen < 0xE);
                  v173 = *(v291 + 6);
                  if (v173 == 8)
                  {
                    v172 = 14;
                    goto LABEL_243;
                  }

                  if (v173 == 33024)
                  {
                    v172 = 18;
                    goto LABEL_243;
                  }

                  fprintf(*MEMORY[0x277D85DF8], "# cannot process TCP packet with Ethernet type 0x%04x\n", __rev16(v173));
                }
              }
            }

            printf("%s: wrote %s %zu chars, ret=%zu\n", prog, a1[86], v149, v148);
            fflush(*MEMORY[0x277D85E08]);
            goto LABEL_207;
          }

          v144 = *v36;
          printf("[ %zu bytes", *v36);
          if (v144 >= 2)
          {
            v145 = 0;
            do
            {
              if ((v145 & 7) == 0)
              {
                printf("\n\t");
              }

              ++v145;
              v146 = *v143;
              v143 += 2;
              printf(" %04x", bswap32(v146) >> 16);
            }

            while (v144 >> 1 != v145);
            v36 = a1 + 81;
            if ((a1[81] & 1) == 0)
            {
              goto LABEL_201;
            }

            if ((v144 & 0xE) != 0)
            {
              goto LABEL_200;
            }
          }

          else if ((*v36 & 1) == 0)
          {
            goto LABEL_201;
          }

          printf("\n\t");
LABEL_200:
          printf(" %02x", *v143);
LABEL_201:
          puts("]");
          v143 = a1[68];
          goto LABEL_202;
        }

        v113 = a1[1];
        v114 = prog;
        if (v113)
        {
          v115 = *a1;
          v116 = __error();
          v117 = strerror(*v116);
          v113(v115, "%s: bind: %s\n", v114, v117);
        }

        else
        {
          v123 = *MEMORY[0x277D85DF8];
          v124 = __error();
          v125 = strerror(*v124);
          fprintf(v123, "%s: bind: %s\n", v114, v125);
        }

        v126 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          v127 = __error();
          v128 = strerror(*v127);
          *buf = 136315138;
          *&buf[4] = v128;
          _os_log_impl(&dword_23255B000, v126, OS_LOG_TYPE_ERROR, "TR: bind: %s\n", buf, 0xCu);
        }

        return 0xFFFFFFFFLL;
      }

      v36 = a1 + 81;
      v53 = (a1 + 628);
      goto LABEL_129;
    }

    v56 += 4;
    v289 = v56;
    --v57;
  }

  while (v57 > 1);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = prog;
    *&buf[12] = 1040;
    *&buf[14] = 32;
    *&buf[18] = 2080;
    *&buf[20] = v54;
    v59 = "TR: %s: Can't find interface %.32s\n";
    v60 = buf;
    v61 = v55;
    goto LABEL_85;
  }

  return 1;
}

pcap_t *create_pcap_on_interface(int *a1, char *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *&v6.bf_len = 0;
  v6.bf_insns = 0;
  v3 = pcap_create(a2, create_pcap_on_interface_ebuf);
  if (!v3)
  {
    errx(71, "pcap_open_live(%s) failed: %s");
  }

  v4 = v3;
  if (pcap_set_snaplen(v3, 0xFFFF) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_snaplen(%s, %d) failed: %s");
  }

  if (pcap_set_immediate_mode(v4, 1) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_immediate_mode(%s, %d) failed: %s");
  }

  if (pcap_setnonblock(v4, 1, create_pcap_on_interface_ebuf))
  {
    create_pcap_on_interface_cold_1();
  }

  if (pcap_set_buffer_size(v4, 0xFFFF))
  {
    create_pcap_on_interface_cold_2();
  }

  if (pcap_activate(v4) < 0)
  {
    create_pcap_on_interface_cold_5();
  }

  inet_ntop(2, a1 + 154, v8, 0x2Eu);
  inet_ntop(2, a1 + 158, v7, 0x2Eu);
  snprintf(create_pcap_on_interface_filter_str, 0x400uLL, "tcp and src %s and dst %s", v8, v7);
  if (pcap_compile(v4, &v6, create_pcap_on_interface_filter_str, 1, 0xFFFFFFFF))
  {
    create_pcap_on_interface_cold_3(v4);
  }

  if (pcap_setfilter(v4, &v6) < 0)
  {
    create_pcap_on_interface_cold_4(v4);
  }

  if (a1[444] >= 2)
  {
    fprintf(*MEMORY[0x277D85DF8], "# using pcap filter %s\n", create_pcap_on_interface_filter_str);
  }

  return v4;
}

const char *pr_type(unsigned int a1)
{
  if (a1 <= 0x10)
  {
    return pr_type_ttab[a1];
  }

  else
  {
    return "OUT-OF-RANGE";
  }
}

uint64_t p_cksum(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned __int16 a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  BYTE1(v9) = *(a1 + 9);
  HIWORD(v9) = bswap32(a3) >> 16;
  v10 = *(a1 + 12);
  v7[1] = in_cksum(&v8, 0x14u);
  v7[0] = in_cksum(a2, a4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

uint64_t *tvsub(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 2) - *(a2 + 8);
  *(result + 2) = v3;
  if (v3 < 0)
  {
    *result = --v2;
    *(result + 2) = v3 + 1000000;
  }

  *result = v2 - *a2;
  return result;
}

char *inetname(in_addr a1, int a2)
{
  s_addr = a1.s_addr;
  v19 = *MEMORY[0x277D85DE8];
  v16 = a1.s_addr;
  if (a2)
  {
LABEL_2:
    v3.s_addr = s_addr;
    v4 = inet_ntoa(v3);
    if (!v4)
    {
      goto LABEL_23;
    }

    goto LABEL_3;
  }

  if ((gethostname(__s, 0x100uLL) & 0x80000000) == 0 && ((v6 = strchr(__s, 46)) != 0 || (v7 = gethostbyname(__s)) != 0 && (v6 = strchr(v7->h_name, 46)) != 0))
  {
    strlen(v6 + 1);
    __memmove_chk();
    s_addr = v16;
    if (!v16)
    {
      goto LABEL_2;
    }
  }

  else
  {
    __s[0] = 0;
    if (!s_addr)
    {
      goto LABEL_2;
    }
  }

  v8 = gethostbyaddr(&v16, 4u, 2);
  if (!v8)
  {
    s_addr = v16;
    goto LABEL_2;
  }

  v9 = v8;
  h_name = v8->h_name;
  v11 = strchr(v8->h_name, 46);
  if (v11)
  {
    v12 = v11;
    if (!strcmp(v11 + 1, __s))
    {
      *v12 = 0;
      h_name = v9->h_name;
    }
  }

  if (!h_name)
  {
LABEL_23:
    __break(1u);
  }

  v13 = 0;
  while (1)
  {
    v14 = h_name[v13];
    v17[v13] = v14;
    if (!v14)
    {
      break;
    }

    if (++v13 == 256)
    {
      v17[256] = 0;
      break;
    }
  }

  v15 = strlen(v17);
  clean_non_printable(v17, v15);
  v4 = v17;
LABEL_3:
  result = strdup(v4);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t traceroute6_parseargs(uint64_t *a1, int a2, char *const *a3)
{
  v6 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "TR: begin traceroute6_parseargs\n", buf, 2u);
  }

  __endptr = 0;
  v7 = MEMORY[0x277D85E68];
  while (2)
  {
    v8 = getopt(a2, a3, "aA:deEf:g:i:Ilm:nNp:q:rs:t:TUvw:");
    switch(v8)
    {
      case 'A':
        *(a1 + 854) = 1;
        a1[286] = *v7;
        continue;
      case 'B':
      case 'C':
      case 'D':
      case 'F':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'M':
      case 'O':
      case 'P':
      case 'Q':
      case 'R':
      case 'S':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'k':
      case 'o':
      case 'u':
        goto LABEL_119;
      case 'E':
        *(a1 + 853) = 1;
        continue;
      case 'I':
        *(a1 + 851) = 58;
        continue;
      case 'N':
        *(a1 + 851) = 59;
        continue;
      case 'T':
        *(a1 + 851) = 6;
        continue;
      case 'U':
        *(a1 + 851) = 17;
        continue;
      case 'a':
        *(a1 + 854) = 1;
        continue;
      case 'd':
        *(a1 + 848) |= 1u;
        continue;
      case 'e':
        *(a1 + 855) = 1;
        continue;
      case 'f':
        __endptr = 0;
        *__error() = 0;
        *(a1 + 846) = strtoul(*v7, &__endptr, 0);
        if (!*__error() && **v7 && !*__endptr && *(a1 + 846) < 256)
        {
          continue;
        }

        v15 = a1[1];
        if (v15)
        {
          v16 = *a1;
          v17 = "traceroute6: invalid min hoplimit.\n";
          goto LABEL_101;
        }

        v18 = *MEMORY[0x277D85DF8];
        v19 = "traceroute6: invalid min hoplimit.\n";
        goto LABEL_75;
      case 'g':
        v11 = gethostbyname2(*v7, 30);
        if (!v11)
        {
          v24 = a1[1];
          if (!v24)
          {
            fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown host %s\n");
            return 0xFFFFFFFFLL;
          }

          v25 = *a1;
          v26 = "traceroute6: unknown host %s\n";
          goto LABEL_91;
        }

        v12 = v11;
        v13 = a1[284];
        if (!v13)
        {
          v13 = inet6_rth_init(a1 + 26, 0x810u, 0, 0);
          a1[284] = v13;
          if (!v13)
          {
            v15 = a1[1];
            if (!v15)
            {
              v18 = *MEMORY[0x277D85DF8];
              v19 = "inet6_rth_init failed.\n";
              v20 = 23;
              goto LABEL_115;
            }

            v16 = *a1;
            v17 = "inet6_rth_init failed.\n";
            goto LABEL_101;
          }
        }

        if (inet6_rth_add(v13, *v12->h_addr_list))
        {
          v24 = a1[1];
          if (!v24)
          {
            fprintf(*MEMORY[0x277D85DF8], "inet6_rth_add failed for %s\n");
            return 0xFFFFFFFFLL;
          }

          v25 = *a1;
          v26 = "inet6_rth_add failed for %s\n";
LABEL_91:
          v24(v25, v26);
          return 0xFFFFFFFFLL;
        }

        continue;
      case 'i':
        __endptr = 0;
        *__error() = 0;
        v9 = strtoul(*v7, &__endptr, 0);
        if (*__error() || !**v7 || *__endptr || v9 >= 0x10000)
        {
          v15 = a1[1];
          if (v15)
          {
            v16 = *a1;
            v17 = "traceroute6: invalid ident.\n";
            goto LABEL_101;
          }

          v18 = *MEMORY[0x277D85DF8];
          v19 = "traceroute6: invalid ident.\n";
          v20 = 28;
          goto LABEL_115;
        }

        *(a1 + 1683) = v9;
        continue;
      case 'l':
        ++*(a1 + 852);
        continue;
      case 'm':
        __endptr = 0;
        *__error() = 0;
        a1[429] = strtoul(*v7, &__endptr, 0);
        if (!*__error() && **v7 && !*__endptr && a1[429] < 0x100)
        {
          continue;
        }

        v15 = a1[1];
        if (v15)
        {
          v16 = *a1;
          v17 = "traceroute6: invalid max hoplimit.\n";
          goto LABEL_101;
        }

        v18 = *MEMORY[0x277D85DF8];
        v19 = "traceroute6: invalid max hoplimit.\n";
LABEL_75:
        v20 = 35;
        goto LABEL_115;
      case 'n':
        ++*(a1 + 850);
        continue;
      case 'p':
        __endptr = 0;
        *__error() = 0;
        v14 = strtoul(*v7, &__endptr, 0);
        if (*__error() || !**v7 || *__endptr)
        {
          v15 = a1[1];
          if (!v15)
          {
            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: invalid port.\n";
            v20 = 27;
            goto LABEL_115;
          }

          v16 = *a1;
          v17 = "traceroute6: invalid port.\n";
          goto LABEL_101;
        }

        if (v14 - 1 >= 0xFFFF)
        {
          v15 = a1[1];
          if (!v15)
          {
            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: port out of range.\n";
            goto LABEL_107;
          }

          v16 = *a1;
          v17 = "traceroute6: port out of range.\n";
          goto LABEL_101;
        }

        *(a1 + 1682) = v14;
        continue;
      case 'q':
        __endptr = 0;
        *__error() = 0;
        a1[428] = strtoul(*v7, &__endptr, 0);
        if (*__error() || !**v7 || *__endptr)
        {
          v15 = a1[1];
          if (!v15)
          {
            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: invalid nprobes.\n";
            v20 = 30;
            goto LABEL_115;
          }

          v16 = *a1;
          v17 = "traceroute6: invalid nprobes.\n";
          goto LABEL_101;
        }

        if (!a1[428])
        {
          v15 = a1[1];
          if (!v15)
          {
            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: nprobes must be >0.\n";
            v20 = 33;
            goto LABEL_115;
          }

          v16 = *a1;
          v17 = "traceroute6: nprobes must be >0.\n";
          goto LABEL_101;
        }

        continue;
      case 'r':
        *(a1 + 848) |= 0x10u;
        continue;
      case 's':
        a1[287] = *v7;
        continue;
      case 't':
        __endptr = 0;
        *__error() = 0;
        v10 = strtoul(*v7, &__endptr, 0);
        if (*__error() || !**v7 || *__endptr || v10 >= 0x100)
        {
          v15 = a1[1];
          if (v15)
          {
            v16 = *a1;
            v17 = "traceroute6: invalid traffic class.\n";
            goto LABEL_101;
          }

          v18 = *MEMORY[0x277D85DF8];
          v19 = "traceroute6: invalid traffic class.\n";
          goto LABEL_114;
        }

        *(a1 + 847) = v10;
        continue;
      case 'v':
        ++*(a1 + 849);
        continue;
      case 'w':
        __endptr = 0;
        *__error() = 0;
        a1[430] = strtoul(*v7, &__endptr, 0);
        if (!*__error() && **v7 && !*__endptr)
        {
          if (!a1[430])
          {
            v15 = a1[1];
            if (v15)
            {
              v16 = *a1;
              v17 = "traceroute6: wait must be >= 1 sec.\n";
LABEL_101:
              v15(v16, v17);
              return 0xFFFFFFFFLL;
            }

            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: wait must be >= 1 sec.\n";
LABEL_114:
            v20 = 36;
            goto LABEL_115;
          }

          continue;
        }

        v15 = a1[1];
        if (v15)
        {
          v16 = *a1;
          v17 = "traceroute6: invalid wait time.\n";
          goto LABEL_101;
        }

        v18 = *MEMORY[0x277D85DF8];
        v19 = "traceroute6: invalid wait time.\n";
LABEL_107:
        v20 = 32;
LABEL_115:
        fwrite(v19, v20, 1uLL, v18);
        return 0xFFFFFFFFLL;
      default:
        if (v8 != -1)
        {
LABEL_119:
          fwrite("usage: traceroute6 [-adeEIlnNrTUv] [-A as_server] [-f firsthop] [-g gateway]\n       [-m hoplimit] [-p port] [-q probes] [-s src] [-w waittime] target\n       [datalen]\n", 0xA7uLL, 1uLL, *MEMORY[0x277D85DF8]);
          exit(1);
        }

        v21 = MEMORY[0x277D85E78];
        v22 = *MEMORY[0x277D85E78];
        v23 = a2 - *MEMORY[0x277D85E78];
        if (v23 == 1)
        {
          goto LABEL_111;
        }

        if (v23 != 2)
        {
          usage();
        }

        *(a1 + 842) = strtoul(*a3, &__endptr, 0);
        if (!*__error() && *a3 && !*__endptr)
        {
          v22 = *v21;
LABEL_111:
          a1[288] = a3[v22];
          *MEMORY[0x277D85E88] = 1;
          *v21 = 1;
          v27 = otherLogHandle;
          v28 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT);
          result = 0;
          if (v28)
          {
            *v30 = 0;
            _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "TR: end traceroute4_parseargs\n", v30, 2u);
            return 0;
          }

          return result;
        }

        v15 = a1[1];
        if (v15)
        {
          v16 = *a1;
          v17 = "traceroute6: invalid packet length.\n";
          goto LABEL_101;
        }

        v18 = *MEMORY[0x277D85DF8];
        v19 = "traceroute6: invalid packet length.\n";
        goto LABEL_114;
    }
  }
}

uint64_t traceroute6_set_hostname(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 2304) = a2;
    }
  }

  return result;
}

uint64_t traceroute6_run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v210 = *MEMORY[0x277D85DE8];
  v5 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.ai_flags) = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "TR: begin traceroute6_run\n", &buf, 2u);
  }

  v206 = xmmword_232816B00;
  v201 = 1;
  v200 = 0;
  memset(&v199, 0, sizeof(v199));
  v197 = 0;
  v198 = 0;
  RawSocket = NEHelperGetRawSocket();
  *(v4 + 843) = RawSocket;
  v7 = otherLogHandle;
  if (RawSocket < 0)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = *__error();
      buf.ai_flags = 67109120;
      buf.ai_family = v18;
      v19 = "TR: Failed to create raw ICMP receive socket over IPv6, errno: %d";
LABEL_27:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, v19, &buf, 8u);
    }

    return *__error();
  }

  v8 = RawSocket;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    buf.ai_flags = 67109120;
    buf.ai_family = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "TR: Raw ICMP socket created over IPv6 via NEHelper, rcvsock: %d", &buf, 8u);
  }

  if (!v4[429])
  {
    v197 = 8;
    sysctl(&v206, 4u, &v200, &v197, 0, 0);
    v4[429] = v200;
  }

  if (setsockopt(*(v4 + 843), 41, 61, &v201, 4u) < 0)
  {
    v9 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "setsockopt(IPV6_RECVPKTINFO)", &buf, 2u);
    }
  }

  if (setsockopt(*(v4 + 843), 41, 37, &v201, 4u) < 0)
  {
    v10 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "setsockopt(IPV6_RECVHOPLIMIT)", &buf, 2u);
    }
  }

  *(v4 + 1683) = bswap32(getpid()) >> 16;
  v11 = *(v4 + 851);
  if (v11 > 0x3B || ((1 << v11) & 0xC00000000020040) == 0)
  {
    v23 = v4[1];
    if (v23)
    {
      v23(*v4, "traceroute6: unknown probe protocol %d\n", *(v4 + 851));
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown probe protocol %d\n", *(v4 + 851));
    }

    return 5;
  }

  v12 = NEHelperGetRawSocket();
  *(v4 + 844) = v12;
  v7 = otherLogHandle;
  if (v12 < 0)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = *__error();
      buf.ai_flags = 67109120;
      buf.ai_family = v20;
      v19 = "TR: Failed to create raw UDP send socket over IPv6, errno: %d";
      goto LABEL_27;
    }

    return *__error();
  }

  v13 = v12;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    buf.ai_flags = 67109120;
    buf.ai_family = v13;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "TR: Raw UDP socket created over IPv6 via NEHelper, sndsock: %d", &buf, 8u);
  }

  if (v4[429] < *(v4 + 846))
  {
    v14 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      v15 = "TR: traceroute6: max hoplimit must be larger than first hoplimit.\n";
LABEL_22:
      v16 = v14;
      v17 = 2;
LABEL_39:
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, v15, &buf, v17);
    }

    return 0xFFFFFFFFLL;
  }

  v22 = v4 + 847;
  if (*(v4 + 853))
  {
    *v22 = 1;
  }

  else if (*v22 == -1)
  {
    goto LABEL_35;
  }

  if (setsockopt(*(v4 + 844), 41, 36, v4 + 3388, 4u) == -1)
  {
    v28 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "TR: setsockopt(IPV6_TCLASS)", &buf, 2u);
    }

    return 7;
  }

LABEL_35:
  setvbuf(*MEMORY[0x277D85E08], 0, 1, 0x400uLL);
  memset(&v199.ai_addrlen, 0, 32);
  *&v199.ai_flags = xmmword_232816AF0;
  v24 = getaddrinfo(v4[288], 0, &v199, &v198);
  if (v24)
  {
    v25 = v24;
    v26 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v27 = gai_strerror(v25);
    buf.ai_flags = 136315138;
    *&buf.ai_family = v27;
    v15 = "TR: traceroute6: %s\n";
LABEL_38:
    v16 = v26;
    v17 = 12;
    goto LABEL_39;
  }

  v29 = v198;
  if (v198->ai_addrlen != 28)
  {
    v14 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    LOWORD(buf.ai_flags) = 0;
    v15 = "TR: traceroute6: size of sockaddr mismatch\n";
    goto LABEL_22;
  }

  ai_addr = v198->ai_addr;
  v31 = *ai_addr;
  *(v4 + 9) = *&ai_addr->sa_data[10];
  *(v4 + 60) = v31;
  ai_canonname = v29->ai_canonname;
  if (ai_canonname)
  {
    v33 = strdup(ai_canonname);
    if (!v33)
    {
      goto LABEL_412;
    }

    v4[288] = v33;
  }

  else if (!v4[288])
  {
    v14 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    LOWORD(buf.ai_flags) = 0;
    v15 = "TR: traceroute6: not enough core\n";
    goto LABEL_22;
  }

  if (v29->ai_next)
  {
    if (getnameinfo(v29->ai_addr, v29->ai_addrlen, v4 + 2336, 0x401u, 0, 0, 2))
    {
      *(v4 + 1168) = 63;
    }

    v34 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v35 = v4[288];
      buf.ai_flags = 136315394;
      *&buf.ai_family = v35;
      LOWORD(buf.ai_protocol) = 2080;
      *(&buf.ai_protocol + 2) = v4 + 292;
      _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "TR:  traceroute6: Warning: %s has multiple addresses; using %s\n", &buf, 0x16u);
    }
  }

  freeaddrinfo(v198);
  v36 = *(v4 + 851);
  v37 = 8;
  if (v36 <= 57)
  {
    if (v36 == 6)
    {
      v37 = 20;
    }

    else if (v36 != 17)
    {
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  if (v36 == 58)
  {
LABEL_69:
    v39 = *(v4 + 842);
    if (v39 >= v37)
    {
      if (v39 >= 0xFFFF)
      {
        v40 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          return 0xFFFFFFFFLL;
        }

        buf.ai_flags = 67109376;
        buf.ai_family = v37;
        LOWORD(buf.ai_socktype) = 1024;
        *(&buf.ai_socktype + 2) = 0xFFFF;
        v15 = "TR: traceroute6: packet size must be %u <= s < %d.\n";
        v16 = v40;
        v17 = 14;
        goto LABEL_39;
      }
    }

    else
    {
      *(v4 + 842) = v37;
    }

    goto LABEL_74;
  }

  if (v36 != 59)
  {
LABEL_66:
    v38 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    buf.ai_flags = 67109120;
    buf.ai_family = v36;
    v15 = "TR:  traceroute6: unknown probe protocol %d.\n";
    v16 = v38;
    v17 = 8;
    goto LABEL_39;
  }

  *(v4 + 842) = 0;
LABEL_74:
  v41 = malloc_type_calloc(0xFFFFuLL, 1uLL, 0xECF1DC1EuLL);
  if (!v41 || (v4[432] = v41, __memset_chk(), v4[15] = v4 + 11, v42 = (v4 + 15), v4[21] = v4 + 433, v4[22] = 0xFFFFLL, *(v4 + 32) = 28, v4[17] = v4 + 21, *(v4 + 36) = 1, (v43 = malloc_type_malloc(0x30uLL, 0x2AF5D3C0uLL)) == 0))
  {
LABEL_412:
    __break(1u);
  }

  v4[19] = v43;
  *(v4 + 40) = 48;
  setsockopt(*(v4 + 843), 0xFFFF, 4356, &v201, 4u);
  v44 = *(v4 + 848);
  if (v44)
  {
    setsockopt(*(v4 + 843), 0xFFFF, 1, &v201, 4u);
    v44 = *(v4 + 848);
  }

  if ((v44 & 0x10) != 0)
  {
    setsockopt(*(v4 + 843), 0xFFFF, 16, &v201, 4u);
  }

  v45 = *(v4 + 842);
  if (v45 <= 1)
  {
    v45 = 1;
  }

  v200 = v45;
  if (setsockopt(*(v4 + 844), 0xFFFF, 4097, &v200, 8u) < 0 && *(v4 + 851) != 59)
  {
    v57 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_ERROR, "TR: setsockopt(SO_SNDBUF)", &buf, 2u);
    }

    return 6;
  }

  v46 = *(v4 + 848);
  if (v46)
  {
    setsockopt(*(v4 + 844), 0xFFFF, 1, &v201, 4u);
    v46 = *(v4 + 848);
  }

  if ((v46 & 0x10) != 0)
  {
    setsockopt(*(v4 + 844), 0xFFFF, 16, &v201, 4u);
  }

  v47 = v4[284];
  if (v47)
  {
    v48 = v47[3];
    v47[1] = 2 * v48;
    if (setsockopt(*(v4 + 844), 41, 51, v47, (16 * (v48 & 0x7F)) | 8))
    {
      v26 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        return 0xFFFFFFFFLL;
      }

      v49 = __error();
      v50 = strerror(*v49);
      buf.ai_flags = 136315138;
      *&buf.ai_family = v50;
      v15 = "TR: setsockopt(IPV6_RTHDR): %s\n";
      goto LABEL_38;
    }
  }

  v4[4] = 0;
  *(v4 + 14) = 0;
  v4[5] = 0;
  v4[6] = 0;
  v51 = (v4 + 287);
  v52 = v4[287];
  if (v52)
  {
    *v208 = 0;
    memset(&buf.ai_socktype, 0, 40);
    buf.ai_socktype = 2;
    *&buf.ai_flags = 0x1E00000004;
    v53 = getaddrinfo(v52, "0", &buf, v208);
    if (v53)
    {
      v54 = v4[1];
      if (v54)
      {
        v55 = *v4;
        v56 = v4[287];
LABEL_112:
        v64 = gai_strerror(v53);
        v54(v55, "traceroute6: %s: %s\n", v56, v64);
        return 0xFFFFFFFFLL;
      }

      v65 = *v51;
      goto LABEL_124;
    }

    v186 = v4 + 847;
    v62 = *v208;
    v63 = *(*v208 + 16);
    if (v63 >= 0x1D)
    {
      v54 = v4[1];
      if (v54)
      {
        v55 = *v4;
        v56 = v4[287];
        v53 = 0;
        goto LABEL_112;
      }

      v65 = *v51;
      v53 = 0;
LABEL_124:
      v69 = gai_strerror(v53);
      printf("traceroute6: %s: %s\n", v65, v69);
      return 0xFFFFFFFFLL;
    }

    memcpy(v4 + 4, *(*v208 + 32), v63);
    freeaddrinfo(v62);
  }

  else
  {
    v186 = v4 + 847;
    v208[0] = 0;
    *&buf.ai_flags = *(v4 + 60);
    *&buf.ai_protocol = *(v4 + 9);
    HIWORD(buf.ai_flags) = 6695;
    v58 = v4[285];
    if (v58)
    {
      *&buf.ai_socktype = *inet6_rthdr_getaddr(v58, 1);
    }

    v59 = socket(30, 2, 0);
    if (v59 < 0)
    {
      v70 = "socket";
      goto LABEL_411;
    }

    v60 = v59;
    if (connect(v59, &buf, LOBYTE(buf.ai_flags)) < 0)
    {
      v70 = "connect";
      goto LABEL_411;
    }

    v208[0] = 28;
    if (getsockname(v60, v4 + 2, v208) < 0)
    {
LABEL_125:
      v70 = "getsockname";
LABEL_411:
      perror(v70);
      return 0xFFFFFFFFLL;
    }

    if (getnameinfo(v4 + 2, *(v4 + 32), v205, 0x401u, 0, 0, 2))
    {
      v61 = v4[1];
      if (v61)
      {
        v61(*v4, "getnameinfo failed for source\n");
      }

      else
      {
        fwrite("getnameinfo failed for source\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      return 0xFFFFFFFFLL;
    }

    *v51 = v205;
    close(v60);
  }

  *(v4 + 17) = 0;
  if (bind(*(v4 + 844), v4 + 2, *(v4 + 32)) < 0)
  {
    v70 = "bind";
    goto LABEL_411;
  }

  buf.ai_flags = 28;
  if (getsockname(*(v4 + 844), v4 + 2, &buf) < 0)
  {
    goto LABEL_125;
  }

  *(v4 + 1681) = bswap32(*(v4 + 17)) >> 16;
  v66 = MEMORY[0x277D85DF8];
  if (*(v4 + 854))
  {
    v67 = as_setup(v4[286]);
    v4[431] = v67;
    if (!v67)
    {
      v68 = v4[1];
      if (v68)
      {
        v68(*v4, "traceroute6: as_setup failed, AS# lookups disabled\n");
      }

      else
      {
        fwrite("traceroute6: as_setup failed, AS# lookups disabled\n", 0x33uLL, 1uLL, *v66);
      }

      fflush(*v66);
      *(v4 + 854) = 0;
    }
  }

  v184 = (v4 + 292);
  if (getnameinfo((v4 + 60), *(v4 + 60), v4 + 2336, 0x401u, 0, 0, 2))
  {
    v71 = 0;
    *(v4 + 2336) = 40;
    do
    {
      *(v4 + v71 + 2337) = aInvalid[v71 + 1];
      ++v71;
    }

    while (v71 != 9);
  }

  v72 = v4[1];
  if (v72)
  {
    v72(*v4, "traceroute6");
  }

  else
  {
    fwrite("traceroute6", 0xBuLL, 1uLL, *v66);
  }

  v73 = v4[1];
  if (v73)
  {
    v73(*v4, " to %s (%s)", v4[288], v184);
  }

  else
  {
    fprintf(*v66, " to %s (%s)", v4[288], v184);
  }

  if (*v51)
  {
    v74 = v4[1];
    if (v74)
    {
      v74(*v4, " from %s", *v51);
    }

    else
    {
      fprintf(*v66, " from %s", *v51);
    }
  }

  v75 = v4[1];
  v76 = *(v4 + 842) + 8 * (*(v4 + 851) == 17);
  if (v75)
  {
    v75(*v4, ", %lu hops max, %lu byte packets\n", v4[429], v76);
  }

  else
  {
    fprintf(*v66, ", %lu hops max, %lu byte packets\n", v4[429], v76);
  }

  fflush(*v66);
  v77 = *(v4 + 846);
  if (v77 >= 2)
  {
    v78 = v4[1];
    if (v78)
    {
      v78(*v4, "Skipping %d intermediate hops\n", v77 - 1);
    }

    else
    {
      printf("Skipping %d intermediate hops\n", v77 - 1);
    }
  }

  if (connect(*(v4 + 844), (v4 + 60), 0x1Cu))
  {
    v79 = v4[1];
    if (v79)
    {
      v80 = *v4;
      v81 = __error();
      v82 = strerror(*v81);
      v79(v80, "connect: %s\n", v82);
    }

    else
    {
      v85 = *v66;
      v86 = __error();
      v87 = strerror(*v86);
      fprintf(v85, "connect: %s\n", v87);
    }

    return 0xFFFFFFFFLL;
  }

  interface_for_ipv6_address = get_interface_for_ipv6_address((v4 + 4), v4 + 2320, 0x10uLL);
  v4[289] = interface_for_ipv6_address;
  if (*(v4 + 851) == 6)
  {
    if (!interface_for_ipv6_address)
    {
      traceroute6_run_cold_1(v4 + 287);
    }

    pcap_on_interface_0 = create_pcap_on_interface_0(v4, interface_for_ipv6_address);
  }

  else
  {
    pcap_on_interface_0 = 0;
  }

  v88 = *(v4 + 846);
  if (v4[429] >= v88)
  {
    v190 = 0;
    v191 = 0;
    v192 = 0;
    while (1)
    {
      v187 = v88;
      bzero(&buf, 0x8B8uLL);
      buf.ai_flags = 30;
      buf.ai_socktype = v187;
      v204 = v4 + 292;
      v89 = v4[1];
      if (v89)
      {
        v89(*v4, "%2d ", v187);
      }

      else
      {
        printf("%2d ", v187);
      }

      v196 = 0uLL;
      if (v4[428])
      {
        break;
      }

      LODWORD(v185) = 0;
      v178 = 1;
LABEL_398:
      v179 = v4[1];
      if (v179)
      {
        v179(*v4, "\n");
      }

      else
      {
        putchar(10);
      }

      if (!v178 || v185 >= 1 && v185 >= (v4[428] + 1) >> 1)
      {
        return 0;
      }

      v88 = v187 + 1;
      if (v4[429] < (v187 + 1))
      {
        goto LABEL_405;
      }
    }

    v185 = 0;
    v189 = 0;
LABEL_165:
    v195.tv_sec = 0;
    *&v195.tv_usec = 0;
    v194.tv_sec = 0;
    *&v194.tv_usec = 0;
    v193 = 0;
    gettimeofday(&v195, 0);
    send_probe6(v4, ++v190, v187);
    v188 = bswap32(v190) >> 16;
    while (1)
    {
      v90 = wait_for_reply6(v4, *(v4 + 843), pcap_on_interface_0, v42, &v193);
      if (!v90)
      {
LABEL_302:
        buf.ai_protocol = 1;
        v145 = v4[1];
        if (v145)
        {
          v145(*v4, " *");
        }

        else
        {
          printf(" *");
        }

        goto LABEL_305;
      }

      v91 = v90;
      gettimeofday(&v194, 0);
      v92 = v193;
      if (v193)
      {
        v93 = *(v4 + 849);
        if (v91 <= 0x3B)
        {
          if (v93)
          {
            v94 = v4[1];
            if (v94)
            {
              v95 = *v4;
              v96 = inet_ntop(30, v4 + 12, v208, 0x2Eu);
              v94(v95, "packet too short (%zd bytes) from %s\n", v91, v96);
            }

            else
            {
              inet_ntop(30, v4 + 12, v208, 0x2Eu);
              printf("packet too short (%zd bytes) from %s\n");
            }
          }

          goto LABEL_299;
        }

        if (v93 >= 2)
        {
          v101 = v4[1];
          if (v101)
          {
            v101(*v4, "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*(v4 + 1752)) >> 16, bswap32(*(v4 + 1753)) >> 16, *(v4 + 877));
          }

          else
          {
            printf("tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*(v4 + 1752)) >> 16, bswap32(*(v4 + 1753)) >> 16, *(v4 + 877));
          }
        }

        if (*(v4 + 1683) == bswap32(*(v4 + 1753)) >> 16)
        {
          v117 = bswap32(*(v4 + 1752));
          v118 = v190;
          if (*(v4 + 855))
          {
            v118 = 0;
          }

          v119 = *(v4 + 849);
          if (v118 + *(v4 + 1682) == HIWORD(v117))
          {
            if (v119 >= 2)
            {
              v147 = v4[1];
              if (v147)
              {
                v147(*v4, "tcp_packet_ok: match\n");
              }

              else
              {
                puts("tcp_packet_ok: match");
              }
            }

LABEL_314:
            v148 = v4[12] == v196 && v4[13] == *(&v196 + 1);
            if (v148)
            {
              goto LABEL_352;
            }

            if (v189)
            {
              v149 = v4[1];
              if (v149)
              {
                v149(*v4, "\n   \n");
              }

              else
              {
                fwrite("\n   \n", 5uLL, 1uLL, *MEMORY[0x277D85E08]);
              }
            }

            msg_name = v42->msg_name;
            v151 = *(v42->msg_name + 12);
            v203[0] = *v42->msg_name;
            *(v203 + 12) = v151;
            if (getnameinfo(msg_name, msg_name->sa_len, v208, 0x401u, 0, 0, 2))
            {
              strcpy(v208, "invalid");
            }

            if (*(v4 + 854))
            {
              v152 = as_lookup(v4[431], v208, 30);
              buf.ai_family = v152;
              v153 = v4[1];
              if (v153)
              {
                v153(*v4, " [AS%u]", v152);
              }

              else
              {
                printf(" [AS%u]", v152);
              }
            }

            if (!*(v4 + 850))
            {
              v155 = *(v4 + 852);
              v156 = inetname6(msg_name, 0);
              strnlen(v156, 0x401uLL);
              __memcpy_chk();
              v157 = v4[1];
              if (v155)
              {
                if (v157)
                {
                  v158 = *v4;
                  v183 = v208;
                  v159 = " %s (%s)";
                  goto LABEL_337;
                }

                v183 = v208;
                printf(" %s (%s)");
              }

              else if (v157)
              {
                v158 = *v4;
                v159 = " %s";
LABEL_337:
                v157(v158, v159);
              }

              else
              {
                printf(" %s");
              }

              free(v156);
              goto LABEL_341;
            }

            strnlen(v208, 0x401uLL);
            __memcpy_chk();
            v154 = v4[1];
            if (v154)
            {
              v154(*v4, " %s", v208);
            }

            else
            {
              printf(" %s", v208);
            }

LABEL_341:
            if (*(v4 + 849))
            {
              v160 = v4[1];
              if (v160)
              {
                v161 = *v4;
                v162 = v4[25];
                if (v162)
                {
                  v163 = inet_ntop(30, v162, v208, 0x401u);
                }

                else
                {
                  v163 = "?";
                }

                v160(v161, " %zd bytes of data to %s", v91, v163);
              }

              else
              {
                v164 = v4[25];
                if (v164)
                {
                  v165 = inet_ntop(30, v164, v208, 0x401u);
                }

                else
                {
                  v165 = "?";
                }

                printf(" %zd bytes of data to %s", v91, v165);
              }
            }

            v196 = *(v4 + 6);
LABEL_352:
            v166 = v4[1];
            if (v166)
            {
              v167 = *v4;
              v168 = deltaT(&v195, &v194);
              v166(v167, "  %.3f ms", v168);
            }

            else
            {
              v169 = deltaT(&v195, &v194);
              printf("  %.3f ms", v169);
            }

            buf.ai_addr = COERCE_SOCKADDR_(deltaT(&v195, &v194));
            if (v92)
            {
              ++HIDWORD(v185);
              goto LABEL_305;
            }

            buf.ai_addrlen = v192;
            *(&buf.ai_addrlen + 1) = v191;
            if (v191 == 1)
            {
              v191 = 1;
              if (v192 > 1)
              {
                switch(v192)
                {
                  case 2:
                    LODWORD(v185) = v185 + 1;
                    v175 = v4[1];
                    if (v175)
                    {
                      v175(*v4, " !S");
                    }

                    else
                    {
                      printf(" !S");
                    }

                    v191 = 1;
                    v174 = 2;
                    break;
                  case 3:
                    LODWORD(v185) = v185 + 1;
                    v176 = v4[1];
                    if (v176)
                    {
                      v176(*v4, " !A");
                    }

                    else
                    {
                      printf(" !A");
                    }

                    v191 = 1;
                    v174 = 3;
                    break;
                  case 4:
                    if (*(v4 + 845) <= 1u)
                    {
                      v170 = v4[1];
                      if (v170)
                      {
                        v170(*v4, " !");
                      }

                      else
                      {
                        printf(" !");
                      }
                    }

                    ++HIDWORD(v185);
                    v191 = 1;
                    v174 = 4;
                    break;
                  default:
                    goto LABEL_305;
                }

                goto LABEL_396;
              }

              if (v192)
              {
                LODWORD(v185) = v185 + 1;
                v173 = v4[1];
                if (v173)
                {
                  v173(*v4, " !P");
                }

                else
                {
                  printf(" !P");
                }

                v191 = 1;
                v192 = 1;
              }

              else
              {
                LODWORD(v185) = v185 + 1;
                v177 = v4[1];
                if (v177)
                {
                  v177(*v4, " !N");
                }

                else
                {
                  printf(" !N");
                }

                v191 = 1;
                v192 = 0;
              }
            }

            else
            {
              if (v191 == 4 && v192 == 1)
              {
                v171 = v4[1];
                if (v171)
                {
                  v171(*v4, " !H");
                }

                else
                {
                  printf(" !H");
                }

                ++HIDWORD(v185);
                v191 = 4;
                v174 = 1;
LABEL_396:
                v192 = v174;
                goto LABEL_305;
              }

              if (v191 == 129)
              {
                if (*(v4 + 845) <= 1u)
                {
                  v172 = v4[1];
                  if (v172)
                  {
                    v172(*v4, " !");
                  }

                  else
                  {
                    printf(" !");
                  }
                }

                ++HIDWORD(v185);
                v191 = 129;
              }
            }

LABEL_305:
            v146 = v4[3];
            if (v146)
            {
              v146(v4[2], &buf);
            }

            else
            {
              fflush(*MEMORY[0x277D85E08]);
            }

            if (++v189 >= v4[428])
            {
              v178 = HIDWORD(v185) == 0;
              goto LABEL_398;
            }

            goto LABEL_165;
          }
        }

        else
        {
          v119 = *(v4 + 849);
        }

        if (v119 >= 2)
        {
          v98 = v4[1];
          if (v98)
          {
            v99 = *v4;
            v100 = "tcp_packet_ok: no match\n";
            goto LABEL_298;
          }

          puts("tcp_packet_ok: no match");
        }
      }

      else
      {
        v97 = v4[15];
        if (v91 > 7)
        {
          v102 = *v4[17];
          v4[25] = 0;
          v103 = *(v4 + 40);
          if (v103 < 0xC)
          {
            goto LABEL_225;
          }

          v104 = v4[19];
          if (!v104)
          {
            goto LABEL_225;
          }

          v105 = 0;
          v106 = 0;
          v107 = v104 + v103;
          do
          {
            if (v104[1] == 41)
            {
              v108 = v104[2];
              v109 = *v104;
              if (v108 == 47)
              {
                if (v109 == 16)
                {
                  v106 = (v104 + 3);
                }
              }

              else if (v108 == 46 && v109 == 32)
              {
                v105 = v104 + 3;
                v4[25] = v104 + 3;
              }
            }

            else
            {
              v109 = *v104;
            }

            v104 = (v104 + ((v109 + 3) & 0x1FFFFFFFCLL));
          }

          while ((v104 + 3) <= v107);
          if (v105 && v106)
          {
            v110 = *v106;
          }

          else
          {
LABEL_225:
            warnx("failed to get received hop limit or packet info", v182, v183);
            v110 = 0;
          }

          *(v4 + 845) = v110;
          v191 = *v102;
          v192 = v102[1];
          if ((v191 != 3 || v102[1]) && v191 != 1)
          {
            if (v191 == 4)
            {
              if (v192 == 1)
              {
                goto LABEL_201;
              }

LABEL_261:
              if (!*(v4 + 849))
              {
                goto LABEL_299;
              }

              if (getnameinfo(v97, v97->sa_len, v208, 0x402u, 0, 0, 2))
              {
                strcpy(v208, "invalid");
              }

              v129 = v4[1];
              if (v129)
              {
                v130 = *v4;
                v131 = v4[25];
                if (v131)
                {
                  v132 = inet_ntop(30, v131, v207, 0x2Eu);
                }

                else
                {
                  v132 = "?";
                }

                v129(v130, "\n%zd bytes from %s to %s", v91, v208, v132);
              }

              else
              {
                v133 = v4[25];
                if (v133)
                {
                  v134 = inet_ntop(30, v133, v207, 0x2Eu);
                }

                else
                {
                  v134 = "?";
                }

                printf("\n%zd bytes from %s to %s", v91, v208, v134);
              }

              v135 = v4[1];
              if (v135)
              {
                v136 = *v4;
                v137 = pr_type6(v191);
                v135(v136, ": icmp type %d (%s) code %d\n", v191, v137, v192);
              }

              else
              {
                v138 = pr_type6(v191);
                printf(": icmp type %d (%s) code %d\n", v191, v138, v192);
              }

              if (v91 >= 1)
              {
                v139 = 0;
                v140 = v102 + 8;
                do
                {
                  if ((v139 & 0xF) == 0)
                  {
                    v141 = v4[1];
                    if (v141)
                    {
                      v141(*v4, "%04x:", v139);
                    }

                    else
                    {
                      printf("%04x:", v139);
                    }
                  }

                  if ((v139 & 3) == 0)
                  {
                    v142 = v4[1];
                    if (v142)
                    {
                      v142(*v4, " ");
                    }

                    else
                    {
                      putchar(32);
                    }
                  }

                  v143 = v4[1];
                  if (v143)
                  {
                    v143(*v4, "%02x", v140[v139]);
                  }

                  else
                  {
                    printf("%02x", v140[v139]);
                  }

                  if ((v139 & 0xF) == 0xF)
                  {
                    v144 = v4[1];
                    if (v144)
                    {
                      v144(*v4, "\n");
                    }

                    else
                    {
                      putchar(10);
                    }
                  }

                  ++v139;
                }

                while (v91 != v139);
              }

              if ((v91 & 0xF) == 0)
              {
                goto LABEL_299;
              }

              v98 = v4[1];
              if (!v98)
              {
                putchar(10);
                goto LABEL_299;
              }

              v99 = *v4;
              v100 = "\n";
              goto LABEL_298;
            }

            if (v191 != 129 || *(v4 + 851) != 58 || *(v102 + 2) != *(v4 + 1683))
            {
              goto LABEL_261;
            }

            v120 = *(v102 + 3);
LABEL_249:
            if (v120 == v188)
            {
              goto LABEL_314;
            }

            goto LABEL_261;
          }

LABEL_201:
          uphdr = get_uphdr(v4, (v102 + 8), &v102[v91]);
          if (!uphdr)
          {
            if (*(v4 + 849))
            {
              warnx("failed to get upper layer header");
            }

            goto LABEL_299;
          }

          v112 = uphdr;
          if (*(v4 + 853))
          {
            v113 = (*(v102 + 2) >> 12) & 3;
            if (v113 != (*v186 & 3))
            {
              if (v113)
              {
                if (v113 != 3)
                {
                  goto LABEL_236;
                }

                v114 = v4[1];
                if (!v114)
                {
                  printf(" (ecn=mangled)");
                  goto LABEL_236;
                }

                v115 = *v4;
                v116 = " (ecn=mangled)";
              }

              else
              {
                v114 = v4[1];
                if (!v114)
                {
                  printf(" (ecn=bleached)");
                  goto LABEL_236;
                }

                v115 = *v4;
                v116 = " (ecn=bleached)";
              }

LABEL_233:
              v114(v115, v116);
              goto LABEL_236;
            }

            v114 = v4[1];
            if (v114)
            {
              v115 = *v4;
              v116 = " (ecn=passed)";
              goto LABEL_233;
            }

            printf(" (ecn=passed)");
          }

LABEL_236:
          v121 = *(v4 + 851);
          if (v121 > 57)
          {
            if (v121 == 58)
            {
              if (v112[2] != *(v4 + 1683))
              {
                goto LABEL_261;
              }

              v120 = v112[3];
              goto LABEL_249;
            }

            if (v121 == 59)
            {
              goto LABEL_314;
            }
          }

          else
          {
            if (v121 == 6)
            {
              v125 = *v112;
              if (v125 == bswap32(*(v4 + 1683)) >> 16)
              {
                v126 = v112[1];
                v127 = v190;
                if (*(v4 + 855))
                {
                  v127 = 0;
                }

                if (v126 == bswap32(v127 + *(v4 + 1682)) >> 16 && *(v112 + 1) == (v126 | (v125 << 16)))
                {
                  goto LABEL_314;
                }
              }

              goto LABEL_261;
            }

            if (v121 == 17)
            {
              v122 = *(v4 + 855);
              v123 = v190;
              if (!v122)
              {
                v123 = 0;
              }

              if (*v112 == bswap32(v123 + *(v4 + 1683)) >> 16)
              {
                v148 = v122 == 0;
                v124 = v190;
                if (!v148)
                {
                  v124 = 0;
                }

                if (v112[1] == bswap32(*(v4 + 1682) + v124) >> 16)
                {
                  goto LABEL_314;
                }
              }

              goto LABEL_261;
            }
          }

          v128 = v4[1];
          if (v128)
          {
            v128(*v4, "Unknown probe proto %d.\n", *(v4 + 851));
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], "Unknown probe proto %d.\n", *(v4 + 851));
          }

          goto LABEL_261;
        }

        if (*(v4 + 849))
        {
          if (getnameinfo(v4[15], v97->sa_len, v209, 0x401u, 0, 0, 2))
          {
            strcpy(v209, "invalid");
          }

          v98 = v4[1];
          if (v98)
          {
            v99 = *v4;
            v182 = v91;
            v183 = v209;
            v100 = "data too short (%zd bytes) from %s\n";
LABEL_298:
            v98(v99, v100);
            goto LABEL_299;
          }

          printf("data too short (%zd bytes) from %s\n");
        }
      }

LABEL_299:
      if (deltaT(&v195, &v194) > (1000 * v4[430]))
      {
        goto LABEL_302;
      }
    }
  }

LABEL_405:
  if (*(v4 + 854))
  {
    as_shutdown(v4[431]);
  }

  v180 = otherLogHandle;
  v181 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v181)
  {
    LOWORD(buf.ai_flags) = 0;
    _os_log_impl(&dword_23255B000, v180, OS_LOG_TYPE_DEFAULT, "TR: end traceroute6_run\n", &buf, 2u);
    return 0;
  }

  return result;
}

char *get_interface_for_ipv6_address(uint64_t a1, char *a2, size_t a3)
{
  v12 = 0;
  if (getifaddrs(&v12))
  {
    get_interface_for_ipv6_address_cold_1();
  }

  v6 = v12;
  if (!v12)
  {
    return 0;
  }

  while (1)
  {
    ifa_addr = v6->ifa_addr;
    if (ifa_addr->sa_family == 30 && *(a1 + 24) == *&ifa_addr[1].sa_data[6])
    {
      v9 = *&ifa_addr->sa_data[6];
      v8 = *&ifa_addr[1].sa_len;
      if (*(a1 + 8) == v9 && *(a1 + 16) == v8)
      {
        break;
      }
    }

    v6 = v6->ifa_next;
    if (!v6)
    {
      return 0;
    }
  }

  snprintf(a2, a3, "%s", v6->ifa_name);
  return a2;
}

pcap_t *create_pcap_on_interface_0(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *&v7.bf_len = 0;
  v7.bf_insns = 0;
  v3 = pcap_create(a2, create_pcap_on_interface_ebuf_0);
  if (!v3)
  {
    errx(71, "pcap_open_live(%s) failed: %s");
  }

  v4 = v3;
  if (pcap_set_snaplen(v3, 0xFFFF) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_snaplen(%s, %d) failed: %s");
  }

  if (pcap_set_immediate_mode(v4, 1) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_immediate_mode(%s, %d) failed: %s");
  }

  if (pcap_setnonblock(v4, 1, create_pcap_on_interface_ebuf_0))
  {
    create_pcap_on_interface_cold_1_0();
  }

  if (pcap_set_buffer_size(v4, 0xFFFF))
  {
    create_pcap_on_interface_cold_2_0();
  }

  if (pcap_activate(v4) < 0)
  {
    create_pcap_on_interface_cold_5_0();
  }

  inet_ntop(30, (a1 + 68), v9, 0x2Eu);
  inet_ntop(30, (a1 + 40), v8, 0x2Eu);
  snprintf(create_pcap_on_interface_filter_str_0, 0x400uLL, "tcp and src %s and dst %s", v9, v8);
  if (pcap_compile(v4, &v7, create_pcap_on_interface_filter_str_0, 1, 0xFFFFFFFF))
  {
    create_pcap_on_interface_cold_3_0(v4);
  }

  if (pcap_setfilter(v4, &v7) < 0)
  {
    create_pcap_on_interface_cold_4(v4);
  }

  if (*(a1 + 3396) >= 2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v5(*a1, "# using pcap filter %s\n", create_pcap_on_interface_filter_str_0);
    }

    else
    {
      printf("# using pcap filter %s\n", create_pcap_on_interface_filter_str_0);
    }
  }

  return v4;
}

uint64_t send_probe6(void *a1, unsigned int a2, int a3)
{
  v22 = a3;
  if (setsockopt(*(a1 + 844), 41, 4, &v22, 4u) < 0)
  {
    perror("setsockopt IPV6_UNICAST_HOPS");
  }

  v5 = *(a1 + 851);
  if (v5 > 57)
  {
    if (v5 == 59)
    {
      goto LABEL_28;
    }

    if (v5 == 58)
    {
      v12 = a1[432];
      *v12 = 128;
      *(v12 + 4) = *(a1 + 1683);
      *(v12 + 6) = bswap32(a2) >> 16;
      goto LABEL_28;
    }
  }

  else
  {
    if (v5 == 6)
    {
      v6 = a1[432];
      v14 = *(a1 + 1683);
      *v6 = __rev16(v14);
      if (*(a1 + 855))
      {
        v15 = 0;
      }

      else
      {
        v15 = a2;
      }

      v16 = v15 + *(a1 + 1682);
      v6[1] = bswap32(v16) >> 16;
      *(v6 + 1) = bswap32(v14 | (v16 << 16));
      *(v6 + 2) = 0;
      *(v6 + 12) = v6[6] & 0xF | 0x50;
      *(v6 + 13) = 2;
      v6[8] = 0;
      v6[8] = tcp_chksum((a1 + 4), a1 + 60, a1[432], *(a1 + 842));
      if (*(a1 + 849) >= 2)
      {
        v17 = a1[1];
        if (v17)
        {
          v17(*a1, "\nTCP probe hops %d sport %u dport %u seq %u\n", v22, bswap32(*v6) >> 16, bswap32(v6[1]) >> 16, bswap32(*(v6 + 1)));
        }

        else
        {
          printf("\nTCP probe hops %d sport %u dport %u seq %u\n", v22, bswap32(*v6) >> 16, bswap32(v6[1]) >> 16, bswap32(*(v6 + 1)));
        }
      }

      goto LABEL_27;
    }

    if (v5 == 17)
    {
      v6 = a1[432];
      v7 = *(a1 + 855);
      v8 = v7 == 0;
      if (v7)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      *v6 = bswap32(v9 + *(a1 + 1683)) >> 16;
      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }

      v6[1] = bswap32(v10 + *(a1 + 1682)) >> 16;
      v11 = *(a1 + 842);
      *(v6 + 1) = bswap32(v11) >> 16;
      v6[3] = udp_cksum((a1 + 4), a1 + 60, v6, v11);
LABEL_27:
      *(a1 + 31) = v6[1];
LABEL_28:
      v19 = send(*(a1 + 844), a1[432], *(a1 + 842), 0);
      v20 = v19;
      if (v19 < 0)
      {
        perror("send");
      }

      else if (v19 == *(a1 + 842))
      {
        return 0;
      }

      v21 = a1[1];
      if (v21)
      {
        v21(*a1, "traceroute6: wrote %s %d chars, ret=%zd\n", a1[288], *(a1 + 842), v20);
      }

      else
      {
        printf("traceroute6: wrote %s %d chars, ret=%zd\n", a1[288], *(a1 + 842), v20);
      }

      fflush(*MEMORY[0x277D85E08]);
      return 0;
    }
  }

  v13 = a1[1];
  if (v13)
  {
    v13(*a1, "Unknown probe protocol %d.\n", *(a1 + 851));
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Unknown probe protocol %d.\n", *(a1 + 851));
  }

  return 0xFFFFFFFFLL;
}

ssize_t wait_for_reply6(ssize_t result, int a2, pcap_t *a3, msghdr *a4, _BYTE *a5)
{
  v9 = result;
  if (a3)
  {
    result = pcap_get_selectable_fd(a3);
    v10 = result;
  }

  else
  {
    v10 = -1;
  }

  if (v10 <= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v10;
  }

  if (v10 == -1)
  {
    v12 = a2;
  }

  else
  {
    v12 = v11;
  }

  v13 = (a2 + 1) >> 5;
  if (((a2 + 1) & 0x1F) != 0)
  {
    ++v13;
  }

  if (!v13 || (v34 = a4, v35 = a5, v14 = 4 * v13, (result = malloc_type_malloc(4 * v13, 0xF04AB1B7uLL)) == 0))
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v38.tv_sec = 0;
  *&v38.tv_usec = 0;
  bzero(result, v14);
  v16 = 1 << a2;
  v17 = a2 >> 5;
  v18 = 1 << v10;
  v19 = v10 >> 5;
  while (1)
  {
    if (__darwin_check_fd_set_overflow(a2, v15, 0))
    {
      v15->fds_bits[v17] |= v16;
    }

    if (v10 != -1 && __darwin_check_fd_set_overflow(v10, v15, 0))
    {
      v15->fds_bits[v19] |= v18;
    }

    v38.tv_sec = v9[430];
    v38.tv_usec = 0;
    if (select(v12 + 1, v15, 0, 0, &v38) < 1)
    {
      goto LABEL_57;
    }

    if (__darwin_check_fd_set_overflow(a2, v15, 0) && (v15->fds_bits[v17] & v16) != 0)
    {
      v29 = recvmsg(*(v9 + 843), v34, 0);
      goto LABEL_58;
    }

    if (v10 == -1)
    {
      goto LABEL_57;
    }

    if (!__darwin_check_fd_set_overflow(v10, v15, 0))
    {
      goto LABEL_57;
    }

    if ((v15->fds_bits[v19] & v18) == 0)
    {
      goto LABEL_57;
    }

    v36 = 0;
    v37 = 0;
    if (pcap_next_ex(a3, &v37, &v36) != 1)
    {
      goto LABEL_57;
    }

    if (*(v9 + 849) >= 2)
    {
      v20 = v9[1];
      if (v20)
      {
        v20(*v9, "# got TCP packet %d bytes\n", v37->caplen);
      }

      else
      {
        printf("# got TCP packet %d bytes\n", v37->caplen);
      }

      dump_hex(v36, v37->caplen);
    }

    v21 = pcap_datalink(a3);
    if (v21 != 1)
    {
      break;
    }

    caplen = v37->caplen;
    if (caplen >= 0xE)
    {
      v25 = *(v36 + 6);
      if (v25 == 33024)
      {
        v23 = 18;
        goto LABEL_35;
      }

      if (v25 == 56710)
      {
        v23 = 14;
LABEL_35:
        if (v23 <= caplen)
        {
          goto LABEL_49;
        }

        v24 = v9[1];
        if (v24)
        {
          v24(*v9, "# hdrlen %d > caplen %u\n", v23, caplen);
        }

        else
        {
          printf("# hdrlen %d > caplen %u\n", v23, caplen);
        }
      }

      else
      {
        v26 = __rev16(v25);
        v27 = v9[1];
        if (v27)
        {
          v27(*v9, "# cannot process TCP packet with Ethernet type 0x%04x\n", v26);
        }

        else
        {
          printf("# cannot process TCP packet with Ethernet type 0x%04x\n", v26);
        }
      }
    }
  }

  if (v21 == 108)
  {
    caplen = v37->caplen;
    v23 = 4;
    goto LABEL_35;
  }

  if (v21 != 12)
  {
    v30 = v9[1];
    if (v30)
    {
      v31 = *v9;
      v32 = pcap_datalink(a3);
      v30(v31, "# cannot process TCP packet with data link %d\n", v32);
    }

    else
    {
      v33 = pcap_datalink(a3);
      printf("# cannot process TCP packet with data link %d\n", v33);
    }

LABEL_57:
    v29 = 0;
    goto LABEL_58;
  }

  v23 = 0;
  caplen = v37->caplen;
LABEL_49:
  v28 = caplen - v23;
  if (v28 >= 0xFFFF)
  {
    v29 = 0xFFFFLL;
  }

  else
  {
    v29 = v28;
  }

  memcpy(v9 + 433, &v36[v23], v29);
  *(v9 + 6) = *(v9 + 68);
  *(v9 + 44) = 7696;
  *v35 = 1;
LABEL_58:
  free(v15);
  return v29;
}

uint64_t udp_cksum(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a4;
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  LODWORD(v10) = bswap32(a4);
  HIBYTE(v10) = 17;
  v7[1] = in_cksum(&v8, 0x28u);
  v7[0] = in_cksum(a3, v4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

uint64_t tcp_chksum(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a4;
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  LODWORD(v10) = bswap32(a4);
  HIBYTE(v10) = 6;
  v7[1] = in_cksum(&v8, 0x28u);
  v7[0] = in_cksum(a3, v4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

uint64_t get_hoplim(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xC)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      do
      {
        if (v2[1] == 41)
        {
          v3 = *v2;
          if (v2[2] == 47 && v3 == 16)
          {
            return v2[3];
          }
        }

        else
        {
          v3 = *v2;
        }

        v2 = (v2 + ((v3 + 3) & 0x1FFFFFFFCLL));
      }

      while ((v2 + 3) <= *(a1 + 32) + v1);
    }
  }

  return 0xFFFFFFFFLL;
}

const char *pr_type6(unsigned __int8 a1)
{
  if (a1 <= 0x82u)
  {
    if (a1 <= 3u)
    {
      switch(a1)
      {
        case 1u:
          return "Destination Unreachable";
        case 2u:
          return "Packet Too Big";
        case 3u:
          return "Time Exceeded";
      }
    }

    else if (a1 > 0x80u)
    {
      if (a1 == 129)
      {
        return "Echo Reply";
      }

      if (a1 == 130)
      {
        return "Group Membership Query";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return "Parameter Problem";
      }

      if (a1 == 128)
      {
        return "Echo Request";
      }
    }

    return "Unknown";
  }

  if (a1 <= 0x85u)
  {
    switch(a1)
    {
      case 0x83u:
        return "Group Membership Report";
      case 0x84u:
        return "Group Membership Reduction";
      case 0x85u:
        return "Router Solicitation";
    }

    return "Unknown";
  }

  if (a1 > 0x87u)
  {
    if (a1 == 136)
    {
      return "Neighbor Advertisement";
    }

    if (a1 == 137)
    {
      return "Redirect";
    }

    return "Unknown";
  }

  if (a1 == 134)
  {
    return "Router Advertisement";
  }

  else
  {
    return "Neighbor Solicitation";
  }
}

unsigned __int8 *get_uphdr(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a2 + 40);
  if (a2 + 40 <= a3)
  {
    v5 = *(a2 + 6);
    while (1)
    {
      if ((a3 - v3) < 8 * (v5 != 59))
      {
        return 0;
      }

      if (v5 <= 49)
      {
        if (v5 == 44)
        {
          v7 = 8;
          goto LABEL_20;
        }

        if (v5 == 6 || v5 == 17)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v5 > 57)
      {
        break;
      }

      if (v5 != 51)
      {
        if (v5 == 50)
        {
          return 0;
        }

LABEL_18:
        v6 = 3;
        goto LABEL_19;
      }

      v6 = 2;
LABEL_19:
      v7 = (v3[1] << v6) + 8;
LABEL_20:
      v5 = *v3;
      v3 += v7;
    }

    if (v5 == 58)
    {
      goto LABEL_21;
    }

    if (v5 == 59)
    {
      v3 = &get_uphdr_none_hdr;
LABEL_21:
      if (*(a1 + 3404) == v5)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    goto LABEL_18;
  }

  return 0;
}

char *inetname6(sockaddr *a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    goto LABEL_18;
  }

  if (gethostname(__s, 0x101uLL) || (v3 = strchr(__s, 46)) == 0)
  {
    __s[0] = 0;
  }

  else
  {
    strlen(v3 + 1);
    __memmove_chk();
  }

  if (getnameinfo(a1, a1->sa_len, __s1, 0x401u, 0, 0, 4))
  {
LABEL_18:
    if (getnameinfo(a1, a1->sa_len, __s1, 0x401u, 0, 0, 2))
    {
      __s1[0] = 105;
      v4 = 1u;
      do
      {
        __s1[v4] = aInvalid_0[v4];
        ++v4;
      }

      while (v4 != 8);
    }
  }

  else
  {
    v6 = strchr(__s1, 46);
    if (v6)
    {
      v7 = v6;
      if (!strcmp(v6 + 1, __s))
      {
        *v7 = 0;
      }
    }
  }

  result = strdup(__s1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_23260413C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232605AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232606534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23260ECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326126B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326145A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(STACK[0x220]) = 138412290;
      STACK[0x224] = a10;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "exception caught while retrieving process hintLiveUsage: process = %@", &STACK[0x220], 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x232614548);
  }

  _Unwind_Resume(a1);
}

void sub_2326151C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23261629C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ls_application_unregistered_notification_callback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v6 = [a5 objectForKeyedSubscript:{@"bundleIDs", a4}];
    v7 = v6;
    if (v6 && [v6 count])
    {
      v8 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v18 = v7;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Unregistered bundle IDs received from kLSApplicationUnregisteredNotification: %{private}@", buf, 0xCu);
      }

      v9 = a2;
      if (v9)
      {
        v10 = dispatch_time(0, 5000000000);
        v11 = [v9 queue];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __ls_application_unregistered_notification_callback_block_invoke;
        v14[3] = &unk_27898A7D0;
        v15 = v9;
        v16 = v7;
        dispatch_after(v10, v11, v14);
      }

      else
      {
        v13 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "FlowAnalyticsEngine is nil, cannot handle kLSApplicationUnregisteredNotification", buf, 2u);
        }
      }
    }

    else
    {
      v12 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Received nil or zero bundleIDs from kLSApplicationUnregisteredNotification", buf, 2u);
      }
    }
  }
}

void sub_23261D5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326200F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232623860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__901(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_2326282A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_232628464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ls_application_unregistered_notification_callback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) handleLaunchServicesApplicationUnregistration:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

uint64_t InitializeDeftemplates(uint64_t a1)
{
  AllocateEnvironmentData(a1, 5u, 0x88uLL, DeallocateDeftemplateData);
  v2 = *(*(a1 + 48) + 40);
  v3 = unk_2847936F8;
  v2[5] = xmmword_2847936E8;
  v2[6] = v3;
  v2[7] = xmmword_284793708;
  v4 = unk_2847936B8;
  v2[1] = xmmword_2847936A8;
  v2[2] = v4;
  v5 = unk_2847936D8;
  v2[3] = xmmword_2847936C8;
  v2[4] = v5;
  InitializeFacts(a1);
  *(*(*(a1 + 48) + 40) + 8) = RegisterModuleItem(a1, "deftemplate", AllocateModule_0, ReturnModule_0, BloadDeftemplateModuleReference, 0, EnvFindDeftemplateInModule);
  AddPortConstructItem(a1, "deftemplate", 2);
  DeftemplateBasicCommands(a1);
  DeftemplateFunctions(a1);
  v6 = AddConstruct(a1, "deftemplate", "deftemplates", ParseDeftemplate, EnvFindDeftemplate, GetConstructNamePointer, GetConstructPPForm, GetConstructModuleItem, EnvGetNextDeftemplate, SetNextConstruct, EnvIsDeftemplateDeletable, EnvUndeftemplate, ReturnDeftemplate);
  v7 = *(a1 + 48);
  **(v7 + 40) = v6;
  v8 = *(v7 + 40) + 16;

  return InstallPrimitive(a1, v8, 63);
}

uint64_t DecrementDeftemplateBusyCount(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 48) + 336) + 4))
  {
    --*(a2 + 64);
  }

  return result;
}

uint64_t DeallocateDeftemplateData(uint64_t a1)
{
  result = Bloaded(a1);
  if (!result)
  {
    DoForAllConstructs(a1, DestroyDeftemplateAction, *(*(*(a1 + 48) + 40) + 8), 0, 0);
    result = EnvGetNextDefmodule(a1, 0);
    if (result)
    {
      v3 = result;
      do
      {
        ModuleItem = GetModuleItem(a1, v3, *(*(*(a1 + 48) + 40) + 8));
        v5 = *(a1 + 48);
        *(*(v5 + 472) + 32) = ModuleItem;
        **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
        *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
        result = EnvGetNextDefmodule(a1, v3);
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

BOOL EnvIsDeftemplateDeletable(uint64_t a1, uint64_t a2)
{
  result = ConstructsDeletable(a1);
  if (result)
  {
    return *(a2 + 64) <= 0 && *(a2 + 72) == 0;
  }

  return result;
}

void *ReturnDeftemplate(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result[6] + 40);
    *(v4 + 128) = 0;
    *(v4 + 128) = (*(a2 + 56) >> 1) & 1;
    v5 = *(a2 + 48);
    if (v5)
    {
      do
      {
        DecrementSymbolCount(v3, *v5);
        RemoveHashedExpression(v3, *(v5 + 24));
        *(v5 + 24) = 0;
        RemoveHashedExpression(v3, *(v5 + 32));
        *(v5 + 32) = 0;
        RemoveConstraint(v3, *(v5 + 16));
        *(v5 + 16) = 0;
        v5 = *(v5 + 40);
      }

      while (v5);
      v6 = *(a2 + 48);
    }

    else
    {
      v6 = 0;
    }

    ReturnSlots(v3, v6);
    result = DeinstallConstructHeader(v3, a2);
    v7 = v3[6];
    *(*(v7 + 472) + 32) = a2;
    **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 768);
    *(*(*(v7 + 472) + 40) + 768) = *(*(v7 + 472) + 32);
  }

  return result;
}

void *ReturnSlots(void *result, uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2[5];
      ReturnExpression(v3, v2[3]);
      ReturnExpression(v3, v2[4]);
      result = RemoveConstraint(v3, v2[2]);
      v5 = v3[6];
      *(*(v5 + 472) + 32) = v2;
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 384);
      *(*(*(v5 + 472) + 40) + 384) = *(*(v5 + 472) + 32);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t EnvGetNextFactInTemplate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = a2 + 80;
    return *v3;
  }

  if ((*(a3 + 64) & 1) == 0)
  {
    v3 = a3 + 96;
    return *v3;
  }

  return 0;
}

uint64_t *CreateDeftemplateScopeMap(uint64_t a1, void **a2)
{
  v12 = 0;
  v3 = (*a2)[3];
  v4 = *a2[2];
  v5 = GetNumberOfDefmodules(a1) / 8 + 1;
  v6 = gm2(a1, v5);
  ClearBitString(v6, v5);
  SaveCurrentModule(a1);
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v8 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v8);
      v9 = *(v8 + 48);
      if (FindImportedConstruct(a1, "deftemplate", v4, v3, &v12, 1, 0))
      {
        *(v6 + v9 / 8) |= 1 << (v9 & 7);
      }

      v8 = EnvGetNextDefmodule(a1, v8);
    }

    while (v8);
  }

  RestoreCurrentModule(a1);
  v10 = EnvAddBitMap(a1, v6, v5);
  ++v10[1];
  rm(a1, v6, v5);
  return v10;
}

void *DestroyDeftemplateAction(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 48);
    if (v4)
    {
      do
      {
        v5 = *(v4 + 40);
        v6 = result[6];
        *(*(v6 + 472) + 32) = v4;
        **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 384);
        *(*(*(v6 + 472) + 40) + 384) = *(*(v6 + 472) + 32);
        v4 = v5;
      }

      while (v5);
    }

    DestroyFactPatternNetwork(result, *(a2 + 72));
    result = DeinstallConstructHeader(v3, a2);
    v7 = v3[6];
    *(*(v7 + 472) + 32) = a2;
    **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 768);
    *(*(*(v7 + 472) + 40) + 768) = *(*(v7 + 472) + 32);
  }

  return result;
}

void *AllocateModule_0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 472);
  v3 = *(*(v2 + 40) + 192);
  if (!v3)
  {
    return genalloc(a1, 0x18uLL);
  }

  *(v2 + 32) = v3;
  *(*(*(v1 + 472) + 40) + 192) = **(*(v1 + 472) + 32);
  return *(*(*(a1 + 48) + 472) + 32);
}

uint64_t ReturnModule_0(uint64_t a1, uint64_t a2)
{
  result = FreeConstructHeaderModule(a1, a2, **(*(a1 + 48) + 40));
  v5 = *(a1 + 48);
  *(*(v5 + 472) + 32) = a2;
  **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
  *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
  return result;
}

void sub_23262C948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23262CCC4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    v18 = activityLogHandle(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Encountered exception when fetching NWActivity database stats: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x23262CC64);
  }

  _Unwind_Resume(a1);
}

void sub_23262E2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    v16 = activityLogHandle(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *(v14 - 128) = 138412290;
      *(v14 - 124) = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Encountered exception deleting all fragments: %@", (v14 - 128), 0xCu);
    }

    v17 = +[AWDAgent defaultInstance];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:3601 userInfo:0];
    [v17 postMetricForSignificantEventWithName:@"AnalyticsEngineAllocationFailure" errorContext:3 error:v18 status:0];

    objc_end_catch();
    JUMPOUT(0x23262E248);
  }

  _Unwind_Resume(exception_object);
}

void sub_23262E9C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int buf, __int128 a12)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = activityLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      buf = 138412546;
      WORD2(a12) = 2112;
      *(&a12 + 6) = v12;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Encountered exception when fetching activities for predicate %@: %@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x23262E780);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t InstallProcedurePrimitives(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x25u, 0x210uLL, DeallocateProceduralPrimitiveData);
  v2 = *(*(a1 + 48) + 296);
  v3 = xmmword_284793778;
  *(v2 + 120) = unk_284793788;
  v4 = unk_2847937A8;
  *(v2 + 136) = xmmword_284793798;
  *(v2 + 152) = v4;
  *(v2 + 168) = xmmword_2847937B8;
  v5 = unk_284793768;
  *(v2 + 72) = xmmword_284793758;
  *(v2 + 88) = v5;
  *(v2 + 104) = v3;
  v6 = *(*(a1 + 48) + 296);
  v7 = unk_2847937F8;
  *(v6 + 216) = xmmword_2847937E8;
  *(v6 + 232) = v7;
  v8 = unk_284793818;
  *(v6 + 248) = xmmword_284793808;
  v9 = xmmword_284793828;
  *(v6 + 264) = v8;
  *(v6 + 280) = v9;
  v10 = unk_2847937D8;
  *(v6 + 184) = xmmword_2847937C8;
  *(v6 + 200) = v10;
  v11 = (*(*(a1 + 48) + 296) + 296);
  v12 = unk_284793888;
  v11[4] = xmmword_284793878;
  v11[5] = v12;
  v11[6] = xmmword_284793898;
  v13 = unk_284793848;
  *v11 = xmmword_284793838;
  v11[1] = v13;
  v14 = unk_284793868;
  v11[2] = xmmword_284793858;
  v11[3] = v14;
  v15 = (*(*(a1 + 48) + 296) + 408);
  v16 = unk_2847938F8;
  v15[4] = xmmword_2847938E8;
  v15[5] = v16;
  v15[6] = xmmword_284793908;
  v17 = unk_2847938B8;
  *v15 = xmmword_2847938A8;
  v15[1] = v17;
  v18 = unk_2847938D8;
  v15[2] = xmmword_2847938C8;
  v15[3] = v18;
  InstallPrimitive(a1, *(*(a1 + 48) + 296) + 72, 95);
  InstallPrimitive(a1, *(*(a1 + 48) + 296) + 184, 96);
  InstallPrimitive(a1, *(*(a1 + 48) + 296) + 296, 97);
  InstallPrimitive(a1, *(*(a1 + 48) + 296) + 408, 98);
  *(*(*(a1 + 48) + 296) + 520) = -1;
  Multifield2 = CreateMultifield2(a1, 0);
  v20 = *(a1 + 48);
  **(v20 + 296) = Multifield2;
  v21 = **(v20 + 296);

  return MultifieldInstall(a1, v21);
}

uint64_t RtnProcParam(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 48) + 296) + 8) + 48 * **(a2 + 24);
  *(a3 + 8) = *(v3 - 40);
  *(a3 + 16) = *(v3 - 32);
  *(a3 + 24) = *(v3 - 24);
  return 1;
}

uint64_t GetProcBind(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v6 = *(*(a1[6] + 296) + 56) + 48 * (*v5 >> 1);
  v7 = *(v6 - 48);
  if (v7 == EnvTrueSymbol(a1))
  {
    *(a3 + 8) = *(v6 - 40);
    *(a3 + 16) = *(v6 - 32);
    v10 = *(v6 - 24);
LABEL_5:
    *(a3 + 24) = v10;
    return 1;
  }

  v8 = a1[6];
  v9 = *(*(**(v8 + 352) + 16) + 24);
  if (v9)
  {
    EvaluateExpression(a1, v9, a3);
    return 1;
  }

  v11 = *v5;
  if (v11 >> 17)
  {
    v12 = v11 >> 17;
    if ((v11 & 0x10000) != 0)
    {
      GrabProcWildargs(a1, a3, v12);
      return 1;
    }

    v13 = *(*(v8 + 296) + 8) + 48 * v12;
    *(a3 + 8) = *(v13 - 40);
    *(a3 + 16) = *(v13 - 32);
    v10 = *(v13 - 24);
    goto LABEL_5;
  }

  PrintErrorID(a1, "PRCCODE", 5, 0);
  SetEvaluationError(a1, 1);
  EnvPrintRouter(a1, "werror", "Variable ");
  EnvPrintRouter(a1, "werror", *(*(*(**(a1[6] + 352) + 16) + 8) + 24));
  if (*(*(a1[6] + 296) + 64))
  {
    EnvPrintRouter(a1, "werror", " unbound in ");
    (*(*(a1[6] + 296) + 64))(a1);
  }

  else
  {
    EnvPrintRouter(a1, "werror", " unbound.\n");
  }

  *(a3 + 8) = 2;
  *(a3 + 16) = EnvFalseSymbol(a1);
  return 1;
}

uint64_t PutProcBind(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = *(*(v5 + 296) + 56) + 48 * **(a2 + 24);
  v7 = (v6 - 48);
  v8 = *(**(v5 + 352) + 16);
  if (v8)
  {
    if (*(v8 + 24))
    {
      StoreInMultifield(a1, a3, v8, 1);
    }

    else
    {
      EvaluateExpression(a1, v8, a3);
    }

    v10 = *v7;
    if (v10 == EnvTrueSymbol(a1))
    {
      ValueDeinstall(a1, v6 - 48);
    }

    *(v6 - 48) = EnvTrueSymbol(a1);
    *(v6 - 40) = *(a3 + 8);
    *(v6 - 32) = *(a3 + 16);
    *(v6 - 24) = *(a3 + 24);
    ValueInstall(a1, v6 - 48);
  }

  else
  {
    v9 = *v7;
    if (v9 == EnvTrueSymbol(a1))
    {
      ValueDeinstall(a1, v7);
    }

    *v7 = EnvFalseSymbol(a1);
    *(a3 + 8) = 2;
    *(a3 + 16) = EnvFalseSymbol(a1);
  }

  return 1;
}

uint64_t DeallocateProceduralPrimitiveData(uint64_t a1)
{
  result = ReturnMultifield(a1, **(*(a1 + 48) + 296));
  v3 = *(a1 + 48);
  v4 = *(v3 + 296);
  v5 = *(v4 + 8);
  if (v5)
  {
    result = rm(a1, v5, 48 * *(v4 + 16));
    v3 = *(a1 + 48);
    v4 = *(v3 + 296);
  }

  v6 = *(v4 + 48);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7 != *v4)
    {
      result = ReturnMultifield(a1, v7);
      v3 = *(a1 + 48);
      v6 = *(*(v3 + 296) + 48);
    }

    *(*(v3 + 472) + 32) = v6;
    **(*(v3 + 472) + 32) = *(*(*(v3 + 472) + 40) + 384);
    *(*(*(v3 + 472) + 40) + 384) = *(*(v3 + 472) + 32);
    v4 = *(*(a1 + 48) + 296);
  }

  v8 = *(v4 + 32);
  if (v8)
  {
    result = rm(a1, v8, 32 * *(v4 + 16));
    v4 = *(*(a1 + 48) + 296);
  }

  v9 = *(v4 + 40);
  if (v9)
  {
    do
    {
      v10 = *(v9 + 40);
      if (*v9)
      {
        result = rm(a1, *v9, 48 * *(v9 + 16));
      }

      v11 = *(v9 + 8);
      if (v11)
      {
        result = rm(a1, v11, 32 * *(v9 + 16));
      }

      v12 = *(v9 + 24);
      v13 = *(a1 + 48);
      if (v12)
      {
        v14 = *(v12 + 16);
        if (v14 != **(v13 + 296))
        {
          result = ReturnMultifield(a1, v14);
          v12 = *(v9 + 24);
          v13 = *(a1 + 48);
        }

        *(*(v13 + 472) + 32) = v12;
        **(*(v13 + 472) + 32) = *(*(*(v13 + 472) + 40) + 384);
        *(*(*(v13 + 472) + 40) + 384) = *(*(v13 + 472) + 32);
        v13 = *(a1 + 48);
      }

      *(*(v13 + 472) + 32) = v9;
      **(*(v13 + 472) + 32) = *(*(*(v13 + 472) + 40) + 384);
      *(*(*(v13 + 472) + 40) + 384) = *(*(v13 + 472) + 32);
      v9 = v10;
    }

    while (v10);
  }

  return result;
}

uint64_t ParseProcParameters(char *a1, char *a2, unsigned __int16 *a3, uint64_t a4, void *a5, int *a6, int *a7, _DWORD *a8, unsigned int (*a9)(uint64_t, void))
{
  v11 = a4;
  *a5 = 0;
  *a6 = 0;
  *a8 = 1;
  if (a4)
  {
    v15 = *a6;
    v16 = a4;
    do
    {
      v17 = v16;
      ++v15;
      v16 = *(v16 + 24);
    }

    while (v16);
    *a6 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (*a3 != 170)
  {
    goto LABEL_30;
  }

  GetToken(a1, a2, a3);
  for (i = 1; ; i = 0)
  {
    v19 = *a3;
    if ((v19 - 35) >= 2)
    {
      break;
    }

    if (v11)
    {
      v20 = v11;
      while (*(v20 + 8) != *(a3 + 1))
      {
        v20 = *(v20 + 24);
        if (!v20)
        {
          goto LABEL_13;
        }
      }

      PrintErrorID(a1, "PRCCODE", 7, 0);
      v25 = "Duplicate parameter names not allowed.\n";
      goto LABEL_24;
    }

LABEL_13:
    if (*a5)
    {
      PrintErrorID(a1, "PRCCODE", 8, 0);
      v25 = "No parameters allowed after wildcard parameter.\n";
LABEL_24:
      EnvPrintRouter(a1, "werror", v25);
      goto LABEL_31;
    }

    v21 = *(a3 + 1);
    if (a9)
    {
      if (a9(a1, *(v21 + 24)))
      {
        goto LABEL_31;
      }

      LOWORD(v19) = *a3;
      v21 = *(a3 + 1);
    }

    v22 = GenConstant(a1, v19, v21);
    v23 = v22;
    if (*a3 == 36)
    {
      *a5 = *(a3 + 1);
    }

    else
    {
      ++*a6;
    }

    v24 = v22;
    if (v17)
    {
      *(v17 + 24) = v22;
      v24 = v11;
    }

    SavePPBuffer(a1, " ");
    GetToken(a1, a2, a3);
    v11 = v24;
    v17 = v23;
  }

  if (v19 == 171)
  {
    if ((i & 1) == 0)
    {
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, ")");
    }

    *a8 = 0;
    if (*a5)
    {
      v26 = -1;
    }

    else
    {
      v26 = *a6;
    }

    *a7 = v26;
  }

  else
  {
LABEL_30:
    SyntaxErrorMessage(a1, "parameter list");
LABEL_31:
    ReturnExpression(a1, v11);
    return 0;
  }

  return v11;
}

void *ParseProcActions(char *a1, char *a2, char *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, unsigned int (*a7)(uint64_t, __int16 *, uint64_t), uint64_t (*a8)(uint64_t, void *, uint64_t), _DWORD *a9, uint64_t a10)
{
  ClearParsedBindNames(a1);
  v18 = GroupActions(a1, a3, a4, 1, 0, 0);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  if (a8 && ReplaceProcBinds(a1, v18, a8, a10) || (*a9 = CountParsedBindNames(a1), ReplaceProcVars(a1, a2, v19, a5, a6, a7, a10)))
  {
    ClearParsedBindNames(a1);
    ReturnExpression(a1, v19);
    return 0;
  }

  v21 = *(v19 + 16);
  if (v21)
  {
    if (!*(v21 + 24))
    {
      v22 = *(a1 + 6);
      *(*(v22 + 472) + 32) = v19;
      **(*(v22 + 472) + 32) = *(*(*(v22 + 472) + 40) + 256);
      *(*(*(v22 + 472) + 40) + 256) = *(*(v22 + 472) + 32);
      v19 = v21;
    }
  }

  else
  {
    *v19 = 2;
    *(v19 + 8) = EnvFalseSymbol(a1);
  }

  v23 = PackExpression(a1, v19);
  ReturnExpression(a1, v19);
  ClearParsedBindNames(a1);
  return v23;
}

uint64_t ReplaceProcBinds(void *a1, void *a2, uint64_t (*a3)(uint64_t, void *, uint64_t), uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  while (1)
  {
    v8 = v6[2];
    if (v8)
    {
      if (ReplaceProcBinds(a1, v8, a3, a4))
      {
        return 1;
      }

      v9 = v6[1];
      if (v9 == FindFunction(a1, "bind"))
      {
        v10 = v6[2];
        if (*v10 == 2)
        {
          v11 = *(v10 + 8);
          v12 = a3(a1, v6, a4);
          if (v12 == 1)
          {
            RemoveParsedBindName(a1, v11);
            goto LABEL_11;
          }

          if (v12 == -1)
          {
            return 1;
          }
        }
      }
    }

LABEL_11:
    v6 = v6[3];
    if (!v6)
    {
      return 0;
    }
  }
}

uint64_t ReplaceProcVars(uint64_t a1, char *a2, __int16 *a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(uint64_t, __int16 *, uint64_t), uint64_t a7)
{
  if (!a3)
  {
    return 0;
  }

  v11 = a3;
  v35 = 0;
  v34 = 0;
  while (1)
  {
    v14 = *v11;
    if (v14 == 33)
    {
      if (!ReplaceGlobalVariable(a1, v11))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_29:
      if (!a6)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (v14 != 35)
    {
      goto LABEL_29;
    }

    v15 = *(v11 + 1);
    v16 = 1;
    if (a4)
    {
      v17 = a4;
      while (*(v17 + 8) != v15)
      {
        ++v16;
        v17 = *(v17 + 24);
        if (!v17)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (v15 != a5)
      {
        v16 = 0;
      }
    }

    HIDWORD(v35) = v16;
    v18 = SearchParsedBindNames(a1, v15);
    LODWORD(v35) = v18;
    if (__PAIR64__(HIDWORD(v35), v18))
    {
      break;
    }

    if (!a6 || a6(a1, v11, a7) != 1)
    {
      v31 = 1;
      PrintErrorID(a1, "PRCCODE", 3, 1);
      EnvPrintRouter(a1, "werror", "Undefined variable ");
      EnvPrintRouter(a1, "werror", *(v15 + 24));
      EnvPrintRouter(a1, "werror", " referenced in ");
      EnvPrintRouter(a1, "werror", a2);
      EnvPrintRouter(a1, "werror", ".\n");
      return v31;
    }

LABEL_30:
    if (a6(a1, v11, a7) == -1)
    {
      return 1;
    }

LABEL_31:
    v23 = *(v11 + 2);
    if (v23)
    {
      if (ReplaceProcVars(a1, a2, v23, a4, a5, a6, a7))
      {
        return 1;
      }

      v24 = *(v11 + 1);
      if (v24 == FindFunction(a1, "bind"))
      {
        v25 = *(v11 + 2);
        if (*v25 == 2)
        {
          *v11 = 98;
          LODWORD(v35) = SearchParsedBindNames(a1, *(v25 + 8));
          *(v11 + 1) = EnvAddBitMap(a1, &v35, 4);
          v26 = *(v11 + 2);
          v27 = *(v26 + 24);
          v28 = *(a1 + 48);
          *(*(v28 + 472) + 32) = v26;
          **(*(v28 + 472) + 32) = *(*(*(v28 + 472) + 40) + 256);
          *(*(*(v28 + 472) + 40) + 256) = *(*(v28 + 472) + 32);
          *(v11 + 2) = v27;
        }
      }
    }

    v11 = *(v11 + 3);
    if (!v11)
    {
      return 0;
    }
  }

  if (SHIDWORD(v35) >= 1 && v18 == 0)
  {
    if (v15 == a5)
    {
      v22 = 96;
    }

    else
    {
      v22 = 95;
    }

    *v11 = v22;
    *(v11 + 1) = EnvAddBitMap(a1, &v35 + 4, 4);
    goto LABEL_29;
  }

  if (!a6)
  {
    v20 = 0;
    goto LABEL_40;
  }

  v20 = GenConstant(a1, *v11, *(v11 + 1));
  v21 = a6(a1, v20, a7);
  if (!v21)
  {
    v29 = *(a1 + 48);
    *(*(v29 + 472) + 32) = v20;
    v20 = 0;
    **(*(v29 + 472) + 32) = *(*(*(v29 + 472) + 40) + 256);
    *(*(*(v29 + 472) + 40) + 256) = *(*(v29 + 472) + 32);
LABEL_40:
    *v11 = 97;
    ClearBitString(&v34, 4u);
    v34 = v34 & 1 | (2 * (v35 & 0x7FFF)) | (HIDWORD(v35) << 17) | ((v15 == a5) << 16);
    *(v11 + 1) = EnvAddBitMap(a1, &v34, 4);
    v30 = GenConstant(a1, 2, v15);
    *(v11 + 2) = v30;
    v30[3] = v20;
    if (!a6)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v21 != -1)
  {
    goto LABEL_40;
  }

  v32 = *(a1 + 48);
  *(*(v32 + 472) + 32) = v20;
  **(*(v32 + 472) + 32) = *(*(*(v32 + 472) + 40) + 256);
  *(*(*(v32 + 472) + 40) + 256) = *(*(v32 + 472) + 32);
  return 1;
}

void *GenProcWildcardReference(uint64_t a1, int a2)
{
  v5 = a2;
  v3 = EnvAddBitMap(a1, &v5, 4);
  return GenConstant(a1, 96, v3);
}

uint64_t PushProcParameters(uint64_t result, uint64_t a2, int a3, char *a4, char *a5, uint64_t a6)
{
  v11 = result;
  v12 = *(result + 48);
  v13 = *(v12 + 472);
  v14 = *(*(v13 + 40) + 384);
  if (v14)
  {
    *(v13 + 32) = v14;
    *(*(*(v12 + 472) + 40) + 384) = **(*(v12 + 472) + 32);
    v15 = *(result + 48);
    v16 = *(v15[59] + 32);
  }

  else
  {
    result = genalloc(result, 0x30uLL);
    v16 = result;
    v15 = *(v11 + 48);
  }

  *v16 = *(v15[37] + 8);
  v17 = v15[37];
  *(v16 + 16) = *(v17 + 16);
  *(v16 + 32) = *(v17 + 64);
  *(v16 + 40) = *(v15[37] + 40);
  *(v15[37] + 40) = v16;
  memset(v26, 0, sizeof(v26));
  if (a3)
  {
    result = gm2(v11, 48 * a3);
    v18 = result;
    if (a2)
    {
      v19 = (result + 24);
      while (1)
      {
        result = EvaluateExpression(v11, a2, v26);
        if (result == 1 || WORD4(v26[0]) == 175)
        {
          break;
        }

        *(v19 - 8) = WORD4(v26[0]);
        *(v19 - 1) = *&v26[1];
        *v19 = *(&v26[1] + 8);
        v19 += 3;
        a2 = *(a2 + 24);
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      if (WORD4(v26[0]) == 175)
      {
        PrintErrorID(v11, "PRCCODE", 2, 0);
        EnvPrintRouter(v11, "werror", "Functions without a return value are illegal as ");
        EnvPrintRouter(v11, "werror", a5);
        EnvPrintRouter(v11, "werror", " arguments.\n");
        SetEvaluationError(v11, 1);
      }

      PrintErrorID(v11, "PRCCODE", 6, 0);
      EnvPrintRouter(v11, "werror", "This error occurred while evaluating arguments ");
      EnvPrintRouter(v11, "werror", "for the ");
      EnvPrintRouter(v11, "werror", a5);
      EnvPrintRouter(v11, "werror", " ");
      EnvPrintRouter(v11, "werror", a4);
      EnvPrintRouter(v11, "werror", ".\n");
      result = rm(v11, v18, 48 * a3);
      v15 = *(v11 + 48);
    }

    else
    {
LABEL_10:
      v15 = *(v11 + 48);
      v20 = v15[37];
      *(v20 + 16) = a3;
      *(v20 + 8) = v18;
    }
  }

  else
  {
    *(v15[37] + 8) = 0;
    *(v15[37] + 16) = 0;
  }

  v21 = v15[37];
  if (*(v15[44] + 8))
  {
    v22 = *(v21 + 40);
    *(v21 + 40) = *(v22 + 40);
    *(v15[59] + 32) = v22;
    **(v15[59] + 32) = *(*(v15[59] + 40) + 384);
    v23 = v15[59];
    a6 = *(v23 + 32);
    v24 = (v23 + 40);
    v25 = 384;
  }

  else
  {
    v24 = v15 + 37;
    *(v16 + 8) = *(v21 + 32);
    *(*v24 + 32) = 0;
    *(v16 + 24) = *(*v24 + 48);
    *(*v24 + 48) = 0;
    v25 = 64;
  }

  *(*v24 + v25) = a6;
  return result;
}

void *PopProcParameters(void *result)
{
  v1 = result;
  v2 = result[6];
  v3 = *(v2 + 296);
  v4 = *(v3 + 8);
  if (v4)
  {
    result = rm(result, v4, 48 * *(v3 + 16));
    v2 = v1[6];
    v3 = *(v2 + 296);
  }

  v5 = *(v3 + 32);
  if (v5)
  {
    result = rm(v1, v5, 32 * *(v3 + 16));
    v2 = v1[6];
    v3 = *(v2 + 296);
  }

  v6 = *(v3 + 40);
  *(v3 + 40) = *(v6 + 40);
  v7 = *(v6 + 8);
  *(*(v2 + 296) + 8) = *v6;
  v8 = *(v2 + 296);
  *(v8 + 16) = *(v6 + 16);
  *(v8 + 32) = v7;
  v9 = *(v2 + 296);
  v10 = *(v9 + 48);
  if (v10)
  {
    result = MultifieldDeinstall(v1, *(v10 + 16));
    v11 = v1[6];
    v12 = *(v11 + 296);
    v13 = v12[6];
    v14 = *(v13 + 16);
    if (v14 != *v12)
    {
      result = AddToMultifieldList(v1, v14);
      v11 = v1[6];
      v13 = *(*(v11 + 296) + 48);
    }

    *(*(v11 + 472) + 32) = v13;
    **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 384);
    *(*(*(v11 + 472) + 40) + 384) = *(*(v11 + 472) + 32);
    v2 = v1[6];
    v9 = *(v2 + 296);
  }

  v15 = *(v6 + 32);
  *(v9 + 48) = *(v6 + 24);
  *(*(v2 + 296) + 64) = v15;
  *(*(v2 + 472) + 32) = v6;
  **(*(v2 + 472) + 32) = *(*(*(v2 + 472) + 40) + 384);
  *(*(*(v2 + 472) + 40) + 384) = *(*(v2 + 472) + 32);
  return result;
}

uint64_t GetProcParamExpressions(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 296);
  if (*(v1 + 8))
  {
    if (!*(v1 + 32))
    {
      v3 = gm2(a1, 32 * *(v1 + 16));
      v4 = *(a1 + 48);
      *(*(v4 + 296) + 32) = v3;
      v1 = *(v4 + 296);
      if (*(v1 + 16) >= 1)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = *(v1 + 8) + v5;
          v9 = *(v8 + 8);
          v10 = *(v1 + 32);
          *(v10 + v6) = v9;
          if (v9 != 4)
          {
            v8 = *(v8 + 16);
          }

          *(v10 + v6 + 8) = v8;
          *(*(*(v4 + 296) + 32) + v6 + 16) = 0;
          ++v7;
          v11 = *(v4 + 296);
          v12 = *(v11 + 16);
          v13 = *(v11 + 32) + v6;
          if (v7 == v12)
          {
            v14 = 0;
          }

          else
          {
            v14 = v13 + 32;
          }

          *(v13 + 24) = v14;
          v1 = *(v4 + 296);
          v6 += 32;
          v5 += 48;
        }

        while (v7 < *(v1 + 16));
      }
    }
  }

  return *(v1 + 32);
}

uint64_t EvaluateProcActions(void *a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(a1[6] + 296);
  v13 = *(v12 + 56);
  if (a4)
  {
    v14 = gm2(a1, 48 * a4);
    v15 = a1[6];
    *(*(v15 + 296) + 56) = v14;
    v16 = AddTrackedMemory(a1, *(*(v15 + 296) + 56), 48 * a4);
    if (a4 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        *(*(*(a1[6] + 296) + 56) + v17) = EnvFalseSymbol(a1);
        v17 += 48;
      }

      while (48 * a4 != v17);
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
    *(v12 + 56) = 0;
  }

  CurrentModule = EnvGetCurrentModule(a1);
  if (CurrentModule != a2)
  {
    EnvSetCurrentModule(a1, a2);
  }

  v20 = *(a1[6] + 296);
  v21 = *(v20 + 24);
  *(v20 + 24) = a3;
  if (EvaluateExpression(a1, a3, a5))
  {
    *(a5 + 8) = 2;
    *(a5 + 16) = EnvFalseSymbol(a1);
  }

  *(*(a1[6] + 296) + 24) = v21;
  result = EnvGetCurrentModule(a1);
  if (CurrentModule != result)
  {
    result = EnvSetCurrentModule(a1, CurrentModule);
  }

  v23 = a1[6];
  if (a6 && *(*(v23 + 352) + 12))
  {
    PrintErrorID(a1, "PRCCODE", 4, 0);
    EnvPrintRouter(a1, "werror", "Execution halted during the actions of ");
    result = a6(a1);
    v23 = a1[6];
  }

  v24 = *(*(v23 + 296) + 48);
  if (v24)
  {
    v25 = *(v24 + 16);
    if (*(a5 + 16) == v25)
    {
      result = MultifieldDeinstall(a1, v25);
      v26 = a1[6];
      v27 = *(v26 + 296);
      v28 = v27[6];
      v29 = *(v28 + 16);
      if (v29 != *v27)
      {
        result = AddToMultifieldList(a1, v29);
        v26 = a1[6];
        v28 = *(*(v26 + 296) + 48);
      }

      *(*(v26 + 472) + 32) = v28;
      **(*(v26 + 472) + 32) = *(*(*(v26 + 472) + 40) + 384);
      *(*(*(v26 + 472) + 40) + 384) = *(*(v26 + 472) + 32);
      v23 = a1[6];
      *(*(v23 + 296) + 48) = 0;
    }
  }

  if (a4)
  {
    RemoveTrackedMemory(a1, v16);
    if (v18)
    {
      v30 = 0;
      do
      {
        v31 = *(*(*(a1[6] + 296) + 56) + v30);
        if (v31 == EnvTrueSymbol(a1))
        {
          ValueDeinstall(a1, *(*(a1[6] + 296) + 56) + v30);
        }

        v30 += 48;
      }

      while (48 * a4 != v30);
    }

    result = rm(a1, *(*(a1[6] + 296) + 56), 48 * a4);
    v23 = a1[6];
  }

  *(*(v23 + 296) + 56) = v13;
  return result;
}

uint64_t PrintProcParamArray(uint64_t a1, FILE *a2)
{
  EnvPrintRouter(a1, a2, " (");
  v4 = *(*(a1 + 48) + 296);
  if (*(v4 + 16) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      PrintDataObject(a1, a2, *(v4 + 8) + v5);
      v4 = *(*(a1 + 48) + 296);
      v7 = *(v4 + 16);
      if (v6 != v7 - 1)
      {
        EnvPrintRouter(a1, a2, " ");
        v4 = *(*(a1 + 48) + 296);
        v7 = *(v4 + 16);
      }

      ++v6;
      v5 += 48;
    }

    while (v6 < v7);
  }

  return EnvPrintRouter(a1, a2, ")\n");
}

void *GrabProcWildargs(void *result, uint64_t a2, int a3)
{
  v5 = result;
  *(a2 + 8) = 4;
  *(a2 + 24) = 0;
  v6 = result[6];
  v7 = *(v6 + 296);
  v8 = *(v7 + 48);
  if (v8)
  {
    if (*(v7 + 520) == a3)
    {
      *(a2 + 32) = *(v8 + 32);
      *(a2 + 16) = *(v8 + 16);
      return result;
    }

    MultifieldDeinstall(result, *(v8 + 16));
    v11 = v5[6];
    v13 = *(v11 + 296);
    v14 = *(v13[6] + 16);
    if (v14 != *v13)
    {
      AddToMultifieldList(v5, v14);
      v11 = v5[6];
      v13 = *(v11 + 296);
    }
  }

  else
  {
    v9 = *(v6 + 472);
    v10 = *(*(v9 + 40) + 384);
    if (v10)
    {
      *(v9 + 32) = v10;
      *(*(*(v6 + 472) + 40) + 384) = **(*(v6 + 472) + 32);
      v11 = result[6];
      v12 = *(*(v11 + 472) + 32);
    }

    else
    {
      v12 = genalloc(result, 0x30uLL);
      v11 = v5[6];
    }

    *(*(v11 + 296) + 48) = v12;
    v13 = *(v11 + 296);
    *(v13[6] + 24) = 0;
  }

  *(v13 + 130) = a3;
  v15 = *(v13 + 4);
  v16 = v15 - a3;
  if (v15 - a3 < 0)
  {
    v39 = v13[6];
    *(v39 + 32) = -1;
    *(a2 + 32) = -1;
    v40 = *v13;
    *(v39 + 16) = v40;
    *(a2 + 16) = v40;
    v38 = *(*(v11 + 296) + 48);
  }

  else
  {
    v17 = (v16 + 1);
    v18 = a3 - 1;
    if (v15 >= a3)
    {
      v19 = (v13[1] + 48 * v18 + 24);
      v20 = v16 + 1;
      do
      {
        if (*(v19 - 8) == 4)
        {
          v17 = v19[1] + v17 - *v19;
        }

        v19 += 6;
        --v20;
      }

      while (v20);
    }

    *(v13[6] + 32) = v17 - 1;
    *(a2 + 32) = v17 - 1;
    Multifield2 = CreateMultifield2(v5, v17);
    v22 = v5[6];
    *(*(*(v22 + 296) + 48) + 16) = Multifield2;
    *(a2 + 16) = Multifield2;
    v23 = *(v22 + 296);
    if (*(v23 + 16) >= a3)
    {
      v24 = v18;
      v25 = 1;
      do
      {
        v26 = *(v23 + 8);
        v27 = v26 + 48 * v24;
        v28 = *(v27 + 8);
        if (v28 == 4)
        {
          v30 = *(v27 + 24);
          v29 = *(v27 + 32);
          if (v30 <= v29)
          {
            v31 = 0;
            v32 = *(v27 + 16);
            v33 = &Multifield2[2 * v25];
            v34 = v29 - v30 + 1;
            v35 = v32 + 16 * v30;
            v25 = v25 + v29 - v30 + 1;
            do
            {
              v36 = &v33[v31];
              *(v36 + 4) = *(v35 + v31 * 8 + 24);
              v36[2] = *(v35 + v31 * 8 + 32);
              v31 += 2;
              --v34;
            }

            while (v34);
          }
        }

        else
        {
          v37 = &Multifield2[2 * v25 + 3];
          *(v37 - 16) = v28;
          *(v37 - 8) = *(v26 + 48 * v24 + 16);
          ++v25;
        }

        ++v24;
        v23 = *(v22 + 296);
      }

      while (v24 < *(v23 + 16));
    }

    v38 = *(v23 + 48);
  }

  v41 = *(v38 + 16);

  return MultifieldInstall(v5, v41);
}

uint64_t AWDSymptomsNetworkAnalyticsHistoricalReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v104 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v104 & 0x7F) << v5;
        if ((v104 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 124) |= 0x800u;
          while (1)
          {
            v117 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v117 & 0x7F) << v13;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_182:
              v102 = 96;
              goto LABEL_203;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_182;
        case 2u:
          v70 = PBReaderReadString();
          v71 = *(a1 + 112);
          *(a1 + 112) = v70;

          goto LABEL_204;
        case 3u:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 124) |= 0x2000u;
          while (1)
          {
            v118 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v118 & 0x7F) << v50;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v56 = 0;
              goto LABEL_170;
            }
          }

          if ([a2 hasError])
          {
            v56 = 0;
          }

          else
          {
            v56 = v52;
          }

LABEL_170:
          *(a1 + 120) = v56;
          goto LABEL_204;
        case 4u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 124) |= 0x40u;
          while (1)
          {
            v116 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v116 & 0x7F) << v58;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_174;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v60;
          }

LABEL_174:
          v102 = 56;
          goto LABEL_203;
        case 5u:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 124) |= 0x1000u;
          while (1)
          {
            v115 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v115 & 0x7F) << v32;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v34;
          }

LABEL_158:
          v102 = 104;
          goto LABEL_203;
        case 6u:
          v72 = 0;
          v73 = 0;
          v74 = 0;
          *(a1 + 124) |= 0x80u;
          while (1)
          {
            v114 = 0;
            v75 = [a2 position] + 1;
            if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
            {
              v77 = [a2 data];
              [v77 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v74 |= (v114 & 0x7F) << v72;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v11 = v73++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_186;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v74;
          }

LABEL_186:
          v102 = 64;
          goto LABEL_203;
        case 7u:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 124) |= 4u;
          while (1)
          {
            v113 = 0;
            v87 = [a2 position] + 1;
            if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
            {
              v89 = [a2 data];
              [v89 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v86 |= (v113 & 0x7F) << v84;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v11 = v85++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_194;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v86;
          }

LABEL_194:
          v102 = 24;
          goto LABEL_203;
        case 8u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 124) |= 8u;
          while (1)
          {
            v112 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v112 & 0x7F) << v64;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_178;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v66;
          }

LABEL_178:
          v102 = 32;
          goto LABEL_203;
        case 9u:
          v96 = 0;
          v97 = 0;
          v98 = 0;
          *(a1 + 124) |= 0x100u;
          while (1)
          {
            v111 = 0;
            v99 = [a2 position] + 1;
            if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
            {
              v101 = [a2 data];
              [v101 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v98 |= (v111 & 0x7F) << v96;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v96 += 7;
            v11 = v97++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_202;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v98;
          }

LABEL_202:
          v102 = 72;
          goto LABEL_203;
        case 0xAu:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 124) |= 0x200u;
          while (1)
          {
            v110 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v110 & 0x7F) << v44;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_166;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v46;
          }

LABEL_166:
          v102 = 80;
          goto LABEL_203;
        case 0xBu:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 124) |= 1u;
          while (1)
          {
            v109 = 0;
            v93 = [a2 position] + 1;
            if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
            {
              v95 = [a2 data];
              [v95 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v92 |= (v109 & 0x7F) << v90;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v11 = v91++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_198;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v92;
          }

LABEL_198:
          v102 = 8;
          goto LABEL_203;
        case 0xCu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 124) |= 2u;
          while (1)
          {
            v108 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v108 & 0x7F) << v26;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_154;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v28;
          }

LABEL_154:
          v102 = 16;
          goto LABEL_203;
        case 0xDu:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 124) |= 0x400u;
          while (1)
          {
            v107 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v107 & 0x7F) << v38;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_162;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v40;
          }

LABEL_162:
          v102 = 88;
          goto LABEL_203;
        case 0xEu:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          *(a1 + 124) |= 0x20u;
          while (1)
          {
            v106 = 0;
            v81 = [a2 position] + 1;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
            {
              v83 = [a2 data];
              [v83 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v80 |= (v106 & 0x7F) << v78;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v11 = v79++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v80;
          }

LABEL_190:
          v102 = 48;
          goto LABEL_203;
        case 0xFu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 124) |= 0x10u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_204;
      }

      while (1)
      {
        v105 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v105 & 0x7F) << v20;
        if ((v105 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_150;
        }
      }

      v19 = [a2 hasError] ? 0 : v22;
LABEL_150:
      v102 = 40;
LABEL_203:
      *(a1 + v102) = v19;
LABEL_204:
      v103 = [a2 position];
    }

    while (v103 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}