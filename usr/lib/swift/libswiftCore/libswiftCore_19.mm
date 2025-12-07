void *anonymous namespace::Remangler::mangleKeyPathThunkHelper@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(a2 + 18);
  v13 = a2;
  if ((v12 - 1) >= 2)
  {
    if (v12 == 5)
    {
      v14 = *a2;
      v13 = *a2;
LABEL_9:
      v15 = &v14[*(a2 + 8)];
      goto LABEL_14;
    }

    v13 = 0;
  }

  switch(v12)
  {
    case 1:
      v15 = (a2 + 8);
      goto LABEL_14;
    case 2:
      v15 = (a2 + 16);
      goto LABEL_14;
    case 5:
      v14 = *a2;
      goto LABEL_9;
  }

  v15 = 0;
LABEL_14:
  while (v13 != v15)
  {
    if (*(*v13 + 8) != 228)
    {
      if (*a6)
      {
        return result;
      }
    }

    ++v13;
  }

  result = swift::Demangle::__runtime::CharVector::append((a1 + 12728), a3, a4, *(a1 + 12744));
  v17 = *(a2 + 18);
  v18 = a2;
  if ((v17 - 1) >= 2)
  {
    if (v17 == 5)
    {
      v19 = *a2;
      v18 = *a2;
LABEL_26:
      v20 = &v19[*(a2 + 8)];
      goto LABEL_31;
    }

    v18 = 0;
  }

  switch(v17)
  {
    case 1:
      v20 = (a2 + 8);
      goto LABEL_31;
    case 2:
      v20 = (a2 + 16);
      goto LABEL_31;
    case 5:
      v19 = *a2;
      goto LABEL_26;
  }

  v20 = 0;
LABEL_31:
  while (v18 != v20)
  {
    if (*(*v18 + 8) == 228)
    {
      if (*a6)
      {
        return result;
      }
    }

    ++v18;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleProtocolList@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, swift::Demangle::__runtime::Node *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 18);
  if ((v11 - 1) >= 2)
  {
    if (v11 != 5 || !*(a2 + 2))
    {
      v12 = 0;
      goto LABEL_7;
    }

    a2 = *a2;
  }

  v12 = *a2;
LABEL_7:
  v42 = 1;
  v13 = *(v12 + 18);
  v14 = v12;
  if ((v13 - 1) >= 2)
  {
    if (v13 == 5)
    {
      v15 = *v12;
      v14 = *v12;
      goto LABEL_15;
    }

    v14 = 0;
  }

  switch(v13)
  {
    case 1:
      v16 = v12 + 1;
      if (v14 != v12 + 1)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    case 2:
      v16 = v12 + 2;
      if (v14 != v12 + 2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    case 5:
      v15 = *v12;
LABEL_15:
      v16 = &v15[*(v12 + 2)];
      if (v14 != v16)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
  }

  v16 = 0;
  if (!v14)
  {
LABEL_22:
    v17 = 1;
    goto LABEL_23;
  }

  do
  {
LABEL_31:
    v23 = *v14;
    if (*(*v14 + 8) != 243)
    {
      goto LABEL_38;
    }

    v24 = *(v23 + 18);
    if ((v24 - 1) < 2)
    {
      goto LABEL_36;
    }

    if (v24 == 5 && *(v23 + 2))
    {
      v23 = *v23;
LABEL_36:
      v23 = *v23;
      goto LABEL_38;
    }

    v23 = 0;
LABEL_38:
    {
      v25 = *(v23 + 18);
      v26 = v23;
      if ((v25 - 1) >= 2)
      {
        if (v25 == 5)
        {
          v27 = *v23;
          v26 = *v23;
LABEL_47:
          v28 = &v27[*(v23 + 2)];
          goto LABEL_53;
        }

        v26 = 0;
      }

      switch(v25)
      {
        case 1:
          v28 = (v23 + 1);
          goto LABEL_53;
        case 2:
          v28 = (v23 + 2);
          goto LABEL_53;
        case 5:
          v27 = *v23;
          goto LABEL_47;
      }

      v28 = 0;
LABEL_53:
      while (v26 != v28)
      {
        if (*a6)
        {
          return result;
        }

        ++v26;
      }
    }

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    ++v14;
  }

  while (v14 != v16);
  v17 = v42;
LABEL_23:
  if (!a3)
  {
    v20 = *(this + 1593);
    if (a4)
    {
      v21 = "Xl";
      v22 = (this + 12728);
LABEL_57:
      result = swift::Demangle::__runtime::CharVector::append(v22, v21, 2uLL, v20);
      v29 = 0;
      a3 = 0;
      v30 = 0;
      goto LABEL_77;
    }

    v31 = *(this + 3184);
    v32 = *(this + 3185);
    v33 = *(this + 1591);
    if (v31 < v32)
    {
      goto LABEL_76;
    }

    v34 = v20[1];
    if ((v33 + v32) == v34)
    {
      v35 = v20[2];
      if (v34 + 1 <= v35)
      {
        v20[1] = v34 + 1;
        LODWORD(v36) = 1;
LABEL_75:
        *(this + 3185) = v32 + v36;
LABEL_76:
        v29 = 0;
        a3 = 0;
        v30 = 0;
        *(this + 3184) = v31 + 1;
        *(v33 + v31) = 112;
        goto LABEL_77;
      }
    }

    else
    {
      v35 = v20[2];
    }

    if ((2 * v32) <= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = (2 * v32);
    }

    v37 = v36 + v32;
    if (!v34 || v34 + v37 > v35)
    {
      v38 = 2 * v20[4];
      if (v38 <= v37 + 1)
      {
        v38 = v37 + 1;
      }

      v20[4] = v38;
      v39 = v38 + 8;
      v40 = v20;
      result = malloc_type_malloc(v38 + 8, 0x2004093837F09uLL);
      v20 = v40;
      v41 = result + v39;
      *result = v40[3];
      v34 = result + 1;
      v40[2] = v41;
      v40[3] = result;
    }

    v20[1] = v34 + v37;
    if (v32)
    {
      result = memcpy(v34, *(this + 1591), v32);
    }

    *(this + 1591) = v34;
    LODWORD(v32) = *(this + 3185);
    v33 = v34;
    v31 = *(this + 3184);
    goto LABEL_75;
  }

  v19 = *(a3 + 18);
  if (v19 == 1)
  {
    goto LABEL_28;
  }

  if (v19 != 5 || *(a3 + 2) != 1)
  {
    v30 = 322;
    v29 = 10;
LABEL_77:
    *a6 = v29;
    *(a6 + 8) = a3;
    *(a6 + 16) = v30;
    return result;
  }

  a3 = *a3;
LABEL_28:
  if (!*a6)
  {
    v20 = *(this + 1593);
    v21 = "Xc";
    v22 = (this + 12728);
    goto LABEL_57;
  }

  return result;
}

void *anonymous namespace::Remangler::mangleAutoDiffFunctionOrSimpleThunk@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(a2 + 18);
  v13 = a2;
  if ((v12 - 1) >= 2)
  {
    if (v12 == 5)
    {
      v13 = *a2;
    }

    else
    {
      v13 = 0;
    }
  }

  while (1)
  {
    v14 = *(a2 + 18);
    if (v14 != 5)
    {
      break;
    }

    if (v13 == (*a2 + 8 * *(a2 + 8)))
    {
      goto LABEL_18;
    }

LABEL_15:
    v17 = *v13;
    if (*(*v13 + 8) == 335)
    {
      goto LABEL_18;
    }

    ++v13;
    if (*a6)
    {
      return result;
    }
  }

  if (v14 == 1)
  {
    v15 = (a2 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v14 == 2)
  {
    v16 = (a2 + 16);
  }

  else
  {
    v16 = v15;
  }

  if (v13 != v16)
  {
    goto LABEL_15;
  }

LABEL_18:
  swift::Demangle::__runtime::CharVector::append((a1 + 12728), a3, a4, *(a1 + 12744));
  if (!*a6)
  {
    if (!*a6)
    {
      v19 = *(a1 + 12736);
      v20 = *(a1 + 12740);
      v21 = *(a1 + 12728);
      if (v19 >= v20)
      {
        v22 = *(a1 + 12744);
        v23 = v22[1];
        if (&v21[v20] != v23)
        {
          v24 = v22[2];
          goto LABEL_24;
        }

        v24 = v22[2];
        if ((v23 + 1) <= v24)
        {
          v22[1] = v23 + 1;
          LODWORD(v25) = 1;
        }

        else
        {
LABEL_24:
          if ((2 * v20) <= 4)
          {
            v25 = 4;
          }

          else
          {
            v25 = (2 * v20);
          }

          v26 = v25 + v20;
          if (!v23 || &v23[v26] > v24)
          {
            v27 = 2 * v22[4];
            if (v27 <= v26 + 1)
            {
              v27 = v26 + 1;
            }

            v22[4] = v27;
            v28 = v27 + 8;
            v29 = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
            v30 = v29 + v28;
            *v29 = v22[3];
            v23 = (v29 + 1);
            v22[2] = v30;
            v22[3] = v29;
          }

          v22[1] = &v23[v26];
          if (v20)
          {
            memcpy(v23, *(a1 + 12728), v20);
          }

          *(a1 + 12728) = v23;
          LODWORD(v20) = *(a1 + 12740);
          v21 = v23;
          v19 = *(a1 + 12736);
        }

        *(a1 + 12740) = v20 + v25;
      }

      *(a1 + 12736) = v19 + 1;
      v21[v19] = 112;
      if (!*a6)
      {
        v31 = *(a1 + 12736);
        v32 = *(a1 + 12740);
        v33 = *(a1 + 12728);
        if (v31 >= v32)
        {
          v34 = *(a1 + 12744);
          v35 = v34[1];
          if ((v33 + v32) != v35)
          {
            v36 = v34[2];
            goto LABEL_42;
          }

          v36 = v34[2];
          if (v35 + 1 <= v36)
          {
            v34[1] = v35 + 1;
            LODWORD(v37) = 1;
          }

          else
          {
LABEL_42:
            if ((2 * v32) <= 4)
            {
              v37 = 4;
            }

            else
            {
              v37 = (2 * v32);
            }

            v38 = v37 + v32;
            if (!v35 || v35 + v38 > v36)
            {
              v39 = 2 * v34[4];
              if (v39 <= v38 + 1)
              {
                v39 = v38 + 1;
              }

              v34[4] = v39;
              v40 = v39 + 8;
              result = malloc_type_malloc(v39 + 8, 0x2004093837F09uLL);
              v41 = result + v40;
              *result = v34[3];
              v35 = result + 1;
              v34[2] = v41;
              v34[3] = result;
            }

            v34[1] = v35 + v38;
            if (v32)
            {
              result = memcpy(v35, *(a1 + 12728), v32);
            }

            *(a1 + 12728) = v35;
            LODWORD(v32) = *(a1 + 12740);
            v33 = v35;
            v31 = *(a1 + 12736);
          }

          *(a1 + 12740) = v32 + v37;
        }

        *(a1 + 12736) = v31 + 1;
        *(v33 + v31) = 114;
        *a6 = 0;
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::find<swift::Demangle::__runtime::SubstitutionEntry>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 8);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v10 == v4)
    {
      if (i[3] == *(a2 + 8) && *(i + 32) == *(a2 + 16))
      {
        v11 = *a2;
        if (*(i + 32))
        {
          if (swift::Demangle::__runtime::SubstitutionEntry::identifierEquals(i[2], *a2, v11))
          {
            return i;
          }
        }

        else if (swift::Demangle::__runtime::SubstitutionEntry::deepEquals((i + 2), i[2], v11))
        {
          return i;
        }
      }
    }

    else
    {
      if (v6 <= 1)
      {
        v10 &= *&v2 - 1;
      }

      else if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a2 + 8);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(a2 + 8);
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v3)
    {
      break;
    }

    if (v7 <= 1)
    {
      v11 &= *&v4 - 1;
    }

    else if (v11 >= *&v4)
    {
      v11 %= *&v4;
    }

    if (v11 != v8)
    {
      goto LABEL_24;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  if (v10[3] != *(a2 + 8) || *(v10 + 32) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  v12 = *a2;
  if (*(v10 + 32))
  {
    if (swift::Demangle::__runtime::SubstitutionEntry::identifierEquals(v10[2], *a2, v12))
    {
      return v10;
    }

    goto LABEL_12;
  }

  if ((swift::Demangle::__runtime::SubstitutionEntry::deepEquals((v10 + 2), v10[2], v12) & 1) == 0)
  {
    goto LABEL_12;
  }

  return v10;
}

const char *swift::Demangle::__runtime::getNodeKindString(unsigned int a1)
{
  if (a1 > 0x175)
  {
    return "Demangle::Node::Kind::???";
  }

  else
  {
    return off_1E69EB1E8[a1];
  }
}

double swift::Demangle::__runtime::getNodeTreeAsString@<D0>(std::string *__return_ptr a1@<X8>, swift::Demangle::__runtime *this@<X0>)
{
  memset(&v4, 0, sizeof(v4));
  printNode(&v4, this, 0);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void printNode(std::string *a1, const swift::Demangle::__runtime::Node *a2, int a3)
{
  for (i = 2 * a3; i; --i)
  {
    std::string::push_back(a1, 32);
  }

  if (a2)
  {
    std::string::append(a1, "kind=", 5uLL);
    v7 = a2 + 16;
    NodeKindString = swift::Demangle::__runtime::getNodeKindString(*(a2 + 8));
    v9 = strlen(NodeKindString);
    std::string::append(a1, NodeKindString, v9);
    v10 = *(a2 + 18);
    if (v10 == 3)
    {
      std::string::append(a1, ", text=", 8uLL);
      std::string::append(a1, *a2, *(a2 + 1));
      std::string::push_back(a1, 34);
      v10 = *(a2 + 18);
    }

    if (v10 == 4)
    {
      std::string::append(a1, ", index=", 8uLL);
      swift::Demangle::__runtime::DemanglerPrinter::operator<<(a1, *a2);
    }

    std::string::push_back(a1, 10);
    v11 = *(a2 + 18);
    v12 = a2;
    if ((v11 - 1) >= 2)
    {
      if (v11 == 5)
      {
        v13 = *a2;
        v12 = *a2;
LABEL_19:
        v7 = &v13[8 * *(a2 + 2)];
        goto LABEL_23;
      }

      v12 = 0;
    }

    switch(v11)
    {
      case 1:
        v7 = a2 + 8;
        break;
      case 2:
        break;
      case 5:
        v13 = *a2;
        goto LABEL_19;
      default:
        v7 = 0;
        break;
    }

LABEL_23:
    while (v12 != v7)
    {
      v14 = *v12;
      v12 += 8;
      printNode(a1, v14, a3 + 1);
    }

    return;
  }

  std::string::append(a1, "<<NULL>>", 8uLL);
}

void swift::Demangle::__runtime::Node::dump(swift::Demangle::__runtime::Node *this)
{
  memset(&v3, 0, sizeof(v3));
  printNode(&v3, this, 0);
  __p = v3;
  if ((v3.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v3.__r_.__value_.__r.__words[0];
  }

  fputs(p_p, *MEMORY[0x1E69E9848]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t swift::Demangle::__runtime::Demangler::dump(swift::Demangle::__runtime::Demangler *this)
{
  v2 = MEMORY[0x1E69E9848];
  if (*(this + 28))
  {
    v3 = 0;
    do
    {
      fprintf(*v2, "Substitution[%c]:\n", v3 + 65);
      v4 = *(*(this + 13) + 8 * v3);
      memset(&v11, 0, sizeof(v11));
      printNode(&v11, v4, 0);
      __p = v11;
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v11.__r_.__value_.__r.__words[0];
      }

      fputs(p_p, *v2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      fputc(10, *v2);
      ++v3;
    }

    while (*(this + 28) > v3);
  }

  if (*(this + 24))
  {
    v6 = 0;
    do
    {
      fprintf(*v2, "NodeStack[%u]:\n", v6);
      v7 = *(*(this + 11) + 8 * v6);
      memset(&v11, 0, sizeof(v11));
      printNode(&v11, v7, 0);
      __p = v11;
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &__p;
      }

      else
      {
        v8 = v11.__r_.__value_.__r.__words[0];
      }

      fputs(v8, *v2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      fputc(10, *v2);
      ++v6;
    }

    while (*(this + 24) > v6);
  }

  return fprintf(*v2, "Position = %zd:\n%.*s\n%*s\n", *(this + 9), *(this + 8), *(this + 7), *(this + 9) + 1, "^");
}

void swift::Demangle::__runtime::warnv(swift::Demangle::__runtime *this, char *__format, va_list a3, char *a4)
{
  v5 = vsnprintf(0, 0, __format, a3);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = (v5 + 1);
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      if ((vsnprintf(v7, v6, __format, a3) & 0x80000000) == 0)
      {
        v9 = MEMORY[0x1E69E9848];
        fputs(v8, *MEMORY[0x1E69E9848]);
        fflush(*v9);
        asl_log(0, 0, 3, "%s", v8);
        free(v8);
        return;
      }

      free(v8);
    }
  }

  v10 = MEMORY[0x1E69E9848];
  fputs("unable to format warning message", *MEMORY[0x1E69E9848]);
  fflush(*v10);
  asl_log(0, 0, 3, "%s", "unable to format warning message");
}

void demangleFatal(char *__format, va_list a2, char *a3)
{
  v4 = vsnprintf(0, 0, __format, a2);
  if ((v4 & 0x80000000) == 0)
  {
    v6 = (v4 + 1);
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      if ((vsnprintf(v7, v6, __format, a2) & 0x80000000) == 0)
      {
        reportError(v8, v9);
        abort();
      }

      free(v8);
    }
  }

  reportError("unable to format fatal error message", v5);
  abort();
}

void reportError(const char *a1, const char *a2)
{
  v3 = MEMORY[0x1E69E9848];
  fputs(a1, *MEMORY[0x1E69E9848]);
  fflush(*v3);
  asl_log(0, 0, 3, "%s", a1);
  v5 = 0;
  v9 = 0;
  for (i = qword_1EA79DC90[0]; ; i = v8)
  {
    if (v5)
    {
      free(v5);
      v9 = 0;
    }

    if (i)
    {
      break;
    }

    v7 = strdup(a1);
    v8 = 0;
    v9 = v7;
    atomic_compare_exchange_strong_explicit(qword_1EA79DC90, &v8, v7, memory_order_release, memory_order_relaxed);
    if (!v8)
    {
      return;
    }

LABEL_3:
    v5 = v9;
  }

  swift_asprintf(&v9, v4, i, a1);
  v8 = i;
  atomic_compare_exchange_strong_explicit(qword_1EA79DC90, &v8, v9, memory_order_release, memory_order_relaxed);
  if (v8 != i)
  {
    goto LABEL_3;
  }

  if (malloc_size(i))
  {

    free(i);
  }
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::demangleOldSymbolAsNode(_WORD *a1, size_t a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  __p = 0;
  v174 = 0;
  v175 = 0;
  __src = a1;
  __len = a2;
  v178 = a3;
  v3 = a2 - 2;
  if (a2 < 2 || *a1 != 21599)
  {
    goto LABEL_3;
  }

  v8 = a1 + 1;
  __src = a1 + 1;
  __len = a2 - 2;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, 101);
  if (v3 < 2)
  {
    goto LABEL_202;
  }

  if (*v8 != 21332)
  {
    if (*v8 == 28500)
    {
      __src = a1 + 2;
      __len = a2 - 4;
      v11 = a3;
      v12 = 174;
    }

    else
    {
      v11 = a3;
      switch(*v8)
      {
        case 0x4F54:
          __src = a1 + 2;
          __len = a2 - 4;
          v12 = 170;
          break;
        case 0x4454:
          __src = a1 + 2;
          __len = a2 - 4;
          v12 = 57;
          break;
        case 0x6454:
          __src = a1 + 2;
          __len = a2 - 4;
          v12 = 58;
          break;
        case 0x5654:
          __src = a1 + 2;
          __len = a2 - 4;
          v11 = a3;
          v12 = 268;
          break;
        default:
          goto LABEL_202;
      }
    }

    v156 = swift::Demangle::__runtime::NodeFactory::createNode(v11, v12);
    swift::Demangle::__runtime::Node::addChild(Node, v156, a3, v157, v158);
LABEL_202:
    if (!v159)
    {
      goto LABEL_3;
    }

    swift::Demangle::__runtime::Node::addChild(Node, v159, v178, v160, v161);
    v162 = __len;
    if (__len)
    {
      v163 = v178;
      v164 = __src;
      __src = __src + __len;
      __len = 0;
      v165 = *(v178 + 1);
      if (!v165 || (v166 = &v165[v162], &v165[v162] > *(v178 + 2)))
      {
        v167 = 2 * *(v178 + 4);
        if (v167 <= v162 + 1)
        {
          v167 = v162 + 1;
        }

        *(v178 + 4) = v167;
        v168 = v167 + 8;
        v169 = malloc_type_malloc(v167 + 8, 0x2004093837F09uLL);
        *v169 = *(v163 + 3);
        v165 = (v169 + 1);
        *(v163 + 2) = v169 + v168;
        *(v163 + 3) = v169;
        v166 = v169 + v162 + 8;
      }

      *(v163 + 1) = v166;
      memmove(v165, v164, v162);
      NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v163, 232, v165, v162);
      swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, v178, v171, v172);
    }

    v4 = Node;
    goto LABEL_4;
  }

  v13 = (a1 + 2);
  v14 = a2 - 4;
  __src = a1 + 2;
  __len = a2 - 4;
  if (a2 == 4)
  {
    goto LABEL_3;
  }

  v15 = "u16";
  while (1)
  {
    v16 = *v13;
    switch(v16)
    {
      case 'f':
        __src = v13 + 1;
        __len = v14 - 1;
        v18 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 79);
        v26 = __len;
        if (__len)
        {
          v27 = __src;
          v28 = *__src;
          if (v28 == 113)
          {
            __src = __src + 1;
            --__len;
            v29 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 228);
            swift::Demangle::__runtime::Node::addChild(v18, v29, v178, v30, v31);
            v26 = __len;
            v32 = v178;
            if (!__len)
            {
              v48 = 4294967294;
              goto LABEL_46;
            }

            v27 = __src;
            LOBYTE(v28) = *__src;
          }

          else
          {
            v32 = v178;
          }

          __src = v27 + 1;
          __len = v26 - 1;
          v48 = (v28 - 48);
        }

        else
        {
          v32 = v178;
          v48 = 4294967294;
        }

LABEL_46:
        v51 = swift::Demangle::__runtime::NodeFactory::createNode(v32, 227, v48);
        while (1)
        {
          while (1)
          {
            while (1)
            {
              swift::Demangle::__runtime::Node::addChild(v18, v51, v178, v49, v50);
              v39 = __len;
              if (__len)
              {
                v40 = __src;
                if (*__src == 95)
                {
                  goto LABEL_191;
                }
              }

              v51 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 80);
              v52 = __len;
              v53 = __len - 2;
              if (__len < 2)
              {
                if (!__len)
                {
                  goto LABEL_3;
                }

                v54 = __src;
                goto LABEL_53;
              }

              v54 = __src;
              if (*__src != 24430)
              {
                break;
              }

              __src = __src + 2;
              __len -= 2;
            }

            if (*__src == 28771)
            {
              break;
            }

            switch(*__src)
            {
              case 0x6C63:
                __src = __src + 2;
                __len -= 2;
                if (!v61)
                {
                  goto LABEL_3;
                }

                v62 = v61;
                v63 = v15;
                v64 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 82, 5);
                swift::Demangle::__runtime::Node::addChild(v51, v64, v178, v65, v66);
                v67 = v178;
                v68 = *(v62 + 8);
                if (v68)
                {
                  v69 = *v62;
                  v70 = *(v178 + 1);
                  if (!v70 || (v71 = &v70[v68], &v70[v68] > *(v178 + 2)))
                  {
                    v72 = 2 * *(v178 + 4);
                    if (v72 <= v68 + 1)
                    {
                      v72 = v68 + 1;
                    }

                    *(v178 + 4) = v72;
                    v73 = v72 + 8;
                    v74 = malloc_type_malloc(v72 + 8, 0x2004093837F09uLL);
                    *v74 = *(v67 + 3);
                    v70 = (v74 + 1);
                    *(v67 + 2) = v74 + v73;
                    *(v67 + 3) = v74;
                    v71 = v74 + v68 + 8;
                  }

                  *(v67 + 1) = v71;
                  memmove(v70, v69, v68);
                }

                else
                {
                  v70 = 0;
                }

                v116 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v67, 83, v70, v68);
                swift::Demangle::__runtime::Node::addChild(v51, v116, v178, v117, v118);
                v15 = v63;
                if (__len)
                {
LABEL_147:
                  if (*__src != 95)
                  {
                    goto LABEL_148;
                  }
                }

                else
                {
LABEL_148:
                  while (1)
                  {
                    if (!v120)
                    {
                      break;
                    }

                    v121 = v120;
                    v122 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 243);
                    swift::Demangle::__runtime::Node::addChild(v122, v121, v178, v123, v124);
                    if (!v122)
                    {
                      break;
                    }

                    swift::Demangle::__runtime::Node::addChild(v51, v122, v178, v49, v50);
                    if (__len)
                    {
                      goto LABEL_147;
                    }
                  }
                }

                if (!__len || *__src != 95)
                {
                  goto LABEL_3;
                }

                __src = __src + 1;
                --__len;
                break;
              case 0x5F69:
                __src = __src + 2;
                __len -= 2;
                v57 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 82, 6);
                if (!v57)
                {
                  goto LABEL_3;
                }

                goto LABEL_77;
              case 0x5F6B:
                __src = __src + 2;
                __len -= 2;
                v57 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 82, 7);
                if (!v57)
                {
                  goto LABEL_3;
                }

                goto LABEL_77;
              case 0x5F72:
                __src = __src + 2;
                __len -= 2;
                v57 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 82, 8);
                if (!v57)
                {
                  goto LABEL_3;
                }

                goto LABEL_77;
              default:
LABEL_53:
                v55 = *v54;
                if (v55 == 100)
                {
                  ++v54;
                  v52 = __len - 1;
                  __src = v54;
                  __len = v52;
                  if (!v52)
                  {
                    goto LABEL_3;
                  }

                  v55 = *v54;
                  v56 = 64;
                }

                else
                {
                  v56 = 0;
                }

                if (v55 == 103)
                {
                  ++v54;
                  --v52;
                  __src = v54;
                  __len = v52;
                  if (!v52)
                  {
                    goto LABEL_3;
                  }

                  v56 |= 0x80uLL;
                  v55 = *v54;
                }

                if (v55 == 111)
                {
                  ++v54;
                  --v52;
                  __src = v54;
                  __len = v52;
                  if (!v52)
                  {
                    goto LABEL_3;
                  }

                  v56 |= 0x200uLL;
                  v55 = *v54;
                }

                if (v55 == 115)
                {
                  ++v54;
                  --v52;
                  __src = v54;
                  __len = v52;
                  if (!v52)
                  {
                    goto LABEL_3;
                  }

                  v56 |= 0x100uLL;
                  v55 = *v54;
                }

                if (v55 != 95)
                {
                  goto LABEL_3;
                }

                __src = v54 + 1;
                __len = v52 - 1;
                if (!v56)
                {
                  goto LABEL_3;
                }

                v57 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 82, v56);
                if (!v57)
                {
                  goto LABEL_3;
                }

LABEL_77:
                swift::Demangle::__runtime::Node::addChild(v51, v57, v178, v58, v59);
                break;
            }
          }

          v60 = __src + 2;
          __src = __src + 2;
          __len -= 2;
          if (v53 >= 2)
          {
            if (*v60 != 29286)
            {
              goto LABEL_90;
            }

            __src = v54 + 4;
            __len = v52 - 4;
            if (!v125 || !__len || *__src != 95)
            {
              goto LABEL_3;
            }

            v77 = v125;
            v78 = v15;
            __src = __src + 1;
            --__len;
            v79 = v178;
            v80 = 0;
LABEL_159:
            v126 = swift::Demangle::__runtime::NodeFactory::createNode(v79, 82, v80);
            swift::Demangle::__runtime::Node::addChild(v51, v126, v178, v127, v128);
            v129 = v178;
            v130 = *(v77 + 8);
            if (v130)
            {
              v131 = *v77;
              v132 = *(v178 + 1);
              if (!v132 || (v133 = &v132[v130], &v132[v130] > *(v178 + 2)))
              {
                v134 = 2 * *(v178 + 4);
                if (v134 <= v130 + 1)
                {
                  v134 = v130 + 1;
                }

                *(v178 + 4) = v134;
                v135 = v134 + 8;
                v136 = malloc_type_malloc(v134 + 8, 0x2004093837F09uLL);
                *v136 = *(v129 + 3);
                v132 = (v136 + 1);
                *(v129 + 2) = v136 + v135;
                *(v129 + 3) = v136;
                v133 = v136 + v130 + 8;
              }

              *(v129 + 1) = v133;
              memmove(v132, v131, v130);
            }

            else
            {
              v132 = 0;
            }

            v137 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v129, 83, v132, v130);
            swift::Demangle::__runtime::Node::addChild(v51, v137, v178, v138, v139);
            v15 = v78;
          }

          else
          {
            if (!v53)
            {
              goto LABEL_3;
            }

LABEL_90:
            v75 = *v60;
            if (v75 == 105)
            {
              v81 = v54 + 3;
              memset(&v179, 0, sizeof(v179));
              v82 = v52 - 3;
              __src = v81;
              __len = v82;
              if (v82)
              {
                v83 = *v81;
                if (v83 == 95)
                {
LABEL_106:
                  __src = v81 + 1;
                  __len = v82 - 1;
                  v86 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 82, 2);
                  swift::Demangle::__runtime::Node::addChild(v51, v86, v178, v87, v88);
                  v89 = v178;
                  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v90 = &v179;
                  }

                  else
                  {
                    v90 = v179.__r_.__value_.__r.__words[0];
                  }

                  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v179.__r_.__value_.__l.__size_;
                  }

                  if (size)
                  {
                    v92 = *(v178 + 1);
                    if (!v92 || (v93 = &v92[size], &v92[size] > *(v178 + 2)))
                    {
                      v94 = 2 * *(v178 + 4);
                      if (v94 <= size + 1)
                      {
                        v94 = size + 1;
                      }

                      *(v178 + 4) = v94;
                      v95 = v94 + 8;
                      v96 = malloc_type_malloc(v94 + 8, 0x2004093837F09uLL);
                      *v96 = *(v89 + 3);
                      v92 = (v96 + 1);
                      *(v89 + 2) = v96 + v95;
                      *(v89 + 3) = v96;
                      v93 = v96 + size + 8;
                    }

                    *(v89 + 1) = v93;
                    memmove(v92, v90, size);
                  }

                  else
                  {
                    v92 = 0;
                  }

                  v152 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v89, 83, v92, size);
                  swift::Demangle::__runtime::Node::addChild(v51, v152, v178, v153, v154);
                  v151 = 1;
                  v15 = "u16";
                  goto LABEL_186;
                }

                while (1)
                {
                  std::string::push_back(&v179, v83);
                  v84 = __len;
                  v85 = __len != 0;
                  v81 = __len ? __src + 1 : __src;
                  v82 = __len - v85;
                  __src = v81;
                  __len -= v85;
                  if (v84 <= 1)
                  {
                    break;
                  }

                  v83 = *v81;
                  if (v83 == 95)
                  {
                    if (!v82)
                    {
                      goto LABEL_183;
                    }

                    goto LABEL_106;
                  }
                }
              }

              goto LABEL_183;
            }

            if (v75 == 103)
            {
              __src = v54 + 3;
              __len = v52 - 3;
              if (!v76 || !__len || *__src != 95)
              {
                goto LABEL_3;
              }

              v77 = v76;
              v78 = v15;
              __src = __src + 1;
              --__len;
              v79 = v178;
              v80 = 1;
              goto LABEL_159;
            }

            if (v53 >= 2 && *v60 == 27750)
            {
              v140 = v54 + 4;
              memset(&v179, 0, sizeof(v179));
              v141 = v52 - 4;
              __src = v140;
              __len = v141;
              if (!v141)
              {
                goto LABEL_183;
              }

              v142 = *v140;
              if (v142 != 95)
              {
                while (1)
                {
                  std::string::push_back(&v179, v142);
                  v143 = __len;
                  v144 = __len != 0;
                  v140 = __len ? __src + 1 : __src;
                  v141 = __len - v144;
                  __src = v140;
                  __len -= v144;
                  if (v143 <= 1)
                  {
                    break;
                  }

                  v142 = *v140;
                  if (v142 == 95)
                  {
                    if (!v141)
                    {
                      break;
                    }

                    goto LABEL_176;
                  }
                }

LABEL_183:
                v151 = 0;
                goto LABEL_186;
              }

LABEL_176:
              __src = v140 + 1;
              __len = v141 - 1;
              v145 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 82, 3);
              swift::Demangle::__runtime::Node::addChild(v51, v145, v178, v146, v147);
              v113 = v178;
              if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v114 = &v179;
              }

              else
              {
                v114 = v179.__r_.__value_.__r.__words[0];
              }

              if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v115 = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v115 = v179.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if (v75 != 115)
              {
                goto LABEL_3;
              }

              __src = v54 + 3;
              __len = v52 - 3;
              if (v52 == 3)
              {
                goto LABEL_3;
              }

              if (v54[3] != 101)
              {
                goto LABEL_3;
              }

              v97 = (v54 + 4);
              __src = v97;
              __len = v52 - 4;
              if (v52 == 4)
              {
                goto LABEL_3;
              }

              v98 = *v97;
              if ((v98 - 50) < 0xFFFFFFFE)
              {
                goto LABEL_3;
              }

              memset(&v179, 0, sizeof(v179));
              if (v98 == 48)
              {
                v99 = "u8";
              }

              else
              {
                v99 = v15;
              }

              std::string::append(&v179, v99);
              v100 = __src;
              v101 = __len;
              if (__len)
              {
                v100 = __src + 1;
              }

              v102 = __len - (__len != 0);
              __src = v100;
              __len = v102;
              if (v101 < 2)
              {
                goto LABEL_183;
              }

              if (*v100 != 118)
              {
                goto LABEL_183;
              }

              __src = v100 + 1;
              __len = v102 - 1;
              if (!v103 || !__len || *__src != 95)
              {
                goto LABEL_183;
              }

              v104 = v103;
              __src = __src + 1;
              --__len;
              v105 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 82, 4);
              swift::Demangle::__runtime::Node::addChild(v51, v105, v178, v106, v107);
              if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v108 = &v179;
              }

              else
              {
                v108 = v179.__r_.__value_.__r.__words[0];
              }

              if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v109 = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v109 = v179.__r_.__value_.__l.__size_;
              }

              v110 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 83, v108, v109);
              swift::Demangle::__runtime::Node::addChild(v51, v110, v178, v111, v112);
              v113 = v178;
              v114 = *v104;
              v115 = *(v104 + 8);
            }

            v148 = swift::Demangle::__runtime::NodeFactory::createNode(v113, 83, v114, v115);
            swift::Demangle::__runtime::Node::addChild(v51, v148, v178, v149, v150);
            v151 = 1;
LABEL_186:
            if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v179.__r_.__value_.__l.__data_);
            }

            v4 = 0;
            if ((v151 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

      case 'g':
        v17 = 93;
        break;
      case 'r':
        v17 = 94;
        break;
      default:
        goto LABEL_3;
    }

    __src = v13 + 1;
    __len = v14 - 1;
    v18 = swift::Demangle::__runtime::NodeFactory::createNode(v178, v17);
    v19 = __len;
    if (!__len)
    {
      v25 = v178;
      v33 = 4294967294;
      goto LABEL_33;
    }

    v20 = __src;
    v21 = *__src;
    if (v21 != 113)
    {
      v25 = v178;
      goto LABEL_32;
    }

    __src = __src + 1;
    --__len;
    v22 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 228);
    swift::Demangle::__runtime::Node::addChild(v18, v22, v178, v23, v24);
    v19 = __len;
    v25 = v178;
    if (__len)
    {
      v20 = __src;
      LOBYTE(v21) = *__src;
LABEL_32:
      __src = v20 + 1;
      __len = v19 - 1;
      v33 = (v21 - 48);
      goto LABEL_33;
    }

    v33 = 4294967294;
LABEL_33:
    v36 = swift::Demangle::__runtime::NodeFactory::createNode(v25, 227, v33);
    while (1)
    {
      swift::Demangle::__runtime::Node::addChild(v18, v36, v178, v34, v35);
      v39 = __len;
      if (__len)
      {
        v40 = __src;
        if (*__src == 95)
        {
          break;
        }
      }

      v36 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 96);
      if (!v4)
      {
        goto LABEL_4;
      }

      v42 = swift::Demangle::__runtime::NodeFactory::createNode(v178, 243);
      swift::Demangle::__runtime::Node::addChild(v42, v4, v178, v43, v44);
      if (!v42)
      {
        goto LABEL_3;
      }

      while (1)
      {
        swift::Demangle::__runtime::Node::addChild(v36, v42, v178, v45, v46);
        if (__len)
        {
          if (*__src == 95)
          {
            break;
          }
        }

        v4 = 0;
        if (!v42)
        {
          goto LABEL_4;
        }
      }

      __src = __src + 1;
      --__len;
    }

LABEL_191:
    __src = v40 + 1;
    __len = v39 - 1;
    if (!v18)
    {
      goto LABEL_3;
    }

    swift::Demangle::__runtime::Node::addChild(Node, v18, v178, v37, v38);
    v174 = __p;
    if (__len < 4)
    {
      break;
    }

    v155 = __src;
    if (*__src != 1398035551)
    {
      goto LABEL_213;
    }

    v4 = 0;
    v13 = __src + 4;
    v14 = __len - 4;
    __src = __src + 4;
    __len = v14;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  if (__len >= 2)
  {
    v155 = __src;
LABEL_213:
    if (*v155 == 21599)
    {
      __src = v155 + 1;
      __len -= 2;
      goto LABEL_202;
    }
  }

LABEL_3:
  v4 = 0;
LABEL_4:
  if (__p)
  {
    v174 = __p;
    operator delete(__p);
  }

  return v4;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleGlobal(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v4 = *v3;
  if (v4 == 77)
  {
    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (v2 == 1)
    {
      goto LABEL_39;
    }

    v5 = v3[1];
    if (v5 > 0x65)
    {
      if (v3[1] <= 0x6Du)
      {
        if (v5 != 102)
        {
          if (v5 == 109)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v6 = this;
            v7 = *(this + 5);
            v8 = a2;
            v9 = 156;
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v6 = this;
        v7 = *(this + 5);
        v8 = a2;
        v9 = 77;
LABEL_40:
        Node = swift::Demangle::__runtime::NodeFactory::createNode(v7, v9);
        v36 = v8 + 1;
        v34 = v6;
        if (v35)
        {
          goto LABEL_41;
        }

        return 0;
      }

      if (v5 == 110)
      {
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v6 = this;
        v7 = *(this + 5);
        v8 = a2;
        v9 = 168;
        goto LABEL_40;
      }

      if (v5 == 112)
      {
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 196);
        v33 = a2 + 1;
        v34 = this;
        if (v35)
        {
LABEL_41:
          v38 = v35;
          v39 = *(v34 + 5);
LABEL_42:
          v40 = Node;
LABEL_43:
          swift::Demangle::__runtime::Node::addChild(v40, v38, v39, v24, v25);
          return Node;
        }

        return 0;
      }

LABEL_39:
      v6 = this;
      v7 = *(this + 5);
      v8 = a2;
      v9 = 248;
      goto LABEL_40;
    }

    v8 = a2;
    switch(v5)
    {
      case 'L':
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v6 = this;
        v7 = *(this + 5);
        v9 = 256;
        goto LABEL_40;
      case 'P':
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v26 = this;
        v27 = *(this + 5);
        v28 = 99;
        break;
      case 'a':
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v26 = this;
        v27 = *(this + 5);
        v28 = 249;
        break;
      default:
        goto LABEL_39;
    }

LABEL_69:
    Node = swift::Demangle::__runtime::NodeFactory::createNode(v27, v28);
    v66 = v26;
    if (v68)
    {
      v69 = v68;
      v70 = swift::Demangle::__runtime::NodeFactory::createNode(*(v26 + 5), 243);
      swift::Demangle::__runtime::Node::addChild(v70, v69, *(v66 + 5), v71, v72);
      if (v70)
      {
        v39 = *(v66 + 5);
        v40 = Node;
        v38 = v70;
        goto LABEL_43;
      }
    }

    return 0;
  }

  v10 = v2 - 1;
  if (v2 != 1 && *v3 == 16720)
  {
    *(this + 3) = v3 + 2;
    *(this + 4) = v2 - 2;
    if (v2 == 2 || v3[2] != 111)
    {
      v29 = a2;
      v30 = 180;
    }

    else
    {
      v29 = a2;
      *(this + 3) = v3 + 3;
      *(this + 4) = v2 - 3;
      v30 = 181;
    }

    v11 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), v30);
    v57 = *(this + 4);
    v58 = v57 >= 3;
    v59 = v57 - 3;
    if (!v58)
    {
      return v11;
    }

    v60 = *(this + 3);
    if (*v60 != 24415 || *(v60 + 2) != 84)
    {
      return v11;
    }

    v62 = v11;
    *(this + 3) = v60 + 3;
    *(this + 4) = v59;
    if (v63)
    {
      swift::Demangle::__runtime::Node::addChild(v62, v63, *(this + 5), v64, v65);
      return v62;
    }

    return 0;
  }

  if (*v3 > 0x73u)
  {
    if (v4 == 119)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v10;
      v15 = this;
      if ((v49 & 0x100000000) == 0)
      {
        return 0;
      }

      v50 = v49;
      v51 = swift::Demangle::__runtime::NodeFactory::createNode(*(v15 + 5), 264);
      v52 = swift::Demangle::__runtime::NodeFactory::createNode(*(v15 + 5), 104, v50);
      Node = v51;
      swift::Demangle::__runtime::Node::addChild(v51, v52, *(v15 + 5), v53, v54);
      if (!v23)
      {
        return 0;
      }

      goto LABEL_54;
    }

    if (v4 == 116)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v10;
      v26 = this;
      v27 = *(this + 5);
      v8 = a2;
      v28 = 247;
      goto LABEL_69;
    }
  }

  else
  {
    if (v4 == 84)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      if (v2 == 1)
      {
        return 0;
      }

      v43 = v3[1];
      switch(v43)
      {
        case 'r':
          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v44 = this;
          v45 = *(this + 5);
          v46 = a2;
          v47 = 210;
          break;
        case 'W':
          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 206);
          v80 = a2;
          v81 = a2 + 1;
          v34 = this;
          if (v83)
          {
            swift::Demangle::__runtime::Node::addChild(Node, v83, *(this + 5), v84, v85);
            if (v35)
            {
              goto LABEL_41;
            }
          }

          return 0;
        case 'R':
          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v44 = this;
          v45 = *(this + 5);
          v46 = a2;
          v47 = 211;
          break;
        default:
          return 0;
      }

      v86 = swift::Demangle::__runtime::NodeFactory::createNode(v45, v47);
      {
        return v86;
      }

      else
      {
        return 0;
      }
    }

    if (v4 == 87)
    {
      v11 = v2 - 1;
      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      if (v2 == 1)
      {
        return v11;
      }

      v11 = 0;
      v12 = v3[1];
      if (v12 > 0x55)
      {
        if (v3[1] <= 0x6Bu)
        {
          v8 = a2;
          if (v12 == 86)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v6 = this;
            v7 = *(this + 5);
            v9 = 265;
            goto LABEL_40;
          }

          if (v12 != 97)
          {
            return v11;
          }

          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v87 = this;
          v88 = *(this + 5);
          v89 = 208;
          goto LABEL_101;
        }

        if (v12 != 108)
        {
          if (v12 == 116)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 6);
            v15 = this;
            if (!v105)
            {
              return 0;
            }

            swift::Demangle::__runtime::Node::addChild(Node, v105, *(this + 5), v106, v107);
            if (!v23)
            {
              return 0;
            }
          }

          else
          {
            if (v12 != 118)
            {
              return v11;
            }

            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v15 = this;
            v74 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 75);
            v11 = *(v15 + 4);
            if (!v11)
            {
              return v11;
            }

            v75 = *(v15 + 3);
            v76 = *v75;
            if (v76 == 100)
            {
              Node = v74;
              v77 = 0;
            }

            else
            {
              if (v76 != 105)
              {
                return 0;
              }

              Node = v74;
              v77 = 1;
            }

            *(v15 + 3) = v75 + 1;
            *(v15 + 4) = v11 - 1;
            v108 = swift::Demangle::__runtime::NodeFactory::createNode(*(v15 + 5), 54, v77);
            swift::Demangle::__runtime::Node::addChild(Node, v108, *(v15 + 5), v109, v110);
            if (!v23)
            {
              return 0;
            }
          }

LABEL_54:
          v38 = v23;
          v39 = *(v15 + 5);
          goto LABEL_42;
        }

        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v90 = this;
        v91 = *(this + 5);
        v92 = a2;
        v93 = 144;
      }

      else
      {
        if (v3[1] <= 0x4Bu)
        {
          v8 = a2;
          if (v12 == 71)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v87 = this;
            v88 = *(this + 5);
            v89 = 90;
          }

          else
          {
            if (v12 != 73)
            {
              return v11;
            }

            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v87 = this;
            v88 = *(this + 5);
            v89 = 91;
          }

          goto LABEL_101;
        }

        if (v12 != 76)
        {
          v8 = a2;
          if (v12 != 80)
          {
            if (v12 == 84)
            {
              *(this + 3) = v3 + 2;
              *(this + 4) = v2 - 2;
              Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 9);
              v15 = this;
              if (!v17)
              {
                return 0;
              }

              swift::Demangle::__runtime::Node::addChild(Node, v17, *(this + 5), v18, v19);
              if (!v20)
              {
                return 0;
              }

              swift::Demangle::__runtime::Node::addChild(Node, v20, *(this + 5), v21, v22);
              if (!v23)
              {
                return 0;
              }

              goto LABEL_54;
            }

            return v11;
          }

          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v87 = this;
          v88 = *(this + 5);
          v89 = 207;
LABEL_101:
          Node = swift::Demangle::__runtime::NodeFactory::createNode(v88, v89);
          v101 = v8 + 1;
          v34 = v87;
          if (v35)
          {
            goto LABEL_41;
          }

          return 0;
        }

        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v90 = this;
        v91 = *(this + 5);
        v92 = a2;
        v93 = 145;
      }

      Node = swift::Demangle::__runtime::NodeFactory::createNode(v91, v93);
      v94 = v92;
      v95 = v92 + 1;
      v34 = v90;
      if (v97)
      {
        swift::Demangle::__runtime::Node::addChild(Node, v97, v90[5], v98, v99);
        if (v35)
        {
          goto LABEL_41;
        }
      }

      return 0;
    }
  }

  v41 = a2 + 1;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleType(swift::Demangle::__runtime::NodeFactory **this, uint64_t a2, unsigned int a3)
{
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
  swift::Demangle::__runtime::Node::addChild(Node, v5, this[5], v7, v8);
  return Node;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleProtocolConformance(swift::Demangle::__runtime::NodeFactory **this, int a2, unsigned int a3)
{
  if (result)
  {
    v6 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(Node, v6, this[5], v8, v9);
    if (!Node)
    {
      return 0;
    }

    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(v11, v10, this[5], v12, v13);
    if (v11)
    {
      if (result)
      {
        v14 = result;
        v15 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 192);
        swift::Demangle::__runtime::Node::addChild(v15, Node, this[5], v16, v17);
        swift::Demangle::__runtime::Node::addChild(v15, v11, this[5], v18, v19);
        swift::Demangle::__runtime::Node::addChild(v15, v14, this[5], v20, v21);
        return v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleTypeImpl(_anonymous_namespace_::OldDemangler *this, uint64_t a2, unsigned int a3)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    return 0;
  }

  Node = 0;
  v5 = *(this + 3);
  v7 = *v5;
  v6 = v5 + 1;
  *(this + 3) = v5 + 1;
  *(this + 4) = v3 - 1;
  v8 = 25;
  switch(v7)
  {
    case 'B':
      Node = 0;
      if (v3 == 1)
      {
        return Node;
      }

      v9 = v5[1];
      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      if (v9 > 110)
      {
        if (v9 <= 115)
        {
          if (v9 == 111)
          {
            v75 = *(this + 5);
            v76 = "Builtin.NativeObject";
          }

          else
          {
            if (v9 != 112)
            {
              return Node;
            }

            v75 = *(this + 5);
            v76 = "Builtin.RawPointer";
          }
        }

        else
        {
          switch(v9)
          {
            case 't':
              v75 = *(this + 5);
              v76 = "Builtin.SILToken";
              break;
            case 'v':
              v148 = 0;
              v103 = this;
              {
                return 0;
              }

              v104 = *(v103 + 4);
              if (!v104)
              {
                return 0;
              }

              v105 = *(v103 + 3);
              if (*v105 != 66)
              {
                return 0;
              }

              *(v103 + 3) = v105 + 1;
              *(v103 + 4) = v104 - 1;
              if (v104 == 1)
              {
                return 0;
              }

              v106 = v105[1];
              switch(v106)
              {
                case 'f':
                  *(v103 + 3) = v105 + 2;
                  *(v103 + 4) = v104 - 2;
                  v146 = 0;
                  Node = 0;
                  {
                    return Node;
                  }

                  v11 = *(v103 + 5);
                  memset(&v147, 0, sizeof(v147));
                  std::string::append(&v147, "Builtin.Vec", 0xBuLL);
                  v107 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(&v147, v148);
                  v108 = v107;
                  v109 = "xFPIEEE";
                  v110 = 7;
                  break;
                case 'p':
                  *(v103 + 3) = v105 + 2;
                  *(v103 + 4) = v104 - 2;
                  v11 = *(v103 + 5);
                  memset(&v147, 0, sizeof(v147));
                  std::string::append(&v147, "Builtin.Vec", 0xBuLL);
                  v138 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(&v147, v148);
                  std::string::append(v138, "xRawPointer", 0xBuLL);
                  v101 = SHIBYTE(v138->__r_.__value_.__r.__words[2]);
                  size = v138->__r_.__value_.__l.__size_;
                  if (v101 >= 0)
                  {
                    v61 = v138;
                  }

                  else
                  {
                    v61 = v138->__r_.__value_.__r.__words[0];
                  }

                  goto LABEL_150;
                case 'i':
                  *(v103 + 3) = v105 + 2;
                  *(v103 + 4) = v104 - 2;
                  v146 = 0;
                  Node = 0;
                  {
                    return Node;
                  }

                  v11 = *(v103 + 5);
                  memset(&v147, 0, sizeof(v147));
                  std::string::append(&v147, "Builtin.Vec", 0xBuLL);
                  v107 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(&v147, v148);
                  v108 = v107;
                  v109 = "xInt";
                  v110 = 4;
                  break;
                default:
                  return 0;
              }

              std::string::append(v107, v109, v110);
              v98 = v146;
              v99 = v108;
LABEL_147:
              v100 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(v99, v98);
              v101 = SHIBYTE(v100->__r_.__value_.__r.__words[2]);
              size = v100->__r_.__value_.__l.__size_;
              if (v101 >= 0)
              {
                v61 = v100;
              }

              else
              {
                v61 = v100->__r_.__value_.__r.__words[0];
              }

LABEL_150:
              if (v101 >= 0)
              {
                v63 = v101;
              }

              else
              {
                v63 = size;
              }

              v60 = v11;
              v62 = 20;
LABEL_154:
              Node = swift::Demangle::__runtime::NodeFactory::createNode(v60, v62, v61, v63);
              if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v147.__r_.__value_.__l.__data_);
              }

              return Node;
            case 'w':
              v75 = *(this + 5);
              v76 = "Builtin.Word";
              break;
            default:
              return Node;
          }
        }
      }

      else if (v9 <= 97)
      {
        if (v9 == 66)
        {
          v75 = *(this + 5);
          v76 = "Builtin.UnsafeValueBuffer";
        }

        else
        {
          if (v9 != 79)
          {
            return Node;
          }

          v75 = *(this + 5);
          v76 = "Builtin.UnknownObject";
        }
      }

      else
      {
        if (v9 != 98)
        {
          if (v9 == 102)
          {
            v148 = 0;
            v97 = this;
            {
              return 0;
            }

            v11 = *(v97 + 5);
            memset(&v147, 0, sizeof(v147));
            v12 = "Builtin.FPIEEE";
            v13 = 14;
            goto LABEL_146;
          }

          if (v9 != 105)
          {
            return Node;
          }

          v148 = 0;
          v10 = this;
          {
            v11 = *(v10 + 5);
            memset(&v147, 0, sizeof(v147));
            v12 = "Builtin.Int";
            v13 = 11;
LABEL_146:
            std::string::append(&v147, v12, v13);
            v98 = v148;
            v99 = &v147;
            goto LABEL_147;
          }

          return 0;
        }

        v75 = *(this + 5);
        v76 = "Builtin.BridgeObject";
      }

      return swift::Demangle::__runtime::NodeFactory::createNode(v75, 20, v76);
    case 'C':
      goto LABEL_69;
    case 'D':
      v27 = this;
      if (!v28)
      {
        return 0;
      }

      v29 = v28;
      v30 = swift::Demangle::__runtime::NodeFactory::createNode(*(v27 + 5), 243);
      swift::Demangle::__runtime::Node::addChild(v30, v29, *(v27 + 5), v31, v32);
      if (!v30)
      {
        return 0;
      }

      v33 = *(v27 + 5);
      v34 = 59;
      goto LABEL_67;
    case 'E':
      if (v3 == 1)
      {
        return 0;
      }

      if (*v6 != 82)
      {
        return 0;
      }

      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      if (v3 == 2 || v5[2] != 82)
      {
        return 0;
      }

      *(this + 3) = v5 + 3;
      *(this + 4) = v3 - 3;
      v60 = *(this + 5);
      memset(&v147, 0, sizeof(v147));
      v61 = &v147;
      v62 = 65;
      v63 = 0;
      goto LABEL_154;
    case 'F':
      v14 = a2 + 1;
      v15 = 84;
      goto LABEL_83;
    case 'G':
      v35 = a2;
      v36 = this;
      if (!v37)
      {
        return 0;
      }

    case 'K':
      v14 = a2 + 1;
      v15 = 11;
      goto LABEL_83;
    case 'M':
      v57 = this;
      if (!v58)
      {
        return 0;
      }

      v30 = v58;
      v27 = v57;
      v33 = *(v57 + 5);
      v34 = 154;
      goto LABEL_67;
    case 'O':
      v8 = 63;
      goto LABEL_69;
    case 'P':
      if (v3 == 1 || *v6 != 77)
      {
        goto LABEL_112;
      }

      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      v64 = this;
      if (!v65)
      {
        return 0;
      }

      v30 = v65;
      v27 = v64;
      v33 = *(v64 + 5);
      v34 = 71;
      goto LABEL_67;
    case 'Q':
      if (v3 == 1)
      {
        goto LABEL_89;
      }

      v24 = *v6;
      if (v24 != 85)
      {
        if (v24 == 117)
        {
          *(this + 3) = v5 + 2;
          *(this + 4) = v3 - 2;
          v25 = *(this + 5);

          return swift::Demangle::__runtime::NodeFactory::createNode(v25, 322);
        }

        else
        {
LABEL_89:
          v74 = a2 + 1;
        }
      }

      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      v147.__r_.__value_.__r.__words[0] = 0;
      v78 = this;
      Node = 0;
      {
        return Node;
      }

      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(v78 + 5), 322);
      v43 = swift::Demangle::__runtime::NodeFactory::createNode(*(v78 + 5), 355, v147.__r_.__value_.__l.__data_);
      v44 = *(v78 + 5);
      v45 = Node;
      goto LABEL_49;
    case 'R':
      v16 = this;
      v17 = *(this + 5);
      v18 = a2;
      v19 = 128;
      goto LABEL_43;
    case 'S':

    case 'T':
      v20 = a2 + 1;
      v21 = 0;
      goto LABEL_19;
    case 'V':
      v8 = 230;
LABEL_69:
      v69 = a2 + 1;
      v70 = v8;
      goto LABEL_71;
    case 'W':
      v59 = a2 + 1;

    case 'X':
      Node = 0;
      if (v3 == 1)
      {
        return Node;
      }

      v71 = *v6;
      if (v71 > 0x61)
      {
        if (*v6 <= 0x6Eu)
        {
          if (v71 != 98)
          {
            if (v71 != 102)
            {
              return Node;
            }

            *(this + 3) = v5 + 2;
            *(this + 4) = v3 - 2;
            v14 = a2 + 1;
            v15 = 233;
LABEL_83:
          }

          *(this + 3) = v5 + 2;
          *(this + 4) = v3 - 2;
          v93 = this;
          if (!v94)
          {
            return 0;
          }

          v30 = v94;
          v27 = v93;
          v33 = *(v93 + 5);
          v34 = 221;
        }

        else
        {
          switch(v71)
          {
            case 'o':
              *(this + 3) = v5 + 2;
              *(this + 4) = v3 - 2;
              v91 = this;
              if (!v92)
              {
                return 0;
              }

              v30 = v92;
              v27 = v91;
              v33 = *(v91 + 5);
              v34 = 260;
              break;
            case 'u':
              *(this + 3) = v5 + 2;
              *(this + 4) = v3 - 2;
              v95 = this;
              if (!v96)
              {
                return 0;
              }

              v30 = v96;
              v27 = v95;
              v33 = *(v95 + 5);
              v34 = 261;
              break;
            case 'w':
              *(this + 3) = v5 + 2;
              *(this + 4) = v3 - 2;
              v72 = this;
              if (!v73)
              {
                return 0;
              }

              v30 = v73;
              v27 = v72;
              v33 = *(v72 + 5);
              v34 = 259;
              break;
            default:
              return Node;
          }
        }

LABEL_67:
        v66 = swift::Demangle::__runtime::NodeFactory::createNode(v33, v34);
        swift::Demangle::__runtime::Node::addChild(v66, v30, *(v27 + 5), v67, v68);
        return v66;
      }

      if (*v6 > 0x4Cu)
      {
        if (v71 == 77)
        {
          v87 = a2;
          *(this + 3) = v5 + 2;
          *(this + 4) = v3 - 2;
          v88 = this;
          if (!v89)
          {
            return 0;
          }

          v49 = v89;
          if (!v90)
          {
            return 0;
          }

          v51 = v90;
          v52 = v88;
          v53 = *(v88 + 5);
          v54 = 154;
        }

        else
        {
          if (v71 != 80)
          {
            return Node;
          }

          *(this + 3) = v5 + 2;
          *(this + 4) = v3 - 2;
          if (v3 == 2 || v5[2] != 77)
          {
LABEL_112:
            v83 = a2 + 1;
          }

          v79 = a2;
          *(this + 3) = v5 + 3;
          *(this + 4) = v3 - 3;
          v80 = this;
          if (!v81)
          {
            return 0;
          }

          v49 = v81;
          if (!v82)
          {
            return 0;
          }

          v51 = v82;
          v52 = v80;
          v53 = *(v80 + 5);
          v54 = 71;
        }

LABEL_48:
        Node = swift::Demangle::__runtime::NodeFactory::createNode(v53, v54);
        swift::Demangle::__runtime::Node::addChild(Node, v49, *(v52 + 5), v55, v56);
        v44 = *(v52 + 5);
        v45 = Node;
        v43 = v51;
LABEL_49:
        swift::Demangle::__runtime::Node::addChild(v45, v43, v44, v41, v42);
        return Node;
      }

      if (v71 != 66)
      {
        if (v71 != 70)
        {
          return Node;
        }

        *(this + 3) = v5 + 2;
        *(this + 4) = v3 - 2;
        v77 = a2 + 1;
      }

      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      if (v3 == 2 || v5[2] != 71)
      {
        v85 = a2;
        v86 = 0;
      }

      else
      {
        *(this + 3) = v5 + 3;
        *(this + 4) = v3 - 3;
        v84 = this;
        v85 = a2;
        this = v84;
        if (!v86)
        {
          return 0;
        }
      }

      v111 = this;
      v112 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 223);
      v114 = *(v111 + 4);
      if (!v114)
      {
        return 0;
      }

      v115 = v112;
      v116 = v111;
      v117 = v85;
      break;
    case 'a':
      v69 = a2 + 1;
      v70 = 245;
LABEL_71:

    case 'b':
      v14 = a2 + 1;
      v15 = 175;
      goto LABEL_83;
    case 'c':
      v14 = a2 + 1;
      v15 = 23;
      goto LABEL_83;
    case 'f':
      v14 = a2 + 1;
      v15 = 257;
      goto LABEL_83;
    case 'k':
      v16 = this;
      v17 = *(this + 5);
      v18 = a2;
      v19 = 340;
LABEL_43:
      v38 = swift::Demangle::__runtime::NodeFactory::createNode(v17, v19);
      if (!v40)
      {
        return 0;
      }

      v43 = v40;
      v44 = *(v16 + 5);
      Node = v38;
      v45 = v38;
      goto LABEL_49;
    case 'q':
      v26 = a2 + 1;

    case 't':
      v20 = a2 + 1;
      v21 = 1;
LABEL_19:

    case 'u':
      v46 = a2;
      v47 = this;
      if (!v48)
      {
        return 0;
      }

      v49 = v48;
      if (!v50)
      {
        return 0;
      }

      v51 = v50;
      v52 = v47;
      v53 = *(v47 + 5);
      v54 = 45;
      goto LABEL_48;
    case 'w':
      v22 = a2 + 1;

    case 'x':

    default:
      return Node;
  }

  while (1)
  {
    v118 = *(v116 + 3);
    v119 = *v118;
    if (v119 == 105)
    {
      v120 = 225;
      goto LABEL_172;
    }

    if (v119 != 109)
    {
      break;
    }

    v120 = 224;
LABEL_172:
    *(v116 + 3) = v118 + 1;
    *(v116 + 4) = v114 - 1;
    v121 = v117;
    if (!v122)
    {
      return 0;
    }

    v123 = v122;
    v124 = swift::Demangle::__runtime::NodeFactory::createNode(*(v111 + 5), 243);
    swift::Demangle::__runtime::Node::addChild(v124, v123, *(v111 + 5), v125, v126);
    if (!v124)
    {
      return 0;
    }

    v127 = swift::Demangle::__runtime::NodeFactory::createNode(*(v111 + 5), v120);
    swift::Demangle::__runtime::Node::addChild(v127, v124, *(v111 + 5), v128, v129);
    swift::Demangle::__runtime::Node::addChild(v115, v127, *(v111 + 5), v130, v131);
    v116 = v111;
    Node = 0;
    v114 = *(v111 + 4);
    v117 = v121;
    if (!v114)
    {
      return Node;
    }
  }

  if (v119 != 95)
  {
    return 0;
  }

  *(v116 + 3) = v118 + 1;
  *(v116 + 4) = v114 - 1;
  if (v86)
  {
    for (i = swift::Demangle::__runtime::NodeFactory::createNode(*(v111 + 5), 246); ; swift::Demangle::__runtime::Node::addChild(i, v135, *(v111 + 5), v136, v137))
    {
      v133 = *(v111 + 4);
      if (v133)
      {
        v134 = *(v111 + 3);
        if (*v134 == 95)
        {
          break;
        }
      }

      if (!v135)
      {
        return 0;
      }
    }

    *(v111 + 3) = v134 + 1;
    *(v111 + 4) = v133 - 1;
  }

  else
  {
    i = 0;
  }

  v139 = swift::Demangle::__runtime::NodeFactory::createNode(*(v111 + 5), 222);
  swift::Demangle::__runtime::Node::addChild(v139, v115, *(v111 + 5), v140, v141);
  if (v86)
  {
    swift::Demangle::__runtime::Node::addChild(v139, v86, *(v111 + 5), v142, v143);
    swift::Demangle::__runtime::Node::addChild(v139, i, *(v111 + 5), v144, v145);
  }

  return v139;
}

uint64_t anonymous namespace::OldDemangler::demangleBuiltinSize(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v6 = *v3;
  v4 = v3 + 1;
  v5 = *v3;
  *(this + 3) = v3 + 1;
  *(this + 4) = v2 - 1;
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = v5 & 0xF;
  *a2 = v7;
  if (v2 == 1)
  {
    return 0;
  }

  v8 = v3 + 2;
  v9 = v2 - 2;
  while (1)
  {
    v10 = *v4;
    if ((v10 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v7 = (v10 & 0xF) + 10 * v7;
    *a2 = v7;
    ++v4;
    *(this + 3) = v8;
    *(this + 4) = v9;
    ++v8;
    if (--v9 == -1)
    {
      return 0;
    }
  }

  if (v10 != 95)
  {
    return 0;
  }

  *(this + 3) = v8;
  *(this + 4) = v9;
  return 1;
}

uint64_t anonymous namespace::OldDemangler::demangleNatural(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v6 = *v3;
  v4 = v3 + 1;
  v5 = *v3;
  *(this + 3) = v3 + 1;
  *(this + 4) = v2 - 1;
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = v5 & 0xF;
  *a2 = v7;
  if (v2 != 1)
  {
    v8 = v3 + 2;
    v9 = v2 - 2;
    do
    {
      v10 = *v4;
      if ((v10 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v7 = (v10 & 0xF) + 10 * v7;
      *a2 = v7;
      ++v4;
      *(this + 3) = v8;
      *(this + 4) = v9;
      ++v8;
      --v9;
    }

    while (v9 != -1);
  }

  return 1;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleDeclarationName(swift::Demangle::__runtime::NodeFactory **a1, __int16 a2, int a3)
{
  if (result)
  {
    v6 = result;
    if (result)
    {
      v7 = result;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(a1[5], a2);
      swift::Demangle::__runtime::Node::addChild(Node, v6, a1[5], v8, v9);
      swift::Demangle::__runtime::Node::addChild(Node, v7, a1[5], v10, v11);
      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](a1, &Node);
      return Node;
    }
  }

  return result;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleFunctionType(_anonymous_namespace_::OldDemangler *this, __int16 a2, unsigned int a3)
{
  v6 = *(this + 4);
  if (!v6)
  {
    Node = 0;
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_28;
  }

  v7 = *(this + 3);
  v8 = *v7;
  v9 = v8 == 122;
  if (v8 == 122)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 0;
      v10 = 0;
      v9 = 1;
      goto LABEL_28;
    }

    v8 = *v7;
  }

  v10 = v8 == 121;
  if (v8 == 121)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 0;
      v10 = 1;
      goto LABEL_28;
    }
  }

  v11 = *v7;
  v12 = v11 == 90;
  if (v11 == 90)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 1;
      goto LABEL_28;
    }

    v11 = *v7;
  }

  if (v11 == 68)
  {
    *(this + 3) = v7 + 1;
    *(this + 4) = v6 - 1;
    if (v6 == 1)
    {
      v6 = 0;
      v13 = 46;
      ++v7;
    }

    else
    {
      v13 = v7[1];
      v7 += 2;
      v6 -= 2;
      *(this + 3) = v7;
      *(this + 4) = v6;
    }

    v15 = (((v13 - 100) >> 1) | ((v13 - 100) << 7));
    if (v15 <= 7 && ((1 << v15) & 0x93) != 0)
    {
      if (!v6)
      {
LABEL_27:
        Node = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v13 = 0;
      if (!v6)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (*v7 != 89)
  {
    goto LABEL_27;
  }

  *(this + 3) = v7 + 1;
  *(this + 4) = v6 - 1;
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(Node, v17, *(this + 5), v18, v19);
  if (!Node)
  {
    return 0;
  }

LABEL_28:
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(v22, v21, *(this + 5), v23, v24);
  if (!v22)
  {
    return 0;
  }

  if (!v26)
  {
    return 0;
  }

  v27 = v26;
  v28 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(v28, v27, *(this + 5), v29, v30);
  if (!v28)
  {
    return 0;
  }

  v31 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), a2);
  if (v9)
  {
    v32 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 285);
    swift::Demangle::__runtime::Node::addChild(v31, v32, *(this + 5), v33, v34);
    if (!v12)
    {
      goto LABEL_34;
    }
  }

  else if (!v12)
  {
LABEL_34:
    if (v10)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v39 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 284);
  swift::Demangle::__runtime::Node::addChild(v31, v39, *(this + 5), v40, v41);
  if (v10)
  {
LABEL_35:
    v35 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 68);
    swift::Demangle::__runtime::Node::addChild(v31, v35, *(this + 5), v36, v37);
    if (!v13)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (v13)
  {
LABEL_42:
    v42 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 70, v13);
    swift::Demangle::__runtime::Node::addChild(v31, v42, *(this + 5), v43, v44);
  }

LABEL_43:
  if (Node)
  {
    v45 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 69);
    swift::Demangle::__runtime::Node::addChild(v45, Node, *(this + 5), v46, v47);
    swift::Demangle::__runtime::Node::addChild(v31, v45, *(this + 5), v48, v49);
  }

  v50 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 3);
  swift::Demangle::__runtime::Node::addChild(v31, v50, *(this + 5), v51, v52);
  swift::Demangle::__runtime::Node::addChild(v50, v22, *(this + 5), v53, v54);
  v55 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 218);
  swift::Demangle::__runtime::Node::addChild(v55, v28, *(this + 5), v56, v57);
  swift::Demangle::__runtime::Node::addChild(v31, v55, *(this + 5), v58, v59);
  return v31;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleGenericSignature(_anonymous_namespace_::OldDemangler *this, int a2, int a3)
{
  v5 = *(this + 5);
  if (a3)
  {
    v6 = 47;
  }

  else
  {
    v6 = 44;
  }

  Node = swift::Demangle::__runtime::NodeFactory::createNode(v5, v6);
  v8 = *(this + 4);
  if (v8)
  {
    v9 = Node;
    v10 = -1;
    while (1)
    {
      v14 = *(this + 3);
      v15 = *v14;
      if (v15 == 122)
      {
        v10 = 0;
        *(this + 3) = v14 + 1;
        *(this + 4) = v8 - 1;
        goto LABEL_7;
      }

      if (v15 == 82 || v15 == 114)
      {
        break;
      }

      v16 = v14 + 1;
      *(this + 3) = v14 + 1;
      *(this + 4) = v8 - 1;
      if (v15 == 95)
      {
        v10 = 1;
      }

      else
      {
        result = 0;
        if (v8 == 1 || (v15 - 58) < 0xFFFFFFF6)
        {
          return result;
        }

        v18 = v15 & 0xF;
        v19 = v14 + 2;
        v20 = v8 - 2;
        while (1)
        {
          v21 = *v16;
          if ((v21 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v18 = (v21 & 0xF) + 10 * v18;
          ++v16;
          *(this + 3) = v19;
          *(this + 4) = v20;
          ++v19;
          if (--v20 == -1)
          {
            return 0;
          }
        }

        if (v21 != 95)
        {
          return 0;
        }

        *(this + 3) = v19;
        *(this + 4) = v20;
        v10 = v18 + 2;
      }

LABEL_7:
      v11 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 38, v10);
      swift::Demangle::__runtime::Node::addChild(v9, v11, *(this + 5), v12, v13);
      v8 = *(this + 4);
      if (!v8)
      {
        return 0;
      }
    }

    if (v10 != -1 || (v22 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 38, 1), swift::Demangle::__runtime::Node::addChild(v9, v22, *(this + 5), v23, v24), (v8 = *(this + 4)) != 0))
    {
      v25 = *(this + 3);
      v26 = *v25;
      if (v26 == 114)
      {
LABEL_115:
        *(this + 3) = v25 + 1;
        *(this + 4) = v8 - 1;
        return v9;
      }

      if (v26 == 82)
      {
        --v8;
        *(this + 3) = v25 + 1;
        *(this + 4) = v8;
        v27 = "U";
        v28 = "B";
        v29 = "E";
        if (v8)
        {
          goto LABEL_26;
        }

LABEL_39:
        if (v35)
        {
          while (1)
          {
            v41 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
            swift::Demangle::__runtime::Node::addChild(v41, v35, *(this + 5), v42, v43);
            if (!v41)
            {
              return 0;
            }

            v47 = *(this + 4);
            if (!v47)
            {
              return 0;
            }

            v48 = *(this + 3);
            v49 = *v48;
            if (v49 <= 0x6B)
            {
              break;
            }

            if (v49 != 108)
            {
              if (v49 == 122)
              {
                *(this + 3) = v48 + 1;
                *(this + 4) = v47 - 1;
                if (!result)
                {
                  return result;
                }

                v55 = result;
                v52 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
                swift::Demangle::__runtime::Node::addChild(v52, v55, *(this + 5), v56, v57);
                if (!v52)
                {
                  return 0;
                }

                v58 = *(this + 5);
                v59 = 40;
                goto LABEL_61;
              }

LABEL_56:
              if (!result)
              {
                return result;
              }

LABEL_59:
              v60 = result;
              v52 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
              swift::Demangle::__runtime::Node::addChild(v52, v60, *(this + 5), v61, v62);
              if (!v52)
              {
                return 0;
              }

              goto LABEL_60;
            }

            v96 = -1;
            v97 = -1;
            *(this + 3) = v48 + 1;
            *(this + 4) = v47 - 1;
            v63 = 0;
            if (v47 != 1)
            {
              v68 = v48[1];
              if (v68 > 0x52)
              {
                if (v48[1] <= 0x54u)
                {
                  if (v68 == 83)
                  {
                    v69 = v29;
                    v70 = v28;
                    v71 = v27;
                    *(this + 3) = v48 + 2;
                    *(this + 4) = v47 - 2;
                    v27 = "S";
                    {
                      goto LABEL_100;
                    }

                    goto LABEL_110;
                  }

                  if (v68 == 84)
                  {
                    v69 = v29;
                    v70 = v28;
                    v71 = v27;
                    v27 = "T";
                    goto LABEL_99;
                  }
                }

                else
                {
                  switch(v68)
                  {
                    case 'U':
                      v69 = v29;
                      v70 = v28;
                      v71 = v27;
                      goto LABEL_99;
                    case 'e':
                      v69 = v29;
                      v70 = v28;
                      v71 = v27;
                      *(this + 3) = v48 + 2;
                      *(this + 4) = v47 - 2;
                      v27 = "e";
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_100;
                    case 'm':
                      v69 = v29;
                      v70 = v28;
                      v71 = v27;
                      *(this + 3) = v48 + 2;
                      *(this + 4) = v47 - 2;
                      v27 = "m";
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_100;
                  }
                }
              }

              else if (v48[1] <= 0x4Cu)
              {
                if (v68 == 66)
                {
                  v69 = v29;
                  v75 = v28;
                  v71 = v27;
                  v70 = v75;
                  v27 = v75;
                  goto LABEL_99;
                }

                if (v68 == 69)
                {
                  *(this + 3) = v48 + 2;
                  *(this + 4) = v47 - 2;
                  {
                    v72 = *(this + 4);
                    if (v72)
                    {
                      v73 = *(this + 3);
                      if (*v73 == 95)
                      {
                        v74 = v29;
                        v70 = v28;
                        v71 = v27;
                        *(this + 3) = v73 + 1;
                        *(this + 4) = v72 - 1;
                        v69 = v74;
                        v27 = v74;
                        {
                          goto LABEL_110;
                        }

LABEL_100:
                        v78 = *(this + 5);
                        v79 = v78[1];
                        if (!v79 || (v80 = v79 + 1, (v79 + 1) > v78[2]))
                        {
                          v81 = 2 * v78[4];
                          if (v81 <= 2)
                          {
                            v81 = 2;
                          }

                          v78[4] = v81;
                          v82 = v81 + 8;
                          v83 = malloc_type_malloc(v81 + 8, 0x2004093837F09uLL);
                          v79 = (v83 + 1);
                          *v83 = v78[3];
                          v80 = v83 + 9;
                          v78[2] = v83 + v82;
                          v78[3] = v83;
                        }

                        v78[1] = v80;
                        *v79 = *v27;
                        NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v78, 103, v79, 1);
                        if (NodeWithAllocatedText)
                        {
                          v85 = NodeWithAllocatedText;
                          v63 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 42);
                          swift::Demangle::__runtime::Node::addChild(v63, v41, *(this + 5), v86, v87);
                          swift::Demangle::__runtime::Node::addChild(v63, v85, *(this + 5), v88, v89);
                          v27 = v71;
                          if (v97 != -1)
                          {
                            v90 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 171, v97);
                            swift::Demangle::__runtime::Node::addChild(v63, v90, *(this + 5), v91, v92);
                            v28 = v70;
                            if (v96 != -1)
                            {
                              v93 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 171, v96);
                              swift::Demangle::__runtime::Node::addChild(v63, v93, *(this + 5), v94, v95);
                            }

                            goto LABEL_112;
                          }

LABEL_111:
                          v28 = v70;
LABEL_112:
                          v29 = v69;
                          goto LABEL_62;
                        }

LABEL_110:
                        v63 = 0;
                        v27 = v71;
                        goto LABEL_111;
                      }
                    }
                  }

                  goto LABEL_96;
                }
              }

              else
              {
                switch(v68)
                {
                  case 'M':
                    *(this + 3) = v48 + 2;
                    *(this + 4) = v47 - 2;
                    {
                      v76 = *(this + 4);
                      if (v76)
                      {
                        v77 = *(this + 3);
                        if (*v77 == 95)
                        {
                          v69 = v29;
                          v70 = v28;
                          v71 = v27;
                          *(this + 3) = v77 + 1;
                          *(this + 4) = v76 - 1;
                          v27 = "M";
                          {
                            goto LABEL_100;
                          }

                          goto LABEL_110;
                        }
                      }
                    }

LABEL_96:
                    v63 = 0;
                    break;
                  case 'N':
                    v69 = v29;
                    v70 = v28;
                    v71 = v27;
                    v27 = "N";
                    goto LABEL_99;
                  case 'R':
                    v69 = v29;
                    v70 = v28;
                    v71 = v27;
                    v27 = "R";
LABEL_99:
                    *(this + 3) = v48 + 2;
                    *(this + 4) = v47 - 2;
                    goto LABEL_100;
                }
              }
            }

LABEL_62:
            if (!v63)
            {
              return 0;
            }

            swift::Demangle::__runtime::Node::addChild(v9, v63, *(this + 5), v45, v46);
            v8 = *(this + 4);
            if (!v8)
            {
              goto LABEL_39;
            }

LABEL_26:
            v25 = *(this + 3);
            v30 = *v25;
            switch(v30)
            {
              case 'W':
                *(this + 3) = v25 + 1;
                *(this + 4) = v8 - 1;
                if (!result)
                {
                  return result;
                }

                v35 = result;
                while (1)
                {
                  v39 = *(this + 4);
                  if (v39)
                  {
                    v40 = *(this + 3);
                    if (*v40 == 95)
                    {
                      break;
                    }
                  }

                  v36 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
                  swift::Demangle::__runtime::Node::addChild(v36, v35, *(this + 5), v37, v38);
                  result = 0;
                  if (!v35)
                  {
                    return result;
                  }
                }

                *(this + 3) = v40 + 1;
                *(this + 4) = v39 - 1;
                break;
              case 'w':
                *(this + 3) = v25 + 1;
                *(this + 4) = v8 - 1;
                if (!result)
                {
                  return result;
                }

                v31 = result;
                v32 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
                swift::Demangle::__runtime::Node::addChild(v32, v31, *(this + 5), v33, v34);
                if (!v35)
                {
                  return 0;
                }

                break;
              case 'r':
                goto LABEL_115;
              default:
                goto LABEL_39;
            }
          }

          if (v49 == 67)
          {
            if (!result)
            {
              return result;
            }

            goto LABEL_59;
          }

          if (v49 != 83)
          {
            goto LABEL_56;
          }

          *(this + 3) = v48 + 1;
          *(this + 4) = v47 - 1;
          if (!result)
          {
            return result;
          }

          v50 = result;
          v51 = *(result + 8);
          if (v51 != 25 && v51 != 190)
          {
            if (v51 != 163)
            {
              return 0;
            }

            v50 = result;
            if (!result)
            {
              return result;
            }
          }

          v52 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
          swift::Demangle::__runtime::Node::addChild(v52, v50, *(this + 5), v53, v54);
LABEL_60:
          v58 = *(this + 5);
          v59 = 37;
LABEL_61:
          v63 = swift::Demangle::__runtime::NodeFactory::createNode(v58, v59);
          swift::Demangle::__runtime::Node::addChild(v63, v41, *(this + 5), v64, v65);
          swift::Demangle::__runtime::Node::addChild(v63, v52, *(this + 5), v66, v67);
          goto LABEL_62;
        }
      }
    }
  }

  return 0;
}

unint64_t anonymous namespace::OldDemangler::demangleMetatypeRepresentation(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 == 116)
  {
    v4 = "@thin";
    goto LABEL_9;
  }

  if (v3 == 111)
  {
    v4 = "@objc_metatype";
    goto LABEL_9;
  }

  if (v3 != 84)
  {
    return 0;
  }

  v4 = "@thick";
LABEL_9:
  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  return swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 155, v4);
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleProtocolList(_anonymous_namespace_::OldDemangler *this, int a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 200);
  v7 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 246);
  v8 = *(this + 5);
  v9 = Node;
  v10 = Node;
  for (i = v7; ; i = v16)
  {
    swift::Demangle::__runtime::Node::addChild(v10, i, v8, v5, v6);
    v12 = *(this + 4);
    if (v12)
    {
      v13 = *(this + 3);
      if (*v13 == 95)
      {
        break;
      }
    }

    if (!result)
    {
      return result;
    }

    v15 = result;
    v16 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::__runtime::Node::addChild(v16, v15, *(this + 5), v17, v18);
    if (!v16)
    {
      return 0;
    }

    v8 = *(this + 5);
    v10 = v7;
  }

  *(this + 3) = v13 + 1;
  *(this + 4) = v12 - 1;
  return v9;
}

uint64_t anonymous namespace::OldDemangler::demangleIndex(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = v3 + 1;
    v5 = *v3;
    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (v5 == 95)
    {
      v6 = 0;
LABEL_4:
      *a2 = v6;
      return 1;
    }

    if ((v5 - 48) <= 9)
    {
      v8 = v5 & 0xF;
      *a2 = v8;
      if (v2 != 1)
      {
        v9 = v3 + 2;
        v10 = v2 - 2;
        while (1)
        {
          v11 = *v4;
          if ((v11 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v8 = (v11 & 0xF) + 10 * v8;
          *a2 = v8;
          ++v4;
          *(this + 3) = v9;
          *(this + 4) = v10;
          ++v9;
          if (--v10 == -1)
          {
            return 0;
          }
        }

        if (v11 == 95)
        {
          *(this + 3) = v9;
          *(this + 4) = v10;
          v6 = v8 + 1;
          goto LABEL_4;
        }
      }
    }
  }

  return 0;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleArchetypeType(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 == 115)
  {
    *(this + 3) = v4 + 1;
    *(this + 4) = v2 - 1;
    v7 = *(this + 5);
    v8 = v7[1];
    v9 = (v8 + 5);
    if (v8)
    {
      v10 = v9 > v7[2];
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 2 * v7[4];
      if (v11 <= 6)
      {
        v11 = 6;
      }

      v7[4] = v11;
      v12 = v11 + 8;
      v13 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
      *v13 = v7[3];
      v9 = v13 + 13;
      v8 = (v13 + 1);
      v7[2] = v13 + v12;
      v7[3] = v13;
    }

    v7[1] = v9;
    *(v8 + 4) = 116;
    *v8 = 1718187859;
    result = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v7, 163, v8, 5);
    goto LABEL_19;
  }

  if (v5 == 83)
  {
    *(this + 3) = v4 + 1;
    *(this + 4) = v2 - 1;
    if (!result)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v5 != 81)
  {
    return 0;
  }

  *(this + 3) = v4 + 1;
  *(this + 4) = v2 - 1;
  if (result)
  {
LABEL_19:
    v14 = result;
    if (result)
    {
      v15 = result;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 5);
      swift::Demangle::__runtime::Node::addChild(Node, v14, *(this + 5), v16, v17);
      swift::Demangle::__runtime::Node::addChild(Node, v15, *(this + 5), v18, v19);
      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &Node);
      return Node;
    }
  }

  return result;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleDependentType(_anonymous_namespace_::OldDemangler *this, unsigned int a2, unsigned int a3)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v3 = **(this + 3);
  if (v3 == 95 || v3 == 100 || (v3 - 48) < 0xA)
  {
  }

  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(Node, v8, *(this + 5), v10, v11);
  if (!Node)
  {
    return 0;
  }
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::getDependentGenericParamType(_anonymous_namespace_::OldDemangler *this, swift::Demangle::__runtime *a2, unsigned int a3)
{
  memset(&v17, 0, sizeof(v17));
  v4 = a2;
  v5 = a3;
  swift::Demangle::__runtime::genericParameterName(a2, a3, &__p);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v17, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 39);
  v9 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 104, v4);
  swift::Demangle::__runtime::Node::addChild(Node, v9, *(this + 5), v10, v11);
  v12 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 104, v5);
  swift::Demangle::__runtime::Node::addChild(Node, v12, *(this + 5), v13, v14);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return Node;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleAssociatedTypeSimple(swift::Demangle::__runtime::NodeFactory **this, unsigned int a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(Node, v5, this[5], v7, v8);
  }

  return result;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleAssociatedTypeCompound(swift::Demangle::__runtime::NodeFactory **this, unsigned int a2)
{
  {
    v8 = result;
    if (!result)
    {
      break;
    }

    v9 = this[4];
    if (v9)
    {
      v10 = this[3];
      if (*v10 == 95)
      {
        this[3] = (v10 + 1);
        this[4] = (v9 - 1);
        return result;
      }
    }

    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(Node, v8, this[5], v6, v7);
  }

  return result;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleSubstitutionIndex(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  switch(*v2)
  {
    case 'C':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v3 = *(this + 5);
      v4 = v3[1];
      v5 = v4 + 15;
      if (v4)
      {
        v6 = v5 > v3[2];
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        v7 = 2 * v3[4];
        if (v7 <= 0x10)
        {
          v7 = 16;
        }

        v3[4] = v7;
        v8 = v7 + 8;
        v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
        v4 = v9 + 1;
        *v9 = v3[3];
        v5 = v9 + 23;
        v3[2] = v9 + v8;
        v3[3] = v9;
      }

      v3[1] = v5;
      qmemcpy(v4, "__C_Synthesized", 15);
      v10 = v3;
      v11 = 15;
      goto LABEL_24;
    case 'P':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafePointer";
      goto LABEL_45;
    case 'Q':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "ImplicitlyUnwrappedOptional";
      v13 = 63;
      v14 = 27;
      goto LABEL_49;
    case 'R':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeBufferPointer";
      v13 = 230;
      v14 = 19;
      goto LABEL_49;
    case 'S':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "String";
      goto LABEL_43;
    case 'V':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeRawPointer";
      v13 = 230;
      v14 = 16;
      goto LABEL_49;
    case 'a':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Array";
      goto LABEL_38;
    case 'b':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Bool";
      goto LABEL_48;
    case 'c':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnicodeScalar";
LABEL_45:
      v13 = 230;
      v14 = 13;
      goto LABEL_49;
    case 'd':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Double";
LABEL_43:
      v13 = 230;
      v14 = 6;
      goto LABEL_49;
    case 'f':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Float";
LABEL_38:
      v13 = 230;
      v14 = 5;
      goto LABEL_49;
    case 'i':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Int";
      v13 = 230;
      v14 = 3;
      goto LABEL_49;
    case 'o':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v15 = *(this + 5);
      v4 = v15[1];
      v16 = v4 + 3;
      if (v4)
      {
        v17 = v16 > v15[2];
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 2 * v15[4];
        if (v18 <= 4)
        {
          v18 = 4;
        }

        v15[4] = v18;
        v19 = v18 + 8;
        v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
        v4 = v20 + 1;
        *v20 = v15[3];
        v16 = v20 + 11;
        v15[2] = v20 + v19;
        v15[3] = v20;
      }

      v15[1] = v16;
      v4[2] = 67;
      *v4 = 24415;
      v10 = v15;
      v11 = 3;
LABEL_24:

      return swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v10, 163, v4, v11);
    case 'p':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutablePointer";
      v13 = 230;
      v14 = 20;
      goto LABEL_49;
    case 'q':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Optional";
      v13 = 63;
      v14 = 8;
      goto LABEL_49;
    case 'r':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutableBufferPointer";
      v13 = 230;
      v14 = 26;
      goto LABEL_49;
    case 'u':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UInt";
LABEL_48:
      v13 = 230;
      v14 = 4;
      goto LABEL_49;
    case 'v':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutableRawPointer";
      v13 = 230;
      v14 = 23;
LABEL_49:

      break;
    default:
      v23 = 0;
      {
        return 0;
      }

      result = *(*this + 8 * v23);
      break;
  }

  return result;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleTuple(uint64_t a1, int a2, int a3)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 234);
  v8 = *(a1 + 32);
  if (!v8)
  {
    return 0;
  }

  v9 = Node;
  v10 = *(a1 + 24);
  if (*v10 != 95)
  {
    while (1)
    {
      v11 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 235);
      if (!*(a1 + 32))
      {
        break;
      }

      v16 = **(a1 + 24);
      if (v16 != 111)
      {
        goto LABEL_11;
      }

LABEL_12:
      v3 = v3 & 0xFFFFFFFF00000000 | 0x100EC;
      if (!v17)
      {
        return 0;
      }

      swift::Demangle::__runtime::Node::addChild(v11, v17, *(a1 + 40), v18, v19);
LABEL_14:
      if (!v20)
      {
        return 0;
      }

      v21 = v20;
      v22 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 243);
      swift::Demangle::__runtime::Node::addChild(v22, v21, *(a1 + 40), v23, v24);
      if (!v22)
      {
        return 0;
      }

      swift::Demangle::__runtime::Node::addChild(v11, v22, *(a1 + 40), v25, v26);
      swift::Demangle::__runtime::Node::addChild(v9, v11, *(a1 + 40), v27, v28);
      v8 = *(a1 + 32);
      if (!v8)
      {
        return 0;
      }

      v10 = *(a1 + 24);
      if (*v10 == 95)
      {
        goto LABEL_4;
      }
    }

    v16 = 46;
LABEL_11:
    if ((v16 - 48) > 9)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_4:
  *(a1 + 24) = v10 + 1;
  *(a1 + 32) = v8 - 1;
  if (a2 == 1 && v11)
  {
    swift::Demangle::__runtime::Node::reverseChildren(v11, 0);
    v12 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 289);
    swift::Demangle::__runtime::Node::addChild(v11, v12, *(a1 + 40), v13, v14);
    swift::Demangle::__runtime::Node::reverseChildren(v11, 0);
  }

  return v9;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleImplFunctionType(_anonymous_namespace_::OldDemangler *this, int a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 119);
  v5 = *(this + 4);
  if (v5 && (v6 = *(this + 3), *v6 == 116))
  {
    *(this + 3) = v6 + 1;
    *(this + 4) = v5 - 1;
    v7 = "@convention(thin)";
    v8 = 17;
  }

  else
  {
    if (!v10)
    {
      return 0;
    }

    v7 = v9;
    v8 = v10;
  }

  v11 = *(this + 5);
  v12 = v11[1];
  v13 = &v12[v8];
  if (v12)
  {
    v14 = v13 > v11[2];
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 2 * v11[4];
    if (v15 <= v8 + 1)
    {
      v15 = v8 + 1;
    }

    v11[4] = v15;
    v16 = v15 + 8;
    v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
    v18 = v17 + v16;
    *v17 = v11[3];
    v12 = (v17 + 1);
    v11[2] = v18;
    v11[3] = v17;
    v13 = v17 + v8 + 8;
  }

  v11[1] = v13;
  memmove(v12, v7, v8);
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v11, 108, v12, v8);
  swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, *(this + 5), v20, v21);
  v22 = *(this + 4);
  if (!v22)
  {
    return 0;
  }

  v23 = *(this + 3);
  if (*v23 == 67)
  {
    *(this + 3) = v23 + 1;
    *(this + 4) = v22 - 1;
    result = 0;
    if (v22 == 1)
    {
      return result;
    }

    v25 = v23[1];
    if (v25 <= 0x62)
    {
      if (v25 == 79)
      {
        v26 = "objc_method";
        v27 = 11;
      }

      else
      {
        if (v25 != 98)
        {
          return result;
        }

        v26 = "block";
        v27 = 5;
      }
    }

    else
    {
      switch(v25)
      {
        case 'w':
          v26 = "witness_method";
          v27 = 14;
          break;
        case 'm':
          v26 = "method";
          v27 = 6;
          break;
        case 'c':
          v26 = "c";
          v27 = 1;
          break;
        default:
          return result;
      }
    }

    *(this + 3) = v23 + 2;
    *(this + 4) = v22 - 2;
    v28 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 117);
    v29 = *(this + 5);
    v30 = v29[1];
    if (!v30 || (v31 = &v30[v27], &v30[v27] > v29[2]))
    {
      v32 = 2 * v29[4];
      if (v32 <= v27 + 1)
      {
        v32 = v27 + 1;
      }

      v29[4] = v32;
      v33 = v32 + 8;
      v34 = malloc_type_malloc(v32 + 8, 0x2004093837F09uLL);
      v35 = v34 + v33;
      *v34 = v29[3];
      v30 = (v34 + 1);
      v29[2] = v35;
      v29[3] = v34;
      v31 = v34 + v27 + 8;
    }

    v29[1] = v31;
    memmove(v30, v26, v27);
    v36 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v29, 118, v30, v27);
    swift::Demangle::__runtime::Node::addChild(v28, v36, *(this + 5), v37, v38);
    swift::Demangle::__runtime::Node::addChild(Node, v28, *(this + 5), v39, v40);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }
  }

  v41 = *(this + 3);
  v42 = *v41;
  if (v42 == 104)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    v43 = *(this + 5);
    v44 = v43[1];
    if (!v44 || (v45 = (v44 + 9), (v44 + 9) > v43[2]))
    {
      v46 = 2 * v43[4];
      if (v46 <= 0xA)
      {
        v46 = 10;
      }

      v43[4] = v46;
      v47 = v46 + 8;
      v48 = malloc_type_malloc(v46 + 8, 0x2004093837F09uLL);
      v44 = (v48 + 1);
      *v48 = v43[3];
      v45 = v48 + 17;
      v43[2] = v48 + v47;
      v43[3] = v48;
    }

    v43[1] = v45;
    *v44 = *"@Sendable";
    *(v44 + 8) = 101;
    v49 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v43, 116, v44, 9);
    swift::Demangle::__runtime::Node::addChild(Node, v49, *(this + 5), v50, v51);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if (v42 == 72)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    v52 = *(this + 5);
    v53 = v52[1];
    if (!v53 || (v54 = (v53 + 6), (v53 + 6) > v52[2]))
    {
      v55 = 2 * v52[4];
      if (v55 <= 7)
      {
        v55 = 7;
      }

      v52[4] = v55;
      v56 = v55 + 8;
      v57 = malloc_type_malloc(v55 + 8, 0x2004093837F09uLL);
      v53 = (v57 + 1);
      *v57 = v52[3];
      v54 = v57 + 14;
      v52[2] = v57 + v56;
      v52[3] = v57;
    }

    v52[1] = v54;
    *(v53 + 4) = 25454;
    *v53 = 2037604672;
    v58 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v52, 116, v53, 6);
    swift::Demangle::__runtime::Node::addChild(Node, v58, *(this + 5), v59, v60);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if ((v42 | 0x20) == 0x67)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    if (!result)
    {
      return result;
    }

    swift::Demangle::__runtime::Node::addChild(Node, result, *(this + 5), v61, v62);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if (v42 != 95)
  {
    return 0;
  }

  v63 = v22 - 1;
  *(this + 3) = v41 + 1;
  *(this + 4) = v63;
  if (!v63)
  {
    goto LABEL_57;
  }

LABEL_56:
  v64 = *(this + 3);
  if (*v64 == 95)
  {
    v67 = v63 - 1;
    *(this + 3) = v64 + 1;
    *(this + 4) = v67;
    if (!v67)
    {
      goto LABEL_64;
    }

LABEL_63:
    v68 = *(this + 3);
    if (*v68 == 95)
    {
      *(this + 3) = v68 + 1;
      *(this + 4) = v67 - 1;
      return Node;
    }

    else
    {
LABEL_64:
      while (1)
      {
        if (!result)
        {
          break;
        }

        swift::Demangle::__runtime::Node::addChild(Node, result, *(this + 5), v69, v70);
        v67 = *(this + 4);
        if (v67)
        {
          goto LABEL_63;
        }
      }
    }
  }

  else
  {
LABEL_57:
    while (1)
    {
      if (!result)
      {
        break;
      }

      swift::Demangle::__runtime::Node::addChild(Node, result, *(this + 5), v65, v66);
      v63 = *(this + 4);
      if (v63)
      {
        goto LABEL_56;
      }
    }
  }

  return result;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleContext(_anonymous_namespace_::OldDemangler *this, int a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v4 = *v3;
  if (v4 > 0x52)
  {
    if (*v3 > 0x64u)
    {
      if (v4 == 101)
      {
        *(this + 3) = v3 + 1;
        *(this + 4) = v2 - 1;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 73);
        v23 = this;
        if (!result)
        {
          return result;
        }

        v24 = result;
        if (!result)
        {
          return result;
        }

        v25 = result;
        if (!result)
        {
          return result;
        }

        v28 = result;
        swift::Demangle::__runtime::Node::addChild(Node, v24, v23[5], v26, v27);
        swift::Demangle::__runtime::Node::addChild(Node, v28, v23[5], v29, v30);
        v19 = v23[5];
        v20 = Node;
        v21 = v25;
        goto LABEL_37;
      }

      if (v4 != 115)
      {
        if (v4 == 118)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }

      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      v31 = *(this + 5);
      v32 = v31[1];
      v33 = (v32 + 5);
      if (v32)
      {
        v34 = v33 > v31[2];
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        v35 = 2 * v31[4];
        if (v35 <= 6)
        {
          v35 = 6;
        }

        v31[4] = v35;
        v36 = v35 + 8;
        v37 = malloc_type_malloc(v35 + 8, 0x2004093837F09uLL);
        v32 = (v37 + 1);
        *v37 = v31[3];
        v33 = v37 + 13;
        v31[2] = v37 + v36;
        v31[3] = v37;
      }

      v31[1] = v33;
      *(v32 + 4) = 116;
      *v32 = 1718187859;

      return swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v31, 163, v32, 5);
    }

    else
    {
      if (v4 != 83)
      {
        if (v4 == 86 || v4 == 90)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }

      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
    }
  }

  else
  {
    if (*v3 <= 0x46u)
    {
      if (v4 != 67)
      {
        if (v4 != 69)
        {
          if (v4 != 70)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }

        *(this + 3) = v3 + 1;
        *(this + 4) = v2 - 1;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 73);
        v11 = a2;
        v12 = this;
        if (!result)
        {
          return result;
        }

        v13 = result;
        if (!result)
        {
          return result;
        }

        v16 = result;
        swift::Demangle::__runtime::Node::addChild(Node, v13, v12[5], v14, v15);
        v19 = v12[5];
        v20 = Node;
        v21 = v16;
LABEL_37:
        swift::Demangle::__runtime::Node::addChild(v20, v21, v19, v17, v18);
        return Node;
      }

LABEL_24:
      v7 = a2 + 1;
    }

    if (v4 - 79 < 2)
    {
      goto LABEL_24;
    }

    if (v4 != 71)
    {
      if (v4 == 73)
      {
        goto LABEL_24;
      }

LABEL_18:
    }

    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (result)
    {
    }
  }

  return result;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleDeclName(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3);
    v3 = *v2;
    if (v3 == 80)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      if (v17)
      {
        v9 = v17;
        if (v18)
        {
          v11 = v18;
          v12 = this;
          v13 = *(this + 5);
          v14 = 186;
          goto LABEL_16;
        }
      }

      return 0;
    }

    if (v3 == 76)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      if (v1 != 1)
      {
        v4 = v2[1];
        v5 = v2 + 2;
        *(this + 3) = v2 + 2;
        *(this + 4) = v1 - 2;
        if (v4 == 95)
        {
          v6 = 0;
        }

        else
        {
          v19 = 0;
          if (v1 == 2 || (v4 - 58) < 0xFFFFFFF6)
          {
            return v19;
          }

          v24 = v4 & 0xF;
          v25 = v2 + 3;
          v26 = v1 - 3;
          while (1)
          {
            v27 = *v5;
            if ((v27 - 58) < 0xFFFFFFF6)
            {
              break;
            }

            v24 = (v27 & 0xF) + 10 * v24;
            ++v5;
            *(this + 3) = v25;
            *(this + 4) = v26;
            ++v25;
            if (--v26 == -1)
            {
              return 0;
            }
          }

          if (v27 != 95)
          {
            return 0;
          }

          *(this + 3) = v25;
          *(this + 4) = v26;
          v6 = v24 + 1;
        }

        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 171, v6);
        if (Node)
        {
          v9 = Node;
          if (v10)
          {
            v11 = v10;
            v12 = this;
            v13 = *(this + 5);
            v14 = 146;
LABEL_16:
            v19 = swift::Demangle::__runtime::NodeFactory::createNode(v13, v14);
            swift::Demangle::__runtime::Node::addChild(v19, v9, *(v12 + 5), v20, v21);
            swift::Demangle::__runtime::Node::addChild(v19, v11, *(v12 + 5), v22, v23);
            return v19;
          }
        }
      }

      return 0;
    }
  }
}

void std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](uint64_t a1, void *a2)
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

_anonymous_namespace_::OldDemangler *anonymous namespace::OldDemangler::demangleModule(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
LABEL_15:
    v13 = result;
    if (result)
    {
      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &v13);
      return v13;
    }

    return result;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 != 83)
  {
    if (v3 == 115)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v4 = *(this + 5);
      v5 = v4[1];
      v6 = (v5 + 5);
      if (v5)
      {
        v7 = v6 > v4[2];
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = 2 * v4[4];
        if (v8 <= 6)
        {
          v8 = 6;
        }

        v4[4] = v8;
        v9 = v8 + 8;
        v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
        v5 = (v10 + 1);
        *v10 = v4[3];
        v6 = v10 + 13;
        v4[2] = v10 + v9;
        v4[3] = v10;
      }

      v4[1] = v6;
      *(v5 + 4) = 116;
      *v5 = 1718187859;

      return swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v4, 163, v5, 5);
    }

    goto LABEL_15;
  }

  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  if (result && *(result + 8) != 163)
  {
    return 0;
  }

  return result;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleEntity(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 != 90)
  {
    if (v5 != 70)
    {
      goto LABEL_8;
    }

LABEL_16:
    v7 = 0;
    v8 = 78;
    goto LABEL_17;
  }

  ++v4;
  --v3;
  *(this + 3) = v4;
  *(this + 4) = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  if (*v4 == 70)
  {
    goto LABEL_16;
  }

LABEL_8:
  v6 = *v4;
  switch(v6)
  {
    case 'I':
      v8 = 130;
      v7 = 1;
      break;
    case 'i':
      v7 = 0;
      v8 = 231;
      break;
    case 'v':
      v7 = 0;
      v8 = 266;
      break;
    default:
LABEL_12:
      v9 = a2 + 1;
  }

LABEL_17:
  *(this + 3) = v4 + 1;
  *(this + 4) = v3 - 1;
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = this;
  v14 = *(this + 4);
  if (!v14)
  {
    if ((v7 & 1) == 0)
    {
LABEL_22:
      if (!result)
      {
        return result;
      }

      v19 = result;
LABEL_24:
      v17 = 1;
LABEL_25:
      v13 = this;
LABEL_56:
      v24 = (v13 + 40);
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(v13 + 5), v8);
      swift::Demangle::__runtime::Node::addChild(Node, v12, *v24, v26, v27);
      if (v19)
      {
        swift::Demangle::__runtime::Node::addChild(Node, v19, *v24, v29, v30);
      }

      if (!v17)
      {
        goto LABEL_116;
      }

      if (!result)
      {
        return result;
      }

      v31 = result;
      v32 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 243);
      swift::Demangle::__runtime::Node::addChild(v32, v31, *v24, v33, v34);
      if (v32)
      {
        v37 = *v24;
        v38 = Node;
        v39 = v32;
LABEL_115:
        swift::Demangle::__runtime::Node::addChild(v38, v39, v37, v35, v36);
LABEL_116:
        if (v5 != 90)
        {
          return Node;
        }

        v65 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 229);
        swift::Demangle::__runtime::Node::addChild(v65, Node, *v24, v66, v67);
        return v65;
      }
    }

    return 0;
  }

  v15 = *(this + 3);
  v16 = *v15;
  v17 = 0;
  v18 = 32;
  switch(*v15)
  {
    case 'C':
      v18 = 0;
      goto LABEL_54;
    case 'D':
      goto LABEL_55;
    case 'E':
      v17 = 0;
      v18 = 106;
      goto LABEL_55;
    case 'G':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 102;
      goto LABEL_89;
    case 'M':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 161;
      goto LABEL_89;
    case 'U':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v8 = 72;
      goto LABEL_24;
    case 'W':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 53;
      goto LABEL_89;
    case 'Z':
      v17 = 0;
      v18 = 133;
      goto LABEL_55;
    case 'a':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      result = 0;
      if (v14 == 1)
      {
        return result;
      }

      v40 = v15[1];
      if (v40 > 0x6F)
      {
        if (v40 == 112)
        {
          v23 = 167;
        }

        else
        {
          if (v40 != 117)
          {
            return result;
          }

          v23 = 263;
        }
      }

      else if (v40 == 79)
      {
        v23 = 179;
      }

      else
      {
        if (v40 != 111)
        {
          return result;
        }

        v23 = 165;
      }

      goto LABEL_87;
    case 'c':
      v18 = 30;
LABEL_54:
      v17 = 1;
      goto LABEL_55;
    case 'd':
      v17 = 0;
      v18 = 52;
      goto LABEL_55;
    case 'e':
      v17 = 0;
      v18 = 105;
      goto LABEL_55;
    case 'g':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 100;
      goto LABEL_89;
    case 'l':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      result = 0;
      if (v14 == 1)
      {
        return result;
      }

      v22 = v15[1];
      if (v22 > 0x6F)
      {
        if (v22 == 112)
        {
          v23 = 166;
        }

        else
        {
          if (v22 != 117)
          {
            return result;
          }

          v23 = 262;
        }
      }

      else if (v22 == 79)
      {
        v23 = 178;
      }

      else
      {
        if (v22 != 111)
        {
          return result;
        }

        v23 = 164;
      }

LABEL_87:
      *(this + 3) = v15 + 2;
      *(this + 4) = v14 - 2;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = v23;
LABEL_89:
      v24 = (this + 40);
      v41 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), v21);
      v42 = *(v20 + 8);
      if (v42 == 186)
      {
        v44 = *(v20 + 18);
        v45 = v20;
        if (v44 != 2)
        {
          if (v44 != 5 || v20[2] < 2)
          {
LABEL_107:
            Node = v41;
            v51 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 266);
            swift::Demangle::__runtime::Node::addChild(v51, v12, *v24, v52, v53);
            swift::Demangle::__runtime::Node::addChild(v51, v20, *v24, v54, v55);
            v57 = 0;
            goto LABEL_108;
          }

          v45 = *v20;
        }

        v46 = *(v45 + 1);
        if (v46[1] != 9)
        {
          goto LABEL_107;
        }

        v47 = *v46;
        v48 = *v47;
        v49 = *(v47 + 8);
        if (v48 != 0x7069726373627573 || v49 != 116)
        {
          goto LABEL_107;
        }

        if (v44 != 2)
        {
          if (!v20[2])
          {
            Node = v41;
            v68 = 0;
            goto LABEL_124;
          }

          v20 = *v20;
        }

        Node = v41;
        v68 = *v20;
LABEL_124:
        v20 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 186);
        swift::Demangle::__runtime::Node::addChild(v20, v68, *v24, v69, v70);
        goto LABEL_125;
      }

      if (v42 != 103 || *(v20 + 1) != 9)
      {
        goto LABEL_107;
      }

      if (**v20 != 0x7069726373627573 || *(*v20 + 8) != 116)
      {
        goto LABEL_107;
      }

      Node = v41;
      v20 = 0;
LABEL_125:
      v51 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 231);
      swift::Demangle::__runtime::Node::addChild(v51, v12, *v24, v71, v72);
      v57 = 1;
LABEL_108:
      if (result)
      {
        v58 = result;
        v59 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 243);
        swift::Demangle::__runtime::Node::addChild(v59, v58, *v24, v60, v61);
        if (v59)
        {
          swift::Demangle::__runtime::Node::addChild(v51, v59, *v24, v62, v63);
          v64 = v57 ^ 1;
          if (!v20)
          {
            v64 = 1;
          }

          if ((v64 & 1) == 0)
          {
            swift::Demangle::__runtime::Node::addChild(v51, v20, *v24, v35, v36);
          }

          v37 = *v24;
          v38 = Node;
          v39 = v51;
          goto LABEL_115;
        }

        return 0;
      }

      return result;
    case 'm':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 150;
      goto LABEL_89;
    case 'r':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 214;
      goto LABEL_89;
    case 's':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 226;
      goto LABEL_89;
    case 'u':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v8 = 122;
      goto LABEL_24;
    case 'w':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 269;
      goto LABEL_89;
    default:
      if (!v7)
      {
        goto LABEL_22;
      }

      if (v16 == 105)
      {
        v17 = 0;
        v18 = 130;
LABEL_55:
        v19 = 0;
        *(this + 3) = v15 + 1;
        *(this + 4) = v14 - 1;
        v8 = v18;
        goto LABEL_56;
      }

      if (v16 != 65)
      {
        return 0;
      }

      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (result)
      {
        v19 = result;
        v17 = 0;
        v8 = 34;
        goto LABEL_25;
      }

      return result;
  }
}

unint64_t anonymous namespace::OldDemangler::demangleIdentifier(void *a1, unint64_t a2)
{
  v2 = a1[4];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = *v3;
  if (v4 == 88)
  {
    ++v3;
    __p = 0;
    v29 = 0;
    v30 = 0;
    --v2;
    a1[3] = v3;
    a1[4] = v2;
    if (!v2)
    {
LABEL_14:
      v8 = 0;
      if ((a2 & 0x10000) != 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = 103;
      }

      if (!v2)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
  }

  if (*v3 != 111)
  {
    goto LABEL_14;
  }

  size = 0;
  a1[3] = v3 + 1;
  a1[4] = v2 - 1;
  if (v2 != 1 && ((a2 >> 16) & 1) == 0)
  {
    v6 = v3[1];
    v3 += 2;
    v2 -= 2;
    a1[3] = v3;
    a1[4] = v2;
    switch(v6)
    {
      case 'p':
        v7 = 185;
        break;
      case 'i':
        v7 = 129;
        break;
      case 'P':
        v7 = 183;
        break;
      default:
        goto LABEL_28;
    }

    v8 = 1;
    if (!v2)
    {
      goto LABEL_28;
    }

LABEL_22:
    p_p = (v3 + 1);
    v9 = *v3;
    v11 = v2 - 1;
    a1[3] = v3 + 1;
    a1[4] = v11;
    if ((v9 - 48) > 9)
    {
      goto LABEL_28;
    }

    size = v9 & 0xF;
    if (v11)
    {
      v12 = v3 + 2;
      do
      {
        v13 = p_p->__r_.__value_.__s.__data_[0];
        if ((v13 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        size = (v13 & 0xF) + 10 * size;
        p_p = (p_p + 1);
        --v11;
        a1[3] = v12;
        a1[4] = v11;
        ++v12;
      }

      while (v11);
    }

    if (v11 < size)
    {
      goto LABEL_28;
    }

    a1[3] = p_p + size;
    a1[4] = v11 - size;
    if (v4 != 88)
    {
LABEL_41:
      if (size)
      {
        memset(&v27, 0, sizeof(v27));
        if (v8)
        {
          v16 = a1;
          std::string::reserve(&v27, size);
          do
          {
            v17 = p_p->__r_.__value_.__s.__data_[0];
            if ((v17 & 0x80000000) == 0)
            {
              if (v17 - 123) < 0xE6u || (v18 = v17 - 97, ((0x17007A2uLL >> v18)))
              {
                size = 0;
                if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_69;
              }
            }

            std::string::push_back(&v27, v17);
            p_p = (p_p + 1);
            --size;
          }

          while (size);
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &v27;
          }

          else
          {
            p_p = v27.__r_.__value_.__r.__words[0];
          }

          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v27.__r_.__value_.__l.__size_;
          }

          v19 = v16[5];
          if (!size)
          {
            v20 = 0;
            goto LABEL_68;
          }
        }

        else
        {
          v19 = a1[5];
        }

        v20 = v19[1];
        v21 = &v20[size];
        if (v20)
        {
          v22 = v21 > v19[2];
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          v23 = 2 * v19[4];
          if (v23 <= size + 1)
          {
            v23 = size + 1;
          }

          v19[4] = v23;
          v24 = v23 + 8;
          v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
          v26 = v25 + v24;
          *v25 = v19[3];
          v20 = (v25 + 1);
          v19[2] = v26;
          v19[3] = v25;
          v21 = v25 + size + 8;
        }

        v19[1] = v21;
        memmove(v20, p_p, size);
LABEL_68:
        size = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v19, v7, v20, size);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_69:
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_29;
    }

    v15 = a1;
    if (swift::Punycode::__runtime::decodePunycodeUTF8(p_p, size, &__p))
    {
      if (v30 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v30 >= 0)
      {
        size = SHIBYTE(v30);
      }

      else
      {
        size = v29;
      }

      a1 = v15;
      goto LABEL_41;
    }

LABEL_28:
    size = 0;
  }

LABEL_29:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  return size;
}

unsigned int *anonymous namespace::OldDemangler::demangleNominalType(_anonymous_namespace_::OldDemangler *this, int a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = *v3;
    if (v4 > 0x4F)
    {
      switch(v4)
      {
        case 'P':
          *(this + 3) = v3 + 1;
          *(this + 4) = v2 - 1;
          v6 = a2 + 1;
          v7 = 190;
          break;
        case 'V':
          *(this + 3) = v3 + 1;
          *(this + 4) = v2 - 1;
          v6 = a2 + 1;
          v7 = 230;
          break;
        case 'S':
          *(this + 3) = v3 + 1;
          *(this + 4) = v2 - 1;
        default:
          return 0;
      }
    }

    if (v4 == 67)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      v6 = a2 + 1;
      v7 = 25;
    }

    if (v4 == 79)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      v6 = a2 + 1;
      v7 = 63;
    }
  }

  return 0;
}

unint64_t anonymous namespace::OldDemangler::demangleIndexAsNode(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = v2 + 1;
    v4 = *v2;
    *(a1 + 24) = v2 + 1;
    *(a1 + 32) = v1 - 1;
    if (v4 == 95)
    {
      v5 = 0;
      return swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 171, v5);
    }

    if (v1 != 1 && (v4 - 58) >= 0xFFFFFFF6)
    {
      v8 = v4 & 0xF;
      v9 = v2 + 2;
      v10 = v1 - 2;
      while (1)
      {
        v11 = *v3;
        if ((v11 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v8 = (v11 & 0xF) + 10 * v8;
        ++v3;
        *(a1 + 24) = v9;
        *(a1 + 32) = v10;
        ++v9;
        if (--v10 == -1)
        {
          return 0;
        }
      }

      if (v11 == 95)
      {
        *(a1 + 24) = v9;
        *(a1 + 32) = v10;
        v5 = v8 + 1;
        return swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 171, v5);
      }
    }
  }

  return 0;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleBoundGenericArgs(swift::Demangle::__runtime::NodeFactory **this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v4 = a2;
  v6 = *(a2 + 18);
  v7 = a2;
  if ((v6 - 1) >= 2)
  {
    if (v6 != 5 || !*(a2 + 2))
    {
      return 0;
    }

    v7 = *a2;
  }

  v8 = *v7;
  v9 = *(*v7 + 16);
  if (v9 == 73 || v9 == 78 || v9 == 163)
  {
    goto LABEL_30;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], *(v4 + 8));
  swift::Demangle::__runtime::Node::addChild(Node, v11, this[5], v13, v14);
  for (i = 1; ; ++i)
  {
    v19 = *(v4 + 18);
    if (v19 != 1)
    {
      break;
    }

    if (v19 <= i)
    {
      goto LABEL_29;
    }

LABEL_20:
    v20 = v19 - 1;
    if (v19 == 1)
    {
      goto LABEL_23;
    }

    if (v19 != 5)
    {
      v19 = 2;
LABEL_23:
      if (v19 <= i)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    if (*(v4 + 2) <= i)
    {
LABEL_10:
      v18 = 0;
      goto LABEL_11;
    }

LABEL_26:
    v21 = v4;
    if (v20 >= 2)
    {
      v21 = *v4;
    }

    v18 = *(v21 + i);
LABEL_11:
    swift::Demangle::__runtime::Node::addChild(Node, v18, this[5], v15, v16);
  }

  if (v19 == 5)
  {
    if (*(v4 + 2) <= i)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v19 == 2 && i < 2)
  {
    goto LABEL_20;
  }

LABEL_29:
  v4 = Node;
LABEL_30:
  v23 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 246);
  v24 = this[4];
  while (1)
  {
    if (v24)
    {
      v25 = this[3];
      if (*v25 == 95)
      {
        break;
      }
    }

    if (v26)
    {
      v27 = v26;
      v28 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
      swift::Demangle::__runtime::Node::addChild(v28, v27, this[5], v29, v30);
      if (v28)
      {
        swift::Demangle::__runtime::Node::addChild(v23, v28, this[5], v31, v32);
        v24 = this[4];
        if (v24)
        {
          continue;
        }
      }
    }

    return 0;
  }

  this[3] = (v25 + 1);
  this[4] = (v24 - 1);
  v34 = *(v23 + 18);
  if ((v34 - 1) < 2 || v34 == 5 && *(v23 + 8))
  {
    v35 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(v35, v4, this[5], v36, v37);
    v38 = *(v4 + 8);
    switch(v38)
    {
      case 25:
        v39 = 13;
        break;
      case 63:
        v39 = 14;
        break;
      case 230:
        v39 = 15;
        break;
      default:
        return 0;
    }

    v4 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], v39);
    swift::Demangle::__runtime::Node::addChild(v4, v35, this[5], v40, v41);
    swift::Demangle::__runtime::Node::addChild(v4, v23, this[5], v42, v43);
  }

  return v4;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleProtocolNameGivenContext(swift::Demangle::__runtime::NodeFactory **this, swift::Demangle::__runtime::Node *a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 190);
    swift::Demangle::__runtime::Node::addChild(Node, a2, this[5], v6, v7);
    swift::Demangle::__runtime::Node::addChild(Node, v5, this[5], v8, v9);
    std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &Node);
    return Node;
  }

  return result;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleProtocolName(swift::Demangle::__runtime::NodeFactory **this, unsigned int a2)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
  swift::Demangle::__runtime::Node::addChild(Node, v4, this[5], v6, v7);
  return Node;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleGenericParamIndex(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 == 120)
  {
    v8 = 0;
    v11 = 0;
    *(this + 3) = v2 + 1;
    *(this + 4) = v1 - 1;
  }

  v4 = v2 + 1;
  if (v3 == 100)
  {
    *(this + 3) = v4;
    *(this + 4) = v1 - 1;
    if (v1 != 1)
    {
      v5 = v2[1];
      i = v2 + 2;
      v7 = v1 - 2;
      *(this + 3) = v2 + 2;
      *(this + 4) = v1 - 2;
      if (v5 == 95)
      {
        v8 = 1;
        if (v1 == 2)
        {
          return 0;
        }
      }

      else
      {
        if (v1 == 2 || (v5 - 58) < 0xFFFFFFF6)
        {
          return 0;
        }

        v17 = v5 & 0xF;
        v18 = v2 + 3;
        v7 = v1 - 3;
        for (i = v18; ; ++i)
        {
          v19 = *(i - 1);
          if ((v19 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v17 = (v19 & 0xF) + 10 * v17;
          *(this + 3) = v18;
          *(this + 4) = v7;
          ++v18;
          if (--v7 == -1)
          {
            return 0;
          }
        }

        if (v19 != 95)
        {
          return 0;
        }

        *(this + 3) = v18;
        *(this + 4) = v7;
        v8 = (v17 + 2);
        if (!v7)
        {
          return 0;
        }
      }

      v9 = i + 1;
      v10 = *i;
      *(this + 3) = i + 1;
      *(this + 4) = v7 - 1;
      if (v10 == 95)
      {
        v11 = 0;
      }

      if (v7 != 1 && (v10 - 58) >= 0xFFFFFFF6)
      {
        v20 = v10 & 0xF;
        v21 = i + 2;
        v22 = v7 - 2;
        while (1)
        {
          v23 = *v9;
          if ((v23 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v20 = (v23 & 0xF) + 10 * v20;
          ++v9;
          *(this + 3) = v21;
          *(this + 4) = v22;
          ++v21;
          if (--v22 == -1)
          {
            return 0;
          }
        }

        if (v23 == 95)
        {
          *(this + 3) = v21;
          *(this + 4) = v22;
          v11 = v20 + 1;
        }
      }
    }
  }

  else
  {
    *(this + 3) = v4;
    *(this + 4) = v1 - 1;
    if (v3 == 95)
    {
      v8 = 0;
      v11 = 1;
    }

    if (v1 != 1 && (v3 - 58) >= 0xFFFFFFF6)
    {
      v13 = v3 & 0xF;
      v14 = v2 + 2;
      v15 = v1 - 2;
      while (1)
      {
        v16 = *v4;
        if ((v16 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v13 = (v16 & 0xF) + 10 * v13;
        ++v4;
        *(this + 3) = v14;
        *(this + 4) = v15;
        ++v14;
        if (--v15 == -1)
        {
          return 0;
        }
      }

      if (v16 == 95)
      {
        v8 = 0;
        *(this + 3) = v14;
        *(this + 4) = v15;
        v11 = v13 + 2;
      }
    }
  }

  return 0;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::demangleProtocolNameImpl(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 != 115)
  {
    if (v5 == 83)
    {
      *(this + 3) = v4 + 1;
      *(this + 4) = v3 - 1;
      v6 = this;
      if (result)
      {
        v7 = *(result + 8);
        if (v7 != 190)
        {
          if (v7 != 163)
          {
            return 0;
          }

          v8 = result;
          if (result)
          {
            v9 = result;
            Node = swift::Demangle::__runtime::NodeFactory::createNode(v6[5], 190);
            swift::Demangle::__runtime::Node::addChild(Node, v8, v6[5], v10, v11);
            v14 = v6[5];
            v15 = Node;
            v16 = v9;
LABEL_25:
            swift::Demangle::__runtime::Node::addChild(v15, v16, v14, v12, v13);
            std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](v6, &Node);
            return Node;
          }
        }
      }

      return result;
    }

LABEL_12:
  }

  *(this + 3) = v4 + 1;
  *(this + 4) = v3 - 1;
  v6 = this;
  v17 = *(this + 5);
  v18 = v17[1];
  v19 = (v18 + 5);
  if (v18)
  {
    v20 = v19 > v17[2];
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 2 * v17[4];
    if (v21 <= 6)
    {
      v21 = 6;
    }

    v17[4] = v21;
    v22 = v21 + 8;
    v23 = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
    *v23 = v17[3];
    v19 = v23 + 13;
    v18 = (v23 + 1);
    v17[2] = v23 + v22;
    v17[3] = v23;
  }

  v17[1] = v19;
  *(v18 + 4) = 116;
  *v18 = 1718187859;
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v17, 163, v18, 5);
  if (result)
  {
    v25 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(v6[5], 190);
    swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, v6[5], v26, v27);
    v14 = v6[5];
    v15 = Node;
    v16 = v25;
    goto LABEL_25;
  }

  return result;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleDependentMemberTypeName(_anonymous_namespace_::OldDemangler *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v5 = *(this + 4);
  if (!v5)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v6 = *(this + 3);
  v7 = *v6;
  if (v7 != 80)
  {
    if (v7 == 83)
    {
      *(this + 3) = v6 + 1;
      *(this + 4) = v5 - 1;
      v24 = result;
      if (!result)
      {
        return result;
      }

      if (*(result + 8) != 36)
      {
        return 0;
      }

LABEL_13:
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 46);
      swift::Demangle::__runtime::Node::addChild(Node, a2, *(this + 5), v17, v18);
      swift::Demangle::__runtime::Node::addChild(Node, v24, *(this + 5), v19, v20);
      return Node;
    }

    goto LABEL_7;
  }

  *(this + 3) = v6 + 1;
  *(this + 4) = v5 - 1;
  if (!result)
  {
    return result;
  }

  v21 = result;
  v9 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(v9, v21, *(this + 5), v22, v23);
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  if (result)
  {
    v10 = result;
    result = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 36);
    v24 = result;
    if (result)
    {
      v13 = result;
      swift::Demangle::__runtime::Node::addChild(result, v10, *(this + 5), v11, v12);
      if (v9)
      {
        swift::Demangle::__runtime::Node::addChild(v13, v9, *(this + 5), v14, v15);
      }

      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &v24);
      goto LABEL_13;
    }
  }

  return result;
}

swift::Demangle::__runtime *anonymous namespace::OldDemangler::createSwiftType(uint64_t a1, __int16 a2, const void *a3, size_t a4)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), a2);
  v8 = *(a1 + 40);
  v9 = v8[1];
  v10 = (v9 + 5);
  if (v9)
  {
    v11 = v10 > v8[2];
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 2 * v8[4];
    if (v12 <= 6)
    {
      v12 = 6;
    }

    v8[4] = v12;
    v13 = v12 + 8;
    v14 = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
    v9 = (v14 + 1);
    *v14 = v8[3];
    v10 = v14 + 13;
    v8[2] = v14 + v13;
    v8[3] = v14;
  }

  v8[1] = v10;
  *(v9 + 4) = 116;
  *v9 = 1718187859;
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v8, 163, v9, 5);
  swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, *(a1 + 40), v16, v17);
  v18 = *(a1 + 40);
  if (a4)
  {
    v19 = v18[1];
    v20 = v19 + a4;
    if (v19)
    {
      v21 = v20 > v18[2];
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = 2 * v18[4];
      if (v22 <= a4 + 1)
      {
        v22 = a4 + 1;
      }

      v18[4] = v22;
      v23 = v22 + 8;
      v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      v25 = v24 + v23;
      *v24 = v18[3];
      v19 = v24 + 1;
      v18[2] = v25;
      v18[3] = v24;
      v20 = v24 + a4 + 8;
    }

    v18[1] = v20;
    memmove(v19, a3, a4);
  }

  else
  {
    v19 = 0;
  }

  v26 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v18, 103, v19, a4);
  swift::Demangle::__runtime::Node::addChild(Node, v26, *(a1 + 40), v27, v28);
  return Node;
}

const char *anonymous namespace::OldDemangler::demangleImplConvention(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *v3;
  if (v4 > 0x66)
  {
    if (*v3 <= 0x6Bu)
    {
      if (v4 == 103)
      {
        *(a1 + 24) = v3 + 1;
        *(a1 + 32) = v2 - 1;
        return off_1E69EBDB0[a2];
      }

      if (v4 == 105)
      {
        *(a1 + 24) = v3 + 1;
        *(a1 + 32) = v2 - 1;
        return qword_1E69EBDC8[a2];
      }

      return 0;
    }

    if (v4 != 108)
    {
      if (v4 == 111)
      {
        *(a1 + 24) = v3 + 1;
        *(a1 + 32) = v2 - 1;
        return off_1E69EBDE0[a2];
      }

      return 0;
    }

    *(a1 + 24) = v3 + 1;
    *(a1 + 32) = v2 - 1;
    if (a2 == 1)
    {
      return "@inout";
    }

    else
    {
      return 0;
    }
  }

  else if (*v3 > 0x63u)
  {
    if (v4 == 100)
    {
      *(a1 + 24) = v3 + 1;
      *(a1 + 32) = v2 - 1;
      return off_1E69EBD98[a2];
    }

    if (v4 != 101)
    {
      return 0;
    }

    *(a1 + 24) = v3 + 1;
    *(a1 + 32) = v2 - 1;
    if (a2 == 1)
    {
      return "@deallocating";
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v4 != 68)
    {
      if (v4 == 97)
      {
        *(a1 + 24) = v3 + 1;
        *(a1 + 32) = v2 - 1;
        if (a2 >= 2)
        {
          return "@autoreleased";
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    *(a1 + 24) = v3 + 1;
    *(a1 + 32) = v2 - 1;
    if (a2 >= 2)
    {
      return "@unowned_inner_pointer";
    }

    else
    {
      return 0;
    }
  }
}

unsigned int *anonymous namespace::OldDemangler::demangleImplParameterOrResult(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 32);
  if (!v5 || (v6 = *(a1 + 24), *v6 != 122))
  {
    if (a2 == 123)
    {
      v7 = 1;
      v8 = 123;
      goto LABEL_9;
    }

    if ((a2 & 0xFFFFFFFD) == 0x7D)
    {
      v8 = a2;
      v7 = 2;
      goto LABEL_9;
    }

    return 0;
  }

  *(a1 + 24) = v6 + 1;
  *(a1 + 32) = v5 - 1;
  if (a2 != 125)
  {
    return 0;
  }

  v7 = 2;
  v8 = 127;
LABEL_9:
  if (!v10)
  {
    return 0;
  }

  v12 = v9;
  v13 = v10;
  if (!result)
  {
    return result;
  }

  v15 = result;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 243);
  swift::Demangle::__runtime::Node::addChild(Node, v15, *(a1 + 40), v17, v18);
  if (!Node)
  {
    return 0;
  }

  v19 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), v8);
  v20 = *(a1 + 40);
  v21 = v20[1];
  if (!v21 || (v22 = &v21[v13], &v21[v13] > v20[2]))
  {
    v23 = 2 * v20[4];
    if (v23 <= v13 + 1)
    {
      v23 = v13 + 1;
    }

    v20[4] = v23;
    v24 = v23 + 8;
    v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
    v26 = v25 + v24;
    *v25 = v20[3];
    v21 = (v25 + 1);
    v20[2] = v26;
    v20[3] = v25;
    v22 = v25 + v13 + 8;
  }

  v20[1] = v22;
  memmove(v21, v12, v13);
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v20, 108, v21, v13);
  swift::Demangle::__runtime::Node::addChild(v19, NodeWithAllocatedText, *(a1 + 40), v28, v29);
  swift::Demangle::__runtime::Node::addChild(v19, Node, *(a1 + 40), v30, v31);
  return v19;
}

unint64_t anonymous namespace::OldDemangler::demangleValueWitnessKind(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  LOBYTE(v7) = *v2;
  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  if (v1 == 1)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v3 = v2[1];
    *(this + 3) = v2 + 2;
    *(this + 4) = v1 - 2;
    HIBYTE(v7) = v3;
    switch(v7)
    {
      case 27745:
        v5 = 0;
        v4 = 0x100000000;
        break;
      case 24931:
        v4 = 0x100000000;
        v5 = 1;
        break;
      case 24948:
        v4 = 0x100000000;
        v5 = 2;
        break;
      case 25956:
        v4 = 0x100000000;
        v5 = 3;
        break;
      case 30840:
        v4 = 0x100000000;
        v5 = 4;
        break;
      case 22616:
        v4 = 0x100000000;
        v5 = 5;
        break;
      case 30808:
        v4 = 0x100000000;
        v5 = 6;
        break;
      case 20547:
        v4 = 0x100000000;
        v5 = 7;
        break;
      case 28739:
        v4 = 0x100000000;
        v5 = 8;
        break;
      case 28771:
        v4 = 0x100000000;
        v5 = 9;
        break;
      case 27476:
        v4 = 0x100000000;
        v5 = 10;
        break;
      case 27508:
        v4 = 0x100000000;
        v5 = 11;
        break;
      case 29296:
        v4 = 0x100000000;
        v5 = 12;
        break;
      case 19284:
        v4 = 0x100000000;
        v5 = 13;
        break;
      case 25411:
        v4 = 0x100000000;
        v5 = 14;
        break;
      case 29780:
        v4 = 0x100000000;
        v5 = 15;
        break;
      case 21620:
        v4 = 0x100000000;
        v5 = 16;
        break;
      case 29560:
        v4 = 0x100000000;
        v5 = 17;
        break;
      case 26488:
        v4 = 0x100000000;
        v5 = 18;
        break;
      case 26485:
        v4 = 0x100000000;
        v5 = 19;
        break;
      case 28789:
        v4 = 0x100000000;
        v5 = 20;
        break;
      case 26997:
        v4 = 0x100000000;
        v5 = 21;
        break;
      case 29797:
        v4 = 0x100000000;
        v5 = 22;
        break;
      default:
        v4 = (v7 == 29811) << 32;
        v5 = 23;
        if (v7 != 29811)
        {
          v5 = 0;
        }

        break;
    }
  }

  return v5 | v4;
}

uint64_t anonymous namespace::OldDemangler::demangleReabstractSignature(_anonymous_namespace_::OldDemangler *this, swift::Demangle::__runtime::Node *a2, unsigned int a3)
{
  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(this + 3);
    if (*v7 == 71)
    {
      *(this + 3) = v7 + 1;
      *(this + 4) = v6 - 1;
      if (!result)
      {
        return result;
      }

      swift::Demangle::__runtime::Node::addChild(a2, result, *(this + 5), v9, v10);
    }
  }

  if (result)
  {
    v11 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::__runtime::Node::addChild(Node, v11, *(this + 5), v13, v14);
    if (!Node)
    {
      return 0;
    }

    swift::Demangle::__runtime::Node::addChild(a2, Node, *(this + 5), v15, v16);
    if (!result)
    {
      return result;
    }

    v18 = result;
    v19 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::__runtime::Node::addChild(v19, v18, *(this + 5), v20, v21);
    if (v19)
    {
      swift::Demangle::__runtime::Node::addChild(a2, v19, *(this + 5), v22, v23);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t **swift::Demangle::__runtime::mangleNodeOld(swift::Demangle::__runtime *this, swift::Demangle::__runtime::Node *a2)
{
  result = MEMORY[0x1EEE9AC00](this, a2);
  v4 = v3;
  if (!result)
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = 0;
    return result;
  }

  v5 = result;
  v54 = &unk_1EEEADB68;
  v55 = 0;
  v56 = 0u;
  v58 = 0;
  v59 = 0;
  v17 = &v54;
  memset(&v18[12312], 0, 17);
  v19 = 0u;
  v20 = 0;
  v22 = 0;
  v21 = 0u;
  v23 = 0u;
  v24 = 0;
  v26 = 0;
  v25 = 0u;
  v28 = 0;
  v27 = 0u;
  v30 = 0;
  v29 = 0u;
  v31 = 0u;
  v32 = 0;
  v34 = 0;
  v33 = 0u;
  v35 = 0u;
  v36 = 0;
  v38 = 0;
  v37 = 0u;
  v39 = 0u;
  v40 = 0;
  v42 = 0;
  v41 = 0u;
  v43 = 0u;
  v44 = 0;
  v46 = 0;
  v45 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  bzero(v18, 0x3011uLL);
  v50 = 1065353216;
  v53 = &v54;
  v57 = 4800;
  v6 = malloc_type_malloc(0x12C8uLL, 0x2004093837F09uLL);
  v7 = *(&v56 + 1);
  *(&v56 + 1) = v6;
  *v6 = v7;
  v55 = v6 + 5;
  *&v56 = v6 + 601;
  __src = v6 + 1;
  __len = 0x2000000000;
  if (!v15)
  {
    if (__src)
    {
      v12 = __len;
      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v14) = __len;
      if (__len)
      {
        memmove(&__dst, __src, __len);
      }

      *(&__dst + v12) = 0;
    }

    else
    {
      __dst = 0uLL;
      v14 = 0;
    }

    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = __dst;
    *(v4 + 40) = v14;
    v9 = *(&v48 + 1);
    if (!*(&v48 + 1))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *v4 = v15;
  *(v4 + 16) = v16;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v9 = *(&v48 + 1);
  if (*(&v48 + 1))
  {
    do
    {
LABEL_4:
      v10 = *v9;
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

LABEL_5:
  v11 = *(&v47 + 1);
  *(&v47 + 1) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v54 = &unk_1EEEADB68;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(*(&v56 + 1));
  if (v58)
  {
    *(v58 + 48) = 0;
  }

  return result;
}

void anonymous namespace::Remangler::mangle(uint64_t *__return_ptr a1@<X8>, char **this@<X0>, uint64_t **a3@<X1>, uint64_t a4@<X2>, int a5@<W7>)
{
  if (a4 < 0x401)
  {
    switch(*(a3 + 8))
    {
      case 0:

        return;
      case 1:

        return;
      case 2:
        *a1 = 7;
        a1[1] = a3;
        v5 = 529;
        goto LABEL_3;
      case 3:
      case 0x21:
      case 0xDA:
      case 0xF3:
        v6 = a4 + 1;

        return;
      case 4:

        return;
      case 5:

        return;
      case 6:

        return;
      case 7:
        v7 = this[1593];
        v8 = "<default-associated-type-metadata-accessor>";
        goto LABEL_201;
      case 8:

        return;
      case 9:

        return;
      case 0xA:
        v7 = this[1593];
        v8 = "<base-witness-table-accessor>";
        goto LABEL_724;
      case 0xB:

        goto LABEL_100;
      case 0xC:

        return;
      case 0xD:

        goto LABEL_20;
      case 0xE:

        goto LABEL_20;
      case 0xF:

        goto LABEL_20;
      case 0x10:

        goto LABEL_20;
      case 0x11:

        goto LABEL_20;
      case 0x12:

        goto LABEL_20;
      case 0x13:

        goto LABEL_20;
      case 0x14:

        return;
      case 0x15:
        *a1 = 9;
        a1[1] = a3;
        v5 = 1609;
        goto LABEL_3;
      case 0x16:
        *a1 = 9;
        a1[1] = a3;
        v5 = 1563;
        goto LABEL_3;
      case 0x17:

        return;
      case 0x18:
        *a1 = 7;
        a1[1] = a3;
        v5 = 1768;
        goto LABEL_3;
      case 0x19:

        goto LABEL_20;
      case 0x1A:

        return;
      case 0x1B:
        *a1 = 7;
        a1[1] = a3;
        v5 = 517;
        goto LABEL_3;
      case 0x1C:
        *a1 = 7;
        a1[1] = a3;
        v5 = 523;
        goto LABEL_3;
      case 0x1D:

        return;
      case 0x1E:

        return;
      case 0x1F:

        return;
      case 0x20:

        return;
      case 0x22:

        return;
      case 0x23:
        *a1 = 7;
        a1[1] = a3;
        v5 = 535;
        goto LABEL_3;
      case 0x24:

        return;
      case 0x25:

        return;
      case 0x26:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2114;
        goto LABEL_3;
      case 0x27:

        return;
      case 0x28:

        return;
      case 0x29:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2144;
        goto LABEL_3;
      case 0x2A:

        return;
      case 0x2B:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2071;
        goto LABEL_3;
      case 0x2C:
        goto LABEL_616;
      case 0x2D:

        return;
      case 0x2E:

        return;
      case 0x2F:
        LODWORD(a4) = a4 + 1;
LABEL_616:

        return;
      case 0x30:
        *a1 = 7;
        a1[1] = a3;
        v5 = 541;
        goto LABEL_3;
      case 0x31:
        *a1 = 7;
        a1[1] = a3;
        v5 = 548;
        goto LABEL_3;
      case 0x32:
        *a1 = 7;
        a1[1] = a3;
        v5 = 555;
        goto LABEL_3;
      case 0x33:
        *a1 = 7;
        a1[1] = a3;
        v5 = 562;
        goto LABEL_3;
      case 0x34:

        return;
      case 0x35:

        return;
      case 0x36:

        return;
      case 0x37:
        v7 = this[1593];
        v8 = "TE";
        goto LABEL_750;
      case 0x38:
        v7 = this[1593];
        v8 = "TF";
        goto LABEL_750;
      case 0x39:
        v7 = this[1593];
        v8 = "TD";
        goto LABEL_750;
      case 0x3A:
        v7 = this[1593];
        v8 = "Td";
        goto LABEL_750;
      case 0x3B:

        return;
      case 0x3C:
        v7 = this[1593];
        v8 = "TI";
        goto LABEL_750;
      case 0x3D:
        v7 = this[1593];
        v8 = "Tx";
        goto LABEL_750;
      case 0x3E:
        v7 = this[1593];
        v8 = "TX";
        goto LABEL_750;
      case 0x3F:

        goto LABEL_20;
      case 0x40:

        return;
      case 0x41:
        v7 = this[1593];
        v8 = "ERR";
        goto LABEL_608;
      case 0x42:

LABEL_100:
        return;
      case 0x43:

        goto LABEL_668;
      case 0x44:
        v7 = this[1593];
        v8 = "y";
        goto LABEL_471;
      case 0x45:

        return;
      case 0x46:

        return;
      case 0x47:

        return;
      case 0x48:

        return;
      case 0x49:

        return;
      case 0x4A:

        return;
      case 0x4B:

        return;
      case 0x4C:

        return;
      case 0x4D:

        return;
      case 0x4E:

        return;
      case 0x4F:
        *a1 = 7;
        a1[1] = a3;
        v5 = 436;
        goto LABEL_3;
      case 0x50:
        *a1 = 7;
        a1[1] = a3;
        v5 = 468;
        goto LABEL_3;
      case 0x51:
        *a1 = 7;
        a1[1] = a3;
        v5 = 462;
        goto LABEL_3;
      case 0x52:
        *a1 = 7;
        a1[1] = a3;
        v5 = 484;
        goto LABEL_3;
      case 0x53:
        *a1 = 7;
        a1[1] = a3;
        v5 = 476;
        goto LABEL_3;
      case 0x54:

LABEL_668:
        return;
      case 0x55:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3001;
        goto LABEL_3;
      case 0x56:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3006;
        goto LABEL_3;
      case 0x57:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3010;
        goto LABEL_3;
      case 0x58:
        *a1 = 7;
        a1[1] = a3;
        v5 = 420;
        goto LABEL_3;
      case 0x59:
        *a1 = 7;
        a1[1] = a3;
        v5 = 426;
        goto LABEL_3;
      case 0x5A:

        return;
      case 0x5B:

        return;
      case 0x5C:
        *a1 = 7;
        a1[1] = a3;
        v5 = 918;
        goto LABEL_3;
      case 0x5D:
        *a1 = 7;
        a1[1] = a3;
        v5 = 394;
        goto LABEL_3;
      case 0x5E:
        *a1 = 7;
        a1[1] = a3;
        v5 = 405;
        goto LABEL_3;
      case 0x5F:
        *a1 = 7;
        a1[1] = a3;
        v5 = 410;
        goto LABEL_3;
      case 0x60:
        *a1 = 7;
        a1[1] = a3;
        v5 = 431;
        goto LABEL_3;
      case 0x61:
        *a1 = 7;
        a1[1] = a3;
        v5 = 400;
        goto LABEL_3;
      case 0x62:
        *a1 = 7;
        a1[1] = a3;
        v5 = 415;
        goto LABEL_3;
      case 0x63:

        return;
      case 0x64:

        return;
      case 0x65:

        return;
      case 0x66:

        return;
      case 0x67:
      case 0xEC:
        v10 = a3[1];
        v11 = *a3;
        v12 = 0;
        goto LABEL_695;
      case 0x68:
      case 0xAB:
        v9 = a1;
        goto LABEL_752;
      case 0x69:

        return;
      case 0x6A:

        return;
      case 0x6B:
      case 0x6E:
      case 0x6F:
      case 0x72:
      case 0x73:
      case 0x79:
      case 0x7C:
      case 0x121:
        *a1 = 0;
        goto LABEL_7;
      case 0x6C:

        return;
      case 0x6D:
        v9 = a1;
        swift::Demangle::__runtime::RemanglerBuffer::operator<<(this + 1591, *a3);
        goto LABEL_752;
      case 0x70:

        return;
      case 0x71:

        return;
      case 0x74:

        return;
      case 0x75:

        return;
      case 0x76:

        return;
      case 0x77:

        return;
      case 0x78:

        return;
      case 0x7A:

        return;
      case 0x7B:

        return;
      case 0x7D:

        return;
      case 0x7E:

        return;
      case 0x7F:

        return;
      case 0x80:

        return;
      case 0x81:
        v10 = a3[1];
        v11 = *a3;
        v12 = 3;
        goto LABEL_695;
      case 0x82:

        return;
      case 0x83:

        return;
      case 0x84:

        return;
      case 0x85:

        return;
      case 0x86:

        return;
      case 0x87:
        v7 = this[1593];
        v8 = "YA";
        goto LABEL_750;
      case 0x88:
        v7 = this[1593];
        v8 = "YC";
        goto LABEL_750;
      case 0x89:
        v7 = this[1593];
        v8 = "YT";
        goto LABEL_750;
      case 0x8A:

        return;
      case 0x8B:

        return;
      case 0x8C:

        return;
      case 0x8D:

        return;
      case 0x8E:

        return;
      case 0x8F:

        return;
      case 0x90:

        return;
      case 0x91:

        return;
      case 0x92:

        return;
      case 0x93:

        return;
      case 0x94:
        *a1 = 7;
        a1[1] = a3;
        v5 = 1139;
        goto LABEL_3;
      case 0x95:

        return;
      case 0x96:

        return;
      case 0x97:

        return;
      case 0x98:

        return;
      case 0x99:
        v7 = this[1593];
        v8 = "Tm";
        goto LABEL_750;
      case 0x9A:

        return;
      case 0x9B:

        return;
      case 0x9C:

        return;
      case 0x9D:
        v7 = this[1593];
        v8 = "<method-lookup-function>";
        goto LABEL_651;
      case 0x9E:
        v7 = this[1593];
        v8 = "<objc-metadata-update-function>";
        v13 = this + 1591;
        v14 = 31;
        goto LABEL_751;
      case 0x9F:
        v7 = this[1593];
        v8 = "<objc-resilient-class-stub>";
        goto LABEL_329;
      case 0xA0:
        v7 = this[1593];
        v8 = "<full-objc-resilient-class-stub>";
        v13 = this + 1591;
        v14 = 32;
        goto LABEL_751;
      case 0xA1:

        return;
      case 0xA2:

        return;
      case 0xA3:
        v16[0] = 0;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        return;
      case 0xA4:

        return;
      case 0xA5:

        return;
      case 0xA6:

        return;
      case 0xA7:

        return;
      case 0xA8:

        return;
      case 0xA9:

        return;
      case 0xAA:
        v7 = this[1593];
        v8 = "TO";
        goto LABEL_750;
      case 0xAC:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2997;
        goto LABEL_3;
      case 0xAD:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2993;
        goto LABEL_3;
      case 0xAE:
        v7 = this[1593];
        v8 = "To";
        goto LABEL_750;
      case 0xAF:

        return;
      case 0xB0:
        v7 = this[1593];
        v8 = "<escaping block type>";
        goto LABEL_591;
      case 0xB1:

        goto LABEL_20;
      case 0xB2:

        return;
      case 0xB3:

        return;
      case 0xB4:

        return;
      case 0xB5:

        return;
      case 0xB6:

        return;
      case 0xB7:
        v10 = a3[1];
        v11 = *a3;
        v12 = 2;
        goto LABEL_695;
      case 0xB8:

        return;
      case 0xB9:
        v10 = a3[1];
        v11 = *a3;
        v12 = 1;
LABEL_695:

        return;
      case 0xBA:

        return;
      case 0xBB:
        *a1 = 7;
        a1[1] = a3;
        v5 = 679;
        goto LABEL_3;
      case 0xBC:

        return;
      case 0xBD:

        return;
      case 0xBE:

        return;
      case 0xBF:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2892;
        goto LABEL_3;
      case 0xC0:

        return;
      case 0xC1:
        *a1 = 7;
        a1[1] = a3;
        v5 = 497;
        goto LABEL_3;
      case 0xC2:
        *a1 = 7;
        a1[1] = a3;
        v5 = 504;
        goto LABEL_3;
      case 0xC3:
        *a1 = 7;
        a1[1] = a3;
        v5 = 511;
        goto LABEL_3;
      case 0xC4:

        return;
      case 0xC5:

        return;
      case 0xC6:

        return;
      case 0xC7:

        return;
      case 0xC8:

        return;
      case 0xC9:

        return;
      case 0xCA:

        return;
      case 0xCB:

        return;
      case 0xCC:

        return;
      case 0xCD:

        return;
      case 0xCE:

        return;
      case 0xCF:

        return;
      case 0xD0:

        return;
      case 0xD1:
        *a1 = 7;
        a1[1] = a3;
        v5 = 714;
        goto LABEL_3;
      case 0xD2:
        v7 = this[1593];
        v8 = "<reabstraction-thunk>";
LABEL_591:
        v13 = this + 1591;
        v14 = 21;
        goto LABEL_751;
      case 0xD3:
        v7 = this[1593];
        v8 = "<reabstraction-thunk-helper>";
        goto LABEL_586;
      case 0xD4:
        v7 = this[1593];
        v8 = "<reabstraction-thunk-helper-with-self>";
        v13 = this + 1591;
        v14 = 38;
        goto LABEL_751;
      case 0xD5:
        v7 = this[1593];
        v8 = "<reabstraction-thunk-helper-with-global-actor>";
        goto LABEL_664;
      case 0xD6:

        return;
      case 0xD7:

        return;
      case 0xD8:

        return;
      case 0xD9:
        *a1 = 7;
        a1[1] = a3;
        v5 = 490;
        goto LABEL_3;
      case 0xDB:

        return;
      case 0xDC:

        return;
      case 0xDD:

        return;
      case 0xDE:

        return;
      case 0xDF:

        return;
      case 0xE0:

        return;
      case 0xE1:

        return;
      case 0xE2:

        return;
      case 0xE3:
        *a1 = 7;
        a1[1] = a3;
        v5 = 441;
        goto LABEL_3;
      case 0xE4:
        v7 = this[1593];
        v8 = "q";
        goto LABEL_471;
      case 0xE5:

        return;
      case 0xE6:

        goto LABEL_20;
      case 0xE7:

        return;
      case 0xE8:
        v14 = a3[1];
        v7 = this[1593];
        v13 = this + 1591;
        v8 = *a3;
        goto LABEL_751;
      case 0xE9:

        return;
      case 0xEA:

        return;
      case 0xEB:
        v15 = a4 + 1;

        return;
      case 0xED:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2035;
        goto LABEL_3;
      case 0xEE:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2039;
        goto LABEL_3;
      case 0xEF:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2043;
        goto LABEL_3;
      case 0xF0:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2047;
        goto LABEL_3;
      case 0xF1:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2051;
        goto LABEL_3;
      case 0xF2:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2055;
        goto LABEL_3;
      case 0xF4:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2886;
        goto LABEL_3;
      case 0xF5:

LABEL_20:
        return;
      case 0xF6:

        return;
      case 0xF7:

        return;
      case 0xF8:

        return;
      case 0xF9:

        return;
      case 0xFA:

        return;
      case 0xFB:

        return;
      case 0xFC:

        return;
      case 0xFD:

        return;
      case 0xFE:
        *a1 = 7;
        a1[1] = a3;
        v5 = 639;
        goto LABEL_3;
      case 0xFF:
        *a1 = 7;
        a1[1] = a3;
        v5 = 645;
        goto LABEL_3;
      case 0x100:

        return;
      case 0x101:

        return;
      case 0x102:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2335;
        goto LABEL_3;
      case 0x103:

        return;
      case 0x104:

        return;
      case 0x105:

        return;
      case 0x106:

        return;
      case 0x107:

        return;
      case 0x108:

        return;
      case 0x109:

        return;
      case 0x10A:

        return;
      case 0x10B:

        return;
      case 0x10C:
        v7 = this[1593];
        v8 = "TV";
        goto LABEL_750;
      case 0x10D:

        return;
      case 0x10E:
        v7 = this[1593];
        v8 = "MRb";
        goto LABEL_608;
      case 0x10F:
        v7 = this[1593];
        v8 = "MRf";
        goto LABEL_608;
      case 0x110:
        v7 = this[1593];
        v8 = "MRa";
        goto LABEL_608;
      case 0x111:
        v7 = this[1593];
        v8 = "MRc";
        goto LABEL_608;
      case 0x112:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2567;
        goto LABEL_3;
      case 0x113:
        v7 = this[1593];
        v8 = "<curry-thunk>";
        v13 = this + 1591;
        v14 = 13;
        goto LABEL_751;
      case 0x114:
        v7 = this[1593];
        v8 = "<sil-identity-thunk>";
        v13 = this + 1591;
        v14 = 20;
        goto LABEL_751;
      case 0x115:
        v7 = this[1593];
        v8 = "<dispatch-thunk>";
        v13 = this + 1591;
        v14 = 16;
        goto LABEL_751;
      case 0x116:
        v7 = this[1593];
        v8 = "<method-descriptor>";
        goto LABEL_499;
      case 0x117:
        v7 = this[1593];
        v8 = "<protocol-requirements-base-descriptor>";
        v13 = this + 1591;
        v14 = 39;
        goto LABEL_751;
      case 0x118:
        v7 = this[1593];
        v8 = "<associated-conformance-descriptor>";
        v13 = this + 1591;
        v14 = 35;
        goto LABEL_751;
      case 0x119:
        v7 = this[1593];
        v8 = "<default-associated-conformance-descriptor>";
LABEL_201:
        v13 = this + 1591;
        v14 = 43;
        goto LABEL_751;
      case 0x11A:
        v7 = this[1593];
        v8 = "<base-conformance-descriptor>";
LABEL_724:
        v13 = this + 1591;
        v14 = 29;
        goto LABEL_751;
      case 0x11B:
        v7 = this[1593];
        v8 = "<associated-type-descriptor>";
LABEL_586:
        v13 = this + 1591;
        v14 = 28;
        goto LABEL_751;
      case 0x11C:
        v7 = this[1593];
        v8 = "Z";
        goto LABEL_471;
      case 0x11D:
      case 0x11E:
        v7 = this[1593];
        v8 = "z";
        goto LABEL_471;
      case 0x11F:
        v7 = this[1593];
        v8 = "<empty>";
        goto LABEL_490;
      case 0x120:
        v7 = this[1593];
        v8 = "<first>";
LABEL_490:
        v13 = this + 1591;
        v14 = 7;
        goto LABEL_751;
      case 0x122:

        return;
      case 0x123:

        return;
      case 0x124:

        return;
      case 0x125:

        return;
      case 0x126:

        return;
      case 0x127:

        return;
      case 0x128:

        return;
      case 0x129:

        return;
      case 0x12A:

        return;
      case 0x12B:

        return;
      case 0x12C:

        return;
      case 0x12D:

        return;
      case 0x12E:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2863;
        goto LABEL_3;
      case 0x12F:

        return;
      case 0x130:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2867;
        goto LABEL_3;
      case 0x131:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2871;
        goto LABEL_3;
      case 0x132:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2875;
        goto LABEL_3;
      case 0x133:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2880;
        goto LABEL_3;
      case 0x134:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2902;
        goto LABEL_3;
      case 0x135:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2906;
        goto LABEL_3;
      case 0x136:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2914;
        goto LABEL_3;
      case 0x137:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2910;
        goto LABEL_3;
      case 0x138:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2918;
        goto LABEL_3;
      case 0x139:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2972;
        goto LABEL_3;
      case 0x13A:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2944;
        goto LABEL_3;
      case 0x13B:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2898;
        goto LABEL_3;
      case 0x13C:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2948;
        goto LABEL_3;
      case 0x13D:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2952;
        goto LABEL_3;
      case 0x13E:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2956;
        goto LABEL_3;
      case 0x13F:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2960;
        goto LABEL_3;
      case 0x140:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2964;
        goto LABEL_3;
      case 0x141:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2968;
        goto LABEL_3;
      case 0x142:

        return;
      case 0x143:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2941;
        goto LABEL_3;
      case 0x144:

        return;
      case 0x145:

        return;
      case 0x146:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2976;
        goto LABEL_3;
      case 0x147:

        return;
      case 0x148:

        return;
      case 0x149:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2984;
        goto LABEL_3;
      case 0x14A:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2980;
        goto LABEL_3;
      case 0x14B:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2988;
        goto LABEL_3;
      case 0x14C:

        return;
      case 0x14D:
        v7 = this[1593];
        v8 = "Tu";
        goto LABEL_750;
      case 0x14E:
        v7 = this[1593];
        v8 = "<autodiff-function>";
LABEL_499:
        v13 = this + 1591;
        v14 = 19;
        goto LABEL_751;
      case 0x14F:
        v7 = this[1593];
        v8 = "<autodiff-function-kind>";
LABEL_651:
        v13 = this + 1591;
        v14 = 24;
        goto LABEL_751;
      case 0x150:
        v7 = this[1593];
        v8 = "<autodiff-self-reordering-reabstraction-thunk>";
LABEL_664:
        v13 = this + 1591;
        v14 = 46;
        goto LABEL_751;
      case 0x151:
        v7 = this[1593];
        v8 = "<autodiff-subset-parameters-thunk>";
        goto LABEL_319;
      case 0x152:
        v7 = this[1593];
        v8 = "<autodiff-derivative-vtable-thunk>";
LABEL_319:
        v13 = this + 1591;
        v14 = 34;
        goto LABEL_751;
      case 0x153:
        v7 = this[1593];
        v8 = "<differentiability-witness>";
LABEL_329:
        v13 = this + 1591;
        v14 = 27;
        goto LABEL_751;
      case 0x154:

        return;
      case 0x155:
        v7 = this[1593];
        v8 = "<index-subset>";
        v13 = this + 1591;
        v14 = 14;
        goto LABEL_751;
      case 0x156:
        *a1 = 7;
        a1[1] = a3;
        v5 = 794;
        goto LABEL_3;
      case 0x157:
        *a1 = 7;
        a1[1] = a3;
        v5 = 798;
        goto LABEL_3;
      case 0x158:
        v7 = this[1593];
        v8 = "HF";
LABEL_750:
        v13 = this + 1591;
        v14 = 2;
        goto LABEL_751;
      case 0x159:

        return;
      case 0x15A:
        v7 = this[1593];
        v8 = "Twb";
        goto LABEL_608;
      case 0x15B:
        v7 = this[1593];
        v8 = "TwB";
        goto LABEL_608;
      case 0x15C:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3017;
        goto LABEL_3;
      case 0x15D:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3013;
        goto LABEL_3;
      case 0x15E:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3026;
        goto LABEL_3;
      case 0x15F:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3031;
        goto LABEL_3;
      case 0x160:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3021;
        goto LABEL_3;
      case 0x161:

        return;
      case 0x162:
        v7 = this[1593];
        v8 = "TwS";
        goto LABEL_608;
      case 0x163:
      case 0x164:
        *a1 = 11;
LABEL_7:
        a1[1] = 0;
        *(a1 + 4) = 0;
        return;
      case 0x165:

        return;
      case 0x166:

        return;
      case 0x167:

        return;
      case 0x168:
        v7 = this[1593];
        v8 = "a";
LABEL_471:
        v13 = this + 1591;
        v14 = 1;
        goto LABEL_751;
      case 0x169:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3036;
        goto LABEL_3;
      case 0x16A:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2684;
        goto LABEL_3;
      case 0x16B:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2689;
        goto LABEL_3;
      case 0x16C:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2694;
        goto LABEL_3;
      case 0x16D:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2699;
        goto LABEL_3;
      case 0x16E:
        *a1 = 7;
        a1[1] = a3;
        v5 = 2703;
        goto LABEL_3;
      case 0x16F:

        return;
      case 0x170:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3150;
        goto LABEL_3;
      case 0x171:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3154;
        goto LABEL_3;
      case 0x172:
        *a1 = 7;
        a1[1] = a3;
        v5 = 3159;
        goto LABEL_3;
      case 0x173:
        v7 = this[1593];
        v8 = "Twc";
        goto LABEL_608;
      case 0x174:
        v7 = this[1593];
        v8 = "Twd";
LABEL_608:
        v13 = this + 1591;
        v14 = 3;
LABEL_751:
        v9 = a1;
        swift::Demangle::__runtime::CharVector::append(v13, v8, v14, v7);
LABEL_752:
        *v9 = 0;
        v9[1] = 0;
        *(v9 + 4) = 0;
        break;
      case 0x175:

        break;
      default:
        *a1 = 4;
        a1[1] = a3;
        v5 = 83;
        goto LABEL_3;
    }
  }

  else
  {
    *a1 = 3;
    a1[1] = a3;
    v5 = 74;
LABEL_3:
    *(a1 + 4) = v5;
  }
}

void swift::Demangle::__runtime::mangleNodeOld(swift::Demangle::__runtime *this, swift::Demangle::__runtime::Node *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this, a2);
  v5 = v4;
  if (!v2)
  {
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    return;
  }

  v6 = v3;
  v7 = v2;
  memset(&v22[12312], 0, 17);
  v23 = 0u;
  v24 = 0;
  v26 = 0;
  v25 = 0u;
  v27 = 0u;
  v28 = 0;
  v30 = 0;
  v29 = 0u;
  v32 = 0;
  v31 = 0u;
  v34 = 0;
  v33 = 0u;
  v35 = 0u;
  v36 = 0;
  v38 = 0;
  v37 = 0u;
  v39 = 0u;
  v40 = 0;
  v42 = 0;
  v41 = 0u;
  v43 = 0u;
  v44 = 0;
  v46 = 0;
  v45 = 0u;
  v47 = 0u;
  v48 = 0;
  v50 = 0;
  v49 = 0u;
  v51 = 0u;
  v52 = 0u;
  v21 = v3;
  v53 = 0;
  bzero(v22, 0x3011uLL);
  v54 = 1065353216;
  v57 = v6;
  v9 = *(v6 + 1);
  if (!v9 || (v9 + 4) > *(v6 + 2))
  {
    v10 = 2 * *(v6 + 4);
    if (v10 <= 0x21)
    {
      v10 = 33;
    }

    *(v6 + 4) = v10;
    v11 = v10 + 8;
    v12 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
    *v12 = *(v6 + 3);
    v9 = v12 + 1;
    *(v6 + 2) = v12 + v11;
    *(v6 + 3) = v12;
  }

  *(v6 + 1) = v9 + 4;
  v55 = v9;
  v56 = 0x2000000000;
  if (v19)
  {
    *v5 = v19;
    v13 = v20;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = v13;
    v14 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = v55;
    v18 = v56;
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = v17;
    *(v5 + 32) = v18;
    v14 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
      do
      {
LABEL_9:
        v15 = *v14;
        operator delete(v14);
        v14 = v15;
      }

      while (v15);
    }
  }

  v16 = *(&v51 + 1);
  *(&v51 + 1) = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

void swift::Demangle::__runtime::mangleNodeAsObjcCString(swift::Demangle::__runtime *this, swift::Demangle::__runtime::Node *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this, a2);
  v5 = v4;
  if (!v2)
  {
    *v4 = 1;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3107;
    return;
  }

  v6 = v3;
  v7 = v2;
  memset(&v20[12312], 0, 17);
  v21 = 0u;
  v22 = 0;
  v24 = 0;
  v23 = 0u;
  v25 = 0u;
  v26 = 0;
  v28 = 0;
  v27 = 0u;
  v30 = 0;
  v29 = 0u;
  v32 = 0;
  v31 = 0u;
  v33 = 0u;
  v34 = 0;
  v36 = 0;
  v35 = 0u;
  v37 = 0u;
  v38 = 0;
  v40 = 0;
  v39 = 0u;
  v41 = 0u;
  v42 = 0;
  v44 = 0;
  v43 = 0u;
  v45 = 0u;
  v46 = 0;
  v48 = 0;
  v47 = 0u;
  v49 = 0u;
  v50 = 0u;
  v19 = v3;
  v51 = 0;
  bzero(v20, 0x3011uLL);
  v52 = 1065353216;
  v54 = v6;
  v8 = *(v6 + 1);
  if (!v8 || (v8 + 32) > *(v6 + 2))
  {
    v9 = 2 * *(v6 + 4);
    if (v9 <= 0x21)
    {
      v9 = 33;
    }

    *(v6 + 4) = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    *v11 = *(v6 + 3);
    v8 = (v11 + 1);
    *(v6 + 2) = v11 + v10;
    *(v6 + 3) = v11;
  }

  *(v6 + 1) = v8 + 32;
  v53[0] = v8;
  v53[1] = 0x2000000000;
  swift::Demangle::__runtime::CharVector::append(v53, "_Tt", 3uLL, v6);
  if (v17)
  {
    *v5 = v17;
    *(v5 + 16) = v18;
    v13 = *(&v50 + 1);
    if (*(&v50 + 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift::Demangle::__runtime::CharVector::append(v53, "_", 2uLL, v54);
    v16 = v53[0];
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = v16;
    v13 = *(&v50 + 1);
    if (*(&v50 + 1))
    {
      do
      {
LABEL_9:
        v14 = *v13;
        operator delete(v13);
        v13 = v14;
      }

      while (v14);
    }
  }

  v15 = *(&v49 + 1);
  *(&v49 + 1) = 0;
  if (v15)
  {
    operator delete(v15);
  }
}

void anonymous namespace::Remangler::mangleAllocator(_anonymous_namespace_::Remangler *this@<X0>, uint64_t **a2@<X1>, int a3@<W2>, int a4@<W7>, uint64_t a5@<X8>)
{
  v5[0] = 0;
  v7 = 0;
  v8 = 0;
  __p = 0;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleAnonymousContext(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X2>, int a4@<W7>, uint64_t a5@<X8>)
{
  v5[0] = 0;
  v7 = 0;
  v8 = 0;
  __p = 0;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleAssociatedType(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      goto LABEL_10;
    }

    if (v5 == 5)
    {
      v6 = *(a2 + 2);
      if (v6)
      {
        if (v6 == 1)
        {
          a2 = *a2;
          goto LABEL_7;
        }

LABEL_10:
        *a4 = 1;
        *(a4 + 8) = a2;
        *(a4 + 16) = 2181;
        return;
      }
    }

    v9 = *(this + 12736);
    v10 = *(this + 12740);
    v11 = *(this + 12728);
    if (v9 < v10)
    {
LABEL_30:
      *(this + 12736) = v9 + 1;
      v11[v9] = 95;
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    v12 = *(this + 12744);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_29:
        *(this + 12740) = v10 + v15;
        goto LABEL_30;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      v20 = this;
      v21 = a4;
      v22 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      a4 = v21;
      v23 = v22;
      this = v20;
      v24 = v23 + v19;
      *v23 = v12[3];
      v11 = v23 + 1;
      v12[2] = v24;
      v12[3] = v23;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      v25 = this;
      v26 = v10;
      v27 = a4;
      memcpy(v11, *(this + 12728), v26);
      this = v25;
      a4 = v27;
    }

    *(this + 12728) = v11;
    LODWORD(v10) = *(this + 12740);
    v9 = *(this + 12736);
    goto LABEL_29;
  }

LABEL_7:
  v7 = *a2;
  v8 = a3 + 1;
}

uint64_t anonymous namespace::Remangler::mangleAssociatedTypeRef@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v41 = 0uLL;
  v42 = 0;
  if (result)
  {
    goto LABEL_41;
  }

  swift::Demangle::__runtime::RemanglerBase::entryForNode(&v43, this, a2, 0);
  v41 = v43;
  v42 = v44;
  result = swift::Demangle::__runtime::RemanglerBase::findSubstitution(this, &v41);
  v9 = *(this + 1593);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(this + 3184);
    v11 = *(this + 3185);
    v12 = *(this + 1591);
    if (v10 < v11)
    {
      goto LABEL_22;
    }

    v13 = v9[1];
    if (&v12[v11] == v13)
    {
      v14 = v9[2];
      if ((v13 + 1) <= v14)
      {
        v9[1] = v13 + 1;
        LODWORD(v18) = 1;
LABEL_21:
        *(this + 3185) = v11 + v18;
LABEL_22:
        *(this + 3184) = v10 + 1;
        v12[v10] = 83;
        if (result)
        {
          result = swift::Demangle::__runtime::CharVector::append(this + 3182, result - 1, *(this + 1593));
        }

        v28 = *(this + 3184);
        v29 = *(this + 3185);
        v30 = *(this + 1591);
        if (v28 < v29)
        {
          goto LABEL_40;
        }

        v31 = *(this + 1593);
        v32 = v31[1];
        if (&v30[v29] == v32)
        {
          v33 = v31[2];
          if ((v32 + 1) <= v33)
          {
            v31[1] = v32 + 1;
            LODWORD(v34) = 1;
LABEL_39:
            *(this + 3185) = v29 + v34;
LABEL_40:
            *(this + 3184) = v28 + 1;
            v30[v28] = 95;
LABEL_41:
            *a4 = 0;
            *(a4 + 8) = 0;
            v39 = (a4 + 16);
            goto LABEL_42;
          }
        }

        else
        {
          v33 = v31[2];
        }

        if ((2 * v29) <= 4)
        {
          v34 = 4;
        }

        else
        {
          v34 = (2 * v29);
        }

        v35 = v34 + v29;
        if (!v32 || &v32[v35] > v33)
        {
          v36 = 2 * v31[4];
          if (v36 <= v35 + 1)
          {
            v36 = v35 + 1;
          }

          v31[4] = v36;
          v37 = v36 + 8;
          result = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
          v38 = result + v37;
          *result = v31[3];
          v32 = (result + 8);
          v31[2] = v38;
          v31[3] = result;
        }

        v31[1] = &v32[v35];
        if (v29)
        {
          result = memcpy(v32, *(this + 1591), v29);
        }

        *(this + 1591) = v32;
        LODWORD(v29) = *(this + 3185);
        v30 = v32;
        v28 = *(this + 3184);
        goto LABEL_39;
      }
    }

    else
    {
      v14 = v9[2];
    }

    if ((2 * v11) <= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = (2 * v11);
    }

    v19 = v18 + v11;
    if (!v13 || &v13[v19] > v14)
    {
      v20 = 2 * v9[4];
      if (v20 <= v19 + 1)
      {
        v20 = v19 + 1;
      }

      v9[4] = v20;
      v21 = v20 + 8;
      v22 = result;
      v23 = v9;
      v24 = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v9 = v23;
      v25 = v24;
      result = v22;
      v26 = v25 + v21;
      *v25 = v23[3];
      v13 = (v25 + 1);
      v23[2] = v26;
      v23[3] = v25;
    }

    v9[1] = &v13[v19];
    if (v11)
    {
      v27 = result;
      memcpy(v13, *(this + 1591), v11);
      result = v27;
    }

    *(this + 1591) = v13;
    LODWORD(v11) = *(this + 3185);
    v12 = v13;
    v10 = *(this + 3184);
    goto LABEL_21;
  }

  swift::Demangle::__runtime::CharVector::append(this + 1591, "Q", 1uLL, v9);
  v15 = *(a2 + 18);
  v16 = a2;
  if ((v15 - 1) >= 2)
  {
    if (v15 == 5)
    {
      v17 = *a2;
      v16 = *a2;
LABEL_49:
      v40 = (v17 + 8 * *(a2 + 2));
      goto LABEL_55;
    }

    v16 = 0;
  }

  switch(v15)
  {
    case 1:
      v40 = (a2 + 8);
      goto LABEL_55;
    case 2:
      v40 = (a2 + 16);
      goto LABEL_55;
    case 5:
      v17 = *a2;
      goto LABEL_49;
  }

  v40 = 0;
LABEL_55:
  while (v16 != v40)
  {
    if (*a4)
    {
      return result;
    }

    ++v16;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v39 = (a4 + 16);
  result = swift::Demangle::__runtime::RemanglerBase::addSubstitution(this, &v41);
  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_42:
  *v39 = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleAssociatedTypeMetadataAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wt", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}