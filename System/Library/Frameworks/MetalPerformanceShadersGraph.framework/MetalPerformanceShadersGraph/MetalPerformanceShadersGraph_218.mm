void initCommonOptions(llvm *a1)
{
  if (!atomic_load_explicit(qword_1EE17CAB0, memory_order_acquire))
  {
  }

  llvm::initDebugCounterOptions(a1);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  llvm::initSignalsOptions(v1);
  llvm::initStatisticOptions(v2);
  llvm::initTimerOptions(v3);
  llvm::initTypeSizeOptions(v4);
  llvm::initWithColorOptions(v5);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  llvm::initRandomSeedOptions(v6);
}

uint64_t llvm::cl::Option::error(void *a1, llvm::Twine *a2, uint64_t a3, uint64_t a4, llvm::raw_ostream *this)
{
  v5 = this;
  if (a3)
  {
    v7 = a4;
    v8 = a3;
    if (a4)
    {
LABEL_3:
      if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
      {
      }

      v9 = *(qword_1EE17CA68 + 23);
      if (v9 >= 0)
      {
        v10 = qword_1EE17CA68;
      }

      else
      {
        v10 = *qword_1EE17CA68;
      }

      if (v9 >= 0)
      {
        v11 = *(qword_1EE17CA68 + 23);
      }

      else
      {
        v11 = *(qword_1EE17CA68 + 8);
      }

      v12 = llvm::raw_ostream::write(v5, v10, v11);
      v13 = *(v12 + 4);
      if ((*(v12 + 3) - v13) > 9)
      {
        *(v13 + 8) = 8293;
        *v13 = *": for the ";
        *(v12 + 4) += 10;
      }

      else
      {
        v12 = llvm::raw_ostream::write(v12, ": for the ", 0xAuLL);
      }

      v21[0] = v8;
      v21[1] = v7;
      v21[2] = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = a1[2];
    v7 = a1[3];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v14 = a1[4];
  v15 = a1[5];
  v16 = *(this + 4);
  if (v15 <= *(this + 3) - v16)
  {
    if (v15)
    {
      v20 = v15;
      memcpy(v16, v14, v15);
      *(v5 + 4) += v20;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, v14, v15);
  }

LABEL_18:
  v17 = *(v5 + 4);
  if ((*(v5 + 3) - v17) > 8)
  {
    *(v17 + 8) = 32;
    *v17 = *" option: ";
    *(v5 + 4) += 9;
    llvm::Twine::print(a2, v5);
    v18 = *(v5 + 4);
    if (*(v5 + 3) != v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(v5, " option: ", 9uLL);
    llvm::Twine::print(a2, v5);
    v18 = *(v5 + 4);
    if (*(v5 + 3) != v18)
    {
LABEL_20:
      *v18 = 10;
      ++*(v5 + 4);
      return 1;
    }
  }

  llvm::raw_ostream::write(v5, "\n", 1uLL);
  return 1;
}

llvm::raw_ostream *anonymous namespace::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v16 = v18;
  v17 = xmmword_1E096FB00;
  v6 = 0;
  if (v5)
  {
    do
    {
      if ((v6 + 1) > *(&v17 + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v16, v18, v6 + 1, 1);
        v6 = v17;
      }

      *(v16 + v6) = 32;
      v6 = v17 + 1;
      *&v17 = v17 + 1;
      --v5;
    }

    while (v5);
    v7 = *(&v17 + 1);
  }

  else
  {
    v7 = 8;
  }

  if (v4 <= 1)
  {
    v8 = "-";
  }

  else
  {
    v8 = "--";
  }

  if (v4 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7 < v9 + v6)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v16, v18, v9 + v6, 1);
    v6 = v17;
  }

  memcpy(v16 + v6, v8, v9);
  *&v17 = v17 + v9;
  v10 = llvm::raw_ostream::write(a1, v16, v17);
  v11 = *a2;
  v12 = *(a2 + 8);
  if (v12 <= v10[3] - v10[4])
  {
    if (v12)
    {
      v13 = v10;
      v14 = *(a2 + 8);
      memcpy(v10[4], v11, v12);
      v13[4] += v14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v11, v12);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return a1;
}

uint64_t llvm::cl::Option::addOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    ++*(a1 + 8);
  }

  return (**a1)(a1, a2, a3, a4, a5, a6);
}

uint64_t llvm::cl::alias::getOptionWidth(llvm::cl::alias *this)
{
  v1 = *(this + 3);
  if (v1 == 1)
  {
    return 7;
  }

  else
  {
    return v1 + 7;
  }
}

void *llvm::cl::Option::printHelpStr(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v33 = 10;
  v6 = llvm::StringRef::find(&v32, &v33, 1uLL, 0);
  if (v6 == -1)
  {
    v30 = 0;
    v31 = 0;
    v27 = v32;
  }

  else
  {
    if (v6 >= *(&v32 + 1))
    {
      v7 = *(&v32 + 1);
    }

    else
    {
      v7 = v6;
    }

    if (*(&v32 + 1) >= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = *(&v32 + 1);
    }

    *&v27 = v32;
    *(&v27 + 1) = v7;
    v30 = &v8[v32];
    v31 = *(&v32 + 1) - v8;
  }

  v9 = llvm::outs(v6);
  result = llvm::raw_ostream::indent(v9, a3 - a4);
  v11 = result[4];
  if ((result[3] - v11) <= 2)
  {
    result = llvm::raw_ostream::write(result, " - ", 3uLL);
    v12 = result[4];
    v14 = *(&v27 + 1);
    v13 = v27;
    if (*(&v27 + 1) <= result[3] - v12)
    {
      goto LABEL_12;
    }

LABEL_18:
    result = llvm::raw_ostream::write(result, v13, v14);
    v12 = result[4];
    if (result[3] != v12)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  *(v11 + 2) = 32;
  *v11 = 11552;
  v17 = result[3];
  v12 = (result[4] + 3);
  result[4] = v12;
  v14 = *(&v27 + 1);
  v13 = v27;
  if (*(&v27 + 1) > (v17 - v12))
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v14)
  {
    v15 = result;
    v16 = v14;
    memcpy(v12, v13, v14);
    result = v15;
    v12 = (v15[4] + v16);
    v15[4] = v12;
  }

  if (result[3] != v12)
  {
LABEL_15:
    *v12 = 10;
    ++result[4];
    if (v31)
    {
      goto LABEL_22;
    }

    return result;
  }

LABEL_19:
  for (result = llvm::raw_ostream::write(result, "\n", 1uLL); v31; result = llvm::raw_ostream::write(result, "\n", 1uLL))
  {
LABEL_22:
    while (1)
    {
      v33 = 10;
      v18 = llvm::StringRef::find(&v30, &v33, 1uLL, 0);
      if (v18 == -1)
      {
        v22 = 0;
        v23 = 0;
        v19 = v30;
        v20 = v31;
      }

      else
      {
        v19 = v30;
        v20 = v18 >= v31 ? v31 : v18;
        v21 = v31 >= v18 + 1 ? v18 + 1 : v31;
        v22 = &v30[v21];
        v23 = v31 - v21;
      }

      v28 = v19;
      v29 = v20;
      v30 = v22;
      v31 = v23;
      v24 = llvm::outs(v18);
      result = llvm::raw_ostream::indent(v24, a3);
      v25 = result[4];
      if (v29 <= result[3] - v25)
      {
        if (v29)
        {
          v26 = result;
          memcpy(result[4], v28, v29);
          result = v26;
          v25 = (v26[4] + v29);
          v26[4] = v25;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(result, v28, v29);
        v25 = result[4];
      }

      if (result[3] == v25)
      {
        break;
      }

      *v25 = 10;
      ++result[4];
      if (!v31)
      {
        return result;
      }
    }
  }

  return result;
}

void *llvm::cl::Option::printEnumValHelpStr(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *&v34 = a1;
  *(&v34 + 1) = a2;
  v35 = 10;
  v6 = llvm::StringRef::find(&v34, &v35, 1uLL, 0);
  if (v6 == -1)
  {
    v32 = 0;
    v33 = 0;
    v29 = v34;
  }

  else
  {
    if (v6 >= *(&v34 + 1))
    {
      v7 = *(&v34 + 1);
    }

    else
    {
      v7 = v6;
    }

    if (*(&v34 + 1) >= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = *(&v34 + 1);
    }

    *&v29 = v34;
    *(&v29 + 1) = v7;
    v32 = &v8[v34];
    v33 = *(&v34 + 1) - v8;
  }

  v9 = llvm::outs(v6);
  result = llvm::raw_ostream::indent(v9, a3 - a4);
  v11 = result[4];
  if ((result[3] - v11) > 2)
  {
    *(v11 + 2) = 32;
    *v11 = 11552;
    v19 = result[3];
    v12 = (result[4] + 3);
    result[4] = v12;
    if ((v19 - v12) > 1)
    {
LABEL_12:
      *v12 = 8224;
      v13 = result[3];
      v14 = (result[4] + 2);
      result[4] = v14;
      v16 = *(&v29 + 1);
      v15 = v29;
      if (*(&v29 + 1) <= (v13 - v14))
      {
        goto LABEL_13;
      }

LABEL_20:
      result = llvm::raw_ostream::write(result, v15, v16);
      v14 = result[4];
      if (result[3] != v14)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, " - ", 3uLL);
    v12 = result[4];
    if (result[3] - v12 > 1uLL)
    {
      goto LABEL_12;
    }
  }

  result = llvm::raw_ostream::write(result, "  ", 2uLL);
  v14 = result[4];
  v16 = *(&v29 + 1);
  v15 = v29;
  if (*(&v29 + 1) > result[3] - v14)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (v16)
  {
    v17 = result;
    v18 = v16;
    memcpy(v14, v15, v16);
    result = v17;
    v14 = (v17[4] + v18);
    v17[4] = v14;
  }

  if (result[3] != v14)
  {
LABEL_16:
    *v14 = 10;
    ++result[4];
    if (v33)
    {
      goto LABEL_24;
    }

    return result;
  }

LABEL_21:
  for (result = llvm::raw_ostream::write(result, "\n", 1uLL); v33; result = llvm::raw_ostream::write(result, "\n", 1uLL))
  {
LABEL_24:
    while (1)
    {
      v35 = 10;
      v20 = llvm::StringRef::find(&v32, &v35, 1uLL, 0);
      if (v20 == -1)
      {
        v24 = 0;
        v25 = 0;
        v21 = v32;
        v22 = v33;
      }

      else
      {
        v21 = v32;
        v22 = v20 >= v33 ? v33 : v20;
        v23 = v33 >= v20 + 1 ? v20 + 1 : v33;
        v24 = &v32[v23];
        v25 = v33 - v23;
      }

      v30 = v21;
      v31 = v22;
      v32 = v24;
      v33 = v25;
      v26 = llvm::outs(v20);
      result = llvm::raw_ostream::indent(v26, a3 + 2);
      v27 = result[4];
      if (v31 <= result[3] - v27)
      {
        if (v31)
        {
          v28 = result;
          memcpy(result[4], v30, v31);
          result = v28;
          v27 = (v28[4] + v31);
          v28[4] = v27;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(result, v30, v31);
        v27 = result[4];
      }

      if (result[3] == v27)
      {
        break;
      }

      *v27 = 10;
      ++result[4];
      if (!v33)
      {
        return result;
      }
    }
  }

  return result;
}

void *llvm::cl::alias::printOptionInfo(llvm::cl::alias *this, unsigned int a2)
{
  v4 = llvm::outs(this);
  v10 = *(this + 1);
  v11 = 2;
  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = *(this + 3);
  if (v7 == 1)
  {
    v8 = 7;
  }

  else
  {
    v8 = v7 + 7;
  }

  return llvm::cl::Option::printHelpStr(v5, v6, a2, v8);
}

uint64_t llvm::cl::parser<llvm::cl::BOOLOrDefault>::parse(llvm *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _DWORD *a7)
{
  if (a6 > 3)
  {
    if (a6 != 5)
    {
      if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    if (a6 != 1)
    {
LABEL_25:
      v20 = v7;
      v21 = v8;
      v17 = 1283;
      v16[0] = "'";
      v16[2] = a5;
      v16[3] = a6;
      v18[0] = v16;
      v18[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v19 = 770;
      v15 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v18, 0, 0, v15);
      return 1;
    }

    v9 = *a5;
    if (v9 != 48)
    {
      if (v9 != 49)
      {
        goto LABEL_25;
      }

LABEL_12:
      result = 0;
      *a7 = 1;
      return result;
    }
  }

  result = 0;
  *a7 = 2;
  return result;
}

llvm *llvm::cl::parser<long long>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void *a7)
{
  v16[0] = 0;
  result = llvm::getAsSignedInteger(a5, a6, 0, v16);
  if (result)
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for llong argument!";
    v17 = 770;
    v12 = result;
    v13 = llvm::errs(result);
    llvm::cl::Option::error(a2, v16, 0, 0, v13);
    return v12;
  }

  else
  {
    *a7 = v16[0];
  }

  return result;
}

llvm *llvm::cl::parser<unsigned long>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v16[0] = 0;
  result = llvm::getAsUnsignedInteger(a5, a6, 0, v16);
  if (result)
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for ulong argument!";
    v17 = 770;
    v12 = result;
    v13 = llvm::errs(result);
    llvm::cl::Option::error(a2, v16, 0, 0, v13);
    return v12;
  }

  else
  {
    *a7 = v16[0];
  }

  return result;
}

llvm *llvm::cl::parser<unsigned long long>::parse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v16[0] = 0;
  result = llvm::getAsUnsignedInteger(a5, a6, 0, v16);
  if (result)
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for ullong argument!";
    v17 = 770;
    v12 = result;
    v13 = llvm::errs(result);
    llvm::cl::Option::error(a2, v16, 0, 0, v13);
    return v12;
  }

  else
  {
    *a7 = v16[0];
  }

  return result;
}

unint64_t llvm::cl::generic_parser_base::getOptionWidth(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v15 = v3 == 1;
    v5 = v3 + 15;
    if (v15)
    {
      v6 = 15;
    }

    else
    {
      v6 = v5;
    }

    v7 = (*(*this + 16))(this);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        (*(*this + 24))(this, v9);
        v11 = v10;
        (*(*this + 32))(this, v9);
        v13 = v12;
        v14 = (*(a2 + 5) >> 3) & 3;
        if (v14)
        {
          v15 = v14 == 1 && v11 == 0;
          if (!v15 || v12 != 0)
          {
            goto LABEL_24;
          }
        }

        else if ((*(*a2 + 8))(a2) != 1 || v11 != 0 || v13 != 0)
        {
LABEL_24:
          v19 = v11 + 8;
          if (!v11)
          {
            v19 = 15;
          }

          if (v6 <= v19)
          {
            v6 = v19;
          }
        }

        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }
  }

  else
  {
    v20 = (*(*this + 16))(this);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v6 = 0;
      do
      {
        (*(*this + 24))(this, v22);
        if (v6 <= v23 + 8)
        {
          v6 = v23 + 8;
        }

        v22 = (v22 + 1);
      }

      while (v21 != v22);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t llvm::cl::generic_parser_base::printOptionInfo(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2, unsigned int a3)
{
  if (!*(a2 + 3))
  {
    if (!*(a2 + 5))
    {
      goto LABEL_12;
    }

    v6 = llvm::outs(this);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 1uLL)
    {
      *v7 = 8224;
      v17 = *(v6 + 3);
      v8 = (*(v6 + 4) + 2);
      *(v6 + 4) = v8;
      v9 = *(a2 + 4);
      v10 = *(a2 + 5);
      if (v10 <= v17 - v8)
      {
LABEL_8:
        if (v10)
        {
          v11 = v6;
          v12 = v10;
          memcpy(v8, v9, v10);
          v6 = v11;
          v8 = (*(v11 + 4) + v12);
          *(v11 + 4) = v8;
        }

        if (v8 < *(v6 + 3))
        {
          goto LABEL_11;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v6 = llvm::raw_ostream::write(v6, "  ", 2uLL);
      v8 = *(v6 + 4);
      v9 = *(a2 + 4);
      v10 = *(a2 + 5);
      if (v10 <= *(v6 + 3) - v8)
      {
        goto LABEL_8;
      }
    }

    v6 = llvm::raw_ostream::write(v6, v9, v10);
    v8 = *(v6 + 4);
    if (v8 < *(v6 + 3))
    {
LABEL_11:
      *(v6 + 4) = v8 + 1;
      *v8 = 10;
LABEL_12:
      result = (*(*this + 16))(this);
      if (!result)
      {
        return result;
      }

      goto LABEL_23;
    }

LABEL_22:
    llvm::raw_ostream::write(v6, 10);
    result = (*(*this + 16))(this);
    if (!result)
    {
      return result;
    }

LABEL_23:
    v18 = result;
    v19 = 0;
    do
    {
      v22 = (*(*this + 24))(this, v19);
      v24 = v23;
      v25 = llvm::outs(v22);
      v26 = *(v25 + 4);
      if (*(v25 + 3) - v26 > 3uLL)
      {
        *v26 = 538976288;
        *(v25 + 4) += 4;
      }

      else
      {
        v25 = llvm::raw_ostream::write(v25, "    ", 4uLL);
      }

      *&v57 = v22;
      *(&v57 + 1) = v24;
      v58 = 2;
      v20 = (*(*this + 32))(this, v19);
      result = llvm::cl::Option::printHelpStr(v20, v21, a3, v24 + 8);
      v19 = (v19 + 1);
    }

    while (v18 != v19);
    return result;
  }

  v5 = (*(a2 + 5) >> 3) & 3;
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 != 1)
    {
      goto LABEL_32;
    }
  }

  v5 = (*(*this + 16))(this);
  if (v5)
  {
    v14 = v5;
    v15 = 0;
    while (1)
    {
      v5 = (*(*this + 24))(this, v15);
      if (!v16)
      {
        break;
      }

      v15 = (v15 + 1);
      if (v14 == v15)
      {
        goto LABEL_32;
      }
    }

    v27 = llvm::outs(v5);
    v57 = *(a2 + 1);
    v58 = 2;
    v28 = *(a2 + 3);
    if (v28 == 1)
    {
      v29 = 7;
    }

    else
    {
      v29 = v28 + 7;
    }

    v5 = llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, v29);
  }

LABEL_32:
  v30 = llvm::outs(v5);
  v57 = *(a2 + 1);
  v58 = 2;
  v32 = *(v31 + 4);
  if (*(v31 + 3) - v32 > 7uLL)
  {
    *v32 = 0x3E65756C61763C3DLL;
    *(v31 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v31, "=<value>", 8uLL);
  }

  v33 = *(a2 + 3);
  if (v33 == 1)
  {
    v34 = 15;
  }

  else
  {
    v34 = v33 + 15;
  }

  llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, v34);
  result = (*(*this + 16))(this);
  if (result)
  {
    v35 = result;
    v36 = 0;
    do
    {
      v37 = (*(*this + 24))(this, v36);
      v39 = v38;
      v41 = (*(*this + 32))(this, v36);
      v42 = v40;
      result = (*(a2 + 5) >> 3) & 3;
      if (result)
      {
        if (result == 1 && v39 == 0 && v40 == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        result = (*(*a2 + 8))(a2);
        if (result == 1 && v39 == 0 && v42 == 0)
        {
          goto LABEL_41;
        }
      }

      v47 = llvm::outs(result);
      v48 = v47;
      v49 = v47[4];
      if ((v47[3] - v49) > 4)
      {
        *(v49 + 4) = 61;
        *v49 = 538976288;
        v53 = v47[3];
        v50 = (v47[4] + 5);
        v48[4] = v50;
        v51 = v39 + 8;
        if (v39 > v53 - v50)
        {
LABEL_64:
          v52 = llvm::raw_ostream::write(v48, v37, v39);
          if (!v42)
          {
            goto LABEL_70;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v48 = llvm::raw_ostream::write(v47, "    =", 5uLL);
        v50 = v48[4];
        v51 = v39 + 8;
        if (v39 > v48[3] - v50)
        {
          goto LABEL_64;
        }
      }

      if (v39)
      {
        v52 = memcpy(v50, v37, v39);
        v48[4] += v39;
        if (!v42)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v52 = llvm::outs(v50);
        v54 = *(v52 + 4);
        if (*(v52 + 3) - v54 > 6uLL)
        {
          *(v54 + 3) = 1048147056;
          *v54 = 1886217532;
          *(v52 + 4) += 7;
          v51 = 15;
          if (!v42)
          {
LABEL_70:
            result = llvm::outs(v52);
            v55 = *(result + 32);
            if (v55 >= *(result + 24))
            {
              result = llvm::raw_ostream::write(result, 10);
            }

            else
            {
              *(result + 32) = v55 + 1;
              *v55 = 10;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v52 = llvm::raw_ostream::write(v52, "<empty>", 7uLL);
          v51 = 15;
          if (!v42)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_40:
      result = llvm::cl::Option::printEnumValHelpStr(v41, v42, a3, v51);
LABEL_41:
      v36 = (v36 + 1);
    }

    while (v35 != v36);
  }

  return result;
}

llvm::raw_ostream *llvm::cl::generic_parser_base::printGenericOptionDiff(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2, const llvm::cl::GenericOptionValue *a3, const llvm::cl::GenericOptionValue *a4, int a5)
{
  v10 = llvm::outs(this);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 1uLL)
  {
    *v11 = 8224;
    *(v10 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, "  ", 2uLL);
  }

  v44 = *(a2 + 1);
  v45 = 2;
  v13 = llvm::outs(v12);
  llvm::raw_ostream::indent(v13, a5 - *(a2 + 6));
  v14 = (*(*this + 16))(this);
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    while (1)
    {
      v17 = (*(*this + 48))(this, v16);
      v14 = (**a3)(a3, v17);
      if (v14)
      {
        break;
      }

      v16 = (v16 + 1);
      if (v15 == v16)
      {
        goto LABEL_8;
      }
    }

    v23 = llvm::outs(v14);
    v24 = v23;
    v25 = v23[4];
    if (v23[3] - v25 > 1uLL)
    {
      *v25 = 8253;
      v23[4] += 2;
    }

    else
    {
      v24 = llvm::raw_ostream::write(v23, "= ", 2uLL);
    }

    v27 = (*(*this + 24))(this, v16);
    v28 = v26;
    v29 = v24[4];
    if (v26 <= v24[3] - v29)
    {
      if (v26)
      {
        memcpy(v29, v27, v26);
        v24[4] += v28;
      }
    }

    else
    {
      llvm::raw_ostream::write(v24, v27, v26);
    }

    v30 = (*(*this + 24))(this, v16);
    if (v31 <= 8)
    {
      v32 = 8 - v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = llvm::outs(v30);
    v34 = llvm::raw_ostream::indent(v33, v32);
    v35 = v34[4];
    if ((v34[3] - v35) > 0xA)
    {
      *(v35 + 7) = 540701804;
      *v35 = *" (default: ";
      v34[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v34, " (default: ", 0xBuLL);
    }

    v36 = 0;
    while (1)
    {
      v37 = (*(*this + 48))(this, v36);
      v38 = (**a4)(a4, v37);
      if (v38)
      {
        break;
      }

      v36 = (v36 + 1);
      if (v15 == v36)
      {
        goto LABEL_32;
      }
    }

    v39 = llvm::outs(v38);
    v41 = (*(*this + 24))(this, v36);
    v42 = v40;
    v38 = v39[4];
    if (v40 <= v39[3] - v38)
    {
      if (v40)
      {
        v38 = memcpy(v38, v41, v40);
        v39[4] += v42;
      }
    }

    else
    {
      v38 = llvm::raw_ostream::write(v39, v41, v40);
    }

LABEL_32:
    result = llvm::outs(v38);
    v43 = *(result + 4);
    if (*(result + 3) - v43 <= 1uLL)
    {
      v20 = ")\n";
      v21 = 2;
      goto LABEL_34;
    }

    *v43 = 2601;
    v22 = *(result + 4) + 2;
LABEL_38:
    *(result + 4) = v22;
    return result;
  }

LABEL_8:
  result = llvm::outs(v14);
  v19 = *(result + 4);
  if (*(result + 3) - v19 > 0x18uLL)
  {
    qmemcpy(v19, "= *unknown option value*\n", 25);
    v22 = *(result + 4) + 25;
    goto LABEL_38;
  }

  v20 = "= *unknown option value*\n";
  v21 = 25;
LABEL_34:

  return llvm::raw_ostream::write(result, v20, v21);
}

void llvm::cl::parser<BOOL>::printOptionDiff(llvm *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_1F5B3FB30;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 9);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 9);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<llvm::cl::BOOLOrDefault>::printOptionDiff(llvm *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_1F5B3FB30;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 12);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 12);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<long long>::printOptionDiff(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_1F5B3FB30;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 16);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 16);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<unsigned int>::printOptionDiff(llvm *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_1F5B3FB30;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 12);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 12);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void llvm::cl::parser<unsigned long>::printOptionDiff(llvm *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = llvm::outs(a1);
  v32 = *(a2 + 16);
  v33 = 2;
  v11 = llvm::outs(v10);
  llvm::raw_ostream::indent(v11, a5 - *(a2 + 24));
  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v32) = 0;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *&v32 = &unk_1F5B3FB30;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v32, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v32, a3);
  llvm::raw_ostream::~raw_ostream(&v32);
  v13 = llvm::outs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 1uLL)
  {
    *v14 = 8253;
    v13[4] += 2;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if (v41 >= 0)
  {
    v16 = HIBYTE(v41);
  }

  else
  {
    v16 = v40;
  }

  v17 = llvm::raw_ostream::write(v13, v15, v16);
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v18 = v40;
    if (v40 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_12:
    v19 = 8 - v18;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_15:
  v20 = llvm::outs(v17);
  v21 = llvm::raw_ostream::indent(v20, v19);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xA)
  {
    v23 = llvm::raw_ostream::write(v21, " (default: ", 0xBuLL);
    v24 = *(a4 + 16);
    v25 = llvm::outs(v23);
    if (v24 != 1)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = llvm::raw_ostream::operator<<(v25, *(a4 + 8));
    v28 = llvm::outs(v31);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  *(v22 + 7) = 540701804;
  *v22 = *" (default: ";
  *(v21 + 4) += 11;
  v30 = *(a4 + 16);
  v25 = llvm::outs(v21);
  if (v30 == 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v26 = *(v25 + 4);
  if ((*(v25 + 3) - v26) > 0xB)
  {
    *(v26 + 8) = 712273013;
    *v26 = *"*no default*";
    *(v25 + 4) += 12;
    v28 = llvm::outs(v25);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = llvm::raw_ostream::write(v25, "*no default*", 0xCuLL);
    v28 = llvm::outs(v27);
    v29 = v28[4];
    if (v28[3] - v29 > 1uLL)
    {
LABEL_25:
      *v29 = 2601;
      v28[4] += 2;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_26;
      }

      return;
    }
  }

LABEL_22:
  llvm::raw_ostream::write(v28, ")\n", 2uLL);
  if (SHIBYTE(v41) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

llvm::raw_ostream *llvm::cl::parser<std::string>::printOptionDiff(llvm *a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5, int a6)
{
  v11 = llvm::outs(a1);
  v39 = *(a2 + 16);
  v40 = 2;
  v13 = llvm::outs(v12);
  v14 = llvm::raw_ostream::indent(v13, a6 - *(a2 + 24));
  v15 = llvm::outs(v14);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 8253;
    v20 = *(v15 + 3);
    v17 = (*(v15 + 4) + 2);
    *(v15 + 4) = v17;
    if (a4 <= v20 - v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = llvm::raw_ostream::write(v15, "= ", 2uLL);
    v17 = *(v15 + 4);
    if (a4 <= *(v15 + 3) - v17)
    {
LABEL_3:
      if (a4)
      {
        v18 = v15;
        v15 = memcpy(v17, a3, a4);
        *(v18 + 4) += a4;
        if (a4 > 7)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_8;
    }
  }

  v15 = llvm::raw_ostream::write(v15, a3, a4);
  if (a4 > 7)
  {
LABEL_5:
    v19 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v19 = 8 - a4;
LABEL_9:
  v21 = llvm::outs(v15);
  v22 = llvm::raw_ostream::indent(v21, v19);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) <= 0xA)
  {
    v24 = llvm::raw_ostream::write(v22, " (default: ", 0xBuLL);
    v25 = *(a5 + 32);
    v26 = llvm::outs(v24);
    if (v25 != 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    v34 = *(a5 + 8);
    v33 = a5 + 8;
    v32 = v34;
    v35 = *(v33 + 23);
    if (v35 >= 0)
    {
      v36 = v33;
    }

    else
    {
      v36 = v32;
    }

    if (v35 >= 0)
    {
      v37 = *(v33 + 23);
    }

    else
    {
      v37 = *(v33 + 8);
    }

    v38 = llvm::raw_ostream::write(v26, v36, v37);
    result = llvm::outs(v38);
    v30 = *(result + 4);
    if (*(result + 3) - v30 > 1uLL)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  *(v23 + 7) = 540701804;
  *v23 = *" (default: ";
  *(v22 + 4) += 11;
  v31 = *(a5 + 32);
  v26 = llvm::outs(v22);
  if (v31 == 1)
  {
    goto LABEL_15;
  }

LABEL_11:
  v27 = *(v26 + 4);
  if ((*(v26 + 3) - v27) > 0xB)
  {
    *(v27 + 8) = 712273013;
    *v27 = *"*no default*";
    *(v26 + 4) += 12;
    result = llvm::outs(v26);
    v30 = *(result + 4);
    if (*(result + 3) - v30 > 1uLL)
    {
LABEL_26:
      *v30 = 2601;
      *(result + 4) += 2;
      return result;
    }
  }

  else
  {
    v28 = llvm::raw_ostream::write(v26, "*no default*", 0xCuLL);
    result = llvm::outs(v28);
    v30 = *(result + 4);
    if (*(result + 3) - v30 > 1uLL)
    {
      goto LABEL_26;
    }
  }

LABEL_22:

  return llvm::raw_ostream::write(result, ")\n", 2uLL);
}

double llvm::cl::basic_parser_impl::printOptionNoValue(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, int a3)
{
  v5 = llvm::outs(this);
  v12 = *(a2 + 1);
  v13 = 2;
  v7 = llvm::outs(v6);
  v8 = llvm::raw_ostream::indent(v7, a3 - *(a2 + 6));
  v9 = llvm::outs(v8);
  v10 = v9[4];
  if (v9[3] - v10 > 0x1DuLL)
  {
    qmemcpy(v10, "= *cannot print option value*\n", 30);
    result = *"t option value*\n";
    v9[4] += 30;
  }

  else
  {

    llvm::raw_ostream::write(v9, "= *cannot print option value*\n", 0x1EuLL);
  }

  return result;
}

char *llvm::cl::OptionCategory::OptionCategory(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  *(a1 + 2) = a4;
  *(a1 + 3) = a5;
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  v6 = *(qword_1EE17CA68 + 112);
  if (*(qword_1EE17CA68 + 120) != v6)
  {
    goto LABEL_4;
  }

  v8 = *(qword_1EE17CA68 + 132);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = *(qword_1EE17CA68 + 112);
    while (*v10 != a1)
    {
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    return a1;
  }

LABEL_10:
  if (v8 >= *(qword_1EE17CA68 + 128))
  {
LABEL_4:
    llvm::SmallPtrSetImplBase::insert_imp_big((qword_1EE17CA68 + 112), a1);
    return a1;
  }

  *(qword_1EE17CA68 + 132) = v8 + 1;
  *(v6 + 8 * v8) = a1;
  return a1;
}

void anonymous namespace::HelpPrinter::printHelp(_anonymous_namespace_::HelpPrinter *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v147[256] = *MEMORY[0x1E69E9840];
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  v2 = *(qword_1EE17CA68 + 336);
  v145 = v147;
  v146 = 0x8000000000;
  sortOpts(*(v2 + 128), *(v2 + 136), &v145, *(v1 + 8));
  __base = v144;
  __nel = 0x8000000000;
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  v140 = v1;
  v4 = *(qword_1EE17CA68 + 280);
  v5 = 16;
  if (v4 == *(qword_1EE17CA68 + 272))
  {
    v5 = 20;
  }

  v6 = *(qword_1EE17CA68 + 272 + v5);
  if (v6)
  {
    v7 = 8 * v6;
    v8 = *(qword_1EE17CA68 + 280);
    while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v8 = *(qword_1EE17CA68 + 280);
  }

  v10 = (v4 + 8 * v6);
LABEL_22:
  if (v8 != v10)
  {
    v11 = *v8;
    if ((*v8)[1])
    {
      v12 = *v11;
      v13 = __nel;
      if (__nel >= HIDWORD(__nel))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__base, v144, __nel + 1, 16);
        v13 = __nel;
      }

      v14 = __base + 16 * v13;
      *v14 = v12;
      v14[1] = v11;
      LODWORD(__nel) = __nel + 1;
    }

    while (++v8 != v10)
    {
      if (*v8 < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_11:
  if (__nel < 2)
  {
    if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
      goto LABEL_13;
    }

LABEL_16:
    if (!*(qword_1EE17CA68 + 32))
    {
      goto LABEL_38;
    }

    goto LABEL_17;
  }

  qsort(__base, __nel, 0x10uLL, SubNameCompare);
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    goto LABEL_16;
  }

LABEL_13:
  if (!*(qword_1EE17CA68 + 32))
  {
LABEL_38:
    if (atomic_load_explicit(qword_1EE17CA80, memory_order_acquire))
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

LABEL_17:
  v3 = llvm::outs(v3);
  v9 = *(v3 + 4);
  if ((*(v3 + 3) - v9) > 9)
  {
    *(v9 + 8) = 8250;
    *v9 = *"OVERVIEW: ";
    *(v3 + 4) += 10;
    if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
      goto LABEL_33;
    }

LABEL_31:
    v15 = *(qword_1EE17CA68 + 24);
    v16 = *(qword_1EE17CA68 + 32);
    v17 = *(v3 + 4);
    if (v16 <= *(v3 + 3) - v17)
    {
      goto LABEL_34;
    }

LABEL_32:
    v3 = llvm::raw_ostream::write(v3, v15, v16);
    v17 = *(v3 + 4);
    goto LABEL_36;
  }

  v3 = llvm::raw_ostream::write(v3, "OVERVIEW: ", 0xAuLL);
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    goto LABEL_31;
  }

LABEL_33:
  v18 = v3;
  v3 = v18;
  v15 = *(qword_1EE17CA68 + 24);
  v16 = *(qword_1EE17CA68 + 32);
  v17 = *(v18 + 4);
  if (v16 > *(v18 + 3) - v17)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (v16)
  {
    v19 = v3;
    v20 = v16;
    memcpy(v17, v15, v16);
    v3 = v19;
    v17 = (*(v19 + 4) + v20);
    *(v19 + 4) = v17;
  }

LABEL_36:
  if (*(v3 + 3) != v17)
  {
    *v17 = 10;
    ++*(v3 + 4);
    goto LABEL_38;
  }

  v3 = llvm::raw_ostream::write(v3, "\n", 1uLL);
  if (atomic_load_explicit(qword_1EE17CA80, memory_order_acquire))
  {
LABEL_39:
    if (v2 != qword_1EE17CA80[0])
    {
      goto LABEL_40;
    }

LABEL_56:
    v35 = llvm::outs(v3);
    v36 = v35[4];
    if (v35[3] - v36 > 6uLL)
    {
      *(v36 + 3) = 540689735;
      *v36 = 1195463509;
      v35[4] += 7;
      if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v35 = llvm::raw_ostream::write(v35, "USAGE: ", 7uLL);
      if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
      {
        goto LABEL_84;
      }
    }

    v52 = v35;
    v35 = v52;
LABEL_84:
    v53 = *(qword_1EE17CA68 + 23);
    if (v53 >= 0)
    {
      v54 = qword_1EE17CA68;
    }

    else
    {
      v54 = *qword_1EE17CA68;
    }

    if (v53 >= 0)
    {
      v55 = *(qword_1EE17CA68 + 23);
    }

    else
    {
      v55 = *(qword_1EE17CA68 + 8);
    }

    v56 = llvm::raw_ostream::write(v35, v54, v55);
    if (__nel)
    {
      v57 = llvm::outs(v56);
      v58 = *(v57 + 4);
      if (*(v57 + 3) - v58 > 0xCuLL)
      {
        qmemcpy(v58, " [subcommand]", 13);
        *(v57 + 4) += 13;
        v43 = llvm::outs(v57);
        v46 = *(v43 + 4);
        if (*(v43 + 3) - v46 > 9uLL)
        {
          goto LABEL_80;
        }

        goto LABEL_94;
      }

      v56 = llvm::raw_ostream::write(v57, " [subcommand]", 0xDuLL);
    }

    v43 = llvm::outs(v56);
    v46 = *(v43 + 4);
    if (*(v43 + 3) - v46 <= 9uLL)
    {
      goto LABEL_94;
    }

    goto LABEL_80;
  }

LABEL_55:
  llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA80, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  if (v2 == qword_1EE17CA80[0])
  {
    goto LABEL_56;
  }

LABEL_40:
  if (!*(v2 + 24))
  {
    goto LABEL_51;
  }

  v21 = llvm::outs(v3);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) <= 0xB)
  {
    v21 = llvm::raw_ostream::write(v21, "SUBCOMMAND '", 0xCuLL);
    v23 = *(v21 + 4);
    v24 = *v2;
    v25 = *(v2 + 8);
    if (v25 <= *(v21 + 3) - v23)
    {
      goto LABEL_43;
    }

LABEL_60:
    v21 = llvm::raw_ostream::write(v21, v24, v25);
    v23 = *(v21 + 4);
    if (*(v21 + 3) - v23 <= 2uLL)
    {
      goto LABEL_46;
    }

    goto LABEL_61;
  }

  *(v22 + 8) = 656426062;
  *v22 = *"SUBCOMMAND '";
  v37 = *(v21 + 3);
  v23 = (*(v21 + 4) + 12);
  *(v21 + 4) = v23;
  v24 = *v2;
  v25 = *(v2 + 8);
  if (v25 > v37 - v23)
  {
    goto LABEL_60;
  }

LABEL_43:
  if (v25)
  {
    v26 = v21;
    v27 = v25;
    memcpy(v23, v24, v25);
    v21 = v26;
    v23 = (*(v26 + 4) + v27);
    *(v26 + 4) = v23;
  }

  if (*(v21 + 3) - v23 <= 2uLL)
  {
LABEL_46:
    v21 = llvm::raw_ostream::write(v21, "': ", 3uLL);
    v28 = *(v21 + 4);
    v29 = *(v2 + 16);
    v30 = *(v2 + 24);
    if (v30 <= *(v21 + 3) - v28)
    {
      goto LABEL_47;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23[2] = 32;
  *v23 = 14887;
  v38 = *(v21 + 3);
  v28 = (*(v21 + 4) + 3);
  *(v21 + 4) = v28;
  v29 = *(v2 + 16);
  v30 = *(v2 + 24);
  if (v30 <= v38 - v28)
  {
LABEL_47:
    if (v30)
    {
      v31 = v21;
      v32 = v30;
      memcpy(v28, v29, v30);
      v21 = v31;
      v28 = (*(v31 + 4) + v32);
      *(v31 + 4) = v28;
    }

    if (*(v21 + 3) - v28 <= 1uLL)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

LABEL_62:
  v21 = llvm::raw_ostream::write(v21, v29, v30);
  v28 = *(v21 + 4);
  if (*(v21 + 3) - v28 <= 1uLL)
  {
LABEL_50:
    v3 = llvm::raw_ostream::write(v21, "\n\n", 2uLL);
LABEL_51:
    v33 = llvm::outs(v3);
    v34 = v33[4];
    if (v33[3] - v34 <= 6uLL)
    {
      goto LABEL_52;
    }

LABEL_64:
    *(v34 + 3) = 540689735;
    *v34 = 1195463509;
    v33[4] += 7;
    if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_63:
  *v28 = 2570;
  *(v21 + 4) += 2;
  v33 = llvm::outs(v21);
  v34 = v33[4];
  if (v33[3] - v34 > 6uLL)
  {
    goto LABEL_64;
  }

LABEL_52:
  v33 = llvm::raw_ostream::write(v33, "USAGE: ", 7uLL);
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    goto LABEL_66;
  }

LABEL_65:
  v39 = v33;
  v33 = v39;
LABEL_66:
  v40 = *(qword_1EE17CA68 + 23);
  if (v40 >= 0)
  {
    v41 = qword_1EE17CA68;
  }

  else
  {
    v41 = *qword_1EE17CA68;
  }

  if (v40 >= 0)
  {
    v42 = *(qword_1EE17CA68 + 23);
  }

  else
  {
    v42 = *(qword_1EE17CA68 + 8);
  }

  v43 = llvm::raw_ostream::write(v33, v41, v42);
  v44 = *(v43 + 4);
  if (*(v43 + 3) != v44)
  {
    *v44 = 32;
    v45 = *(v43 + 3);
    v46 = (*(v43 + 4) + 1);
    *(v43 + 4) = v46;
    v47 = *v2;
    v48 = *(v2 + 8);
    if (v48 > v45 - v46)
    {
      goto LABEL_74;
    }

    goto LABEL_77;
  }

  v43 = llvm::raw_ostream::write(v43, " ", 1uLL);
  v46 = *(v43 + 4);
  v47 = *v2;
  v48 = *(v2 + 8);
  if (v48 <= *(v43 + 3) - v46)
  {
LABEL_77:
    if (v48)
    {
      v49 = v43;
      v50 = v48;
      memcpy(v46, v47, v48);
      v43 = v49;
      v46 = (*(v49 + 4) + v50);
      *(v49 + 4) = v46;
    }

    if (*(v43 + 3) - v46 > 9uLL)
    {
      goto LABEL_80;
    }

LABEL_94:
    v43 = llvm::raw_ostream::write(v43, " [options]", 0xAuLL);
    v141 = v2;
    v51 = *(v2 + 40);
    if (v51)
    {
      goto LABEL_95;
    }

    goto LABEL_111;
  }

LABEL_74:
  v43 = llvm::raw_ostream::write(v43, v47, v48);
  v46 = *(v43 + 4);
  if (*(v43 + 3) - v46 <= 9uLL)
  {
    goto LABEL_94;
  }

LABEL_80:
  v46[4] = 23923;
  *v46 = *" [options]";
  *(v43 + 4) += 10;
  v141 = v2;
  v51 = *(v2 + 40);
  if (v51)
  {
LABEL_95:
    v59 = *(v141 + 32);
    for (i = 8 * v51; i; i -= 8)
    {
      v61 = *v59;
      if (!*(*v59 + 24))
      {
        goto LABEL_103;
      }

      v43 = llvm::outs(v43);
      v62 = *(v43 + 4);
      if ((*(v43 + 3) - v62) > 2)
      {
        *(v62 + 2) = 45;
        *v62 = 11552;
        v73 = *(v43 + 3);
        v63 = (*(v43 + 4) + 3);
        *(v43 + 4) = v63;
        v64 = v61[2];
        v65 = v61[3];
        if (v65 <= v73 - v63)
        {
LABEL_101:
          if (v65)
          {
            v66 = v43;
            v67 = v65;
            v43 = memcpy(v63, v64, v65);
            *(v66 + 4) += v67;
          }

LABEL_103:
          v43 = llvm::outs(v43);
          v68 = *(v43 + 4);
          if (*(v43 + 3) != v68)
          {
            goto LABEL_104;
          }

          goto LABEL_108;
        }
      }

      else
      {
        v43 = llvm::raw_ostream::write(v43, " --", 3uLL);
        v63 = *(v43 + 4);
        v64 = v61[2];
        v65 = v61[3];
        if (v65 <= *(v43 + 3) - v63)
        {
          goto LABEL_101;
        }
      }

      v74 = llvm::raw_ostream::write(v43, v64, v65);
      v43 = llvm::outs(v74);
      v68 = *(v43 + 4);
      if (*(v43 + 3) != v68)
      {
LABEL_104:
        *v68 = 32;
        v69 = *(v43 + 3);
        v70 = (*(v43 + 4) + 1);
        *(v43 + 4) = v70;
        v71 = v61[4];
        v72 = v61[5];
        if (v72 <= v69 - v70)
        {
          goto LABEL_109;
        }

        goto LABEL_96;
      }

LABEL_108:
      v43 = llvm::raw_ostream::write(v43, " ", 1uLL);
      v70 = *(v43 + 4);
      v71 = v61[4];
      v72 = v61[5];
      if (v72 <= *(v43 + 3) - v70)
      {
LABEL_109:
        if (v72)
        {
          v75 = v43;
          v76 = v72;
          v43 = memcpy(v70, v71, v72);
          *(v75 + 4) += v76;
        }

        goto LABEL_97;
      }

LABEL_96:
      v43 = llvm::raw_ostream::write(v43, v71, v72);
LABEL_97:
      v59 += 8;
    }
  }

LABEL_111:
  v77 = &OBJC_IVAR___MPSGraphWhileOp__afterBlock;
  if (!*(v141 + 152))
  {
    goto LABEL_118;
  }

  v43 = llvm::outs(v43);
  v78 = *(v43 + 4);
  if (*(v43 + 3) == v78)
  {
    v43 = llvm::raw_ostream::write(v43, " ", 1uLL);
    v83 = *(v141 + 152);
    v81 = *(v83 + 32);
    v82 = *(v83 + 40);
    v79 = *(v43 + 4);
    if (v82 > *(v43 + 3) - v79)
    {
      goto LABEL_114;
    }
  }

  else
  {
    *v78 = 32;
    v79 = (*(v43 + 4) + 1);
    *(v43 + 4) = v79;
    v80 = *(v141 + 152);
    v81 = *(v80 + 32);
    v82 = *(v80 + 40);
    if (v82 > *(v43 + 3) - v79)
    {
LABEL_114:
      v43 = llvm::raw_ostream::write(v43, v81, v82);
      goto LABEL_118;
    }
  }

  if (v82)
  {
    v84 = v43;
    v85 = v82;
    v43 = memcpy(v79, v81, v82);
    *(v84 + 4) += v85;
  }

LABEL_118:
  if (atomic_load_explicit(qword_1EE17CA80, memory_order_acquire))
  {
    if (v141 != qword_1EE17CA80[0])
    {
      goto LABEL_172;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA80, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
    if (v141 != qword_1EE17CA80[0])
    {
      goto LABEL_172;
    }
  }

  v86 = __nel;
  if (!__nel)
  {
LABEL_172:
    v124 = llvm::outs(v43);
    v125 = *(v124 + 4);
    if (*(v124 + 3) - v125 <= 1uLL)
    {
      goto LABEL_173;
    }

LABEL_181:
    *v125 = 2570;
    *(v124 + 4) += 2;
    v126 = v146;
    if (v146)
    {
      goto LABEL_174;
    }

    goto LABEL_182;
  }

  v87 = 0;
  v88 = __base;
  do
  {
    v89 = *v88;
    v88 += 2;
    v90 = strlen(v89);
    if (v87 <= v90)
    {
      v87 = v90;
    }

    --v86;
  }

  while (v86);
  v91 = llvm::outs(v90);
  v92 = *(v91 + 4);
  if (*(v91 + 3) - v92 <= 1uLL)
  {
    v93 = llvm::raw_ostream::write(v91, "\n\n", 2uLL);
    v94 = llvm::outs(v93);
    v95 = *(v94 + 4);
    if (*(v94 + 3) - v95 > 0xDuLL)
    {
      goto LABEL_129;
    }

LABEL_134:
    v94 = llvm::raw_ostream::write(v94, "SUBCOMMANDS:\n\n", 0xEuLL);
    v96 = __nel;
    if (!__nel)
    {
      goto LABEL_156;
    }

    goto LABEL_135;
  }

  *v92 = 2570;
  *(v91 + 4) += 2;
  v94 = llvm::outs(v91);
  v95 = *(v94 + 4);
  if (*(v94 + 3) - v95 <= 0xDuLL)
  {
    goto LABEL_134;
  }

LABEL_129:
  qmemcpy(v95, "SUBCOMMANDS:\n\n", 14);
  *(v94 + 4) += 14;
  v96 = __nel;
  if (__nel)
  {
LABEL_135:
    v97 = 16 * v96;
    v98 = __base + 8;
    while (1)
    {
      v99 = llvm::outs(v94);
      v101 = *(v99 + 4);
      if (*(v99 + 3) - v101 > 1uLL)
      {
        *v101 = 8224;
        *(v99 + 4) += 2;
        v102 = *(v98 - 1);
        if (!v102)
        {
          goto LABEL_149;
        }
      }

      else
      {
        v99 = llvm::raw_ostream::write(v99, "  ", 2uLL);
        v102 = *(v98 - 1);
        if (!v102)
        {
          goto LABEL_149;
        }
      }

      v103 = v99;
      v99 = strlen(v102);
      v104 = v99;
      if (v99 <= *(v103 + 3) - *(v103 + 4))
      {
        if (v99)
        {
          v99 = memcpy(*(v103 + 4), v102, v99);
          *(v103 + 4) += v104;
        }
      }

      else
      {
        v99 = llvm::raw_ostream::write(v103, v102, v99);
      }

LABEL_149:
      if (*(*v98 + 24))
      {
        v105 = llvm::outs(v99);
        v106 = strlen(*(v98 - 1));
        v107 = llvm::raw_ostream::indent(v105, v87 - v106);
        v99 = llvm::outs(v107);
        v108 = *(v99 + 4);
        if ((*(v99 + 3) - v108) > 2)
        {
          *(v108 + 2) = 32;
          *v108 = 11552;
          v111 = (*(v99 + 4) + 3);
          *(v99 + 4) = v111;
          v109 = *(*v98 + 16);
          v110 = *(*v98 + 24);
          if (v110 <= *(v99 + 3) - v111)
          {
LABEL_154:
            if (v110)
            {
              v112 = v99;
              v113 = v110;
              v99 = memcpy(v111, v109, v110);
              *(v112 + 4) += v113;
            }

            goto LABEL_137;
          }
        }

        else
        {
          v99 = llvm::raw_ostream::write(v99, " - ", 3uLL);
          v109 = *(*v98 + 16);
          v110 = *(*v98 + 24);
          v111 = *(v99 + 4);
          if (v110 <= *(v99 + 3) - v111)
          {
            goto LABEL_154;
          }
        }

        v99 = llvm::raw_ostream::write(v99, v109, v110);
      }

LABEL_137:
      v94 = llvm::outs(v99);
      v100 = *(v94 + 4);
      if (*(v94 + 3) == v100)
      {
        v94 = llvm::raw_ostream::write(v94, "\n", 1uLL);
        v98 += 16;
        v97 -= 16;
        if (!v97)
        {
          break;
        }
      }

      else
      {
        *v100 = 10;
        ++*(v94 + 4);
        v98 += 16;
        v97 -= 16;
        if (!v97)
        {
          break;
        }
      }
    }
  }

LABEL_156:
  v114 = llvm::outs(v94);
  v115 = *(v114 + 4);
  if (*(v114 + 3) == v115)
  {
    v114 = llvm::raw_ostream::write(v114, "\n", 1uLL);
  }

  else
  {
    *v115 = 10;
    ++*(v114 + 4);
  }

  v77 = &OBJC_IVAR___MPSGraphWhileOp__afterBlock;
  v116 = llvm::outs(v114);
  v117 = v116[4];
  if (v116[3] - v117 > 7uLL)
  {
    *v117 = 0x2220657079542020;
    v116[4] += 8;
    if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
      goto LABEL_164;
    }
  }

  else
  {
    v116 = llvm::raw_ostream::write(v116, "  Type ", 8uLL);
    if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
      goto LABEL_164;
    }
  }

  v118 = v116;
  v116 = v118;
LABEL_164:
  v119 = *(qword_1EE17CA68 + 23);
  if (v119 >= 0)
  {
    v120 = qword_1EE17CA68;
  }

  else
  {
    v120 = *qword_1EE17CA68;
  }

  if (v119 >= 0)
  {
    v121 = *(qword_1EE17CA68 + 23);
  }

  else
  {
    v121 = *(qword_1EE17CA68 + 8);
  }

  v122 = llvm::raw_ostream::write(v116, v120, v121);
  v123 = *(v122 + 4);
  if (*(v122 + 3) - v123 <= 0x3EuLL)
  {
    v43 = llvm::raw_ostream::write(v122, " <subcommand> --help to get more help on a specific subcommand", 0x3FuLL);
    goto LABEL_172;
  }

  qmemcpy(v123, " <subcommand> --help to get more help on a specific subcommand", 63);
  *(v122 + 4) += 63;
  v124 = llvm::outs(v122);
  v125 = *(v124 + 4);
  if (*(v124 + 3) - v125 > 1uLL)
  {
    goto LABEL_181;
  }

LABEL_173:
  v124 = llvm::raw_ostream::write(v124, "\n\n", 2uLL);
  v126 = v146;
  if (v146)
  {
LABEL_174:
    v127 = 0;
    v128 = 8;
    do
    {
      v129 = (*(**(v145 + v128) + 40))(*(v145 + v128));
      if (v127 <= v129)
      {
        v127 = v129;
      }

      v128 += 16;
      --v126;
    }

    while (v126);
    v130 = llvm::outs(v129);
    v131 = v130[4];
    if ((v130[3] - v131) <= 8)
    {
      goto LABEL_179;
    }

    goto LABEL_183;
  }

LABEL_182:
  v127 = 0;
  v130 = llvm::outs(v124);
  v131 = v130[4];
  if ((v130[3] - v131) <= 8)
  {
LABEL_179:
    llvm::raw_ostream::write(v130, "OPTIONS:\n", 9uLL);
    goto LABEL_184;
  }

LABEL_183:
  *(v131 + 8) = 10;
  *v131 = *"OPTIONS:\n";
  v130[4] += 9;
LABEL_184:
  v132 = (**v140)(v140, &v145, v127);
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  v133 = *(v77 + 333);
  v134 = *(v133 + 40);
  for (j = *(v133 + 48); v134 != j; v134 += 16)
  {
    while (1)
    {
      v132 = llvm::outs(v132);
      v136 = *v134;
      v137 = *(v134 + 8);
      if (v137 <= v132[3] - v132[4])
      {
        break;
      }

      v132 = llvm::raw_ostream::write(v132, v136, v137);
      v134 += 16;
      if (v134 == j)
      {
        goto LABEL_193;
      }
    }

    if (v137)
    {
      v138 = v132;
      v139 = *(v134 + 8);
      v132 = memcpy(v132[4], v136, v137);
      v138[4] = v138[4] + v139;
    }
  }

LABEL_193:
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  *(*(v77 + 333) + 48) = *(*(v77 + 333) + 40);
  if (__base != v144)
  {
    free(__base);
  }

  if (v145 != v147)
  {
    free(v145);
  }
}

llvm::raw_ostream *anonymous namespace::VersionPrinter::print(llvm *a1)
{
  v2 = llvm::outs(a1);
  v3 = v2;
  v4 = *(v2 + 4);
  if (*(v2 + 3) - v4 > 0x1AuLL)
  {
    qmemcpy(v4, "LLVM (http://llvm.org/):\n  ", 27);
    v17 = *(v2 + 3);
    v5 = (*(v2 + 4) + 27);
    *(v2 + 4) = v5;
    if ((v17 - v5) > 3)
    {
LABEL_3:
      *v5 = 1297501260;
      v6 = *(v3 + 4) + 4;
      *(v3 + 4) = v6;
      result = v3;
      if ((*(v3 + 3) - v6) > 8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    llvm::raw_ostream::write(v2, "LLVM (http://llvm.org/):\n  ", 0x1BuLL);
    v5 = *(v3 + 4);
    if (*(v3 + 3) - v5 > 3uLL)
    {
      goto LABEL_3;
    }
  }

  result = llvm::raw_ostream::write(v3, "LLVM", 4uLL);
  v6 = *(result + 4);
  if ((*(result + 3) - v6) > 8)
  {
LABEL_4:
    *(v6 + 8) = 32;
    *v6 = *" version ";
    v8 = *(result + 3);
    v9 = *(result + 4) + 9;
    *(result + 4) = v9;
    if ((v8 - v9) > 8)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = llvm::raw_ostream::write(result, " version ", 9uLL);
  v9 = *(result + 4);
  if ((*(result + 3) - v9) > 8)
  {
LABEL_5:
    *(v9 + 8) = 116;
    *v9 = *"20.0.0git";
    v10 = *(result + 3);
    v11 = *(result + 4) + 9;
    *(result + 4) = v11;
    if ((v10 - v11) > 2)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = llvm::raw_ostream::write(result, "20.0.0git", 9uLL);
  v11 = *(result + 4);
  if ((*(result + 3) - v11) > 2)
  {
LABEL_6:
    *(v11 + 2) = 32;
    *v11 = 8202;
    *(result + 4) += 3;
    v12 = *(v3 + 4);
    if (*(v3 + 3) - v12 > 0xEuLL)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = llvm::raw_ostream::write(result, "\n  ", 3uLL);
  v12 = *(v3 + 4);
  if (*(v3 + 3) - v12 > 0xEuLL)
  {
LABEL_7:
    qmemcpy(v12, "Optimized build", 15);
    v13 = *(v3 + 3);
    v14 = (*(v3 + 4) + 15);
    *(v3 + 4) = v14;
    if ((v13 - v14) > 1)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = llvm::raw_ostream::write(v3, "Optimized build", 0xFuLL);
  v14 = *(v3 + 4);
  if (*(v3 + 3) - v14 > 1uLL)
  {
LABEL_8:
    *v14 = 2606;
    *(v3 + 4) += 2;
    v16 = *a1;
    v15 = *(a1 + 1);
    if (v16 != v15)
    {
      goto LABEL_17;
    }

    return result;
  }

LABEL_16:
  result = llvm::raw_ostream::write(v3, ".\n", 2uLL);
  v16 = *a1;
  v15 = *(a1 + 1);
  if (v16 != v15)
  {
LABEL_17:
    while (1)
    {
      v18 = llvm::outs(result);
      v19 = *(v16 + 24);
      if (!v19)
      {
        break;
      }

      result = (*(*v19 + 48))(v19, v18);
      v16 += 32;
      if (v16 == v15)
      {
        return result;
      }
    }

    v20 = std::__throw_bad_function_call[abi:nn200100]();
    return std::vector<std::function<void ()(llvm::raw_ostream &)>>::vector[abi:nn200100](v20, v21);
  }

  return result;
}

void *std::vector<std::function<void ()(llvm::raw_ostream &)>>::vector[abi:nn200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (v5 < 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v4 - *a2);
    *a1 = v6;
    a1[1] = v6;
    a1[2] = v6 + v5;
    v7 = v3;
    do
    {
      v8 = *(v7 + 24);
      if (v8)
      {
        if (v7 == v8)
        {
          v6[3] = v6;
          (*(*v8 + 24))(v8, v6);
        }

        else
        {
          v6[3] = (*(*v8 + 16))(v8);
        }
      }

      else
      {
        v6[3] = 0;
      }

      v7 += 32;
      v6 += 4;
      v3 += 32;
    }

    while (v7 != v4);
    a1[1] = v6;
  }

  return a1;
}

char **std::vector<std::function<void ()(llvm::raw_ostream &)>>::~vector[abi:nn200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt(void *a1)
{
  *a1 = &unk_1F5B3E5A8;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt(char *__p)
{
  *__p = &unk_1F5B3E5A8;
  v2 = __p + 160;
  v3 = *(__p + 23);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_1F5B3E658;
  v2 = a1 + 200;
  v3 = *(a1 + 224);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 152) = &unk_1F5AFCAB0;
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 152) = &unk_1F5AFCAB0;
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 160));
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
LABEL_6:
    *a1 = &unk_1F5B3E1D8;
    v4 = *(a1 + 96);
    if (v4 == *(a1 + 88))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  operator delete(*(a1 + 128));
  *a1 = &unk_1F5B3E1D8;
  v4 = *(a1 + 96);
  if (v4 != *(a1 + 88))
  {
LABEL_7:
    free(v4);
  }

LABEL_8:
  v5 = *(a1 + 64);
  if (v5 != (a1 + 80))
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(char *__p)
{
  *__p = &unk_1F5B3E658;
  v2 = __p + 200;
  v3 = *(__p + 28);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(__p + 19) = &unk_1F5AFCAB0;
    if ((__p[183] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(__p + 19) = &unk_1F5AFCAB0;
    if ((__p[183] & 0x80000000) == 0)
    {
LABEL_5:
      if ((__p[151] & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  operator delete(*(__p + 20));
  if ((__p[151] & 0x80000000) == 0)
  {
LABEL_6:
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 == *(__p + 11))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  operator delete(*(__p + 16));
  *__p = &unk_1F5B3E1D8;
  v4 = *(__p + 12);
  if (v4 != *(__p + 11))
  {
LABEL_7:
    free(v4);
  }

LABEL_8:
  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_1F5B3E720;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt(char *__p)
{
  *__p = &unk_1F5B3E720;
  v2 = __p + 160;
  v3 = *(__p + 23);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

uint64_t llvm::cl::alias::getValueExpectedFlagDefault(llvm::cl::alias *this)
{
  v1 = *(this + 16);
  if (((v1[5] >> 3) & 3) != 0)
  {
    return (v1[5] >> 3) & 3;
  }

  else
  {
    return (*(*v1 + 8))();
  }
}

void llvm::cl::alias::~alias(llvm::cl::alias *this)
{
  *this = &unk_1F5B3E1D8;
  v2 = *(this + 12);
  if (v2 != *(this + 11))
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != this + 80)
  {
    free(v3);
  }
}

{
  *this = &unk_1F5B3E1D8;
  v2 = *(this + 12);
  if (v2 != *(this + 11))
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != this + 80)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::CommandLineParser::forEachSubCommand(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, atomic_ullong), uint64_t a4)
{
  v5 = *(a2 + 108) - *(a2 + 112);
  if (!v5)
  {
    v6 = qword_1EE17CA80;
LABEL_3:
    if (!atomic_load_explicit(v6, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(v6, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
    }

    v7 = *v6;

    return a3(a4, v7);
  }

  v8 = a2 + 88;
  if (v5 == 1)
  {
    v9 = *(a2 + 96);
    v10 = 16;
    if (v9 == *(a2 + 88))
    {
      v10 = 20;
    }

    v11 = *(v8 + v10);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = &v9[v11];
      while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v9;
        v12 -= 8;
        if (!v12)
        {
          v9 = v13;
          break;
        }
      }
    }

    v14 = *v9;
    v6 = qword_1EE17CA98;
    if (atomic_load_explicit(qword_1EE17CA98, memory_order_acquire))
    {
      if (v14 != qword_1EE17CA98[0])
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = result;
      v23 = a2;
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA98, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      a2 = v23;
      result = v22;
      if (v14 != qword_1EE17CA98[0])
      {
        goto LABEL_18;
      }
    }

    v24 = *(result + 280);
    v25 = 16;
    if (v24 == *(result + 272))
    {
      v25 = 20;
    }

    v26 = *(result + 272 + v25);
    if (v26)
    {
      v27 = 8 * v26;
      v28 = *(result + 280);
      while (*v28 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v28;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v28 = *(result + 280);
    }

    v29 = (v24 + 8 * v26);
    while (v28 != v29)
    {
      v30 = *v28++;
      a3(a4, v30);
      for (; v28 != v29; ++v28)
      {
        if (*v28 < 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }
      }
    }

    goto LABEL_3;
  }

LABEL_18:
  v15 = *(a2 + 96);
  v16 = 16;
  if (v15 == *(a2 + 88))
  {
    v16 = 20;
  }

  v17 = *(v8 + v16);
  if (v17)
  {
    v18 = 8 * v17;
    for (i = *(a2 + 96); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v18 -= 8;
      if (!v18)
      {
        return result;
      }
    }
  }

  else
  {
    i = *(a2 + 96);
  }

  v20 = (v15 + 8 * v17);
  while (i != v20)
  {
    v21 = *i++;
    for (result = a3(a4, v21); i != v20; ++i)
    {
      if (*i < 0xFFFFFFFFFFFFFFFELL)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t *anonymous namespace::CommandLineParser::addLiteralOption(uint64_t *result, uint64_t a2, const unsigned __int8 *a3, unsigned int *a4, size_t a5)
{
  if (!*(a2 + 24))
  {
    v8 = result;
    v16 = a2;
    v9 = llvm::StringMapImpl::hash(a4, a5, a3, a4);
    result = llvm::StringMap<mlir::Type,llvm::MallocAllocator>::try_emplace_with_hash<mlir::Type&>((a3 + 128), a4, a5, v9, &v16);
    if ((v10 & 1) == 0)
    {
      v11 = llvm::errs(result);
      v12 = llvm::raw_ostream::operator<<(v11, v8);
      v13 = llvm::raw_ostream::operator<<(v12, ": CommandLine Error: Option '");
      v14 = llvm::raw_ostream::operator<<(v13, a4, a5);
      llvm::raw_ostream::operator<<(v14, "' registered more than once!\n");
      llvm::report_fatal_error("inconsistency in registered CommandLine options", 1, v15);
    }
  }

  return result;
}

void anonymous namespace::CommandLineParser::addOption(uint64_t *result, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v4 = a3;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = result;
    if ((*(a2 + 10) & 0x2000) != 0)
    {
      v8 = *(a2 + 16);
      v9 = llvm::StringMapImpl::hash(v8, *(a2 + 24), a3, a4);
      Key = llvm::StringMapImpl::FindKey(v4 + 16, v8, v6, v9);
      if (Key != -1 && Key != *(v4 + 34))
      {
        return;
      }
    }

    v28 = *(a2 + 16);
    v29 = a2;
    v11 = llvm::StringMapImpl::hash(v28, *(&v28 + 1), a3, a4);
    result = llvm::StringMap<mlir::Type,llvm::MallocAllocator>::try_emplace_with_hash<mlir::Type&>((v4 + 128), v28, *(&v28 + 1), v11, &v29);
    if ((v12 & 1) == 0)
    {
      v16 = llvm::errs(result);
      v17 = *(v7 + 23);
      if (v17 >= 0)
      {
        v18 = v7;
      }

      else
      {
        v18 = *v7;
      }

      if (v17 >= 0)
      {
        v19 = *(v7 + 23);
      }

      else
      {
        v19 = v7[1];
      }

      result = llvm::raw_ostream::write(v16, v18, v19);
      v20 = result[4];
      if ((result[3] - v20) > 0x1C)
      {
        qmemcpy(v20, ": CommandLine Error: Option '", 29);
        v25 = result[3];
        v21 = (result[4] + 29);
        result[4] = v21;
        v22 = *(a2 + 16);
        a3 = *(a2 + 24);
        if (a3 <= v25 - v21)
        {
LABEL_19:
          if (a3)
          {
            v23 = result;
            v24 = a3;
            memcpy(v21, v22, a3);
            result = v23;
            v21 = &v24[v23[4]];
            v23[4] = v21;
          }

          if ((result[3] - v21) <= 0x1C)
          {
LABEL_22:
            result = llvm::raw_ostream::write(result, "' registered more than once!\n", 0x1DuLL);
            v13 = 1;
            v14 = *(a2 + 10);
            if ((v14 & 0x180) != 0x80)
            {
              goto LABEL_27;
            }

LABEL_7:
            v15 = *(v4 + 10);
            if (v15 >= *(v4 + 11))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 32), (v4 + 48), v15 + 1, 8);
              LODWORD(v15) = *(v4 + 10);
            }

            *(*(v4 + 4) + 8 * v15) = a2;
            ++*(v4 + 10);
            if (v13)
            {
              goto LABEL_39;
            }

            return;
          }

LABEL_26:
          qmemcpy(v21, "' registered more than once!\n", 29);
          result[4] += 29;
          v13 = 1;
          v14 = *(a2 + 10);
          if ((v14 & 0x180) != 0x80)
          {
            goto LABEL_27;
          }

          goto LABEL_7;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(result, ": CommandLine Error: Option '", 0x1DuLL);
        v21 = result[4];
        v22 = *(a2 + 16);
        a3 = *(a2 + 24);
        if (a3 <= result[3] - v21)
        {
          goto LABEL_19;
        }
      }

      result = llvm::raw_ostream::write(result, v22, a3);
      v21 = result[4];
      if ((result[3] - v21) <= 0x1C)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  v13 = 0;
  v14 = *(a2 + 10);
  if ((v14 & 0x180) == 0x80)
  {
    goto LABEL_7;
  }

LABEL_27:
  if ((v14 & 0x800) != 0)
  {
    v26 = *(v4 + 22);
    if (v26 >= *(v4 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 80), (v4 + 96), v26 + 1, 8);
      LODWORD(v26) = *(v4 + 22);
    }

    *(*(v4 + 10) + 8 * v26) = a2;
    ++*(v4 + 22);
    if ((v13 & 1) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  if ((v14 & 7) != 4)
  {
    if (v13)
    {
      goto LABEL_39;
    }

    return;
  }

  if (*(v4 + 19))
  {
    *&v28 = "Cannot specify more than one option with cl::ConsumeAfter!";
    v30 = 259;
    v27 = llvm::errs(result);
    llvm::cl::Option::error(a2, &v28, 0, 0, v27);
    *(v4 + 19) = a2;
    goto LABEL_39;
  }

  *(v4 + 19) = a2;
  if (v13)
  {
LABEL_39:
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1, a3);
  }
}

uint64_t llvm::function_ref<void ()(llvm::cl::SubCommand &)>::callback_fn<anonymous namespace::CommandLineParser::updateArgStr(llvm::cl::Option *,llvm::StringRef)::{lambda(llvm::cl::SubCommand &)#1}>(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v5 = *a1;
  v6 = **(a1 + 8);
  v7 = *(a1 + 16);
  v25 = *v7;
  v26 = *(v7 + 8);
  v27 = v6;
  v8 = llvm::StringMapImpl::hash(v25, v26, a3, a4);
  v9 = llvm::StringMap<mlir::Type,llvm::MallocAllocator>::try_emplace_with_hash<mlir::Type&>((a2 + 128), v25, v26, v8, &v27);
  if ((v12 & 1) == 0)
  {
    v20 = llvm::errs(v9);
    v21 = llvm::raw_ostream::operator<<(v20, v5);
    v22 = llvm::raw_ostream::operator<<(v21, ": CommandLine Error: Option '");
    v23 = llvm::raw_ostream::operator<<(v22, *(v6 + 16), *(v6 + 24));
    llvm::raw_ostream::operator<<(v23, "' registered more than once!\n");
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1, v24);
  }

  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  v15 = llvm::StringMapImpl::hash(v13, v14, v10, v11);
  result = llvm::StringMapImpl::FindKey((a2 + 128), v13, v14, v15);
  if (result != -1 && result != *(a2 + 136))
  {
    v19 = *(*(a2 + 128) + 8 * result);
    llvm::StringMapImpl::RemoveKey((a2 + 128), v19, v17, v18);
    llvm::deallocate_buffer(v19, (*v19 + 17));
  }

  return result;
}

uint64_t CommaSeparateAndAddOccurrence(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, size_t a6, uint64_t a7)
{
  v8 = a6;
  v9 = a5;
  if ((a1[5] & 0x200) != 0 && a6 && (v14 = memchr(a5, 44, a6)) != 0 && (v15 = v14 - v9, v14 - v9 != -1))
  {
    while (1)
    {
      v16 = v8 >= v15 ? v15 : v8;
      if ((*(*a1 + 80))(a1, a2, a3, a4, v9, v16, a7))
      {
        return 1;
      }

      if (v8 >= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v8;
      }

      v9 += v17;
      v8 -= v17;
      if (v8)
      {
        v18 = memchr(v9, 44, v8);
        v15 = v18 - v9;
        if (v18 && v15 != -1)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
LABEL_18:
    v20 = *(*a1 + 80);

    return v20(a1, a2, a3, a4, v9, v8, a7);
  }
}

uint64_t anonymous namespace::CommandLineParser::LookupLongOption(uint64_t a1, uint64_t a2, void *a3, int a4, char a5)
{
  v5 = *(a2 + 8);
  if (!v5)
  {
    return 0;
  }

  v11 = *a2;
  v12 = memchr(*a2, 61, v5);
  v15 = v12 - v11;
  if (v12)
  {
    v16 = v15 == -1;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (v5 >= v15)
    {
      v5 = v12 - v11;
    }

    v21 = llvm::StringMapImpl::hash(v11, v5, v13, v14);
    Key = llvm::StringMapImpl::FindKey((a1 + 128), v11, v5, v21);
    if (Key == -1 || Key == *(a1 + 136))
    {
      return 0;
    }

    result = *(*(*(a1 + 128) + 8 * Key) + 8);
    if ((~*(result + 10) & 0x180) == 0)
    {
      return 0;
    }

    v24 = *(a2 + 8);
    if (v24 >= v15 + 1)
    {
      v25 = v15 + 1;
    }

    else
    {
      v25 = *(a2 + 8);
    }

    *a3 = *a2 + v25;
    a3[1] = v24 - v25;
    v26 = *(a2 + 8);
    if (v26 >= v15)
    {
      v26 = v15;
    }

    *(a2 + 8) = v26;
    if (result)
    {
      v27 = a4 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      return result;
    }

    goto LABEL_31;
  }

  v17 = llvm::StringMapImpl::hash(v11, v5, v13, v14);
  v18 = llvm::StringMapImpl::FindKey((a1 + 128), v11, v5, v17);
  if (v18 == -1 || v18 == *(a1 + 136))
  {
    return 0;
  }

  result = *(*(*(a1 + 128) + 8 * v18) + 8);
  if (result)
  {
    v20 = a4 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
LABEL_31:
    if ((a5 & 1) == 0 && (*(result + 10) & 0x1000) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getOptionPred(unsigned int *a1, size_t a2, unsigned __int8 *a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v8 = a2;
  v10 = llvm::StringMapImpl::hash(a1, a2, a3, a4);
  Key = llvm::StringMapImpl::FindKey(a5, a1, v8, v10);
  v14 = *a5;
  v15 = Key;
  v16 = *(a5 + 2);
  if (Key == -1)
  {
    v15 = *(a5 + 2);
  }

  v17 = v14 + 8 * v15;
  if (v15 != v16)
  {
    v18 = a4(*(*v17 + 8));
    v14 = *a5;
    v16 = *(a5 + 2);
    if (!v18)
    {
      v17 = *a5 + 8 * v16;
    }
  }

  v19 = v14 + 8 * v16;
  if (v17 == v19 && v8 >= 2)
  {
    do
    {
      v23 = llvm::StringMapImpl::hash(a1, --v8, v12, v13);
      v24 = llvm::StringMapImpl::FindKey(a5, a1, v8, v23);
      v25 = *a5;
      v26 = v24;
      v27 = *(a5 + 2);
      if (v24 == -1)
      {
        v26 = *(a5 + 2);
      }

      v17 = v25 + 8 * v26;
      if (v26 != v27)
      {
        v28 = a4(*(*v17 + 8));
        v25 = *a5;
        v27 = *(a5 + 2);
        if (!v28)
        {
          v17 = *a5 + 8 * v27;
        }
      }

      v19 = v25 + 8 * v27;
    }

    while (v17 == v19 && v8 > 1);
  }

  if (v17 == v19 || !a4(*(*v17 + 8)))
  {
    return 0;
  }

  *a3 = v8;
  return *(*v17 + 8);
}

void *llvm::object_creator<anonymous namespace::CommandLineCommonOptions>::call()
{
  v0 = operator new(0x660uLL);
  bzero(v0, 0x660uLL);
  *v0 = &unk_1F5B3E850;
  v0[2] = &unk_1F5B3E850;
  *(v0 + 24) = 1;
  v0[4] = &unk_1F5B3E888;
  *(v0 + 56) = 1;
  v0[6] = &unk_1F5B3E888;
  v0[8] = v0;
  v0[9] = v0 + 4;
  v0[10] = v0 + 2;
  v0[11] = v0 + 6;
  v0[12] = "Generic Options";
  v1 = v0 + 12;
  v0[13] = 15;
  v0[14] = "";
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  v2 = *(qword_1EE17CA68 + 112);
  if (*(qword_1EE17CA68 + 120) != v2)
  {
    goto LABEL_4;
  }

  v4 = *(qword_1EE17CA68 + 132);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(qword_1EE17CA68 + 112);
    while (*v6 != v1)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    if (v4 >= *(qword_1EE17CA68 + 128))
    {
LABEL_4:
      llvm::SmallPtrSetImplBase::insert_imp_big((qword_1EE17CA68 + 112), v0 + 96);
      goto LABEL_5;
    }

    *(qword_1EE17CA68 + 132) = v4 + 1;
    *(v2 + 8 * v4) = v1;
  }

LABEL_5:
  v35 = 3;
  v36 = 1;
  v34 = (v0 + 12);
  if (!atomic_load_explicit(qword_1EE17CA98, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA98, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  v32 = qword_1EE17CA98[0];
  v33 = 0;
  llvm::cl::Option::Option((v0 + 16), 0, 0);
  v0[32] = 0;
  v0[33] = &unk_1F5B3E978;
  v0[16] = &unk_1F5B3E8C8;
  v0[34] = &unk_1F5B3E320;
  v0[35] = &unk_1F5B3E9C8;
  v0[38] = v0 + 35;
  if ((*(v0 + 139) & 0x40) != 0)
  {
    if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
    }

    v38 = "help-list";
    v39 = 9;
    v37 = (v0 + 16);
    *&v40 = qword_1EE17CA68;
    *(&v40 + 1) = &v37;
    v41 = &v38;
  }

  v0[18] = "help-list";
  v0[19] = 9;
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    v3 = qword_1EE17CA68;
    v38 = (v0 + 16);
    if ((*(v0 + 69) & 0x2000) == 0)
    {
LABEL_13:
      *&v40 = v3;
      *(&v40 + 1) = &v38;
      goto LABEL_24;
    }
  }

  else
  {
    v3 = qword_1EE17CA68;
    v38 = (v0 + 16);
    if ((*(v0 + 69) & 0x2000) == 0)
    {
      goto LABEL_13;
    }
  }

  v7 = *(v3 + 72);
  if (v7 >= *(v3 + 76))
  {
    v27 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3 + 64, (v3 + 80), v7 + 1, 8);
    v3 = v27;
    LODWORD(v7) = *(v27 + 72);
  }

  *(*(v3 + 64) + 8 * v7) = v0 + 16;
  ++*(v3 + 72);
LABEL_24:
  *(v0 + 69) |= 0x4000u;
  v35 = 3;
  v36 = 1;
  v34 = (v0 + 12);
  if (!atomic_load_explicit(qword_1EE17CA98, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA98, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  v32 = qword_1EE17CA98[0];
  v33 = 0;
  llvm::cl::Option::Option((v0 + 39), 0, 0);
  v0[55] = 0;
  v0[56] = &unk_1F5B3E978;
  v0[39] = &unk_1F5B3E8C8;
  v0[57] = &unk_1F5B3E320;
  v0[58] = &unk_1F5B3E9C8;
  v0[61] = v0 + 58;
  if ((*(v0 + 323) & 0x40) != 0)
  {
    if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
    }

    v38 = "help-list-hidden";
    v39 = 16;
    v37 = (v0 + 39);
    *&v40 = qword_1EE17CA68;
    *(&v40 + 1) = &v37;
    v41 = &v38;
  }

  v0[41] = "help-list-hidden";
  v0[42] = 16;
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    v8 = qword_1EE17CA68;
    v38 = (v0 + 39);
    if ((*(v0 + 161) & 0x2000) == 0)
    {
LABEL_32:
      *&v40 = v8;
      *(&v40 + 1) = &v38;
      goto LABEL_37;
    }
  }

  else
  {
    v8 = qword_1EE17CA68;
    v38 = (v0 + 39);
    if ((*(v0 + 161) & 0x2000) == 0)
    {
      goto LABEL_32;
    }
  }

  v9 = *(v8 + 72);
  if (v9 >= *(v8 + 76))
  {
    v28 = v8;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 64, (v8 + 80), v9 + 1, 8);
    v8 = v28;
    LODWORD(v9) = *(v28 + 72);
  }

  *(*(v8 + 64) + 8 * v9) = v0 + 39;
  ++*(v8 + 72);
LABEL_37:
  *(v0 + 161) |= 0x4000u;
  v34 = (v0 + 12);
  if (!atomic_load_explicit(qword_1EE17CA98, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA98, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  v32 = qword_1EE17CA98[0];
  v33 = 0;
  llvm::cl::Option::Option((v0 + 62), 0, 0);
  v0[78] = 0;
  v0[79] = &unk_1F5B3EAF8;
  v0[62] = &unk_1F5B3EA48;
  v0[80] = &unk_1F5B3E320;
  v0[81] = &unk_1F5B3EB48;
  v0[84] = v0 + 81;
  if ((*(v0 + 507) & 0x40) != 0)
  {
    if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
    }

    v38 = "help";
    v39 = 4;
    v37 = (v0 + 62);
    *&v40 = qword_1EE17CA68;
    *(&v40 + 1) = &v37;
    v41 = &v38;
    v11 = v0[78];
    v0[64] = "help";
    v0[65] = 4;
    v0[66] = "Display available options (--help-hidden for more)";
    v0[67] = 50;
    if (v11)
    {
      *&v40 = "cl::location(x) specified more than once!";
      v42 = 259;
      v12 = llvm::errs(v10);
      llvm::cl::Option::error(v0 + 62, &v40, 0, 0, v12);
      goto LABEL_46;
    }
  }

  else
  {
    v0[64] = "help";
    v0[65] = 4;
    v0[66] = "Display available options (--help-hidden for more)";
    v0[67] = 50;
  }

  v0[78] = v0 + 8;
LABEL_46:
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    v13 = qword_1EE17CA68;
    v38 = (v0 + 62);
    if ((*(v0 + 253) & 0x2000) == 0)
    {
LABEL_48:
      *&v40 = v13;
      *(&v40 + 1) = &v38;
      goto LABEL_53;
    }
  }

  else
  {
    v13 = qword_1EE17CA68;
    v38 = (v0 + 62);
    if ((*(v0 + 253) & 0x2000) == 0)
    {
      goto LABEL_48;
    }
  }

  v14 = *(v13 + 72);
  if (v14 >= *(v13 + 76))
  {
    v29 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 64, (v13 + 80), v14 + 1, 8);
    v13 = v29;
    LODWORD(v14) = *(v29 + 72);
  }

  *(*(v13 + 64) + 8 * v14) = v0 + 62;
  ++*(v13 + 72);
LABEL_53:
  *(v0 + 253) |= 0x4000u;
  *&v40 = "Alias for --help";
  *(&v40 + 1) = 16;
  v38 = (v0 + 62);
  LODWORD(v32) = 16;
  v15 = llvm::cl::Option::Option((v0 + 85), 0, 1);
  v0[85] = &unk_1F5B3E7D0;
  v0[101] = 0;
  llvm::cl::apply<llvm::cl::alias,char [2],llvm::cl::desc,llvm::cl::aliasopt,llvm::cl::MiscFlags>(v15, "h", &v40, &v38, &v32);
  llvm::cl::alias::done((v0 + 85));
  v34 = (v0 + 12);
  if (!atomic_load_explicit(qword_1EE17CA98, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA98, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  v32 = qword_1EE17CA98[0];
  v33 = 0;
  llvm::cl::Option::Option((v0 + 102), 0, 0);
  v0[118] = 0;
  v0[119] = &unk_1F5B3EAF8;
  v0[102] = &unk_1F5B3EA48;
  v0[120] = &unk_1F5B3E320;
  v0[121] = &unk_1F5B3EB48;
  v0[124] = v0 + 121;
  if ((*(v0 + 827) & 0x40) != 0)
  {
    if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
    }

    v38 = "help-hidden";
    v39 = 11;
    v37 = (v0 + 102);
    *&v40 = qword_1EE17CA68;
    *(&v40 + 1) = &v37;
    v41 = &v38;
    v17 = v0[118];
    v0[104] = "help-hidden";
    v0[105] = 11;
    v0[106] = "Display all available options";
    v0[107] = 29;
    if (v17)
    {
      *&v40 = "cl::location(x) specified more than once!";
      v42 = 259;
      v18 = llvm::errs(v16);
      llvm::cl::Option::error(v0 + 102, &v40, 0, 0, v18);
      goto LABEL_62;
    }
  }

  else
  {
    v0[104] = "help-hidden";
    v0[105] = 11;
    v0[106] = "Display all available options";
    v0[107] = 29;
  }

  v0[118] = v0 + 10;
LABEL_62:
  *(v0 + 413) = *(v0 + 413) & 0xFF9F | 0x20;
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    v19 = qword_1EE17CA68;
    v38 = (v0 + 102);
    if ((*(v0 + 413) & 0x2000) == 0)
    {
LABEL_64:
      *&v40 = v19;
      *(&v40 + 1) = &v38;
      goto LABEL_69;
    }
  }

  else
  {
    v19 = qword_1EE17CA68;
    v38 = (v0 + 102);
    if ((*(v0 + 413) & 0x2000) == 0)
    {
      goto LABEL_64;
    }
  }

  v20 = *(v19 + 72);
  if (v20 >= *(v19 + 76))
  {
    v30 = v19;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 64, (v19 + 80), v20 + 1, 8);
    v19 = v30;
    LODWORD(v20) = *(v30 + 72);
  }

  *(*(v19 + 64) + 8 * v20) = v0 + 102;
  ++*(v19 + 72);
LABEL_69:
  *(v0 + 413) |= 0x4000u;
  *&v40 = "Print non-default options after command line parsing";
  *(&v40 + 1) = 52;
  LODWORD(v34) = 1;
  LOBYTE(v36) = 0;
  v32 = &v36;
  v37 = (v0 + 12);
  if (!atomic_load_explicit(qword_1EE17CA98, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA98, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  v38 = qword_1EE17CA98[0];
  v39 = 0;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [14],llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::cat,llvm::cl::sub>((v0 + 125), "print-options", &v40, &v34, &v32, &v37, &v38);
  *&v40 = "Print all option values after command line parsing";
  *(&v40 + 1) = 50;
  LODWORD(v34) = 1;
  LOBYTE(v36) = 0;
  v32 = &v36;
  v37 = (v0 + 12);
  if (!atomic_load_explicit(qword_1EE17CA98, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA98, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  v38 = qword_1EE17CA98[0];
  v39 = 0;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [14],llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::cat,llvm::cl::sub>((v0 + 149), "print-all-options", &v40, &v34, &v32, &v37, &v38);
  *(v0 + 89) = 0u;
  *(v0 + 88) = 0u;
  llvm::cl::Option::Option((v0 + 181), 0, 0);
  v0[197] = 0;
  v0[198] = &unk_1F5B3EC78;
  v0[181] = &unk_1F5B3EBC8;
  v0[199] = &unk_1F5B3E320;
  v0[200] = &unk_1F5B3ECC8;
  v0[203] = v0 + 200;
  if ((*(v0 + 1459) & 0x40) != 0)
  {
    if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
    }

    v38 = "version";
    v39 = 7;
    v32 = (v0 + 181);
    *&v40 = qword_1EE17CA68;
    *(&v40 + 1) = &v32;
    v41 = &v38;
    v22 = v0[197];
    v0[183] = "version";
    v0[184] = 7;
    v0[185] = "Display the version of this program";
    v0[186] = 35;
    if (v22)
    {
      *&v40 = "cl::location(x) specified more than once!";
      v42 = 259;
      v23 = llvm::errs(v21);
      llvm::cl::Option::error(v0 + 181, &v40, 0, 0, v23);
      goto LABEL_80;
    }
  }

  else
  {
    v0[183] = "version";
    v0[184] = 7;
    v0[185] = "Display the version of this program";
    v0[186] = 35;
  }

  v0[197] = v0 + 180;
LABEL_80:
  *(v0 + 729) |= 0x18u;
  llvm::cl::Option::addCategory((v0 + 181), (v0 + 12));
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    v24 = qword_1EE17CA68;
    v38 = (v0 + 181);
    if ((*(v0 + 729) & 0x2000) == 0)
    {
LABEL_82:
      *&v40 = v24;
      *(&v40 + 1) = &v38;
      goto LABEL_87;
    }
  }

  else
  {
    v24 = qword_1EE17CA68;
    v38 = (v0 + 181);
    if ((*(v0 + 729) & 0x2000) == 0)
    {
      goto LABEL_82;
    }
  }

  v25 = *(v24 + 72);
  if (v25 >= *(v24 + 76))
  {
    v31 = v24;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v24 + 64, (v24 + 80), v25 + 1, 8);
    v24 = v31;
    LODWORD(v25) = *(v31 + 72);
  }

  *(*(v24 + 64) + 8 * v25) = v0 + 181;
  ++*(v24 + 72);
LABEL_87:
  *(v0 + 729) |= 0x4000u;
  return v0;
}

void llvm::object_deleter<anonymous namespace::CommandLineCommonOptions>::call(char *__p)
{
  if (!__p)
  {
    return;
  }

  *(__p + 181) = &unk_1F5B3EBC8;
  v2 = __p + 1600;
  v3 = *(__p + 203);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(__p + 181) = &unk_1F5B3E1D8;
    v4 = *(__p + 193);
    if (v4 != *(__p + 192))
    {
LABEL_6:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(__p + 181) = &unk_1F5B3E1D8;
    v4 = *(__p + 193);
    if (v4 != *(__p + 192))
    {
      goto LABEL_6;
    }
  }

  v5 = *(__p + 189);
  if (v5 != __p + 1528)
  {
    free(v5);
  }

  v6 = *(__p + 177);
  if (v6)
  {
    v7 = *(__p + 178);
    v8 = *(__p + 177);
    if (v7 != v6)
    {
      v9 = v7 - 32;
      do
      {
        v10 = *(v7 - 8);
        v7 -= 32;
        if (v7 == v10)
        {
          (*(*v10 + 32))(v10);
        }

        else if (v10)
        {
          (*(*v10 + 40))(v10);
        }

        v9 -= 32;
      }

      while (v7 != v6);
      v8 = *(__p + 177);
    }

    *(__p + 178) = v6;
    operator delete(v8);
  }

  v11 = *(__p + 176);
  if (v11 == __p + 1384)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  *(__p + 149) = &unk_1F5B3E720;
  v12 = *(__p + 172);
  if (v12 == __p + 1352)
  {
    (*(*v12 + 32))(v12);
    *(__p + 149) = &unk_1F5B3E1D8;
    v13 = *(__p + 161);
    if (v13 != *(__p + 160))
    {
LABEL_30:
      free(v13);
    }
  }

  else
  {
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    *(__p + 149) = &unk_1F5B3E1D8;
    v13 = *(__p + 161);
    if (v13 != *(__p + 160))
    {
      goto LABEL_30;
    }
  }

  v14 = *(__p + 157);
  if (v14 != __p + 1272)
  {
    free(v14);
  }

  *(__p + 125) = &unk_1F5B3E720;
  v15 = *(__p + 148);
  if (v15 == __p + 1160)
  {
    (*(*v15 + 32))(v15);
    *(__p + 125) = &unk_1F5B3E1D8;
    v16 = *(__p + 137);
    if (v16 != *(__p + 136))
    {
LABEL_37:
      free(v16);
    }
  }

  else
  {
    if (v15)
    {
      (*(*v15 + 40))(v15);
    }

    *(__p + 125) = &unk_1F5B3E1D8;
    v16 = *(__p + 137);
    if (v16 != *(__p + 136))
    {
      goto LABEL_37;
    }
  }

  v17 = *(__p + 133);
  if (v17 != __p + 1080)
  {
    free(v17);
  }

  *(__p + 102) = &unk_1F5B3EA48;
  v18 = *(__p + 124);
  if (v18 == __p + 968)
  {
    (*(*v18 + 32))(v18);
    *(__p + 102) = &unk_1F5B3E1D8;
    v19 = *(__p + 114);
    if (v19 != *(__p + 113))
    {
LABEL_44:
      free(v19);
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))(v18);
    }

    *(__p + 102) = &unk_1F5B3E1D8;
    v19 = *(__p + 114);
    if (v19 != *(__p + 113))
    {
      goto LABEL_44;
    }
  }

  v20 = *(__p + 110);
  if (v20 != __p + 896)
  {
    free(v20);
  }

  *(__p + 85) = &unk_1F5B3E1D8;
  v21 = *(__p + 97);
  if (v21 != *(__p + 96))
  {
    free(v21);
  }

  v22 = *(__p + 93);
  if (v22 != __p + 760)
  {
    free(v22);
  }

  *(__p + 62) = &unk_1F5B3EA48;
  v23 = *(__p + 84);
  if (v23 == __p + 648)
  {
    (*(*v23 + 32))(v23);
    *(__p + 62) = &unk_1F5B3E1D8;
    v24 = *(__p + 74);
    if (v24 != *(__p + 73))
    {
LABEL_55:
      free(v24);
    }
  }

  else
  {
    if (v23)
    {
      (*(*v23 + 40))(v23);
    }

    *(__p + 62) = &unk_1F5B3E1D8;
    v24 = *(__p + 74);
    if (v24 != *(__p + 73))
    {
      goto LABEL_55;
    }
  }

  v25 = *(__p + 70);
  if (v25 != __p + 576)
  {
    free(v25);
  }

  *(__p + 39) = &unk_1F5B3E8C8;
  v26 = *(__p + 61);
  if (v26 == __p + 464)
  {
    (*(*v26 + 32))(v26);
    *(__p + 39) = &unk_1F5B3E1D8;
    v27 = *(__p + 51);
    if (v27 != *(__p + 50))
    {
LABEL_62:
      free(v27);
    }
  }

  else
  {
    if (v26)
    {
      (*(*v26 + 40))(v26);
    }

    *(__p + 39) = &unk_1F5B3E1D8;
    v27 = *(__p + 51);
    if (v27 != *(__p + 50))
    {
      goto LABEL_62;
    }
  }

  v28 = *(__p + 47);
  if (v28 != __p + 392)
  {
    free(v28);
  }

  *(__p + 16) = &unk_1F5B3E8C8;
  v29 = *(__p + 38);
  if (v29 == __p + 280)
  {
    (*(*v29 + 32))(v29);
    *(__p + 16) = &unk_1F5B3E1D8;
    v30 = *(__p + 28);
    if (v30 == *(__p + 27))
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    *(__p + 16) = &unk_1F5B3E1D8;
    v30 = *(__p + 28);
    if (v30 == *(__p + 27))
    {
      goto LABEL_70;
    }
  }

  free(v30);
LABEL_70:
  v31 = *(__p + 24);
  if (v31 != __p + 208)
  {
    free(v31);
  }

  operator delete(__p);
}

uint64_t anonymous namespace::HelpPrinter::printOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v6 = 8;
    do
    {
      result = (*(**(*a2 + v6) + 48))(*(*a2 + v6), a3);
      v6 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

void anonymous namespace::CategorizedHelpPrinter::printOptions(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v88 = 0;
  v89 = 0;
  v90 = 0;
  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    v4 = a3;
    a3 = v4;
  }

  v83 = a3;
  v5 = *(qword_1EE17CA68 + 120);
  v6 = 16;
  if (v5 == *(qword_1EE17CA68 + 112))
  {
    v6 = 20;
  }

  v7 = *(qword_1EE17CA68 + 112 + v6);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *(qword_1EE17CA68 + 120);
    while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v9 = *(qword_1EE17CA68 + 120);
  }

  v10 = (v5 + 8 * v7);
  if (v9 == v10)
  {
LABEL_32:
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *v9;
      if (v12 >= v13)
      {
        v15 = v12 - v11;
        v16 = (v12 - v11) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if ((v13 - v11) >> 2 > v17)
        {
          v17 = (v13 - v11) >> 2;
        }

        if ((v13 - v11) >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        if (v18)
        {
          if (v18 >> 61)
          {
LABEL_130:
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v19 = v11;
          v20 = operator new(8 * v18);
          v11 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * v16];
        v13 = &v20[8 * v18];
        *v21 = v14;
        v12 = v21 + 8;
        v22 = v11;
        memcpy(v20, v11, v15);
        if (v22)
        {
          operator delete(v22);
        }

        v11 = v20;
      }

      else
      {
        *v12 = v14;
        v12 += 8;
      }

      do
      {
        ++v9;
      }

      while (v9 != v10 && *v9 >= 0xFFFFFFFFFFFFFFFELL);
    }

    while (v9 != v10);
  }

  __base = v11;
  v86 = v12;
  v23 = (v12 - v11) >> 3;
  if (v23 >= 2)
  {
  }

  v84 = *(a2 + 8);
  if (v84)
  {
    v24 = 0;
    while (1)
    {
      v25 = *(*a2 + 16 * v24 + 8);
      v26 = *(v25 + 72);
      if (v26)
      {
        break;
      }

LABEL_37:
      if (++v24 == v84)
      {
        goto LABEL_92;
      }
    }

    v27 = *(v25 + 64);
    v28 = &v27[v26];
    while (1)
    {
      v30 = v90;
      if (!v90)
      {
        break;
      }

      v31 = ((*v27 >> 4) ^ (*v27 >> 9)) & (v90 - 1);
      v32 = (v88 + 32 * v31);
      v33 = *v32;
      if (*v27 == *v32)
      {
        goto LABEL_58;
      }

      v34 = 0;
      v35 = 1;
      while (v33 != -4096)
      {
        if (v34)
        {
          v36 = 0;
        }

        else
        {
          v36 = v33 == -8192;
        }

        if (v36)
        {
          v34 = v32;
        }

        v37 = v31 + v35++;
        v31 = v37 & (v90 - 1);
        v32 = (v88 + 32 * v31);
        v33 = *v32;
        if (*v27 == *v32)
        {
          goto LABEL_58;
        }
      }

      if (v34)
      {
        v32 = v34;
      }

      if (4 * v89 + 4 >= 3 * v90)
      {
        break;
      }

      if (v90 + ~v89 - HIDWORD(v89) <= v90 >> 3)
      {
        goto LABEL_75;
      }

      LODWORD(v89) = v89 + 1;
      if (*v32 != -4096)
      {
        goto LABEL_56;
      }

LABEL_57:
      *v32 = *v27;
      v32[1] = 0;
      v32[2] = 0;
      v32[3] = 0;
LABEL_58:
      v39 = v32[2];
      v38 = v32[3];
      if (v39 < v38)
      {
        *v39 = v25;
        v29 = v39 + 8;
      }

      else
      {
        v40 = v32[1];
        v41 = v39 - v40;
        v42 = (v39 - v40) >> 3;
        v43 = v42 + 1;
        if ((v42 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v44 = v38 - v40;
        if (v44 >> 2 > v43)
        {
          v43 = v44 >> 2;
        }

        if (v44 >= 0x7FFFFFFFFFFFFFF8)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v43;
        }

        if (v45)
        {
          if (v45 >> 61)
          {
            goto LABEL_130;
          }

          v46 = operator new(8 * v45);
        }

        else
        {
          v46 = 0;
        }

        v47 = &v46[8 * v42];
        *v47 = v25;
        v29 = v47 + 8;
        memcpy(v46, v40, v41);
        v32[1] = v46;
        v32[2] = v29;
        v32[3] = &v46[8 * v45];
        if (v40)
        {
          operator delete(v40);
        }
      }

      v32[2] = v29;
      if (++v27 == v28)
      {
        goto LABEL_37;
      }
    }

    v30 = 2 * v90;
LABEL_75:
    llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(&v88, v30);
    if (v90)
    {
      v48 = ((*v27 >> 4) ^ (*v27 >> 9)) & (v90 - 1);
      v32 = (v88 + 32 * v48);
      v49 = *v32;
      if (*v27 != *v32)
      {
        v50 = 0;
        v51 = 1;
        while (v49 != -4096)
        {
          if (v50)
          {
            v52 = 0;
          }

          else
          {
            v52 = v49 == -8192;
          }

          if (v52)
          {
            v50 = v32;
          }

          v53 = v48 + v51++;
          v48 = v53 & (v90 - 1);
          v32 = (v88 + 32 * v48);
          v49 = *v32;
          if (*v27 == *v32)
          {
            goto LABEL_87;
          }
        }

        if (v50)
        {
          v32 = v50;
        }
      }
    }

    else
    {
      v32 = 0;
    }

LABEL_87:
    LODWORD(v89) = v89 + 1;
    if (*v32 == -4096)
    {
      goto LABEL_57;
    }

LABEL_56:
    --HIDWORD(v89);
    goto LABEL_57;
  }

LABEL_92:
  if (__base == v86)
  {
LABEL_121:
    if (v90)
    {
      v79 = (v88 + 16);
      v80 = 32 * v90;
      while (1)
      {
        if ((*(v79 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v81 = *(v79 - 1);
          if (v81)
          {
            *v79 = v81;
            operator delete(v81);
          }
        }

        v79 += 4;
        v80 -= 32;
        if (!v80)
        {
          llvm::deallocate_buffer(v88, (32 * v90));
        }
      }
    }

    llvm::deallocate_buffer(v88, 0);
  }

  v54 = __base;
  while (1)
  {
    v87 = *v54;
    v55 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](&v88, &v87);
    if (*v55 == *(v55 + 1))
    {
      goto LABEL_94;
    }

    v56 = v55;
    v57 = llvm::outs(v55);
    v58 = *(v57 + 4);
    if (*(v57 + 3) == v58)
    {
      v57 = llvm::raw_ostream::write(v57, "\n", 1uLL);
    }

    else
    {
      *v58 = 10;
      ++*(v57 + 4);
    }

    v59 = llvm::outs(v57);
    v60 = *v87;
    v61 = *(v87 + 8);
    v62 = v59[4];
    if (v61 <= v59[3] - v62)
    {
      if (v61)
      {
        v63 = v59;
        v64 = *(v87 + 8);
        memcpy(v59[4], v60, v61);
        v59 = v63;
        v62 = (v63[4] + v64);
        v63[4] = v62;
      }
    }

    else
    {
      v59 = llvm::raw_ostream::write(v59, v60, v61);
      v62 = v59[4];
    }

    if (v59[3] - v62 > 1uLL)
    {
      *v62 = 2618;
      v59[4] += 2;
      v71 = *(v87 + 24);
      v67 = llvm::outs(v59);
      if (v71)
      {
LABEL_105:
        v68 = *(v87 + 16);
        v69 = *(v87 + 24);
        v70 = v67[4];
        if (v69 <= v67[3] - v70)
        {
          if (v69)
          {
            v76 = v67;
            v77 = *(v87 + 24);
            memcpy(v67[4], v68, v69);
            v67 = v76;
            v70 = (v76[4] + v77);
            v76[4] = v70;
          }
        }

        else
        {
          v67 = llvm::raw_ostream::write(v67, v68, v69);
          v70 = v67[4];
        }

        v73 = v83;
        if (v67[3] - v70 > 1uLL)
        {
          *v70 = 2570;
          v67[4] += 2;
          v75 = *v56;
          v74 = *(v56 + 1);
          if (v75 != v74)
          {
            goto LABEL_119;
          }
        }

        else
        {
          llvm::raw_ostream::write(v67, "\n\n", 2uLL);
          v75 = *v56;
          v74 = *(v56 + 1);
          if (v75 != v74)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_94;
      }
    }

    else
    {
      v65 = llvm::raw_ostream::write(v59, ":\n", 2uLL);
      v66 = *(v87 + 24);
      v67 = llvm::outs(v65);
      if (v66)
      {
        goto LABEL_105;
      }
    }

    v72 = v67[4];
    if (v67[3] == v72)
    {
      llvm::raw_ostream::write(v67, "\n", 1uLL);
      v73 = v83;
      v75 = *v56;
      v74 = *(v56 + 1);
      while (v75 != v74)
      {
LABEL_119:
        v78 = *v75++;
        (*(*v78 + 48))(v78, v73);
      }
    }

    else
    {
      *v72 = 10;
      ++v67[4];
      v73 = v83;
      v75 = *v56;
      v74 = *(v56 + 1);
      if (v75 != v74)
      {
        goto LABEL_119;
      }
    }

LABEL_94:
    v54 += 8;
    if (v54 == v86)
    {
      goto LABEL_121;
    }
  }
}

uint64_t anonymous namespace::CategorizedHelpPrinter::OptionCategoryCompare(const void ***a1, const void ***a2)
{
  v2 = (*a1)[1];
  v3 = (*a2)[1];
  if (v3 >= v2)
  {
    v4 = (*a1)[1];
  }

  else
  {
    v4 = (*a2)[1];
  }

  if (v4)
  {
    v5 = memcmp(**a1, **a2, v4);
    if (v5)
    {
      return (v5 >> 31) | 1u;
    }
  }

  if (v2 < v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t llvm::cl::Option::Option(uint64_t result, char a2, char a3)
{
  *result = &unk_1F5B3E1D8;
  *(result + 8) = 0;
  *(result + 10) = a2 & 7 | (32 * (a3 & 3)) | *(result + 10) & 0x8000;
  v3 = (result + 80);
  *(result + 64) = result + 80;
  v4 = result + 64;
  *(result + 12) = 0u;
  *(result + 28) = 0u;
  *(result + 44) = 0u;
  *(result + 60) = 0;
  *(result + 72) = 0x100000000;
  *(result + 88) = result + 120;
  *(result + 96) = result + 120;
  *(result + 104) = 1;
  *(result + 112) = 0;
  if ((atomic_load_explicit(_MergedGlobals_50, memory_order_acquire) & 1) == 0)
  {
    v8 = result;
    v9 = result + 64;
    v6 = (result + 80);
    llvm::cl::Option::addCategory();
    result = v8;
    v4 = v9;
    v3 = v6;
    v5 = *(v8 + 72);
    if (v5 < *(v8 + 76))
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, v3, v5 + 1, 8);
    result = v7;
    LODWORD(v5) = *(v7 + 72);
    goto LABEL_3;
  }

  v5 = *(result + 72);
  if (v5 >= *(result + 76))
  {
    goto LABEL_5;
  }

LABEL_3:
  *(*(result + 64) + 8 * v5) = &unk_1EE17CAC8;
  ++*(result + 72);
  return result;
}

uint64_t llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    if (v11 == 1)
    {
      exit(0);
    }

    v9 = result;
    *(a1 + 12) = a2;
    v10 = *(a1 + 176);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }
  }

  return result;
}

void *llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_1F5B3E8C8;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::~opt(char *__p)
{
  *__p = &unk_1F5B3E8C8;
  v2 = __p + 152;
  v3 = *(__p + 22);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

uint64_t llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 144) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void *std::__function::__func<llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B3E9C8;
  return result;
}

uint64_t std::__function::__func<llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4llvm2cl3optIN12_GLOBAL__N_111HelpPrinterELb1ENS0_6parserIbEEEUlRKbE_E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4llvm2cl3optIN12_GLOBAL__N_111HelpPrinterELb1ENS0_6parserIbEEEUlRKbE_E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4llvm2cl3optIN12_GLOBAL__N_111HelpPrinterELb1ENS0_6parserIbEEEUlRKbE_E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4llvm2cl3optIN12_GLOBAL__N_111HelpPrinterELb1ENS0_6parserIbEEEUlRKbE_E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

llvm::SmallPtrSetImplBase *llvm::cl::apply<llvm::cl::opt<anonymous namespace::HelpPrinter,true,llvm::cl::parser<BOOL>>,llvm::cl::desc,llvm::cl::LocationClass<anonymous namespace::HelpPrinter>,llvm::cl::OptionHidden,llvm::cl::ValueExpected,llvm::cl::cat,llvm::cl::sub>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, _WORD *a6, llvm::cl::OptionCategory **a7, uint64_t a8)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  if (*(a1 + 128))
  {
    v30 = "cl::location(x) specified more than once!";
    v31 = 259;
    v13 = llvm::errs(a1);
    llvm::cl::Option::error(a1, &v30, 0, 0, v13);
  }

  else
  {
    *(a1 + 128) = a4;
  }

  v14 = *(a1 + 10) & 0xFF9F | (32 * (*a5 & 3));
  *(a1 + 10) = v14;
  *(a1 + 10) = (8 * (*a6 & 3)) | v14 & 0xFFE7;
  result = llvm::cl::Option::addCategory(a1, *a7);
  v16 = *a8;
  if (!*a8)
  {
    v18 = *(a8 + 8);
    if (!v18)
    {
      return result;
    }

    v19 = *(v18 + 8);
    if (!v19)
    {
      return result;
    }

    v20 = *v18;
    v21 = *v18 + 8 * v19;
    while (1)
    {
      v22 = *v20;
      v23 = *(a1 + 88);
      if (*(a1 + 96) != v23)
      {
        goto LABEL_11;
      }

      v24 = *(a1 + 108);
      if (v24)
      {
        v25 = 8 * v24;
        v26 = *(a1 + 88);
        while (*v26 != v22)
        {
          ++v26;
          v25 -= 8;
          if (!v25)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_12;
      }

LABEL_18:
      if (v24 < *(a1 + 104))
      {
        *(a1 + 108) = v24 + 1;
        *(v23 + 8 * v24) = v22;
      }

      else
      {
LABEL_11:
        result = llvm::SmallPtrSetImplBase::insert_imp_big((a1 + 88), v22);
      }

LABEL_12:
      if (++v20 == v21)
      {
        return result;
      }
    }
  }

  v17 = *(a1 + 88);
  result = (a1 + 88);
  if (*(a1 + 96) != v17)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v16);
  }

  v27 = *(a1 + 108);
  if (!v27)
  {
LABEL_24:
    if (v27 < *(a1 + 104))
    {
      *(a1 + 108) = v27 + 1;
      *(v17 + 8 * v27) = v16;
      return result;
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v16);
  }

  v28 = 8 * v27;
  v29 = *(a1 + 88);
  while (*v29 != v16)
  {
    ++v29;
    v28 -= 8;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::handleOccurrence(llvm *a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v7 = a1;
  v11 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    if (v11 == 1)
    {
      v7 = *(v7 + 16);
      if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
      {
      }

      if ((*(qword_1EE17CA68 + 132) - *(qword_1EE17CA68 + 136)) >= 2)
      {
        if (!atomic_load_explicit(qword_1EE17CAB0, memory_order_acquire))
        {
        }

        *(qword_1EE17CAB0[0] + 138) &= 0xFF9Fu;
        exit(0);
      }
    }

    else
    {
      v9 = result;
      *(v7 + 6) = a2;
      v10 = *(v7 + 22);
      if (v10)
      {
        (*(*v10 + 48))(v10, &v11);
        return v9;
      }

      std::__throw_bad_function_call[abi:nn200100]();
    }

    exit(0);
  }

  return result;
}

void *llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_1F5B3EA48;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::~opt(char *__p)
{
  *__p = &unk_1F5B3EA48;
  v2 = __p + 152;
  v3 = *(__p + 22);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

uint64_t llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 144) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void *std::__function::__func<llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B3EB48;
  return result;
}

uint64_t std::__function::__func<llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4llvm2cl3optIN12_GLOBAL__N_118HelpPrinterWrapperELb1ENS0_6parserIbEEEUlRKbE_E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4llvm2cl3optIN12_GLOBAL__N_118HelpPrinterWrapperELb1ENS0_6parserIbEEEUlRKbE_E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4llvm2cl3optIN12_GLOBAL__N_118HelpPrinterWrapperELb1ENS0_6parserIbEEEUlRKbE_E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4llvm2cl3optIN12_GLOBAL__N_118HelpPrinterWrapperELb1ENS0_6parserIbEEEUlRKbE_E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

llvm::SmallPtrSetImplBase *llvm::cl::apply<llvm::cl::opt<anonymous namespace::HelpPrinterWrapper,true,llvm::cl::parser<BOOL>>,llvm::cl::ValueExpected,llvm::cl::cat,llvm::cl::sub>(uint64_t a1, char a2, llvm::cl::OptionCategory **a3, uint64_t a4)
{
  *(a1 + 10) = *(a1 + 10) & 0xFFE7 | (8 * (a2 & 3));
  result = llvm::cl::Option::addCategory(a1, *a3);
  v7 = *a4;
  if (!*a4)
  {
    v9 = *(a4 + 8);
    if (!v9)
    {
      return result;
    }

    v10 = *(v9 + 8);
    if (!v10)
    {
      return result;
    }

    v11 = *v9;
    v12 = *v9 + 8 * v10;
    while (1)
    {
      v13 = *v11;
      v14 = *(a1 + 88);
      if (*(a1 + 96) != v14)
      {
        goto LABEL_9;
      }

      v15 = *(a1 + 108);
      if (v15)
      {
        v16 = 8 * v15;
        v17 = *(a1 + 88);
        while (*v17 != v13)
        {
          ++v17;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_10;
      }

LABEL_16:
      if (v15 < *(a1 + 104))
      {
        *(a1 + 108) = v15 + 1;
        *(v14 + 8 * v15) = v13;
      }

      else
      {
LABEL_9:
        result = llvm::SmallPtrSetImplBase::insert_imp_big((a1 + 88), v13);
      }

LABEL_10:
      if (++v11 == v12)
      {
        return result;
      }
    }
  }

  v8 = *(a1 + 88);
  result = (a1 + 88);
  if (*(a1 + 96) != v8)
  {
LABEL_3:

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v7);
  }

  v18 = *(a1 + 108);
  if (!v18)
  {
LABEL_22:
    if (v18 < *(a1 + 104))
    {
      *(a1 + 108) = v18 + 1;
      *(v8 + 8 * v18) = v7;
      return result;
    }

    goto LABEL_3;
  }

  v19 = 8 * v18;
  v20 = *(a1 + 88);
  while (*v20 != v7)
  {
    ++v20;
    v19 -= 8;
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  return result;
}

llvm *llvm::cl::apply<llvm::cl::alias,char [2],llvm::cl::desc,llvm::cl::aliasopt,llvm::cl::MiscFlags>(uint64_t a1, char *__s, _OWORD *a3, uint64_t *a4, _WORD *a5)
{
  result = strlen(__s);
  v11 = result;
  if ((*(a1 + 10) & 0x4000) == 0)
  {
    *(a1 + 16) = __s;
    *(a1 + 24) = result;
    if (result != 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a1 + 10) |= 0x1000u;
    *(a1 + 32) = *a3;
    v12 = *a4;
    if (!*(a1 + 128))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
  }

  v15[0] = __s;
  v15[1] = v11;
  v14 = a1;
  v16[0] = qword_1EE17CA68;
  v16[1] = &v14;
  v16[2] = v15;
  *(a1 + 16) = __s;
  *(a1 + 24) = v11;
  if (v11 == 1)
  {
    goto LABEL_9;
  }

LABEL_3:
  *(a1 + 32) = *a3;
  v12 = *a4;
  if (*(a1 + 128))
  {
LABEL_4:
    v16[0] = "cl::alias must only have one cl::aliasopt(...) specified!";
    v17 = 259;
    v13 = llvm::errs(result);
    result = llvm::cl::Option::error(a1, v16, 0, 0, v13);
  }

LABEL_5:
  *(a1 + 128) = v12;
  *(a1 + 10) |= (*a5 & 0x1F) << 9;
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [14],llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::cat,llvm::cl::sub>(uint64_t a1, char *a2, _OWORD *a3, _WORD *a4, _BYTE **a5, llvm::cl::OptionCategory **a6, char **a7)
{
  v14 = llvm::cl::Option::Option(a1, 0, 0);
  *(v14 + 128) = 0;
  *(v14 + 136) = &unk_1F5AFB2B0;
  *(v14 + 144) = 0;
  *v14 = &unk_1F5B3E720;
  *(v14 + 152) = &unk_1F5B3E320;
  *(v14 + 160) = &unk_1F5AFB2D0;
  *(v14 + 184) = v14 + 160;
  llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [14],llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::cat,llvm::cl::sub>(v14, a2, a3, a4, a5, a6, a7);
  if (atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
  {
    v15 = qword_1EE17CA68;
    v20 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
LABEL_3:
      v19[0] = v15;
      v19[1] = &v20;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = qword_1EE17CA68;
    v20 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v16 = *(v15 + 72);
  if (v16 >= *(v15 + 76))
  {
    v18 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 64, (v15 + 80), v16 + 1, 8);
    v15 = v18;
    LODWORD(v16) = *(v18 + 72);
  }

  *(*(v15 + 64) + 8 * v16) = a1;
  ++*(v15 + 72);
LABEL_8:
  *(a1 + 10) |= 0x4000u;
  return a1;
}

char **llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [14],llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::cat,llvm::cl::sub>(uint64_t a1, char *__s, _OWORD *a3, _WORD *a4, _BYTE **a5, llvm::cl::OptionCategory **a6, char **a7)
{
  v14 = strlen(__s);
  v15 = *(a1 + 10);
  if ((v15 & 0x4000) != 0)
  {
    if (!atomic_load_explicit(&qword_1EE17CA68, memory_order_acquire))
    {
    }

    v20[0] = __s;
    v20[1] = v14;
    v18[0] = qword_1EE17CA68;
    v18[1] = &v19;
    v18[2] = v20;
    v19 = a1;
    v15 = *(a1 + 10);
  }

  *(a1 + 16) = __s;
  *(a1 + 24) = v14;
  if (v14 == 1)
  {
    v15 |= 0x1000u;
    *(a1 + 10) = v15;
  }

  *(a1 + 32) = *a3;
  *(a1 + 10) = (32 * (*a4 & 3)) | v15 & 0xFF9F;
  v16 = *a5;
  *(a1 + 128) = **a5;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v16;
  llvm::cl::Option::addCategory(a1, *a6);
  return llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a7, a1);
}

uint64_t llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::handleOccurrence(atomic_ullong *a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v7 = a1;
  v13 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v13);
  if ((result & 1) == 0)
  {
    if (v13 == 1)
    {
      v7 = qword_1EE17CAB0;
      if (atomic_load_explicit(qword_1EE17CAB0, memory_order_acquire))
      {
        v11 = *(qword_1EE17CAB0[0] + 1408);
        if (!atomic_load_explicit(qword_1EE17CAB0, memory_order_acquire))
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v9 = result;
      *(v7 + 6) = a2;
      v10 = v7[22];
      if (v10)
      {
        (*(*v10 + 48))(v10, &v13);
        return v9;
      }

      std::__throw_bad_function_call[abi:nn200100]();
    }

    v11 = *(*v7 + 1408);
    if (!atomic_load_explicit(v7, memory_order_acquire))
    {
LABEL_12:
      v12 = qword_1EE17CAB0[0];
      if (v11)
      {
LABEL_13:
        llvm::outs(result);
        std::function<void ()(llvm::raw_ostream &)>::operator()(v12 + 1384);
        exit(0);
      }

LABEL_9:
      std::vector<std::function<void ()(llvm::raw_ostream &)>>::vector[abi:nn200100](v14, (v12 + 1416));
      std::vector<std::function<void ()(llvm::raw_ostream &)>>::~vector[abi:nn200100](v14);
      exit(0);
    }

LABEL_8:
    v12 = qword_1EE17CAB0[0];
    if (v11)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  return result;
}

void *llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_1F5B3EBC8;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::~opt(char *__p)
{
  *__p = &unk_1F5B3EBC8;
  v2 = __p + 152;
  v3 = *(__p + 22);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

uint64_t llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 144) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void *std::__function::__func<llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B3ECC8;
  return result;
}

uint64_t std::__function::__func<llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<anonymous namespace::VersionPrinter,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4llvm2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEEUlRKbE_E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4llvm2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEEUlRKbE_E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4llvm2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEEUlRKbE_E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4llvm2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEEUlRKbE_E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::function<void ()(llvm::raw_ostream &)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    v3();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    sortOpts(v4, v5, v6, v7);
  }
}

void sortOpts(void *a1, int a2, uint64_t a3, int a4)
{
  v28 = v32;
  v29 = v32;
  v30 = 32;
  v31 = 0;
  v6 = a1;
  if (a2)
  {
    v6 = a1;
    if (!*a1 || *a1 == -8)
    {
      do
      {
        v9 = v6[1];
        ++v6;
        v8 = v9;
        if (v9)
        {
          v10 = v8 == -8;
        }

        else
        {
          v10 = 1;
        }
      }

      while (v10);
    }
  }

  v11 = &a1[a2];
  if (v6 != v11)
  {
    v12 = *v6;
    while (1)
    {
      v13 = *(v12 + 8);
      v14 = (*(v13 + 10) >> 5) & 3;
      if (v14 == 1)
      {
        v15 = a4;
      }

      else
      {
        v15 = 1;
      }

      if (v14 == 2 || v15 == 0)
      {
        goto LABEL_24;
      }

      if (v29 == v28)
      {
        v24 = HIDWORD(v30);
        if (HIDWORD(v30))
        {
          v25 = 8 * HIDWORD(v30);
          v26 = v28;
          while (*v26 != v13)
          {
            ++v26;
            v25 -= 8;
            if (!v25)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_24;
        }

LABEL_34:
        if (HIDWORD(v30) < v30)
        {
          break;
        }
      }

      llvm::SmallPtrSetImplBase::insert_imp_big(&v28, v13);
      if (v17)
      {
        v18 = *v6;
        v19 = *(*v6 + 8);
        v20 = *(a3 + 8);
        if (v20 < *(a3 + 12))
        {
LABEL_23:
          v21 = (*a3 + 16 * v20);
          *v21 = v18 + 16;
          v21[1] = v19;
          ++*(a3 + 8);
          goto LABEL_24;
        }

LABEL_36:
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v20 + 1, 16);
        v20 = *(a3 + 8);
        goto LABEL_23;
      }

      do
      {
LABEL_24:
        v22 = v6[1];
        ++v6;
        v12 = v22;
        if (v22)
        {
          v23 = v12 == -8;
        }

        else
        {
          v23 = 1;
        }
      }

      while (v23);
      if (v6 == v11)
      {
        goto LABEL_37;
      }
    }

    ++HIDWORD(v30);
    *&v28[8 * v24] = v13;
    v18 = *v6;
    v19 = *(*v6 + 8);
    v20 = *(a3 + 8);
    if (v20 < *(a3 + 12))
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_37:
  v27 = *(a3 + 8);
  if (v27 >= 2)
  {
    qsort(*a3, v27, 0x10uLL, OptNameCompare);
  }

  if (v29 != v28)
  {
    free(v29);
  }
}

_OWORD *llvm::object_creator<anonymous namespace::CommandLineParser>::call()
{
  v0 = operator new(0x158uLL);
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  *(v0 + 8) = v0 + 5;
  *(v0 + 9) = 0x400000000;
  *(v0 + 14) = v0 + 9;
  *(v0 + 15) = v0 + 9;
  *(v0 + 16) = 16;
  *(v0 + 34) = 0;
  *(v0 + 34) = v0 + 19;
  *(v0 + 35) = v0 + 19;
  *(v0 + 36) = 4;
  *(v0 + 74) = 0;
  *(v0 + 42) = 0;
  if (!atomic_load_explicit(qword_1EE17CA80, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17CA80, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  return v0;
}

void llvm::object_deleter<anonymous namespace::CommandLineParser>::call(void **__p)
{
  if (__p)
  {
    v2 = __p[35];
    if (v2 != __p[34])
    {
      free(v2);
    }

    v3 = __p[15];
    if (v3 != __p[14])
    {
      free(v3);
    }

    v4 = __p[8];
    if (v4 != __p + 10)
    {
      free(v4);
    }

    v5 = __p[5];
    if (v5)
    {
      __p[6] = v5;
      operator delete(v5);
    }

    if (*(__p + 23) < 0)
    {
      operator delete(*__p);
      v6 = __p;
    }

    else
    {
      v6 = __p;
    }

    operator delete(v6);
  }
}

double llvm::object_creator<llvm::cl::SubCommand>::call()
{
  v0 = operator new(0xA0uLL);
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[7] = 0u;
  *(v0 + 4) = v0 + 3;
  *(v0 + 11) = 4;
  *(v0 + 10) = v0 + 6;
  *(v0 + 23) = 4;
  *(v0 + 16) = 0;
  *(v0 + 17) = 0;
  *(v0 + 18) = 0x1000000000;
  *(v0 + 19) = 0;
  return result;
}

void llvm::object_deleter<llvm::cl::SubCommand>::call(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    if (*(a1 + 140))
    {
      v5 = *(a1 + 136);
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = *(*(a1 + 128) + v6);
          if (v7 != -8 && v7 != 0)
          {
            llvm::deallocate_buffer(v7, (*v7 + 17));
          }

          v6 += 8;
        }

        while (8 * v5 != v6);
      }
    }

    free(*(a1 + 128));
    v9 = *(a1 + 80);
    if (v9 != (a1 + 96))
    {
      free(v9);
    }

    v10 = *(a1 + 32);
    if (v10 != (a1 + 48))
    {
      free(v10);
    }

    operator delete(a1);
  }
}

void llvm::SmallVectorTemplateBase<llvm::cl::ExpansionContext::expandResponseFiles(llvm::SmallVectorImpl<char const*> &)::ResponseFileRecord,false>::grow(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v17);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[32 * v6];
    v8 = v4;
    do
    {
      v9 = *v5;
      v8[2] = *(v5 + 2);
      *v8 = v9;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = 0;
      v8[3] = *(v5 + 3);
      v8 += 4;
      v5 += 32;
    }

    while (v5 != v7);
    v5 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 32 * v10;
      v12 = &v5[32 * v10 - 9];
      v13 = -v11;
      v14 = v12;
      do
      {
        v15 = *v14;
        v14 -= 32;
        if (v15 < 0)
        {
          operator delete(*(v12 - 23));
        }

        v12 = v14;
        v13 += 32;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

char *OUTLINED_FUNCTION_0_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return llvm::cl::OptionCategory::OptionCategory((v4 + 104), a2, 15, a4, 0);
}

uint64_t llvm::ConvertUTF16toUTF8(unint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 >= a2)
  {
    *a1 = v5;
    *a3 = v6;
    return 0;
  }

  if (a5)
  {
    v7 = *a1;
    while (1)
    {
      v10 = *v7++;
      v9 = v10;
      if ((v10 & 0xFC00) == 0xD800)
      {
        if (v7 >= a2)
        {
          goto LABEL_54;
        }

        v11 = *v7;
        v12 = (v11 & 0xFC00) == 56320;
        v13 = (v9 << 10) - 56613888 + v11;
        if (v12)
        {
          v9 = v13;
        }

        if (v12)
        {
          v7 = (v5 + 4);
        }
      }

      if (v9 < 0x10000)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      if (v9 < 0x800)
      {
        v14 = 2;
      }

      if (v9 < 0x80)
      {
        v14 = 1;
      }

      v8 = v6 + v14;
      if (v8 > a4)
      {
        goto LABEL_52;
      }

      if (v14 > 2u)
      {
        if (v14 != 3)
        {
          *--v8 = v9 & 0x3F | 0x80;
          v9 >>= 6;
        }

        *--v8 = v9 & 0x3F | 0x80;
        v9 >>= 6;
      }

      else if (v14 == 1)
      {
        goto LABEL_6;
      }

      *--v8 = v9 & 0x3F | 0x80;
      v9 >>= 6;
LABEL_6:
      *(v8 - 1) = llvm::firstByteMark[v14] | v9;
      v6 = v8 - 1 + v14;
      v5 = v7;
      if (v7 >= a2)
      {
        *a1 = v7;
        *a3 = v6;
        return 0;
      }
    }
  }

  v16 = *a1;
  do
  {
    v19 = *v16++;
    v18 = v19;
    v20 = v19 & 0xFC00;
    if (v20 == 55296)
    {
      if (v16 >= a2)
      {
LABEL_54:
        *a1 = v5;
        *a3 = v6;
        return 1;
      }

      v21 = *v16;
      if ((v21 & 0xFC00) != 0xDC00)
      {
LABEL_55:
        *a1 = v5;
        *a3 = v6;
        return 3;
      }

      v18 = (v18 << 10) - 56613888 + v21;
      v16 = (v5 + 4);
    }

    else if (v20 == 56320)
    {
      goto LABEL_55;
    }

    if (v18 < 0x10000)
    {
      v22 = 3;
    }

    else
    {
      v22 = 4;
    }

    if (v18 < 0x800)
    {
      v22 = 2;
    }

    if (v18 < 0x80)
    {
      v22 = 1;
    }

    v17 = v6 + v22;
    if (v17 > a4)
    {
LABEL_52:
      *a1 = v5;
      *a3 = v6;
      return 2;
    }

    if (v22 > 2u)
    {
      if (v22 != 3)
      {
        *--v17 = v18 & 0x3F | 0x80;
        v18 >>= 6;
      }

      *--v17 = v18 & 0x3F | 0x80;
      v18 >>= 6;
LABEL_31:
      *--v17 = v18 & 0x3F | 0x80;
      v18 >>= 6;
      goto LABEL_32;
    }

    if (v22 != 1)
    {
      goto LABEL_31;
    }

LABEL_32:
    *(v17 - 1) = llvm::firstByteMark[v22] | v18;
    v6 = v17 - 1 + v22;
    v5 = v16;
  }

  while (v16 < a2);
  *a1 = v16;
  *a3 = v6;
  return 0;
}

BOOL llvm::hasUTF16ByteOrderMark(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v2 = *a1;
  if (v2 != 255)
  {
    if (v2 == 254)
    {
      return a1[1] == 255;
    }

    return 0;
  }

  return a1[1] == 254;
}

BOOL llvm::convertUTF16ToUTF8String(char *__src, uint64_t a2, std::string *this)
{
  if (a2)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = __src;
  v28 = 0;
  v29 = __src;
  v5 = &__src[a2];
  __p = 0;
  v27 = 0;
  v6 = *__src;
  if (v6 == 65534)
  {
    v7 = a2;
    std::vector<unsigned short>::__insert_with_size[abi:nn200100]<unsigned short const*,unsigned short const*>(&__p, 0, __src, v5, a2 >> 1);
    v4 = __p;
    v5 = v27;
    if (__p == v27)
    {
LABEL_20:
      v29 = v4;
      v6 = *v4;
      a2 = v7;
      goto LABEL_21;
    }

    v8 = v27 - __p - 2;
    v9 = __p;
    if (v8 >= 6)
    {
      v10 = (v8 >> 1) + 1;
      if (v8 < 0x1E)
      {
        v11 = 0;
        goto LABEL_14;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFF0;
      v13 = (__p + 16);
      v14 = v10 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v15 = vrev16q_s8(*v13);
        v13[-1] = vrev16q_s8(v13[-1]);
        *v13 = v15;
        v13 += 2;
        v14 -= 16;
      }

      while (v14);
      if (v10 == v11)
      {
        goto LABEL_20;
      }

      if ((v10 & 0xC) != 0)
      {
LABEL_14:
        v9 = &v4[2 * (v10 & 0xFFFFFFFFFFFFFFFCLL)];
        v16 = &v4[2 * v11];
        v17 = v11 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          *v16 = vrev16_s8(*v16);
          ++v16;
          v17 += 4;
        }

        while (v17);
        if (v10 == (v10 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v9 = &v4[2 * v11];
    }

    do
    {
LABEL_19:
      *v9 = bswap32(*v9) >> 16;
      v9 += 2;
    }

    while (v9 != v5);
    goto LABEL_20;
  }

LABEL_21:
  if (v6 == 65279)
  {
    v29 = v4 + 2;
  }

  std::string::resize(this, (4 * a2) | 1, 0);
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v19 = this;
  }

  else
  {
    v19 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v25 = v19;
  v20 = llvm::ConvertUTF16toUTF8(&v29, v5, &v25, v19 + size, 0);
  result = v20 == 0;
  if (v20)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = this;
    }

    else
    {
      v21 = this->__r_.__value_.__r.__words[0];
    }

    std::string::resize(this, v25 - v21, 0);
    std::string::push_back(this, 0);
    v22 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v22 < 0)
    {
      v23 = this->__r_.__value_.__l.__size_ - 1;
      this->__r_.__value_.__l.__size_ = v23;
      this = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      v23 = v22 - 1;
      *(&this->__r_.__value_.__s + 23) = v23 & 0x7F;
    }

    this->__r_.__value_.__s.__data_[v23] = 0;
    result = 1;
  }

  if (__p)
  {
    v27 = __p;
    v24 = result;
    operator delete(__p);
    return v24;
  }

  return result;
}

char *std::vector<unsigned short>::__insert_with_size[abi:nn200100]<unsigned short const*,unsigned short const*>(void **a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a1[1];
  v6 = a1[2];
  if (a5 > &v6[-v7] >> 1)
  {
    v8 = *a1;
    v9 = a5 + ((v7 - *a1) >> 1);
    if (v9 < 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v6 - v8;
    if (v10 > v9)
    {
      v9 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v12 = a5;
      v13 = a1;
      v14 = __src;
      v15 = operator new(2 * v11);
      __src = v14;
      a5 = v12;
    }

    else
    {
      v13 = a1;
      v15 = 0;
    }

    v40 = &v15[2 * v11];
    v41 = 2 * a5;
    memcpy(&v15[2 * ((v5 - v8) >> 1)], __src, 2 * a5);
    v42 = &v15[2 * ((v5 - v8) >> 1) + v41];
    v43 = v7 - v5;
    memcpy(v42, v5, v43);
    v13[1] = v5;
    memcpy(v15, v8, v5 - v8);
    *v13 = v15;
    v13[1] = &v42[v43];
    v13[2] = v40;
    if (v8)
    {
      operator delete(v8);
    }

    return &v15[2 * ((v5 - v8) >> 1)];
  }

  v16 = v7 - __dst;
  v17 = (v7 - __dst) >> 1;
  if (v17 >= a5)
  {
    v16 = 2 * a5;
    v27 = &__dst[2 * a5];
    v28 = (v7 - 2 * a5);
    if (v28 >= v7)
    {
      v32 = a1[1];
    }

    else
    {
      v29 = v28 + 1;
      if (v7 > (v28 + 1))
      {
        v29 = a1[1];
      }

      v30 = v29 + v16 + ~v7;
      v31 = v30 >= 0x1E && a5 > 0xF;
      v32 = a1[1];
      if (!v31)
      {
        goto LABEL_67;
      }

      v33 = (v30 >> 1) + 1;
      v34 = 2 * (v33 & 0xFFFFFFFFFFFFFFF0);
      v28 = (v28 + v34);
      v32 = (v7 + v34);
      v35 = (v7 + 16);
      v36 = (v7 + 16 - v16);
      v37 = v33 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v38 = *v36;
        *(v35 - 1) = *(v36 - 1);
        *v35 = v38;
        v35 += 2;
        v36 += 2;
        v37 -= 16;
      }

      while (v37);
      if (v33 != (v33 & 0xFFFFFFFFFFFFFFF0))
      {
LABEL_67:
        do
        {
          v39 = *v28++;
          *v32++ = v39;
        }

        while (v28 < v7);
      }
    }

    a1[1] = v32;
    if (v7 != v27)
    {
      v44 = __src;
      memmove(v27, __dst, v7 - v27);
      __src = v44;
    }

    goto LABEL_61;
  }

  v18 = &__src[v16];
  if (&__src[v16] == a4)
  {
    v20 = a1[1];
  }

  else
  {
    v19 = &__dst[a4] - __src - v7 - 2;
    if (v19 < 0x1E)
    {
      v20 = a1[1];
    }

    else
    {
      v20 = a1[1];
      if ((__dst - __src) >= 0x20)
      {
        v21 = (v19 >> 1) + 1;
        v22 = 2 * (v21 & 0xFFFFFFFFFFFFFFF0);
        v18 += v22;
        v20 = v7 + v22;
        v23 = (v7 + 16);
        v24 = &__src[v7 + 16 - __dst];
        v25 = v21 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v26 = *v24;
          *(v23 - 1) = *(v24 - 1);
          *v23 = v26;
          v23 += 2;
          v24 += 32;
          v25 -= 16;
        }

        while (v25);
        if (v21 == (v21 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_43;
        }
      }
    }

    do
    {
      v45 = *v18;
      v18 += 2;
      *v20 = v45;
      v20 += 2;
    }

    while (v18 != a4);
  }

LABEL_43:
  a1[1] = v20;
  if (v17 >= 1)
  {
    v46 = a5;
    v47 = &__dst[2 * a5];
    v48 = (v20 - 2 * a5);
    if (v48 >= v7)
    {
      v52 = v20;
    }

    else
    {
      v49 = v48 + 1;
      if (v7 > (v48 + 1))
      {
        v49 = v7;
      }

      v50 = &v49[v46] + ~v20;
      v51 = v50 >= 0x1E && a5 > 0xF;
      v52 = v20;
      if (!v51)
      {
        goto LABEL_68;
      }

      v53 = (v50 >> 1) + 1;
      v54 = 2 * (v53 & 0xFFFFFFFFFFFFFFF0);
      v48 = (v48 + v54);
      v52 = (v20 + v54);
      v55 = (v20 + 16);
      v56 = (v20 + 16 - v46 * 2);
      v57 = v53 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v58 = *v56;
        *(v55 - 1) = *(v56 - 1);
        *v55 = v58;
        v55 += 2;
        v56 += 2;
        v57 -= 16;
      }

      while (v57);
      if (v53 != (v53 & 0xFFFFFFFFFFFFFFF0))
      {
LABEL_68:
        do
        {
          v59 = *v48++;
          *v52++ = v59;
        }

        while (v48 < v7);
      }
    }

    a1[1] = v52;
    if (v20 != v47)
    {
      v60 = __src;
      memmove(v47, __dst, v20 - v47);
      __src = v60;
    }

    if (v7 != v5)
    {
LABEL_61:
      memmove(v5, __src, v16);
    }
  }

  return v5;
}

llvm::CrashRecoveryContext *llvm::CrashRecoveryContext::CrashRecoveryContext(llvm::CrashRecoveryContext *this)
{
  *(this + 5) = 0;
  *(this + 24) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  return this;
}

void llvm::CrashRecoveryContext::~CrashRecoveryContext(llvm::CrashRecoveryContext *this)
{
  v2 = *(this + 1);
  v4 = *IsRecoveringFromCrash;
  *IsRecoveringFromCrash = this;
  if (v2)
  {
    do
    {
      v5 = *(v2 + 32);
      *(v2 + 16) = 1;
      (*(*v2 + 16))(v2);
      (*(*v2 + 8))(v2);
      v2 = v5;
    }

    while (v5);
  }

  *IsRecoveringFromCrash = v4;
  v6 = *this;
  if (*this)
  {
    if ((*(v6 + 208) & 2) == 0)
    {
      *v7 = v8;
    }

    if (*(v6 + 239) < 0)
    {
      operator delete(*(v6 + 216));
    }

    operator delete(v6);
  }
}

void llvm::CrashRecoveryContext::Enable(llvm::CrashRecoveryContext *this)
{
  if ((atomic_load_explicit(byte_1EE17CAF0, memory_order_acquire) & 1) == 0)
  {
    llvm::CrashRecoveryContext::Enable();
    if (_MergedGlobals_51)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ((_MergedGlobals_51 & 1) == 0)
  {
LABEL_3:
    _MergedGlobals_51 = 1;
    v1.__sigaction_u.__sa_handler = CrashRecoverySignalHandler;
    *&v1.sa_mask = 0;
    sigaction(6, &v1, &byte_1EE17CAF0[8]);
    sigaction(10, &v1, &byte_1EE17CAF0[24]);
    sigaction(8, &v1, &byte_1EE17CAF0[40]);
    sigaction(4, &v1, &byte_1EE17CAF0[56]);
    sigaction(11, &v1, &byte_1EE17CAF0[72]);
    sigaction(5, &v1, &byte_1EE17CAF0[88]);
  }

LABEL_4:
}

void llvm::CrashRecoveryContext::Disable(llvm::CrashRecoveryContext *this)
{
  if ((atomic_load_explicit(byte_1EE17CAF0, memory_order_acquire) & 1) == 0)
  {
    llvm::CrashRecoveryContext::Enable();
  }

  if (_MergedGlobals_51 == 1)
  {
    _MergedGlobals_51 = 0;
    sigaction(6, &byte_1EE17CAF0[8], 0);
    sigaction(10, &byte_1EE17CAF0[24], 0);
    sigaction(8, &byte_1EE17CAF0[40], 0);
    sigaction(4, &byte_1EE17CAF0[56], 0);
    sigaction(11, &byte_1EE17CAF0[72], 0);
    sigaction(5, &byte_1EE17CAF0[88], 0);
  }
}

uint64_t llvm::CrashRecoveryContext::RunSafely(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (_MergedGlobals_51 == 1)
  {
    v6 = operator new(0xF0uLL);
    v6[1] = a1;
    *(v6 + 208) &= ~1u;
    v6[28] = 0;
    v6[29] = 0;
    v6[27] = 0;
    *v8 = *v7;
    *v7 = v8;
    *a1 = v8;
    *(v8 + 208) = v9 | 8;
    if (setjmp((v8 + 16)))
    {
      return 0;
    }
  }

  a2(a3);
  return 1;
}

void *anonymous namespace::CrashRecoveryContextImpl::HandleCrash(_anonymous_namespace_::CrashRecoveryContextImpl *this, int a2, llvm::sys *a3)
{
  if ((*(this + 208) & 4) != 0)
  {
    v10 = 0;
    v14 = 0;
    v15 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_1F5B3FB30;
    v16 = this + 216;
    llvm::raw_ostream::SetBufferAndMode(&v9, 0, 0, 0);
    llvm::sys::PrintStackTrace(&v9, 0);
    llvm::raw_ostream::~raw_ostream(&v9);
  }

  *result = v7;
  *(this + 208) |= 1u;
  v8 = *(this + 1);
  if (*(v8 + 24) == 1)
  {
    result = llvm::sys::CleanupOnSignal(a3);
    v8 = *(this + 1);
  }

  *(v8 + 20) = a2;
  if ((*(this + 208) & 8) != 0)
  {
    longjmp(this + 4, 1);
  }

  return result;
}

uint64_t llvm::CrashRecoveryContext::RunSafelyOnThread(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a4 != 0;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a1;
  v13 = getpriority(3, 0) == 1;
  v14 = 0;
  v7 = a4 | (v6 << 32);
  v8 = operator new(0x10uLL);
  *v8 = RunSafelyOnThread_Dispatch;
  v8[1] = v12;
  if (!v9)
  {
    operator delete(v8);
    v9 = 0;
  }

  llvm::llvm_thread_join_impl(v9, v10);
  if (*a1)
  {
    *(*a1 + 208) |= 2u;
  }

  return v14;
}

uint64_t RunSafelyOnThread_Dispatch(void *a1)
{
  if (*(a1 + 24) == 1)
  {
    setpriority(3, 0, 4096);
  }

  result = llvm::CrashRecoveryContext::RunSafely(*(a1 + 2), *a1, *(a1 + 1));
  *(a1 + 25) = result;
  return result;
}

void *CrashRecoverySignalHandler(int a1)
{
  v3 = *v2;
  if (*v2)
  {
    v4 = 1 << (a1 - 1);
    if (a1 > 32)
    {
      v4 = 0;
    }

    v7 = v4;
    sigprocmask(2, &v7, 0);
    if (a1 == 13)
    {
      v5 = 74;
    }

    else
    {
      v5 = a1 + 128;
    }
  }

  else
  {
    llvm::CrashRecoveryContext::Disable(v2);

    return raise(a1);
  }
}

uint64_t llvm::thread::ThreadProxy<std::tuple<void (*)(void *),anonymous namespace::RunSafelyOnThreadInfo *>>(void *a1)
{
  (*a1)(a1[1]);
  operator delete(a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E5328];

  return __cxa_atexit(v4, a2, a3);
}

llvm::raw_ostream *llvm::DebugCounter::printChunks(llvm::raw_ostream *this, int64_t *a2, uint64_t a3)
{
  v3 = this;
  if (a3)
  {
    v7 = *a2;
    v6 = a2[1];
    this = llvm::raw_ostream::operator<<(this, *a2);
    if (v7 != v6)
    {
      v8 = *(this + 4);
      if (*(this + 3) == v8)
      {
        this = llvm::raw_ostream::write(this, "-", 1uLL);
      }

      else
      {
        *v8 = 45;
        ++*(this + 4);
      }

      this = llvm::raw_ostream::operator<<(this, v6);
    }

    if (a3 == 1)
    {
      return this;
    }

    v10 = &a2[2 * a3];
    v11 = a2 + 2;
    while (1)
    {
      v13 = *v11;
      v12 = v11[1];
      v14 = *(v3 + 4);
      if (v14 >= *(v3 + 3))
      {
        llvm::raw_ostream::write(v3, 58);
        this = llvm::raw_ostream::operator<<(v3, v13);
        if (v13 != v12)
        {
LABEL_22:
          v15 = *(this + 4);
          if (*(this + 3) == v15)
          {
            this = llvm::raw_ostream::write(this, "-", 1uLL);
          }

          else
          {
            *v15 = 45;
            ++*(this + 4);
          }

          this = llvm::raw_ostream::operator<<(this, v12);
        }
      }

      else
      {
        *(v3 + 4) = v14 + 1;
        *v14 = 58;
        this = llvm::raw_ostream::operator<<(v3, v13);
        if (v13 != v12)
        {
          goto LABEL_22;
        }
      }

      v11 += 2;
      if (v11 == v10)
      {
        return this;
      }
    }
  }

  v9 = *(this + 4);
  if ((*(this + 3) - v9) > 4)
  {
    *(v9 + 4) = 121;
    *v9 = 1953525093;
    *(this + 4) += 5;
  }

  else
  {

    return llvm::raw_ostream::write(this, "empty", 5uLL);
  }

  return this;
}

uint64_t llvm::DebugCounter::parseChunks(_BYTE *a1, size_t a2, uint64_t a3)
{
  v43 = a1;
  v44 = a2;
  v42 = &v43;
  v4 = llvm::DebugCounter::parseChunks(llvm::StringRef,llvm::SmallVector<llvm::DebugCounter::Chunk,3u> &)::$_0::operator()(&v42);
  if (v4 == -1)
  {
    return 1;
  }

  while (1)
  {
    v5 = *(a3 + 8);
    if (v5)
    {
      if (v4 <= *(*a3 + 16 * v5 - 8))
      {
        break;
      }
    }

    if (v44 && *v43 == 45)
    {
      v6 = v4;
      ++v43;
      --v44;
      v7 = llvm::DebugCounter::parseChunks(llvm::StringRef,llvm::SmallVector<llvm::DebugCounter::Chunk,3u> &)::$_0::operator()(&v42);
      if (v7 == -1)
      {
        return 1;
      }

      v8 = v7;
      if (v6 >= v7)
      {
        v30 = v7;
        v31 = llvm::errs(v7);
        v32 = *(v31 + 4);
        if ((*(v31 + 3) - v32) > 8)
        {
          *(v32 + 8) = 32;
          *v32 = *"Expected ";
          *(v31 + 4) += 9;
          v34 = llvm::raw_ostream::operator<<(v31, v6);
          v35 = *(v34 + 4);
          if ((*(v34 + 3) - v35) <= 2)
          {
            goto LABEL_35;
          }

LABEL_32:
          *(v35 + 2) = 32;
          *v35 = 15392;
          *(v34 + 4) += 3;
          v36 = llvm::raw_ostream::operator<<(v34, v30);
          v37 = *(v36 + 4);
          if (*(v36 + 3) - v37 > 3uLL)
          {
            goto LABEL_33;
          }

LABEL_36:
          v36 = llvm::raw_ostream::write(v36, " in ", 4uLL);
        }

        else
        {
          v33 = llvm::raw_ostream::write(v31, "Expected ", 9uLL);
          v34 = llvm::raw_ostream::operator<<(v33, v6);
          v35 = *(v34 + 4);
          if ((*(v34 + 3) - v35) > 2)
          {
            goto LABEL_32;
          }

LABEL_35:
          v38 = llvm::raw_ostream::write(v34, " < ", 3uLL);
          v36 = llvm::raw_ostream::operator<<(v38, v30);
          v37 = *(v36 + 4);
          if (*(v36 + 3) - v37 <= 3uLL)
          {
            goto LABEL_36;
          }

LABEL_33:
          *v37 = 544106784;
          *(v36 + 4) += 4;
        }

        v39 = llvm::raw_ostream::operator<<(v36, v6);
        v40 = *(v39 + 4);
        if (*(v39 + 3) == v40)
        {
          v41 = llvm::raw_ostream::write(v39, "-", 1uLL);
          v28 = llvm::raw_ostream::operator<<(v41, v30);
          v29 = *(v28 + 4);
          if (*(v28 + 3) != v29)
          {
            goto LABEL_39;
          }
        }

        else
        {
          *v40 = 45;
          ++*(v39 + 4);
          v28 = llvm::raw_ostream::operator<<(v39, v30);
          v29 = *(v28 + 4);
          if (*(v28 + 3) != v29)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_42;
      }

      v4 = v6;
      v5 = *(a3 + 8);
      v9 = *(a3 + 12);
    }

    else
    {
      v9 = *(a3 + 12);
      v8 = v4;
    }

    if (v5 >= v9)
    {
      v11 = v4;
      v12 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v5 + 1, 16);
      v8 = v12;
      v4 = v11;
      v5 = *(a3 + 8);
    }

    v10 = (*a3 + 16 * v5);
    *v10 = v4;
    v10[1] = v8;
    ++*(a3 + 8);
    if (!v44)
    {
      return 0;
    }

    if (*v43 != 58)
    {
      v14 = llvm::errs(v4);
      v15 = v14[4];
      if (v14[3] - v15 > 0x14uLL)
      {
        qmemcpy(v15, "Failed to parse at : ", 21);
        v27 = v14[3];
        v16 = (v14[4] + 21);
        v14[4] = v16;
        v17 = v43;
        v18 = v44;
        if (v44 <= v27 - v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v14 = llvm::raw_ostream::write(v14, "Failed to parse at : ", 0x15uLL);
        v16 = v14[4];
        v17 = v43;
        v18 = v44;
        if (v44 <= v14[3] - v16)
        {
LABEL_19:
          if (v18)
          {
            v19 = v14;
            v20 = v18;
            memcpy(v16, v17, v18);
            v19[4] += v20;
          }

          return 1;
        }
      }

      llvm::raw_ostream::write(v14, v17, v18);
      return 1;
    }

    ++v43;
    --v44;
    v4 = llvm::DebugCounter::parseChunks(llvm::StringRef,llvm::SmallVector<llvm::DebugCounter::Chunk,3u> &)::$_0::operator()(&v42);
    if (v4 == -1)
    {
      return 1;
    }
  }

  v21 = v4;
  v22 = llvm::errs(v4);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 0x29uLL)
  {
    qmemcpy(v23, "Expected Chunks to be in increasing order ", 42);
    *(v22 + 4) += 42;
    v25 = llvm::raw_ostream::operator<<(v22, v21);
    v26 = *(v25 + 4);
    if (*(v25 + 3) - v26 > 3uLL)
    {
      goto LABEL_23;
    }

LABEL_27:
    v25 = llvm::raw_ostream::write(v25, " <= ", 4uLL);
    goto LABEL_28;
  }

  v24 = llvm::raw_ostream::write(v22, "Expected Chunks to be in increasing order ", 0x2AuLL);
  v25 = llvm::raw_ostream::operator<<(v24, v21);
  v26 = *(v25 + 4);
  if (*(v25 + 3) - v26 <= 3uLL)
  {
    goto LABEL_27;
  }

LABEL_23:
  *v26 = 540884000;
  *(v25 + 4) += 4;
LABEL_28:
  v28 = llvm::raw_ostream::operator<<(v25, *(*a3 + 16 * *(a3 + 8) - 8));
  v29 = *(v28 + 4);
  if (*(v28 + 3) != v29)
  {
LABEL_39:
    *v29 = 10;
    ++*(v28 + 4);
    return 1;
  }

LABEL_42:
  llvm::raw_ostream::write(v28, "\n", 1uLL);
  return 1;
}

uint64_t llvm::DebugCounter::parseChunks(llvm::StringRef,llvm::SmallVector<llvm::DebugCounter::Chunk,3u> &)::$_0::operator()(const void ***a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  if (v4)
  {
    v5 = 0;
    while (v3[v5] - 58 >= 0xFFFFFFF6)
    {
      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = -1;
  }

  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v19 = 0;
  AsSignedInteger = llvm::getAsSignedInteger(v3, v6, 0xA, &v19);
  if (AsSignedInteger)
  {
    v8 = llvm::errs(AsSignedInteger);
    v9 = v8[4];
    if (v8[3] - v9 > 0x18uLL)
    {
      qmemcpy(v9, "Failed to parse int at : ", 25);
      v12 = (v8[4] + 25);
      v8[4] = v12;
      v10 = **a1;
      v11 = (*a1)[1];
      if (v11 <= v8[3] - v12)
      {
LABEL_12:
        if (v11)
        {
          v13 = v8;
          v14 = v11;
          memcpy(v12, v10, v11);
          v8 = v13;
          v12 = &v14[v13[4]];
          v13[4] = v12;
        }

        if (v8[3] != v12)
        {
          goto LABEL_15;
        }

LABEL_22:
        llvm::raw_ostream::write(v8, "\n", 1uLL);
        return -1;
      }
    }

    else
    {
      v8 = llvm::raw_ostream::write(v8, "Failed to parse int at : ", 0x19uLL);
      v10 = **a1;
      v11 = (*a1)[1];
      v12 = v8[4];
      if (v11 <= v8[3] - v12)
      {
        goto LABEL_12;
      }
    }

    v8 = llvm::raw_ostream::write(v8, v10, v11);
    v12 = v8[4];
    if (v8[3] != v12)
    {
LABEL_15:
      *v12 = 10;
      ++v8[4];
      return -1;
    }

    goto LABEL_22;
  }

  result = v19;
  v16 = *a1;
  v17 = (*a1)[1];
  if (v17 >= v6)
  {
    v18 = v6;
  }

  else
  {
    v18 = (*a1)[1];
  }

  *v16 = &v18[**a1];
  v16[1] = (v17 - v18);
  return result;
}

void llvm::initDebugCounterOptions(uint64_t this)
{
  if ((atomic_load_explicit(_MergedGlobals_52, memory_order_acquire) & 1) == 0)
  {
    llvm::initDebugCounterOptions();
  }
}

uint64_t anonymous namespace::DebugCounterOwner::DebugCounterOwner(_anonymous_namespace_::DebugCounterOwner *this)
{
  qword_1EE17CB60 = 0;
  *algn_1EE17CB68 = 0;
  dword_1EE17CB70 = 0;
  qword_1EE17CB88 = 0;
  qword_1EE17CB90 = 0;
  qword_1EE17CB80 = 0;
  qword_1EE17CB78 = &qword_1EE17CB80;
  qword_1EE17CB98 = 0;
  unk_1EE17CBA0 = 0;
  unk_1EE17CBA7 = 0;
  LODWORD(v4) = 1;
  v8.n128_u64[0] = "Comma separated list of debug counter skip and count";
  v8.n128_u64[1] = 52;
  v7 = 1;
  v6 = &qword_1EE17CB60;
  llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::list<char [14],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::MiscFlags,llvm::cl::LocationClass<llvm::DebugCounter>>(&qword_1EE17CBB0, "debug-counter", &v4, &v8, &v7, &v6);
  qword_1EE17CBB0 = &unk_1F5B3ED48;
  v7 = 1;
  v5 = 0;
  v6 = algn_1EE17CBA9;
  v3 = 0;
  v4 = &v3;
  v8.n128_u64[0] = "Print out debug counter info after all counters accumulated";
  v8.n128_u64[1] = 59;
  llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(&unk_1EE17CC98, "print-debug-counter", &v7, &v5, &v6, &v4, &v8);
  v7 = 1;
  v5 = 0;
  v6 = &algn_1EE17CBA9[1];
  v3 = 0;
  v4 = &v3;
  v8.n128_u64[0] = "Insert a break point on the last enabled count of a chunks list";
  v8.n128_u64[1] = 63;
  v1 = llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(&unk_1EE17CD58, "debug-counter-break-on-last", &v7, &v5, &v6, &v4, &v8);
  return llvm::dbgs(v1);
}

void anonymous namespace::DebugCounterOwner::~DebugCounterOwner(_anonymous_namespace_::DebugCounterOwner **this)
{
  if (*(this + 73) == 1)
  {
    v2 = llvm::dbgs(this);
    llvm::DebugCounter::print(this, v2, v3, v4, v5, v6);
  }

  this[63] = &unk_1F5B3EEF8;
  v7 = this[86];
  if (v7 == this + 83)
  {
    (*(*v7 + 4))(v7);
    this[63] = &unk_1F5B3E1D8;
    v8 = this[75];
    if (v8 != this[74])
    {
LABEL_7:
      free(v8);
    }
  }

  else
  {
    if (v7)
    {
      (*(*v7 + 5))(v7);
    }

    this[63] = &unk_1F5B3E1D8;
    v8 = this[75];
    if (v8 != this[74])
    {
      goto LABEL_7;
    }
  }

  v9 = this[71];
  if (v9 != (this + 73))
  {
    free(v9);
  }

  this[39] = &unk_1F5B3EEF8;
  v10 = this[62];
  if (v10 == this + 59)
  {
    (*(*v10 + 4))(v10);
    this[39] = &unk_1F5B3E1D8;
    v11 = this[51];
    if (v11 != this[50])
    {
LABEL_14:
      free(v11);
    }
  }

  else
  {
    if (v10)
    {
      (*(*v10 + 5))(v10);
    }

    this[39] = &unk_1F5B3E1D8;
    v11 = this[51];
    if (v11 != this[50])
    {
      goto LABEL_14;
    }
  }

  v12 = this[47];
  if (v12 != (this + 49))
  {
    free(v12);
  }

  llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(this + 10);

  llvm::DebugCounter::~DebugCounter(this);
}

void llvm::DebugCounter::push_back(uint64_t a1, void ***a2)
{
  v38[6] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 23);
  v3 = v2;
  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (v2)
  {
    if (v3 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    __src = v6;
    v37 = v2;
    LOBYTE(__p[0]) = 61;
    v7 = llvm::StringRef::find(&__src, __p, 1uLL, 0);
    if (v7 != -1)
    {
      v8 = v7 >= v37 ? v37 : v7;
      v9 = v37 - (v7 + 1);
      if (v37 > v7 + 1)
      {
        v10 = v7;
        v11 = __src;
        __src = v38;
        v37 = 0x300000000;
        if (llvm::DebugCounter::parseChunks(v7 + v11 + 1, v9, &__src))
        {
          goto LABEL_66;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if (v8 >= 0x17)
        {
          if ((v8 | 7) == 0x17)
          {
            v20 = 25;
          }

          else
          {
            v20 = (v8 | 7) + 1;
          }

          v12 = operator new(v20);
          __p[1] = v8;
          v35 = v20 | 0x8000000000000000;
          __p[0] = v12;
        }

        else
        {
          HIBYTE(v35) = v8;
          v12 = __p;
          if (!v10)
          {
LABEL_34:
            *(v12 + v8) = 0;
            v21 = llvm::UniqueVector<std::string>::idFor(a1 + 24, __p);
            v22 = v21;
            if (SHIBYTE(v35) < 0)
            {
              operator delete(__p[0]);
            }

            LODWORD(__p[0]) = v22;
            if (!v22)
            {
              v28 = llvm::errs(v21);
              v29 = v28[4];
              if ((v28[3] - v29) > 0x13)
              {
                *(v29 + 16) = 540701295;
                *v29 = *"DebugCounter Error: ";
                v30 = (v28[4] + 20);
                v28[4] = v30;
              }

              else
              {
                v28 = llvm::raw_ostream::write(v28, "DebugCounter Error: ", 0x14uLL);
                v30 = v28[4];
              }

              if (v8 <= v28[3] - v30)
              {
                if (v10)
                {
                  v31 = v28;
                  memcpy(v30, v11, v8);
                  v28 = v31;
                  v30 = (v31[4] + v8);
                  v31[4] = v30;
                }
              }

              else
              {
                v28 = llvm::raw_ostream::write(v28, v11, v8);
                v30 = v28[4];
              }

              if (v28[3] - v30 > 0x1CuLL)
              {
                qmemcpy(v30, " is not a registered counter\n", 29);
                v28[4] += 29;
              }

              else
              {
                llvm::raw_ostream::write(v28, " is not a registered counter\n", 0x1DuLL);
              }

              goto LABEL_66;
            }

            if ((atomic_load_explicit(_MergedGlobals_52, memory_order_acquire) & 1) == 0)
            {
              llvm::DebugCounter::push_back();
            }

            byte_1EE17CBA8 = 1;
            v23 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::operator[](a1, __p);
            *(v23 + 16) = 1;
            v24 = (v23 + 48);
            if ((v23 + 48) == &__src)
            {
LABEL_66:
              if (__src != v38)
              {
                free(__src);
              }

              return;
            }

            v25 = v23;
            v26 = __src;
            if (__src != v38)
            {
              v27 = *(v23 + 48);
              if (v27 != v25 + 8)
              {
                free(v27);
                v26 = __src;
              }

              v25[6] = v26;
              v25[7] = v37;
              __src = v38;
              HIDWORD(v37) = 0;
              goto LABEL_65;
            }

            v32 = v37;
            v33 = *(v23 + 56);
            if (v33 >= v37)
            {
              if (v37)
              {
                memmove(*v24, __src, 16 * v37);
              }

              goto LABEL_64;
            }

            if (*(v23 + 60) >= v37)
            {
              if (v33)
              {
                memmove(*v24, __src, 16 * v33);
                goto LABEL_62;
              }
            }

            else
            {
              *(v23 + 56) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 48, (v23 + 64), v32, 16);
            }

            v33 = 0;
LABEL_62:
            if (v37 != v33)
            {
              memcpy(*v24 + 16 * v33, __src + 16 * v33, 16 * (v37 - v33));
            }

LABEL_64:
            *(v25 + 14) = v32;
LABEL_65:
            LODWORD(v37) = 0;
            goto LABEL_66;
          }
        }

        memmove(v12, v11, v8);
        goto LABEL_34;
      }
    }

    v13 = llvm::errs(v7);
    v14 = v13[4];
    if ((v13[3] - v14) > 0x13)
    {
      *(v14 + 16) = 540701295;
      *v14 = *"DebugCounter Error: ";
      v13[4] += 20;
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "DebugCounter Error: ", 0x14uLL);
    }

    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v15 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = a2[1];
    }

    v18 = llvm::raw_ostream::write(v13, v16, v17);
    v19 = v18[4];
    if (v18[3] - v19 > 0x19uLL)
    {
      qmemcpy(v19, " does not have an = in it\n", 26);
      v18[4] += 26;
    }

    else
    {
      llvm::raw_ostream::write(v18, " does not have an = in it\n", 0x1AuLL);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::operator[](uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (37 * *a2) & (v2 - 1);
    v5 = *a1 + 120 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -1)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -2;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 120 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::LookupBucketFor<unsigned int>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -1)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 56) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 56) = v5 + 72;
  *(v5 + 68) = 3;
  return v5 + 8;
}

void llvm::DebugCounter::print(llvm::DebugCounter *this, llvm::raw_ostream *a2, _BYTE *a3, double a4, double a5, int8x16_t a6)
{
  v104[32] = *MEMORY[0x1E69E9840];
  v9 = *(this + 6);
  v8 = *(this + 7);
  __base = v104;
  v103 = 0x1000000000;
  v10 = v8 - *&v9;
  v11 = (v8 - *&v9) >> 3;
  v12 = -1431655765 * v11;
  if (0xAAAAAAAAAAAAAAABLL * v11 < 0x11)
  {
    v13 = 0;
    if (*&v9 == v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__base, v104, 0xAAAAAAAAAAAAAAABLL * v11, 16);
    v13 = v103;
    if (*&v9 == v8)
    {
      goto LABEL_28;
    }
  }

  v14 = __base;
  v15 = (__base + 16 * v13);
  v16 = v10 - 24;
  if ((v10 - 24) >= 0x30)
  {
    v17 = v13;
    v18 = v16 / 0x18;
    if (v15 >= *&v9 + 24 * (v16 / 0x18) + 24 || *&v9 >= __base + 16 * (v16 / 0x18) + 16 * v13 + 16)
    {
      if (v16 >= 0x180)
      {
        v97 = v16 / 0x18;
        v21 = (v18 + 1) & 0xF;
        if (!v21)
        {
          v21 = 16;
        }

        v95 = v21;
        v22 = v18 + 1 - v21;
        a6.i64[0] = 240;
        v23 = *&v9;
        v96 = v22;
        v24 = (__base + 16 * v13);
        do
        {
          v25 = v23 + 12;
          v26 = vdupq_n_s64(v23);
          v27 = v23;
          v111 = vld3q_f64(v27);
          v27 += 6;
          v115 = vld3q_f64(v25);
          v28.i64[0] = v23;
          v29 = v23 + 42;
          v30.i64[0] = (v23 + 12);
          v31.i8[0] = *(v23 + 23);
          v32.i8[0] = v31.i8[0];
          v32.i8[1] = *(v23 + 47);
          v32.i8[2] = *(v23 + 71);
          v32.i8[3] = *(v23 + 95);
          v32.i8[4] = *(v23 + 119);
          v32.i8[5] = *(v23 + 143);
          v33 = v23 + 18;
          v34 = v23 + 24;
          v117 = vld3q_f64(v33);
          v114 = vld3q_f64(v34);
          v32.i8[6] = *(v23 + 167);
          v32.i8[7] = *(v23 + 191);
          v35 = v23 + 30;
          LOBYTE(v33) = *(v23 + 335);
          v113 = vld3q_f64(v35);
          LOBYTE(v35) = *(v23 + 359);
          v32.i8[8] = *(v23 + 215);
          v32.i8[9] = *(v23 + 239);
          v32.i8[10] = *(v23 + 263);
          v32.i8[11] = *(v23 + 287);
          v32.i8[12] = *(v23 + 311);
          v32.i8[13] = v33;
          v31.i8[1] = v32.i8[1];
          v32.i8[14] = v35;
          v36 = *(v23 + 383);
          v32.i8[15] = v36;
          v31.i8[2] = v32.i8[2];
          v37 = vcltzq_s8(v32);
          v38 = vmovl_s8(*v37.i8);
          v31.i8[3] = *(v23 + 95);
          v31.i8[4] = *(v23 + 119);
          v39 = vmovl_high_s16(v38);
          v40.i64[0] = v39.i32[2];
          v40.i64[1] = v39.i32[3];
          v41 = v40;
          v31.i8[5] = *(v23 + 143);
          v31.i8[6] = *(v23 + 167);
          v108.val[0] = vbslq_s8(v40, v117.val[0], vaddq_s64(v26, xmmword_1E099DC80));
          v31.i8[7] = *(v23 + 191);
          v42 = vmovl_u8(v31);
          v43 = vmovl_high_u16(v42);
          v40.i64[0] = v43.u32[2];
          v40.i64[1] = v43.u32[3];
          v108.val[1] = vbslq_s8(v41, v117.val[1], v40);
          v117 = vld3q_f64(v29);
          v30.i64[1] = (v23 + 15);
          v40.i64[0] = v39.i32[0];
          v40.i64[1] = v39.i32[1];
          v117.val[2] = v40;
          v107.val[0] = vbslq_s8(v40, v115.val[0], v30);
          v40.i64[0] = v43.u32[0];
          v40.i64[1] = v43.u32[1];
          v107.val[1] = vbslq_s8(v117.val[2], v115.val[1], v40);
          v116 = vld3q_f64(v27);
          v28.i64[1] = (v23 + 3);
          v30.i8[0] = *(v23 + 215);
          v30.i8[1] = *(v23 + 239);
          v117.val[2] = vmovl_s16(*v38.i8);
          v40.i64[0] = SLODWORD(v117.val[2].f64[0]);
          v40.i64[1] = SHIDWORD(v117.val[2].f64[0]);
          v44 = v40;
          v30.i8[2] = *(v23 + 263);
          v45 = vmovl_u16(*v42.i8);
          v40.i64[0] = v45.u32[0];
          v40.i64[1] = v45.u32[1];
          v105.val[0] = vbslq_s8(v44, v111.val[0], v28);
          v105.val[1] = vbslq_s8(v44, v111.val[1], v40);
          v30.i8[3] = *(v23 + 287);
          v30.i8[4] = *(v23 + 311);
          v46 = v27 + 30;
          v112 = vld3q_f64(v46);
          v47 = v24;
          vst2q_f64(v47, v105);
          v47 += 4;
          v30.i8[5] = v33;
          v30.i8[6] = v35;
          v105.val[1] = vmovl_high_s8(v37);
          v48 = vmovl_s16(*&v105.val[1].f64[0]);
          v49 = v24 + 8;
          vst2q_f64(v49, v107);
          v40.i64[0] = v48.i32[0];
          v40.i64[1] = v48.i32[1];
          v50 = v40;
          v51 = v24 + 12;
          vst2q_f64(v51, v108);
          v30.i8[7] = v36;
          v52 = vmovl_u8(*v30.i8);
          v53 = vmovl_u16(*v52.i8);
          v40.i64[0] = v53.u32[0];
          v40.i64[1] = v53.u32[1];
          v107.val[1] = vbslq_s8(v50, v114.val[0], vaddq_s64(v26, xmmword_1E099DC90));
          v108.val[0] = vbslq_s8(v50, v114.val[1], v40);
          v54 = v24 + 16;
          vst2q_f64(v54, v108);
          v40.i64[0] = v48.i32[2];
          v40.i64[1] = v48.i32[3];
          v55 = v40;
          v40.i64[0] = v53.u32[2];
          v40.i64[1] = v53.u32[3];
          v114.val[1] = vbslq_s8(v55, v113.val[0], vaddq_s64(v26, xmmword_1E099DCA0));
          v114.val[2] = vbslq_s8(v55, v113.val[1], v40);
          v105.val[1] = vmovl_high_s16(v105.val[1]);
          v56 = vmovl_high_u16(v52);
          v57 = v24 + 20;
          v40.i64[0] = SLODWORD(v105.val[1].f64[0]);
          v40.i64[1] = SHIDWORD(v105.val[1].f64[0]);
          v58 = v40;
          vst2q_f64(v57, *v114.val[1].f64);
          v40.i64[0] = v56.u32[0];
          v40.i64[1] = v56.u32[1];
          v113.val[1] = vbslq_s8(v58, v112.val[0], vaddq_s64(v26, xmmword_1E099DCB0));
          v113.val[2] = vbslq_s8(v58, v112.val[1], v40);
          v59 = v24 + 24;
          vst2q_f64(v59, *v113.val[1].f64);
          *&v105.val[0].f64[0] = v27;
          *&v105.val[0].f64[1] = v23 + 9;
          v40.i64[0] = SLODWORD(v117.val[2].f64[1]);
          v40.i64[1] = SHIDWORD(v117.val[2].f64[1]);
          v60 = v40;
          v112.val[0] = vbslq_s8(v40, v116.val[0], v105.val[0]);
          v40.i64[0] = v45.u32[2];
          v40.i64[1] = v45.u32[3];
          v112.val[1] = vbslq_s8(v60, v116.val[1], v40);
          vst2q_f64(v47, *v112.val[0].f64);
          v40.i64[0] = SLODWORD(v105.val[1].f64[1]);
          v40.i64[1] = SHIDWORD(v105.val[1].f64[1]);
          v105.val[1] = v40;
          v40.i64[0] = v56.u32[2];
          v40.i64[1] = v56.u32[3];
          v106.val[0] = vbslq_s8(v105.val[1], v61, vaddq_s64(v26, xmmword_1E099DCC0));
          v106.val[1] = vbslq_s8(v105.val[1], v117.val[0], v40);
          v62 = v24 + 28;
          vst2q_f64(v62, v106);
          v24 += 32;
          v23 += 48;
          v22 -= 16;
        }

        while (v22);
        v20 = v96;
        v17 = v13;
        v18 = v97;
        if (v95 < 3)
        {
          *&v9 += 24 * v96;
          v15 += 2 * v96;
          goto LABEL_22;
        }
      }

      else
      {
        v20 = 0;
      }

      v15 += 2 * (v18 & 0xFFFFFFFFFFFFFFELL);
      v63 = &v14[16 * v20 + 16 * v17];
      v64 = v20 - (v18 & 0xFFFFFFFFFFFFFFELL);
      v65 = *&v9 + 24 * v20;
      v66.i64[0] = 255;
      v66.i64[1] = 255;
      do
      {
        v67.i64[0] = v65;
        v67.i64[1] = v65 + 24;
        a6.i8[0] = *(v65 + 23);
        a6.i8[4] = *(v65 + 47);
        v68 = vcltz_s32(vshr_n_s32(vshl_n_s32(*a6.i8, 0x18uLL), 0x18uLL));
        v69.i64[0] = v68.i32[0];
        v69.i64[1] = v68.i32[1];
        v70 = v69;
        v110 = vld3q_f64(v65);
        v65 += 48;
        v109.val[0] = vbslq_s8(v69, v110.val[0], v67);
        v69.i64[0] = a6.u32[0];
        v69.i64[1] = a6.u32[1];
        a6 = vandq_s8(v110.val[1], v70);
        v109.val[1] = vorrq_s8(a6, vandq_s8(vbicq_s8(v69, v70), v66));
        vst2q_f64(v63, v109);
        v63 += 4;
        v64 += 2;
      }

      while (v64);
      *&v9 += 24 * (v18 & 0xFFFFFFFFFFFFFFELL);
      goto LABEL_22;
    }
  }

  do
  {
LABEL_22:
    if (*(*&v9 + 23) >= 0)
    {
      v71 = v9;
    }

    else
    {
      v71 = **&v9;
    }

    *v15 = v71;
    v72 = *(*&v9 + 23);
    if ((v72 & 0x80u) != 0)
    {
      v72 = *(*&v9 + 8);
    }

    *(v15 + 1) = v72;
    *&v9 += 24;
    v15 += 2;
  }

  while (*&v9 != v8);
LABEL_28:
  v73 = v13 + v12;
  LODWORD(v103) = v73;
  if (v73 >= 2)
  {
    qsort(__base, v73, 0x10uLL, llvm::array_pod_sort_comparator<llvm::StringRef>);
    if (atomic_load_explicit(_MergedGlobals_52, memory_order_acquire))
    {
LABEL_30:
      v74 = *(a2 + 4);
      if (*(a2 + 3) - v74 <= 0x14uLL)
      {
        goto LABEL_31;
      }

LABEL_35:
      qmemcpy(v74, "Counters and values:\n", 21);
      *(a2 + 4) += 21;
      v75 = __base;
      v76 = v103;
      if (!v103)
      {
        goto LABEL_61;
      }

      goto LABEL_36;
    }
  }

  else if (atomic_load_explicit(_MergedGlobals_52, memory_order_acquire))
  {
    goto LABEL_30;
  }

  llvm::DebugCounter::push_back();
  v74 = *(a2 + 4);
  if (*(a2 + 3) - v74 > 0x14uLL)
  {
    goto LABEL_35;
  }

LABEL_31:
  llvm::raw_ostream::write(a2, "Counters and values:\n", 0x15uLL);
  v75 = __base;
  v76 = v103;
  if (v103)
  {
LABEL_36:
    v77 = &v75[2 * v76];
    while (1)
    {
      v78 = v75[1];
      if (v78 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v79 = *v75;
      if (v78 >= 0x17)
      {
        if ((v78 | 7) == 0x17)
        {
          v88 = 25;
        }

        else
        {
          v88 = (v78 | 7) + 1;
        }

        p_dst = operator new(v88);
        v99 = v78;
        v100 = v88 | 0x8000000000000000;
        __dst = p_dst;
      }

      else
      {
        HIBYTE(v100) = v75[1];
        p_dst = &__dst;
        if (!v78)
        {
          LOBYTE(__dst) = 0;
          v81 = llvm::UniqueVector<std::string>::idFor(this + 24, &__dst);
          if (SHIBYTE(v100) < 0)
          {
            goto LABEL_53;
          }

          goto LABEL_42;
        }
      }

      memmove(p_dst, v79, v78);
      *(p_dst + v78) = 0;
      v81 = llvm::UniqueVector<std::string>::idFor(this + 24, &__dst);
      if (SHIBYTE(v100) < 0)
      {
LABEL_53:
        v89 = v81;
        operator delete(__dst);
        v81 = v89;
      }

LABEL_42:
      v101 = v81;
      v82 = (*(this + 6) + 24 * (v81 - 1));
      v83 = *(v82 + 23);
      v84 = v82[1];
      if (v83 < 0)
      {
        v82 = *v82;
      }

      if (v83 < 0)
      {
        v83 = v84;
      }

      __dst = v82;
      v99 = v83;
      v100 = 0x100000020;
      v85 = llvm::raw_ostream::operator<<(a2, &__dst);
      v86 = *(v85 + 4);
      if ((*(v85 + 3) - v86) > 2)
      {
        *(v86 + 2) = 123;
        *v86 = 8250;
        v87 = v85;
        *(v85 + 4) += 3;
      }

      else
      {
        v87 = llvm::raw_ostream::write(v85, ": {", 3uLL);
      }

      v90 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::operator[](&qword_1EE17CB60, &v101);
      v91 = llvm::raw_ostream::operator<<(v87, *v90);
      v92 = *(v91 + 4);
      if (*(v91 + 3) == v92)
      {
        llvm::raw_ostream::write(v91, ",", 1uLL);
      }

      else
      {
        *v92 = 44;
        ++*(v91 + 4);
      }

      v93 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::operator[](&qword_1EE17CB60, &v101);
      llvm::DebugCounter::printChunks(a2, *(v93 + 48), *(v93 + 56));
      v94 = *(a2 + 4);
      if (*(a2 + 3) - v94 > 1uLL)
      {
        *v94 = 2685;
        *(a2 + 4) += 2;
        v75 += 2;
        if (v75 == v77)
        {
          goto LABEL_60;
        }
      }

      else
      {
        llvm::raw_ostream::write(a2, "}\n", 2uLL);
        v75 += 2;
        if (v75 == v77)
        {
LABEL_60:
          v75 = __base;
          break;
        }
      }
    }
  }

LABEL_61:
  if (v75 != v104)
  {
    free(v75);
  }
}