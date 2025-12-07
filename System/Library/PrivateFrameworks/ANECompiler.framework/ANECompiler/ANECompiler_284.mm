llvm::raw_ostream *anonymous namespace::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v16 = v18;
  v17 = xmmword_1A75D94D0;
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
  *&v32 = &unk_1F1A362A8;
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
  *&v32 = &unk_1F1A362A8;
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
  *&v32 = &unk_1F1A362A8;
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

char *llvm::cl::OptionCategory::OptionCategory(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  *(a1 + 2) = a4;
  *(a1 + 3) = a5;
  if (!atomic_load_explicit(qword_1ED440740, memory_order_acquire))
  {
  }

  v6 = *(qword_1ED440740[0] + 112);
  if (*(qword_1ED440740[0] + 120) != v6)
  {
    goto LABEL_4;
  }

  v8 = *(qword_1ED440740[0] + 132);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = *(qword_1ED440740[0] + 112);
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
  if (v8 >= *(qword_1ED440740[0] + 128))
  {
LABEL_4:
    llvm::SmallPtrSetImplBase::insert_imp_big((qword_1ED440740[0] + 112), a1);
    return a1;
  }

  *(qword_1ED440740[0] + 132) = v8 + 1;
  *(v6 + 8 * v8) = a1;
  return a1;
}

void *llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt(void *a1)
{
  *a1 = &unk_1F1A35AE8;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
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

    *a1 = &unk_1F1A35888;
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

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt(void *a1)
{
  *a1 = &unk_1F1A35AE8;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
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

    *a1 = &unk_1F1A35888;
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

  JUMPOUT(0x1AC55A070);
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_1F1A35B98;
  v2 = a1 + 200;
  v3 = *(a1 + 224);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 152) = &unk_1F1A0D0E0;
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

    *(a1 + 152) = &unk_1F1A0D0E0;
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
    *a1 = &unk_1F1A35888;
    v4 = *(a1 + 96);
    if (v4 == *(a1 + 88))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  operator delete(*(a1 + 128));
  *a1 = &unk_1F1A35888;
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

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_1F1A35B98;
  v2 = a1 + 200;
  v3 = *(a1 + 224);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 152) = &unk_1F1A0D0E0;
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

    *(a1 + 152) = &unk_1F1A0D0E0;
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  operator delete(*(a1 + 160));
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
LABEL_6:
    *a1 = &unk_1F1A35888;
    v4 = *(a1 + 96);
    if (v4 == *(a1 + 88))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  operator delete(*(a1 + 128));
  *a1 = &unk_1F1A35888;
  v4 = *(a1 + 96);
  if (v4 == *(a1 + 88))
  {
LABEL_8:
    v5 = *(a1 + 64);
    if (v5 != (a1 + 80))
    {
      free(v5);
    }

    JUMPOUT(0x1AC55A070);
  }

LABEL_7:
  free(v4);
  goto LABEL_8;
}

void *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_1F1A35C60;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
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

    *a1 = &unk_1F1A35888;
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

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_1F1A35C60;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
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

    *a1 = &unk_1F1A35888;
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

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::CommandLineParser::forEachSubCommand(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = *(a2 + 108) - *(a2 + 112);
  if (!v5)
  {
    v6 = qword_1ED440758;
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
    v6 = qword_1ED440770;
    if (atomic_load_explicit(qword_1ED440770, memory_order_acquire))
    {
      if (v14 != qword_1ED440770[0])
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = result;
      v23 = a2;
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_1ED440770, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      a2 = v23;
      result = v22;
      if (v14 != qword_1ED440770[0])
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
    llvm::StringMapImpl::RemoveKey(a2 + 128, v19, v17, v18);
    llvm::deallocate_buffer(v19, (*v19 + 17));
  }

  return result;
}

uint64_t CommaSeparateAndAddOccurrence(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, size_t __n, uint64_t a7)
{
  v8 = __n;
  v9 = __s;
  if ((a1[5] & 0x200) != 0 && __n && (v14 = memchr(__s, 44, __n)) != 0 && (v15 = v14 - v9, v14 - v9 != -1))
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

uint64_t llvm::object_deleter<anonymous namespace::CommandLineParser>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 280);
    if (v2 != *(v1 + 272))
    {
      free(v2);
    }

    v3 = *(v1 + 120);
    if (v3 != *(v1 + 112))
    {
      free(v3);
    }

    v4 = *(v1 + 64);
    if (v4 != (v1 + 80))
    {
      free(v4);
    }

    v5 = *(v1 + 40);
    if (v5)
    {
      *(v1 + 48) = v5;
      operator delete(v5);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

uint64_t llvm::object_deleter<llvm::cl::SubCommand>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 140))
    {
      v2 = *(result + 136);
      if (v2)
      {
        v3 = 0;
        do
        {
          v4 = *(*(v1 + 128) + v3);
          if (v4 != -8 && v4 != 0)
          {
            llvm::deallocate_buffer(v4, (*v4 + 17));
          }

          v3 += 8;
        }

        while (8 * v2 != v3);
      }
    }

    free(*(v1 + 128));
    v6 = *(v1 + 80);
    if (v6 != (v1 + 96))
    {
      free(v6);
    }

    v7 = *(v1 + 32);
    if (v7 != (v1 + 48))
    {
      free(v7);
    }

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

char *OUTLINED_FUNCTION_0_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return llvm::cl::OptionCategory::OptionCategory((v4 + 104), a2, 15, a4, 0);
}

llvm::CrashRecoveryContext *llvm::CrashRecoveryContext::CrashRecoveryContext(llvm::CrashRecoveryContext *this)
{
  *(this + 5) = 0;
  *(this + 24) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  ZinIrHalH13g::~ZinIrHalH13g(this);
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

    MEMORY[0x1AC55A070](v6, 0x1072C40897D38BCLL);
  }
}

void llvm::CrashRecoveryContext::Enable(llvm::CrashRecoveryContext *this)
{
  if ((atomic_load_explicit(byte_1ED4407C8, memory_order_acquire) & 1) == 0)
  {
    llvm::CrashRecoveryContext::Enable();
    if (_MergedGlobals_7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ((_MergedGlobals_7 & 1) == 0)
  {
LABEL_3:
    _MergedGlobals_7 = 1;
    v1.__sigaction_u.__sa_handler = CrashRecoverySignalHandler;
    *&v1.sa_mask = 0;
    sigaction(6, &v1, &byte_1ED4407C8[8]);
    sigaction(10, &v1, &byte_1ED4407C8[24]);
    sigaction(8, &v1, &byte_1ED4407C8[40]);
    sigaction(4, &v1, &byte_1ED4407C8[56]);
    sigaction(11, &v1, &byte_1ED4407C8[72]);
    sigaction(5, &v1, &byte_1ED4407C8[88]);
  }

LABEL_4:
}

void llvm::CrashRecoveryContext::Disable(llvm::CrashRecoveryContext *this)
{
  if ((atomic_load_explicit(byte_1ED4407C8, memory_order_acquire) & 1) == 0)
  {
    llvm::CrashRecoveryContext::Enable();
  }

  if (_MergedGlobals_7 == 1)
  {
    _MergedGlobals_7 = 0;
    sigaction(6, &byte_1ED4407C8[8], 0);
    sigaction(10, &byte_1ED4407C8[24], 0);
    sigaction(8, &byte_1ED4407C8[40], 0);
    sigaction(4, &byte_1ED4407C8[56], 0);
    sigaction(11, &byte_1ED4407C8[72], 0);
    sigaction(5, &byte_1ED4407C8[88], 0);
  }
}

uint64_t llvm::CrashRecoveryContext::RunSafely(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (_MergedGlobals_7 == 1)
  {
    operator new();
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
    v9 = &unk_1F1A362A8;
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

uint64_t llvm::thread::ThreadProxy<std::tuple<void (*)(void *),anonymous namespace::RunSafelyOnThreadInfo *>>(uint64_t a1)
{
  (*a1)(*(a1 + 8));
  MEMORY[0x1AC55A070](a1, 0xA0C40BD48D6D6);
  return 0;
}

void llvm::toString(void **a1@<X0>, std::string *a2@<X8>)
{
  v117[6] = *MEMORY[0x1E69E9840];
  v115 = v117;
  v116 = 0x200000000;
  v3 = *a1;
  *a1 = 0;
  v109 = &v115;
  if (!v3)
  {
    v110 = 0;
    goto LABEL_18;
  }

  if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
  {
    v110 = 0;
    v4 = v3[1];
    v5 = v3[2];
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        v113 = v6;
        v7 = *v4;
        *v4 = 0;
        v111 = v7;
        llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(&v112, &v111, &v109);
        llvm::ErrorList::join(&v113, &v112, &v114);
        v6 = v114;
        v114 = 0;
        if (v112)
        {
          (*(*v112 + 8))(v112);
        }

        v8 = v111;
        v111 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        if (v113)
        {
          (*(*v113 + 8))(v113);
        }

        ++v4;
      }

      while (v4 != v5);
      v110 = v6;
    }

    v9 = *(*v3 + 8);
  }

  else
  {
    v114 = v3;
    llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(&v110, &v114, &v109);
    if (!v114)
    {
      goto LABEL_18;
    }

    v9 = *(*v114 + 8);
  }

  v9();
LABEL_18:
  v10 = v115;
  v11 = v116;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (!v11)
  {
    goto LABEL_54;
  }

  v12 = v11 - 1;
  v13 = 24 * v11 - 24;
  if (v13 >= 0x60)
  {
    v15 = v13 / 0x18;
    v16 = v13 / 0x18 + 1;
    if (v13 >= 0x180)
    {
      v18 = 0uLL;
      v19 = (v11 - 1);
      if ((v16 & 0xF) != 0)
      {
        v20 = v16 & 0xF;
      }

      else
      {
        v20 = 16;
      }

      v21 = v16 - v20;
      v22 = v10 + 191;
      v106 = v20;
      v107 = v16 - v20;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      do
      {
        v29.i8[0] = *(v22 - 168);
        v30.i8[0] = v29.i8[0];
        v30.i8[1] = *(v22 - 144);
        v30.i8[2] = *(v22 - 120);
        v30.i8[3] = *(v22 - 96);
        v30.i8[4] = *(v22 - 72);
        v30.i8[5] = *(v22 - 48);
        v30.i8[6] = *(v22 - 24);
        v30.i8[7] = *v22;
        v31 = (v22 - 183);
        v32 = (v22 - 135);
        v33 = (v22 - 87);
        v34 = (v22 - 39);
        v35 = (v22 + 9);
        v36 = (v22 + 57);
        v37 = vld3q_f64(v31);
        v38 = vld3q_f64(v32);
        v39 = vld3q_f64(v33);
        v40 = vld3q_f64(v34);
        v108 = v40;
        v41 = vld3q_f64(v35);
        v42 = vld3q_f64(v36);
        v30.i8[8] = v22[24];
        v30.i8[9] = v22[48];
        v30.i8[10] = v22[72];
        v30.i8[11] = v22[96];
        v43.i32[0] = v30.i32[2];
        v30.i8[12] = v22[120];
        v30.i8[13] = v22[144];
        v43.i16[2] = v30.i16[6];
        v30.i8[14] = v22[168];
        v43.i8[6] = v30.i8[14];
        v30.i8[15] = v22[192];
        v29.i8[1] = v30.i8[1];
        v29.i8[2] = v30.i8[2];
        v44 = vcltzq_s8(v30);
        v45 = vmovl_high_s8(v44);
        v29.i8[3] = *(v22 - 96);
        v29.i8[4] = *(v22 - 72);
        v46 = vmovl_s8(*v44.i8);
        v47 = vmovl_s16(*v46.i8);
        v29.i8[5] = *(v22 - 48);
        v29.i8[6] = *(v22 - 24);
        v48.i64[0] = v47.i32[0];
        v48.i64[1] = v47.i32[1];
        v49 = v48;
        v29.i8[7] = *v22;
        v50 = vmovl_u8(v29);
        v51 = vmovl_u16(*v50.i8);
        v48.i64[0] = v51.u32[0];
        v48.i64[1] = v51.u32[1];
        v52 = vbslq_s8(v49, v37, v48);
        v53 = vmovl_s16(*v45.i8);
        v43.i8[7] = v22[192];
        v54 = vmovl_u8(v43);
        v55 = vmovl_u16(*v54.i8);
        v48.i64[0] = v53.i32[0];
        v48.i64[1] = v53.i32[1];
        v56 = v48;
        v48.i64[0] = v55.u32[0];
        v48.i64[1] = v55.u32[1];
        v57 = vbslq_s8(v56, v41, v48);
        v58 = vmovl_high_s16(v46);
        v48.i64[0] = v47.i32[2];
        v48.i64[1] = v47.i32[3];
        v59 = v48;
        v48.i64[0] = v51.u32[2];
        v48.i64[1] = v51.u32[3];
        v60 = vbslq_s8(v59, v38, v48);
        v48.i64[0] = v58.i32[0];
        v48.i64[1] = v58.i32[1];
        v61 = v48;
        v62 = (v22 + 105);
        v63 = (v22 + 153);
        v64 = vmovl_high_u16(v50);
        v48.i64[0] = v64.u32[0];
        v48.i64[1] = v64.u32[1];
        v65 = vbslq_s8(v61, v39, v48);
        v66 = vld3q_f64(v62);
        v67 = vld3q_f64(v63);
        v48.i64[0] = v53.i32[2];
        v48.i64[1] = v53.i32[3];
        v68 = v48;
        v48.i64[0] = v55.u32[2];
        v48.i64[1] = v55.u32[3];
        v69 = vbslq_s8(v68, v42, v48);
        v70 = vmovl_high_s16(v45);
        v71 = vmovl_high_u16(v54);
        v48.i64[0] = v70.i32[0];
        v48.i64[1] = v70.i32[1];
        v72 = v48;
        v48.i64[0] = v71.u32[0];
        v48.i64[1] = v71.u32[1];
        v73 = vbslq_s8(v72, v66, v48);
        v48.i64[0] = v58.i32[2];
        v48.i64[1] = v58.i32[3];
        v74 = v48;
        v48.i64[0] = v64.u32[2];
        v48.i64[1] = v64.u32[3];
        v75 = vbslq_s8(v74, v108, v48);
        v48.i64[0] = v70.i32[2];
        v48.i64[1] = v70.i32[3];
        v76 = v48;
        v48.i64[0] = v71.u32[2];
        v48.i64[1] = v71.u32[3];
        v28 = vaddq_s64(vbslq_s8(v76, v67, v48), v28);
        v24 = vaddq_s64(v75, v24);
        v27 = vaddq_s64(v73, v27);
        v26 = vaddq_s64(v69, v26);
        v23 = vaddq_s64(v65, v23);
        v18 = vaddq_s64(v60, v18);
        v25 = vaddq_s64(v57, v25);
        v19 = vaddq_s64(v52, v19);
        v22 += 384;
        v21 -= 16;
      }

      while (v21);
      v12 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v19, v25), vaddq_s64(v23, v27)), vaddq_s64(vaddq_s64(v18, v26), vaddq_s64(v24, v28))));
      if (v106 <= 4)
      {
        v14 = &v10[24 * v107];
        goto LABEL_36;
      }

      v15 = v13 / 0x18;
      v17 = v107;
    }

    else
    {
      v17 = 0;
    }

    v77 = v16 & 3;
    if ((v16 & 3) == 0)
    {
      v77 = 4;
    }

    v14 = &v10[24 * (v16 - v77)];
    v78 = 0uLL;
    v79 = v12;
    v80 = ~v15 + v17 + v77;
    v81 = &v10[24 * v17 + 47];
    v82.i64[0] = 255;
    v82.i64[1] = 255;
    do
    {
      v83 = (v81 - 39);
      v84 = (v81 + 9);
      v85 = vld3q_f64(v83);
      v86 = vld3q_f64(v84);
      v87.i16[0] = *(v81 - 24);
      v87.i16[1] = *v81;
      v87.i16[2] = v81[24];
      v87.i16[3] = v81[48];
      v88 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v87, 8uLL), 8uLL)));
      v89.i64[0] = v88.u32[0];
      v89.i64[1] = v88.u32[1];
      v90 = vshrq_n_s64(vshlq_n_s64(v89, 0x38uLL), 0x38uLL);
      v89.i64[0] = v88.u32[2];
      v89.i64[1] = v88.u32[3];
      v91 = vshrq_n_s64(vshlq_n_s64(v89, 0x38uLL), 0x38uLL);
      v89.i64[0] = v81[24];
      v89.i64[1] = v81[48];
      v92 = vbicq_s8(v89, v91);
      v89.i64[0] = *(v81 - 24);
      v89.i64[1] = *v81;
      v78 = vaddq_s64(vorrq_s8(vandq_s8(v86, v91), vandq_s8(v92, v82)), v78);
      v79 = vaddq_s64(vorrq_s8(vandq_s8(v85, v90), vandq_s8(vbicq_s8(v89, v90), v82)), v79);
      v81 += 96;
      v80 += 4;
    }

    while (v80);
    v12 = vaddvq_s64(vaddq_s64(v79, v78));
    goto LABEL_36;
  }

  v14 = v10;
  do
  {
LABEL_36:
    v93 = v14[23];
    if ((v93 & 0x80u) != 0)
    {
      v93 = *(v14 + 1);
    }

    v12 += v93;
    v14 += 24;
  }

  while (v14 != &v10[24 * v11]);
  std::string::reserve(a2, v12);
  v94 = v10[23];
  if (v94 >= 0)
  {
    v95 = v10;
  }

  else
  {
    v95 = *v10;
  }

  if (v94 >= 0)
  {
    v96 = v10[23];
  }

  else
  {
    v96 = *(v10 + 1);
  }

  std::string::append(a2, v95, v96);
  if (v11 != 1)
  {
    v97 = v10 + 24;
    do
    {
      std::string::append(a2, "\n", 1uLL);
      v98 = v97[23];
      if (v98 >= 0)
      {
        v99 = v97;
      }

      else
      {
        v99 = *v97;
      }

      if (v98 >= 0)
      {
        v100 = v97[23];
      }

      else
      {
        v100 = *(v97 + 1);
      }

      std::string::append(a2, v99, v100);
      v97 += 24;
      v13 -= 24;
    }

    while (v13);
  }

LABEL_54:
  v101 = v115;
  if (v116)
  {
    v102 = v115 + 24 * v116 - 1;
    v103 = -24 * v116;
    v104 = v102;
    do
    {
      v105 = *v104;
      v104 -= 24;
      if (v105 < 0)
      {
        operator delete(*(v102 - 23));
      }

      v102 = v104;
      v103 += 24;
    }

    while (v103);
    v101 = v115;
  }

  if (v101 != v117)
  {
    free(v101);
  }
}

uint64_t llvm::ErrorList::convertToErrorCode(llvm::ErrorList *this)
{
  {
    llvm::ErrorList::convertToErrorCode();
  }

  return 1;
}

uint64_t llvm::inconvertibleErrorCode(llvm *this)
{
  {
    llvm::ErrorList::convertToErrorCode();
  }

  return 3;
}

uint64_t llvm::errorCodeToError@<X0>(llvm *this@<X0>, std::error_code a2@<0:X1, 8:X2>, void *a3@<X8>)
{
  if (this)
  {
    operator new();
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t llvm::errorToErrorCode(void **a1)
{
  v14.__val_ = 0;
  v14.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if ((*(*v2 + 48))(v2, &llvm::ErrorList::ID))
    {
      v3 = v2[1];
      v4 = v2[2];
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v11.__r_.__value_.__r.__words[0] = v5;
          v6 = *v3;
          *v3 = 0;
          if ((*(*v6 + 48))(v6, &llvm::ErrorInfoBase::ID))
          {
            *&v14.__val_ = (*(*v6 + 32))(v6);
            v14.__cat_ = v7;
            (*(*v6 + 8))(v6);
            v6 = 0;
          }

          v15 = v6;
          llvm::ErrorList::join(&v11, &v15, v12);
          v5 = v12[0];
          v12[0] = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (v11.__r_.__value_.__r.__words[0])
          {
            (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
          }

          ++v3;
        }

        while (v3 != v4);
      }
    }

    else
    {
      (*(*v2 + 48))(v2, &llvm::ErrorInfoBase::ID);
      *&v14.__val_ = (*(*v2 + 32))(v2);
      v14.__cat_ = v8;
    }

    (*(*v2 + 8))(v2);
  }

  {
    llvm::errorToErrorCode();
  }

  if (v14.__cat_ == &getErrorErrorCat(void)::ErrorErrorCat && v14.__val_ == 3)
  {
    std::error_code::message(&v11, &v14);
    v13 = 260;
    v12[0] = &v11;
    llvm::report_fatal_error(v12, 1);
  }

  return *&v14.__val_;
}

uint64_t llvm::StringError::StringError(uint64_t a1, llvm::formatv_object_base **a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F1A35D10;
  llvm::Twine::str(a2, a1 + 8);
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  return a1;
}

void llvm::StringError::log(const std::error_code *this, llvm::raw_ostream *a2)
{
  if (LOBYTE(this[3].__val_) == 1)
  {
    cat_high = SHIBYTE(this[1].__cat_);
    if (cat_high >= 0)
    {
      p_cat = &this->__cat_;
    }

    else
    {
      p_cat = this->__cat_;
    }

    if (cat_high >= 0)
    {
      v6 = HIBYTE(this[1].__cat_);
    }

    else
    {
      v6 = *&this[1].__val_;
    }

    llvm::raw_ostream::write(a2, p_cat, v6);
    return;
  }

  std::error_code::message(&v12, this + 2);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v7, size);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v9 = SHIBYTE(this[1].__cat_);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (!*&this[1].__val_)
    {
      return;
    }

    goto LABEL_23;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  v9 = SHIBYTE(this[1].__cat_);
  if (v9 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (!v9)
  {
    return;
  }

LABEL_23:
  std::operator+<char>();
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v12.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v10, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void llvm::ErrorInfoBase::message(llvm::ErrorInfoBase *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &unk_1F1A362A8;
  v10 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v3, 0, 0, 0);
  (*(*this + 16))(this, &v3);
  llvm::raw_ostream::~raw_ostream(&v3);
}

void llvm::ErrorList::~ErrorList(llvm::ErrorList *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1AC55A070);
}

void *llvm::ErrorList::log(void *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(a2 + 4) += 17;
    v5 = this[1];
    for (i = this[2]; v5 != i; ++v5)
    {
LABEL_7:
      while (1)
      {
        this = (*(**v5 + 16))(*v5, a2);
        v7 = *(a2 + 4);
        if (*(a2 + 3) == v7)
        {
          break;
        }

        *v7 = 10;
        ++*(a2 + 4);
        if (++v5 == i)
        {
          return this;
        }
      }

      this = llvm::raw_ostream::write(a2, "\n", 1uLL);
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "Multiple errors:\n", 0x11uLL);
    v5 = v3[1];
    i = v3[2];
    if (v5 != i)
    {
      goto LABEL_7;
    }
  }

  return this;
}

void llvm::ECError::log(llvm::ECError *this, llvm::raw_ostream *a2)
{
  std::error_code::message(&v5, (this + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void llvm::StringError::~StringError(void **this)
{
  *this = &unk_1F1A35D10;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F1A35D10;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1AC55A070);
}

void anonymous namespace::ErrorErrorCategory::~ErrorErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1AC55A070);
}

void anonymous namespace::ErrorErrorCategory::message(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 3)
  {
    operator new();
  }

  if (a1 == 2)
  {
    a2[23] = 22;
    strcpy(a2, "A file error occurred.");
  }

  else
  {
    a2[23] = 15;
    strcpy(a2, "Multiple errors");
  }
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::$_0>(void *a1, void *a2, uint64_t *a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = *a3;
    v9 = __p;
    (*(*v7 + 24))(__p, v7);
    v10 = *(v8 + 8);
    v11 = *v8;
    if (v10 >= *(v8 + 12))
    {
      if (v11 <= __p && v11 + 24 * v10 > __p)
      {
        v14 = __p - v11;
        llvm::SmallVectorTemplateBase<std::string,false>::grow(v8, v10 + 1);
        v11 = *v8;
        v9 = &v14[*v8];
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::string,false>::grow(v8, v10 + 1);
        v11 = *v8;
        v9 = __p;
      }
    }

    v12 = v11 + 24 * *(v8 + 8);
    v13 = *v9;
    *(v12 + 16) = v9[2];
    *v12 = v13;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    ++*(v8 + 8);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *a1 = 0;
    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::string,false>::grow(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v16);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 24 * v6;
    v8 = v4;
    do
    {
      v9 = *v5;
      v8[2] = v5[2];
      *v8 = v9;
      v8 += 3;
      v5[1] = 0;
      v5[2] = 0;
      *v5 = 0;
      v5 += 3;
      v7 -= 24;
    }

    while (v7);
    v5 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = &v5[3 * v10 - 1] + 7;
      v12 = -24 * v10;
      v13 = v11;
      do
      {
        v14 = *v13;
        v13 -= 24;
        if (v14 < 0)
        {
          operator delete(*(v11 - 23));
        }

        v11 = v13;
        v12 += 24;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v15 = v16;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v15;
}

uint64_t OUTLINED_FUNCTION_0_43(uint64_t a1, void *a2, void *a3)
{
}

void llvm::report_fatal_error(llvm *this, const llvm::Twine *a2, BOOL a3)
{
  v3 = 1;
  v6 = 1;
  if (*this)
  {
    v4 = this;
    v3 = 3;
  }

  v5 = v3;
  llvm::report_fatal_error(&v4, a2);
}

void llvm::report_fatal_error(llvm::formatv_object_base **a1, uint64_t a2)
{
  std::mutex::lock(&_MergedGlobals);
  v5 = _MergedGlobals_9;
  v4 = *algn_1EB29F488;
  std::mutex::unlock(&_MergedGlobals);
  if (v5)
  {
    llvm::Twine::str(a1, &__p);
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v10 = v5(v4, p_p, a2);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

LABEL_14:
    llvm::sys::RunInterruptHandlers(v10);
    if (a2)
    {
      abort();
    }

    exit(1);
  }

  v18 = &__p;
  __p = v21;
  v20 = xmmword_1A75DA830;
  v12 = 2;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_1F1A36338;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v6 = v15;
  if ((v14 - v15) > 0xB)
  {
    *(v15 + 8) = 540693071;
    *v6 = *"LLVM ERROR: ";
    v15 += 12;
    v7 = &v11;
    llvm::Twine::print(a1, &v11);
    v8 = v15;
    if (v14 != v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(&v11, "LLVM ERROR: ", 0xCuLL);
    llvm::Twine::print(a1, v7);
    v8 = v7[4];
    if (v7[3] != v8)
    {
LABEL_4:
      *v8 = 10;
      v7[4] = (v7[4] + 1);
      goto LABEL_12;
    }
  }

  llvm::raw_ostream::write(v7, "\n", 1uLL);
LABEL_12:
  write(2, *v18, v18[1]);
  llvm::raw_ostream::~raw_ostream(&v11);
  v10 = __p;
  if (__p != v21)
  {
    free(__p);
  }

  goto LABEL_14;
}

void llvm::report_bad_alloc_error(llvm *this, const char *a2)
{
  std::mutex::lock(&stru_1ED440540);
  v5 = qword_1EB29F490;
  v4 = *algn_1EB29F498;
  std::mutex::unlock(&stru_1ED440540);
  if (!v5)
  {
    write(2, "LLVM ERROR: out of memory\n", 0x1AuLL);
    v6 = strlen(this);
    write(2, this, v6);
    write(2, "\n", 1uLL);
    abort();
  }

  v5(v4, this, a2);
  __break(1u);
}

char *llvm::formatv_object_base::parseFormatString@<X0>(char *result@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  v3 = a3;
  *a3 = a3 + 2;
  a3[1] = 0x200000000;
  if (a2)
  {
    v81 = 0;
    do
    {
      v9 = result;
      v10 = a2;
      LOBYTE(v83) = 0;
      v87 = 0;
      if (*result != 123)
      {
        v30 = memchr(result, 123, a2);
        v3 = a3;
        v16 = 0;
        v21 = 0;
        v15 = 0;
        v22 = 0;
        v23 = 0;
        v26 = 0;
        v31 = v30 - v9;
        if (!v30)
        {
          v31 = -1;
        }

        if (v10 >= v31)
        {
          v24 = v31;
        }

        else
        {
          v24 = v10;
        }

        result = &v9[v24];
        a2 = v10 - v24;
        goto LABEL_37;
      }

      v11 = 1;
      do
      {
        if (a2 == v11)
        {
          v13 = -1;
          if (a2 != -1)
          {
            v13 = a2;
          }

          if (v13 >= 2)
          {
            goto LABEL_32;
          }

LABEL_13:
          v14 = memchr(result, 125, a2);
          v15 = 0;
          v16 = 0;
          v17 = 1;
          v18 = 2;
          if (!v14)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 64;
            v25 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
            v26 = 0;
            v27 = 1;
            a2 = 0;
            result = 0;
            v3 = a3;
            goto LABEL_38;
          }

          v19 = v14;
          v20 = v14 - v9;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 64;
          v25 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
          v26 = 0;
          v27 = 1;
          a2 = 0;
          result = 0;
          v3 = a3;
          if (v20 == -1)
          {
            goto LABEL_38;
          }

          if (v10 != 1)
          {
            v28 = memchr(v9 + 1, 123, v10 - 1);
            v29 = v28 - v9;
            if (!v28)
            {
              v29 = -1;
            }

            if (v29 < v20)
            {
              v16 = 0;
              v21 = 0;
              v15 = 0;
              v22 = 0;
              v23 = 0;
              v26 = 0;
              if (v10 >= v29)
              {
                v24 = v29;
              }

              else
              {
                v24 = v10;
              }

              result = &v9[v24];
              a2 = v10 - v24;
              v17 = 1;
              v18 = 2;
              v25 = v9;
              v27 = 1;
              v3 = a3;
              goto LABEL_38;
            }
          }

          if (v9 == v19)
          {
            v34 = 1;
          }

          else
          {
            v34 = v20;
          }

          if (v34 >= v10)
          {
            v34 = v10;
          }

          v35 = v34 - 1;
          if (v10 >= v20 + 1)
          {
            v36 = v20 + 1;
          }

          else
          {
            v36 = v10;
          }

          v90 = v9 + 1;
          v91 = v35;
          v18 = 2;
          first_not_of = llvm::StringRef::find_first_not_of(&v90, "{}", 2, 0);
          if (first_not_of >= v91)
          {
            v38 = v91;
          }

          else
          {
            v38 = first_not_of;
          }

          v39 = v91 - v38;
          v92 = &v90[v38];
          v93 = v91 - v38;
          last_not_of = llvm::StringRef::find_last_not_of(&v92, "{}", 2, 0xFFFFFFFFFFFFFFFFLL);
          if (last_not_of + 1 < v93)
          {
            v41 = last_not_of + 1;
          }

          else
          {
            v41 = v93;
          }

          v42 = v93 - v39 + v41;
          if (v93 < v42)
          {
            v42 = v93;
          }

          v88 = v92;
          v89 = v42;
          v43 = llvm::StringRef::find_first_not_of(&v88, " \t\n\v\f\r", 6, 0);
          if (v43 >= v89)
          {
            v44 = v89;
          }

          else
          {
            v44 = v43;
          }

          v45 = v89 - v44;
          v92 = &v88[v44];
          v93 = v89 - v44;
          v46 = llvm::StringRef::find_last_not_of(&v92, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
          if (v46 + 1 < v93)
          {
            v47 = v46 + 1;
          }

          else
          {
            v47 = v93;
          }

          v48 = v93 - v45 + v47;
          if (v93 < v48)
          {
            v48 = v93;
          }

          v88 = v92;
          v89 = v48;
          v92 = 0;
          v49 = llvm::consumeUnsignedInteger(&v88, 0, &v92);
          if (v92 >> 32)
          {
            v50 = -1;
          }

          else
          {
            v50 = v92;
          }

          if (v49)
          {
            v23 = -1;
          }

          else
          {
            v23 = v50;
          }

          v51 = llvm::StringRef::find_first_not_of(&v88, " \t\n\v\f\r", 6, 0);
          if (v51 >= v89)
          {
            v52 = v89;
          }

          else
          {
            v52 = v51;
          }

          v53 = v89 - v52;
          v92 = &v88[v52];
          v93 = v89 - v52;
          v54 = llvm::StringRef::find_last_not_of(&v92, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
          if (v54 + 1 < v93)
          {
            v55 = v54 + 1;
          }

          else
          {
            v55 = v93;
          }

          v56 = v93 - v53 + v55;
          if (v93 < v56)
          {
            v56 = v93;
          }

          v88 = v92;
          v89 = v56;
          if (!v56)
          {
            v22 = 0;
            v15 = 32;
            goto LABEL_100;
          }

          if (*v92 != 44)
          {
            v22 = 0;
            v15 = 32;
            v18 = 2;
            goto LABEL_100;
          }

          v15 = 32;
          v18 = 2;
          v88 = v92 + 1;
          v89 = v56 - 1;
          if (v56 == 1)
          {
            v22 = 0;
            goto LABEL_100;
          }

          if (v56 == 2)
          {
            goto LABEL_98;
          }

          v57 = v92 + 2;
          v58 = v92[2];
          switch(v58)
          {
            case '+':
              v18 = 2;
              break;
            case '-':
              v18 = 0;
              break;
            case '=':
              v18 = 1;
              break;
            default:
              v78 = v92[1];
              switch(v78)
              {
                case '+':
                  v18 = 2;
                  break;
                case '-':
                  v18 = 0;
                  break;
                case '=':
                  v18 = 1;
                  break;
                default:
                  v18 = 2;
                  v92 = 0;
                  if (llvm::consumeUnsignedInteger(&v88, 0, &v92))
                  {
LABEL_142:
                    v17 = 0;
                    v3 = a3;
LABEL_133:
                    v27 = 0;
                    result = &v9[v36];
                    a2 = v10 - v36;
                    LOWORD(v90) = v92;
                    BYTE2(v90) = BYTE2(v92);
                    v26 = 1;
                    goto LABEL_38;
                  }

LABEL_99:
                  v22 = v92;
                  if (v92 >> 32)
                  {
                    goto LABEL_142;
                  }

LABEL_100:
                  v60 = llvm::StringRef::find_first_not_of(&v88, " \t\n\v\f\r", 6, 0);
                  if (v60 >= v89)
                  {
                    v61 = v89;
                  }

                  else
                  {
                    v61 = v60;
                  }

                  v62 = v89 - v61;
                  v92 = &v88[v61];
                  v93 = v89 - v61;
                  v63 = llvm::StringRef::find_last_not_of(&v92, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                  if (v63 + 1 < v93)
                  {
                    v64 = v63 + 1;
                  }

                  else
                  {
                    v64 = v93;
                  }

                  v65 = v93 - v62 + v64;
                  if (v93 < v65)
                  {
                    v65 = v93;
                  }

                  v88 = v92;
                  v89 = v65;
                  if (v65 && *v92 == 58)
                  {
                    v88 = v92 + 1;
                    v89 = v65 - 1;
                    v66 = llvm::StringRef::find_first_not_of(&v88, " \t\n\v\f\r", 6, 0);
                    if (v66 >= v89)
                    {
                      v67 = v89;
                    }

                    else
                    {
                      v67 = v66;
                    }

                    v68 = v89 - v67;
                    v92 = &v88[v67];
                    v93 = v89 - v67;
                    v69 = llvm::StringRef::find_last_not_of(&v92, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                    v21 = v92;
                    if (v69 + 1 < v93)
                    {
                      v70 = v69 + 1;
                    }

                    else
                    {
                      v70 = v93;
                    }

                    v71 = v93 - v68 + v70;
                    if (v93 >= v71)
                    {
                      v16 = v71;
                    }

                    else
                    {
                      v16 = v93;
                    }

                    v88 = 0;
                    v89 = 0;
                  }

                  else
                  {
                    v16 = 0;
                    v21 = 0;
                  }

                  v72 = llvm::StringRef::find_first_not_of(&v88, " \t\n\v\f\r", 6, 0);
                  if (v72 >= v89)
                  {
                    v73 = v89;
                  }

                  else
                  {
                    v73 = v72;
                  }

                  v74 = v89 - v73;
                  v92 = &v88[v73];
                  v93 = v89 - v73;
                  v75 = llvm::StringRef::find_last_not_of(&v92, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                  v24 = v93;
                  if (v75 + 1 < v93)
                  {
                    v76 = v75 + 1;
                  }

                  else
                  {
                    v76 = v93;
                  }

                  v77 = v93 - v74 + v76;
                  if (v93 < v77)
                  {
                    v77 = v93;
                  }

                  if (v77)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    v17 = 1;
                    v25 = v90;
                    v24 = v91;
                  }

                  v3 = a3;
                  goto LABEL_133;
              }

              v59 = -2;
LABEL_97:
              v88 = v57;
              v89 = v59 + v56;
LABEL_98:
              v92 = 0;
              if (llvm::consumeUnsignedInteger(&v88, 0, &v92))
              {
                goto LABEL_142;
              }

              goto LABEL_99;
          }

          v15 = v92[1];
          v57 = v92 + 3;
          v59 = -3;
          goto LABEL_97;
        }

        v12 = result[v11++];
      }

      while (v12 == 123);
      v13 = v11 - 1;
      if (a2 < v13)
      {
        v13 = a2;
      }

      if (v13 < 2)
      {
        goto LABEL_13;
      }

LABEL_32:
      v16 = 0;
      v21 = 0;
      v15 = 0;
      v22 = 0;
      v23 = 0;
      v26 = 0;
      v24 = v13 >> 1;
      if (a2 < v13 >> 1)
      {
        v24 = a2;
      }

      v32 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < v32)
      {
        v32 = a2;
      }

      result += v32;
      a2 -= v32;
LABEL_37:
      v17 = 1;
      v18 = 2;
      v25 = v9;
      v27 = 1;
LABEL_38:
      LODWORD(v83) = v27;
      *(&v83 + 1) = v25;
      *&v84 = v24;
      *(&v84 + 1) = __PAIR64__(v22, v23);
      LODWORD(v85) = v18;
      BYTE4(v85) = v15;
      *(&v85 + 5) = v90;
      BYTE7(v85) = BYTE2(v90);
      *(&v85 + 1) = v21;
      v86 = v16;
      v87 = v17;
      if (v17)
      {
        if (v23 == -1)
        {
          v33 = v26;
        }

        else
        {
          v33 = 0;
        }

        if (v33 == 1)
        {
          DWORD2(v84) = v81++;
        }

        v4 = *(v3 + 2);
        if (v4 >= *(v3 + 3))
        {
          v79 = a2;
          v80 = result;
          llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>::growAndEmplaceBack<llvm::ReplacementItem&>(v3, &v83);
          v3 = a3;
          a2 = v79;
          result = v80;
        }

        else
        {
          v5 = *v3 + 56 * v4;
          v6 = v83;
          v7 = v84;
          v8 = v85;
          *(v5 + 48) = v86;
          *(v5 + 16) = v7;
          *(v5 + 32) = v8;
          *v5 = v6;
          ++*(v3 + 2);
        }
      }
    }

    while (a2);
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>::growAndEmplaceBack<llvm::ReplacementItem&>(unint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v2;
  v14[2] = *(a2 + 32);
  v15 = *(a2 + 48);
  v3 = *(a1 + 2);
  v4 = *a1;
  v5 = v14;
  if (v3 >= *(a1 + 3))
  {
    if (v4 <= v14 && v4 + 56 * v3 > v14)
    {
      v12 = v14 - v4;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v3 + 1, 56);
      a1 = v13;
      v4 = *v13;
      v5 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v3 + 1, 56);
      a1 = v11;
      v4 = *v11;
      v5 = v14;
    }
  }

  v6 = v4 + 56 * *(a1 + 2);
  v7 = *v5;
  v8 = *(v5 + 1);
  v9 = *(v5 + 2);
  *(v6 + 48) = *(v5 + 6);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  LODWORD(v6) = *(a1 + 2) + 1;
  *(a1 + 2) = v6;
  return *a1 + 56 * v6 - 56;
}

unsigned int *llvm::IntervalMapImpl::Path::replaceRoot(unsigned int *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *result;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 12) = a4;
  v5 = *result;
  v6 = *(**result + 8 * *(*result + 12)) & 0xFFFFFFFFFFFFFFC0;
  v7 = (a4 & 0xFFFFFFFF00000000 | *(**result + 8 * *(*result + 12)) & 0x3FLL) + 1;
  v8 = result[2];
  v9 = result[3];
  if (v8 == 1)
  {
    if (v9 <= 1)
    {
      v15 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8 + 1, 16);
      result = v15;
      v10 = v15[2];
      v5 = *v15;
    }

    else
    {
      v10 = 1;
    }

    v11 = &v5[2 * v10];
    *v11 = v6;
    v11[1] = v7;
    ++result[2];
  }

  else
  {
    if (v8 >= v9)
    {
      v16 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8 + 1, 16);
      result = v16;
      v5 = *v16;
      v8 = v16[2];
    }

    *&v5[2 * v8] = *&v5[2 * v8 - 2];
    v12 = result[2];
    v13 = *result + 16 * v12 - 16;
    if (v13 != v5 + 2)
    {
      v14 = result;
      memmove(v5 + 4, v5 + 2, v13 - (v5 + 2));
      result = v14;
      LODWORD(v12) = v14[2];
    }

    result[2] = v12 + 1;
    v5[2] = v6;
    v5[3] = v7;
  }

  return result;
}

uint64_t llvm::IntervalMapImpl::Path::getLeftSibling(llvm::IntervalMapImpl::Path *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *this;
  v3 = -1;
  while (1)
  {
    v4 = (a2 + v3);
    if (!(a2 + v3))
    {
      break;
    }

    --v3;
    if (*(v2 + 16 * v4 + 12))
    {
      v5 = a2 + v3 + 2;
      v2 += 16 * v4;
      v6 = *(v2 + 12);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  v5 = 1;
  v6 = *(v2 + 12);
  if (!v6)
  {
    return 0;
  }

LABEL_8:
  result = *(*v2 + 8 * (v6 - 1));
  if (v5 != a2)
  {
    v8 = a2 - v5;
    do
    {
      result = *((result & 0xFFFFFFFFFFFFFFC0) + 8 * (result & 0x3F));
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *llvm::IntervalMapImpl::Path::moveLeft(unsigned int *this, unsigned int a2)
{
  v2 = this[2];
  if (v2 && *(*this + 12) < *(*this + 8))
  {
    v3 = a2;
    do
    {
      --v3;
    }

    while (!*(*this + 16 * v3 + 12));
  }

  else if (v2 - 1 >= a2 || (v4 = a2 + 1, v2 == v4))
  {
    v3 = 0;
  }

  else
  {
    if (v2 <= v4)
    {
      v5 = a2;
      v6 = v4 - v2;
      v7 = this[2];
      v8 = this;
      if (this[3] < v4)
      {
        v16 = this[2];
        v17 = a2 + 1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(this, this + 4, v4, 16);
        v2 = v16;
        v4 = v17;
        this = v8;
        v7 = v8[2];
      }

      bzero((*this + 16 * v7), 16 * (v4 - v2));
      this = v8;
      LODWORD(v4) = v8[2] + v6;
      a2 = v5;
    }

    v3 = 0;
    this[2] = v4;
  }

  v9 = *this;
  v10 = *this + 16 * v3;
  v11 = *(v10 + 12) - 1;
  *(v10 + 12) = v11;
  v12 = *(*v10 + 8 * v11);
  v13 = v3 + 1;
  if (v3 + 1 != a2)
  {
    do
    {
      v14 = *this + 16 * v13;
      *v14 = v12 & 0xFFFFFFFFFFFFFFC0;
      *(v14 + 8) = (v12 & 0x3F) + 1;
      *(v14 + 12) = v12 & 0x3F;
      v12 = *((v12 & 0xFFFFFFFFFFFFFFC0) + 8 * (v12 & 0x3F));
      ++v13;
    }

    while (a2 != v13);
    v9 = *this;
  }

  v15 = v9 + 16 * a2;
  *v15 = v12 & 0xFFFFFFFFFFFFFFC0;
  *(v15 + 8) = (v12 & 0x3F) + 1;
  *(v15 + 12) = v12 & 0x3F;
  return this;
}

uint64_t llvm::IntervalMapImpl::Path::getRightSibling(llvm::IntervalMapImpl::Path *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = *this;
  v4 = (*this + 16 * a2 - 4);
  while (a2 - 1 != v2)
  {
    v5 = *v4;
    v6 = *(v4 - 1) - 1;
    ++v2;
    v4 -= 4;
    if (v5 != v6)
    {
      v7 = a2 - v2;
      v8 = a2 - v2 + 1;
      result = v7;
      goto LABEL_9;
    }
  }

  result = 0;
  if (*(v3 + 12) == *(v3 + 8) - 1)
  {
    return result;
  }

  v8 = 1;
LABEL_9:
  result = *(*(v3 + 16 * result) + 8 * (*(v3 + 16 * result + 12) + 1));
  if (v8 != a2)
  {
    v10 = a2 - v8;
    do
    {
      result = *(result & 0xFFFFFFFFFFFFFFC0);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t *llvm::IntervalMapImpl::Path::moveRight(uint64_t *this, unsigned int a2)
{
  v2 = *this;
  v3 = a2 - 1;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v8 = *(v2 + 16 * v3 + 8);
    v7 = *(v2 + 16 * v3 + 12);
    ++v4;
    --v3;
    if (v7 != v8 - 1)
    {
      v9 = v2 + 16 * v6;
      v10 = v7 + 1;
      *(v9 + 12) = v10;
      if (v10 == v8)
      {
        return this;
      }

      goto LABEL_7;
    }
  }

  v11 = *(v2 + 8);
  v9 = *this;
  v10 = *(v2 + 12) + 1;
  *(v2 + 12) = v10;
  if (v10 == v11)
  {
    return this;
  }

LABEL_7:
  v12 = *(*v9 + 8 * v10);
  if (v5 != 1)
  {
    v13 = v5 - 1;
    v14 = v6 + 1;
    do
    {
      v15 = *this + 16 * v14;
      *v15 = v12 & 0xFFFFFFFFFFFFFFC0;
      *(v15 + 8) = (v12 & 0x3F) + 1;
      *(v15 + 12) = 0;
      ++v14;
      v12 = *(v12 & 0xFFFFFFFFFFFFFFC0);
      --v13;
    }

    while (v13);
    v2 = *this;
  }

  v16 = (v2 + 16 * a2);
  *v16 = v12 & 0xFFFFFFFFFFFFFFC0;
  v16[1] = (v12 & 0x3F) + 1;
  return this;
}

unint64_t llvm::IntervalMapImpl::distribute(llvm::IntervalMapImpl *this, int a2, unsigned int a3, unsigned int a4, const unsigned int *a5, unsigned int *a6, int a7)
{
  if (!this)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  LODWORD(v9) = 0;
  v10 = this;
  v11 = (a7 + a2) / this;
  v12 = (a7 + a2) % this;
  do
  {
    if (v7 >= v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + 1;
    }

    a5[v7] = v13;
    v14 = a6 - v8;
    v8 += v13;
    if (this == v10 && v8 > a6)
    {
      LODWORD(this) = v7;
      v9 = v14;
    }

    else
    {
      v9 = v9;
    }

    ++v7;
  }

  while (v10 != v7);
  if (a7)
  {
    --a5[this];
  }

  return this | (v9 << 32);
}

void llvm::ManagedStaticBase::RegisterManagedStatic(llvm::ManagedStaticBase *this, void *(*a2)(void), void (*a3)(void *))
{
  if (atomic_load_explicit(byte_1ED440838, memory_order_acquire))
  {
    std::recursive_mutex::lock(&stru_1ED440840);
    if (*this)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic();
  std::recursive_mutex::lock(&stru_1ED440840);
  if (!*this)
  {
LABEL_3:
    atomic_store(a2(), this);
    v6 = _MergedGlobals_8;
    *(this + 1) = a3;
    *(this + 2) = v6;
    _MergedGlobals_8 = this;
  }

LABEL_4:

  std::recursive_mutex::unlock(&stru_1ED440840);
}

char *llvm::MemoryBuffer::getMemBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v10 = 261;
  v9[0] = a3;
  v9[1] = a4;
  result = operator new(24, v9);
  *result = &unk_1F1A35F20;
  *(result + 1) = a1;
  *(result + 2) = a1 + a2;
  *a5 = result;
  return result;
}

char *operator new(uint64_t a1, uint64_t a2)
{
  v15[32] = *MEMORY[0x1E69E9840];
  v13 = v15;
  v14 = xmmword_1A75A2970;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(a2 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = strlen(*a2);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v13);
    v6 = v13;
    v7 = v14;
    goto LABEL_15;
  }

  v4 = *a2;
  v5 = *(*a2 + 23);
  if (v5 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = v4[23];
  }

  else
  {
    v7 = *(v4 + 1);
  }

LABEL_15:
  v8 = malloc_type_malloc(a1 + v7 + 9, 0x100004000313F17uLL);
  if (!v8)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v9 = v8;
  v10 = &v8[a1];
  *v10 = v7;
  v11 = v10 + 1;
  if (v7)
  {
    memcpy(v11, v6, v7);
  }

  *(v11 + v7) = 0;
  if (v13 != v15)
  {
    free(v13);
  }

  return v9;
}

void llvm::MemoryBuffer::getMemBufferCopy(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, void *a5@<X8>)
{
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(a2, a3, a4, &v9);
  v8 = v9;
  if (v9 && a2)
  {
    memmove(*(v9 + 8), a1, a2);
  }

  *a5 = v8;
}

void *getFileAux<llvm::MemoryBuffer>(uint64_t a1, const char **a2, size_t a3, off_t a4, int a5, int a6, char a7, __int16 a8)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  llvm::sys::fs::openNativeFileForRead(a2, v15, 0, &v22);
  if ((v23 & 1) == 0)
  {
    v20 = v22;
    getOpenFileImpl<llvm::MemoryBuffer>(a1, v22, a2, 0xFFFFFFFFFFFFFFFFLL, a3, a4, a6, a7, a8);
    result = llvm::sys::fs::closeFile(&v20, v19);
    if ((v23 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v21 = v22;
  v22 = 0;
  v16 = llvm::errorToErrorCode(&v21);
  *(a1 + 16) |= 1u;
  *a1 = v16;
  *(a1 + 8) = v17;
  result = v21;
  if (v21)
  {
    result = (*(*v21 + 8))(v21);
  }

  if (v23)
  {
LABEL_10:
    result = v22;
    v22 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::WritableMemoryBuffer::getNewUninitMemBuffer(size_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, void *a4@<X8>)
{
  v22[32] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v20 = v22;
  v21 = xmmword_1A75A2970;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v8 = *(a2 + 32);
  if (v8 > 4)
  {
    if (v8 - 5 < 2)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8 == 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  if (v8 == 3)
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = strlen(*a2);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

  if (v8 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v20);
    v11 = v20;
    v12 = v21;
    goto LABEL_15;
  }

  v9 = *a2;
  v10 = *(*a2 + 23);
  if (v10 >= 0)
  {
    v11 = *a2;
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(*a2 + 23);
  }

  else
  {
    v12 = *(v9 + 1);
  }

LABEL_15:
  v13 = v12 + 33;
  if ((a3 & 0x100) != 0)
  {
    v14 = 1 << v7;
  }

  else
  {
    v14 = 16;
  }

  v15 = a1 + v14 + v13 + 1;
  if (v15 <= a1)
  {
    v17 = 0;
  }

  else
  {
    v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
    v17 = v16;
    if (v16)
    {
      v16[3] = v12;
      v18 = (v16 + 4);
      if (v12)
      {
        memcpy(v16 + 4, v11, v12);
      }

      v18[v12] = 0;
      v19 = (v17 + v13 + v14 - 1) & -v14;
      *(v19 + a1) = 0;
      *v17 = &unk_1F1A35F88;
      v17[1] = v19;
      v17[2] = v19 + a1;
    }
  }

  *a4 = v17;
  if (v20 != v22)
  {
    free(v20);
  }
}

void getOpenFileImpl<llvm::MemoryBuffer>(uint64_t a1, const llvm::Twine *a2, uint64_t a3, size_t a4, size_t a5, off_t a6, int a7, char a8, __int16 a9)
{
  v10 = a5;
  v50 = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(byte_1ED440890, memory_order_acquire))
  {
    if (a5 != -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v41 = a7;
    v39 = a8;
    v40 = a4;
    getOpenFileImpl<llvm::MemoryBuffer>();
    a4 = v40;
    a8 = v39;
    a7 = v41;
    if (v10 != -1)
    {
      goto LABEL_4;
    }
  }

  v10 = a4;
  if (a4 == -1)
  {
    v24 = a8;
    v25 = a7;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v47 = 0xFFFFLL;
    v48 = 0;
    v49 = 0;
    v26 = llvm::sys::fs::status(a2, &v45);
    if (v26)
    {
      *(a1 + 16) |= 1u;
      *a1 = v26;
      *(a1 + 8) = v27;
      return;
    }

    if (*&v46[24] != 2 && *&v46[24] != 5)
    {
      getMemoryBufferForStream(v43, a2, a3);
      v36 = *(a1 + 16);
      if (v44)
      {
        v37 = v36 | 1;
        v38 = v43[0];
        *(a1 + 8) = v43[1];
      }

      else
      {
        v37 = v36 & 0xFE;
        v38 = v43[0];
      }

      *(a1 + 16) = v37;
      *a1 = v38;
      return;
    }

    v10 = *&v46[16];
    a4 = *&v46[16];
    a7 = v25;
    a8 = v24;
  }

LABEL_4:
  v14 = dword_1ED440884;
  if (a7 && (a8 & 1) != 0)
  {
    goto LABEL_29;
  }

  v16 = (v10 & 0xFFFFFFFFFFFFC000) != 0 && v10 >= dword_1ED440884;
  if (!v16 || a7 == 0)
  {
    if (v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a4 == -1)
    {
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      v47 = 0xFFFFLL;
      v48 = 0;
      v49 = 0;
      if (llvm::sys::fs::status(a2, &v45))
      {
        goto LABEL_29;
      }

      a4 = *&v46[16];
      if (v10 + a6 != *&v46[16])
      {
        goto LABEL_29;
      }
    }

    else if (v10 + a6 != a4)
    {
      goto LABEL_29;
    }

    if ((a4 & (v14 - 1)) != 0)
    {
LABEL_22:
      LODWORD(v45) = 0;
      *(&v45 + 1) = std::system_category();
      v18 = operator new(48, a3);
      *v18 = &unk_1F1A35FD8;
      PageSizeEstimate = llvm::sys::Process::getPageSizeEstimate(v18);
      v20 = (PageSizeEstimate - 1) & a6;
      v21 = llvm::sys::Process::getPageSizeEstimate(PageSizeEstimate);
      llvm::sys::fs::mapped_file_region::mapped_file_region((v18 + 24), a2, 0, v20 + v10, -v21 & a6, &v45);
      if (!v45)
      {
        SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((v18 + 24));
        v23 = SrcSymbol + ((llvm::sys::Process::getPageSizeEstimate(SrcSymbol) - 1) & a6);
        *(v18 + 1) = v23;
        *(v18 + 2) = &v23[v10];
        if (!v45)
        {
          *(a1 + 16) &= ~1u;
          *a1 = v18;
          return;
        }
      }

      (*(*v18 + 8))(v18);
    }
  }

LABEL_29:
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(v10, a3, a9, v43);
  if (!v43[0])
  {
    v35 = std::generic_category();
    *(a1 + 16) |= 1u;
    *a1 = 12;
    *(a1 + 8) = v35;
    return;
  }

  v28 = *(v43[0] + 8);
  v29 = *(v43[0] + 16) - v28;
  do
  {
    if (!v29)
    {
      goto LABEL_46;
    }

    llvm::sys::fs::readNativeFileSlice(a2, v28, v29, a6, &v45);
    if (BYTE8(v45))
    {
      v30 = v45;
      *&v45 = 0;
      v42 = v30;
      v31 = llvm::errorToErrorCode(&v42);
      *(a1 + 16) |= 1u;
      *a1 = v31;
      *(a1 + 8) = v32;
      if (v42)
      {
        (*(*v42 + 8))(v42);
        v33 = 1;
        if ((BYTE8(v45) & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v33 = 1;
        if ((BYTE8(v45) & 1) == 0)
        {
          continue;
        }
      }
    }

    else if (v45)
    {
      v33 = 0;
      v29 -= v45;
      v28 += v45;
      a6 += v45;
      if ((BYTE8(v45) & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      bzero(v28, v29);
      v33 = 3;
      if ((BYTE8(v45) & 1) == 0)
      {
        continue;
      }
    }

    v34 = v45;
    *&v45 = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }
  }

  while (!v33);
  if (v33 == 3)
  {
LABEL_46:
    *(a1 + 16) &= ~1u;
    *a1 = v43[0];
    return;
  }

  if (v43[0])
  {
    (*(*v43[0] + 8))(v43[0]);
  }
}

void getMemoryBufferForStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v19[2048] = *MEMORY[0x1E69E9840];
  v17 = v19;
  v18 = xmmword_1A76019A0;
  llvm::sys::fs::readNativeFileToEOF(v7, &v17, 0x4000uLL, &v16);
  if (v16)
  {
    v15 = v16;
    v16 = 0;
    v8 = llvm::errorToErrorCode(&v15);
    *(v6 + 16) |= 1u;
    *v6 = v8;
    *(v6 + 8) = v9;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    if (v16)
    {
      (*(*v16 + 8))(v16);
      v10 = v17;
      if (v17 == v19)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v10 = v17;
    if (v17 == v19)
    {
      return;
    }

    goto LABEL_12;
  }

  v11 = v17;
  v12 = v18;
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(v18, v5, 0, &v16);
  v13 = v16;
  if (v16)
  {
    if (v12)
    {
      memmove(*(v16 + 8), v11, v12);
    }

    *(v6 + 16) &= ~1u;
    *v6 = v13;
    goto LABEL_11;
  }

  v14 = std::generic_category();
  *(v6 + 16) |= 1u;
  *v6 = 12;
  *(v6 + 8) = v14;
  v10 = v17;
  if (v17 == v19)
  {
    return;
  }

LABEL_12:
  free(v10);
}

uint64_t llvm::sys::Process::getPageSizeEstimate(llvm::sys::Process *this)
{
  v8 = *MEMORY[0x1E69E9840];
  llvm::sys::Process::getPageSize(&v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  v1 = v6;
  v6 = 0;
  v4 = v1;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v4, &v5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v7)
  {
    v2 = v6;
    v6 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return 4096;
}

void *anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_1F1A35FD8;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));
  return a1;
}

void anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_1F1A35FD8;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));

  free(a1);
}

llvm::MemoryBufferRef *llvm::MemoryBufferRef::MemoryBufferRef(llvm::MemoryBufferRef *this, const llvm::MemoryBuffer *a2)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 2) - v3;
  *this = v3;
  *(this + 1) = v4;
  *(this + 2) = (*(*a2 + 16))(a2);
  *(this + 3) = v5;
  return this;
}

void *llvm::write_integer(llvm::raw_ostream *a1, unsigned int a2, unint64_t a3, int a4)
{
  return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, 0);
}

{
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, v4);
}

void *write_unsigned<unsigned long>(llvm::raw_ostream *this, unint64_t a2, unint64_t a3, int a4, int a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!HIDWORD(a2))
  {

    return write_unsigned_impl<unsigned int>(this, a2, a3, a4, a5);
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v24[v10-- + 127] = (a2 % 0xA) | 0x30;
    v9 += 0x100000000;
    v11 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v11);
  v12 = v9 >> 32;
  if (!a5)
  {
LABEL_10:
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v13 = *(this + 4);
  if (v13 < *(this + 3))
  {
    *(this + 4) = v13 + 1;
    *v13 = 45;
    goto LABEL_10;
  }

  llvm::raw_ostream::write(this, 45);
  if (a4 != 1)
  {
LABEL_11:
    if (v12 < a3)
    {
      v14 = v12;
      do
      {
        while (1)
        {
          v15 = *(this + 4);
          if (v15 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v15 + 1;
          *v15 = 48;
          if (++v14 >= a3)
          {
            goto LABEL_16;
          }
        }

        llvm::raw_ostream::write(this, 48);
        ++v14;
      }

      while (v14 < a3);
    }
  }

LABEL_16:
  v16 = &v25 - v12;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v12, v12);
  }

  v17 = (v12 - 1) % 3;
  v18 = v17 + 1;
  v19 = v12 - (v17 + 1);
  if (v12 >= v17 + 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v12;
  }

  result = llvm::raw_ostream::write(this, v16, v20);
  if (v19)
  {
    v21 = &v16[v18];
    v22 = -3 * ((-v10 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

void *llvm::write_integer(llvm::raw_ostream *a1, int64_t a2, unint64_t a3, int a4)
{
  if (a2 < 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned<unsigned long>(a1, a2, a3, a4, v4);
}

void *llvm::write_hex(llvm::raw_ostream *a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v11[6] = v6;
  v11[7] = v6;
  v11[4] = v6;
  v11[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v11[2] = v6;
  v11[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v11[0] = v6;
  v11[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v11[0]) = 120;
  }

  if (a2)
  {
    v8 = &v11[-1] + v7 + 15;
    do
    {
      *v8-- = llvm::hexdigit(unsigned int,BOOL)::LUT[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  return llvm::raw_ostream::write(a1, v11, v7);
}

void llvm::write_double(llvm::raw_ostream *this, unsigned int a2, unint64_t a3, char a4, double a5)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = 2;
  if (a2 < 2)
  {
    v6 = 6;
  }

  if ((a4 & 1) == 0)
  {
    a3 = v6;
  }

  if (fabs(a5) != INFINITY)
  {
    v35 = v37;
    v36 = xmmword_1A75D94D0;
    if (a2 == 1)
    {
      v13 = 69;
    }

    else
    {
      v13 = 102;
    }

    if (a2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 101;
    }

    v27 = 2;
    v31 = 0;
    v32 = 1;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v26 = &unk_1F1A36338;
    v33 = &v35;
    llvm::raw_ostream::SetBufferAndMode(&v26, 0, 0, 0);
    if ((v29 - v30) > 1)
    {
      *v30++ = 11813;
      v16 = llvm::raw_ostream::operator<<(&v26, a3);
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
LABEL_25:
        llvm::raw_ostream::write(v16, v14);
        if (a2 != 3)
        {
LABEL_26:
          v18 = v36;
          if ((v36 + 1) > *(&v36 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v35, v37, v36 + 1, 1);
            v18 = v36;
          }

          v35[v18] = 0;
          snprintf(__str, 0x20uLL, v35, *&a5, &unk_1F1A36028, v35, *&a5);
          v19 = strlen(__str);
          v20 = *(this + 4);
          if (v19 > *(this + 3) - v20)
          {
            llvm::raw_ostream::write(this, __str, v19);
            llvm::raw_ostream::~raw_ostream(&v26);
            v21 = v35;
            if (v35 == v37)
            {
              return;
            }

            goto LABEL_46;
          }

          if (v19)
          {
            memcpy(v20, __str, v19);
            *(this + 4) += v19;
            llvm::raw_ostream::~raw_ostream(&v26);
            v21 = v35;
            if (v35 == v37)
            {
              return;
            }

            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_34:
        v22 = a5 * 100.0;
        v23 = v36;
        if ((v36 + 1) > *(&v36 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v35, v37, v36 + 1, 1);
          v23 = v36;
        }

        v35[v23] = 0;
        snprintf(__str, 0x20uLL, v35, *&v22, &unk_1F1A36028, v35, *&v22);
        v24 = strlen(__str);
        v25 = *(this + 4);
        if (v24 <= *(this + 3) - v25)
        {
          if (v24)
          {
            memcpy(v25, __str, v24);
            v25 = (*(this + 4) + v24);
            *(this + 4) = v25;
          }
        }

        else
        {
          llvm::raw_ostream::write(this, __str, v24);
          v25 = *(this + 4);
        }

        if (v25 >= *(this + 3))
        {
          llvm::raw_ostream::write(this, 37);
          llvm::raw_ostream::~raw_ostream(&v26);
          v21 = v35;
          if (v35 == v37)
          {
            return;
          }

LABEL_46:
          free(v21);
          return;
        }

        *(this + 4) = v25 + 1;
        *v25 = 37;
LABEL_45:
        llvm::raw_ostream::~raw_ostream(&v26);
        v21 = v35;
        if (v35 == v37)
        {
          return;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v15 = llvm::raw_ostream::write(&v26, "%.", 2uLL);
      v16 = llvm::raw_ostream::operator<<(v15, a3);
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
        goto LABEL_25;
      }
    }

    *(v16 + 4) = v17 + 1;
    *v17 = v14;
    if (a2 != 3)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (a5 >= 0.0)
  {
    v9 = "INF";
  }

  else
  {
    v9 = "-INF";
  }

  if (a5 >= 0.0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v11 = *(this + 4);
  if (v10 <= *(this + 3) - v11)
  {
    memcpy(v11, v9, v10);
    *(this + 4) += v10;
  }

  else
  {

    llvm::raw_ostream::write(this, v9, v10);
  }
}

void *write_unsigned_impl<unsigned int>(llvm::raw_ostream *this, unsigned int a2, unint64_t a3, int a4, int a5)
{
  v8 = 0;
  v9 = 0;
  v25 = *MEMORY[0x1E69E9840];
  do
  {
    v24[v9-- + 127] = (a2 % 0xA) | 0x30;
    v8 += 0x100000000;
    v10 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v10);
  v11 = v8 >> 32;
  if (a5)
  {
    v12 = *(this + 4);
    if (v12 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 45);
      if (a4 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    *(this + 4) = v12 + 1;
    *v12 = 45;
  }

  if (a4 == 1)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v11 < a3)
  {
    v13 = v11;
    do
    {
      while (1)
      {
        v14 = *(this + 4);
        if (v14 >= *(this + 3))
        {
          break;
        }

        *(this + 4) = v14 + 1;
        *v14 = 48;
        if (++v13 >= a3)
        {
          goto LABEL_12;
        }
      }

      llvm::raw_ostream::write(this, 48);
      ++v13;
    }

    while (v13 < a3);
  }

LABEL_12:
  v15 = &v25 - v11;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v11, v11);
  }

  v16 = (v11 - 1) % 3;
  v17 = v16 + 1;
  v18 = v11 - (v16 + 1);
  if (v11 >= v16 + 1)
  {
    v19 = v16 + 1;
  }

  else
  {
    v19 = v11;
  }

  result = llvm::raw_ostream::write(this, v15, v19);
  if (v18)
  {
    v21 = &v15[v17];
    v22 = -3 * ((-v9 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

uint64_t llvm::PrettyStackTraceEntry::PrettyStackTraceEntry(uint64_t a1, int a2)
{
  *a1 = &unk_1F1A36060;
  *(a1 + 8) = a2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }

  v8 = PrettyStackTraceHead();
  *(a1 + 16) = *v8;
  *v8 = a1;
  return a1;
}

void llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(llvm::PrettyStackTraceEntry *this)
{
  *this = &unk_1F1A36060;
  v1 = PrettyStackTraceHead();
  *v1 = v2;
  v3 = GlobalSigInfoGenerationCounter;
  v4 = ThreadLocalSigInfoGenerationCounter();
  if (*v4)
  {
    v5 = *v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = llvm::errs(v4);
    PrintCurStackTrace(v7);
    *v6 = v3;
  }
}

llvm::PrettyStackTraceFormat *llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(llvm::PrettyStackTraceFormat *this, const char *a2, ...)
{
  va_start(va, a2);
  *this = &unk_1F1A36060;
  *(this + 2) = 0;
  v4 = GlobalSigInfoGenerationCounter;
  v5 = ThreadLocalSigInfoGenerationCounter();
  if (*v5)
  {
    v6 = *v5 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = llvm::errs(v5);
    PrintCurStackTrace(v8);
    *v7 = v4;
  }

  v9 = PrettyStackTraceHead();
  *(this + 2) = *v9;
  *v9 = this;
  *(this + 3) = this + 48;
  v10 = (this + 24);
  *this = &unk_1F1A36088;
  *(this + 2) = xmmword_1A75A2980;
  v11 = vsnprintf(0, 0, a2, va);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = (v11 + 1);
    v13 = *(this + 4);
    if (v13 != v12)
    {
      if (v13 <= v12)
      {
        if (*(this + 5) < v12)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(this + 24, this + 48, v12, 1);
          v13 = *(this + 4);
        }

        if (v12 != v13)
        {
          bzero(&(*v10)[v13], v12 - v13);
        }
      }

      *(this + 4) = v12;
    }

    vsnprintf(*v10, v12, a2, va);
  }

  return this;
}

llvm::raw_ostream *llvm::PrettyStackTraceFormat::print(llvm::PrettyStackTraceFormat *this, llvm::raw_ostream *a2)
{
  result = llvm::raw_ostream::write(a2, *(this + 3), *(this + 4));
  v3 = *(result + 4);
  if (*(result + 3) == v3)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v3 = 10;
    ++*(result + 4);
  }

  return result;
}

void llvm::PrettyStackTraceFormat::~PrettyStackTraceFormat(llvm::PrettyStackTraceFormat *this)
{
  *this = &unk_1F1A36088;
  v2 = *(this + 3);
  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_1F1A36060;
  v3 = PrettyStackTraceHead();
  *v3 = v4;
  v5 = GlobalSigInfoGenerationCounter;
  v6 = ThreadLocalSigInfoGenerationCounter();
  if (*v6)
  {
    v7 = *v6 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    v9 = llvm::errs(v6);
    PrintCurStackTrace(v9);
    *v8 = v5;
  }
}

{
  *this = &unk_1F1A36088;
  v2 = *(this + 3);
  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_1F1A36060;
  v3 = PrettyStackTraceHead();
  *v3 = v4;
  v5 = GlobalSigInfoGenerationCounter;
  v6 = ThreadLocalSigInfoGenerationCounter();
  if (*v6)
  {
    v7 = *v6 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    v9 = llvm::errs(v6);
    PrintCurStackTrace(v9);
    *v8 = v5;
  }

  JUMPOUT(0x1AC55A070);
}

void PrintCurStackTrace(llvm::raw_ostream *a1)
{
  v2 = PrettyStackTraceHead();
  v3 = *v2;
  if (*v2)
  {
    v4 = v2;
    v5 = *(a1 + 4);
    if ((*(a1 + 3) - v5) >= 0xC)
    {
      *(v5 + 8) = 171602029;
      *v5 = *"Stack dump:\n";
      *(a1 + 4) += 12;
      *v2 = 0;
    }

    else
    {
      llvm::raw_ostream::write(a1, "Stack dump:\n", 0xCuLL);
      v3 = *v4;
      *v4 = 0;
      if (!v3)
      {
LABEL_15:
        *v4 = v3;
        if (*(a1 + 4) != *(a1 + 2))
        {
          llvm::raw_ostream::flush_nonempty(a1);
        }

        return;
      }
    }

    v6 = 0;
    v7 = v3;
    do
    {
      v8 = v6;
      v6 = v7;
      v7 = v7[2];
      v6[2] = v8;
    }

    while (v7);
    v9 = 0;
    v10 = v6;
    do
    {
      v11 = llvm::raw_ostream::operator<<(a1, v9);
      v12 = *(v11 + 4);
      if (*(v11 + 3) - v12 > 1uLL)
      {
        *v12 = 2350;
        *(v11 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v11, ".\t", 2uLL);
      }

      llvm::sys::Watchdog::Watchdog(&v15, 5u);
      (*(*v10 + 16))(v10, a1);
      llvm::sys::Watchdog::~Watchdog(&v15);
      v10 = v10[2];
      ++v9;
    }

    while (v10);
    v13 = 0;
    do
    {
      v14 = v6;
      v6 = v6[2];
      v14[2] = v13;
      v13 = v14;
    }

    while (v6);
    goto LABEL_15;
  }
}

void llvm::Regex::~Regex(llvm::Regex *this)
{
  v2 = *this;
  if (v2)
  {
    llvm_regfree(v2);
    if (*this)
    {
      MEMORY[0x1AC55A070](*this, 0x1070C404B019E81);
    }
  }
}

uint64_t llvm::Regex::match(unsigned int *a1, char *a2, uint64_t a3, uint64_t a4, std::string *a5)
{
  v38[16] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    size = SHIBYTE(a5->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = a5->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      MEMORY[0x1AC559980](a5, "");
    }

    v11 = a1[2];
    if (v11)
    {
      v12 = *a1;
      v13 = llvm_regerror(a1[2], *a1, 0, 0);
      std::string::resize(a5, v13 - 1, 0);
      if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = a5;
      }

      else
      {
        v14 = a5->__r_.__value_.__r.__words[0];
      }

      llvm_regerror(v11, v12, v14, v13);
      return 0;
    }
  }

  else if (a1[2])
  {
    return 0;
  }

  if (a4)
  {
    v16 = *(*a1 + 8) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = a3;
  }

  else
  {
    a2 = "";
    v17 = 0;
  }

  v36 = v38;
  v37 = 0x800000000;
  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v16 < 9)
  {
    v19 = 0;
    v20 = v38;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v18, 16);
    v19 = v37;
    if (v37 == v18)
    {
      goto LABEL_27;
    }

    v20 = v36;
  }

  bzero(&v20[2 * v19], 16 * (v18 - v19));
LABEL_27:
  LODWORD(v37) = v18;
  v21 = v36;
  *v36 = 0;
  v21[1] = v17;
  v22 = llvm_regexec(*a1, a2, v16, v21, 4);
  if (v22)
  {
    if (v22 == 1 || !a5)
    {
      result = 0;
      v27 = v36;
      if (v36 == v38)
      {
        return result;
      }
    }

    else
    {
      v23 = a1[2];
      v24 = *a1;
      v25 = llvm_regerror(v23, *a1, 0, 0);
      std::string::resize(a5, v25 - 1, 0);
      if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = a5;
      }

      else
      {
        v26 = a5->__r_.__value_.__r.__words[0];
      }

      llvm_regerror(v23, v24, v26, v25);
      result = 0;
      v27 = v36;
      if (v36 == v38)
      {
        return result;
      }
    }

LABEL_36:
    v28 = result;
    free(v27);
    return v28;
  }

  if (a4)
  {
    *(a4 + 8) = 0;
    if (v16)
    {
      v29 = 0;
      v30 = 0;
      v31 = 16 * v16;
      do
      {
        while (1)
        {
          v32 = *(v36 + v29);
          if (v32 == -1)
          {
            break;
          }

          v33 = *(v36 + v29 + 8);
          if (v30 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v30 + 1, 16);
            v30 = *(a4 + 8);
          }

          v34 = (*a4 + 16 * v30);
          *v34 = &a2[v32];
          v34[1] = v33 - v32;
          v30 = *(a4 + 8) + 1;
          *(a4 + 8) = v30;
          v29 += 16;
          if (v31 == v29)
          {
            goto LABEL_49;
          }
        }

        if (v30 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v30 + 1, 16);
          v30 = *(a4 + 8);
        }

        v35 = (*a4 + 16 * v30);
        *v35 = 0;
        v35[1] = 0;
        v30 = *(a4 + 8) + 1;
        *(a4 + 8) = v30;
        v29 += 16;
      }

      while (v31 != v29);
    }
  }

LABEL_49:
  result = 1;
  v27 = v36;
  if (v36 != v38)
  {
    goto LABEL_36;
  }

  return result;
}

void *llvm::SmallPtrSetImplBase::shrink_and_clear(void **this)
{
  free(this[1]);
  v2 = *(this + 5) - *(this + 6);
  v3 = 1 << (33 - __clz(v2 - 1));
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2 <= 0x10)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3;
  }

  *(this + 4) = v4;
  v5 = malloc_type_malloc(8 * v4, 0x3C0F72FBuLL);
  if (!v5)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  this[1] = v5;
  v6 = 8 * *(this + 4);

  return memset(v5, 255, v6);
}

char **llvm::SmallPtrSetImplBase::insert_imp_big(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 5);
  v3 = *(this + 4);
  if (3 * v3 <= 4 * (v2 - *(this + 6)))
  {
    v14 = a2;
    if (v3 >= 0x40)
    {
      v3 *= 2;
    }

    else
    {
      v3 = 128;
    }
  }

  else
  {
    if (v3 - v2 >= v3 >> 3)
    {
      goto LABEL_3;
    }

    v14 = a2;
  }

  v15 = this;
  llvm::SmallPtrSetImplBase::Grow(this, v3);
  this = v15;
  a2 = v14;
LABEL_3:
  v4 = *(this + 4) - 1;
  v5 = *(this + 1);
  v6 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v5 + 8 * v6);
  v8 = *v7;
  if (*v7 != -1)
  {
    v9 = 0;
    v11 = 1;
    while (v8 != a2)
    {
      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 + 2 == 0;
      }

      if (v12)
      {
        v9 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v4;
      v7 = (v5 + 8 * (v13 & v4));
      v8 = *v7;
      if (*v7 == -1)
      {
        goto LABEL_5;
      }
    }

    return v7;
  }

  v9 = 0;
LABEL_5:
  if (v9)
  {
    v7 = v9;
  }

  if (*v7 == a2)
  {
    return v7;
  }

  if (*v7 == -2)
  {
    --*(this + 6);
  }

  else
  {
    ++*(this + 5);
  }

  *v7 = a2;
  return v7;
}

void llvm::SmallPtrSetImplBase::Grow(llvm::SmallPtrSetImplBase *this, unsigned int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = 16;
  if (v4 == *this)
  {
    v6 = 20;
  }

  v7 = *(this + v6);
  v8 = malloc_type_malloc(8 * a2, 0x3C0F72FBuLL);
  if (!v8 && (a2 || (v8 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  *(this + 1) = v8;
  *(this + 4) = a2;
  memset(v8, 255, 8 * a2);
  if (v7)
  {
    v9 = v4;
    do
    {
      v12 = *v9;
      if (*v9 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = *(this + 4) - 1;
        v14 = *(this + 1);
        v15 = v13 & ((v12 >> 4) ^ (v12 >> 9));
        v11 = (v14 + 8 * v15);
        v16 = *v11;
        if (*v11 == -1)
        {
          v10 = 0;
LABEL_9:
          if (v10)
          {
            v11 = v10;
          }
        }

        else
        {
          v10 = 0;
          v17 = 1;
          while (v16 != v12)
          {
            if (v10)
            {
              v18 = 0;
            }

            else
            {
              v18 = v16 == -2;
            }

            if (v18)
            {
              v10 = v11;
            }

            v19 = v15 + v17++;
            v15 = v19 & v13;
            v11 = (v14 + 8 * (v19 & v13));
            v16 = *v11;
            if (*v11 == -1)
            {
              goto LABEL_9;
            }
          }
        }

        *v11 = v12;
      }

      ++v9;
    }

    while (v9 != &v4[v7]);
  }

  if (v4 != v5)
  {
    free(v4);
  }

  *(this + 20) = (*(this + 5) - *(this + 6));
}

uint64_t llvm::SmallPtrSetImplBase::doFind(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  v2 = *(this + 4) - 1;
  v3 = *(this + 1);
  v4 = ((a2 >> 4) ^ (a2 >> 9)) & v2;
  v5 = *(v3 + 8 * v4);
  if (v5 == a2)
  {
    return v3 + 8 * v4;
  }

  v7 = 1;
  while (v5 != -1)
  {
    v8 = v4 + v7++;
    v4 = v8 & v2;
    v5 = *(v3 + 8 * v4);
    if (v5 == a2)
    {
      return v3 + 8 * v4;
    }
  }

  return 0;
}

llvm::SmallPtrSetImplBase *llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(llvm::SmallPtrSetImplBase *this, const void **__dst, const llvm::SmallPtrSetImplBase *a3)
{
  *this = __dst;
  v5 = *(a3 + 1);
  if (v5 == *a3)
  {
    v7 = __dst;
    *(this + 1) = __dst;
  }

  else
  {
    v6 = *(a3 + 4);
    v7 = malloc_type_malloc(8 * v6, 0x3C0F72FBuLL);
    if (!v7 && (v6 || (v7 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    *(this + 1) = v7;
    v5 = *a3;
  }

  *(this + 4) = *(a3 + 4);
  v8 = *(a3 + 1);
  v9 = v8 == v5;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  v11 = *(a3 + v10);
  if (v11)
  {
    memmove(v7, v8, 8 * v11);
  }

  *(this + 20) = *(a3 + 20);
  return this;
}

double llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(uint64_t a1, void *__dst, int a3, double *a4)
{
  *a1 = __dst;
  v5 = *a4;
  v4 = *(a4 + 1);
  if (v4 == *a4)
  {
    *(a1 + 8) = __dst;
    v6 = *(a4 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a3;
      v9 = a4;
      memmove(__dst, *(a4 + 1), 8 * v6);
      a3 = v8;
      a1 = v7;
      a4 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a4 + 1) = v5;
  }

  result = a4[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a4 + 6);
  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  *(a4 + 4) = a3;
  return result;
}

double llvm::SmallPtrSetImplBase::MoveFrom(uint64_t a1, int a2, double *a3)
{
  v6 = *(a1 + 8);
  if (v6 != *a1)
  {
    free(v6);
  }

  v8 = *a3;
  v7 = *(a3 + 1);
  if (v7 == *a3)
  {
    v9 = *a1;
    *(a1 + 8) = *a1;
    v10 = *(a3 + 5);
    if (v10)
    {
      memmove(v9, *(a3 + 1), 8 * v10);
    }
  }

  else
  {
    *(a1 + 8) = v7;
    *(a3 + 1) = v8;
  }

  result = a3[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 4) = a2;
  return result;
}

void *llvm::SmallVectorBase<unsigned int>::mallocForGrow(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (HIDWORD(a3))
  {
    report_size_overflow(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    report_at_maximum_capacity(0xFFFFFFFFuLL);
  }

  v9 = 2 * v5;
  v10 = v5 < 0;
  v11 = 0xFFFFFFFFLL;
  if (!v10)
  {
    v11 = v9 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) < a3)
  {
    v11 = a3;
  }

  *a5 = v11;
  v12 = v11 * a4;
  result = malloc_type_malloc(v11 * a4, 0x3C0F72FBuLL);
  if (!result)
  {
    if (v12)
    {
      goto LABEL_15;
    }

    result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (result != a2)
  {
    return result;
  }

  v14 = result;
  v15 = *a5 * a4;
  v16 = malloc_type_malloc(v15, 0x3C0F72FBuLL);
  if (!v16 && (v15 || (v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
LABEL_15:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v17 = v16;
  free(v14);
  return v17;
}

void llvm::SmallVectorBase<unsigned int>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    report_size_overflow(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    report_at_maximum_capacity(0xFFFFFFFFuLL);
  }

  v8 = 2 * v5;
  v9 = v5 < 0;
  v10 = 0xFFFFFFFFLL;
  if (!v9)
  {
    v10 = v8 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  v12 = *a1;
  v13 = v11 * a4;
  if (*a1 == a2)
  {
    v16 = malloc_type_malloc(v11 * a4, 0x3C0F72FBuLL);
    if (v16 || !v13 && (v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v15 = v16;
      if (v16 == a2)
      {
        v17 = malloc_type_malloc(v13, 0x3C0F72FBuLL);
        if (!v17)
        {
          if (v13)
          {
            goto LABEL_30;
          }

          v17 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
          if (!v17)
          {
            goto LABEL_30;
          }
        }

        v18 = v17;
        free(v15);
        v15 = v18;
      }

      memcpy(v15, *a1, *(a1 + 8) * a4);
      goto LABEL_29;
    }

LABEL_30:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v14 = malloc_type_realloc(v12, v11 * a4, 0xF4063A16uLL);
  if (!v14)
  {
    if (v13)
    {
      goto LABEL_30;
    }

    v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v14)
    {
      goto LABEL_30;
    }
  }

  if (v14 != a2)
  {
    v15 = v14;
    goto LABEL_29;
  }

  v19 = v14;
  v20 = *(a1 + 8);
  v21 = malloc_type_malloc(v13, 0x3C0F72FBuLL);
  if (!v21)
  {
    if (v13)
    {
      goto LABEL_30;
    }

    v21 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v21)
    {
      goto LABEL_30;
    }
  }

  v15 = v21;
  if (v20)
  {
    memcpy(v21, v19, v20 * a4);
  }

  free(v19);
LABEL_29:
  *a1 = v15;
  *(a1 + 12) = v11;
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    report_at_maximum_capacity(0xFFFFFFFFFFFFFFFFLL);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v8 = 2 * v4 + 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = *a1;
  v10 = v8 * a4;
  if (v9 == a2)
  {
    v13 = malloc_type_malloc(v8 * a4, 0x3C0F72FBuLL);
    if (v13 || !v10 && (v13 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
    {
      v12 = v13;
      if (v13 == a2)
      {
        v14 = malloc_type_malloc(v10, 0x3C0F72FBuLL);
        if (!v14)
        {
          if (v10)
          {
            goto LABEL_27;
          }

          v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
          if (!v14)
          {
            goto LABEL_27;
          }
        }

        v15 = v14;
        free(v12);
        v12 = v15;
      }

      memcpy(v12, *a1, *(a1 + 8) * a4);
      goto LABEL_26;
    }

LABEL_27:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v11 = malloc_type_realloc(v9, v8 * a4, 0xF4063A16uLL);
  if (!v11)
  {
    if (v10)
    {
      goto LABEL_27;
    }

    v11 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  if (v11 != a2)
  {
    v12 = v11;
    goto LABEL_26;
  }

  v16 = v11;
  v17 = *(a1 + 8);
  v18 = malloc_type_malloc(v10, 0x3C0F72FBuLL);
  if (!v18)
  {
    if (v10)
    {
      goto LABEL_27;
    }

    v18 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v18)
    {
      goto LABEL_27;
    }
  }

  v12 = v18;
  if (v17)
  {
    memcpy(v18, v16, v17 * a4);
  }

  free(v16);
LABEL_26:
  *a1 = v12;
  *(a1 + 16) = v8;
}

void report_size_overflow(unint64_t a1)
{
  std::to_string(&v4, a1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v5, "SmallVector unable to grow. Requested capacity (", &v4);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v5, ") is larger than maximum value for size type (", &v6);
  std::to_string(&v3, 0xFFFFFFFFuLL);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v6, &v3, &v1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v1, ")", &v7);
  std::string::~string(&v1);
  std::string::~string(&v3);
  std::string::~string(&v6);
  std::string::~string(&v5);
  std::string::~string(&v4);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = &v7;
  llvm::report_fatal_error(&v1, 1);
}

void report_at_maximum_capacity(unint64_t a1)
{
  std::to_string(&v1, a1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v3, "SmallVector capacity unable to grow. Already at maximum size ", &v1);
  std::string::~string(&v1);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = v3;
  llvm::report_fatal_error(&v1, 1);
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::append(a1, a2);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

{
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::string::append(a1, a2, v5);
  result = *v6;
  *a3 = *v6->n128_u8;
  v6->n128_u64[0] = 0;
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  return result;
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>, std::string *this@<X1>)
{
  v4 = std::string::insert(this, 0, __s);
  result = *v4;
  *a1 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

double llvm::SourceMgr::SourceMgr(llvm::SourceMgr *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void llvm::SourceMgr::~SourceMgr(llvm::SourceMgr *this)
{
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *this;
  if (*this)
  {
    v8 = *(this + 1);
    v9 = *this;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 2);
        if (v10)
        {
          v11 = *v10;
          if (*v10)
          {
            *(v10 + 8) = v11;
            operator delete(v11);
          }

          MEMORY[0x1AC55A070](v10, 0x10C402FEFCB83);
          *(v8 - 2) = 0;
        }

        v13 = *(v8 - 3);
        v8 -= 3;
        v12 = v13;
        *v8 = 0;
        if (v13)
        {
          (*(*v12 + 8))(v12);
        }
      }

      while (v8 != v7);
      v9 = *this;
    }

    *(this + 1) = v7;
    operator delete(v9);
  }
}

uint64_t llvm::SourceMgr::AddNewSourceBuffer(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *a2 = 0;
  v12 = v3;
  v13 = 0;
  v14 = a3;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    v5 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(a1, &v12);
    v8 = v13;
    *(a1 + 8) = v5;
    v6 = *a1;
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        *(v8 + 8) = v9;
        operator delete(v9);
      }

      MEMORY[0x1AC55A070](v8, 0x10C402FEFCB83);
      v13 = 0;
    }
  }

  else
  {
    v4[1] = 0;
    v4[2] = a3;
    v12 = 0;
    v13 = 0;
    *v4 = v3;
    v5 = (v4 + 3);
    *(a1 + 8) = v4 + 3;
    v6 = *a1;
  }

  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return -1431655765 * ((v5 - v6) >> 3);
}

uint64_t llvm::SourceMgr::SrcBuffer::getLineNumber(llvm::SourceMgr::SrcBuffer *this, const char *a2)
{
  v2 = a2;
  v4 = *(*this + 8);
  v5 = *(*this + 16) - v4;
  if (v5 <= 0xFF)
  {
    Offset = GetOrCreateOffsetCache<unsigned char>(this + 1, *this);
    v8 = *Offset;
    v9 = Offset[1] - *Offset;
    if (v9)
    {
      v10 = *Offset;
      do
      {
        v11 = v9 >> 1;
        v12 = &v10[v9 >> 1];
        v14 = *v12;
        v13 = v12 + 1;
        v9 += ~(v9 >> 1);
        if (v14 < (v2 - *(*this + 8)))
        {
          v10 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      while (v9);
      LODWORD(v8) = v10 - v8;
    }

    else
    {
      LODWORD(v8) = 0;
    }
  }

  else if (v5 >> 16)
  {
    v6 = *(this + 1);
    if (HIDWORD(v5))
    {
      if (!v6)
      {
        operator new();
      }

      v23 = v6[1];
      if (v23 != *v6)
      {
        v24 = &a2[-v4];
        v25 = (v23 - *v6) >> 3;
        v23 = *v6;
        do
        {
          v26 = v25 >> 1;
          v27 = &v23[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (v29 < v24)
          {
            v23 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v8 = (v23 - *v6) >> 3;
    }

    else
    {
      if (!v6)
      {
        operator new();
      }

      v30 = v6[1];
      if (v30 != *v6)
      {
        v31 = a2 - v4;
        v32 = (v30 - *v6) >> 2;
        v30 = *v6;
        do
        {
          v33 = v32 >> 1;
          v34 = &v30[v32 >> 1];
          v36 = *v34;
          v35 = v34 + 1;
          v32 += ~(v32 >> 1);
          if (v36 < v31)
          {
            v30 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      v8 = (v30 - *v6) >> 2;
    }
  }

  else
  {
    v15 = *(this + 1);
    if (!v15)
    {
      operator new();
    }

    v16 = v15[1];
    if (v16 != *v15)
    {
      v17 = (a2 - v4);
      v18 = v16 - *v15;
      v16 = *v15;
      do
      {
        v19 = v18 >> 1;
        v20 = &v16[v18 >> 1];
        v22 = *v20;
        v21 = v20 + 1;
        v18 += ~(v18 >> 1);
        if (v22 < v17)
        {
          v16 = v21;
        }

        else
        {
          v18 = v19;
        }
      }

      while (v18);
    }

    v8 = (v16 - *v15) >> 1;
  }

  return (v8 + 1);
}

uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(llvm::SourceMgr::SrcBuffer *this, unsigned int a2)
{
  v4 = *this;
  result = *(*this + 8);
  v6 = *(v4 + 16) - result;
  if (v6 <= 0xFF)
  {
    Offset = GetOrCreateOffsetCache<unsigned char>(this + 1, v4);
    v10 = a2 - 1;
    if (!a2)
    {
      v10 = 0;
    }

    result = *(*this + 8);
    if (a2 >= 2)
    {
      v12 = Offset;
      v11 = *Offset;
      if (v12[1] - v11 < v10)
      {
        return 0;
      }

      v14 = *(v11 + v10 - 1);
      goto LABEL_36;
    }
  }

  else if (v6 >> 16)
  {
    v7 = *(this + 1);
    if (HIDWORD(v6))
    {
      if (!v7)
      {
        operator new();
      }

      LODWORD(v8) = a2 - 1;
      if (a2)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }

      if (a2 < 2)
      {
        return result;
      }

      if (v8 > (v7[1] - *v7) >> 3)
      {
        return 0;
      }

      v14 = *(*v7 + 8 * (v8 - 1));
LABEL_36:
      result += v14 + 1;
      return result;
    }

    if (!v7)
    {
      operator new();
    }

    LODWORD(v16) = a2 - 1;
    if (a2)
    {
      v16 = v16;
    }

    else
    {
      v16 = 0;
    }

    if (a2 >= 2)
    {
      if (v16 > (v7[1] - *v7) >> 2)
      {
        return 0;
      }

      v14 = *(*v7 + 4 * (v16 - 1));
      goto LABEL_36;
    }
  }

  else
  {
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    LODWORD(v15) = a2 - 1;
    if (a2)
    {
      v15 = v15;
    }

    else
    {
      v15 = 0;
    }

    if (a2 >= 2)
    {
      if (v15 > (v13[1] - *v13) >> 1)
      {
        return 0;
      }

      v14 = *(*v13 + 2 * (v15 - 1));
      goto LABEL_36;
    }
  }

  return result;
}

void *llvm::SourceMgr::SrcBuffer::SrcBuffer(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  result[1] = a2[1];
  result[2] = v3;
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  return result;
}

void llvm::SourceMgr::SrcBuffer::~SrcBuffer(llvm::SourceMgr::SrcBuffer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1AC55A070](v2, 0x10C402FEFCB83);
    *(this + 1) = 0;
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void *GetOrCreateOffsetCache<unsigned char>(void **a1, uint64_t a2)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

unint64_t llvm::SplitString(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v23 = a1;
  v24 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
  result = llvm::StringRef::find_first_of(&v23, a4, a5, first_not_of);
  if (v24 >= first_not_of)
  {
    v10 = first_not_of;
  }

  else
  {
    v10 = v24;
  }

  if (v10 <= result)
  {
    v11 = result;
  }

  else
  {
    v11 = first_not_of;
  }

  if (v11 >= v24)
  {
    v11 = v24;
  }

  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = v23 + v10;
    if (v24 >= result)
    {
      v14 = result;
    }

    else
    {
      v14 = v24;
    }

    v15 = v23 + v14;
    v16 = v24 - v14;
    do
    {
      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v17 + 1, 16);
        v17 = *(a3 + 8);
      }

      v18 = (*a3 + 16 * v17);
      *v18 = v13;
      v18[1] = v12;
      ++*(a3 + 8);
      v23 = v15;
      v24 = v16;
      v19 = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
      result = llvm::StringRef::find_first_of(&v23, a4, a5, v19);
      if (v24 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v24;
      }

      if (v20 <= result)
      {
        v21 = result;
      }

      else
      {
        v21 = v19;
      }

      if (v21 >= v24)
      {
        v21 = v24;
      }

      v13 = v23 + v20;
      if (v24 >= result)
      {
        v22 = result;
      }

      else
      {
        v22 = v24;
      }

      v15 = v23 + v22;
      v16 = v24 - v22;
      v12 = v21 - v20;
    }

    while (v21 != v20);
  }

  return result;
}

llvm::raw_ostream *llvm::printEscapedString(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v7 = *v5;
      if (v7 == 92)
      {
        v8 = *(a3 + 4);
        if (v8 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, 92);
          v9 = *(result + 4);
          if (v9 < *(result + 3))
          {
LABEL_19:
            *(result + 4) = v9 + 1;
            *v9 = 92;
            goto LABEL_5;
          }
        }

        else
        {
          *(a3 + 4) = v8 + 1;
          *v8 = 92;
          result = a3;
          v9 = *(a3 + 4);
          if (v9 < *(a3 + 3))
          {
            goto LABEL_19;
          }
        }

        v6 = 92;
        goto LABEL_4;
      }

      v11 = *(a3 + 3);
      v10 = *(a3 + 4);
      if (v7 == 34 || (v7 - 32) > 0x5Eu)
      {
        if (v10 >= v11)
        {
          result = llvm::raw_ostream::write(a3, 92);
          v12 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4];
          v13 = *(result + 4);
          if (v13 < *(result + 3))
          {
LABEL_21:
            *(result + 4) = v13 + 1;
            *v13 = v12;
            v6 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF];
            v14 = *(result + 4);
            if (v14 < *(result + 3))
            {
LABEL_22:
              *(result + 4) = v14 + 1;
              *v14 = v6;
              goto LABEL_5;
            }

            goto LABEL_4;
          }
        }

        else
        {
          *(a3 + 4) = v10 + 1;
          *v10 = 92;
          result = a3;
          v12 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4];
          v13 = *(a3 + 4);
          if (v13 < *(a3 + 3))
          {
            goto LABEL_21;
          }
        }

        result = llvm::raw_ostream::write(result, v12);
        v6 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF];
        v14 = *(result + 4);
        if (v14 < *(result + 3))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v10 < v11)
        {
          *(a3 + 4) = v10 + 1;
          *v10 = v7;
          goto LABEL_5;
        }

        result = a3;
        v6 = *v5;
      }

LABEL_4:
      result = llvm::raw_ostream::write(result, v6);
LABEL_5:
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *llvm::StringMapImpl::init(llvm::StringMapImpl *this, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 16;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  result = malloc_type_calloc(v3 + 1, 0xCuLL, 0x17B874E6uLL);
  if (!result && (v3 != -1 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[v3] = 2;
  *this = result;
  *(this + 2) = v3;
  return result;
}

void *createTable(int a1)
{
  v2 = a1 + 1;
  result = malloc_type_calloc((a1 + 1), 0xCuLL, 0x17B874E6uLL);
  if (!result && (v2 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[a1] = 2;
  return result;
}

uint64_t llvm::StringMapImpl::LookupBucketFor(uint64_t a1, void *__s1, size_t __n, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *a1;
    v10 = v8 - 1;
    result = (v8 - 1) & a4;
    v12 = *a1 + 8 * v8 + 8;
    if (__n)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v18 = malloc_type_calloc(0x11uLL, 0xCuLL, 0x17B874E6uLL);
    if (!v18)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v9 = v18;
    v18[16] = 2;
    *a1 = v18;
    *(a1 + 8) = 16;
    v10 = 15;
    result = a4 & 0xF;
    v12 = (v9 + 17);
    if (__n)
    {
LABEL_3:
      v13 = 1;
      v14 = 0xFFFFFFFFLL;
      v15 = v9[result];
      i = result;
      if (v15)
      {
        while (1)
        {
          if (v15 == -8)
          {
            if (v14 == -1)
            {
              v14 = result;
            }

            else
            {
              v14 = v14;
            }
          }

          else if (*(v12 + 4 * i) == a4 && __n == *v15)
          {
            v28 = result;
            v26 = v12;
            v27 = v9;
            v24 = v14;
            v25 = v10;
            v23 = v13;
            v21 = memcmp(__s1, v15 + *(a1 + 20), __n);
            v13 = v23;
            v10 = v25;
            v14 = v24;
            v12 = v26;
            v9 = v27;
            v22 = v21;
            result = v28;
            if (!v22)
            {
              return result;
            }
          }

          LODWORD(result) = v10 & (result + v13++);
          v15 = v9[result];
          i = result;
          if (!v15)
          {
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }
  }

  v19 = 1;
  LODWORD(v14) = -1;
  v20 = v9[result];
  for (i = result; v20; i = result)
  {
    if (v20 == -8)
    {
      if (v14 == -1)
      {
        LODWORD(v14) = result;
      }
    }

    else if (*(v12 + 4 * i) == a4 && !*v20)
    {
      return result;
    }

    result = v10 & (result + v19++);
    v20 = v9[result];
  }

LABEL_4:
  v17 = v14;
  if (v14 == -1)
  {
    v17 = i;
    result = result;
  }

  else
  {
    result = v14;
  }

  *(v12 + 4 * v17) = a4;
  return result;
}

uint64_t llvm::StringMapImpl::FindKey(uint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1;
  v6 = v4 - 1;
  result = (v4 - 1) & a4;
  v8 = *v5;
  v9 = *v5 + 8 * v4 + 8;
  if (a3)
  {
    v10 = 1;
    v11 = *(v8 + 8 * result);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      if (v11 != -8 && *(v9 + 4 * result) == a4 && a3 == *v11)
      {
        v23 = a3;
        v24 = a2;
        v21 = a4;
        v22 = result;
        v18 = v5;
        v20 = v6;
        v17 = v8;
        v19 = v9;
        v16 = v10;
        v14 = memcmp(a2, v11 + *(v5 + 5), a3);
        v10 = v16;
        v5 = v18;
        v9 = v19;
        v8 = v17;
        v6 = v20;
        a4 = v21;
        a3 = v23;
        a2 = v24;
        v15 = v14;
        result = v22;
        if (!v15)
        {
          break;
        }
      }

      LODWORD(result) = (result + v10++) & v6;
      v11 = *(v8 + 8 * result);
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v12 = 1;
    v13 = *(v8 + 8 * result);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    while (v13 == -8 || *(v9 + 4 * result) != a4 || *v13)
    {
      result = (result + v12++) & v6;
      v13 = *(v8 + 8 * result);
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

int32x2_t llvm::StringMapImpl::RemoveKey(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::xxh3_64bits(a2, a3, a3, a4);
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = (v9 - 1) & v7;
    v12 = *a1;
    v13 = *a1 + 8 * v9 + 8;
    if (a3)
    {
      v14 = 1;
      v15 = *(v12 + 8 * v11);
      if (!v15)
      {
        return result;
      }

      while (1)
      {
        if (v15 != -8 && *(v13 + 4 * v11) == v7 && a3 == *v15)
        {
          v23 = v7;
          v24 = v12;
          v25 = v11;
          v21 = v14;
          v22 = v10;
          v20 = v13;
          v16 = memcmp(a2, v15 + *(a1 + 5), a3);
          v14 = v21;
          v10 = v22;
          v13 = v20;
          v11 = v25;
          v17 = v16;
          v7 = v23;
          v12 = v24;
          if (!v17)
          {
            break;
          }
        }

        v11 = (v11 + v14++) & v10;
        v15 = *(v12 + 8 * v11);
        if (!v15)
        {
          return result;
        }
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v12 + 8 * v11);
      if (!v19)
      {
        return result;
      }

      while (v19 == -8 || *(v13 + 4 * v11) != v7 || *v19)
      {
        v11 = (v11 + v18++) & v10;
        v19 = *(v12 + 8 * v11);
        if (!v19)
        {
          return result;
        }
      }

      v25 = v11;
      v24 = *a1;
    }

    if (v25 != -1)
    {
      *(v24 + 8 * v25) = -8;
      result = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
      *(a1 + 12) = result;
    }
  }

  return result;
}

uint64_t llvm::StringMapImpl::RehashTable(llvm::StringMapImpl *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (3 * v4 < 4 * v3)
  {
    v6 = this;
    v4 *= 2;
  }

  else
  {
    if (v4 - (v3 + *(this + 4)) > v4 >> 3)
    {
      return a2;
    }

    v6 = this;
  }

  Table = createTable(v4);
  v8 = *v6;
  v9 = *(v6 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = v4 - 1;
    v12 = v2;
    do
    {
      v13 = v8[v10];
      if (v13 != -8 && v13 != 0)
      {
        v15 = *(&v8[v9 + 1] + v10);
        v16 = v15 & v11;
        if (Table[v16])
        {
          v17 = 1;
          do
          {
            v18 = v16 + v17++;
            v16 = v18 & v11;
          }

          while (Table[v16]);
        }

        Table[v16] = v13;
        *(&Table[v4 + 1] + v16) = v15;
        if (v10 == v12)
        {
          v2 = v16;
        }

        else
        {
          v2 = v2;
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  free(v8);
  *v6 = Table;
  *(v6 + 2) = v4;
  *(v6 + 4) = 0;
  return v2;
}

void *llvm::StringSaver::save(void ***a1, const void *a2, size_t a3)
{
  v4 = *a1;
  v5 = a3 + 1;
  v4[10] = v4[10] + v5;
  v6 = *v4;
  v7 = *v4 + v5;
  if (*v4)
  {
    v8 = v7 > v4[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = a2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v4, v5, v5, 0);
    a2 = v10;
    v6 = Slow;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v4 = v7;
  if (a3)
  {
LABEL_6:
    memcpy(v6, a2, a3);
  }

LABEL_7:
  *(v6 + a3) = 0;
  return v6;
}

BOOL llvm::StringRef::starts_with_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1[1] < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = *a1;
  v5 = a3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = v7 + 32;
    if ((v7 - 65) >= 0x1A)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v11 = *a2++;
    v10 = v11;
    v12 = v11 + 32;
    if ((v11 - 65) >= 0x1A)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v15 = v5-- != 0;
    result = v9 == v13;
  }

  while (v9 == v13 && v15);
  return result;
}

unint64_t llvm::StringRef::find(uint64_t *a1, char *a2, size_t a3, unint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = v4 >= a4;
  v6 = v4 - a4;
  if (!v5)
  {
    return -1;
  }

  if (!a3)
  {
    return a4;
  }

  if (v6 < a3)
  {
    return -1;
  }

  v8 = *a1;
  v9 = (*a1 + a4);
  v10 = a3 - 1;
  if (a3 == 1)
  {
    v11 = memchr(v9, *a2, v6);
    if (v11)
    {
      return v11 - v8;
    }

    else
    {
      return -1;
    }
  }

  v12 = &v9[v6 - a3];
  v13 = a3 - 2;
  if (a3 == 2)
  {
    result = -1;
    while (*(v8 + a4) != *a2)
    {
      ++a4;
      if (v8 + a4 - 1 >= v12)
      {
        return result;
      }
    }

    return a4;
  }

  if (a3 > 0xFF || v6 <= 0xF)
  {
    while (1)
    {
      v26 = a4;
      v27 = a2;
      v28 = a3;
      if (!memcmp((v8 + a4), a2, a3))
      {
        break;
      }

      a4 = v26 + 1;
      result = -1;
      a2 = v27;
      a3 = v28;
      if (v8 + v26 >= v12)
      {
        return result;
      }
    }

    return v26;
  }

  else
  {
    v14 = v12 + 1;
    v30 = vdupq_n_s8(a3);
    v31 = v30;
    v29[12] = v30;
    v29[13] = v30;
    v29[10] = v30;
    v29[11] = v30;
    v29[8] = v30;
    v29[9] = v30;
    v29[6] = v30;
    v29[7] = v30;
    v29[4] = v30;
    v29[5] = v30;
    v29[2] = v30;
    v29[3] = v30;
    v15 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v16 = (a2 + 1);
    v17 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v29[0] = v30;
    v29[1] = v30;
    do
    {
      *(v29 + *(v16 - 1)) = v13 + 1;
      v18 = *v16;
      v16 += 2;
      *(v29 + v18) = v13;
      v13 -= 2;
      v17 -= 2;
    }

    while (v17);
    if (v10 != v15)
    {
      v19 = v15 + 1;
      do
      {
        *(v29 + a2[v15]) = v10 - v15;
        v15 = v19++;
      }

      while (v10 != v15);
    }

    v20 = a2[v10];
    while (1)
    {
      v21 = v9[v10];
      if (v21 == v20)
      {
        v22 = v9;
        v23 = a2;
        v24 = memcmp(v9, a2, v10);
        a2 = v23;
        v25 = v24;
        v9 = v22;
        if (!v25)
        {
          break;
        }
      }

      v9 += *(v29 + v21);
      if (v9 >= v14)
      {
        return -1;
      }
    }

    return &v22[-v8];
  }
}

unint64_t llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

unint64_t llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

unint64_t llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

unint64_t llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

void llvm::StringRef::split(__int128 *a1, uint64_t a2, char *a3, size_t a4, int a5, char a6)
{
  v29 = *a1;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v29 + 1);
    if (a6)
    {
      do
      {
        v12 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v12 == -1)
        {
          break;
        }

        if (v12 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        v14 = v29;
        v15 = *(a2 + 8);
        if (v15 >= *(a2 + 12))
        {
          v18 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v15 + 1, 16);
          v12 = v18;
          v15 = *(a2 + 8);
        }

        v16 = (*a2 + 16 * v15);
        *v16 = v14;
        v16[1] = v13;
        ++*(a2 + 8);
        v17 = v12 + a4;
        if (v11 < v12 + a4)
        {
          v17 = v11;
        }

        v11 -= v17;
        *&v29 = v14 + v17;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v21 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v21)
        {
          if (v21 == -1)
          {
            break;
          }

          if (v21 >= v11)
          {
            v22 = v11;
          }

          else
          {
            v22 = v21;
          }

          v19 = v29;
          v23 = *(a2 + 8);
          if (v23 >= *(a2 + 12))
          {
            v25 = v21;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v23 + 1, 16);
            v21 = v25;
            v23 = *(a2 + 8);
          }

          v24 = (*a2 + 16 * v23);
          *v24 = v19;
          v24[1] = v22;
          ++*(a2 + 8);
        }

        else
        {
          v19 = v29;
        }

        v20 = v21 + a4;
        if (v11 < v21 + a4)
        {
          v20 = v11;
        }

        v11 -= v20;
        *&v29 = v19 + v20;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v11 = *(&v29 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v26 = v29;
    v27 = *(a2 + 8);
    if (v27 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v27 + 1, 16);
      LODWORD(v27) = *(a2 + 8);
    }

    v28 = (*a2 + 16 * v27);
    *v28 = v26;
    v28[1] = v11;
    ++*(a2 + 8);
  }
}

uint64_t llvm::consumeUnsignedInteger(unsigned __int8 **a1, unsigned int a2, unint64_t *a3)
{
  v3 = a1[1];
  if (a2)
  {
    if (!v3)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (v3 < 2)
  {
    a2 = 10;
    if (!v3)
    {
      return 1;
    }

    goto LABEL_3;
  }

  v11 = *a1;
  v12 = **a1;
  if ((v12 - 65) >= 0x1A)
  {
    v13 = **a1;
  }

  else
  {
    v13 = v12 + 32;
  }

  if (v13 != 48)
  {
LABEL_31:
    if (*v11 == 28464)
    {
      a2 = 8;
      v3 -= 2;
      *a1 = v11 + 2;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }
    }

    else if (v12 == 48 && (v16 = v11[1], v15 = v11 + 1, (v16 - 48) <= 9))
    {
      a2 = 8;
      --v3;
      *a1 = v15;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }
    }

    else
    {
      a2 = 10;
    }

    goto LABEL_3;
  }

  v14 = v11[1];
  if ((v14 - 65) < 0x1A)
  {
    v14 += 32;
  }

  if (v14 != 98)
  {
    if (v14 == 120)
    {
      a2 = 16;
      v3 -= 2;
      *a1 = v11 + 2;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }

      goto LABEL_3;
    }

    goto LABEL_31;
  }

  a2 = 2;
  v3 -= 2;
  *a1 = v11 + 2;
  a1[1] = v3;
  if (!v3)
  {
    return 1;
  }

LABEL_3:
  v4 = 0;
  v5 = *a1;
  *a3 = 0;
  v6 = v3;
  do
  {
    if (*v5 < 48)
    {
      break;
    }

    v7 = *v5;
    if (v7 >= 0x3A)
    {
      if (v7 < 0x61)
      {
        if (v7 - 65 > 0x19)
        {
          break;
        }

        v8 = v7 - 55;
        if (v8 >= a2)
        {
          break;
        }
      }

      else
      {
        if (v7 >= 0x7B)
        {
          break;
        }

        v8 = v7 - 87;
        if (v8 >= a2)
        {
          break;
        }
      }
    }

    else
    {
      v8 = v7 - 48;
      if (v8 >= a2)
      {
        break;
      }
    }

    v9 = v4 * a2 + v8;
    *a3 = v9;
    if (v9 / a2 < v4)
    {
      return 1;
    }

    ++v5;
    v4 = v9;
    --v6;
  }

  while (v6);
  if (v3 != v6)
  {
    *a1 = v5;
    a1[1] = v6;
    return 0;
  }

  return 1;
}

uint64_t llvm::getAsUnsignedInteger(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unint64_t *a4)
{
  v5 = a1;
  v6 = a2;
  LODWORD(result) = llvm::consumeUnsignedInteger(&v5, a3, a4);
  if (v6)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

BOOL llvm::getAsSignedInteger(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v9 = 0;
  if (a2 && *a1 == 45)
  {
    *&v8 = a1 + 1;
    *(&v8 + 1) = a2 - 1;
    if ((llvm::consumeUnsignedInteger(&v8, a3, &v9) & 1) == 0 && v9 < 0x8000000000000001)
    {
      v7 = v8;
      v5 = -v9;
LABEL_8:
      *a4 = v5;
      return *(&v7 + 1) != 0;
    }
  }

  else if ((llvm::consumeUnsignedInteger(&v7, a3, &v9) & 1) == 0)
  {
    v5 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  return 1;
}

BOOL llvm::StringRef::consumeInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  v6 = *this;
  v5 = *(this + 1);
  if (!a2)
  {
    if (v5 < 2)
    {
      v7 = 10;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_24;
    }

    v8 = *v6;
    if ((v8 - 65) >= 0x1A)
    {
      v9 = *v6;
    }

    else
    {
      v9 = v8 + 32;
    }

    if (v9 == 48)
    {
      v10 = v6[1];
      if ((v10 - 65) < 0x1A)
      {
        v10 += 32;
      }

      if (v10 == 98)
      {
        v6 += 2;
        v7 = 2;
        v5 -= 2;
        if (v5)
        {
          goto LABEL_24;
        }

        return 1;
      }

      if (v10 == 120)
      {
        v6 += 2;
        v7 = 16;
        v5 -= 2;
        if (!v5)
        {
          return 1;
        }

        goto LABEL_24;
      }
    }

    if (*v6 != 28464)
    {
      if (v8 == 48 && v6[1] - 48 <= 9)
      {
        v7 = 8;
        ++v6;
        if (!--v5)
        {
          return 1;
        }
      }

      else
      {
        v7 = 10;
      }

      goto LABEL_24;
    }

    v6 += 2;
    v7 = 8;
    v5 -= 2;
    if (v5)
    {
      goto LABEL_24;
    }

    return 1;
  }

  v7 = a2;
  if (!v5)
  {
    return 1;
  }

LABEL_24:
  v11 = 0;
  while (v6[v11] == 48)
  {
    if (v5 == ++v11)
    {
      v11 = -1;
      break;
    }
  }

  if (v11 >= v5)
  {
    v11 = v5;
  }

  v12 = &v6[v11];
  v13 = v5 - v11;
  if (v5 == v11)
  {
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      MEMORY[0x1AC55A040](*a3, 0x1000C8000313F17);
    }

    result = 0;
    *a3 = 0;
    *(a3 + 2) = 64;
    *this = v12;
    *(this + 1) = 0;
  }

  else
  {
    v14 = v11 - v5;
    v15 = v5 - v11;
    v16 = -1;
    do
    {
      v17 = 1 << ++v16;
      v14 += v15;
    }

    while (1 << v16 < v7);
    v18 = *(a3 + 2);
    if (v14 >= v18)
    {
      if (v14 > v18)
      {
        llvm::APInt::zext(&v40, a3, v14);
        if (*(a3 + 2) >= 0x41u && *a3)
        {
          MEMORY[0x1AC55A040](*a3, 0x1000C8000313F17);
        }

        *a3 = v40;
        v18 = v41;
        *(a3 + 2) = v41;
      }
    }

    else
    {
      v14 = *(a3 + 2);
    }

    v41 = 1;
    v40 = 0;
    v39 = 1;
    v38 = 0;
    if (v17 != v7)
    {
      v37 = v14;
      if (v14 > 0x40)
      {
        llvm::APInt::initSlowCase(&v36, v7, 0);
      }

      v20 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
      if (!v14)
      {
        LODWORD(v20) = 0;
      }

      v40 = v20 & v7;
      v41 = v37;
      v37 = v14;
      v36 = 0;
      v38 = 0;
      v39 = v14;
      v18 = *(a3 + 2);
    }

    if (v18 <= 0x40)
    {
      *a3 = 0;
      if (v17 != v7)
      {
        goto LABEL_54;
      }

      while (1)
      {
LABEL_72:
        if (*v12 < 48)
        {
          goto LABEL_92;
        }

        v26 = *v12;
        if (v26 >= 0x3A)
        {
          if (v26 <= 0x60)
          {
            if (v26 - 65 >= 0x1A)
            {
              goto LABEL_92;
            }

            v27 = -55;
          }

          else
          {
            if (v26 > 0x7A)
            {
              goto LABEL_92;
            }

            v27 = -87;
          }
        }

        else
        {
          v27 = -48;
        }

        v28 = v27 + v26;
        if (v28 >= v7)
        {
          goto LABEL_92;
        }

        v29 = *(a3 + 2);
        if (v29 <= 0x40)
        {
          break;
        }

        llvm::APInt::shlSlowCase(a3, v16);
        v29 = *(a3 + 2);
        if (v29 >= 0x41)
        {
          **a3 |= v28;
          ++v12;
          if (!--v13)
          {
            goto LABEL_92;
          }
        }

        else
        {
LABEL_88:
          if (v29)
          {
            v32 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
          }

          else
          {
            v32 = 0;
          }

          *a3 = (*a3 | v28) & v32;
          ++v12;
          if (!--v13)
          {
            goto LABEL_92;
          }
        }
      }

      v30 = *a3 << v16;
      if (v29 == v16)
      {
        v30 = 0;
      }

      v31 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
      if (!v29)
      {
        v31 = 0;
      }

      *a3 = v30 & v31;
      goto LABEL_88;
    }

    **a3 = 0;
    bzero((*a3 + 8), (((v18 + 63) >> 3) - 8) & 0xFFFFFFF8);
    if (v17 == v7)
    {
      goto LABEL_72;
    }

LABEL_54:
    while (*v12 >= 48)
    {
      v21 = *v12;
      if (v21 >= 0x3A)
      {
        if (v21 < 0x61)
        {
          if (v21 - 65 > 0x19)
          {
            break;
          }

          v22 = -55;
        }

        else
        {
          if (v21 >= 0x7B)
          {
            break;
          }

          v22 = -87;
        }
      }

      else
      {
        v22 = -48;
      }

      v23 = v22 + v21;
      if (v23 >= v7)
      {
        break;
      }

      llvm::APInt::operator*=(a3, &v40);
      v24 = v39;
      if (v39 > 0x40)
      {
        *v38 = v23;
        bzero(v38 + 1, (((v24 + 63) >> 3) - 8) & 0xFFFFFFF8);
        llvm::APInt::operator+=(a3, &v38);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }

      else
      {
        if (v39)
        {
          v25 = 0xFFFFFFFFFFFFFFFFLL >> -v39;
        }

        else
        {
          v25 = 0;
        }

        v38 = (v25 & v23);
        llvm::APInt::operator+=(a3, &v38);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }
    }

LABEL_92:
    v33 = *(this + 1);
    result = v33 == v13;
    if (v33 != v13)
    {
      *this = v12;
      *(this + 1) = v13;
    }

    if (v39 >= 0x41 && v38)
    {
      v34 = v33 == v13;
      MEMORY[0x1AC55A040](v38, 0x1000C8000313F17);
      result = v34;
    }

    if (v41 >= 0x41)
    {
      if (v40)
      {
        v35 = result;
        MEMORY[0x1AC55A040](v40, 0x1000C8000313F17);
        return v35;
      }
    }
  }

  return result;
}

uint64_t llvm::StringRef::getAsInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  v4 = *this;
  LODWORD(result) = llvm::StringRef::consumeInteger(&v4, a2, a3);
  if (*(&v4 + 1))
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t llvm::StringRef::getAsDouble(llvm::StringRef *this, double *a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v7 = llvm::detail::IEEEFloat::IEEEFloat(&v21, 0.0, a2, a3, a4);
  v8 = llvm::APFloatBase::IEEEdouble(v7);
  llvm::APFloat::Storage::Storage(v20, &v21, v8);
  llvm::detail::IEEEFloat::~IEEEFloat(&v21);
  llvm::APFloat::convertFromString(&v19, *this, *(this + 1), 1, &v21);
  if ((v22 & 1) == 0)
  {
    if (v21)
    {
      v14 = 1;
      if ((v21 & 0x10) == 0 || !v4)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v14 = 0;
    *a2 = llvm::APFloat::convertToDouble(&v19, v10, v11, v12);
    goto LABEL_10;
  }

  v13 = v21;
  v21 = 0;
  if (!v13)
  {
    goto LABEL_9;
  }

  v17 = v13;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v17, &v18);
  v9 = v17;
  if (v17)
  {
    v9 = (*(*v17 + 8))(v17);
  }

  v14 = 1;
LABEL_10:
  if (v22)
  {
    v9 = v21;
    v21 = 0;
    if (v9)
    {
      v9 = (*(*v9 + 8))(v9);
    }
  }

  v15 = v20[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v9) == v15)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v20);
  }

  return v14;
}

uint64_t llvm::StdThreadPool::StdThreadPool(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *a1 = &unk_1F1A360D8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1018212795;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 292) = a2;
  *(a1 + 300) = llvm::ThreadPoolStrategy::compute_thread_count(&v5);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  return a1;
}

BOOL llvm::StdThreadPool::grow(pthread_rwlock_t **this, int a2)
{
  llvm::sys::RWMutexImpl::lock(this + 4);
  v4 = this[1];
  v5 = this[2];
  v6 = (v5 - v4) >> 3;
  v7 = *(this + 75);
  if (v6 < v7)
  {
    v8 = v7 >= a2 ? a2 : *(this + 75);
    if (v8 > ((v5 - v4) >> 3))
    {
      v9 = this[3];
      if (v5 >= v9)
      {
        if (!((v6 + 1) >> 61))
        {
          v10 = v9 - v4;
          v11 = v10 >> 2;
          if (v10 >> 2 <= v6 + 1)
          {
            v11 = v6 + 1;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (!(v12 >> 61))
            {
              operator new();
            }

            std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
          }

          operator new();
        }

        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      operator new();
    }
  }

  return llvm::sys::RWMutexImpl::unlock_shared(this + 4);
}

_BYTE *llvm::StdThreadPool::processTasks(uint64_t a1, uint64_t a2)
{
  v4 = QOS_CLASS_UNSPECIFIED;
  v5 = 0;
  v67 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 96);
  v7 = (a2 >> 4) ^ (a2 >> 9);
  do
  {
    v66 = 0;
    v63 = 0;
    __lk.__m_ = v6;
    __lk.__owns_ = 1;
    std::mutex::lock(v6);
    v9 = *(a1 + 316);
    v10 = v9 == v4;
    v11 = *(a1 + 304);
    v12 = v11 != v5;
    v13 = *(a1 + 288);
    if (v13 == 1)
    {
      if (*(a1 + 88))
      {
        v14 = 0;
      }

      else
      {
        v14 = v11 == v5;
      }

      if (v14)
      {
        while (1)
        {
          if (!v10)
          {
            pthread_set_qos_class_self_np(v9, 0);
            goto LABEL_38;
          }

          if (a2)
          {
            v16 = *(a1 + 280);
            if (!v16)
            {
              goto LABEL_76;
            }

            v17 = *(a1 + 264);
            v18 = v16 - 1;
            v19 = v18 & v7;
            v20 = *(v17 + 16 * (v18 & v7));
            if (v20 != a2)
            {
              break;
            }
          }

LABEL_20:
          std::condition_variable::wait((a1 + 160), &__lk);
          v9 = *(a1 + 316);
          v10 = v9 == v4;
          v11 = *(a1 + 304);
          v12 = v11 != v5;
          LOBYTE(v13) = *(a1 + 288);
          if ((v13 & 1) == 0 || *(a1 + 88) || v11 != v5)
          {
            goto LABEL_10;
          }
        }

        v21 = 1;
        while (v20 != -4096)
        {
          v22 = v19 + v21++;
          v19 = v22 & v18;
          v20 = *(v17 + 16 * (v22 & v18));
          if (v20 == a2)
          {
            goto LABEL_20;
          }
        }

LABEL_76:
        v15 = 1;
        goto LABEL_77;
      }

      LOBYTE(v13) = 1;
    }

LABEL_10:
    if (!v10)
    {
      pthread_set_qos_class_self_np(v9, 0);
      if (!v12)
      {
LABEL_38:
        v23 = 0;
        v24 = 2;
        v4 = v9;
        if (!__lk.__owns_)
        {
          goto LABEL_40;
        }

LABEL_39:
        std::mutex::unlock(__lk.__m_);
        goto LABEL_40;
      }

      v4 = v9;
LABEL_30:
      if (v5)
      {
        os_activity_scope_leave(&state);
      }

      if (v11)
      {
        os_activity_scope_enter(v11, &state);
        v23 = 0;
        v24 = 2;
        v5 = v11;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v5 = 0;
        v23 = 0;
        v24 = 2;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_40;
    }

    if (v12)
    {
      goto LABEL_30;
    }

    if (v13)
    {
LABEL_81:
      ++*(a1 + 256);
      v49 = *(a1 + 80);
      v50 = *(*(a1 + 56) + 8 * (v49 / 0x66));
      v51 = v66;
      v66 = 0;
      if (v51 == v65)
      {
        (*(*v51 + 32))(v51);
      }

      else if (v51)
      {
        (*(*v51 + 40))(v51);
      }

      v52 = v50 + 40 * (v49 % 0x66);
      v53 = *(v52 + 24);
      if (v53)
      {
        if (v53 == v52)
        {
          v66 = v65;
          (*(**(v52 + 24) + 24))(*(v52 + 24), v65);
        }

        else
        {
          v66 = *(v52 + 24);
          *(v52 + 24) = 0;
        }
      }

      else
      {
        v66 = 0;
      }

      v54 = *(a1 + 80);
      v55 = *(*(a1 + 56) + 8 * (v54 / 0x66));
      v56 = v54 % 0x66;
      v63 = *(v55 + 40 * v56 + 32);
      if (v63)
      {
        v57 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](a1 + 264, &v63);
        ++*v57;
        v58 = *(a1 + 80);
        v55 = *(*(a1 + 56) + 8 * (v58 / 0x66));
        v56 = v58 % 0x66;
      }

      v59 = v55 + 40 * v56;
      v60 = *(v59 + 24);
      if (v60 == v59)
      {
        (*(*v60 + 32))(v60);
      }

      else if (v60)
      {
        (*(*v60 + 40))(v60);
      }

      v61 = vaddq_s64(*(a1 + 80), xmmword_1A75A6420);
      *(a1 + 80) = v61;
      if (v61.i64[0] >= 0xCCuLL)
      {
        operator delete(**(a1 + 56));
        v24 = 0;
        *(a1 + 56) += 8;
        *(a1 + 80) -= 102;
        v23 = 1;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v24 = 0;
        v23 = 1;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_40;
    }

    if (*(a1 + 88))
    {
      v15 = 0;
      if (!a2)
      {
        goto LABEL_81;
      }

LABEL_77:
      if (!v15)
      {
        goto LABEL_81;
      }
    }

    if (v5)
    {
      os_activity_scope_leave(&state);
      v5 = 0;
      v23 = 0;
      v24 = 1;
      if (__lk.__owns_)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v23 = 0;
      v24 = 1;
      if (__lk.__owns_)
      {
        goto LABEL_39;
      }
    }

LABEL_40:
    if (!v23)
    {
      goto LABEL_63;
    }

    if (!v66)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v66 + 48))(v66);
    std::mutex::lock(v6);
    v25 = *(a1 + 256) - 1;
    *(a1 + 256) = v25;
    v26 = v63;
    if (!v63)
    {
      goto LABEL_59;
    }

    v27 = *(a1 + 264);
    v28 = *(a1 + 280);
    if (v28)
    {
      v29 = (v28 - 1) & ((v63 >> 4) ^ (v63 >> 9));
      v30 = *(v27 + 16 * v29);
      if (v30 == v63)
      {
        goto LABEL_50;
      }

      v31 = 1;
      while (v30 != -4096)
      {
        v32 = v29 + v31++;
        v29 = v32 & (v28 - 1);
        v30 = *(v27 + 16 * v29);
        if (v30 == v63)
        {
          goto LABEL_50;
        }
      }
    }

    v29 = *(a1 + 280);
LABEL_50:
    v33 = v27 + 16 * v29;
    v34 = *(v33 + 8) - 1;
    *(v33 + 8) = v34;
    if (v34)
    {
      if (v26)
      {
        goto LABEL_52;
      }
    }

    else
    {
      *v33 = -8192;
      *(a1 + 272) = vadd_s32(*(a1 + 272), 0x1FFFFFFFFLL);
      v26 = v63;
      if (v63)
      {
LABEL_52:
        if (!v28)
        {
          goto LABEL_66;
        }

        v35 = v28 - 1;
        v36 = (v28 - 1) & ((v26 >> 4) ^ (v26 >> 9));
        v37 = *(v27 + 16 * v36);
        if (v37 != v26)
        {
          v38 = 1;
          while (v37 != -4096)
          {
            v39 = v36 + v38++;
            v36 = v39 & v35;
            v37 = *(v27 + 16 * v36);
            if (v37 == v26)
            {
              goto LABEL_61;
            }
          }

LABEL_66:
          v40 = *(a1 + 56);
          if (*(a1 + 64) != v40)
          {
            v41 = *(a1 + 80);
            v42 = (v40 + 8 * (v41 / 0x66));
            v43 = *v42;
            v44 = *v42 + 40 * (v41 % 0x66);
            v45 = *(v40 + 8 * ((*(a1 + 88) + v41) / 0x66)) + 40 * ((*(a1 + 88) + v41) % 0x66);
            while (v44 != v45)
            {
              if (*(v44 + 32) == v26)
              {
                goto LABEL_61;
              }

              v44 += 40;
              if (v44 - v43 == 4080)
              {
                v46 = v42[1];
                ++v42;
                v43 = v46;
                v44 = v46;
              }
            }
          }

          v47 = 1;
          v48 = *(a1 + 312);
          if (v48 == 1)
          {
LABEL_73:
            os_release(*(a1 + 304));
            *(a1 + 304) = 0;
          }

LABEL_74:
          std::mutex::unlock(v6);
          std::condition_variable::notify_all((a1 + 208));
          if ((v47 | v48) == 1)
          {
            std::condition_variable::notify_all((a1 + 160));
          }

          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }

LABEL_59:
    if (!v25 && !*(a1 + 88))
    {
      v47 = 0;
      v48 = *(a1 + 312);
      if (v48 == 1)
      {
        goto LABEL_73;
      }

      goto LABEL_74;
    }

LABEL_61:
    std::mutex::unlock(v6);
LABEL_62:
    v24 = 0;
LABEL_63:
    result = v66;
    if (v66 == v65)
    {
      result = (*(*v66 + 32))(v66);
    }

    else if (v66)
    {
      result = (*(*v66 + 40))();
    }
  }

  while ((v24 | 2) == 2);
  return result;
}