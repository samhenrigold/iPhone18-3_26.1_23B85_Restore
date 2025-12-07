void ice::registerClientSniffer(uint64_t a1, void *a2)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 8))
    {
      return;
    }
  }

  else if (!*(a1 + 23))
  {
    return;
  }

  if (*a2)
  {
    v4 = qword_2A18CB5F8;
    if (!qword_2A18CB5F8)
    {
      goto LABEL_15;
    }

    v5 = &qword_2A18CB5F8;
    while (1)
    {
      while (1)
      {
        v6 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_15;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v6 + 32), a1) & 0x80) == 0)
      {
        break;
      }

      v5 = (v6 + 8);
      v4 = *(v6 + 8);
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    if (!*v5)
    {
LABEL_15:
      operator new();
    }
  }
}

void sub_297986954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ice::ClientSnifferDelegateBase>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ice::ClientSnifferDelegateBase>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *anonymous namespace::sGetMutex(_anonymous_namespace_ *this)
{
  {
    unk_2A18CB5B8 = 0u;
    unk_2A18CB5C8 = 0u;
    unk_2A18CB5D8 = 0u;
    qword_2A18CB5E8 = 0;
  }
}

uint64_t *anonymous namespace::sGetClientSniffers(_anonymous_namespace_ *this)
{
  {
    qword_2A18CB600 = 0;
    qword_2A18CB5F8 = 0;
  }
}

void ice::deregisterClientSniffer(_anonymous_namespace_ *a1)
{
  v4 = v3;
  if (v3 != &qword_2A18CB5F8)
  {
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    {
    }

    --qword_2A18CB600;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(qword_2A18CB5F8, v3);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ice::ClientSnifferDelegateBase>>,0>((v4 + 4));
    operator delete(v4);
  }
}

void ice::notifySnifferClientRegistered(_anonymous_namespace_ *a1)
{
  if (v3 != &qword_2A18CB5F8)
  {
    (*(**(v3 + 7) + 16))(*(v3 + 7));
  }
}

void ice::notifySnifferClientDeregistered(_anonymous_namespace_ *a1)
{
  if (v3 != &qword_2A18CB5F8)
  {
    (*(**(v3 + 7) + 24))(*(v3 + 7));
  }
}

void ice::notifySnifferIndicationRegistered(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (v5 != &qword_2A18CB5F8)
  {
    (***(v5 + 7))(*(v5 + 7), a2);
  }
}

void ice::notifySnifferIndicationCanWake(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (v5 != &qword_2A18CB5F8)
  {
    (*(**(v5 + 7) + 8))(*(v5 + 7), a2);
  }
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ice::ClientSnifferDelegateBase>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ice::ClientSnifferDelegateBase>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ice::ClientSnifferDelegateBase>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t ***a1, char *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE81E90, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ice::ClientSnifferDelegateBase>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<ice::ClientSnifferDelegateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ice::ClientSnifferDelegateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ice::ClientSnifferDelegateBase>>>>::find<std::string>(uint64_t a1, char *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void sub_297987724(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

ice::ResponseContext *ice::ResponseContext::ResponseContext(ice::ResponseContext *this, char *a2, unsigned int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this, a2, &a2[a3], a3);
  *(this + 24) = 0;
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this, a2, &a2[a3], a3);
  *(this + 24) = 0;
  return this;
}

uint64_t ice::AutoSender::AutoSender(uint64_t a1, __int128 *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return ice::AutoSender::operator=(a1, a2);
}

{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return ice::AutoSender::operator=(a1, a2);
}

uint64_t ice::AutoSender::operator=(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    *a2 = 0uLL;
    v5 = *(a1 + 8);
    *a1 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = a2[1];
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    v7 = *(a1 + 24);
    *(a1 + 16) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v9 = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return a1;
}

void ice::AutoSender::~AutoSender(ice::AutoSender *this)
{
  v2 = *this;
  if (v2)
  {
    ice::detail::SendState::send(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

BOOL ice::detail::SendState::send(ice::detail::SendState *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = v4 != 0;
  if (v4)
  {
    v6 = *(this + 1);
    if (v6)
    {
      if (std::__shared_weak_count::lock(v6))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

void sub_297987AB4(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void ice::AutoSender::thenInternal(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  *a2 = 0uLL;
  v6 = *(v4 + 88);
  *(v4 + 80) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v8 = *(a1 + 24);
  *(a1 + 16) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(a2 + 3);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

uint64_t ice::AutoSender::then(uint64_t a1, __int128 *a2)
{
  ice::AutoSender::thenInternal(a1, a2);
  return a1;
}

{
  ice::AutoSender::thenInternal(a1, a2);
  return a1;
}

__n128 ice::detail::SendState::SendState(__n128 *a1, unint64_t *a2, __n128 *a3)
{
  *a1 = 0uLL;
  v3 = a2[1];
  a1[1].n128_u64[0] = *a2;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = *a3;
  a1[2] = *a3;
  *a3 = 0uLL;
  *(&a1[4] + 8) = 0uLL;
  a1[5].n128_u64[1] = 0;
  return result;
}

{
  *a1 = 0uLL;
  v3 = a2[1];
  a1[1].n128_u64[0] = *a2;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = *a3;
  a1[2] = *a3;
  *a3 = 0uLL;
  *(&a1[4] + 8) = 0uLL;
  a1[5].n128_u64[1] = 0;
  return result;
}

void ice::detail::SendState::operator()(uint64_t a1, char *a2, unsigned int a3)
{
  if (*(a1 + 72))
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    __p = 0;
    v8 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, a2, &a2[a3], a3);
    v4 = *(a1 + 72);
    LOBYTE(v10) = *(a1 + 80) == 0;
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v5 = (*(*v4 + 48))(v4, &__p);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    if (v5)
    {
      v6 = *(a1 + 80);
      if (v6)
      {
        ice::detail::SendState::send(v6);
      }
    }
  }
}

void sub_297987D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_297987D8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__shared_ptr_emplace<ice::AriMsgWrapper<void>::create(unsigned int)::make_shared_enabler,std::allocator<ice::AriMsgWrapper<void>::create(unsigned int)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5B1E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2772E0);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void ___ZN3ice6detail12wrapCallbackIZNS0_9SendState4sendEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, char *a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    ice::detail::SendState::operator()(*v3, a2, a3);
  }
}

uint64_t __copy_helper_block_e8_32c61_ZTSNSt3__110shared_ptrIZN3ice6detail9SendState4sendEvE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c61_ZTSNSt3__110shared_ptrIZN3ice6detail9SendState4sendEvE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<ice::detail::SendState::send(void)::$_0,std::allocator<ice::detail::SendState::send(void)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5B268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2772E0);
}

void std::__shared_ptr_emplace<ice::detail::SendState::send(void)::$_0,std::allocator<ice::detail::SendState::send(void)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::shared_ptr<ice::Client>::shared_ptr[abi:ne200100]<ice::Client,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

const char *ice::getMsgName(ice *this, unsigned int a2, unsigned int a3)
{
  v3 = Ari::MsgDefById((this >> 26));
  result = "Unknown";
  if (v3)
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      return v5;
    }
  }

  return result;
}

{
  v3 = Ari::MsgDefById(this);
  result = "Unknown";
  if (v3)
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      return v5;
    }
  }

  return result;
}

uint64_t ice::isARIResponseValid(ice *this, const ice::Client *a2, const AriMsg *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AriMsg::isValid(a2);
  if (result)
  {
    if (AriMsg::isValid(a2))
    {
      v7 = *(this + 5);
      result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v8 = 136315138;
        v9 = Ari::MsgNameById(a3);
        _os_log_impl(&dword_297986000, v7, OS_LOG_TYPE_DEFAULT, "#N Response %s is invalid", &v8, 0xCu);
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL ice::isARIResponseValid(ice *this, const AriSdk::MsgBase *a2)
{
  v2 = a2;
  GMID = AriSdk::MsgBase::getGMID(this);
  v4 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
  return v4 != 67600384 && v4 == v2;
}

void ice::Client::create(NSObject **a1, const std::string::value_type *a2)
{
  if (!*a1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "ice");
    v6 = std::string::append(&v18, ".", 1uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = a2[23];
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 1);
    }

    v11 = std::string::append(&v19, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v20, ".queue", 6uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v22 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v22 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = dispatch_queue_create(v15, 0);
    v17 = *a1;
    *a1 = v16;
    if (v17)
    {
      dispatch_release(v17);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  operator new();
}

void sub_297988458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void ice::Client::create(NSObject **a1, const char *a2)
{
  if (!*a1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "ice");
    v5 = std::string::append(&v15, ".", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = strlen(a2);
    v8 = std::string::append(&v16, a2, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v17, ".queue", 6uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v19 = v10->__r_.__value_.__r.__words[2];
    v18 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v19 >= 0)
    {
      v12 = &v18;
    }

    else
    {
      v12 = v18;
    }

    v13 = dispatch_queue_create(v12, 0);
    v14 = *a1;
    *a1 = v13;
    if (v14)
    {
      dispatch_release(v14);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  operator new();
}

void sub_2979887B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ice::Client::Client(uint64_t a1, NSObject **a2, char *a3)
{
  ctu::OsLogContext::OsLogContext(v8, "com.apple.ari.client", a3);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *a2;
  *(a1 + 24) = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C276FD0](a1 + 40, v9);
  MEMORY[0x29C276FE0](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E5B2B8;
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), a3);
  *(a1 + 72) = -1;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 104;
  *(a1 + 112) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1 + 128;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  return a1;
}

{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return ice::Client::Client(a1, a2, a3);
}

{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return ice::Client::Client(a1, a2, a3);
}

uint64_t ice::Client::getClientId(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a2 + 24);
  v5 = v2;
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v5);
}

void sub_297988B6C(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 24));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void ice::Client::start(ice::Client *this, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v6 = this + 72;
  v7 = *(this + 18);
  if (v7 != -1)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = (v7 >> 8) & 0x7F;
      _os_log_impl(&dword_297986000, v8, OS_LOG_TYPE_DEFAULT, "#I Already registered with ARI runtime as client %d", buf, 8u);
      v7 = *v6;
    }

    AriHost::ContinueTransactions(((v7 >> 8) & 0x7F));
    return;
  }

  v9 = (this + 48);
  v10 = *(this + 71);
  v11 = (this + 48);
  if (v10 < 0)
  {
    v11 = *v9;
  }

  v12 = AriHost::RegisterClient(v11, v6, *(this + 3), 0xFFFFFFFFLL);
  v13 = *(this + 5);
  if (v12)
  {
    v14 = v12;
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = asString();
      *&buf[12] = 1024;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_297986000, v13, OS_LOG_TYPE_ERROR, "Could not register ARI client: %s (%d)", buf, 0x12u);
    }

    return;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
  {
    v15 = (*v6 >> 8) & 0x7F;
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_impl(&dword_297986000, v13, OS_LOG_TYPE_DEFAULT, "#I Registered with ARI runtime as client %d", buf, 8u);
  }

  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(this + 6), *(this + 7));
  }

  else
  {
    *&v42.__r_.__value_.__l.__data_ = *v9;
    v42.__r_.__value_.__r.__words[2] = *(this + 8);
  }

  ice::notifySnifferClientRegistered(&v42);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v16 = *(this + 14);
  if (v16 != (this + 104))
  {
    while (1)
    {
      memset(buf, 170, 16);
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      *buf = *(v16 + 16);
      if (!v18)
      {
        break;
      }

      v19 = _Block_copy(v18);
      v20 = v19;
      *&buf[8] = v19;
      if (!v19)
      {
        v22 = 0;
LABEL_24:
        v23 = 0;
LABEL_25:
        v24 = 1;
        goto LABEL_26;
      }

      v21 = _Block_copy(v19);
      v22 = v21;
      if (!v21)
      {
        goto LABEL_24;
      }

      v23 = _Block_copy(v21);
      v24 = 0;
LABEL_26:
      v41 = v23;
      ice::Client::regEventHandlerInternal(this, v17, &v41);
      if (v23)
      {
        _Block_release(v23);
      }

      if ((v24 & 1) == 0)
      {
        _Block_release(v22);
      }

      if (v20)
      {
        _Block_release(v20);
      }

      v16 = *(v16 + 8);
      if (v16 == (this + 104))
      {
        goto LABEL_33;
      }
    }

    v20 = 0;
    v22 = 0;
    v23 = 0;
    *&buf[8] = 0;
    goto LABEL_25;
  }

LABEL_33:
  std::__list_imp<std::pair<ice::Client::Event,dispatch::block<int({block_pointer})(dispatch_group_s *)>>>::clear(this + 13);
  v25 = *(this + 17);
  if (v25 != (this + 128))
  {
    while (1)
    {
      memset(buf, 170, 16);
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      *buf = *(v25 + 16);
      if (!v27)
      {
        break;
      }

      v28 = _Block_copy(v27);
      v29 = v28;
      *&buf[8] = v28;
      if (!v28)
      {
        v31 = 0;
LABEL_40:
        v32 = 0;
LABEL_41:
        v33 = 1;
        goto LABEL_42;
      }

      v30 = _Block_copy(v28);
      v31 = v30;
      if (!v30)
      {
        goto LABEL_40;
      }

      v32 = _Block_copy(v30);
      v33 = 0;
LABEL_42:
      v40 = v32;
      ice::Client::regIndicationInternal(this, v26, &v40);
      if (v32)
      {
        _Block_release(v32);
      }

      if ((v33 & 1) == 0)
      {
        _Block_release(v31);
      }

      if (v29)
      {
        _Block_release(v29);
      }

      v25 = *(v25 + 8);
      if (v25 == (this + 128))
      {
        goto LABEL_49;
      }
    }

    v29 = 0;
    v31 = 0;
    v32 = 0;
    *&buf[8] = 0;
    goto LABEL_41;
  }

LABEL_49:
  std::__list_imp<std::pair<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>::clear(this + 16);
  v34 = *(this + 5);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = (*(this + 20) - *(this + 19)) >> 2;
    *buf = 134217984;
    *&buf[4] = v35;
    _os_log_impl(&dword_297986000, v34, OS_LOG_TYPE_DEFAULT, "#I Registering for %zu waking indications", buf, 0xCu);
  }

  v36 = *(this + 19);
  v37 = *(this + 20);
  if (v36 != v37)
  {
    do
    {
      ice::Client::setIndShouldWake(this, *v36++, 1);
    }

    while (v36 != v37);
    v36 = *(this + 19);
  }

  *(this + 20) = v36;
  std::shared_ptr<ice::Client>::shared_ptr[abi:ne200100]<ice::Client,0>(buf, this + 1);
  v38 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (AriHost::SetRTEventHandler())
  {
    v39 = *(this + 5);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297986000, v39, OS_LOG_TYPE_DEFAULT, "#N Could not register for AriHost::ARI_RT_ERROR runtime event handler", buf, 2u);
    }
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
    std::__shared_weak_count::__release_weak(v38);
  }
}

void sub_2979890A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(exception_object);
}

void ice::Client::regEventHandlerInternal(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = a2;
  v22 = *MEMORY[0x29EDCA608];
  if (*(a1 + 72) == -1)
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 > 3)
      {
        v17 = "???";
      }

      else
      {
        v17 = (&off_29EE81EC0)[v4];
      }

      buf = 136315138;
      *buf_4 = v17;
      _os_log_impl(&dword_297986000, v16, OS_LOG_TYPE_DEFAULT, "#I Client has not yet started, deferring %s event registration until it has", &buf, 0xCu);
    }

    operator new();
  }

  v6 = *(a1 + 40);
  if (a2 < 4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (&off_29EE81EC0)[v4];
      buf = 136315138;
      *buf_4 = v7;
      _os_log_impl(&dword_297986000, v6, OS_LOG_TYPE_DEFAULT, "#I Registering for event %s", &buf, 0xCu);
    }

    std::shared_ptr<ice::Client>::shared_ptr[abi:ne200100]<ice::Client,0>(&buf, (a1 + 8));
    v8 = *&buf_4[4];
    if (*&buf_4[4])
    {
      atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *a3;
    if (*a3)
    {
      v9 = _Block_copy(v9);
    }

    aBlock = v9;
    v10 = AriHost::SetRTEventHandler();
    v11 = *(a1 + 40);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        buf = 67109120;
        *buf_4 = v4;
        v13 = "#N Could not register for %u runtime event handler";
        v14 = v11;
        v15 = 8;
LABEL_21:
        _os_log_impl(&dword_297986000, v14, OS_LOG_TYPE_DEFAULT, v13, &buf, v15);
      }
    }

    else if (v12)
    {
      v18 = (&off_29EE81EC0)[v4];
      buf = 136315138;
      *buf_4 = v18;
      v13 = "#I Registered for %s successfully";
      v14 = v11;
      v15 = 12;
      goto LABEL_21;
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    return;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    buf = 136315138;
    *buf_4 = "???";
    _os_log_error_impl(&dword_297986000, v6, OS_LOG_TYPE_ERROR, "Unhandled event: %s", &buf, 0xCu);
  }
}

void sub_2979894CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ice::Client::regIndicationInternal(uint64_t a1, Ari *a2, void **a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v6 = a2 >> 26;
  v7 = (a2 >> 15) & 0x3FF;
  if (*(Ari::MsgDefById((a2 >> 26)) + 8) == 2)
  {
    if (*(a1 + 72) == -1)
    {
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = Ari::MsgNameById(a2);
        _os_log_impl(&dword_297986000, v17, OS_LOG_TYPE_DEFAULT, "#I Client has not yet started, deferring [%s] indication registration until it has", buf, 0xCu);
      }

      operator new();
    }

    std::shared_ptr<ice::Client>::shared_ptr[abi:ne200100]<ice::Client,0>(buf, (a1 + 8));
    v9 = *buf;
    v8 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v23 = MEMORY[0x29EDCA5F8];
    v24 = 1174405120;
    v25 = ___ZN3ice6Client21regIndicationInternalEjN8dispatch5blockIU13block_pointerFiPhjEEE_block_invoke;
    v26 = &__block_descriptor_tmp_6;
    v27 = a1;
    v28 = v9;
    v29 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = a2;
    v10 = *a3;
    if (*a3)
    {
      v10 = _Block_copy(v10);
    }

    aBlock = v10;
    v11 = AriHost::RegIndication();
    v12 = *(a1 + 40);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = Ari::MsgNameById(a2);
        *buf = 136315650;
        *&buf[4] = v14;
        *&buf[12] = 1024;
        *&buf[14] = v6;
        v33 = 1024;
        v34 = v7;
        _os_log_impl(&dword_297986000, v12, OS_LOG_TYPE_DEFAULT, "#N Could not register indication: %s (%u, 0x%x)", buf, 0x18u);
      }
    }

    else
    {
      if (v13)
      {
        v18 = Ari::MsgNameById(a2);
        *buf = 136315650;
        *&buf[4] = v18;
        *&buf[12] = 1024;
        *&buf[14] = v6;
        v33 = 1024;
        v34 = v7;
        _os_log_impl(&dword_297986000, v12, OS_LOG_TYPE_DEFAULT, "#I Successfully registered for indication: %s (%u, 0x%x)", buf, 0x18u);
      }

      v19 = *(a1 + 88);
      if (!v19)
      {
LABEL_25:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v20 = v19;
          v21 = *(v19 + 28);
          if (v21 <= a2)
          {
            break;
          }

          v19 = *v20;
          if (!*v20)
          {
            goto LABEL_25;
          }
        }

        if (v21 >= a2)
        {
          break;
        }

        v19 = v20[1];
        if (!v19)
        {
          goto LABEL_25;
        }
      }

      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        __p = *(a1 + 48);
      }

      ice::notifySnifferIndicationRegistered(&__p, a2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else
  {
    v15 = Ari::MsgNameById(a2);
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_297986000, v16, OS_LOG_TYPE_ERROR, "%s is not an indication, not registering it", buf, 0xCu);
    }
  }
}

void sub_29798990C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  _Unwind_Resume(exception_object);
}

BOOL ice::Client::setIndShouldWake(ice::Client *this, Ari *a2, uint64_t a3)
{
  v3 = a3;
  v35 = *MEMORY[0x29EDCA608];
  v6 = *(Ari::MsgDefById((a2 >> 26)) + 8);
  if (v6 == 2)
  {
    if (*(this + 18) != -1)
    {
      std::shared_ptr<ice::Client>::shared_ptr[abi:ne200100]<ice::Client,0>(&v27, this + 1);
      v28 = a2;
      v29 = this;
      v30 = 0;
      operator new();
    }

    v10 = Ari::MsgNameById(a2);
    v11 = *(this + 19);
    v12 = *(this + 20);
    if (v11 != v12)
    {
      while (*v11 != a2)
      {
        v11 += 4;
        if (v11 == v12)
        {
          v11 = *(this + 20);
          break;
        }
      }
    }

    if (v3)
    {
      if (v11 == v12)
      {
        v13 = *(this + 5);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v32 = v10;
          v33 = 1024;
          v34 = a2;
          _os_log_impl(&dword_297986000, v13, OS_LOG_TYPE_DEFAULT, "#I Client has not yet started, deferring indication %s (0x%x) from waking until it has", buf, 0x12u);
          v12 = *(this + 20);
        }

        v14 = *(this + 21);
        if (v12 >= v14)
        {
          v17 = *(this + 19);
          v18 = v12 - v17;
          v19 = (v12 - v17) >> 2;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v22);
          }

          v23 = (v12 - v17) >> 2;
          v24 = (4 * v19);
          v25 = (4 * v19 - 4 * v23);
          *v24 = a2;
          v15 = v24 + 1;
          memcpy(v25, v17, v18);
          v26 = *(this + 19);
          *(this + 19) = v25;
          *(this + 20) = v15;
          *(this + 21) = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v12 = a2;
          v15 = v12 + 4;
        }

        *(this + 20) = v15;
      }
    }

    else if (v11 != v12)
    {
      v16 = *(this + 5);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v32 = v10;
        v33 = 1024;
        v34 = a2;
        _os_log_impl(&dword_297986000, v16, OS_LOG_TYPE_DEFAULT, "#I Client has not yet started, removing previous wake request for %s (0x%x)", buf, 0x12u);
        v12 = *(this + 20);
      }

      if (v12 != v11 + 4)
      {
        memmove(v11, v11 + 4, v12 - (v11 + 4));
      }

      *(this + 20) = v12 - 4;
    }
  }

  else
  {
    v7 = Ari::MsgNameById(a2);
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = v7;
      _os_log_error_impl(&dword_297986000, v8, OS_LOG_TYPE_ERROR, "%s is not an indication, not registering it to wake AP", buf, 0xCu);
    }
  }

  return v6 == 2;
}

void sub_297989CD4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN3ice6Client5startEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (a1[5])
  {
    v6 = *(v3 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_297986000, v6, OS_LOG_TYPE_DEFAULT, "#I Got AriHost::ARI_RT re-init", v9, 2u);
    }

    AriHost::ReRegisterClient();
    v7 = 0;
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v7;
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrIN3ice6ClientEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrIN3ice6ClientEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ice::Client::~Client(ice::Client *this, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1E5B2B8;
  v4 = *(this + 18);
  if (v4 != -1)
  {
    v5 = *(this + 10);
    v6 = this + 88;
    if (v5 != this + 88)
    {
      do
      {
        AriHost::DeregIndication(*(v5 + 7));
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v5 + 2);
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }

      while (v8 != v6);
      v4 = *(this + 18);
    }

    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = (v4 >> 8) & 0x7F;
      _os_log_impl(&dword_297986000, v10, OS_LOG_TYPE_DEFAULT, "#I Deregistering client %d", buf, 8u);
      v4 = *(this + 18);
    }

    AriHost::DeregisterClient(v4);
    if (*(this + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 6), *(this + 7));
    }

    else
    {
      __p = *(this + 2);
    }

    ice::notifySnifferClientDeregistered(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(this + 19);
  if (v11)
  {
    *(this + 20) = v11;
    operator delete(v11);
  }

  std::__list_imp<std::pair<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>::clear(this + 16);
  std::__list_imp<std::pair<ice::Client::Event,dispatch::block<int({block_pointer})(dispatch_group_s *)>>>::clear(this + 13);
  std::__tree<unsigned int>::destroy(*(this + 11));
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  MEMORY[0x29C276FE0](this + 40);
  ctu::SharedSynchronizable<ice::Client>::~SharedSynchronizable(this + 1);
}

{
  ice::Client::~Client(this, a2, a3);

  JUMPOUT(0x29C2772E0);
}

void sub_297989FC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN3ice6Client21regIndicationInternalEjN8dispatch5blockIU13block_pointerFiPhjEEE_block_invoke(uint64_t a1, ctu *a2, unsigned int a3)
{
  *&v21[5] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (*(a1 + 40))
  {
    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(v7 + 72);
      ctu::to_rle(__p, a2, a3);
      if (v18 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 67109634;
      *v20 = (v13 >> 8) & 0x7F;
      *&v20[4] = 1024;
      *&v20[6] = a3;
      v21[0] = 2080;
      *&v21[1] = v14;
      _os_log_debug_impl(&dword_297986000, v10, OS_LOG_TYPE_DEBUG, "#D recv: ClientID:%d Length:%u [%s]", buf, 0x18u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = *(v7 + 40);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(v7 + 72);
      v16 = Ari::MsgNameById(*(a1 + 64));
      *buf = 134218242;
      *v20 = v15;
      *&v20[8] = 2080;
      *v21 = v16;
      _os_log_debug_impl(&dword_297986000, v10, OS_LOG_TYPE_DEBUG, "#D %lu: received %s", buf, 0x16u);
    }

    v11 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  return v11;
}

void *__copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrIN3ice6ClientEEE56c45_ZTSN8dispatch5blockIU13block_pointerFiPhjEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrIN3ice6ClientEEE56c45_ZTSN8dispatch5blockIU13block_pointerFiPhjEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

BOOL ice::Client::deregIndication(ice::Client *this, Ari *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  v4 = Ari::MsgNameById(a2);
  if (*(Ari::MsgDefById((a2 >> 26)) + 8) != 2)
  {
    v8 = *(this + 5);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v41 = 136315138;
    *&v41[4] = v4;
    v9 = "%s is not an indication, unable to deregister";
    goto LABEL_14;
  }

  if (*(this + 18) == -1)
  {
    v10 = (this + 128);
    v11 = *(this + 17);
    if (v11 != (this + 128))
    {
      v12 = *(this + 17);
      while (*(v12 + 16) != a2)
      {
        v12 = *(v12 + 8);
        if (v12 == v10)
        {
          goto LABEL_12;
        }
      }

      v26 = *(this + 5);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 136315138;
        *&v41[4] = v4;
        _os_log_impl(&dword_297986000, v26, OS_LOG_TYPE_DEFAULT, "#I Client has not yet started. Removing queued registration for [%s] indication", v41, 0xCu);
        v11 = *(this + 17);
      }

      *v41 = v41;
      *&v41[8] = v41;
      if (v11 != v10)
      {
        v27 = 0;
        v28 = *(v12 + 16);
        do
        {
          v29 = v11[3];
          v30 = v11[1];
          v31 = *(v11 + 4) == v28 && v29 == *(v12 + 24);
          if (v31)
          {
            if (v30 == v10)
            {
              v33 = 1;
            }

            else
            {
              do
              {
                v32 = *(v30 + 4) == v28 && v30[3] == v29;
                v33 = v32;
                if (!v32)
                {
                  break;
                }

                v30 = v30[1];
              }

              while (v30 != v10);
            }

            if (v11 != v30)
            {
              v34 = *v30;
              if (v41 != v10)
              {
                v35 = 1;
                if (v34 != v11)
                {
                  v36 = v11;
                  do
                  {
                    v36 = v36[1];
                    ++v35;
                  }

                  while (v36 != v34);
                }

                *(this + 18) -= v35;
                v27 += v35;
                *&v41[16] = v27;
              }

              v37 = v34[1];
              v38 = *v11;
              *(v38 + 8) = v37;
              *v37 = v38;
              v39 = *v41;
              *(*v41 + 8) = v11;
              *v11 = v39;
              *v41 = v34;
              v34[1] = v41;
            }

            if ((v33 & 1) == 0)
            {
              v30 = v30[1];
            }
          }

          v11 = v30;
        }

        while (v30 != v10);
      }

      std::__list_imp<std::pair<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>::clear(v41);
      return 1;
    }

LABEL_12:
    v8 = *(this + 5);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v41 = 136315138;
    *&v41[4] = v4;
    v9 = "Client has not yet started. Cannot deregister [%s] indication as there has been no attempt to register it.";
LABEL_14:
    _os_log_error_impl(&dword_297986000, v8, OS_LOG_TYPE_ERROR, v9, v41, 0xCu);
    return 0;
  }

  v5 = AriHost::DeregIndication(a2);
  v6 = *(this + 5);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (result)
    {
      *v41 = 136315650;
      *&v41[4] = v4;
      *&v41[12] = 1024;
      *&v41[14] = a2 >> 26;
      *&v41[18] = 1024;
      *&v41[20] = (a2 >> 15) & 0x3FF;
      _os_log_impl(&dword_297986000, v6, OS_LOG_TYPE_DEFAULT, "#I Successfully deregistered indication: %s (%u, 0x%x)", v41, 0x18u);
    }

    v14 = this + 88;
    v13 = *(this + 11);
    if (v13)
    {
      v15 = this + 88;
      v16 = *(this + 11);
      do
      {
        v17 = *(v16 + 7);
        v18 = v17 >= a2;
        v19 = v17 < a2;
        if (v18)
        {
          v15 = v16;
        }

        v16 = *&v16[8 * v19];
      }

      while (v16);
      if (v15 != v14 && *(v15 + 7) <= a2)
      {
        v20 = this + 88;
        v21 = *(this + 11);
        do
        {
          v22 = *(v21 + 7);
          v18 = v22 >= a2;
          v23 = v22 < a2;
          if (v18)
          {
            v20 = v21;
          }

          v21 = *&v21[8 * v23];
        }

        while (v21);
        if (v20 != v14 && *(v20 + 7) <= a2)
        {
          v24 = *(v20 + 1);
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            v40 = v20;
            do
            {
              v25 = *(v40 + 2);
              v31 = *v25 == v40;
              v40 = v25;
            }

            while (!v31);
          }

          if (*(this + 10) == v20)
          {
            *(this + 10) = v25;
          }

          --*(this + 12);
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v13, v20);
          operator delete(v20);
        }
      }
    }

    return 1;
  }

  if (result)
  {
    *v41 = 136315650;
    *&v41[4] = v4;
    *&v41[12] = 1024;
    *&v41[14] = a2 >> 26;
    *&v41[18] = 1024;
    *&v41[20] = (a2 >> 15) & 0x3FF;
    _os_log_impl(&dword_297986000, v6, OS_LOG_TYPE_DEFAULT, "#N Could not deregister indication: %s (%u, 0x%x)", v41, 0x18u);
    return 0;
  }

  return result;
}

const char *ice::asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return (&off_29EE81EC0)[a1];
  }
}

uint64_t ___ZN3ice6Client23regEventHandlerInternalENS0_5EventEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEE_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (*(a1 + 40))
  {
    v6 = *(v3 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 64);
      if (v7 > 3)
      {
        v8 = "???";
      }

      else
      {
        v8 = (&off_29EE81EC0)[v7];
      }

      v11 = 136315138;
      v12 = v8;
      _os_log_impl(&dword_297986000, v6, OS_LOG_TYPE_DEFAULT, "#I Got %s callback", &v11, 0xCu);
    }

    v9 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v9;
}

void *__copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrIN3ice6ClientEEE56c61_ZTSN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrIN3ice6ClientEEE56c61_ZTSN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ice::Client::getRegisteredIndications(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_29798AAD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ice::Client::stop(uint64_t this, group *a2)
{
  v2 = *(this + 72);
  if (v2 != -1)
  {
    return MEMORY[0x2A1C6C5B8]((v2 >> 8) & 0x7F, a2->gr_name);
  }

  return this;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void *ctu::SharedSynchronizable<ice::Client>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t std::pair<ice::Client::Event,dispatch::block<int({block_pointer})(dispatch_group_s *)>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t std::pair<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void std::__list_imp<std::pair<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          _Block_release(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<std::pair<ice::Client::Event,dispatch::block<int({block_pointer})(dispatch_group_s *)>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          _Block_release(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__value_func<void ()(std::set<unsigned int>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<ice::Client::create(dispatch::queue,std::string const&,std::shared_ptr<ctu::LogServer>)::make_shared_enabler,std::allocator<ice::Client::create(dispatch::queue,std::string const&,std::shared_ptr<ctu::LogServer>)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5B400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2772E0);
}

void ice::Client::create(dispatch::queue,std::string const&,std::shared_ptr<ctu::LogServer>)::make_shared_enabler::~make_shared_enabler(ice::Client *a1, uint64_t a2, int a3)
{
  ice::Client::~Client(a1, a2, a3);

  JUMPOUT(0x29C2772E0);
}

void std::__shared_ptr_emplace<ice::Client::create(dispatch::queue,char const*)::make_shared_enabler,std::allocator<ice::Client::create(dispatch::queue,char const*)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5B488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2772E0);
}

void ice::Client::create(dispatch::queue,char const*)::make_shared_enabler::~make_shared_enabler(ice::Client *a1, uint64_t a2, int a3)
{
  ice::Client::~Client(a1, a2, a3);

  JUMPOUT(0x29C2772E0);
}

void std::__tree<unsigned int>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned int>::destroy(*a1);
    std::__tree<unsigned int>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<std::promise<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5B510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2772E0);
}

void std::__shared_ptr_emplace<std::promise<int>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v9[0].__vftable = 0;
      v3 = *(v1 + 16);
      std::exception_ptr::~exception_ptr(v9);
      v1 = *(a1 + 24);
      if (!v3 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2771F0](v9, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v9);
        exception->__vftable = (MEMORY[0x29EDC9548] + 16);
        exception[1] = v9[1];
        std::exception_ptr::__from_native_exception_pointer(&v10, v6, v7);
        v8.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v10);
        MEMORY[0x29C277200](v9);
        v1 = *(a1 + 24);
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v1 + 16))(v1);
    }
  }
}

void std::__assoc_state<int>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x29C2772E0);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C2771F0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

uint64_t *std::__tree<unsigned int>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *std::__function::__func<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0,std::allocator<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0>,void ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2A1E5B5A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0,std::allocator<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0>,void ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2A1E5B5A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2772E0);
}

__n128 std::__function::__func<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0,std::allocator<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A1E5B5A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0,std::allocator<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0>,void ()(int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0,std::allocator<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0>,void ()(int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0,std::allocator<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = Ari::MsgNameById(*(a1 + 24));
  v5 = *(a1 + 8);
  if (v3)
  {
    v6 = *(v5 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(v11.__r_.__value_.__l.__data_) = 136315138;
    *(v11.__r_.__value_.__r.__words + 4) = v4;
    v7 = "#N Setting indication %s to wake AP failed";
    v8 = &v11;
    goto LABEL_11;
  }

  if (*(v5 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(v5 + 48), *(v5 + 56));
  }

  else
  {
    v11 = *(v5 + 48);
  }

  ice::notifySnifferIndicationCanWake(&v11, *(a1 + 24));
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v6 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = v4;
    v7 = "#I Successfully registered indication %s to wake AP";
    v8 = &v9;
LABEL_11:
    _os_log_impl(&dword_297986000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0xCu);
  }
}

uint64_t std::__function::__func<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0,std::allocator<ice::Client::setIndShouldWake(unsigned int,BOOL)::$_0>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<void ctu::SharedSynchronizable<ice::Client>::execute_wrapped<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0>(ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x29C2772E0](v2, 0x60C40A44E5E0CLL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ice::Client>::execute_wrapped<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0>(ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0,std::default_delete<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v3 = *(v2 + 80);
  if (v3 != v2 + 88)
  {
    operator new();
  }

  v4 = v1[4];
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v8);
  std::__tree<unsigned int>::destroy(v9[0]);
  std::unique_ptr<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0,std::default_delete<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0>>::~unique_ptr[abi:ne200100](&v7);
  return std::unique_ptr<void ctu::SharedSynchronizable<ice::Client>::execute_wrapped<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0>(ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&v6);
}

void sub_29798B9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<unsigned int>::destroy(a13);
  std::unique_ptr<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0,std::default_delete<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<ice::Client>::execute_wrapped<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0>(ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0,std::default_delete<ice::Client::getRegisteredIndications(std::function<void ()(std::set<unsigned int>)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(std::set<unsigned int>)>::~__value_func[abi:ne200100](v2 + 8);
    MEMORY[0x29C2772E0](v2, 0x1060C40C8AF3C64);
  }

  return a1;
}

uint64_t ice::SendProxy::SendProxy(uint64_t result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = *(*a2 + 72);
  *(result + 36) = 0;
  return result;
}

{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = *(*a2 + 72);
  *(result + 36) = 0;
  return result;
}

__n128 ice::SendProxy::SendProxy(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  a1->n128_u64[0] = a2->n128_u64[0];
  a1->n128_u64[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[1];
  a1[1] = result;
  a2[1].n128_u64[1] = 0;
  a1[2].n128_u32[0] = a2[2].n128_u32[0];
  a1[2].n128_u8[4] = a2[2].n128_u8[4];
  return result;
}

{
  v2 = a2->n128_u64[1];
  a1->n128_u64[0] = a2->n128_u64[0];
  a1->n128_u64[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[1];
  a1[1] = result;
  a2[1].n128_u64[1] = 0;
  a1[2].n128_u32[0] = a2[2].n128_u32[0];
  a1[2].n128_u8[4] = a2[2].n128_u8[4];
  return result;
}

void ice::SendProxy::~SendProxy(std::__shared_weak_count **this)
{
  ice::SendProxy::send(this);
  v2 = this[3];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ice::SendProxy::send(AriMsg **this)
{
  v62 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (*this)
  {
    if (*(this + 8) == -1)
    {
      v14 = *(v1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v51 = (v1 + 48);
        if (*(v1 + 71) < 0)
        {
          v51 = *v51;
        }

        *buf = 136315138;
        *&buf[4] = v51;
        _os_log_error_impl(&dword_297986000, v14, OS_LOG_TYPE_ERROR, "Client %s has not yet registered with ARI host runtime", buf, 0xCu);
      }

      Gmid = AriMsg::getGmid(this[2]);
      v17 = *this;
      v16 = this[1];
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
      }

      v18 = this[3];
      if (v18)
      {
        v19 = _Block_copy(v18);
      }

      v31 = -1;
    }

    else
    {
      v3 = this[1];
      v4 = this[2];
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = (AriMsg::getGmid(v4) >> 26);
      v6 = (AriMsg::getGmid(v4) >> 15) & 0x3FF;
      v7 = Ari::MsgDefById(v5);
      v8 = v7;
      if (v7)
      {
        v9 = *(v7 + 24);
        if (*v9)
        {
          v10 = (v9 + 8);
          while (strcmp(*(v10 - 1), "nInstance_t1"))
          {
            v11 = *v10;
            v10 += 4;
            if (!v11)
            {
              goto LABEL_10;
            }
          }

          v35 = v34;
          v13 = 0;
          if (v34 != -77 && v34)
          {
            v36 = *(v1 + 40);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = *(v8 + 48);
              *buf = 136316162;
              *&buf[4] = v37;
              *&buf[12] = 1024;
              *&buf[14] = v5;
              v58 = 1024;
              *v59 = v6;
              *&v59[4] = 2080;
              *&v59[6] = asString();
              v60 = 1024;
              v61 = v35;
              _os_log_impl(&dword_297986000, v36, OS_LOG_TYPE_DEFAULT, "#N Could not pack SIM instance parameter in request %s (%u, 0x%x) result %s (%d)", buf, 0x28u);
            }

            v13 = v35;
          }
        }

        else
        {
LABEL_10:
          v12 = *(v1 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = v5;
            _os_log_debug_impl(&dword_297986000, v12, OS_LOG_TYPE_DEBUG, "#D Not packing SIM instance TLV for request 0x%x", buf, 8u);
          }

          v13 = 0;
        }
      }

      else
      {
        v20 = *(v1 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_impl(&dword_297986000, v20, OS_LOG_TYPE_DEFAULT, "#N Could not get message definition for packing SIM instance for gid 0x%x", buf, 8u);
        }

        v13 = -71;
      }

      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      v21 = this[2];
      if (!v13)
      {
        v25 = *(v21 + 17);
        if (!v25)
        {
          v56 = 0xAAAAAAAAAAAAAAAALL;
          v39 = *this;
          v38 = this[1];
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = this[3];
          if (v40)
          {
            v41 = _Block_copy(v40);
          }

          else
          {
            v41 = 0;
          }

          *buf = v41;
          if (v41)
          {
            _Block_release(v41);
          }

          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          v42 = AriHost::Send();
          if (v42)
          {
            v43 = AriMsg::getGmid(this[2]);
            v44 = *this;
            v45 = *(*this + 5);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v52 = Ari::MsgNameById(v43);
              v53 = *(this + 8);
              v54 = asString();
              *buf = 136316162;
              *&buf[4] = v52;
              *&buf[12] = 1024;
              *&buf[14] = v43;
              v58 = 1024;
              *v59 = v53;
              *&v59[4] = 2080;
              *&v59[6] = v54;
              v60 = 1024;
              v61 = v42;
              _os_log_error_impl(&dword_297986000, v45, OS_LOG_TYPE_ERROR, "Cannot send request %s (0x%x) for client %d: %s (%d)", buf, 0x28u);
              v44 = *this;
            }

            v46 = this[1];
            if (v46)
            {
              atomic_fetch_add_explicit(v46 + 1, 1uLL, memory_order_relaxed);
            }

            v47 = this[3];
            if (v47)
            {
              v48 = _Block_copy(v47);
            }
          }

          v49 = this[2];
          LODWORD(v55) = 0;
          memset(buf, 170, 16);
          EncodedBuf = AriMsg::getEncodedBuf(v49, &v55);
          std::shared_ptr<unsigned char>::shared_ptr[abi:ne200100]<unsigned char,void (*)(unsigned char *),0>(buf, EncodedBuf);
        }

        v26 = AriMsg::getGmid(v21);
        v28 = *this;
        v27 = this[1];
        if (v27)
        {
          atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
        }

        v29 = this[3];
        if (v29)
        {
          v30 = _Block_copy(v29);
        }

        v31 = v25;
        v32 = v26;
        v33 = v28;
LABEL_36:
      }

      Gmid = AriMsg::getGmid(v21);
      v17 = *this;
      v22 = this[1];
      if (v22)
      {
        atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
      }

      v23 = this[3];
      if (v23)
      {
        v24 = _Block_copy(v23);
      }

      v31 = v13;
    }

    v32 = Gmid;
    v33 = v17;
    goto LABEL_36;
  }
}

void sub_29798C228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ice::SendProxy::transaction(uint64_t result, int a2)
{
  *(result + 32) = a2;
  return result;
}

{
  *(result + 32) = a2;
  return result;
}

uint64_t ice::SendProxy::callback(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

uint64_t ice::SendProxy::ackRequired(uint64_t result, char a2)
{
  *(result + 36) = a2;
  return result;
}

{
  *(result + 36) = a2;
  return result;
}

void anonymous namespace::callbackWithFailure(unsigned int a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  if (aBlock)
  {
    _Block_copy(aBlock);
  }

  operator new();
}

uint64_t ice::SendMsgBaseProxy::SendMsgBaseProxy(uint64_t result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = *(*a2 + 72);
  return result;
}

{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = *(*a2 + 72);
  return result;
}

__n128 ice::SendMsgBaseProxy::SendMsgBaseProxy(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  a1->n128_u64[0] = a2->n128_u64[0];
  a1->n128_u64[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[1];
  a1[1] = result;
  a2[1].n128_u64[1] = 0;
  a1[2].n128_u32[0] = a2[2].n128_u32[0];
  return result;
}

{
  v2 = a2->n128_u64[1];
  a1->n128_u64[0] = a2->n128_u64[0];
  a1->n128_u64[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[1];
  a1[1] = result;
  a2[1].n128_u64[1] = 0;
  a1[2].n128_u32[0] = a2[2].n128_u32[0];
  return result;
}

void ice::SendMsgBaseProxy::~SendMsgBaseProxy(std::__shared_weak_count **this)
{
  ice::SendMsgBaseProxy::send(this);
  v2 = this[3];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ice::SendMsgBaseProxy::send(ice::SendMsgBaseProxy *this)
{
  v43 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (!*this)
  {
    return;
  }

  if (*(this + 8) == -1)
  {
    v6 = *(v1 + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v28 = (v1 + 48);
      if (*(v1 + 71) < 0)
      {
        v28 = *v28;
      }

      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_297986000, v6, OS_LOG_TYPE_ERROR, "Client %s has not yet registered with ARI host runtime", buf, 0xCu);
    }

    GMID = AriSdk::MsgBase::getGMID(*(this + 2));
    v8 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
    v10 = *this;
    v9 = *(this + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(this + 3);
    if (v11)
    {
      v12 = _Block_copy(v11);
    }
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *(this + 1);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  *buf = v5;
  if (v5)
  {
    _Block_release(v5);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v13 = v37;
  v14 = AriSdk::MsgBase::send();
  if (v14)
  {
    v15 = AriSdk::MsgBase::getGMID(*(this + 2));
    v16 = (v15 >> 17) & 0xFFFF8000 | (v15 << 26);
    v17 = *this;
    v18 = *(*this + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v25 = Ari::MsgNameById(v16);
      v26 = *(this + 8);
      v27 = asString();
      *buf = 136316162;
      *&buf[4] = v25;
      *&buf[12] = 1024;
      *&buf[14] = v16;
      v39 = 1024;
      *v40 = v26;
      *&v40[4] = 2080;
      *&v40[6] = v27;
      v41 = 1024;
      v42 = v14;
      _os_log_error_impl(&dword_297986000, v18, OS_LOG_TYPE_ERROR, "Cannot send request %s (0x%x) for client %d: %s (%d)", buf, 0x28u);
      v17 = *this;
    }

    v19 = *(this + 1);
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(this + 3);
    if (v20)
    {
      v21 = _Block_copy(v20);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  AriSdk::MsgBase::getRawBytes();
  v35 = 0;
  v36 = 0;
  __p = 0;
  if (*buf)
  {
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, **buf, *(*buf + 8), *(*buf + 8) - **buf);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v22 = *(*this + 40);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
  v24 = __p;
  if (v23)
  {
    v29 = *(this + 8);
    v30 = v35 - __p;
    ctu::to_rle(v32, __p, (v35 - __p));
    if (v33 >= 0)
    {
      v31 = v32;
    }

    else
    {
      v31 = v32[0];
    }

    *buf = 67109634;
    *&buf[4] = (v29 >> 8) & 0x7F;
    *&buf[8] = 2048;
    *&buf[10] = v30;
    v39 = 2080;
    *v40 = v31;
    _os_log_debug_impl(&dword_297986000, v22, OS_LOG_TYPE_DEBUG, "#D send: ClientID:%d Length:%zu [%s]", buf, 0x1Cu);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v24 = __p;
    if (!__p)
    {
      goto LABEL_32;
    }
  }

  else if (!__p)
  {
    goto LABEL_32;
  }

  v35 = v24;
  operator delete(v24);
LABEL_32:
  if (v13)
  {
    _Block_release(v13);
  }
}

void sub_29798C944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ice::SendMsgBaseProxy::transaction(uint64_t result, int a2)
{
  *(result + 32) = a2;
  return result;
}

{
  *(result + 32) = a2;
  return result;
}

uint64_t ice::SendMsgBaseProxy::callback(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

uint64_t *std::unique_ptr<anonymous namespace::callbackWithFailure(unsigned int,unsigned int,std::shared_ptr<ice::Client>,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>)::$_0,std::default_delete<anonymous namespace::callbackWithFailure(unsigned int,unsigned int,std::shared_ptr<ice::Client>,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      _Block_release(v3);
    }

    MEMORY[0x29C2772E0](v2, 0x1080C4057E67DB5);
  }

  return a1;
}

void dispatch::async<anonymous namespace::callbackWithFailure(unsigned int,unsigned int,std::shared_ptr<ice::Client>,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>)::$_0>(dispatch_queue_s *,std::unique_ptr<anonymous namespace::callbackWithFailure(unsigned int,unsigned int,std::shared_ptr<ice::Client>,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>)::$_0,std::default_delete<anonymous namespace::callbackWithFailure(unsigned int,unsigned int,std::shared_ptr<ice::Client>,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>)::$_0>>)::{lambda(void *)#1}::__invoke(int32x2_t *a1)
{
  v3 = a1;
  v8 = vrev64_s32(*a1);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[2] = v1;
  v6[3] = v1;
  v6[0] = v1;
  v6[1] = v1;
  MEMORY[0x29C277060](v6, 67600384);
  AriMsg::packParam(v6, 1, &v8);
  v5 = 0;
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  EncodedBuf = AriMsg::getEncodedBuf(v6, &v5);
  std::shared_ptr<unsigned char>::shared_ptr[abi:ne200100]<unsigned char,void (*)(unsigned char *),0>(v4, EncodedBuf);
}

void sub_29798CB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  AriMsg::~AriMsg(va);
  _Unwind_Resume(a1);
}

void sub_29798CC3C(void *a1)
{
  __cxa_begin_catch(a1);
  AriMsg::ReleaseEncodedMessage(v1, v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<unsigned char *,void (*)(unsigned char *),std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2772E0);
}

uint64_t std::__shared_ptr_pointer<unsigned char *,void (*)(unsigned char *),std::allocator<unsigned char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::wrapSendCallback(void **a1, uint64_t a2, std::__shared_weak_count *a3, void **a4, int a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN12_GLOBAL__N_116wrapSendCallbackENSt3__110shared_ptrIN3ice6ClientEEEN8dispatch5blockIU13block_pointerFiPhjEEEi_block_invoke;
  v8[3] = &__block_descriptor_tmp_1;
  v8[4] = a2;
  v9 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a5;
  v7 = *a4;
  if (*a4)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  *a1 = _Block_copy(v8);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_weak(a3);
  }
}

uint64_t ___ZN12_GLOBAL__N_116wrapSendCallbackENSt3__110shared_ptrIN3ice6ClientEEEN8dispatch5blockIU13block_pointerFiPhjEEEi_block_invoke(uint64_t a1, ctu *a2, uint64_t a3)
{
  v42 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (!v9)
      {
LABEL_27:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return 0;
      }

      v10 = *(v9 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 56);
        ctu::to_rle(buf, a2, a3);
        v24 = v34[3] >= 0 ? buf : *buf;
        *v37 = 67109634;
        *&v37[4] = (v23 >> 8) & 0x7F;
        *&v37[8] = 1024;
        *&v37[10] = a3;
        *&v37[14] = 2080;
        *&v38 = v24;
        _os_log_debug_impl(&dword_297986000, v10, OS_LOG_TYPE_DEBUG, "#D recv: ClientID:%d Length:%u [%s]", v37, 0x18u);
        if ((v34[3] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *(a1 + 48);
      if (v11)
      {
        v12 = _Block_copy(v11);
      }

      else
      {
        v12 = 0;
      }

      v41 = 0xAAAAAAAAAAAAAAAALL;
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v13;
      v40 = v13;
      *v37 = v13;
      v38 = v13;
      MEMORY[0x29C277050](v37, a2, a3);
      v14 = HIDWORD(v41);
      if (HIDWORD(v41))
      {
        BufGmid = AriMsg::GetBufGmid(a2, a3);
        v16 = *(v9 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = asString();
          *buf = 67109890;
          *&buf[4] = BufGmid >> 26;
          *&buf[8] = 1024;
          *&buf[10] = (BufGmid >> 15) & 0x3FF;
          *v33 = 1024;
          *&v33[2] = v14;
          *v34 = 2080;
          *&v34[2] = v17;
          _os_log_impl(&dword_297986000, v16, OS_LOG_TYPE_DEFAULT, "#N Could not construct response (%u, 0x%x) error=%d (%s)", buf, 0x1Eu);
        }

        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v12)
        {
          v18 = _Block_copy(v12);
        }
      }

      if (!AriMsg::isValid(v37))
      {
        v31 = 0xAAAAAAAAAAAAAAAALL;
        if (AriMsg::unparam(v37, 1, &v31))
        {
          v19 = *(v9 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v20 = "#N Got NACK from baseband without status TLV";
            v21 = v19;
            v22 = 2;
LABEL_25:
            _os_log_impl(&dword_297986000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
          }
        }

        else
        {
          v25 = v31;
          v26 = *(v9 + 40);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = Ari::MsgNameById(v25);
            v28 = HIDWORD(v31);
            v29 = asString();
            *buf = 136316162;
            *&buf[4] = v27;
            *&buf[12] = 1024;
            *v33 = v25 >> 26;
            *&v33[4] = 1024;
            *v34 = (v25 >> 15) & 0x3FF;
            *&v34[4] = 1024;
            *&v34[6] = v28;
            v35 = 2080;
            v36 = v29;
            v20 = "#N Got NACK for %s (%u, 0x%x) error=%d error description: %s";
            v21 = v26;
            v22 = 40;
            goto LABEL_25;
          }
        }
      }

      (*(v12 + 2))(v12, a2, a3);
      AriMsg::~AriMsg(v37);
      _Block_release(v12);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      goto LABEL_27;
    }
  }

  return 0;
}

void sub_29798D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  AriMsg::~AriMsg(va);
  if (v17)
  {
    _Block_release(v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c36_ZTSNSt3__18weak_ptrIN3ice6ClientEEE48c45_ZTSN8dispatch5blockIU13block_pointerFiPhjEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c36_ZTSNSt3__18weak_ptrIN3ice6ClientEEE48c45_ZTSN8dispatch5blockIU13block_pointerFiPhjEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29798D318(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2A1C6F118]();
}

{
  return MEMORY[0x2A1C6F120]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}