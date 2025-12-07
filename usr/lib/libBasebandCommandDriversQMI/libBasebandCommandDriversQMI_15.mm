void sub_296F8B5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void tlv::parseV<nas::tlv::abm::BBHoppingList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 1);
  v10 = *v6;
  v9 = v6 + 1;
  v8 = v10;
  if (v10)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a4, v8);
    v11 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      do
      {
        v13 = v9;
        tlv::throwIfNotEnoughBytes(v9, v7, 8);
        *v11 = *v9;
        tlv::throwIfNotEnoughBytes((v9 + 8), v7, 4);
        *(v11 + 8) = *(v9 + 2);
        v11 += 16;
        v9 += 12;
      }

      while (v11 != v12);
      v9 = v13 + 12;
    }
  }

  *a1 = v9;
}

void sub_296F8BF6C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8BF54);
}

void sub_296F8BF80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void tlv::parseV<nas::tlv::abm::BBHRPLMNList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 1);
  v10 = *v6;
  v9 = v6 + 1;
  v8 = v10;
  if (v10)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a4, v8);
    v11 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      do
      {
        v13 = v9;
        tlv::throwIfNotEnoughBytes(v9, v7, 8);
        *v11 = *v9;
        tlv::throwIfNotEnoughBytes((v9 + 8), v7, 4);
        *(v11 + 8) = *(v9 + 2);
        v11 += 16;
        v9 += 12;
      }

      while (v11 != v12);
      v9 = v13 + 12;
    }
  }

  *a1 = v9;
}

void sub_296F8C064(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8C04CLL);
}

void sub_296F8C078(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void tlv::parseV<nas::tlv::abm::BBNeighborSecondList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 1);
  v10 = *v6;
  v9 = v6 + 1;
  v8 = v10;
  if (v10)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a4, v8);
    v11 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      do
      {
        v13 = v9;
        tlv::throwIfNotEnoughBytes(v9, v7, 8);
        *v11 = *v9;
        tlv::throwIfNotEnoughBytes((v9 + 8), v7, 4);
        *(v11 + 8) = *(v9 + 2);
        v11 += 16;
        v9 += 12;
      }

      while (v11 != v12);
      v9 = v13 + 12;
    }
  }

  *a1 = v9;
}

void sub_296F8C15C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8C144);
}

void sub_296F8C170(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void tlv::parseV<nas::tlv::abm::DLSCellFrequencyList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 1);
  v10 = *v6;
  v9 = v6 + 1;
  v8 = v10;
  if (v10)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a4, v8);
    v11 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      do
      {
        v13 = v9;
        tlv::throwIfNotEnoughBytes(v9, v7, 8);
        *v11 = *v9;
        tlv::throwIfNotEnoughBytes((v9 + 8), v7, 4);
        *(v11 + 8) = *(v9 + 2);
        v11 += 16;
        v9 += 12;
      }

      while (v11 != v12);
      v9 = v13 + 12;
    }
  }

  *a1 = v9;
}

void sub_296F8C254(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8C23CLL);
}

void sub_296F8C268(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void tlv::parseV<nas::tlv::abm::BBCampUplinkFreqList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a1;
  v7 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v7, 1);
  v10 = *v6;
  v9 = v6 + 1;
  v8 = v10;
  if (v10)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a4, v8);
    v11 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      do
      {
        v13 = v9;
        tlv::throwIfNotEnoughBytes(v9, v7, 8);
        *v11 = *v9;
        tlv::throwIfNotEnoughBytes((v9 + 8), v7, 4);
        *(v11 + 8) = *(v9 + 2);
        v11 += 16;
        v9 += 12;
      }

      while (v11 != v12);
      v9 = v13 + 12;
    }
  }

  *a1 = v9;
}

void sub_296F8C34C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8C334);
}

void sub_296F8C360(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Timestamp::Timestamp(Timestamp *this)
{
  v14 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v11 = 0uLL;
  if ((gettimeofday(&v11, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v9 = __error();
  v10 = strerror(*v9);
  *buf = 136315138;
  v13 = v10;
  _os_log_error_impl(&dword_296ECF000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v11;
}

void *Timestamp::Timestamp(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v7 = *(v5 + 8);
      v9 = *a1;
      v8 = a1[1];
      v10 = v3;
      if (*a1 != v3)
      {
        v11 = a1[1];
        v12 = v3;
        if (v8)
        {
          do
          {
            v10 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v10 = v12[2];
            v13 = *v10 == v12;
            v12 = v10;
          }

          while (v13);
        }

        if (*(v10 + 8) >= v7)
        {
          break;
        }
      }

      if (v8)
      {
        v14 = v10;
      }

      else
      {
        v14 = v3;
      }

      if (v8)
      {
        v15 = v10 + 1;
      }

      else
      {
        v15 = v3;
      }

      if (!*v15)
      {
        goto LABEL_25;
      }

LABEL_28:
      v20 = v5[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v5[2];
          v13 = *v21 == v5;
          v5 = v21;
        }

        while (!v13);
      }

      v5 = v21;
      if (v21 == v4)
      {
        return a1;
      }
    }

    v15 = v3;
    v14 = v3;
    if (v8)
    {
      v16 = a1[1];
      while (1)
      {
        while (1)
        {
          v14 = v16;
          v17 = *(v16 + 32);
          if (v17 <= v7)
          {
            break;
          }

          v16 = *v14;
          v15 = v14;
          if (!*v14)
          {
            goto LABEL_25;
          }
        }

        if (v17 >= v7)
        {
          goto LABEL_28;
        }

        v16 = v14[1];
        if (!v16)
        {
          v15 = v14 + 1;
          break;
        }
      }
    }

LABEL_25:
    v18 = operator new(0x38uLL);
    v19 = *(v5 + 2);
    v18[6] = v5[6];
    *(v18 + 2) = v19;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v14;
    *v15 = v18;
    if (*v9)
    {
      *a1 = *v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v18);
    ++a1[2];
    goto LABEL_28;
  }

  return a1;
}

void *Timestamp::Timestamp(void *a1, _OWORD *a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

__n128 Timestamp::set(uint64_t ***a1, __n128 *a2, int a3)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 8);
        if (v9 <= a3)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v7 = v8 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = (a1 + 1);
LABEL_8:
    v10 = v8;
    v8 = operator new(0x38uLL);
    *(v8 + 8) = a3;
    v8[5] = 0;
    v8[6] = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v10;
    *v7 = v8;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
    a1[2] = (a1[2] + 1);
  }

  result = *a2;
  *(v8 + 5) = *a2;
  return result;
}

void *Timestamp::Timestamp(void *a1, uint64_t a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

uint64_t **Timestamp::Timestamp(uint64_t **a1, char *a2, char a3, int a4)
{
  v5 = a2;
  v27 = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  __p[2] = 0x11AAAAAAAAAA0053;
  *__p = *"%Y-%m-%d-%H-%M-%S";
  if ((a3 & 0x10) != 0)
  {
    HIBYTE(__p[2]) = 19;
    strcpy(__p, "%Y.%m.%d_%H-%M-%S%z");
  }

  *(&v22 + 1) = 0xAAAAAAAA00000000;
  memset(&v23, 0, sizeof(v23));
  if (a2[23] < 0)
  {
    v5 = *a2;
  }

  if (strptime(v5, __p, &v23))
  {
    v23.tm_isdst = -1;
    *&v22 = mktime(&v23);
    if (v22 != -1)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v18 = __error();
      v19 = strerror(*v18);
      *buf = 136315138;
      v26 = v19;
      _os_log_error_impl(&dword_296ECF000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
      v22 = 0uLL;
      if ((gettimeofday(&v22, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v22 = 0uLL;
      if ((gettimeofday(&v22, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = __error();
    v9 = strerror(*v8);
    *buf = 136315138;
    v26 = v9;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after absolute time conversion failed. Error: %s\n";
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
  }

  v22 = 0uLL;
  if (gettimeofday(&v22, 0) < 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v20 = __error();
    v21 = strerror(*v20);
    *buf = 136315138;
    v26 = v21;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after conversion failure. Error: %s\n";
LABEL_32:
    _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
  }

LABEL_15:
  v12 = *v7;
  v13 = v7;
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 8);
        if (v14 <= a4)
        {
          break;
        }

        v12 = *v13;
        v7 = v13;
        if (!*v13)
        {
          goto LABEL_22;
        }
      }

      if (v14 >= a4)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        v7 = v13 + 1;
        goto LABEL_22;
      }
    }

    *(v13 + 5) = v22;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    v15 = operator new(0x38uLL);
    *(v15 + 8) = a4;
    *(v15 + 5) = 0;
    *(v15 + 6) = 0;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v13;
    *v7 = v15;
    v16 = **a1;
    if (v16)
    {
      *a1 = v16;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[2] = (a1[2] + 1);
    *(v15 + 40) = v22;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_25:
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_296F8CE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t Timestamp::get(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a3)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a3));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a3)
  {
    return 0;
  }

  *a2 = *(v6 + 40);
  return 1;
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v68 = *MEMORY[0x29EDCA608];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v62 = v6;
  v61 = v6;
  v60 = v6;
  v59 = v6;
  v58 = v6;
  v57 = v6;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v54 = v6;
  v53 = v6;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v50 = v6;
  __p = v6;
  v48 = v6;
  v47 = v6;
  v46 = v6;
  v45 = v6;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v56 = 0;
  v7 = MEMORY[0x29EDC9590] + 104;
  v52 = MEMORY[0x29EDC9590] + 104;
  v8 = MEMORY[0x29EDC9590] + 64;
  v44 = MEMORY[0x29EDC9590] + 64;
  v9 = MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 24);
  v42 = *(MEMORY[0x29EDC9528] + 16);
  *(&v42 + *(v42 - 24)) = v10;
  v43 = 0;
  v11 = (&v42 + *(v42 - 24));
  std::ios_base::init(v11, &v45);
  v12 = MEMORY[0x29EDC9590] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v13 = v9[5];
  v44 = v9[4];
  *(&v44 + *(v44 - 24)) = v13;
  v42 = v9[1];
  *(&v42 + *(v42 - 24)) = v9[6];
  v52 = v7;
  v42 = v12;
  v14 = MEMORY[0x29EDC9568] + 16;
  v44 = v8;
  *&v45 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C268DF0](&v45 + 8);
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v15 = MEMORY[0x29EDC9570] + 16;
  *&v45 = MEMORY[0x29EDC9570] + 16;
  __p = 0u;
  v50 = 0u;
  LODWORD(v51) = 24;
  v16 = v9;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v45);
  v19 = *(a1 + 8);
  v18 = a1 + 8;
  v17 = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = v18;
  do
  {
    if (*(v17 + 32) >= a2)
    {
      v20 = v17;
    }

    v17 = *(v17 + 8 * (*(v17 + 32) < a2));
  }

  while (v17);
  if (v20 == v18)
  {
LABEL_10:
    v22 = 0;
    v23 = 0;
    v21 = a4;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = a4;
    if (*(v20 + 32) > a2)
    {
      v22 = 0;
      v23 = 0;
      if ((a3 & 0x11) == 0)
      {
        goto LABEL_19;
      }

LABEL_11:
      v40.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v41 = v23;
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v40.tm_mon = v24;
      *&v40.tm_isdst = v24;
      *&v40.tm_sec = v24;
      localtime_r(&v41, &v40);
      v66 = 0u;
      v67 = 0u;
      *__s = 0u;
      v65 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v25 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v25 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v25, &v40);
      v26 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, __s, v26);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "-", 1);
        v27 = v44;
        v28 = &v44 + *(v44 - 24);
        if (*(v28 + 36) == -1)
        {
          std::ios_base::getloc((&v44 + *(v44 - 24)));
          v29 = std::locale::use_facet(&v63, MEMORY[0x29EDC93D0]);
          (v29->__vftable[2].~facet_0)(v29, 32);
          std::locale::~locale(&v63);
          v27 = v44;
        }

        *(v28 + 36) = 48;
        *(&v46 + *(v27 - 24)) = 3;
        MEMORY[0x29C268D10](&v44, (v22 / 1000));
      }

      goto LABEL_24;
    }

    v23 = *(v20 + 40);
    v22 = *(v20 + 48);
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_19:
  MEMORY[0x29C268D30](&v44, v23);
  if ((a3 & 4) != 0)
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_24;
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, ".", 1);
    v22 = (v22 / 1000);
  }

  MEMORY[0x29C268D10](v30, v22);
LABEL_24:
  if ((v51 & 0x10) != 0)
  {
    v32 = *(&v50 + 1);
    if (*(&v50 + 1) < v48)
    {
      *(&v50 + 1) = v48;
      v32 = v48;
    }

    v33 = *(&v47 + 1);
    v31 = v32 - *(&v47 + 1);
    if ((v32 - *(&v47 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if ((v51 & 8) == 0)
    {
      v31 = 0;
      v21[23] = 0;
      goto LABEL_38;
    }

    v33 = v46;
    v31 = v47 - v46;
    if (v47 - v46 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_42:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v35 = operator new(v34);
    *(v21 + 1) = v31;
    *(v21 + 2) = v34 | 0x8000000000000000;
    *v21 = v35;
    v21 = v35;
    goto LABEL_37;
  }

  v21[23] = v31;
  if (v31)
  {
LABEL_37:
    memmove(v21, v33, v31);
  }

LABEL_38:
  v21[v31] = 0;
  v42 = *v16;
  v36 = v16[9];
  *(&v42 + *(v42 - 24)) = v16[8];
  v44 = v36;
  *&v45 = v15;
  if (SBYTE7(v50) < 0)
  {
    operator delete(__p);
  }

  *&v45 = v14;
  std::locale::~locale(&v45 + 1);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C268E60](&v52);
}

void sub_296F8D62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  MEMORY[0x29C268E60](a12);
  _Unwind_Resume(a1);
}

uint64_t *Timestamp::convert(uint64_t a1)
{
  memset(v8, 170, sizeof(v8));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  Timestamp::Timestamp(v8, &__p, 9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  else
  {
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  v2 = &v8[1];
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x80000000) == 0)
    {
      v2 = v3;
    }

    v3 = *(v3 + ((v4 >> 28) & 8));
  }

  while (v3);
  if (v2 != &v8[1] && *(v2 + 8) <= 0)
  {
    v5 = v2[5];
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v8, v1);
  return v5;
}

void sub_296F8D7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Timestamp::timediffUSec(Timestamp *this, const Timestamp *a2, const Timestamp *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 8);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v4;
      }

      v4 = *&v4[(v7 >> 28) & 8];
    }

    while (v4);
    if (v6 == v3 || *(v6 + 8) > 0)
    {
      v8 = 0;
      v4 = 0;
      v11 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v11;
      if (!v11)
      {
LABEL_21:
        v18 = &v4[v8] - v10;
        if (v18 >= 0)
        {
          return v18;
        }

        else
        {
          return -v18;
        }
      }
    }

    else
    {
      v4 = *(v6 + 12);
      v8 = 1000000 * *(v6 + 5);
      v17 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = *(a2 + 1);
    v9 = a2 + 8;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = v9;
  do
  {
    v14 = *(v10 + 8);
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v10;
    }

    v10 = *&v10[(v14 >> 28) & 8];
  }

  while (v10);
  if (v13 == v9 || *(v13 + 8) > 0)
  {
    v15 = &v4[v8];
    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    v19 = &v4[v8 - *(v13 + 12) + -1000000 * *(v13 + 5)];
    if (v19 >= 0)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t diag::QMICommandDriver::create@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0xA8uLL);
  v7 = *a1;
  if (*a1)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a1 + 8);
  aBlock = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = *a2;
  v10 = a2[1];
  v13[0] = v9;
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  diag::QMICommandDriver::QMICommandDriver(v6, &aBlock, v13);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<diag::QMICommandDriver>::shared_ptr[abi:ne200100]<diag::QMICommandDriver,std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver*)#1},0>(a3, v6);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return (*(**a3 + 16))(*a3, v11);
}

void sub_296F8DB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  dispatch::callback<void({block_pointer})(diag::CommandDriver::Event,dispatch::group_session)>::~callback(va);
  if (v11)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t diag::QMICommandDriver::QMICommandDriver(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a3[1];
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  diag::CommandDriver::CommandDriver();
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  *a1 = &unk_2A1E1EA50;
  *(a1 + 104) = vdup_n_s32(0x61A8u);
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = dispatch_group_create();
  *(a1 + 160) = 0;
  return a1;
}

void sub_296F8DD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  dispatch::callback<void({block_pointer})(diag::CommandDriver::Event,dispatch::group_session)>::~callback(va);
  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::~QMICommandDriver(diag::QMICommandDriver *this)
{
  *this = &unk_2A1E1EA50;
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 14));
    *(this + 14) = 0;
  }

  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v13, 2u);
  }

  v4 = *(this + 20);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(this + 20);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  v6 = *(this + 19);
  if (v6)
  {
    dispatch_release(v6);
  }

  qmi::Client::~Client((this + 120));
  *this = &unk_2A1E1F3A8;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  v7 = *(this + 9);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    _Block_release(v9);
  }

  MEMORY[0x29C268320](this + 40);
  v10 = *(this + 4);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void diag::QMICommandDriver::stopTimer_sync(diag::QMICommandDriver *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 14));
    *(this + 14) = 0;
  }
}

void diag::QMICommandDriver::init(diag::QMICommandDriver *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN4diag16QMICommandDriver4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_28_3;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4diag13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_166_0;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v100 = 0xAAAAAAAAAAAAAAAALL;
  v101 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v100, *(v2 + 64));
  if (!v100)
  {
    Name = diag::CommandDriver::getName(v2);
    v39 = strlen(Name);
    if (v39 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v40 = v39;
    if (v39 >= 0x17)
    {
      if ((v39 | 7) == 0x17)
      {
        v51 = 25;
      }

      else
      {
        v51 = (v39 | 7) + 1;
      }

      p_dst = operator new(v51);
      v95 = v40;
      v96 = v51 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v96) = v39;
      p_dst = &__dst;
      if (!v39)
      {
        LOBYTE(__dst) = 0;
        v42 = *(v2 + 24);
        v86 = v42;
        if (!v42)
        {
LABEL_79:
          v92 = 4;
          strcpy(v91, "diag");
          v43 = *(v2 + 16);
          if (!v43 || (v44 = *(v2 + 8), (v45 = std::__shared_weak_count::lock(v43)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v46 = v45;
          atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v84 = 0;
            v85 = 0;
            v47 = std::__shared_weak_count::lock(v45);
            if (v47)
            {
LABEL_83:
              atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v84 = v44;
              v85 = v47;
LABEL_84:
              std::__shared_weak_count::__release_weak(v46);
              if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v47->__on_zero_shared)(v47);
                std::__shared_weak_count::__release_weak(v47);
              }

              qmi::Client::createWithQueue();
              v48 = v99;
              v99 = 0uLL;
              v49 = *(v2 + 144);
              *(v2 + 136) = v48;
              if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v49->__on_zero_shared)(v49);
                std::__shared_weak_count::__release_weak(v49);
              }

              qmi::Client::~Client(buf);
              if (v85)
              {
                std::__shared_weak_count::__release_weak(v85);
              }

              if (v92 < 0)
              {
                operator delete(v91[0]);
                v15 = v86;
                if (!v86)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v15 = v86;
                if (!v86)
                {
                  goto LABEL_29;
                }
              }

LABEL_28:
              dispatch_release(v15);
              goto LABEL_29;
            }
          }

          else
          {
            (v45->__on_zero_shared)(v45);
            std::__shared_weak_count::__release_weak(v46);
            v84 = 0;
            v85 = 0;
            v47 = std::__shared_weak_count::lock(v46);
            if (v47)
            {
              goto LABEL_83;
            }
          }

          v84 = 0;
          v85 = v47;
          goto LABEL_84;
        }

LABEL_78:
        dispatch_retain(v42);
        goto LABEL_79;
      }
    }

    memmove(p_dst, Name, v40);
    *(p_dst + v40) = 0;
    v42 = *(v2 + 24);
    v86 = v42;
    if (!v42)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v3 = diag::CommandDriver::getName(v2);
  v4 = strlen(v3);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v50 = 25;
    }

    else
    {
      v50 = (v4 | 7) + 1;
    }

    v6 = operator new(v50);
    v95 = v5;
    v96 = v50 | 0x8000000000000000;
    __dst = v6;
LABEL_102:
    memmove(v6, v3, v5);
    *(v6 + v5) = 0;
    v7 = *(v2 + 24);
    v93 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIBYTE(v96) = v4;
  v6 = &__dst;
  if (v4)
  {
    goto LABEL_102;
  }

  LOBYTE(__dst) = 0;
  v7 = *(v2 + 24);
  v93 = v7;
  if (v7)
  {
LABEL_6:
    dispatch_retain(v7);
  }

LABEL_7:
  v92 = 4;
  strcpy(v91, "diag");
  v8 = *(v2 + 16);
  if (!v8 || (v9 = *(v2 + 8), (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
    v89 = 0;
    v90 = 0;
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_105:
    v89 = 0;
    v90 = v12;
    goto LABEL_12;
  }

  v89 = 0;
  v90 = 0;
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_105;
  }

LABEL_11:
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v89 = v9;
  v90 = v12;
LABEL_12:
  std::__shared_weak_count::__release_weak(v11);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v87 = v100;
  v88 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v13 = v99;
  v99 = 0uLL;
  v14 = *(v2 + 144);
  *(v2 + 136) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  qmi::Client::~Client(buf);
  if (v88 && !atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v88->__on_zero_shared)(v88);
    std::__shared_weak_count::__release_weak(v88);
  }

  if (v90)
  {
    std::__shared_weak_count::__release_weak(v90);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  v15 = v93;
  if (v93)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (SHIBYTE(v96) < 0)
  {
    operator delete(__dst);
  }

  v77 = MEMORY[0x29EDCA5F8];
  v78 = 1174405120;
  v79 = ___ZN4diag16QMICommandDriver4initEv_block_invoke_2;
  v80 = &__block_descriptor_tmp_15;
  v17 = a1[5];
  v16 = a1[6];
  v81 = v2;
  v82 = v17;
  v83 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v70 = MEMORY[0x29EDCA5F8];
  v71 = 1174405120;
  v72 = ___ZN4diag16QMICommandDriver4initEv_block_invoke_3;
  v73 = &__block_descriptor_tmp_6_2;
  v19 = a1[5];
  v18 = a1[6];
  v74 = v2;
  v75 = v19;
  v76 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v63 = MEMORY[0x29EDCA5F8];
  v64 = 1174405120;
  v65 = ___ZN4diag16QMICommandDriver4initEv_block_invoke_7;
  v66 = &__block_descriptor_tmp_11_4;
  v21 = a1[5];
  v20 = a1[6];
  v67 = v2;
  v68 = v21;
  v69 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v56 = MEMORY[0x29EDCA5F8];
  v57 = 1174405120;
  v58 = ___ZN4diag16QMICommandDriver4initEv_block_invoke_12;
  v59 = &__block_descriptor_tmp_15_2;
  v23 = a1[5];
  v22 = a1[6];
  v60 = v2;
  v61 = v23;
  v62 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v54[1] = MEMORY[0x29EDCA5F8];
  v54[2] = 1174405120;
  v54[3] = ___ZN4diag16QMICommandDriver4initEv_block_invoke_16;
  v54[4] = &__block_descriptor_tmp_20_4;
  v25 = a1[5];
  v24 = a1[6];
  v54[5] = v2;
  v54[6] = v25;
  v55 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v26 = *(v2 + 104);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver4initEv_block_invoke_21;
  aBlock[3] = &__block_descriptor_tmp_25_1;
  v28 = a1[5];
  v27 = a1[6];
  aBlock[4] = v2;
  aBlock[5] = v28;
  v53 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = _Block_copy(aBlock);
  v54[0] = v29;
  diag::QMICommandDriver::startTimer_sync(v2, v26, v54);
  if (v29)
  {
    _Block_release(v29);
  }

  v30 = *(v2 + 16);
  if (!v30 || (v31 = *(v2 + 8), (v32 = std::__shared_weak_count::lock(v30)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v33 = v32;
  atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *buf = 0;
    v98 = 0;
    v34 = std::__shared_weak_count::lock(v32);
    if (v34)
    {
      goto LABEL_49;
    }

LABEL_96:
    v35 = v98;
    *buf = 0;
    v98 = v34;
    if (!v35)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v33);
  *buf = 0;
  v98 = 0;
  v34 = std::__shared_weak_count::lock(v33);
  if (!v34)
  {
    goto LABEL_96;
  }

LABEL_49:
  atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v35 = v98;
  *buf = v31;
  v98 = v34;
  if (v35)
  {
LABEL_50:
    std::__shared_weak_count::__release_weak(v35);
  }

LABEL_51:
  std::__shared_weak_count::__release_weak(v33);
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  qmi::Client::setClientHandle();
  if (v98)
  {
    std::__shared_weak_count::__release_weak(v98);
  }

  qmi::Client::start((v2 + 120));
  v36 = *(v2 + 40);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v36, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_weak(v69);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_weak(v76);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_weak(v83);
  }

  v37 = v101;
  if (v101)
  {
    if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }
  }
}

void sub_296F8EAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  v54 = *(v52 - 232);
  if (v54)
  {
    std::__shared_weak_count::__release_weak(v54);
    if ((*(v52 - 161) & 0x80000000) == 0)
    {
LABEL_3:
      v55 = *(v52 - 224);
      if (!v55)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v52 - 161) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v52 - 184));
  v55 = *(v52 - 224);
  if (!v55)
  {
LABEL_8:
    if (*(v52 - 129) < 0)
    {
      operator delete(*(v52 - 152));
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v52 - 96);
      _Unwind_Resume(a1);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v52 - 96);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v55);
  goto LABEL_8;
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 160);
        *(v3 + 160) = 0;
        if (v6)
        {
          dispatch_group_leave(v6);
          dispatch_release(v6);
        }

        v7 = *(v3 + 112);
        if (v7)
        {
          dispatch_source_cancel(v7);
          dispatch_release(*(v3 + 112));
          *(v3 + 112) = 0;
        }

        diag::CommandDriver::notifyOfEvent_sync();
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F8EDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, ...)
{
  va_start(va, group);
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_3(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 112);
        if (v6)
        {
          dispatch_source_cancel(v6);
          dispatch_release(*(v3 + 112));
          *(v3 + 112) = 0;
        }

        diag::CommandDriver::notifyOfEvent_sync();
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F8EF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, ...)
{
  va_start(va, group);
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_7(void *a1, NSObject *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        if (a2)
        {
          dispatch_retain(a2);
          dispatch_retain(a2);
          dispatch_group_enter(a2);
        }

        v8 = *(v5 + 20);
        *(v5 + 20) = a2;
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }

        diag::QMICommandDriver::onLowPower_sync(v5);
        if (a2)
        {
          dispatch_release(a2);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F8F040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    dispatch_release(v9);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::onLowPower_sync(diag::QMICommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v7 = *(this + 27);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver15onLowPower_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_32_5;
  aBlock[4] = this;
  aBlock[5] = v3;
  v15 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = _Block_copy(aBlock);
  v16 = v8;
  diag::QMICommandDriver::startTimer_sync(this, v7, &v16);
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = *(this + 19);
  if (v9)
  {
    dispatch_retain(*(this + 19));
    dispatch_group_enter(v9);
    v10 = *(this + 19);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 3);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4diag16QMICommandDriver15onLowPower_syncEv_block_invoke_33;
  block[3] = &__block_descriptor_tmp_36_2;
  block[4] = this;
  block[5] = v3;
  v13 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  dispatch_group_notify(v10, v11, block);
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(v9);
  }

  diag::CommandDriver::notifyOfEvent_sync();
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_296F8F284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v24)
  {
    dispatch_group_leave(v24);
    dispatch_release(v24);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_12(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[5])
      {
        diag::CommandDriver::notifyOfEvent_sync();
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void sub_296F8F3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, ...)
{
  va_start(va, group);
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_16(void *a1, xpc_object_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v17 = v6;
    if (v6)
    {
      if (!a1[5])
      {
LABEL_9:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v6;
          (v6->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v8);
        }

        return;
      }

      __p[3] = 0;
      diag::CommandDriver::notifyOfEvent_sync();
      if (a2)
      {
        xpc_retain(a2);
        v7 = *(v5 + 40);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }
      }

      else
      {
        a2 = xpc_null_create();
        v7 = *(v5 + 40);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }
      }

      v9 = MEMORY[0x29C269360](a2);
      memset(__p, 170, 24);
      v10 = strlen(v9);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        if ((v10 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v10 | 7) + 1;
        }

        v12 = operator new(v13);
        __p[1] = v11;
        __p[2] = (v13 | 0x8000000000000000);
        __p[0] = v12;
      }

      else
      {
        HIBYTE(__p[2]) = v10;
        v12 = __p;
        if (!v10)
        {
          goto LABEL_21;
        }
      }

      memcpy(v12, v9, v11);
LABEL_21:
      *(v11 + v12) = 0;
      free(v9);
      v14 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v14 = __p[0];
      }

      *buf = 136315138;
      v19 = v14;
      _os_log_error_impl(&dword_296ECF000, v7, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_8:
      xpc_release(a2);
      v6 = v17;
      if (!v17)
      {
        return;
      }

      goto LABEL_9;
    }
  }
}

void sub_296F8F630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void diag::QMICommandDriver::startTimer_sync(uint64_t a1, unsigned int a2, void **a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 112);
  if (v6)
  {
    dispatch_source_cancel(v6);
    dispatch_release(*(a1 + 112));
    *(a1 + 112) = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(a1 + 24));
  *(a1 + 112) = v7;
  if (v7)
  {
    v8 = *(a1 + 16);
    if (!v8 || (v9 = *(a1 + 8), (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    p_shared_weak_owners = &v10->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v11);
    }

    v13 = *(a1 + 112);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN4diag16QMICommandDriver15startTimer_syncEjN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
    handler[3] = &__block_descriptor_tmp_29_2;
    handler[4] = v9;
    v20 = v11;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v14 = *a3;
    if (*a3)
    {
      v14 = _Block_copy(v14);
    }

    aBlock = v14;
    dispatch_source_set_event_handler(v13, handler);
    v15 = *(a1 + 112);
    v16 = dispatch_time(0, 1000000 * a2);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_activate(*(a1 + 112));
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v23 = a2;
      _os_log_debug_impl(&dword_296ECF000, v17, OS_LOG_TYPE_DEBUG, "#D Timeout set to %ums", buf, 8u);
      v18 = aBlock;
      if (!aBlock)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v18 = aBlock;
      if (!aBlock)
      {
LABEL_13:
        if (v20)
        {
          std::__shared_weak_count::__release_weak(v20);
        }

        std::__shared_weak_count::__release_weak(v11);
        return;
      }
    }

    _Block_release(v18);
    goto LABEL_13;
  }
}

void sub_296F8F8C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_21(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v10 = v4;
    if (v4)
    {
      v5 = v4;
      v9 = a1[5];
      if (!v9 || (group = 0, diag::CommandDriver::notifyOfEvent_sync(), v7 = 13, strcpy(__p, "Start Timeout"), diag::QMICommandDriver::onError_sync(v3, __p), (v7 & 0x80000000) == 0))
      {
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_8:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      operator delete(__p[0]);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }
  }
}

void sub_296F8F9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_group_t group, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::onError_sync(NSObject **a1, uint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = a1[20];
  a1[20] = 0;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(a1[14]);
    a1[14] = 0;
  }

  qmi::Client::stop((a1 + 15));
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    if (!a2[1])
    {
      return;
    }
  }

  else if (!*(a2 + 23))
  {
    return;
  }

  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    if ((v6 & 0x80000000) != 0)
    {
      a2 = *a2;
    }

    v8 = 136315138;
    v9 = a2;
    _os_log_error_impl(&dword_296ECF000, v7, OS_LOG_TYPE_ERROR, "%s", &v8, 0xCu);
  }
}

void ___ZN4diag16QMICommandDriver15startTimer_syncEjN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[4])
      {
        (*(a1[6] + 16))();
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void *__copy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE48c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(void *a1, void *a2)
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

void __destroy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE48c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
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

void ___ZN4diag16QMICommandDriver15onLowPower_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v12 = v4;
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
        goto LABEL_14;
      }

      v6 = v3[14];
      if (v6)
      {
        dispatch_source_cancel(v6);
        dispatch_release(v3[14]);
        v3[14] = 0;
      }

      v7 = v3[20];
      if (!v7 || (v3[20] = 0, dispatch_group_leave(v7), dispatch_release(v7), group = 0, diag::CommandDriver::notifyOfEvent_sync(), v8 = v3[5], !os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
      {
LABEL_14:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_11:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      *v9 = 0;
      _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "LowPower Timeout", v9, 2u);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_296F8FE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, ...)
{
  va_start(va, group);
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver15onLowPower_syncEv_block_invoke_33(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = v3[14];
        if (v6)
        {
          dispatch_source_cancel(v6);
          dispatch_release(v3[14]);
          v3[14] = 0;
        }

        v7 = v3[20];
        if (v7)
        {
          v3[20] = 0;
          dispatch_group_leave(v7);
          dispatch_release(v7);
          v8 = v3[5];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I LowPower Complete", v9, 2u);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void diag::QMICommandDriver::setInterface_sync(uint64_t a1, int a2, void **a3)
{
  if ((a2 - 1) > 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = dword_296FC2D30[a2 - 1];
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v7;
  v45 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v44);
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v8 = ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v41 = ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v42 = &__block_descriptor_tmp_38_2;
  v43 = v6;
  v9 = *(&v44 + 1);
  v10 = v45;
  v11 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    v11 = *(&v44 + 1);
    while (*(*v11 + 8) != 1)
    {
      if (++v11 == v45)
      {
        goto LABEL_12;
      }
    }
  }

  if (v11 == v45)
  {
LABEL_12:
    v14 = operator new(0x10uLL);
    v14[8] = 1;
    *v14 = &unk_2A1E1F438;
    *(v14 + 3) = 0;
    v13 = v14 + 12;
    if (v10 >= *(&v45 + 1))
    {
      v16 = v10 - v9;
      v17 = (v10 - v9) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v19 = *(&v45 + 1) - v9;
      if ((*(&v45 + 1) - v9) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      v30 = a3;
      if (v20)
      {
        if (v20 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v21 = v14;
        v22 = v14 + 12;
        v23 = operator new(8 * v20);
        v14 = v21;
      }

      else
      {
        v22 = v14 + 12;
        v23 = 0;
      }

      v24 = &v23[8 * v17];
      *v24 = v14;
      v15 = v24 + 8;
      memcpy(v23, v9, v16);
      *(&v44 + 1) = v23;
      *&v45 = v15;
      *(&v45 + 1) = &v23[8 * v20];
      if (v9)
      {
        operator delete(v9);
      }

      v13 = v22;
      a3 = v30;
    }

    else
    {
      *v10 = v14;
      v15 = v10 + 8;
    }

    *&v45 = v15;
    v8 = v41;
  }

  else
  {
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 12;
  }

  v8(v40, v13);
  v25 = *(a1 + 16);
  if (!v25 || (v26 = *(a1 + 8), (v27 = std::__shared_weak_count::lock(v25)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28 = v27;
  atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v28);
  }

  v35 = a1 + 120;
  v36 = QMIServiceMsg::create();
  v37 = 25000;
  v38 = 0;
  v39 = 0;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v31[3] = &__block_descriptor_tmp_42_1;
  v31[4] = a1;
  v31[5] = v26;
  v32 = v28;
  atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v34 = a2;
  v29 = *a3;
  if (*a3)
  {
    v29 = _Block_copy(v29);
  }

  v33 = v29;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v31;
  v39 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v39)
  {
    _Block_release(v39);
  }

  if (v33)
  {
    _Block_release(v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  std::__shared_weak_count::__release_weak(v28);
  qmi::MutableMessageBase::~MutableMessageBase(&v44);
}

void sub_296F9036C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  std::__shared_weak_count::__release_weak(v28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F903B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F903CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v20 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      v19 = v8;
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error setting interface", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          capabilities::diag::asString();
          v12 = v18 >= 0 ? buf : *buf;
          *v21 = 136315138;
          v22 = v12;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Interface set to: %s", v21, 0xCu);
          if (v18 < 0)
          {
            operator delete(*buf);
          }
        }

        v13 = a1[7];
        if (v13)
        {
          v14[0] = MEMORY[0x29EDCA5F8];
          v14[1] = 1174405120;
          v14[2] = ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_39;
          v14[3] = &__block_descriptor_tmp_40_4;
          aBlock = _Block_copy(v13);
          v16 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v14);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F905EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296F90600(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(void *a1, void *a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
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

void diag::QMICommandDriver::setBufferingMode_sync(uint64_t a1, int a2, void **a3)
{
  if ((a2 - 1) > 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = dword_296FC2D30[a2 - 1];
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v7;
  v45 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v44);
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v8 = ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v41 = ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v42 = &__block_descriptor_tmp_44_1;
  v43 = v6;
  v9 = *(&v44 + 1);
  v10 = v45;
  v11 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    v11 = *(&v44 + 1);
    while (*(*v11 + 8) != 1)
    {
      if (++v11 == v45)
      {
        goto LABEL_12;
      }
    }
  }

  if (v11 == v45)
  {
LABEL_12:
    v14 = operator new(0x10uLL);
    v14[8] = 1;
    *v14 = &unk_2A1E1F4C0;
    *(v14 + 3) = 0;
    v13 = v14 + 12;
    if (v10 >= *(&v45 + 1))
    {
      v16 = v10 - v9;
      v17 = (v10 - v9) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v19 = *(&v45 + 1) - v9;
      if ((*(&v45 + 1) - v9) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      v30 = a3;
      if (v20)
      {
        if (v20 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v21 = v14;
        v22 = v14 + 12;
        v23 = operator new(8 * v20);
        v14 = v21;
      }

      else
      {
        v22 = v14 + 12;
        v23 = 0;
      }

      v24 = &v23[8 * v17];
      *v24 = v14;
      v15 = v24 + 8;
      memcpy(v23, v9, v16);
      *(&v44 + 1) = v23;
      *&v45 = v15;
      *(&v45 + 1) = &v23[8 * v20];
      if (v9)
      {
        operator delete(v9);
      }

      v13 = v22;
      a3 = v30;
    }

    else
    {
      *v10 = v14;
      v15 = v10 + 8;
    }

    *&v45 = v15;
    v8 = v41;
  }

  else
  {
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 12;
  }

  v8(v40, v13);
  v25 = *(a1 + 16);
  if (!v25 || (v26 = *(a1 + 8), (v27 = std::__shared_weak_count::lock(v25)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28 = v27;
  atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v28);
  }

  v35 = a1 + 120;
  v36 = QMIServiceMsg::create();
  v37 = 25000;
  v38 = 0;
  v39 = 0;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v31[3] = &__block_descriptor_tmp_51_3;
  v31[4] = a1;
  v31[5] = v26;
  v32 = v28;
  atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v34 = a2;
  v29 = *a3;
  if (*a3)
  {
    v29 = _Block_copy(v29);
  }

  v33 = v29;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v31;
  v39 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v39)
  {
    _Block_release(v39);
  }

  if (v33)
  {
    _Block_release(v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  std::__shared_weak_count::__release_weak(v28);
  qmi::MutableMessageBase::~MutableMessageBase(&v44);
}

void sub_296F90AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  std::__shared_weak_count::__release_weak(v28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F90B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F90B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v20 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      v19 = v8;
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error setting buffering mode", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          capabilities::diag::asString();
          v12 = v18 >= 0 ? buf : *buf;
          *v21 = 136315138;
          v22 = v12;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Buffering mode set to: %s", v21, 0xCu);
          if (v18 < 0)
          {
            operator delete(*buf);
          }
        }

        v13 = a1[7];
        if (v13)
        {
          v14[0] = MEMORY[0x29EDCA5F8];
          v14[1] = 1174405120;
          v14[2] = ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_45;
          v14[3] = &__block_descriptor_tmp_48_3;
          aBlock = _Block_copy(v13);
          v16 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v14);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F90D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296F90D6C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void diag::QMICommandDriver::setWaterMarks_sync(uint64_t a1, __int16 a2, __int16 a3, void **a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72 = v8;
  v73 = v8;
  qmi::MutableMessageBase::MutableMessageBase(&v72);
  v68[0] = MEMORY[0x29EDCA5F8];
  v68[1] = 0x40000000;
  v9 = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v69 = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v70 = &__block_descriptor_tmp_53_1;
  v71 = a2;
  v10 = *(&v72 + 1);
  v11 = v73;
  v12 = *(&v72 + 1);
  if (*(&v72 + 1) != v73)
  {
    v12 = *(&v72 + 1);
    while (*(*v12 + 8) != 17)
    {
      if (++v12 == v73)
      {
        goto LABEL_9;
      }
    }
  }

  if (v12 == v73)
  {
LABEL_9:
    v15 = operator new(0x10uLL);
    v15[8] = 17;
    *v15 = &unk_2A1E1F510;
    *(v15 + 5) = 0;
    v14 = v15 + 10;
    if (v11 >= *(&v73 + 1))
    {
      v17 = v11 - v10;
      v18 = (v11 - v10) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        goto LABEL_64;
      }

      v20 = *(&v73 + 1) - v10;
      if ((*(&v73 + 1) - v10) >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v50 = v15 + 10;
      if (v21)
      {
        v52 = a2;
        if (v21 >> 61)
        {
          goto LABEL_65;
        }

        v22 = a3;
        v23 = a4;
        v24 = v15;
        v25 = operator new(8 * v21);
        v15 = v24;
        a4 = v23;
        a3 = v22;
        a2 = v52;
      }

      else
      {
        v25 = 0;
      }

      v26 = &v25[8 * v18];
      *v26 = v15;
      v16 = v26 + 8;
      memcpy(v25, v10, v17);
      *(&v72 + 1) = v25;
      *&v73 = v16;
      *(&v73 + 1) = &v25[8 * v21];
      if (v10)
      {
        operator delete(v10);
      }

      v14 = v50;
    }

    else
    {
      *v11 = v15;
      v16 = v11 + 8;
    }

    *&v73 = v16;
    v9 = v69;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_63;
    }

    v14 = v13 + 10;
  }

  v9(v68, v14);
  v64[0] = MEMORY[0x29EDCA5F8];
  v64[1] = 0x40000000;
  v27 = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v65 = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v66 = &__block_descriptor_tmp_55_1;
  v67 = a3;
  v28 = *(&v72 + 1);
  v29 = v73;
  v30 = *(&v72 + 1);
  if (*(&v72 + 1) != v73)
  {
    v30 = *(&v72 + 1);
    while (*(*v30 + 8) != 16)
    {
      if (++v30 == v73)
      {
        goto LABEL_33;
      }
    }
  }

  if (v30 == v73)
  {
LABEL_33:
    v33 = operator new(0x10uLL);
    v33[8] = 16;
    *v33 = &unk_2A1E1F560;
    *(v33 + 5) = 0;
    v32 = v33 + 10;
    if (v29 < *(&v73 + 1))
    {
      *v29 = v33;
      v34 = v29 + 8;
LABEL_48:
      *&v73 = v34;
      v27 = v65;
      goto LABEL_49;
    }

    v35 = v29 - v28;
    v36 = (v29 - v28) >> 3;
    v37 = v36 + 1;
    if (!((v36 + 1) >> 61))
    {
      v38 = *(&v73 + 1) - v28;
      if ((*(&v73 + 1) - v28) >> 2 > v37)
      {
        v37 = v38 >> 2;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      v51 = v33 + 10;
      if (!v39)
      {
        v43 = 0;
        goto LABEL_45;
      }

      v53 = a2;
      if (!(v39 >> 61))
      {
        v40 = a3;
        v41 = a4;
        v42 = v33;
        v43 = operator new(8 * v39);
        v33 = v42;
        a4 = v41;
        a3 = v40;
        a2 = v53;
LABEL_45:
        v44 = &v43[8 * v36];
        *v44 = v33;
        v34 = v44 + 8;
        memcpy(v43, v28, v35);
        *(&v72 + 1) = v43;
        *&v73 = v34;
        *(&v73 + 1) = &v43[8 * v39];
        if (v28)
        {
          operator delete(v28);
        }

        v32 = v51;
        goto LABEL_48;
      }

LABEL_65:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_64:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (!v31)
  {
LABEL_63:
    __cxa_bad_cast();
  }

  v32 = v31 + 10;
LABEL_49:
  v27(v64, v32);
  v45 = *(a1 + 16);
  if (!v45 || (v46 = *(a1 + 8), (v47 = std::__shared_weak_count::lock(v45)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v48 = v47;
  atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v48);
  }

  v59 = a1 + 120;
  v60 = QMIServiceMsg::create();
  v61 = 25000;
  v62 = 0;
  v63 = 0;
  v54[0] = MEMORY[0x29EDCA5F8];
  v54[1] = 1174405120;
  v54[2] = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_3;
  v54[3] = &__block_descriptor_tmp_62_4;
  v54[4] = a1;
  v54[5] = v46;
  v55 = v48;
  atomic_fetch_add_explicit(&v48->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v57 = a2;
  v58 = a3;
  v49 = *a4;
  if (*a4)
  {
    v49 = _Block_copy(v49);
  }

  v56 = v49;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v54;
  v63 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v63)
  {
    _Block_release(v63);
  }

  if (v56)
  {
    _Block_release(v56);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  std::__shared_weak_count::__release_weak(v48);
  qmi::MutableMessageBase::~MutableMessageBase(&v72);
}

void sub_296F91368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock, uint64_t a19, ...)
{
  va_start(va, a19);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(va);
  std::__shared_weak_count::__release_weak(v19);
  qmi::MutableMessageBase::~MutableMessageBase((v20 - 176));
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error setting water marks", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 64);
          v13 = *(a1 + 66);
          *buf = 67109376;
          v19 = v12;
          v20 = 1024;
          v21 = v13;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Water marks set to: %u,%u", buf, 0xEu);
        }

        v14 = *(a1 + 56);
        if (v14)
        {
          v15[0] = MEMORY[0x29EDCA5F8];
          v15[1] = 1174405120;
          v15[2] = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_56;
          v15[3] = &__block_descriptor_tmp_59_4;
          aBlock = _Block_copy(v14);
          v17 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v15);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F915D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::drainBuffer_sync(uint64_t a1, void **a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v4;
  v18[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v18);
  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(a1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v13 = a1 + 120;
  v14 = QMIServiceMsg::create();
  v15 = 25000;
  v16 = 0;
  v17 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4diag16QMICommandDriver16drainBuffer_syncEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_69_7;
  v10[4] = a1;
  v10[5] = v6;
  v11 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = *a2;
  if (*a2)
  {
    v9 = _Block_copy(v9);
  }

  v12 = v9;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v10;
  v17 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v17)
  {
    _Block_release(v17);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::__shared_weak_count::__release_weak(v8);
  qmi::MutableMessageBase::~MutableMessageBase(v18);
}

void sub_296F917E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  std::__shared_weak_count::__release_weak(v22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F9182C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver16drainBuffer_syncEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error requesting drain of DIAG buffer", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Requested to drain DIAG buffer", buf, 2u);
        }

        v12 = a1[7];
        if (v12)
        {
          v13[0] = MEMORY[0x29EDCA5F8];
          v13[1] = 1174405120;
          v13[2] = ___ZN4diag16QMICommandDriver16drainBuffer_syncEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_63;
          v13[3] = &__block_descriptor_tmp_66_0;
          aBlock = _Block_copy(v12);
          v15 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v13);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void diag::QMICommandDriver::setPresetID_sync(uint64_t a1, char a2, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v6;
  v42 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v41);
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 0x40000000;
  v7 = ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v38 = ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v39 = &__block_descriptor_tmp_71_1;
  v40 = a2;
  v8 = *(&v41 + 1);
  v9 = v42;
  v10 = *(&v41 + 1);
  if (*(&v41 + 1) != v42)
  {
    v10 = *(&v41 + 1);
    while (*(*v10 + 8) != 1)
    {
      if (++v10 == v42)
      {
        goto LABEL_9;
      }
    }
  }

  if (v10 == v42)
  {
LABEL_9:
    v13 = operator new(0x10uLL);
    v14 = v13;
    v13[4] = 1;
    *v13 = &unk_2A1E1F5B0;
    if (v9 >= *(&v42 + 1))
    {
      v16 = v9 - v8;
      v17 = (v9 - v8) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v19 = *(&v42 + 1) - v8;
      if ((*(&v42 + 1) - v8) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v21 = operator new(8 * v20);
      }

      else
      {
        v21 = 0;
      }

      v22 = &v21[8 * v17];
      *v22 = v14;
      v15 = v22 + 8;
      memcpy(v21, v8, v16);
      *(&v41 + 1) = v21;
      *&v42 = v15;
      *(&v42 + 1) = &v21[8 * v20];
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v9 = v13;
      v15 = v9 + 8;
    }

    v12 = v14 + 9;
    *&v42 = v15;
    v7 = v38;
  }

  else
  {
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 9;
  }

  v7(v37, v12);
  v23 = *(a1 + 16);
  if (!v23 || (v24 = *(a1 + 8), (v25 = std::__shared_weak_count::lock(v23)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v26 = v25;
  atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v26);
  }

  v32 = a1 + 120;
  v33 = QMIServiceMsg::create();
  v34 = 25000;
  v35 = 0;
  v36 = 0;
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v28[2] = ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v28[3] = &__block_descriptor_tmp_78_1;
  v28[4] = a1;
  v28[5] = v24;
  v29 = v26;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = a2;
  v27 = *a3;
  if (*a3)
  {
    v27 = _Block_copy(v27);
  }

  v30 = v27;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v28;
  v36 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v36)
  {
    _Block_release(v36);
  }

  if (v30)
  {
    _Block_release(v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  std::__shared_weak_count::__release_weak(v26);
  qmi::MutableMessageBase::~MutableMessageBase(&v41);
}

void sub_296F91DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  std::__shared_weak_count::__release_weak(v28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F91E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F91E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error setting mask preset ID", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 64);
          *buf = 67109120;
          v18 = v12;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Logging preset ID set to: %u", buf, 8u);
        }

        v13 = *(a1 + 56);
        if (v13)
        {
          v14[0] = MEMORY[0x29EDCA5F8];
          v14[1] = 1174405120;
          v14[2] = ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_72;
          v14[3] = &__block_descriptor_tmp_75_1;
          aBlock = _Block_copy(v13);
          v16 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v14);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F9201C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::isCurrentPresetID_sync(uint64_t a1, char a2, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v6;
  v21[1] = v6;
  qmi::MutableMessageBase::MutableMessageBase(v21);
  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(a1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  v16 = a1 + 120;
  v17 = QMIServiceMsg::create();
  v18 = 25000;
  v19 = 0;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_88;
  v12[4] = a1;
  v12[5] = v8;
  v13 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = a2;
  v11 = *a3;
  if (*a3)
  {
    v11 = _Block_copy(v11);
  }

  v14 = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15DIAGGetPresetID8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60870;
  aBlock[4] = v12;
  v20 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v20)
  {
    _Block_release(v20);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v10);
  qmi::MutableMessageBase::~MutableMessageBase(v21);
}

void sub_296F92234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  std::__shared_weak_count::__release_weak(v22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F92280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    v32 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v31 = v8;
      if (!v8)
      {
LABEL_19:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2000000000;
      v9 = *(a2 + 1);
      v30 = v9 == 0;
      if (v9)
      {
        v10 = *(v5 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error setting mask preset ID", buf, 2u);
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        v17[0] = MEMORY[0x29EDCA5F8];
        v17[1] = 1174405120;
        v17[2] = ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_82;
        v17[3] = &unk_2A1E1EEA0;
        v17[4] = v29;
        aBlock = _Block_copy(v11);
        ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v17);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      else
      {
        v20[0] = MEMORY[0x29EDCA5F8];
        v20[1] = 1174405120;
        v21 = ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
        v22 = &unk_2A1E1EE68;
        v23 = v29;
        v24 = v5;
        v28 = *(a1 + 64);
        v12 = *(a1 + 56);
        if (v12)
        {
          v12 = _Block_copy(v12);
        }

        v25 = v12;
        v26 = v8;
        v27 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v15 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v14, 1);
          buf[0] = *v15;
          v21(v20, buf);
        }

        v16 = v27;
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        if (v25)
        {
          _Block_release(v25);
        }
      }

LABEL_18:
      _Block_object_dispose(v29, 8);
      v7 = v32;
      if (!v32)
      {
        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_296F92540(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F92444);
}

void sub_296F92578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *aBlock)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 + 56);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose((v24 - 112), 8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v24 - 80);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(uint64_t a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 72) == v3;
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v3;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Current logging preset ID is: %u", buf, 8u);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_79;
    v9[3] = &unk_2A1E1EE30;
    v8 = _Block_copy(v6);
    v9[4] = *(a1 + 32);
    aBlock = v8;
    ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v7 + 8), v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void sub_296F926E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c48_ZTSNSt3__110shared_ptrIN4diag13CommandDriverEEE(void *a1, void *a2)
{
  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[7];
  v5 = a2[8];
  a1[6] = result;
  a1[7] = v6;
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c48_ZTSNSt3__110shared_ptrIN4diag13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  _Block_release(v2);
}

void diag::QMICommandDriver::isCurrentInterface_sync(uint64_t a1, int a2, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v6;
  v21[1] = v6;
  qmi::MutableMessageBase::MutableMessageBase(v21);
  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(a1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  v16 = a1 + 120;
  v17 = QMIServiceMsg::create();
  v18 = 25000;
  v19 = 0;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_103_0;
  v12[4] = a1;
  v12[5] = v8;
  v13 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = a2;
  v11 = *a3;
  if (*a3)
  {
    v11 = _Block_copy(v11);
  }

  v14 = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm9DIAGProbe8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60898;
  aBlock[4] = v12;
  v20 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v20)
  {
    _Block_release(v20);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v10);
  qmi::MutableMessageBase::~MutableMessageBase(v21);
}

void sub_296F92A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  std::__shared_weak_count::__release_weak(v22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F92A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    v32 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v31 = v8;
      if (!v8)
      {
LABEL_19:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2000000000;
      v9 = *(a2 + 1);
      v30 = v9 == 0;
      if (v9)
      {
        v10 = *(v5 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error checking for active DIAG interface", buf, 2u);
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        v17[0] = MEMORY[0x29EDCA5F8];
        v17[1] = 1174405120;
        v17[2] = ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_97;
        v17[3] = &unk_2A1E1EF78;
        v17[4] = v29;
        aBlock = _Block_copy(v11);
        ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v17);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      else
      {
        v20[0] = MEMORY[0x29EDCA5F8];
        v20[1] = 1174405120;
        v21 = ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
        v22 = &unk_2A1E1EF40;
        v23 = v29;
        v24 = v5;
        v28 = *(a1 + 64);
        v12 = *(a1 + 56);
        if (v12)
        {
          v12 = _Block_copy(v12);
        }

        v25 = v12;
        v26 = v8;
        v27 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v15 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v14, 1);
          buf[0] = *v15;
          v21(v20, buf);
        }

        v16 = v27;
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        if (v25)
        {
          _Block_release(v25);
        }
      }

LABEL_18:
      _Block_object_dispose(v29, 8);
      v7 = v32;
      if (!v32)
      {
        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_296F92D4C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F92C50);
}

void sub_296F92D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *aBlock)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 + 56);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose((v24 - 112), 8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v24 - 80);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(uint64_t a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  v4 = *a2;
  if (v4 > 2)
  {
    v5 = *(v3 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a1 + 72) == dword_296FC2D24[v4];
    v5 = *(v3 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  capabilities::diag::asString();
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  *buf = 136315138;
  v15 = p_p;
  _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Current DIAG interface is: %s", buf, 0xCu);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_9:
    v7 = *(a1 + 48);
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  operator delete(__p);
  v7 = *(a1 + 48);
  if (!v7)
  {
    return;
  }

LABEL_10:
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_89;
  v10[3] = &unk_2A1E1EF08;
  v9 = _Block_copy(v7);
  v10[4] = *(a1 + 32);
  aBlock = v9;
  ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v10);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_296F92F60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t diag::QMICommandDriver::validateCommands_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v13 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x1ED) != 0)
  {
    if (a2)
    {
      v2 = a2 & 0xFFFFFFFE;
      v4 = *(a1 + 40);
      a1 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Set interface unsupported", v12, 2u);
      }
    }

    if ((v2 & 4) != 0)
    {
      a1 = capabilities::diag::supportsBuffering(a1);
      if ((a1 & 1) == 0)
      {
        v2 = v2 & 0xFFFFFFFB;
        v5 = *(v3 + 40);
        a1 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Set buffering mode unsupported", v12, 2u);
        }
      }
    }

    if ((v2 & 8) != 0)
    {
      a1 = capabilities::diag::supportsBuffering(a1);
      if ((a1 & 1) == 0)
      {
        v2 = v2 & 0xFFFFFFF7;
        v6 = *(v3 + 40);
        a1 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Set water marks unsupported", v12, 2u);
        }
      }
    }

    if ((v2 & 0x20) != 0)
    {
      a1 = capabilities::diag::supportsBuffering(a1);
      if ((a1 & 1) == 0)
      {
        v2 = v2 & 0xFFFFFFDF;
        v7 = *(v3 + 40);
        a1 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEFAULT, "#I Draining DIAG buffer unsupported", v12, 2u);
        }
      }
    }

    if ((v2 & 0x40) != 0)
    {
      a1 = capabilities::diag::supportsMultipleMasks(a1);
      if ((a1 & 1) == 0)
      {
        v2 = v2 & 0xFFFFFFBF;
        v8 = *(v3 + 40);
        a1 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Setting logging preset ID unsupported", v12, 2u);
        }
      }
    }

    if ((v2 & 0x80) != 0 && (capabilities::diag::supportsMultipleMasks(a1) & 1) == 0)
    {
      v2 = v2 & 0xFFFFFF7F;
      v9 = *(v3 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_296ECF000, v9, OS_LOG_TYPE_DEFAULT, "#I Checking current logging preset ID unsupported", v12, 2u);
      }
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = v2;
      _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Invalid QMI Command mask passed - 0x%x", v12, 8u);
    }

    return 0;
  }

  return v2;
}

void diag::QMICommandDriver::stop(diag::QMICommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN4diag16QMICommandDriver4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_105_0;
  v1[4] = this;
  ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped(this + 1, v1);
}

void ___ZN4diag16QMICommandDriver4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 11;
  strcpy(__p, "Forced stop");
  diag::QMICommandDriver::onError_sync(v1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296F93344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void diag::QMICommandDriver::perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = diag::QMICommandDriver::validateCommands_sync(a1, a2);
  if (v9)
  {
    v10 = v9;
    block = 0;
    p_block = &block;
    v74 = 0x2000000000;
    LODWORD(v75) = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2000000000;
    v71 = 1;
    if (v9)
    {
      v62[0] = MEMORY[0x29EDCA5F8];
      v62[1] = 1174405120;
      v62[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
      v62[3] = &unk_2A1E1F018;
      v62[5] = &v68;
      v62[6] = a1;
      v65 = a3;
      v66 = a4;
      v62[4] = &block;
      v67 = v9;
      v11 = *a5;
      if (*a5)
      {
        v11 = _Block_copy(v11);
      }

      v12 = *(a5 + 8);
      v63 = v11;
      v64 = v12;
      if (v12)
      {
        dispatch_retain(v12);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v62);
      if (v64)
      {
        dispatch_release(v64);
      }

      if (v63)
      {
        _Block_release(v63);
      }
    }

    if ((v10 & 4) != 0 && *(v69 + 24) == 1)
    {
      v56[0] = MEMORY[0x29EDCA5F8];
      v56[1] = 1174405120;
      v56[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_110;
      v56[3] = &unk_2A1E1F088;
      v59 = a3;
      v60 = a4;
      v56[4] = &block;
      v56[5] = &v68;
      v56[6] = a1;
      v61 = v10;
      v13 = *a5;
      if (*a5)
      {
        v13 = _Block_copy(v13);
      }

      v14 = *(a5 + 8);
      aBlock = v13;
      object = v14;
      if (v14)
      {
        dispatch_retain(v14);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v56);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }
    }

    if ((v10 & 8) != 0 && *(v69 + 24) == 1)
    {
      v50[0] = MEMORY[0x29EDCA5F8];
      v50[1] = 1174405120;
      v50[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_118;
      v50[3] = &unk_2A1E1F0F8;
      v53 = a3;
      v54 = a4;
      v50[4] = &block;
      v50[5] = &v68;
      v50[6] = a1;
      v55 = v10;
      v15 = *a5;
      if (*a5)
      {
        v15 = _Block_copy(v15);
      }

      v16 = *(a5 + 8);
      v51 = v15;
      v52 = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v50);
      if (v52)
      {
        dispatch_release(v52);
      }

      if (v51)
      {
        _Block_release(v51);
      }
    }

    if ((v10 & 0x20) != 0 && *(v69 + 24) == 1)
    {
      v46[0] = MEMORY[0x29EDCA5F8];
      v46[1] = 1174405120;
      v46[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_126;
      v46[3] = &unk_2A1E1F168;
      v46[4] = &block;
      v46[5] = &v68;
      v46[6] = a1;
      v49 = v10;
      v17 = *a5;
      if (*a5)
      {
        v17 = _Block_copy(v17);
      }

      v18 = *(a5 + 8);
      v47 = v17;
      v48 = v18;
      if (v18)
      {
        dispatch_retain(v18);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v46);
      if (v48)
      {
        dispatch_release(v48);
      }

      if (v47)
      {
        _Block_release(v47);
      }
    }

    if ((v10 & 0x40) != 0 && *(v69 + 24) == 1)
    {
      v40[0] = MEMORY[0x29EDCA5F8];
      v40[1] = 1174405120;
      v40[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_134;
      v40[3] = &unk_2A1E1F1D8;
      v43 = a3;
      v44 = a4;
      v40[4] = &block;
      v40[5] = &v68;
      v40[6] = a1;
      v45 = v10;
      v19 = *a5;
      if (*a5)
      {
        v19 = _Block_copy(v19);
      }

      v20 = *(a5 + 8);
      v41 = v19;
      v42 = v20;
      if (v20)
      {
        dispatch_retain(v20);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v40);
      if (v42)
      {
        dispatch_release(v42);
      }

      if (v41)
      {
        _Block_release(v41);
      }
    }

    if ((v10 & 0x80) != 0 && *(v69 + 24) == 1)
    {
      v34[0] = MEMORY[0x29EDCA5F8];
      v34[1] = 1174405120;
      v34[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_142;
      v34[3] = &unk_2A1E1F248;
      v37 = a3;
      v38 = a4;
      v34[4] = &block;
      v34[5] = &v68;
      v34[6] = a1;
      v39 = v10;
      v21 = *a5;
      if (*a5)
      {
        v21 = _Block_copy(v21);
      }

      v22 = *(a5 + 8);
      v35 = v21;
      v36 = v22;
      if (v22)
      {
        dispatch_retain(v22);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v34);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (v35)
      {
        _Block_release(v35);
      }
    }

    if ((v10 & 0x100) != 0 && *(v69 + 24) == 1)
    {
      v28[0] = MEMORY[0x29EDCA5F8];
      v28[1] = 1174405120;
      v28[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_150;
      v28[3] = &unk_2A1E1F2B8;
      v31 = a3;
      v32 = a4;
      v28[4] = &block;
      v28[5] = &v68;
      v28[6] = a1;
      v33 = v10;
      v23 = *a5;
      if (*a5)
      {
        v23 = _Block_copy(v23);
      }

      v24 = *(a5 + 8);
      v29 = v23;
      v30 = v24;
      if (v24)
      {
        dispatch_retain(v24);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v28);
      if (v30)
      {
        dispatch_release(v30);
      }

      if (v29)
      {
        _Block_release(v29);
      }
    }

    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(&block, 8);
  }

  else
  {
    if (*a5)
    {
      v25 = _Block_copy(*a5);
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a5 + 8);
    block = MEMORY[0x29EDCA5F8];
    p_block = 1174405120;
    v74 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v75 = &__block_descriptor_tmp_177_0;
    if (v25)
    {
      v27 = _Block_copy(v25);
    }

    else
    {
      v27 = 0;
    }

    v76 = v27;
    v77 = 1;
    dispatch_async(v26, &block);
    if (v76)
    {
      _Block_release(v76);
    }

    if (v25)
    {
      _Block_release(v25);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    capabilities::diag::asString();
    v4 = v16 >= 0 ? &__p : __p;
    *buf = 136315138;
    v18 = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting interface to: %s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  v5 = *(a1 + 72);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_106;
  aBlock[3] = &unk_2A1E1EFE0;
  v10 = *(a1 + 32);
  v13 = *(a1 + 88);
  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a1 + 64);
  v11 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = _Block_copy(aBlock);
  v14 = v8;
  diag::QMICommandDriver::setInterface_sync(v2, v5, &v14);
  if (v8)
  {
    _Block_release(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    _Block_release(v11);
  }
}

void sub_296F93B68(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_106(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 1u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void __copy_helper_block_e8_48c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_48c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    _Block_release(v3);
  }
}

void __copy_helper_block_e8_56c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_56c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_110(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    capabilities::diag::asString();
    v4 = v16 >= 0 ? &__p : __p;
    *buf = 136315138;
    v18 = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting buffering mode to: %s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  v5 = *(a1 + 76);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_111;
  aBlock[3] = &unk_2A1E1F050;
  v10 = *(a1 + 32);
  v13 = *(a1 + 88);
  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a1 + 64);
  v11 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = _Block_copy(aBlock);
  v14 = v8;
  diag::QMICommandDriver::setBufferingMode_sync(v2, v5, &v14);
  if (v8)
  {
    _Block_release(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    _Block_release(v11);
  }
}

void sub_296F93FA8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_111(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 4u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_118(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 82);
    v5 = *(a1 + 80);
    *buf = 67109376;
    v18 = v4;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting water marks to: %u,%u", buf, 0xEu);
  }

  v6 = *(a1 + 82);
  v7 = *(a1 + 80);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_119;
  v11[3] = &unk_2A1E1F0C0;
  v12 = *(a1 + 32);
  v15 = *(a1 + 88);
  v8 = *(a1 + 56);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a1 + 64);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = _Block_copy(v11);
  v16 = v10;
  diag::QMICommandDriver::setWaterMarks_sync(v2, v6, v7, &v16);
  if (v10)
  {
    _Block_release(v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_296F942A0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_119(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 8u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_126(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Draining Baseband DIAG buffer", buf, 2u);
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_127;
  v7[3] = &unk_2A1E1F130;
  v8 = *(a1 + 32);
  v11 = *(a1 + 72);
  v4 = *(a1 + 56);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 64);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = _Block_copy(v7);
  v12 = v6;
  diag::QMICommandDriver::drainBuffer_sync(v2, &v12);
  if (v6)
  {
    _Block_release(v6);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_296F94540(_Unwind_Exception *a1)
{
  if (v1)
  {
    _Block_release(v1);
  }

  dispatch::callback<void({block_pointer})(BOOL)>::~callback(v2 + 48);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_127(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 0x20u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_134(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 84);
    *buf = 67109120;
    v16 = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting logging preset ID to: %u", buf, 8u);
  }

  v5 = *(a1 + 84);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_135;
  v9[3] = &unk_2A1E1F1A0;
  v10 = *(a1 + 32);
  v13 = *(a1 + 88);
  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a1 + 64);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = _Block_copy(v9);
  v14 = v8;
  diag::QMICommandDriver::setPresetID_sync(v2, v5, &v14);
  if (v8)
  {
    _Block_release(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_296F947F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_135(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 0x40u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_142(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 84);
    *buf = 67109120;
    v16 = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Checking if DIAG preset ID is: %u", buf, 8u);
  }

  v5 = *(a1 + 84);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_143;
  v9[3] = &unk_2A1E1F210;
  v10 = *(a1 + 32);
  v13 = *(a1 + 88);
  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a1 + 64);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = _Block_copy(v9);
  v14 = v8;
  diag::QMICommandDriver::isCurrentPresetID_sync(v2, v5, &v14);
  if (v8)
  {
    _Block_release(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_296F94AD0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_143(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 0x80u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_150(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    capabilities::diag::asString();
    v4 = v16 >= 0 ? &__p : __p;
    *buf = 136315138;
    v18 = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Checking if DIAG is active on: %s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  v5 = *(a1 + 72);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_151;
  aBlock[3] = &unk_2A1E1F280;
  v10 = *(a1 + 32);
  v13 = *(a1 + 88);
  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a1 + 64);
  v11 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = _Block_copy(aBlock);
  v14 = v8;
  diag::QMICommandDriver::isCurrentInterface_sync(v2, v5, &v14);
  if (v8)
  {
    _Block_release(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    _Block_release(v11);
  }
}

void sub_296F94DD8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_151(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 0x100u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

atomic_ullong *std::shared_ptr<diag::QMICommandDriver>::shared_ptr[abi:ne200100]<diag::QMICommandDriver,std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E1F3D0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296F95068(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver*)#1}::operator() const(diag::QMICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<diag::QMICommandDriver *,std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver *)#1},std::allocator<diag::QMICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<diag::QMICommandDriver *,std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver *)#1},std::allocator<diag::QMICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4diag13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4diag13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4diag13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4diag13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver*)#1}::operator() const(diag::QMICommandDriver*)::{lambda(void *)#1}::__invoke(diag::QMICommandDriver *a1)
{
  if (a1)
  {
    diag::QMICommandDriver::~QMICommandDriver(a1);

    operator delete(v1);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 12);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGConfig>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1F438;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4diag13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E1F468;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4diag13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4diag13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  cast_message_type<qmi::ResponseBase const&>::cast(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_296F95474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGBuffering>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 12);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGBuffering>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1F4C0;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGWMLow>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGWMLow>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1F510;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGWMHigh>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGWMHigh>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1F560;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGPresetID>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGPresetID>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1F5B0;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15DIAGGetPresetID8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F95778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm9DIAGProbe8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F95894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void data::QMIDataCommandDriver::checkError(const qmi::ResponseBase *a1@<X1>, CFTypeRef *a2@<X8>)
{
  *a2 = 0;
  if (!*(a1 + 1))
  {
    return;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *v23 = v4;
  v24 = v4;
  v21 = v4;
  v22 = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  v5 = qmi::asString();
  v6 = strlen(v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 3);
  v9 = MEMORY[0x29C268D20](v8, *(a1 + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ")", 2);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v12 = v25;
    if (v25 < *(&v22 + 1))
    {
      *&v25 = *(&v22 + 1);
      v12 = *(&v22 + 1);
    }

    v13 = v22;
    v10 = v12 - v22;
    if ((v12 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v17) = 0;
      v11 = __p;
      goto LABEL_16;
    }

    v13 = *(&v20 + 1);
    v10 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_28:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v11 = operator new(v14);
    __p[1] = v10;
    v17 = v14 | 0x8000000000000000;
    __p[0] = v11;
    goto LABEL_15;
  }

  HIBYTE(v17) = v10;
  v11 = __p;
  if (v10)
  {
LABEL_15:
    memmove(v11, v13, v10);
  }

LABEL_16:
  *(v11 + v10) = 0;
  CreateError();
  if (&cf == a2)
  {
    goto LABEL_19;
  }

  v15 = *a2;
  *a2 = cf;
  cf = 0;
  if (v15)
  {
    CFRelease(v15);
LABEL_19:
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  MEMORY[0x29C268E60](v26);
}

void sub_296F95BDC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ostringstream::~ostringstream(&a13, MEMORY[0x29EDC9538]);
  MEMORY[0x29C268E60](va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(v26);
  _Unwind_Resume(a1);
}

uint64_t data::QMIDataCommandDriver::create@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x78uLL);
  v5 = a1[1];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v13 = v5;
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v13 = 0;
  }

  data::CommandDriver::CommandDriver();
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  *v4 = &unk_2A1E1F618;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *a2 = v4;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v7 = v6 + 1;
  *v6 = &unk_2A1E1FC18;
  v6[2] = 0;
  v6[3] = v4;
  a2[1] = v6;
  v8 = *(v4 + 2);
  if (v8)
  {
    if (v8->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v6 + 2, 1uLL, memory_order_relaxed);
      *(v4 + 1) = v4;
      *(v4 + 2) = v6;
      v9 = v6;
      std::__shared_weak_count::__release_weak(v8);
      v6 = v9;
      if (!atomic_fetch_add(v7, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v6 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 1) = v4;
    *(v4 + 2) = v6;
    if (!atomic_fetch_add(v7, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_12:
      v10 = v6;
      (*(*v6 + 16))(v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  return (*(**a2 + 80))(*a2);
}

void sub_296F95E8C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<data::QMIDataCommandDriver> ctu::SharedSynchronizable<data::CommandDriver>::make_shared_ptr<data::QMIDataCommandDriver>(data::QMIDataCommandDriver*)::{lambda(data::QMIDataCommandDriver*)#1}::operator() const(data::QMIDataCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_296F95EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F95ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t data::QMIDataCommandDriver::QMIDataCommandDriver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  data::CommandDriver::CommandDriver();
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  *a1 = &unk_2A1E1F618;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

{
  v3 = a2[1];
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  data::CommandDriver::CommandDriver();
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  *a1 = &unk_2A1E1F618;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void data::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E1FBB0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C268320](this + 5);
  v3 = this[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[3];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void data::QMIDataCommandDriver::~QMIDataCommandDriver(void **this)
{
  *this = &unk_2A1E1F618;
  qmi::Client::~Client((this + 11));

  data::CommandDriver::~CommandDriver(this);
}

{
  *this = &unk_2A1E1F618;
  qmi::Client::~Client((this + 11));

  data::CommandDriver::~CommandDriver(this);
}

{
  *this = &unk_2A1E1F618;
  qmi::Client::~Client((this + 11));
  data::CommandDriver::~CommandDriver(this);

  operator delete(v2);
}

void data::QMIDataCommandDriver::init(data::QMIDataCommandDriver *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = (this + 8);
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN4data20QMIDataCommandDriver4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_17_1;
  v9[4] = this;
  v9[5] = v5;
  v10 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped(v4, v9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN4data20QMIDataCommandDriver4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v51, *(v2 + 48));
  if (!v51)
  {
    Name = data::CommandDriver::getName(v2);
    v24 = strlen(Name);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v24 | 7) + 1;
      }

      p_dst = operator new(v36);
      v46 = v25;
      v47 = v36 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v47) = v24;
      p_dst = &__dst;
      if (!v24)
      {
        LOBYTE(__dst) = 0;
        v27 = *(v2 + 24);
        v41 = v27;
        if (!v27)
        {
LABEL_46:
          v28 = *(v2 + 16);
          if (!v28 || (v29 = std::__shared_weak_count::lock(v28)) == 0)
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v30 = v29;
          atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v31 = std::__shared_weak_count::lock(v29);
            if (v31)
            {
LABEL_50:
              atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v40 = v31;
LABEL_51:
              std::__shared_weak_count::__release_weak(v30);
              if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v31->__on_zero_shared)(v31);
                std::__shared_weak_count::__release_weak(v31);
              }

              qmi::Client::createWithQueue();
              v32 = v50;
              v50 = 0uLL;
              v33 = *(v2 + 112);
              *(v2 + 104) = v32;
              if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v33->__on_zero_shared)(v33);
                std::__shared_weak_count::__release_weak(v33);
              }

              qmi::Client::~Client(buf);
              if (v40)
              {
                std::__shared_weak_count::__release_weak(v40);
              }

              v15 = v41;
              if (v41)
              {
                goto LABEL_28;
              }

              goto LABEL_29;
            }
          }

          else
          {
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v30);
            v31 = std::__shared_weak_count::lock(v30);
            if (v31)
            {
              goto LABEL_50;
            }
          }

          v40 = v31;
          goto LABEL_51;
        }

LABEL_45:
        dispatch_retain(v27);
        goto LABEL_46;
      }
    }

    memmove(p_dst, Name, v25);
    *(p_dst + v25) = 0;
    v27 = *(v2 + 24);
    v41 = v27;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v4 = data::CommandDriver::getName(v2);
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v5 | 7) + 1;
    }

    v7 = operator new(v34);
    v46 = v6;
    v47 = v34 | 0x8000000000000000;
    __dst = v7;
LABEL_65:
    memmove(v7, v4, v6);
    *(v7 + v6) = 0;
    v8 = *(v2 + 24);
    v44 = v8;
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  HIBYTE(v47) = v5;
  v7 = &__dst;
  if (v5)
  {
    goto LABEL_65;
  }

  LOBYTE(__dst) = 0;
  v8 = *(v2 + 24);
  v44 = v8;
  if (v8)
  {
LABEL_8:
    dispatch_retain(v8);
  }

LABEL_9:
  v9 = *(v2 + 16);
  if (!v9 || (v10 = std::__shared_weak_count::lock(v9)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_68:
    v43 = v12;
    goto LABEL_14;
  }

  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_68;
  }

LABEL_13:
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v43 = v12;
LABEL_14:
  std::__shared_weak_count::__release_weak(v11);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v42 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v13 = v50;
  v50 = 0uLL;
  v14 = *(v2 + 112);
  *(v2 + 104) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  qmi::Client::~Client(buf);
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  v15 = v44;
  if (v44)
  {
LABEL_28:
    dispatch_release(v15);
  }

LABEL_29:
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__dst);
  }

  v16 = a1[6];
  v39 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v17 = a1[6];
  v38 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v18 = a1[6];
  v37 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  *buf = 0;
  v49 = 0;
  v19 = a1[6];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = a1[5];
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *buf = v21;
      v49 = v20;
      if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v22 = v20;
        (v20->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    else
    {
      *buf = 0;
      v49 = 0;
    }
  }

  qmi::Client::setClientHandle();
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  qmi::Client::start((v2 + 88));
  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  v35 = v52;
  if (v52)
  {
    if (!atomic_fetch_add((v52 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v35->__on_zero_shared)(v35);
      std::__shared_weak_count::__release_weak(v35);
    }
  }
}

void sub_296F96BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, dispatch_object_t object, char a34)
{
  if (a32)
  {
    std::__shared_weak_count::__release_weak(a32);
    if ((*(v34 - 161) & 0x80000000) == 0)
    {
LABEL_3:
      v36 = object;
      if (!object)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v34 - 161) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v34 - 184));
  v36 = object;
  if (!object)
  {
LABEL_8:
    if (*(v34 - 129) < 0)
    {
      operator delete(*(v34 - 152));
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v34 - 96);
      _Unwind_Resume(a1);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v34 - 96);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v36);
  goto LABEL_8;
}

void ___ZN4data20QMIDataCommandDriver4initEv_block_invoke_4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Stopped", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4data13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4data13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4data20QMIDataCommandDriver4initEv_block_invoke_6(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Started", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZN4data20QMIDataCommandDriver4initEv_block_invoke_10(void *a1, xpc_object_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
        }

        v8 = MEMORY[0x29C269360](a2);
        v9 = *(v5 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v11 = v8;
          _os_log_impl(&dword_296ECF000, v9, OS_LOG_TYPE_DEFAULT, "#I Server error %s", buf, 0xCu);
        }

        free(v8);
        xpc_release(a2);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F97054(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void data::QMIDataCommandDriver::getDataAggregationMaxDatagrams(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_26_3;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = v3;
  v18 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v17);
  v4 = *(&v17 + 1);
  if (*(&v17 + 1) != v18)
  {
    while (*(*v4 + 8) != 16)
    {
      if (++v4 == v18)
      {
        goto LABEL_8;
      }
    }
  }

  if (v4 == v18)
  {
LABEL_8:
    v6 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v17, 16);
  }

  else
  {
    if (!v5)
    {
      __cxa_bad_cast();
    }

    v6 = v5 + 12;
  }

  *v6 = 0x400000003;
  v12 = v2 + 88;
  v13 = QMIServiceMsg::create();
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3;
  v9[3] = &__block_descriptor_tmp_23_3;
  v9[4] = v2;
  v7 = a1[5];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = a1[6];
  v10 = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13GetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60960;
  aBlock[4] = v9;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v17);
}

void sub_296F9735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v15 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F97380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F97394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v4 = cf;
  if (cf)
  {
    if (*(a1 + 40) && *(a1 + 48))
    {
      CFRetain(cf);
      v5 = xpc_null_create();
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = _Block_copy(v6);
      }

      else
      {
        v7 = 0;
      }

      v13 = *(a1 + 48);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_160_0;
      if (v7)
      {
        v14 = _Block_copy(v7);
      }

      else
      {
        v14 = 0;
      }

      v23 = v14;
      v24 = v4;
      CFRetain(v4);
      v25 = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        v25 = xpc_null_create();
      }

      dispatch_async(v13, block);
      xpc_release(v25);
      v25 = 0;
      if (v24)
      {
        CFRelease(v24);
      }

      if (v23)
      {
        _Block_release(v23);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      xpc_release(v5);
      CFRelease(v4);
    }
  }

  else
  {
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 1174405120;
    v16 = ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4;
    v17 = &__block_descriptor_tmp_21_3;
    v8 = *(a1 + 40);
    if (v8)
    {
      v8 = _Block_copy(v8);
    }

    v9 = *(a1 + 48);
    aBlock = v8;
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v20 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v12 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 4);
      LODWORD(block[0]) = *v12;
      v16(v15, block);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F97610(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v2, 21, v1, v3);
  JUMPOUT(0x296F974D4);
}

void sub_296F97660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v16 + 48));
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v17 + 32);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4(void *a1, int *a2)
{
  v2 = *a2;
  v10 = -1431655935;
  v9 = &unk_2A1E18DA8;
  v11 = v2;
  if (!a1[4] || !a1[5])
  {
    return;
  }

  v4 = a1[6];
  object[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  abm::data::DataAggregationMaxDatagrams::toDict(&v9, object);
  v5 = a1[4];
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_160_0;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    cf = v4;
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  aBlock = 0;
  cf = v4;
  if (v4)
  {
LABEL_12:
    CFRetain(v4);
  }

LABEL_13:
  v15 = object[0];
  if (object[0])
  {
    xpc_retain(object[0]);
  }

  else
  {
    v15 = xpc_null_create();
  }

  dispatch_async(v7, block);
  xpc_release(v15);
  v15 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(object[0]);
  object[0] = 0;
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F97844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c92_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE48c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a2[5];
  a1[4] = v4;
  a1[5] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  result = a2[6];
  a1[6] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c92_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE48c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void __copy_helper_block_e8_40c92_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c92_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void data::QMIDataCommandDriver::getDataAggregationMaxSize(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_39_0;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = v3;
  v18 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v17);
  v4 = *(&v17 + 1);
  if (*(&v17 + 1) != v18)
  {
    while (*(*v4 + 8) != 16)
    {
      if (++v4 == v18)
      {
        goto LABEL_8;
      }
    }
  }

  if (v4 == v18)
  {
LABEL_8:
    v6 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v17, 16);
  }

  else
  {
    if (!v5)
    {
      __cxa_bad_cast();
    }

    v6 = v5 + 12;
  }

  *v6 = 0x400000003;
  v12 = v2 + 88;
  v13 = QMIServiceMsg::create();
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3;
  v9[3] = &__block_descriptor_tmp_36_3;
  v9[4] = v2;
  v7 = a1[5];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = a1[6];
  v10 = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13GetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60960;
  aBlock[4] = v9;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v17);
}

void sub_296F97CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v15 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F97CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F97CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v4 = xpc_null_create();
  v5 = cf;
  if (cf)
  {
    if (*(a1 + 40) && *(a1 + 48))
    {
      CFRetain(cf);
      v6 = xpc_null_create();
      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = _Block_copy(v7);
      }

      else
      {
        v8 = 0;
      }

      v14 = *(a1 + 48);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_160_0;
      if (v8)
      {
        v15 = _Block_copy(v8);
      }

      else
      {
        v15 = 0;
      }

      v24 = v15;
      v25 = v5;
      CFRetain(v5);
      v26 = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        v26 = xpc_null_create();
      }

      dispatch_async(v14, block);
      xpc_release(v26);
      v26 = 0;
      if (v25)
      {
        CFRelease(v25);
      }

      if (v24)
      {
        _Block_release(v24);
      }

      if (v8)
      {
        _Block_release(v8);
      }

      xpc_release(v6);
      CFRelease(v5);
    }
  }

  else
  {
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 1174405120;
    v17 = ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4;
    v18 = &__block_descriptor_tmp_33;
    v9 = *(a1 + 40);
    if (v9)
    {
      v9 = _Block_copy(v9);
    }

    v10 = *(a1 + 48);
    aBlock = v9;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    v21 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v13 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v12, 4);
      LODWORD(block[0]) = *v13;
      v17(v16, block);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  xpc_release(v4);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F97F74(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v2, 22, v1, v3);
  JUMPOUT(0x296F97E2CLL);
}

void sub_296F97FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v17 + 48));
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v18 + 32);
  xpc_release(v16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver25getDataAggregationMaxSizeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4(void *a1, int *a2)
{
  v2 = *a2;
  v10 = -1431655935;
  v9 = &unk_2A1E18DF0;
  v11 = v2;
  if (!a1[4] || !a1[5])
  {
    return;
  }

  v4 = a1[6];
  object[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  abm::data::DataAggregationMaxSize::toDict(&v9, object);
  v5 = a1[4];
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_160_0;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    cf = v4;
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  aBlock = 0;
  cf = v4;
  if (v4)
  {
LABEL_12:
    CFRetain(v4);
  }

LABEL_13:
  v15 = object[0];
  if (object[0])
  {
    xpc_retain(object[0]);
  }

  else
  {
    v15 = xpc_null_create();
  }

  dispatch_async(v7, block);
  xpc_release(v15);
  v15 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(object[0]);
  object[0] = 0;
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F981BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void data::QMIDataCommandDriver::getDataFlowControl(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_52_3;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = v3;
  v18 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v17);
  v4 = *(&v17 + 1);
  if (*(&v17 + 1) != v18)
  {
    while (*(*v4 + 8) != 16)
    {
      if (++v4 == v18)
      {
        goto LABEL_8;
      }
    }
  }

  if (v4 == v18)
  {
LABEL_8:
    v6 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v17, 16);
  }

  else
  {
    if (!v5)
    {
      __cxa_bad_cast();
    }

    v6 = v5 + 12;
  }

  *v6 = 0x400000003;
  v12 = v2 + 88;
  v13 = QMIServiceMsg::create();
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3;
  v9[3] = &__block_descriptor_tmp_49_3;
  v9[4] = v2;
  v7 = a1[5];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = a1[6];
  v10 = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm15GetQMAPSettings8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60988;
  aBlock[4] = v9;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v17);
}

void sub_296F9849C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v15 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F984C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F984D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v4 = cf;
  if (cf)
  {
    if (*(a1 + 40) && *(a1 + 48))
    {
      CFRetain(cf);
      v5 = xpc_null_create();
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = _Block_copy(v6);
      }

      else
      {
        v7 = 0;
      }

      v13 = *(a1 + 48);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_160_0;
      if (v7)
      {
        v14 = _Block_copy(v7);
      }

      else
      {
        v14 = 0;
      }

      v23 = v14;
      v24 = v4;
      CFRetain(v4);
      v25 = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        v25 = xpc_null_create();
      }

      dispatch_async(v13, block);
      xpc_release(v25);
      v25 = 0;
      if (v24)
      {
        CFRelease(v24);
      }

      if (v23)
      {
        _Block_release(v23);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      xpc_release(v5);
      CFRelease(v4);
    }
  }

  else
  {
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 1174405120;
    v16 = ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4;
    v17 = &__block_descriptor_tmp_46_1;
    v8 = *(a1 + 40);
    if (v8)
    {
      v8 = _Block_copy(v8);
    }

    v9 = *(a1 + 48);
    aBlock = v8;
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v20 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v12 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 1);
      LOBYTE(block[0]) = *v12 != 0;
      v16(v15, block);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F98758(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v2, 17, v1, v3);
  JUMPOUT(0x296F9861CLL);
}

void sub_296F987A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v16 + 48));
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v17 + 32);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver18getDataFlowControlEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4(void *a1, char *a2)
{
  v2 = *a2;
  v10 = 0xAAAAAAAAAAAAAA01;
  v9 = &unk_2A1E18E38;
  BYTE1(v10) = v2;
  if (!a1[4] || !a1[5])
  {
    return;
  }

  v4 = a1[6];
  object[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  abm::data::DataFlowControl::toDict(&v9, object);
  v5 = a1[4];
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_160_0;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    cf = v4;
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  aBlock = 0;
  cf = v4;
  if (v4)
  {
LABEL_12:
    CFRetain(v4);
  }

LABEL_13:
  v14 = object[0];
  if (object[0])
  {
    xpc_retain(object[0]);
  }

  else
  {
    v14 = xpc_null_create();
  }

  dispatch_async(v7, block);
  xpc_release(v14);
  v14 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(object[0]);
  object[0] = 0;
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F9898C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void data::QMIDataCommandDriver::setQMAPSettings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_64_3;
  v8 = *(a2 + 8);
  v7[4] = a1;
  v7[5] = &unk_2A1E18E38;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v3;
  v51 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v50);
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 1174405120;
  v4 = ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v46 = ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v47 = &__block_descriptor_tmp_53_3;
  v49 = *(a1 + 48);
  v48 = &unk_2A1E18E38;
  v5 = *(&v50 + 1);
  v6 = v51;
  v7 = *(&v50 + 1);
  if (*(&v50 + 1) != v51)
  {
    v7 = *(&v50 + 1);
    while (*(*v7 + 8) != 18)
    {
      if (++v7 == v51)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v51)
  {
LABEL_9:
    v10 = operator new(0x10uLL);
    v11 = v10;
    v10[4] = 18;
    *v10 = &unk_2A1E1FD38;
    if (v6 >= *(&v51 + 1))
    {
      v13 = v6 - v5;
      v14 = (v6 - v5) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        goto LABEL_69;
      }

      v16 = *(&v51 + 1) - v5;
      if ((*(&v51 + 1) - v5) >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          goto LABEL_70;
        }

        v18 = operator new(8 * v17);
      }

      else
      {
        v18 = 0;
      }

      v19 = &v18[8 * v14];
      *v19 = v11;
      v12 = v19 + 8;
      memcpy(v18, v5, v13);
      *(&v50 + 1) = v18;
      *&v51 = v12;
      *(&v51 + 1) = &v18[8 * v17];
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      *v6 = v10;
      v12 = v6 + 8;
    }

    v9 = v11 + 9;
    *&v51 = v12;
    v4 = v46;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_68;
    }

    v9 = v8 + 9;
  }

  v4(v45, v9);
  v20 = *(&v50 + 1);
  v21 = v51;
  v22 = *(&v50 + 1);
  if (*(&v50 + 1) != v51)
  {
    v22 = *(&v50 + 1);
    while (*(*v22 + 8) != 16)
    {
      if (++v22 == v51)
      {
        goto LABEL_33;
      }
    }
  }

  if (v22 == v51)
  {
LABEL_33:
    v24 = operator new(0x10uLL);
    v25 = v24;
    v24[4] = 16;
    *v24 = &unk_2A1E1FD88;
    if (v21 < *(&v51 + 1))
    {
      *v21 = v24;
      v21 += 8;
      *&v51 = v21;
      *(v24 + 9) = 0;
      if (v20 != v21)
      {
        goto LABEL_50;
      }

      goto LABEL_53;
    }

    v26 = v21 - v20;
    v27 = (v21 - v20) >> 3;
    v28 = v27 + 1;
    if (!((v27 + 1) >> 61))
    {
      v29 = *(&v51 + 1) - v20;
      if ((*(&v51 + 1) - v20) >> 2 > v28)
      {
        v28 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (!v30)
      {
        v31 = 0;
LABEL_46:
        v32 = &v31[8 * v27];
        *v32 = v25;
        v21 = v32 + 8;
        memcpy(v31, v20, v26);
        *(&v50 + 1) = v31;
        *&v51 = v21;
        *(&v51 + 1) = &v31[8 * v30];
        if (v20)
        {
          operator delete(v20);
          v20 = *(&v50 + 1);
          *&v51 = v21;
          *(v25 + 9) = 0;
          if (v20 != v21)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v20 = v31;
          *&v51 = v21;
          *(v25 + 9) = 0;
          if (v31 != v21)
          {
LABEL_50:
            while (*(*v20 + 8) != 17)
            {
              v20 += 8;
              if (v20 == v21)
              {
                goto LABEL_56;
              }
            }
          }
        }

        goto LABEL_53;
      }

      if (!(v30 >> 61))
      {
        v31 = operator new(8 * v30);
        goto LABEL_46;
      }

LABEL_70:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_69:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (!v23)
  {
    goto LABEL_68;
  }

  v23[9] = 0;
  if (v20 != v21)
  {
    goto LABEL_50;
  }

LABEL_53:
  if (v20 != v21)
  {
    if (v33)
    {
      v34 = v33 + 12;
      goto LABEL_57;
    }

LABEL_68:
    __cxa_bad_cast();
  }

LABEL_56:
  v34 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v50, 17);
LABEL_57:
  *v34 = 0x400000003;
  v40 = v2 + 88;
  v41 = QMIServiceMsg::create();
  v42 = 25000;
  v43 = 0;
  v44 = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 1174405120;
  v37[2] = ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  v37[3] = &__block_descriptor_tmp_63_5;
  v37[4] = v2;
  v35 = *(a1 + 56);
  if (v35)
  {
    v35 = _Block_copy(v35);
  }

  v36 = *(a1 + 64);
  v38 = v35;
  object = v36;
  if (v36)
  {
    dispatch_retain(v36);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm15SetQMAPSettings8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE609B0;
  aBlock[4] = v37;
  v44 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v44)
  {
    _Block_release(v44);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v38)
  {
    _Block_release(v38);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v50);
}

void sub_296F9902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v26 + 40);
  qmi::Client::SendProxy::~SendProxy(&a16);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F99050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F99068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c29_ZTSN3abm4data12QMAPSettingsE(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 32) = &unk_2A1E18E38;
  return result;
}

void ___ZN4data20QMIDataCommandDriver15setQMAPSettingsEN3abm4data12QMAPSettingsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v3 = *(a1 + 40);
  if (!v3 || !*(a1 + 48))
  {
    goto LABEL_20;
  }

  v4 = cf;
  if (cf && (CFRetain(cf), (v3 = *(a1 + 40)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = _Block_copy(v3);
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
  block[3] = &__block_descriptor_tmp_163_2;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v10 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v10 = v4;
  if (v4)
  {
LABEL_11:
    CFRetain(v4);
  }

LABEL_12:
  dispatch_async(v6, block);
  if (v10)
  {
    CFRelease(v10);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}