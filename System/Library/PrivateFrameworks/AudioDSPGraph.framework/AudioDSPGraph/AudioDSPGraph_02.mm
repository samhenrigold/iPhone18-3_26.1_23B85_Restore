const void **boost::container::dtl::value_init<applesauce::CF::DictionaryRef>::~value_init(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t boost::container::dtl::value_destructor<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>::~value_destructor(uint64_t a1)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>*,boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>>(boost::container *a1, char *a2, void *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_31:
    boost::container::throw_length_error(a1, a2);
  }

  v14 = *a2;
  v15 = operator new(16 * v9);
  v16 = v15;
  v17 = *a2;
  v18 = *(a2 + 1);
  v19 = (*a2 + 16 * v18);
  v20 = v15;
  if (*a2 != a3)
  {
    v21 = *a2;
    v20 = v15;
    do
    {
      *v20 = *v21;
      v20[1] = v21[1];
      v21[1] = 0;
      v21 += 2;
      v20 += 2;
    }

    while (v21 != a3);
  }

  *v20 = *a4;
  v20[1] = *(a4 + 8);
  *(a4 + 8) = 0;
  if (v19 != a3)
  {
    v22 = v20 + 3;
    v23 = a3;
    do
    {
      *(v22 - 2) = *v23;
      *v22 = v23[1];
      v22 += 2;
      v23[1] = 0;
      v23 += 2;
    }

    while (v23 != v19);
  }

  if (v17)
  {
    if (v18)
    {
      v24 = (v17 + 8);
      do
      {
        if (*v24)
        {
          CFRelease(*v24);
        }

        v24 += 2;
        --v18;
      }

      while (v18);
    }

    if (a2 + 24 != *a2)
    {
      operator delete(*a2);
    }
  }

  v25 = *(a2 + 1) + 1;
  *a2 = v16;
  *(a2 + 1) = v25;
  *(a2 + 2) = v9;
  *a1 = a3 + v16 - v14;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::priv_insert_unique_prepare(char *a1, char **a2, unsigned int a3, char **a4)
{
  if (*a2 != a1)
  {
    v4 = (*a2 - a1) >> 4;
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[16 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 4;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

void *CA::DSP::AUDSPGraph::GraphPropertyCache::Find(CA::DSP::AUDSPGraph::GraphPropertyCache *this, uint64_t *a2, int a3)
{
  v10 = a3;
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::find(&v9, a2, &v10);
  v6 = a2[1];
  if (*a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v9 == (*a2 + (v6 << 6)))
  {
    v8 = 0;
    *this = -10879;
  }

  else
  {
    *this = v9 + 2;
    v8 = 1;
  }

  *(this + 8) = v8;
  return result;
}

void CA::DSP::AUDSPGraph::GraphPropertyValue::SetCF(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    *a1 = -10851;
    *(a1 + 16) = 0;
    return;
  }

  CFRetain(*a3);
  v7 = CFGetTypeID(v4);
  if (v7 != CFDictionaryGetTypeID())
  {
    cf = 0;
    CFRelease(v4);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  cf = v4;
  v8 = applesauce::CF::details::at_key<__CFString const*>(v4, @"UInt32");
  if (v8)
  {
    v9 = applesauce::CF::convert_as<unsigned int,0>(v8);
    __src = v9;
    v35[0] = BYTE4(v9);
    if ((v9 & 0x100000000) != 0)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &__src, v35, 4uLL);
LABEL_25:
      v22 = CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(a2);
      CA::DSP::ReferenceCounted<__CFDictionary const*>::ReferenceCounted(v22, *a3);
      *(a2 + 8) = 1;
      *(a2 + 48) = 1;
      v23 = *(a2 + 16);
      v24 = *(a2 + 24) - v23;
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v35[0] = 0;
    __src = 0;
  }

  v10 = applesauce::CF::details::at_key<__CFString const*>(v4, @"UInt64");
  if (v10)
  {
    v32 = applesauce::CF::convert_as<unsigned long long,0>(v10);
    v33[0] = v11;
    if (v11)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &v32, v33, 8uLL);
      goto LABEL_25;
    }
  }

  else
  {
    v32 = 0;
    v33[0] = 0;
  }

  v12 = applesauce::CF::details::at_key<__CFString const*>(v4, @"Float32");
  if (v12)
  {
    v13 = applesauce::CF::convert_as<float,0>(v12);
    v30 = v13;
    v31[0] = BYTE4(v13);
    if (v13 >> 32)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &v30, v31, 4uLL);
      goto LABEL_25;
    }
  }

  else
  {
    v31[0] = 0;
    v30 = 0;
  }

  v14 = applesauce::CF::details::at_key<__CFString const*>(v4, @"Float64");
  if (v14)
  {
    v28 = applesauce::CF::convert_as<double,0>(v14);
    v29[0] = v15;
    if (v15)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &v28, v29, 8uLL);
      goto LABEL_25;
    }
  }

  else
  {
    v28 = 0;
    v29[0] = 0;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,__CFString const*>(&v37, v4, @"Data");
  if (v38 == 1)
  {
    v16 = v37;
    if (v37)
    {
      CFRetain(v37);
      CFRelease(v16);
      CFRelease(v16);
      BytePtr = CFDataGetBytePtr(v16);
      v18 = CFDataGetBytePtr(v16);
      Length = CFDataGetLength(v16);
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a2 + 16), BytePtr, &v18[Length], &v18[Length] - BytePtr);
      goto LABEL_25;
    }
  }

  v20 = applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(&v37, &cf);
  v26 = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(v20, *v37, @"Value", &v26);
  v21 = v37;
  applesauce::CF::TypeRef::~TypeRef(&v37);
  applesauce::CF::TypeRef::~TypeRef(&v26);
  v27 = v21;
  if (v21)
  {
    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a2 + 16), &v27, &v28, 8uLL);
    goto LABEL_25;
  }

  *a1 = -10851;
  *(a1 + 16) = 0;
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }
}

const void **CA::DSP::Graph::SetProperty(CA::DSP::Graph *this, uint64_t a2, const void *a3, void *a4, uint64_t a5)
{
  v11 = 0;
  v6 = 0;
  if (!CADSPGraphSetProperty(a2, a3, a4, a5))
  {
    v6 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v11 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 1;
  }

  return result;
}

uint64_t boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,void,void>>::priv_subscript(char *a1, unsigned int *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  v45 = *a1;
  if (v45)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,false>,unsigned int>(v42, &v45, v45 + (v2 << 6), *a2);
  v6 = *a1;
  v7 = *(a1 + 1);
  if (*a1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = v6 + (v7 << 6);
  v10 = v42[0];
  if (v42[0] == v9)
  {
    goto LABEL_14;
  }

  if (!v42[0])
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*a2 < *v42[0])
  {
LABEL_14:
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v11 = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    *&v41 = *MEMORY[0x1E69E3C08];
    v12 = *a2;
    v30 = v12;
    v32 = 0;
    v38 = 0;
    *(&v39 + 1) = 0;
    v40 = 0uLL;
    v37 = 0;
    LODWORD(v45) = v12;
    v31 = 0;
    v46 = 0;
    v47 = 0;
    v49 = 0;
    v50 = v11;
    v48 = 0uLL;
    v13 = "this->priv_in_range_or_end(hint)";
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = v11;
    v51 = 0;
    v14 = "flat_tree.hpp";
    v15 = 879;
    v16 = "insert_unique";
    v42[1] = &v45;
    v42[2] = a1;
    if (v6 <= v42[0] && v42[0] <= v9)
    {
      v43 = 0;
      if (v42[0] == v9)
      {
        goto LABEL_20;
      }

      if (!v42[0])
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (v12 < *v42[0])
      {
LABEL_20:
        v43 = v42[0];
        if (v42[0] != v6)
        {
          if (!v42[0])
          {
            __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
          }

          v17 = *(v42[0] - 64);
          if (v17 >= v12)
          {
            if (v12 >= v17)
            {
              v43 = (v42[0] - 64);
              goto LABEL_40;
            }

            v44 = v42[0] - 64;
            if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_insert_unique_prepare(v6, &v44, &v45, &v43))
            {
LABEL_40:
              if (!*a1 && v43)
              {
                __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
              }

              v29 = v43;
LABEL_43:
              if (v48)
              {
                *(&v48 + 1) = v48;
                (*(*v50 + 24))(v50, v48, v49 - v48, 1);
              }

              CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v46);
              v10 = v29;
              v42[0] = v29;
              if (v33)
              {
                v34 = v33;
                (*(*v36 + 24))(v36, v33, v35 - v33, 1);
              }

              CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v31);
              if (*(&v39 + 1))
              {
                *&v40 = *(&v39 + 1);
                (*(*v41 + 24))(v41, *(&v39 + 1), *(&v40 + 1) - *(&v39 + 1), 1);
              }

              CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v38);
              if (!v10)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              return v10 + 8;
            }
          }
        }
      }

      else
      {
        v44 = v9;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_insert_unique_prepare(v42[0], &v44, &v45, &v43))
        {
          goto LABEL_40;
        }
      }

      v18 = v43;
      v19 = *a1;
      if (*a1 > v43)
      {
        goto LABEL_53;
      }

      v20 = *(a1 + 1);
      if (!v19 && v20)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v21 = v19 + (v20 << 6);
      if (v43 > v21)
      {
LABEL_53:
        v13 = "this->priv_in_range_or_end(position)";
        v15 = 1862;
        v14 = "vector.hpp";
        v16 = "emplace";
      }

      else
      {
        v22 = *(a1 + 2);
        if (v22 >= v20)
        {
          if (v22 == v20)
          {
            boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>>(&v29, a1, v43, &v45);
          }

          else
          {
            if (v21 == v43)
            {
              *v21 = v45;
              v27 = v46;
              v46 = 0;
              *(v21 + 8) = v27;
              *(v21 + 16) = v47;
              *(v21 + 32) = 0;
              *(v21 + 40) = 0;
              *(v21 + 24) = 0;
              *(v21 + 48) = v50;
              *(v21 + 24) = v48;
              *(v21 + 40) = v49;
              v49 = 0;
              v48 = 0uLL;
              *(v21 + 56) = v51;
              ++*(a1 + 1);
            }

            else
            {
              v23 = v21 - 64;
              *v21 = *(v21 - 64);
              v24 = *(v21 - 56);
              *(v21 - 56) = 0;
              *(v21 + 8) = v24;
              *(v21 + 16) = *(v21 - 48);
              *(v21 + 24) = *(v21 - 40);
              v25 = *(v21 - 16);
              *(v21 + 40) = *(v21 - 24);
              *(v21 + 48) = v25;
              *(v21 - 40) = 0;
              *(v21 - 32) = 0;
              *(v21 - 24) = 0;
              *(v21 + 56) = *(v21 - 8);
              ++*(a1 + 1);
              if ((v21 - 64) != v18)
              {
                do
                {
                  v26 = (v23 - 64);
                  boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>::operator=(v23, v23 - 64);
                  v23 = v26;
                }

                while (v26 != v18);
              }

              boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>::operator=(v18, &v45);
            }

            v29 = v18;
          }

          goto LABEL_43;
        }

        v13 = "this->m_holder.capacity() >= this->m_holder.m_size";
        v15 = 2821;
        v14 = "vector.hpp";
        v16 = "priv_insert_forward_range";
      }
    }

    __assert_rtn(v16, v14, v15, v13);
  }

  return v10 + 8;
}

void sub_1C91CB520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*(a1 + 48), v2, *(a1 + 40) - v2);
  }

  CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted((a1 + 8));
  return a1;
}

const void **boost::container::dtl::value_init<CA::DSP::AUDSPGraph::GraphPropertyValue>::~value_init(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*(a1 + 40), v2, *(a1 + 32) - v2);
  }

  return CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(a1);
}

uint64_t *boost::container::dtl::value_destructor<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    *(v2 + 32) = v3;
    std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*(v2 + 48), v3, *(v2 + 40) - v3);
  }

  CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted((v2 + 8));
  return a1;
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>>(boost::container *a1, char *a2, char *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x1FFFFFFFFFFFFFFLL;
  if (v4 == 0x1FFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x1FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 57)
  {
LABEL_31:
    boost::container::throw_length_error(a1, a2);
  }

  v14 = *a2;
  v15 = operator new(v9 << 6);
  v16 = v15;
  v17 = *a2;
  v18 = (*a2 + (*(a2 + 1) << 6));
  v19 = v15;
  if (*a2 != a3)
  {
    v20 = *a2;
    v19 = v15;
    do
    {
      *v19 = *v20;
      v21 = *(v20 + 8);
      *(v20 + 8) = 0;
      *(v19 + 1) = v21;
      v19[16] = *(v20 + 16);
      *(v19 + 6) = *(v20 + 48);
      *(v19 + 24) = *(v20 + 24);
      *(v19 + 5) = *(v20 + 40);
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      v19[56] = *(v20 + 56);
      v20 += 64;
      v19 += 64;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  v22 = *(a4 + 8);
  *(a4 + 8) = 0;
  *(v19 + 1) = v22;
  v19[16] = *(a4 + 16);
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  *(v19 + 3) = 0;
  *(v19 + 6) = *(a4 + 48);
  *(v19 + 24) = *(a4 + 24);
  *(v19 + 5) = *(a4 + 40);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  v19[56] = *(a4 + 56);
  if (v18 != a3)
  {
    v23 = 0;
    do
    {
      v24 = &a3[v23];
      v25 = &v19[v23];
      *(v25 + 16) = *&a3[v23];
      v26 = *&a3[v23 + 8];
      *(v24 + 1) = 0;
      *(v25 + 9) = v26;
      v25[80] = a3[v23 + 16];
      *(v25 + 12) = 0;
      *(v25 + 13) = 0;
      *(v25 + 11) = 0;
      *(v25 + 14) = *&a3[v23 + 48];
      *(v25 + 88) = *&a3[v23 + 24];
      *(v25 + 13) = *&a3[v23 + 40];
      *(v24 + 4) = 0;
      *(v24 + 5) = 0;
      *(v24 + 3) = 0;
      v25[120] = a3[v23 + 56];
      v23 += 64;
    }

    while (v24 + 64 != v18);
  }

  if (v17)
  {
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = (v17 + 48);
      do
      {
        v29 = *(v28 - 3);
        if (v29)
        {
          *(v28 - 2) = v29;
          std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*v28, v29, *(v28 - 1) - v29);
        }

        --v27;
        CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v28 - 5);
        v28 += 8;
      }

      while (v27);
    }

    if (a2 + 24 != *a2)
    {
      operator delete(*a2);
    }
  }

  v30 = *(a2 + 1) + 1;
  *a2 = v16;
  *(a2 + 1) = v30;
  *(a2 + 2) = v9;
  *a1 = &a3[v16 - v14];
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,true>,unsigned int>(&v10, &v9, *a2, *a3);
  v7 = v10;
  *a4 = v10;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a3 < *v7;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,true>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 6;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[16 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 16;
        *a2 = v7 + 16;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void **std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  v10 = v8 - *result;
  if (v10 >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      i = &v9[v20];
    }

    else
    {
      if (v15 != v9)
      {
        result = memmove(*result, __src, v15 - v9);
        v15 = v7[1];
      }

      v17 = &v6[v16];
      v18 = v15;
      if (&v6[v16] != a3)
      {
        v18 = v15;
        do
        {
          v19 = *v17++;
          *v18++ = v19;
        }

        while (v17 != a3);
      }

      i = v18;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](result[3], v9, v10);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v11 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v11 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    result = std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__vallocate[abi:ne200100](v7, v12);
    for (i = v7[1]; v6 != a3; ++i)
    {
      v14 = *v6++;
      *i = v14;
    }
  }

  v7[1] = i;
  return result;
}

void **std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  v10 = v8 - *result;
  if (v10 >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v13 = &v9[v20];
    }

    else
    {
      if (v15 != v9)
      {
        result = memmove(*result, __src, v15 - v9);
        v15 = v7[1];
      }

      v17 = &v6[v16];
      v18 = v15;
      if (&v6[v16] != a3)
      {
        v18 = v15;
        do
        {
          v19 = *v17++;
          *v18++ = v19;
        }

        while (v17 != a3);
      }

      v13 = v18;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](result[3], v9, v10);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v11 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    result = std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__vallocate[abi:ne200100](v7, v12);
    v13 = v7[1];
    while (v6 != a3)
    {
      v14 = *v6++;
      *v13++ = v14;
    }
  }

  v7[1] = v13;
  return result;
}

void *applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(void *this, const applesauce::CF::DictionaryRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *CA::DSP::ReferenceCounted<__CFDictionary const*>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDataGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

unint64_t applesauce::CF::convert_as<double,0>(unint64_t result)
{
  if (*&result != 0.0)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_25:
          v7 = Value == 0;
          v12 = valuePtr;
          goto LABEL_30;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_20:
          v7 = v11 == 0;
          v12 = valuePtr;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = v10 == 0;
          v12 = valuePtr;
LABEL_30:
          v8 = v12;
          goto LABEL_31;
        case kCFNumberLongType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = v6 == 0;
          v8 = *&valuePtr;
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = v5 == 0;
          v8 = valuePtr;
LABEL_31:
          v13 = v8;
          goto LABEL_32;
        case kCFNumberCGFloatType:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
          v7 = v9 == 0;
          v13 = *&valuePtr;
LABEL_32:
          if (v7)
          {
            v13 = 0.0;
          }

          v14 = *&v13 & 0xFFFFFFFFFFFFFF00;
          break;
        default:
          v14 = 0;
          LOBYTE(v13) = 0;
          break;
      }

      return LOBYTE(v13) | v14;
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        *&result = CFBooleanGetValue(v1);
      }

      else
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

const __CFNumber *applesauce::CF::convert_as<unsigned long long,0>(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_38;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_25:
          v15 = Value != 0;
          if (Value)
          {
            LOBYTE(v16) = LOBYTE(valuePtr);
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          v17 = SLOBYTE(valuePtr) < 0 && v15;
          v18 = v17 << 63 >> 63;
          return (v16 | (v18 << 8));
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_20:
          v12 = v11 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLOWORD(valuePtr);
          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_38:
          v12 = v10 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLODWORD(valuePtr);
LABEL_39:
          v19 = v14 & 0xFFFFFFFFFFFFFF00 | v13;
          if (v12)
          {
            v16 = 0;
          }

          else
          {
            v16 = v19;
          }

          goto LABEL_42;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = v6 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_33;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_33:
          v7 = v5 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
          v7 = v9 == 0;
          v8 = valuePtr;
LABEL_34:
          if (v7)
          {
            v16 = 0;
          }

          else
          {
            v16 = v8;
          }

LABEL_42:
          v18 = v16 >> 8;
          break;
        default:
          v18 = 0;
          LOBYTE(v16) = 0;
          break;
      }

      return (v16 | (v18 << 8));
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return CFBooleanGetValue(v1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_1C925F120);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_1C925F130), xmmword_1C925F140);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(void *result, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "DictionaryRef_iterator iterator out of range.");
  }

  v5 = result;
  v6 = *(v4 + 8 * v2);
  if (v6)
  {
    result = CFRetain(*(v4 + 8 * v2));
    v2 = a2[1];
  }

  v7 = a2[5];
  v8 = *(v7 + 8 * v2);
  if (v8)
  {
    result = CFRetain(*(v7 + 8 * v2));
  }

  *v5 = v6;
  v5[1] = v8;
  return result;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::vector<void const*>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<void const*>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t CA::DSP::AUDSPGraph::GetProperty(CA::DSP::AUDSPGraph *this, int a2, int a3, void *a4, unsigned int *a5)
{
  v31 = a4;
  if (a3)
  {
    return 4294956417;
  }

  v5 = 4294956417;
  if (a2 > 1735554167)
  {
    if (a2 <= 1886416227)
    {
      if (a2 <= 1836347500)
      {
        if (a2 != 1735554168)
        {
          if (a2 == 1752133730)
          {
            if (!a4)
            {
              if (*(this + 3304))
              {
                CA::DSP::AUDSPGraph::RPBConnection::GetHost(&v27, *(this + 412));
                v28 = 1;
                v17 = v27;
                v27 = 0;
              }

              else
              {
                v17 = 0;
                LOBYTE(v27) = 0;
                v28 = 0;
              }

              v26 = v17;
              CA::DSP::AU::DSPGraph::Serialize<__RPBHost *>(a5, v17);
              CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&v26);
              if (v28 == 1)
              {
                CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&v27);
              }

              return 0;
            }

            return 4294956419;
          }

          if (a2 != 1835758191)
          {
            return v5;
          }

          goto LABEL_48;
        }

        if (a4)
        {
          return 4294956419;
        }

        v8 = *(this + 84);
        goto LABEL_68;
      }

      if (a2 == 1836347501)
      {
        if (!a4)
        {
          applesauce::CF::DictionaryRef::DictionaryRef(&v22, *(this + 410));
          v18 = v22;
          v22 = 0;
          *a5 = v18;
          v10 = &v22;
          goto LABEL_85;
        }

        return 4294956419;
      }

      if (a2 != 1852797026)
      {
        if (a2 != 1886415216)
        {
          return v5;
        }

        if (a4)
        {
          return 4294956419;
        }

        v11 = applesauce::CF::ArrayRef::ArrayRef(&v30, *(this + 86));
        v12 = v30;
        v30 = 0;
        *a5 = v12;
        applesauce::CF::ArrayRef::~ArrayRef(v11);
        return 0;
      }

      if (a4)
      {
        return 4294956419;
      }

      v5 = 0;
      v14 = *(this + 3312);
LABEL_65:
      *a5 = v14;
      return v5;
    }

    if (a2 > 1886548852)
    {
      if (a2 == 1886548853)
      {
        if (!a4)
        {
          applesauce::CF::DictionaryRef::DictionaryRef(&v23, *(this + 99));
          v19 = v23;
          v23 = 0;
          *a5 = v19;
          v10 = &v23;
          goto LABEL_85;
        }

        return 4294956419;
      }

      if (a2 == 1920169063)
      {
        if (a4)
        {
          return 4294956419;
        }

        v5 = 0;
        v14 = *(this + 3289);
        goto LABEL_65;
      }

      if (a2 != 1937010279)
      {
        return v5;
      }

      if (a4)
      {
        return 4294956419;
      }

      applesauce::CF::DictionaryRef::DictionaryRef(&v21, *(this + 415));
      v13 = v21;
      v21 = 0;
      *a5 = v13;
      v10 = &v21;
LABEL_85:
      applesauce::CF::DictionaryRef::~DictionaryRef(v10);
      return 0;
    }

    if (a2 == 1886416228)
    {
LABEL_48:
      if (!a4)
      {
        v10 = applesauce::CF::DictionaryRef::DictionaryRef(&v29, *(this + 87));
        v15 = v29;
        v29 = 0;
        *a5 = v15;
        goto LABEL_85;
      }

      return 4294956419;
    }

    if (a2 != 1886548592)
    {
      if (a2 != 1886548848)
      {
        return v5;
      }

      boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::find(&v27, this + 93, &v31);
      boost::container::flat_map<unsigned int,applesauce::CF::DictionaryRef,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,void,void>>::end(&v26, *(this + 93), *(this + 94));
      if (v27 != v26)
      {
        applesauce::CF::DictionaryRef::DictionaryRef(&v24, v27[1]);
        v9 = v24;
        v24 = 0;
        *a5 = v9;
        v10 = &v24;
        goto LABEL_85;
      }

LABEL_82:
      *a5 = 0;
      return 0;
    }

    if (a4)
    {
      return 4294956419;
    }

    v8 = *(this + 98);
    goto LABEL_68;
  }

  if (a2 <= 1733321573)
  {
    if (a2 <= 1635087215)
    {
      if (a2 == 37)
      {
        if (a4)
        {
          return 4294956419;
        }

        v5 = 0;
        v14 = *(this + 3368);
      }

      else
      {
        if (a2 != 3700)
        {
          return v5;
        }

        if (a4)
        {
          return 4294956419;
        }

        v5 = 0;
        v14 = *(this + 376);
      }

      goto LABEL_65;
    }

    if (a2 == 1635087216)
    {
      boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::find(&v27, this + 88, &v31);
      boost::container::flat_map<unsigned int,applesauce::CF::DictionaryRef,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,void,void>>::end(&v26, *(this + 88), *(this + 89));
      if (v27 != v26)
      {
        applesauce::CF::DictionaryRef::DictionaryRef(&v25, v27[1]);
        v16 = v25;
        v25 = 0;
        *a5 = v16;
        v10 = &v25;
        goto LABEL_85;
      }

      goto LABEL_82;
    }

    if (a2 == 1685283431)
    {
      if (a4)
      {
        return 4294956419;
      }

      v5 = 0;
      v14 = *(this + 3288);
      goto LABEL_65;
    }

    if (a2 != 1685287015)
    {
      return v5;
    }

    if (a4)
    {
      return 4294956419;
    }

    v8 = *(this + 83);
LABEL_68:
    CA::DSP::AU::DSPGraph::Serialize<CA::DSP::String>(a5, v8);
    return 0;
  }

  if (a2 > 1735418725)
  {
    if (a2 != 1735418726)
    {
      if (a2 == 1735423585)
      {
        CA::DSP::AUDSPGraph::GetGraphParameter(&v27, this, a4);
        v5 = v27;
        if (BYTE4(v27) != 1)
        {
          return v5;
        }

        *a5 = v27;
      }

      else
      {
        if (a2 != 1735549286)
        {
          return v5;
        }

        if (a4)
        {
          return 4294956419;
        }

        CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Graph>(a5, *(this + 81));
      }

      return 0;
    }

    CA::DSP::AUDSPGraph::GetGraphParameter(&v26, this, a4);
    if (BYTE4(v26))
    {
      CA::DSP::Number::Create<float>(&v27, *MEMORY[0x1E695E480], *&v26);
      v28 = 1;
      v5 = CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Number>>(a5, &v27);
      CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(&v27);
    }

    else
    {
      LODWORD(v27) = v26;
      v28 = 0;
      return CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Number>>(a5, &v27);
    }
  }

  else
  {
    switch(a2)
    {
      case 1733321574:
        CA::DSP::AUDSPGraph::GetGraphProperty(&v27, this, a4);
        v5 = CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Type>>>(a5, &v27);
        if (v28 == 1)
        {
          CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v27);
        }

        break;
      case 1733326433:
        CA::DSP::AUDSPGraph::GetGraphProperty(&v27, this, a4, a5);
        if (BYTE4(v27))
        {
          return 0;
        }

        else
        {
          return v27;
        }

      case 1735287149:
        if (a4)
        {
          return 4294956419;
        }

        v8 = *(this + 85);
        goto LABEL_68;
      default:
        return v5;
    }
  }

  return v5;
}

CFTypeRef CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Graph>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

CFTypeRef CA::DSP::AU::DSPGraph::Serialize<CA::DSP::String>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

applesauce::CF::ArrayRef *applesauce::CF::ArrayRef::ArrayRef(applesauce::CF::ArrayRef *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **CA::DSP::Number::Create<float>(CFNumberRef *a1, CFAllocatorRef allocator, float a3)
{
  valuePtr = a3;
  v4 = 0;
  *a1 = CFNumberCreate(allocator, kCFNumberFloat32Type, &valuePtr);
  return CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(&v4);
}

uint64_t CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Number>>(void *a1, _BYTE *a2)
{
  if (a2[8] != 1)
  {
    return *a2;
  }

  v3 = *a2;
  if (*a2)
  {
    v3 = CFRetain(v3);
  }

  v4 = 0;
  *a1 = v3;
  return v4;
}

const void **CA::DSP::ReferenceCounted<__CFNumber const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t CA::DSP::AUDSPGraph::GetGraphProperty(CA::DSP::AUDSPGraph *this, uint64_t a2, void *a3, unsigned int *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *this = -10863;
      *(this + 4) = 0;
      return result;
    }

    if (!*(a2 + 648))
    {
      *this = -10863;
      *(this + 4) = 0;
      return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
    }

    CA::DSP::AUDSPGraph::GetCachedGraphProperty(&v23, a2, a3, a4);
    if (BYTE4(v23) == 1)
    {
      *(this + 4) = BYTE4(v23);
      return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
    }

    CA::DSP::Graph::GetPropertyInfo(&v24, *(a2 + 648), a3);
    if (v25)
    {
      *buf = v24;
      CA::DSP::Graph::GetProperty(&v26, *(a2 + 648), a3, a4, &buf[4]);
      if (v27)
      {
        *(this + 4) = 1;
LABEL_27:
        if ((v25 & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v24);
        }

        return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
      }
    }

    else
    {
      v9 = v24;
      v24 = 0;
      v26 = v9;
      v27 = 0;
    }

    v10 = *(a2 + 680);
    if (v10)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v12 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v13 = *(a2 + 680);
      v14 = bswap32(a3);
      *&buf[1] = v14;
      if ((v14 - 32) > 0x5E || ((v14 >> 8) - 32) > 0x5E || ((v14 << 8 >> 24) - 32) > 0x5E || ((v14 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v28, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v28, buf);
      }

      v17 = &v28;
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v28.__r_.__value_.__r.__words[0];
      }

      *buf = 134218754;
      *&buf[4] = a2;
      v30 = 2112;
      v31 = v13;
      v32 = 2080;
      v33 = v17;
      v34 = 2112;
      v35 = v26;
      v18 = "[%p|%@] failed to get DSP graph property %s - %@";
      v19 = v12;
      v20 = 42;
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v15 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v21 = bswap32(a3);
      *&buf[1] = v21;
      if ((v21 - 32) > 0x5E || ((v21 >> 8) - 32) > 0x5E || ((v21 << 8 >> 24) - 32) > 0x5E || ((v21 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v28, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v28, buf);
      }

      v22 = &v28;
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v28.__r_.__value_.__r.__words[0];
      }

      *buf = 134218498;
      *&buf[4] = a2;
      v30 = 2080;
      v31 = v22;
      v32 = 2112;
      v33 = v26;
      v18 = "[%p] failed to get DSP graph property %s - %@";
      v19 = v15;
      v20 = 32;
    }

    _os_log_error_impl(&dword_1C91AE000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

LABEL_25:
    *this = -10863;
    v16 = v27;
    *(this + 4) = 0;
    if ((v16 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v26);
    }

    goto LABEL_27;
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  CA::DSP::AUDSPGraph::GetCachedGraphProperty(this, a2, a3, a4);

  return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
}

void sub_1C91CD4F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::DSP::AUDSPGraph::GetGraphProperty(CA::DSP::AUDSPGraph *this, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *this = -10863;
      *(this + 8) = 0;
      return result;
    }

    if (!*(a2 + 648))
    {
      *this = -10863;
      *(this + 8) = 0;
      return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
    }

    CA::DSP::AUDSPGraph::GetCachedGraphProperty(&v30, a2, a3);
    if (v31)
    {
      v7 = v30;
      v30 = 0;
      *this = v7;
      *(this + 8) = 1;
LABEL_40:
      CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v30);
      return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
    }

    CA::DSP::Graph::GetPropertyInfo(&v32, *(a2 + 648), a3);
    if (v33 == 1)
    {
      v41 = v32;
      v8 = HIDWORD(v32);
      v9 = *MEMORY[0x1E695E480];
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], HIDWORD(v32));
      *buf = 0;
      theData = Mutable;
      CA::DSP::ReferenceCounted<__CFData *>::~ReferenceCounted(buf);
      CFDataSetLength(theData, v8);
      MutableBytePtr = CFDataGetMutableBytePtr(theData);
      CA::DSP::Graph::GetProperty(&v44, *(a2 + 648), a3, MutableBytePtr, &v41 + 1);
      v12 = theData;
      v13 = v41;
      v38 = v41;
      v39 = theData;
      if (theData)
      {
        CFRetain(theData);
      }

      if (v44.__r_.__value_.__s.__data_[8])
      {
        CFDataSetLength(v12, HIDWORD(v13));
        CFRetain(@"Data");
        v42 = 0;
        v43 = 0;
        *buf = @"Data";
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v43);
        *&buf[8] = v12;
        if (v12)
        {
          CFRetain(v12);
        }

        v14 = 1;
        CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Data>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::Data>>(&v34, v9, buf, 1);
        CA::DSP::ReferenceCounted<__CFData const*>::~ReferenceCounted(&buf[8]);
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v42);
      }

      else
      {
        v14 = 0;
        v16 = v44.__r_.__value_.__r.__words[0];
        v44.__r_.__value_.__r.__words[0] = 0;
        v34 = v16;
      }

      v35 = v14;
      CA::DSP::ReferenceCounted<__CFData *>::~ReferenceCounted(&v39);
      if ((v44.__r_.__value_.__s.__data_[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v44.__r_.__value_.__l.__data_);
      }

      CA::DSP::ReferenceCounted<__CFData *>::~ReferenceCounted(&theData);
      if (v14)
      {
        v17 = v34;
        v34 = 0;
        v37 = 1;
        v36 = 0;
        *this = v17;
        *(this + 8) = 1;
        CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v36);
        goto LABEL_35;
      }
    }

    else
    {
      v15 = v32;
      v32 = 0;
      v34 = v15;
      v35 = 0;
    }

    v18 = *(a2 + 680);
    if (v18)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v20 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a2 + 680);
        v22 = bswap32(a3);
        *&buf[1] = v22;
        if ((v22 - 32) > 0x5E || ((v22 >> 8) - 32) > 0x5E || ((v22 << 8 >> 24) - 32) > 0x5E || ((v22 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v44, a3);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v44, buf);
        }

        v24 = &v44;
        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v44.__r_.__value_.__r.__words[0];
        }

        *buf = 134218754;
        *&buf[4] = a2;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        v46 = 2080;
        v47 = v24;
        v48 = 2112;
        v49 = v34;
        v25 = "[%p|%@] failed to get DSP graph property %s - %@";
        v26 = v20;
        v27 = 42;
LABEL_56:
        _os_log_error_impl(&dword_1C91AE000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v23 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        v28 = bswap32(a3);
        *&buf[1] = v28;
        if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v44, a3);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v44, buf);
        }

        v29 = &v44;
        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v44.__r_.__value_.__r.__words[0];
        }

        *buf = 134218498;
        *&buf[4] = a2;
        *&buf[12] = 2080;
        *&buf[14] = v29;
        v46 = 2112;
        v47 = v34;
        v25 = "[%p] failed to get DSP graph property %s - %@";
        v26 = v23;
        v27 = 32;
        goto LABEL_56;
      }
    }

    LODWORD(v36) = -10863;
    v37 = 0;
    *this = -10863;
    *(this + 8) = 0;
    if ((v35 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v34);
LABEL_37:
      if ((v33 & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v32);
      }

      if ((v31 & 1) == 0)
      {
        return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
      }

      goto LABEL_40;
    }

LABEL_35:
    CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v34);
    goto LABEL_37;
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  CA::DSP::AUDSPGraph::GetCachedGraphProperty(this, a2, a3);

  return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
}

void sub_1C91CDAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t CA::DSP::AU::DSPGraph::Serialize<CA::DSP::Reference<CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Type>>>(void *a1, _BYTE *a2)
{
  if (a2[8] != 1)
  {
    return *a2;
  }

  v3 = *a2;
  if (*a2)
  {
    v3 = CFRetain(v3);
  }

  v4 = 0;
  *a1 = v3;
  return v4;
}

void *boost::container::flat_map<unsigned int,applesauce::CF::DictionaryRef,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,void,void>>::end(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  *result = a2 + 16 * a3;
  return result;
}

CFTypeRef CA::DSP::AU::DSPGraph::Serialize<__RPBHost *>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

const void **CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *CA::DSP::AUDSPGraph::GetCachedGraphProperty(CA::DSP::AUDSPGraph *this, uint64_t a2, unsigned int a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  result = CA::DSP::AUDSPGraph::GraphPropertyCache::Find(&v11, (a2 + 1208), a3);
  if (v12 != 1)
  {
    v9 = 0;
    v10 = v11;
LABEL_8:
    *this = v10;
    goto LABEL_9;
  }

  v5 = v11;
  if ((*(v11 + 48) & 1) == 0)
  {
    v9 = 0;
    v10 = -10850;
    goto LABEL_8;
  }

  if ((*(v11 + 8) & 1) == 0)
  {
    CFRetain(@"Data");
    v6 = *MEMORY[0x1E695E480];
    v7 = CFDataCreate(*MEMORY[0x1E695E480], *(v5 + 16), *(v5 + 24) - *(v5 + 16));
    v16 = 0;
    CA::DSP::ReferenceCounted<__CFData const*>::~ReferenceCounted(&v16);
    v14 = 0;
    v15 = 0;
    v16 = @"Data";
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v15);
    v13 = 0;
    v17[0] = v7;
    CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Type>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::Type>>(&v15, v6, &v16, 1);
    CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v5);
    v8 = v15;
    v15 = 0;
    *v5 = v8;
    CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v15);
    CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(v17);
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v16);
    CA::DSP::ReferenceCounted<__CFData const*>::~ReferenceCounted(&v13);
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v14);
    *(v5 + 8) = 1;
  }

  result = CA::DSP::ReferenceCounted<__CFDictionary const*>::ReferenceCounted(this, *v5);
  v9 = 1;
LABEL_9:
  *(this + 8) = v9;
  return result;
}

void sub_1C91CDD9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::Graph::GetPropertyInfo(CA::DSP::Graph *this, uint64_t a2, uint64_t a3)
{
  *v13 = 0;
  v11 = 0;
  v4 = 0;
  if (CADSPGraphGetPropertyInfo(a2, a3, v13))
  {
    v5 = 0;
  }

  else
  {
    v5 = v11 == 0;
  }

  if (v5)
  {
    v4 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v11 = v4;
  }

  v10 = v4;
  if (v4)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v12 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    *this = v4;
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v6 = *v13;
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *this = v6;
    *(this + 8) = 1;
  }

  return result;
}

const void **CA::DSP::Graph::GetProperty(CA::DSP::Graph *this, uint64_t a2, void *a3, unsigned int *a4, unsigned int *a5)
{
  v11 = 0;
  v6 = 0;
  if (!CADSPGraphGetProperty(a2, a3, a4, a5))
  {
    v6 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v11 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 1;
  }

  return result;
}

const void **CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Data>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::Data>>(CFDictionaryRef *a1, const __CFAllocator *a2, uint64_t *a3, CFIndex a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = 8 * a4 + 8;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 23) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v8);
  if (a4)
  {
    v12 = 16 * a4;
    v13 = 16 * a4;
    v14 = a3;
    v15 = v10;
    do
    {
      v16 = *v14;
      v14 += 2;
      *v15++ = v16;
      v13 -= 16;
    }

    while (v13);
    MEMORY[0x1EEE9AC00](v11);
    v17 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
    v18 = a3 + 1;
    v19 = v17;
    do
    {
      v20 = *v18;
      v18 += 2;
      *v19++ = v20;
      v12 -= 16;
    }

    while (v12);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    v17 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
  }

  v21 = CFDictionaryCreate(a2, v10, v17, a4, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v23[0] = 0;
  *a1 = v21;
  return CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v23);
}

void sub_1C91CE0EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **CA::DSP::ReferenceCounted<__CFData const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFData *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *CA::DSP::AUDSPGraph::GraphPropertyCache::Find(CA::DSP::AUDSPGraph::GraphPropertyCache *this, uint64_t *a2, unsigned int a3)
{
  v3 = *a2;
  v4 = a2[1];
  v16 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,true>,unsigned int>(&v15, &v16, v3 + (v4 << 6), a3);
  v10 = a2[1];
  if (*a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = *a2 + (v10 << 6);
  v13 = v15;
  if (v15 != v12)
  {
    if (!v15)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v15 > a3)
    {
      v13 = v12;
    }
  }

  if (v13 == v12)
  {
    v14 = 0;
    *this = -10879;
  }

  else
  {
    *this = v13 + 2;
    v14 = 1;
  }

  *(this + 8) = v14;
  return result;
}

const void **CA::DSP::Dictionary<CA::DSP::String,CA::DSP::Type>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::Type>>(CFDictionaryRef *a1, const __CFAllocator *a2, uint64_t *a3, CFIndex a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = 8 * a4 + 8;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 23) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v8);
  if (a4)
  {
    v12 = 16 * a4;
    v13 = 16 * a4;
    v14 = a3;
    v15 = v10;
    do
    {
      v16 = *v14;
      v14 += 2;
      *v15++ = v16;
      v13 -= 16;
    }

    while (v13);
    MEMORY[0x1EEE9AC00](v11);
    v17 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
    v18 = a3 + 1;
    v19 = v17;
    do
    {
      v20 = *v18;
      v18 += 2;
      *v19++ = v20;
      v12 -= 16;
    }

    while (v12);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    v17 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
  }

  v21 = CFDictionaryCreate(a2, v10, v17, a4, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v23[0] = 0;
  *a1 = v21;
  return CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v23);
}

void sub_1C91CE428(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *CA::DSP::AUDSPGraph::GetCachedGraphProperty(CA::DSP::AUDSPGraph *this, uint64_t a2, void *a3, void *a4)
{
  result = CA::DSP::AUDSPGraph::GraphPropertyCache::Find(&v9, (a2 + 1208), a3);
  if (v10 != 1)
  {
    v7 = 0;
    v8 = v9;
LABEL_6:
    *this = v8;
    goto LABEL_7;
  }

  if ((*(v9 + 48) & 1) == 0)
  {
    v7 = 0;
    v8 = -10850;
    goto LABEL_6;
  }

  result = memcpy(a4, *(v9 + 16), *(v9 + 24) - *(v9 + 16));
  v7 = 1;
LABEL_7:
  *(this + 4) = v7;
  return result;
}

uint64_t CA::DSP::AUDSPGraph::GetPropertyInfo(CA::DSP::AUDSPGraph *this, int a2, int a3, uint64_t a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v20 = v6;
  v21 = v7;
  result = 4294956417;
  if (a2 <= 1735554167)
  {
    if (a2 > 1733321573)
    {
      if (a2 <= 1735418725)
      {
        if (a2 == 1733321574)
        {
          CA::DSP::AUDSPGraph::GetGraphPropertyInfo(&v17, this, a4);
          result = v17;
          if (v19 != 1)
          {
            return result;
          }

          *a6 = (v17 & 2) != 0;
          v16 = 8;
        }

        else
        {
          if (a2 != 1733326433)
          {
            v12 = 1735287149;
            goto LABEL_29;
          }

          CA::DSP::AUDSPGraph::GetGraphPropertyInfo(&v17, this, a4);
          result = v17;
          if (v19 != 1)
          {
            return result;
          }

          *a6 = (v17 & 2) != 0;
          v16 = v18;
        }

        *a5 = v16;
        return 0;
      }

      switch(a2)
      {
        case 1735418726:
          CA::DSP::AUDSPGraph::IsGraphParameterWritable(&v17, this, a4);
          if (v18)
          {
            result = 0;
            v13 = v17;
            goto LABEL_44;
          }

          break;
        case 1735423585:
          CA::DSP::AUDSPGraph::IsGraphParameterWritable(&v17, this, a4);
          if (v18)
          {
            result = 0;
            v14 = v17;
            goto LABEL_57;
          }

          break;
        case 1735549286:
          goto LABEL_35;
        default:
          return result;
      }

      return v17;
    }

    if (a2 <= 1635087215)
    {
      if (a2 == 37 || a2 == 3700)
      {
        if (a4)
        {
          return 4294956419;
        }

        result = 0;
        v14 = *(this + 17) ^ 1;
        goto LABEL_57;
      }

      return result;
    }

    if (a2 != 1635087216)
    {
      if (a2 != 1685283431)
      {
        v12 = 1685287015;
        goto LABEL_29;
      }

LABEL_37:
      if (a4)
      {
        return 4294956419;
      }

      result = 0;
      v14 = 1;
LABEL_57:
      *a6 = v14;
      v15 = 4;
      goto LABEL_58;
    }

LABEL_43:
    result = 0;
    v13 = 1;
    goto LABEL_44;
  }

  if (a2 <= 1886416227)
  {
    if (a2 <= 1836347500)
    {
      if (a2 == 1735554168)
      {
        goto LABEL_30;
      }

      if (a2 != 1752133730)
      {
        v12 = 1835758191;
        goto LABEL_29;
      }

LABEL_35:
      if (!a4)
      {
        result = 0;
        *a6 = 0;
LABEL_45:
        v15 = 8;
LABEL_58:
        *a5 = v15;
        return result;
      }

      return 4294956419;
    }

    if (a2 == 1836347501)
    {
      goto LABEL_30;
    }

    if (a2 != 1852797026)
    {
      v12 = 1886415216;
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if (a2 > 1886548852)
  {
    if (a2 == 1886548853)
    {
      goto LABEL_30;
    }

    if (a2 != 1920169063)
    {
      v12 = 1937010279;
LABEL_29:
      if (a2 != v12)
      {
        return result;
      }

LABEL_30:
      if (!a4)
      {
        result = 0;
        v13 = *(this + 17) ^ 1;
LABEL_44:
        *a6 = v13;
        goto LABEL_45;
      }

      return 4294956419;
    }

    goto LABEL_37;
  }

  if (a2 == 1886416228 || a2 == 1886548592)
  {
    goto LABEL_30;
  }

  if (a2 == 1886548848)
  {
    goto LABEL_43;
  }

  return result;
}

BOOL *CA::DSP::AUDSPGraph::IsGraphParameterWritable(BOOL *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v32 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) != 1)
  {
    *this = 1;
    this[4] = 1;
    return this;
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  CA::DSP::Graph::GetParameterDirection(&v20, *(a2 + 648), a3);
  if (v21 != 1)
  {
    v6 = v20;
    v20 = 0;
    v22 = v6;
    v23 = 0;
    v7 = *(a2 + 680);
    if (v7)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v9 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v10 = *(a2 + 680);
      v11 = bswap32(a3);
      *&buf[1] = v11;
      if ((v11 - 32) > 0x5E || ((v11 >> 8) - 32) > 0x5E || ((v11 << 8 >> 24) - 32) > 0x5E || ((v11 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v24, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v24, buf);
      }

      v14 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v24.__r_.__value_.__r.__words[0];
      }

      *buf = 134218754;
      *&buf[4] = a2;
      v26 = 2112;
      v27 = v10;
      v28 = 2080;
      v29 = v14;
      v30 = 2112;
      v31 = v22;
      v15 = "[%p|%@] failed to set DSP graph parameter %s direction - %@";
      v16 = v9;
      v17 = 42;
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v12 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v18 = bswap32(a3);
      *&buf[1] = v18;
      if ((v18 - 32) > 0x5E || ((v18 >> 8) - 32) > 0x5E || ((v18 << 8 >> 24) - 32) > 0x5E || ((v18 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v24, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v24, buf);
      }

      v19 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v24.__r_.__value_.__r.__words[0];
      }

      *buf = 134218498;
      *&buf[4] = a2;
      v26 = 2080;
      v27 = v19;
      v28 = 2112;
      v29 = v22;
      v15 = "[%p] failed to set DSP graph parameter %s direction - %@";
      v16 = v12;
      v17 = 32;
    }

    _os_log_error_impl(&dword_1C91AE000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

LABEL_15:
    *v3 = -10863;
    v13 = v23;
    v3[4] = 0;
    if ((v13 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v22);
    }

    goto LABEL_17;
  }

  LOBYTE(v22) = v20 == 0;
  v23 = 1;
  *v3 = v20 == 0;
  v3[4] = 1;
LABEL_17:
  if ((v21 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v20);
  }

  return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
}

void sub_1C91CEBB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::DSP::AUDSPGraph::GetGraphPropertyInfo(CA::DSP::AUDSPGraph *this, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *this = -10863;
      *(this + 8) = 0;
      return result;
    }

    if (*(a2 + 648))
    {
      CA::DSP::AUDSPGraph::GetCachedGraphPropertyInfo(&v23, a2, a3);
      if (v24 == 1)
      {
        v7 = v23;
LABEL_14:
        *this = v7;
        *(this + 8) = 1;
        return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
      }

      v9 = *(a2 + 648);
      if (std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((*(v9 + 8) + 624), a3))
      {
        CA::DSP::Graph::GetPropertyInfo(&v25, v9, a3);
        if (v26)
        {
          v7 = v25;
          goto LABEL_14;
        }

        v10 = *(a2 + 680);
        if (v10)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v12 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          v13 = *(a2 + 680);
          v14 = bswap32(a3);
          *&buf[1] = v14;
          if ((v14 - 32) > 0x5E || ((v14 >> 8) - 32) > 0x5E || ((v14 << 8 >> 24) - 32) > 0x5E || ((v14 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v27, a3);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v27, buf);
          }

          v17 = &v27;
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v17 = v27.__r_.__value_.__r.__words[0];
          }

          *buf = 134218754;
          *&buf[4] = a2;
          v29 = 2112;
          v30 = v13;
          v31 = 2080;
          v32 = v17;
          v33 = 2112;
          v34 = v25;
          v18 = "[%p|%@] failed to get DSP graph property %s info - %@";
          v19 = v12;
          v20 = 42;
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v15 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          v21 = bswap32(a3);
          *&buf[1] = v21;
          if ((v21 - 32) > 0x5E || ((v21 >> 8) - 32) > 0x5E || ((v21 << 8 >> 24) - 32) > 0x5E || ((v21 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v27, a3);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v27, buf);
          }

          v22 = &v27;
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = v27.__r_.__value_.__r.__words[0];
          }

          *buf = 134218498;
          *&buf[4] = a2;
          v29 = 2080;
          v30 = v22;
          v31 = 2112;
          v32 = v25;
          v18 = "[%p] failed to get DSP graph property %s info - %@";
          v19 = v15;
          v20 = 32;
        }

        _os_log_error_impl(&dword_1C91AE000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

LABEL_29:
        *this = -10863;
        v16 = v26;
        *(this + 8) = 0;
        if ((v16 & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v25);
        }

        return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
      }

      v8 = -10879;
    }

    else
    {
      v8 = -10863;
    }

    *this = v8;
    *(this + 8) = 0;
    return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  CA::DSP::AUDSPGraph::GetCachedGraphPropertyInfo(this, a2, a3);

  return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
}

void sub_1C91CEFF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *CA::DSP::AUDSPGraph::GetCachedGraphPropertyInfo(CA::DSP::AUDSPGraph *this, uint64_t a2, unsigned int a3)
{
  result = CA::DSP::AUDSPGraph::GraphPropertyCache::Find(&v7, (a2 + 1208), a3);
  if (v8 != 1)
  {
    v5 = 0;
    v6 = v7;
LABEL_6:
    *this = v6;
    goto LABEL_7;
  }

  if ((*(v7 + 48) & 1) == 0)
  {
    v5 = 0;
    v6 = -10850;
    goto LABEL_6;
  }

  *this = ((*(v7 + 24) - *(v7 + 16)) << 32) | 3;
  v5 = 1;
LABEL_7:
  *(this + 8) = v5;
  return result;
}

uint64_t CA::DSP::AUDSPGraph::Reset(CA::DSP::AUDSPGraph *this)
{
  v21 = *MEMORY[0x1E69E9840];
  caulk::shared_semaphore_mutex::lock_shared((this + 608));
  v2 = *(this + 81);
  if (v2)
  {
    v3 = CA::DSP::Graph::Reset(&v13, v2);
    if ((v14 & 1) == 0)
    {
      v6 = *(this + 85);
      Log = CA::DSP::AU::DSPGraph::GetLog(v3);
      v8 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v8)
        {
          v9 = *(this + 85);
          *buf = 134218498;
          v16 = this;
          v17 = 2112;
          v18 = v9;
          v19 = 2112;
          v20 = v13;
          v10 = "[%p|%@] failed to reset DSP graph - %@";
          v11 = Log;
          v12 = 32;
LABEL_11:
          _os_log_error_impl(&dword_1C91AE000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
        }
      }

      else if (v8)
      {
        *buf = 134218242;
        v16 = this;
        v17 = 2112;
        v18 = v13;
        v10 = "[%p] failed to reset DSP graph - %@";
        v11 = Log;
        v12 = 22;
        goto LABEL_11;
      }

      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13);
      v4 = 4294956433;
      goto LABEL_4;
    }
  }

  v4 = 0;
LABEL_4:
  caulk::shared_semaphore_mutex::unlock_shared((this + 608));
  return v4;
}

uint64_t CA::DSP::AUDSPGraph::Cleanup(CA::DSP::AUDSPGraph *this)
{
  v23 = *MEMORY[0x1E69E9840];
  caulk::shared_semaphore_mutex::lock((this + 608));
  v2 = *(this + 85);
  if (v2)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v4 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 85);
      v19 = 134218242;
      v20 = this;
      v21 = 2112;
      v22 = v5;
      v6 = "[%p|%@] will uninitialize";
      v7 = v4;
      v8 = 22;
LABEL_8:
      _os_log_impl(&dword_1C91AE000, v7, OS_LOG_TYPE_DEFAULT, v6, &v19, v8);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v9 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = this;
      v6 = "[%p] will uninitialize";
      v7 = v9;
      v8 = 12;
      goto LABEL_8;
    }
  }

  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::Suspend(*(this + 412));
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 81);
  *(this + 81) = 0;
  v10 = *(this + 85);
  if (v10)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v12 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(this + 85);
      v19 = 134218242;
      v20 = this;
      v21 = 2112;
      v22 = v13;
      v14 = "[%p|%@] did uninitialize";
      v15 = v12;
      v16 = 22;
LABEL_18:
      _os_log_impl(&dword_1C91AE000, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v17 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = this;
      v14 = "[%p] did uninitialize";
      v15 = v17;
      v16 = 12;
      goto LABEL_18;
    }
  }

  return caulk::shared_semaphore_mutex::unlock((this + 608));
}

uint64_t CA::DSP::AUDSPGraph::Initialize(CA::DSP::AUDSPGraph *this)
{
  v552 = *MEMORY[0x1E69E9840];
  caulk::shared_semaphore_mutex::lock((this + 608));
  v512 = this;
  v2 = *(this + 85);
  if (v2)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v4 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 85);
      *buf = 134218242;
      *&buf[4] = this;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      v6 = "[%p|%@] will initialize";
      v7 = v4;
      v8 = 22;
LABEL_8:
      _os_log_impl(&dword_1C91AE000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v9 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = this;
      v6 = "[%p] will initialize";
      v7 = v9;
      v8 = 12;
      goto LABEL_8;
    }
  }

  allocator = *MEMORY[0x1E695E480];
  v10 = [+[CADSPLanguageV1Interpreter allocWithZone:](CADSPLanguageV1Interpreter init];
  *buf = 0;
  __t.__d_.__rep_ = v10;
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(buf);
  v11 = *(this + 86);
  if (v11)
  {
    CFRetain(*(this + 86));
  }

  *buf = 0;
  *value = v11;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
  [__t.__d_.__rep_ setPreprocessorIncludePaths:v11];
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(value);
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  *buf = 0;
  theDict.__r_.__value_.__r.__words[0] = Mutable;
  CA::DSP::ReferenceCounted<__CFDictionary *>::~ReferenceCounted(buf);
  *buf = @"sampleRate";
  CFRetain(@"sampleRate");
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  CA::DSP::String::Create(value, allocator, v14, *(Element + 80));
  CFDictionarySetValue(theDict.__r_.__value_.__l.__data_, *buf, *value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
  *buf = @"numIns";
  CFRetain(@"numIns");
  v15 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v15)
  {
    ausdk::Throw(0xFFFFD583);
  }

  CA::DSP::String::Create(value, allocator, v16, *(v15 + 108));
  CFDictionarySetValue(theDict.__r_.__value_.__l.__data_, *buf, *value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
  v17 = *(this + 21);
  if (v17)
  {
    if (!(*(*v17 + 24))(v17))
    {
      goto LABEL_19;
    }
  }

  else if (!((*(this + 19) - *(this + 18)) >> 3))
  {
    goto LABEL_19;
  }

  *buf = @"numOuts";
  CFRetain(@"numOuts");
  v18 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v18)
  {
    ausdk::Throw(0xFFFFD583);
  }

  CA::DSP::String::Create(value, allocator, v19, *(v18 + 108));
  CFDictionarySetValue(theDict.__r_.__value_.__l.__data_, *buf, *value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
LABEL_19:
  *buf = @"blockSize";
  CFRetain(@"blockSize");
  if (*(this + 376) == 1)
  {
    v21 = *(this + 84);
  }

  else
  {
    v21 = 1;
  }

  CA::DSP::String::Create(value, allocator, v20, v21);
  CFDictionarySetValue(theDict.__r_.__value_.__l.__data_, *buf, *value);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
  v22 = CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
  v23 = *(this + 87);
  if (v23)
  {
    applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::StringRef>::DictionaryRef_iterator(v22, v23);
    applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::StringRef>::DictionaryRef_iterator(value, *(this + 87));
    *&value[8] = (*&value[24] - *&value[16]) >> 3;
    while (1)
    {
      if (*buf && (v24 = *&buf[8], *&buf[8] != (*&buf[24] - *&buf[16]) >> 3))
      {
        v25 = *value;
      }

      else
      {
        v25 = *value;
        if (!*value || *&value[8] == (*&value[24] - *&value[16]) >> 3)
        {
          break;
        }

        v24 = *&buf[8];
      }

      if (*buf == v25 && v24 == *&value[8])
      {
        break;
      }

      if ((v24 & 0x8000000000000000) != 0 || v24 >= (*&buf[24] - *&buf[16]) >> 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "DictionaryRef_iterator iterator out of range.");
        exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
      }

      applesauce::CF::StringRef::from_get(v549, *(*&buf[16] + 8 * v24));
      applesauce::CF::StringRef::from_get(&cf, *(*&buf[40] + 8 * *&buf[8]));
      v27 = *v549;
      v28 = cf.__r_.__value_.__r.__words[0];
      if (*v549)
      {
        CFRetain(*v549);
      }

      cf.__r_.__value_.__r.__words[0] = v28;
      if (v28)
      {
        CFRetain(v28);
        v29 = cf.__r_.__value_.__r.__words[0];
      }

      else
      {
        v29 = 0;
      }

      CFDictionarySetValue(theDict.__r_.__value_.__l.__data_, *v549, v29);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
      if (v28)
      {
        CFRelease(v28);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      ++*&buf[8];
    }

    if (*&value[40])
    {
      v547 = *&value[40];
      operator delete(*&value[40]);
    }

    if (*&value[16])
    {
      *&value[24] = *&value[16];
      operator delete(*&value[16]);
    }

    if (*&buf[40])
    {
      *&buf[48] = *&buf[40];
      operator delete(*&buf[40]);
    }

    if (*&buf[16])
    {
      *&buf[24] = *&buf[16];
      operator delete(*&buf[16]);
    }
  }

  v542 = theDict.__r_.__value_.__r.__words[0];
  theDict.__r_.__value_.__r.__words[0] = 0;
  CA::DSP::ReferenceCounted<__CFDictionary *>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
  [__t.__d_.__rep_ setPreprocessorMacroDefinitions:v542];
  CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v542);
  v30 = *(this + 84);
  v31 = *(this + 83);
  if (!v30)
  {
    if (!v31)
    {
      v40 = *(this + 85);
      if (v40)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v34 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_119;
        }

        v42 = *(this + 85);
        *buf = 134218242;
        *&buf[4] = this;
        *&buf[12] = 2112;
        *&buf[14] = v42;
        v36 = "[%p|%@] neither graph text file path nor graph text were set";
LABEL_72:
        v43 = v34;
        v44 = 22;
LABEL_106:
        _os_log_error_impl(&dword_1C91AE000, v43, OS_LOG_TYPE_ERROR, v36, buf, v44);
        goto LABEL_119;
      }

      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v39 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      *buf = 134217984;
      *&buf[4] = this;
      v36 = "[%p] neither graph text file path nor graph text were set";
LABEL_105:
      v43 = v39;
      v44 = 12;
      goto LABEL_106;
    }

    CA::DSP::MutableGraphModel::Create(&cf, allocator);
    theDict.__r_.__value_.__r.__words[0] = cf.__r_.__value_.__r.__words[0];
    if (cf.__r_.__value_.__r.__words[0])
    {
      CFRetain(cf.__r_.__value_.__l.__data_);
      v37 = theDict.__r_.__value_.__r.__words[0];
    }

    else
    {
      v37 = 0;
    }

    CA::DSP::C::API::Call<unsigned char ()(__CADSPLanguageV1Interpreter *,__CFString const*,__CADSPGraphModel *,__CADSPError **)>::operator()<__CADSPLanguageV1Interpreter *,__CFString const*&,__CADSPGraphModel * const&>(buf, CADSPLanguageV1InterpreterInterpretContentsOfFile, __t.__d_.__rep_, v31, v37);
    v45 = buf[8];
    if (buf[8])
    {
      value[8] = buf[8];
    }

    else
    {
      v46 = *buf;
      *buf = 0;
      *v549 = 0;
      *value = v46;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v549);
      value[8] = v45;
      if ((buf[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
      }
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
    if (value[8] == 1)
    {
      v47 = cf.__r_.__value_.__r.__words[0];
      cf.__r_.__value_.__r.__words[0] = 0;
      *v549 = v47;
      v549[8] = 1;
    }

    else
    {
      v419 = CA::DSP::ReferenceCounted<__CADSPError *>::ReferenceCounted(buf, *value);
      v420 = *buf;
      *buf = 0;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v419);
      *v549 = v420;
      v549[8] = 0;
      if ((value[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(value);
      }
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
    v48 = v549[8];
    if (v549[8] == 1)
    {
      v49 = *v549;
      v521 = *v549;
      if (!*v549)
      {
        goto LABEL_115;
      }

      goto LABEL_82;
    }

    v50 = *(v512 + 85);
    if (v50)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v52 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      v53 = *(v512 + 85);
      *buf = 134218498;
      *&buf[4] = v512;
      *&buf[12] = 2112;
      *&buf[14] = v53;
      *&buf[22] = 2112;
      *&buf[24] = *v549;
      v54 = "[%p|%@] failed to interpret graph file - %@";
      goto LABEL_101;
    }

    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v63 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    *buf = 134218242;
    *&buf[4] = v512;
    *&buf[12] = 2112;
    *&buf[14] = *v549;
    v54 = "[%p] failed to interpret graph file - %@";
LABEL_113:
    v61 = v63;
    v62 = 22;
    goto LABEL_114;
  }

  if (v31)
  {
    v32 = *(this + 85);
    if (v32)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v34 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      v35 = *(this + 85);
      *buf = 134218242;
      *&buf[4] = this;
      *&buf[12] = 2112;
      *&buf[14] = v35;
      v36 = "[%p|%@] graph text file path and graph text cannot be set simultaneously";
      goto LABEL_72;
    }

    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v39 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_119;
    }

    *buf = 134217984;
    *&buf[4] = this;
    v36 = "[%p] graph text file path and graph text cannot be set simultaneously";
    goto LABEL_105;
  }

  CA::DSP::MutableGraphModel::Create(&cf, allocator);
  theDict.__r_.__value_.__r.__words[0] = cf.__r_.__value_.__r.__words[0];
  if (cf.__r_.__value_.__r.__words[0])
  {
    CFRetain(cf.__r_.__value_.__l.__data_);
    v38 = theDict.__r_.__value_.__r.__words[0];
  }

  else
  {
    v38 = 0;
  }

  CA::DSP::C::API::Call<unsigned char ()(__CADSPLanguageV1Interpreter *,__CFString const*,__CADSPGraphModel *,__CADSPError **)>::operator()<__CADSPLanguageV1Interpreter *,__CFString const*&,__CADSPGraphModel * const&>(buf, CADSPLanguageV1InterpreterInterpretString, __t.__d_.__rep_, v30, v38);
  v55 = buf[8];
  if (buf[8])
  {
    value[8] = buf[8];
  }

  else
  {
    v56 = *buf;
    *buf = 0;
    *v549 = 0;
    *value = v56;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v549);
    value[8] = v55;
    if ((buf[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
    }
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
  if (value[8] == 1)
  {
    v57 = cf.__r_.__value_.__r.__words[0];
    cf.__r_.__value_.__r.__words[0] = 0;
    *v549 = v57;
    v549[8] = 1;
  }

  else
  {
    v421 = CA::DSP::ReferenceCounted<__CADSPError *>::ReferenceCounted(buf, *value);
    v422 = *buf;
    *buf = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v421);
    *v549 = v422;
    v549[8] = 0;
    if ((value[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(value);
    }
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
  v48 = v549[8];
  if (v549[8] != 1)
  {
    v58 = *(v512 + 85);
    if (v58)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v52 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      v60 = *(v512 + 85);
      *buf = 134218498;
      *&buf[4] = v512;
      *&buf[12] = 2112;
      *&buf[14] = v60;
      *&buf[22] = 2112;
      *&buf[24] = *v549;
      v54 = "[%p|%@] failed to interpret graph text - %@";
LABEL_101:
      v61 = v52;
      v62 = 32;
LABEL_114:
      _os_log_error_impl(&dword_1C91AE000, v61, OS_LOG_TYPE_ERROR, v54, buf, v62);
      goto LABEL_115;
    }

    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v63 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    *buf = 134218242;
    *&buf[4] = v512;
    *&buf[12] = 2112;
    *&buf[14] = *v549;
    v54 = "[%p] failed to interpret graph text - %@";
    goto LABEL_113;
  }

  v49 = *v549;
  v521 = *v549;
  if (*v549)
  {
LABEL_82:
    CFRetain(v49);
  }

LABEL_115:
  if (v549[8] == 1)
  {
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(v549);
    if (v48)
    {
      goto LABEL_120;
    }
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v549);
    if (v48)
    {
      goto LABEL_120;
    }
  }

LABEL_119:
  v521 = 0;
LABEL_120:
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&__t);
  v64 = v521;
  if (!v521)
  {
    v65 = 4294956421;
    goto LABEL_727;
  }

  if (*(v512 + 85))
  {
    *buf = v521;
    CFRetain(v521);
    [*buf setName:*(v512 + 85)];
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(buf);
    v64 = v521;
  }

  *buf = v521;
  CFRetain(v64);
  v66 = [*buf options];
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(buf);
  if (*(v512 + 3368))
  {
    v67 = 4;
  }

  else
  {
    v67 = 0;
  }

  *value = v521;
  CFRetain(v521);
  [*value setOptions:v67 | v66 & 0xFFFFFFFB];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(value);
  v68 = *(v512 + 84);
  v69 = ausdk::AUScope::GetElement((v512 + 80), 0);
  if (!v69)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v70 = *(v69 + 80);
  v71 = *(v512 + 376);
  v72 = *(v512 + 85);
  if (v72)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v74 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v75 = *(v512 + 85);
      v76 = "fixed";
      *buf = 134219010;
      if (v71)
      {
        v76 = "variable";
      }

      *&buf[4] = v512;
      *&buf[12] = 2112;
      *&buf[14] = v75;
      *&buf[22] = 2080;
      *&buf[24] = v76;
      *&buf[32] = 1024;
      *&buf[34] = v68;
      *&buf[38] = 1024;
      *&buf[40] = v70;
      v77 = "[%p|%@] setting %s slice duration with block size %u and sample rate %u";
      v78 = v74;
      v79 = 44;
LABEL_139:
      _os_log_impl(&dword_1C91AE000, v78, OS_LOG_TYPE_DEFAULT, v77, buf, v79);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v80 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v81 = "fixed";
      *buf = 134218754;
      *&buf[12] = 2080;
      *&buf[4] = v512;
      if (v71)
      {
        v81 = "variable";
      }

      *&buf[14] = v81;
      *&buf[22] = 1024;
      *&buf[24] = v68;
      *&buf[28] = 1024;
      *&buf[30] = v70;
      v77 = "[%p] setting %s slice duration with block size %u and sample rate %u";
      v78 = v80;
      v79 = 34;
      goto LABEL_139;
    }
  }

  *buf = v521;
  CFRetain(v521);
  [*buf setSliceDuration:v68 | (v70 << 32)];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(buf);
  *value = v521;
  CFRetain(v521);
  [*value setSliceDurationCanVary:v71 ^ 1u];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(value);
  cf.__r_.__value_.__r.__words[0] = v521;
  CFRetain(v521);
  v82 = [cf.__r_.__value_.__l.__data_ audioStreamConfigurationNames];
  *buf = 0;
  *v549 = v82;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
  v83 = *v549;
  Count = CFArrayGetCount(*v549);
  v85 = *v549;
  if (v83 != *v549 || Count)
  {
    v90 = 0;
    v505 = *v549;
    v506 = Count - 1;
    do
    {
      v91 = v90;
      ValueAtIndex = CFArrayGetValueAtIndex(v83, v90);
      v93 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      *buf = 0;
      theDict.__r_.__value_.__r.__words[0] = v93;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
      __t.__d_.__rep_ = v521;
      CFRetain(v521);
      if ([__t.__d_.__rep_ getAudioStreamConfiguration:value forName:theDict.__r_.__value_.__r.__words[0]])
      {
        *buf = *value;
        *&buf[16] = *&value[16];
        *&buf[32] = *&value[32];
        v94 = 1;
      }

      else
      {
        v94 = 0;
        buf[0] = 0;
      }

      buf[48] = v94;
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&__t);
      if (buf[48] != 1)
      {
        goto LABEL_175;
      }

      if (CFStringHasPrefix(theDict.__r_.__value_.__l.__data_, @"input"))
      {
        v95 = ausdk::AUScope::GetElement((v512 + 80), 0);
        goto LABEL_153;
      }

      if (CFStringHasPrefix(theDict.__r_.__value_.__l.__data_, @"output"))
      {
        v108 = *(v512 + 21);
        if (v108)
        {
          if ((*(*v108 + 24))(v108))
          {
            goto LABEL_179;
          }
        }

        else if (((*(v512 + 19) - *(v512 + 18)) >> 3))
        {
LABEL_179:
          v95 = ausdk::AUScope::GetElement((v512 + 128), 0);
LABEL_153:
          if (!v95)
          {
            ausdk::Throw(0xFFFFD583);
          }

          v96 = v83;
          v97 = *(v95 + 80);
          v98 = *(v95 + 92);
          v99 = *(v95 + 108);
          v100 = *buf;
          v101 = *&buf[8];
          v102 = *&buf[12];
          v104 = *&buf[16];
          v103 = *&buf[20];
          v106 = *&buf[24];
          v105 = *&buf[28];
          v509 = *&buf[32];
          if (!CFStringFind(*&theDict, @"FixedChannelCount", 0).length)
          {
            if ((v102 & 0x20) != 0)
            {
              v105 = 1;
            }

            else if (!v105)
            {
              v107 = (v509 + 7) >> 3;
              goto LABEL_164;
            }

            v107 = v106 / v105;
LABEL_164:
            if ((v98 & 0x20) != 0)
            {
              v109 = 1;
            }

            else
            {
              v109 = v99;
            }

            v106 = v107 * v109;
            v102 = v102 & 0xFFFFFFDF | v98 & 0x20;
            v103 = 1;
            v105 = v99;
            v104 = v107 * v109;
          }

          if (CFStringFind(*&theDict, @"FixedSampleRate", 0).length)
          {
            v110 = v100;
          }

          else
          {
            v110 = v97;
          }

          *buf = v110;
          *&buf[8] = v101;
          *&buf[12] = v102;
          *&buf[16] = v104;
          *&buf[20] = v103;
          *&buf[24] = v106;
          *&buf[28] = v105;
          *&buf[32] = v509;
          v542 = v521;
          CFRetain(v521);
          v83 = v96;
          v85 = v505;
          if (buf[48])
          {
            v111 = buf;
          }

          else
          {
            v111 = 0;
          }

          [v542 setAudioStreamConfiguration:v111 forName:theDict.__r_.__value_.__r.__words[0]];
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v542);
        }
      }

LABEL_175:
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
      v90 = v91 + 1;
    }

    while (v83 != v85 || v506 != v91);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v549);
  *buf = 0;
  v86 = MGCopyAnswerWithError();
  v87 = v86;
  if (*buf)
  {
    if (!v86)
    {
      goto LABEL_261;
    }

    v88 = 0;
    v89 = 0;
  }

  else
  {
    if (!v86)
    {
      goto LABEL_261;
    }

    v89 = applesauce::CF::convert_as<BOOL,0>(v86);
    v88 = v89 > 0xFFu;
  }

  CFRelease(v87);
  if ((v88 & v89) == 1)
  {
    CA::DSP::AU::DSPGraph::Settings::Get<__CFString const*>(&cf, v512 + 415, @"com.apple.coreaudio.AUDSPGraph.UserPreferencesSuiteName", @"com.apple.coreaudio");
    if (!CFPreferencesGetAppBooleanValue(@"AUDSPGraphEnableAudioCaptures", cf.__r_.__value_.__l.__data_, 0))
    {
LABEL_259:
      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }

      goto LABEL_261;
    }

    CA::DSP::AU::DSPGraph::Settings::Get<__CFString const*>(&theDict, v512 + 415, @"com.apple.coreaudio.AUDSPGraph.TemporaryDirectoryPath", @"/tmp/AudioCapture/AUDSPGraph");
    if (!theDict.__r_.__value_.__r.__words[0])
    {
      v426 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v426, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(buf, theDict.__r_.__value_.__l.__data_);
    *value = *buf;
    *&value[16] = *&buf[16];
    std::__fs::filesystem::__status(value, 0);
    if (buf[0] == 255 || !buf[0])
    {
      std::__fs::filesystem::__create_directories(value, 0);
      v112 = *(v512 + 85);
      if (v112)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v114 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_196;
        }

        v115 = *(v512 + 85);
        v116 = value;
        if (value[23] < 0)
        {
          v116 = *value;
        }

        *buf = 134218498;
        *&buf[4] = v512;
        *&buf[12] = 2112;
        *&buf[14] = v115;
        *&buf[22] = 2080;
        *&buf[24] = v116;
        v117 = "[%p|%@] created '%s' directory";
        v118 = v114;
        v119 = 32;
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v120 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_196;
        }

        v397 = value;
        if (value[23] < 0)
        {
          v397 = *value;
        }

        *buf = 134218242;
        *&buf[4] = v512;
        *&buf[12] = 2080;
        *&buf[14] = v397;
        v117 = "[%p] created '%s' directory";
        v118 = v120;
        v119 = 22;
      }

      _os_log_debug_impl(&dword_1C91AE000, v118, OS_LOG_TYPE_DEBUG, v117, buf, v119);
    }

LABEL_196:
    memset(buf, 0, sizeof(buf));
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v542 = std::chrono::system_clock::to_time_t(&__t);
    v121 = localtime(&v542);
    strftime(buf, 0x40uLL, "%Y%m%d.%H%M%S", v121);
    v540 = v521;
    CFRetain(v521);
    v122 = [v521 name];
    *v549 = 0;
    theString = v122;
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v540);
    v539 = v521;
    CFRetain(v521);
    v123 = [v521 boxes];
    *v549 = 0;
    theArray = v123;
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v549);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v539);
    v124 = theArray;
    v507 = CFArrayGetCount(theArray);
    v510 = theArray;
    if (v124 != theArray || v507)
    {
      v125 = 0;
      do
      {
        v126 = CFArrayGetValueAtIndex(v124, v125);
        v127 = v126;
        if (v126)
        {
          CFRetain(v126);
        }

        *v549 = 0;
        v538 = v127;
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(v549);
        v128 = v538;
        v536 = v538;
        if (v538)
        {
          CFRetain(v538);
          v128 = v536;
        }

        v129 = [v128 name];
        *v549 = 0;
        appendedString = v129;
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v536);
        for (i = 0; ; ++i)
        {
          v131 = v538;
          v535 = v538;
          if (v538)
          {
            CFRetain(v538);
            v131 = v535;
          }

          v132 = [v131 numberOfOutputs];
          CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v535);
          if (v132 <= i)
          {
            break;
          }

          CA::DSP::MutableRecorderTapPointModel::Create(v549, allocator);
          v534 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
          }

          v133 = CFStringCreateMutable(allocator, 256);
          v134 = v133;
          v533 = v133;
          if (value[23] >= 0)
          {
            v135 = value;
          }

          else
          {
            v135 = *value;
          }

          CFStringAppendCString(v133, v135, 0x8000100u);
          CFStringAppendCString(v134, "/", 0x8000100u);
          CFStringAppendCString(v134, buf, 0x8000100u);
          if (theString && CFStringGetLength(theString))
          {
            CFStringAppend(v134, theString);
          }

          if (appendedString && CFStringGetLength(appendedString))
          {
            CFStringAppendCString(v134, ".", 0x8000100u);
            CFStringAppend(v134, appendedString);
          }

          CFStringAppendFormat(v134, 0, @"[%u].caf", i);
          [v534 setAudioFilePath:v533];
          CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&v533);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v534);
          v136 = *v549;
          v532 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v136 = v532;
          }

          [v136 setBoxName:appendedString];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v532);
          v137 = *v549;
          v531 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v137 = v531;
          }

          [v137 setPortIndex:i];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v531);
          v530 = v521;
          CFRetain(v521);
          v529 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v138 = v529;
          }

          else
          {
            v138 = 0;
          }

          [v530 addRecorderTapPoint:v138];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(&v529);
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v530);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(v549);
        }

        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&appendedString);
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v538);
        ++v125;
      }

      while (v124 != v510 || v125 != v507);
    }

    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&theArray);
    v139 = 0;
    theArray = 0x100000000;
    do
    {
      v140 = *&v549[v139 - 8];
      appendedString = v521;
      CFRetain(v521);
      v142 = CADSPGraphModelCopyPorts(appendedString, v140, v141);
      *v549 = 0;
      v538 = v142;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v549);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&appendedString);
      v143 = v538;
      v144 = CFArrayGetCount(v538);
      v145 = v538;
      if (v143 != v538 || v144)
      {
        v146 = 0;
        v147 = v144 - 1;
        do
        {
          v148 = v146;
          v149 = CFArrayGetValueAtIndex(v143, v146);
          v150 = v149;
          if (v149)
          {
            CFRetain(v149);
          }

          *v549 = 0;
          v533 = v150;
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(v549);
          v151 = v533;
          v527 = v533;
          if (v533)
          {
            CFRetain(v533);
            v151 = v527;
          }

          v152 = [v151 name];
          *v549 = 0;
          v528 = v152;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v527);
          CA::DSP::MutableRecorderTapPointModel::Create(v549, allocator);
          v526 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
          }

          v153 = CFStringCreateMutable(allocator, 256);
          v154 = v153;
          v525 = v153;
          if (value[23] >= 0)
          {
            v155 = value;
          }

          else
          {
            v155 = *value;
          }

          CFStringAppendCString(v153, v155, 0x8000100u);
          CFStringAppendCString(v154, "/", 0x8000100u);
          CFStringAppendCString(v154, buf, 0x8000100u);
          if (theString && CFStringGetLength(theString))
          {
            CFStringAppend(v154, theString);
          }

          if (v528 && CFStringGetLength(v528))
          {
            CFStringAppendCString(v154, ".", 0x8000100u);
            CFStringAppend(v154, v528);
          }

          CFStringAppendCString(v154, ".caf", 0x8000100u);
          [v526 setAudioFilePath:v525];
          CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&v525);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v526);
          v156 = *v549;
          v524 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v156 = v524;
          }

          [v156 setBoxName:v528];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v524);
          v523 = v521;
          CFRetain(v521);
          v522 = *v549;
          if (*v549)
          {
            CFRetain(*v549);
            v157 = v522;
          }

          else
          {
            v157 = 0;
          }

          [v523 addRecorderTapPoint:v157];
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(&v522);
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v523);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(v549);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v528);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v533);
          v146 = v148 + 1;
        }

        while (v143 != v145 || v147 != v148);
      }

      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v538);
      v139 += 4;
    }

    while (v139 != 8);
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&theString);
    if ((value[23] & 0x80000000) != 0)
    {
      operator delete(*value);
    }

    if (theDict.__r_.__value_.__r.__words[0])
    {
      CFRelease(theDict.__r_.__value_.__l.__data_);
    }

    goto LABEL_259;
  }

LABEL_261:
  theDict.__r_.__value_.__r.__words[0] = v521;
  CFRetain(v521);
  *v549 = 0;
  v158 = CADSPGraphCreateWithModel(allocator, theDict.__r_.__value_.__l.__data_, v549);
  if (v158)
  {
    cf.__r_.__value_.__r.__words[0] = 0;
    *buf = 0;
    *value = v158;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(buf);
    value[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
  }

  else
  {
    v418 = *v549;
    if (!*v549)
    {
      v418 = [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1970170734, 0];
      *v549 = v418;
    }

    cf.__r_.__value_.__r.__words[0] = 0;
    *buf = 0;
    *value = v418;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
    value[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
  v159 = value[8];
  if (value[8] == 1)
  {
    v539 = *value;
    if (*value)
    {
      CFRetain(*value);
    }

    goto LABEL_272;
  }

  v160 = *(v512 + 85);
  if (v160)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v162 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      v163 = *(v512 + 85);
      *buf = 134218498;
      *&buf[4] = v512;
      *&buf[12] = 2112;
      *&buf[14] = v163;
      *&buf[22] = 2112;
      *&buf[24] = *value;
      v164 = "[%p|%@] failed to create graph - %@";
      v165 = v162;
      v166 = 32;
LABEL_729:
      _os_log_error_impl(&dword_1C91AE000, v165, OS_LOG_TYPE_ERROR, v164, buf, v166);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v167 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *&buf[4] = v512;
      *&buf[12] = 2112;
      *&buf[14] = *value;
      v164 = "[%p] failed to create graph - %@";
      v165 = v167;
      v166 = 22;
      goto LABEL_729;
    }
  }

LABEL_272:
  if (value[8] == 1)
  {
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(value);
    if ((v159 & 1) == 0)
    {
LABEL_274:
      v539 = 0;
      goto LABEL_725;
    }
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(value);
    if ((v159 & 1) == 0)
    {
      goto LABEL_274;
    }
  }

  if (!v539)
  {
    goto LABEL_725;
  }

  CA::DSP::Graph::CopyBoxes(&v542, v539);
  v168 = v542;
  v170 = CA::DSP::end<CA::DSP::Box>(&v542);
  if (v168 != v170 || v169)
  {
    v235 = 0;
    v236 = v169 - 1;
    v237 = "enable";
    v238 = &unk_1EC395000;
    do
    {
      v239 = v235;
      v240 = CFArrayGetValueAtIndex(v168, v235);
      v241 = v240;
      if (v240)
      {
        CFRetain(v240);
      }

      *buf = 0;
      theString = v241;
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(buf);
      *&buf[8] = 0;
      theDict.__r_.__value_.__r.__words[0] = 0;
      PropertyInfo = CADSPBoxGetPropertyInfo(theString, 0x25uLL, 0, &buf[8]);
      v243 = theDict.__r_.__value_.__r.__words[0];
      if (!PropertyInfo && !theDict.__r_.__value_.__r.__words[0])
      {
        v243 = _CADSPRealTimeErrorCreate(v238[177], 1970170734, 0);
        theDict.__r_.__value_.__r.__words[0] = v243;
      }

      __t.__d_.__rep_ = v243;
      if (v243)
      {
        v244 = 0;
        __t.__d_.__rep_ = 0;
      }

      else
      {
        v243 = *&buf[8];
        v244 = 1;
      }

      *value = v243;
      value[8] = v244;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__t);
      v245 = value[8];
      if (value[8] == 1)
      {
        cf.__r_.__value_.__r.__words[0] = *value;
        cf.__r_.__value_.__s.__data_[8] = value[8];
      }

      else
      {
        v254 = *value;
        *value = 0;
        *buf = 0;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        cf.__r_.__value_.__r.__words[0] = v254;
        cf.__r_.__value_.__s.__data_[8] = v245;
        if ((value[8] & 1) != 0 || (CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value), (cf.__r_.__value_.__s.__data_[8] & 1) == 0))
        {
          v255 = cf.__r_.__value_.__r.__words[0];
          cf.__r_.__value_.__r.__words[0] = 0;
          *v549 = v255;
          v549[8] = 0;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v549);
          if (cf.__r_.__value_.__s.__data_[8])
          {
            goto LABEL_446;
          }

          p_cf = &cf;
          goto LABEL_445;
        }
      }

      if ((cf.__r_.__value_.__s.__data_[0] & 2) == 0)
      {
        goto LABEL_446;
      }

      *buf = *(v512 + 3368);
      CA::DSP::Box::SetProperty(value, theString, 0x25uLL, 0, buf, 4);
      if ((value[8] & 1) == 0)
      {
        v246 = *(v512 + 85);
        if (v246)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v248 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_443;
          }

          v249 = v237;
          v508 = *(v512 + 85);
          v250 = *(v512 + 3368);
          CA::DSP::Box::GetModel(&v540, theString);
          v251 = [v540 name];
          if (v250)
          {
            v252 = v249;
          }

          else
          {
            v252 = "disable";
          }

          *buf = 0;
          *v549 = v251;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
          *buf = 134219010;
          *&buf[4] = v512;
          *&buf[12] = 2112;
          *&buf[14] = v508;
          *&buf[22] = 2080;
          *&buf[24] = v252;
          v237 = v249;
          *&buf[32] = 2112;
          *&buf[34] = *v549;
          *&buf[42] = 2112;
          *&buf[44] = *value;
          _os_log_error_impl(&dword_1C91AE000, v248, OS_LOG_TYPE_ERROR, "[%p|%@] failed %s offline render mode for '%@' - %@", buf, 0x34u);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
          p_theArray = &v540;
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v257 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_443;
          }

          v258 = *(v512 + 3368);
          CA::DSP::Box::GetModel(&theArray, theString);
          v259 = [(__CFArray *)theArray name];
          if (v258)
          {
            v260 = v237;
          }

          else
          {
            v260 = "disable";
          }

          *buf = 0;
          *v549 = v259;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
          *buf = 134218754;
          *&buf[4] = v512;
          *&buf[12] = 2080;
          *&buf[14] = v260;
          *&buf[22] = 2112;
          *&buf[24] = *v549;
          *&buf[32] = 2112;
          *&buf[34] = *value;
          _os_log_error_impl(&dword_1C91AE000, v257, OS_LOG_TYPE_ERROR, "[%p] failed %s offline render mode for '%@' - %@", buf, 0x2Au);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v549);
          p_theArray = &theArray;
        }

        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(p_theArray);
        v238 = &unk_1EC395000;
      }

LABEL_443:
      if (value[8])
      {
        goto LABEL_446;
      }

      p_cf = value;
LABEL_445:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&p_cf->__r_.__value_.__l.__data_);
LABEL_446:
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(&theString);
      v235 = v239 + 1;
    }

    while (v168 != v170 || v236 != v239);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v542);
  CA::DSP::Graph::CopyBoxes(v549, v539);
  v171 = *v549;
  v173 = CA::DSP::end<CA::DSP::Box>(v549);
  if (v171 != v173 || v172)
  {
    v261 = 0;
    v262 = v172 - 1;
    do
    {
      v263 = v261;
      v264 = CFArrayGetValueAtIndex(v171, v261);
      v265 = v264;
      if (v264)
      {
        CFRetain(v264);
      }

      *buf = 0;
      cf.__r_.__value_.__r.__words[0] = v265;
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(buf);
      (*(**(cf.__r_.__value_.__r.__words[0] + 8) + 216))(buf);
      if (*&buf[4] != 1685287015)
      {
        goto LABEL_474;
      }

      theDict.__r_.__value_.__r.__words[0] = *(v512 + 99);
      CA::DSP::Box::SetProperty(value, cf.__r_.__value_.__l.__data_, 0x70727375uLL, 0, &theDict, 8);
      if ((value[8] & 1) == 0)
      {
        v266 = *(v512 + 85);
        if (v266)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v268 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_472;
          }

          v269 = *(v512 + 85);
          CA::DSP::Box::GetModel(&v542, cf.__r_.__value_.__l.__data_);
          v270 = [v542 name];
          *buf = 0;
          __t.__d_.__rep_ = v270;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
          *buf = 134218754;
          *&buf[4] = v512;
          *&buf[12] = 2112;
          *&buf[14] = v269;
          *&buf[22] = 2112;
          *&buf[24] = __t;
          *&buf[32] = 2112;
          *&buf[34] = *value;
          _os_log_impl(&dword_1C91AE000, v268, OS_LOG_TYPE_DEFAULT, "[%p|%@] failed set property strip substitutions on '%@' - %@", buf, 0x2Au);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&__t);
          p_theString = &v542;
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v272 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_472;
          }

          CA::DSP::Box::GetModel(&theString, cf.__r_.__value_.__l.__data_);
          v273 = [(__CFString *)theString name];
          *buf = 0;
          __t.__d_.__rep_ = v273;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
          *buf = 134218498;
          *&buf[4] = v512;
          *&buf[12] = 2112;
          *&buf[14] = __t;
          *&buf[22] = 2112;
          *&buf[24] = *value;
          _os_log_impl(&dword_1C91AE000, v272, OS_LOG_TYPE_DEFAULT, "[%p] failed set property strip substitutions on '%@' - %@", buf, 0x20u);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&__t);
          p_theString = &theString;
        }

        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(p_theString);
      }

LABEL_472:
      if ((value[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value);
      }

LABEL_474:
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
      v261 = v263 + 1;
    }

    while (v171 != v173 || v262 != v263);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v549);
  v520 = v539;
  if (v539)
  {
    CFRetain(v539);
  }

  v174 = *(v512 + 93);
  v175 = *(v512 + 94);
  if (!v174 && v175)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v175)
  {
    v176 = v174 + 16 * v175;
    do
    {
      if (!v174)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      std::pair<unsigned int,applesauce::CF::DictionaryRef>::pair[abi:ne200100](buf, *v174, *(v174 + 8));
      v177 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_298;
      }

      *value = v520;
      if (v520)
      {
        CFRetain(v520);
        v177 = *&buf[8];
        v178 = *buf;
        if (!*&buf[8])
        {
          goto LABEL_294;
        }
      }

      else
      {
        v178 = *buf;
      }

      CFRetain(v177);
LABEL_294:
      *v549 = v177;
      CA::DSP::AUDSPGraph::ApplyGraphPropertyStrip(v512, value, v178, v549);
      if (*v549)
      {
        CFRelease(*v549);
      }

      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(value);
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

LABEL_298:
      v174 += 16;
    }

    while (v174 != v176);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v520);
  v519 = v539;
  if (v539)
  {
    CFRetain(v539);
  }

  v179 = *(v512 + 88);
  v180 = *(v512 + 89);
  if (!v179 && v180)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v180)
  {
    v181 = v179 + 16 * v180;
    do
    {
      if (!v179)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      std::pair<unsigned int,applesauce::CF::DictionaryRef>::pair[abi:ne200100](buf, *v179, *(v179 + 8));
      v182 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_316;
      }

      *value = v519;
      if (v519)
      {
        CFRetain(v519);
        v182 = *&buf[8];
        v183 = *buf;
        v184 = *&buf[8] == 0;
        if (!*&buf[8])
        {
          goto LABEL_312;
        }
      }

      else
      {
        v183 = *buf;
        v184 = *&buf[8] == 0;
      }

      CFRetain(v182);
LABEL_312:
      *v549 = v182;
      CA::DSP::AUDSPGraph::ApplyGraphAUStrip(v512, value, v183, v549);
      if (!v184)
      {
        CFRelease(v182);
      }

      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(value);
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

LABEL_316:
      v179 += 16;
    }

    while (v179 != v181);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v519);
  v518 = v539;
  if (v539)
  {
    CFRetain(v539);
  }

  v185 = *(v512 + 100);
  v186 = *(v512 + 101);
  if (!v185 && v186)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v186)
  {
    v187 = &v185[3 * v186];
    do
    {
      if (!v185)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if ((*(v185 + 1) & 0x100000000) == 0)
      {
        goto LABEL_353;
      }

      v188 = *v185;
      LODWORD(v189) = *(v185 + 1);
      v190 = *(v512 + 85);
      if (v190)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v192 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          v193 = *(v512 + 85);
          v194 = bswap32(v188);
          *&buf[1] = v194;
          if ((v194 - 32) > 0x5E || ((v194 >> 8) - 32) > 0x5E || ((v194 << 8 >> 24) - 32) > 0x5E || ((v194 >> 24) - 32) > 0x5E)
          {
            std::to_string(value, v188);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(value, buf);
          }

          if (value[23] >= 0)
          {
            v197 = value;
          }

          else
          {
            v197 = *value;
          }

          *buf = 134218754;
          *&buf[4] = v512;
          *&buf[12] = 2112;
          *&buf[14] = v193;
          *&buf[22] = 2080;
          *&buf[24] = v197;
          *&buf[32] = 2048;
          *&buf[34] = v189;
          v198 = v192;
          v199 = "[%p|%@] setting DSP graph parameter %s to %f";
          v200 = 42;
          goto LABEL_350;
        }
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v195 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          v196 = bswap32(v188);
          *&buf[1] = v196;
          if ((v196 - 32) > 0x5E || ((v196 >> 8) - 32) > 0x5E || ((v196 << 8 >> 24) - 32) > 0x5E || ((v196 >> 24) - 32) > 0x5E)
          {
            std::to_string(value, v188);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(value, buf);
          }

          if (value[23] >= 0)
          {
            v201 = value;
          }

          else
          {
            v201 = *value;
          }

          *buf = 134218498;
          *&buf[4] = v512;
          *&buf[12] = 2080;
          *&buf[14] = v201;
          *&buf[22] = 2048;
          *&buf[24] = v189;
          v198 = v195;
          v199 = "[%p] setting DSP graph parameter %s to %f";
          v200 = 32;
LABEL_350:
          _os_log_impl(&dword_1C91AE000, v198, OS_LOG_TYPE_DEFAULT, v199, buf, v200);
          if ((value[23] & 0x80000000) != 0)
          {
            operator delete(*value);
          }
        }
      }

      v202 = CA::DSP::AUDSPGraph::ParameterManager::SetParameter(v549, v512 + 416, &v518, v188, v189);
      if ((v549[8] & 1) == 0)
      {
        v398 = *(v512 + 85);
        Log = CA::DSP::AU::DSPGraph::GetLog(v202);
        v400 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
        if (v398)
        {
          if (v400)
          {
            v412 = *(v512 + 85);
            AudioDSPGraph::stringFromFourCharCode<unsigned int>(value, v188);
            if (value[23] >= 0)
            {
              v413 = value;
            }

            else
            {
              v413 = *value;
            }

            *buf = 134218754;
            *&buf[4] = v512;
            *&buf[12] = 2112;
            *&buf[14] = v412;
            *&buf[22] = 2080;
            *&buf[24] = v413;
            *&buf[32] = 2112;
            *&buf[34] = *v549;
            v402 = "[%p|%@] failed to set DSP graph parameter %s - %@";
            v403 = Log;
            v404 = 42;
            goto LABEL_763;
          }
        }

        else if (v400)
        {
          AudioDSPGraph::stringFromFourCharCode<unsigned int>(value, v188);
          if (value[23] >= 0)
          {
            v401 = value;
          }

          else
          {
            v401 = *value;
          }

          *buf = 134218498;
          *&buf[4] = v512;
          *&buf[12] = 2080;
          *&buf[14] = v401;
          *&buf[22] = 2112;
          *&buf[24] = *v549;
          v402 = "[%p] failed to set DSP graph parameter %s - %@";
          v403 = Log;
          v404 = 32;
LABEL_763:
          _os_log_error_impl(&dword_1C91AE000, v403, OS_LOG_TYPE_ERROR, v402, buf, v404);
          if ((value[23] & 0x80000000) != 0)
          {
            operator delete(*value);
          }
        }

        v414 = __cxa_allocate_exception(4uLL);
        *v414 = -10875;
      }

LABEL_353:
      v185 += 3;
    }

    while (v185 != v187);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v518);
  *v517 = v539;
  if (v539)
  {
    CFRetain(v539);
  }

  v203 = *(v512 + 151);
  v204 = *(v512 + 152);
  if (!v203 && v204)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v204)
  {
    v205 = v203 + (v204 << 6);
    do
    {
      if (!v203)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      *buf = *v203;
      v206 = CA::DSP::ReferenceCounted<__CFDictionary const*>::ReferenceCounted(&buf[8], *(v203 + 8));
      buf[16] = *(v203 + 16);
      memset(&buf[24], 0, 24);
      default_resource = std::pmr::get_default_resource(v206);
      *&buf[48] = default_resource;
      v208 = *(v203 + 24);
      v209 = *(v203 + 32);
      *value = &buf[24];
      value[8] = 0;
      v210 = v209 - v208;
      if (v209 != v208)
      {
        if (v210 < 0)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v211 = (*(*default_resource + 16))(default_resource, v209 - v208, 1);
        *&buf[24] = v211;
        *&buf[32] = v211;
        *&buf[40] = &v211[v210];
        do
        {
          v212 = *v208++;
          *v211++ = v212;
        }

        while (v208 != v209);
        *&buf[32] = v211;
      }

      buf[56] = *(v203 + 56);
      v213 = *&buf[24];
      if (buf[56] != 1)
      {
        goto LABEL_400;
      }

      v214 = *buf;
      v215 = *&buf[32];
      v216 = *(v512 + 85);
      if (v216)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v218 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_398;
        }

        v219 = *(v512 + 85);
        v220 = bswap32(v214);
        *&value[1] = v220;
        if ((v220 - 32) > 0x5E || ((v220 >> 8) - 32) > 0x5E || ((v220 << 8 >> 24) - 32) > 0x5E || ((v220 >> 24) - 32) > 0x5E)
        {
          std::to_string(v549, v214);
        }

        else
        {
          strcpy(&value[5], "'");
          value[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(v549, value);
        }

        v223 = v549;
        if (v549[23] < 0)
        {
          v223 = *v549;
        }

        *value = 134218498;
        *&value[4] = v512;
        *&value[12] = 2112;
        *&value[14] = v219;
        *&value[22] = 2080;
        *&value[24] = v223;
        _os_log_impl(&dword_1C91AE000, v218, OS_LOG_TYPE_DEFAULT, "[%p|%@] setting DSP graph property %s", value, 0x20u);
        if ((v549[23] & 0x80000000) == 0)
        {
          goto LABEL_398;
        }

        v224 = *v549;
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v221 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_398;
        }

        v222 = bswap32(v214);
        *&v549[1] = v222;
        if ((v222 - 32) > 0x5E || ((v222 >> 8) - 32) > 0x5E || ((v222 << 8 >> 24) - 32) > 0x5E || ((v222 >> 24) - 32) > 0x5E)
        {
          std::to_string(value, v214);
        }

        else
        {
          strcpy(&v549[5], "'");
          v549[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(value, v549);
        }

        v225 = value;
        if (value[23] < 0)
        {
          v225 = *value;
        }

        *v549 = 134218242;
        *&v549[4] = v512;
        *&v549[12] = 2080;
        *&v549[14] = v225;
        _os_log_impl(&dword_1C91AE000, v221, OS_LOG_TYPE_DEFAULT, "[%p] setting DSP graph property %s", v549, 0x16u);
        if ((value[23] & 0x80000000) == 0)
        {
          goto LABEL_398;
        }

        v224 = *value;
      }

      operator delete(v224);
LABEL_398:
      v226 = CA::DSP::Graph::SetProperty(&cf, *v517, v214, v213, v215 - v213);
      if ((cf.__r_.__value_.__s.__data_[8] & 1) == 0)
      {
        v405 = *(v512 + 85);
        v406 = CA::DSP::AU::DSPGraph::GetLog(v226);
        v407 = os_log_type_enabled(v406, OS_LOG_TYPE_ERROR);
        if (v405)
        {
          if (v407)
          {
            v415 = *(v512 + 85);
            AudioDSPGraph::stringFromFourCharCode<unsigned int>(v549, v214);
            if (v549[23] >= 0)
            {
              v416 = v549;
            }

            else
            {
              v416 = *v549;
            }

            *value = 134218754;
            *&value[4] = v512;
            *&value[12] = 2112;
            *&value[14] = v415;
            *&value[22] = 2080;
            *&value[24] = v416;
            *&value[32] = 2112;
            *&value[34] = cf.__r_.__value_.__r.__words[0];
            v409 = "[%p|%@] failed to set DSP graph property %s - %@";
            v410 = v406;
            v411 = 42;
            goto LABEL_771;
          }
        }

        else if (v407)
        {
          AudioDSPGraph::stringFromFourCharCode<unsigned int>(v549, v214);
          if (v549[23] >= 0)
          {
            v408 = v549;
          }

          else
          {
            v408 = *v549;
          }

          *value = 134218498;
          *&value[4] = v512;
          *&value[12] = 2080;
          *&value[14] = v408;
          *&value[22] = 2112;
          *&value[24] = cf.__r_.__value_.__r.__words[0];
          v409 = "[%p] failed to set DSP graph property %s - %@";
          v410 = v406;
          v411 = 32;
LABEL_771:
          _os_log_error_impl(&dword_1C91AE000, v410, OS_LOG_TYPE_ERROR, v409, value, v411);
          if ((v549[23] & 0x80000000) != 0)
          {
            operator delete(*v549);
          }
        }

        v417 = __cxa_allocate_exception(4uLL);
        *v417 = -10875;
      }

      v213 = *&buf[24];
LABEL_400:
      if (v213)
      {
        *&buf[32] = v213;
        (*(**&buf[48] + 24))(*&buf[48], v213, *&buf[40] - v213, 1);
      }

      CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&buf[8]);
      v203 += 64;
    }

    while (v203 != v205);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v517);
  *v549 = 0;
  v227 = CADSPGraphInitialize(v539, v549);
  v228 = *v549;
  if (!v227 && !*v549)
  {
    goto LABEL_792;
  }

  while (1)
  {
    cf.__r_.__value_.__r.__words[0] = v228;
    if (v228)
    {
      v229 = 0;
      cf.__r_.__value_.__r.__words[0] = 0;
      *buf = v228;
    }

    else
    {
      v229 = 1;
    }

    buf[8] = v229;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
    v230 = buf[8];
    if (buf[8])
    {
      value[8] = buf[8];
LABEL_414:
      theDict.__r_.__value_.__r.__words[0] = 0;
      goto LABEL_415;
    }

    v274 = *buf;
    *buf = 0;
    *v549 = 0;
    *value = v274;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v549);
    value[8] = v230;
    if ((buf[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
      if (value[8])
      {
        goto LABEL_414;
      }
    }

    v275 = *value;
    *value = 0;
    theDict.__r_.__value_.__r.__words[0] = v275;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(value);
    if (theDict.__r_.__value_.__r.__words[0])
    {
      v276 = *(v512 + 85);
      if (v276)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v278 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          v279 = *(v512 + 85);
          *buf = 134218498;
          *&buf[4] = v512;
          *&buf[12] = 2112;
          *&buf[14] = v279;
          *&buf[22] = 2112;
          *&buf[24] = theDict.__r_.__value_.__r.__words[0];
          v280 = "[%p|%@] failed to initialize DSP graph - %@";
          v281 = v278;
          v282 = 32;
          goto LABEL_743;
        }
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v395 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = v512;
          *&buf[12] = 2112;
          *&buf[14] = theDict.__r_.__value_.__r.__words[0];
          v280 = "[%p] failed to initialize DSP graph - %@";
          v281 = v395;
          v282 = 22;
LABEL_743:
          _os_log_error_impl(&dword_1C91AE000, v281, OS_LOG_TYPE_ERROR, v280, buf, v282);
        }
      }

      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
LABEL_725:
      v65 = 4294956421;
      goto LABEL_726;
    }

LABEL_415:
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
    v231 = v539;
    if (v539)
    {
      break;
    }

    *v549 = 0;
    v551 = 0u;
    memset(buf, 0, sizeof(buf));
    v423 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v424 = 3;
    }

    else
    {
      v424 = 2;
    }

    *value = 134217984;
    *&value[4] = 0;
    _os_log_send_and_compose_impl(v424, v549, buf, 80, &dword_1C91AE000, v423, 16, "assertion failure: inGraph != nullptr -> %llu", value);
    _os_crash_msg();
    __break(1u);
LABEL_792:
    v228 = [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1970170734, 0];
    *v549 = v228;
  }

  v232 = v512;
  v233 = *(v512 + 15);
  if (v233)
  {
    LODWORD(v234) = (*(*v233 + 24))(v233);
    v231 = v539;
    v232 = v512;
  }

  else
  {
    v234 = (*(v512 + 13) - *(v512 + 12)) >> 3;
  }

  v283 = v231[1];
  v285 = v283[47];
  v284 = v283[48];
  v286 = *(v232 + 21);
  if (v286)
  {
    LODWORD(v287) = (*(*v286 + 24))(v286);
    v283 = *(v539 + 1);
  }

  else
  {
    v287 = (*(v232 + 19) - *(v232 + 18)) >> 3;
  }

  v288 = (v284 - v285) >> 3;
  v289 = (v283[51] - v283[50]) >> 3;
  v290 = v234 == v288 && v287 == v289;
  v291 = v290;
  allocatora = v291;
  if (!v290)
  {
    v292 = *(v512 + 85);
    if (v292)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v294 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        v295 = *(v512 + 85);
        *buf = 134219266;
        *&buf[4] = v512;
        *&buf[12] = 2112;
        *&buf[14] = v295;
        *&buf[22] = 1024;
        *&buf[24] = v234;
        *&buf[28] = 1024;
        *&buf[30] = v287;
        *&buf[34] = 1024;
        *&buf[36] = v288;
        *&buf[40] = 1024;
        *&buf[42] = v289;
        v296 = "[%p|%@] AudioUnit (%u -> %u) and DSP graph (%u -> %u) I/O bus counts don't match";
        v297 = v294;
        v298 = 46;
        goto LABEL_741;
      }
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v299 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219008;
        *&buf[4] = v512;
        *&buf[12] = 1024;
        *&buf[14] = v234;
        *&buf[18] = 1024;
        *&buf[20] = v287;
        *&buf[24] = 1024;
        *&buf[26] = v288;
        *&buf[30] = 1024;
        *&buf[32] = v289;
        v296 = "[%p] AudioUnit (%u -> %u) and DSP graph (%u -> %u) I/O bus counts don't match";
        v297 = v299;
        v298 = 36;
LABEL_741:
        _os_log_error_impl(&dword_1C91AE000, v297, OS_LOG_TYPE_ERROR, v296, buf, v298);
      }
    }
  }

  if (v234 >= v288)
  {
    v300 = v288;
  }

  else
  {
    v300 = v234;
  }

  v301 = &off_1C925E000;
  if (v300)
  {
    v302 = 0;
    do
    {
      v303 = ausdk::AUScope::GetElement((v512 + 80), v302);
      if (!v303)
      {
LABEL_730:
        ausdk::Throw(0xFFFFD583);
      }

      v304 = *(v303 + 96);
      *value = *(v303 + 80);
      *&value[16] = v304;
      *&value[32] = *(v303 + 112);
      CA::DSP::Graph::GetStreamDescription(buf, v539, v302, 0);
      *v549 = *buf;
      *&v549[16] = *&buf[16];
      *&v549[32] = *&buf[32];
      if (*value != *buf || *&value[8] != *&v549[8] || *&value[16] != *&v549[16] || *&value[28] != *&v549[28])
      {
LABEL_582:
        v326 = *(v512 + 85);
        if (v326)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v328 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            v331 = v301;
            v332 = *(v512 + 85);
            CA::StreamDescription::AsString(&cf, value, v329, v330);
            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v335 = &cf;
            }

            else
            {
              v335 = cf.__r_.__value_.__r.__words[0];
            }

            v336 = *&value[12];
            CA::StreamDescription::AsString(&theDict, v549, v333, v334);
            p_theDict = &theDict;
            if ((theDict.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_theDict = theDict.__r_.__value_.__r.__words[0];
            }

            *buf = 134219522;
            *&buf[4] = v512;
            *&buf[12] = 2112;
            *&buf[14] = v332;
            *&buf[22] = 2080;
            *&buf[24] = v335;
            *&buf[32] = 2048;
            *&buf[34] = v336;
            *&buf[42] = 2080;
            *&buf[44] = p_theDict;
            *&buf[52] = 2048;
            *&buf[54] = *&v549[12];
            *&buf[62] = 1024;
            LODWORD(v551) = v302;
            _os_log_error_impl(&dword_1C91AE000, v328, OS_LOG_TYPE_ERROR, "[%p|%@] AudioUnit format %s (0x%lX) and DSP graph format %s (0x%lX) for input bus %d don't match", buf, 0x44u);
            if (SHIBYTE(theDict.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(theDict.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }

            v301 = v331;
          }
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v338 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            CA::StreamDescription::AsString(&cf, value, v339, v340);
            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v343 = &cf;
            }

            else
            {
              v343 = cf.__r_.__value_.__r.__words[0];
            }

            v344 = *&value[12];
            CA::StreamDescription::AsString(&theDict, v549, v341, v342);
            v345 = &theDict;
            if ((theDict.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v345 = theDict.__r_.__value_.__r.__words[0];
            }

            *buf = 134219266;
            *&buf[4] = v512;
            *&buf[12] = 2080;
            *&buf[14] = v343;
            *&buf[22] = 2048;
            *&buf[24] = v344;
            *&buf[32] = 2080;
            *&buf[34] = v345;
            *&buf[42] = 2048;
            *&buf[44] = *&v549[12];
            *&buf[52] = 1024;
            *&buf[54] = v302;
            _os_log_error_impl(&dword_1C91AE000, v338, OS_LOG_TYPE_ERROR, "[%p] AudioUnit format %s (0x%lX) and DSP graph format %s (0x%lX) for input bus %d don't match", buf, 0x3Au);
            if (SHIBYTE(theDict.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(theDict.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }
          }
        }

        goto LABEL_597;
      }

      v305 = *&value[12];
      if (*&value[8] != 1819304813)
      {
        v309 = *&v549[12];
        goto LABEL_581;
      }

      v306 = *&value[12] & 0x7FFFFFFF;
      if ((*&value[12] & 0x7FFFFFFF) == 0)
      {
        v306 = *&value[12];
      }

      if (*&value[24])
      {
        if ((value[12] & 0x20) != 0)
        {
          v307 = 1;
        }

        else
        {
          v307 = *&value[28];
        }

        if (v307)
        {
          v307 = 8 * (*&value[24] / v307);
          v308 = v307 == *&value[32];
          goto LABEL_527;
        }
      }

      else
      {
        v307 = 0;
      }

      v308 = *&value[32] == 0;
LABEL_527:
      v310 = v308;
      v311 = v306 & 0xFFFFFFBF;
      if (v310)
      {
        v312 = v311 | 8;
      }

      else
      {
        v312 = v311;
      }

      v313 = value[32] & 7;
      v314 = v307 == *&value[32] && v313 == 0;
      v305 = v312 & 0xFFFFFFAF;
      if (!v314)
      {
        v305 = v312;
      }

      if (v305)
      {
        v305 &= 0xFFFFFFBB;
      }

      if ((v305 & 8) != 0 && *&value[32] <= 8u)
      {
        v305 &= 2u;
      }

      if (*&value[28] == 1)
      {
        v305 &= ~0x20u;
      }

      if (!v305)
      {
        v305 = 0x80000000;
      }

      v316 = *&v549[24];
      v317 = *&v549[12] & 0x7FFFFFFF;
      if ((*&v549[12] & 0x7FFFFFFF) == 0)
      {
        v317 = *&v549[12];
      }

      if (!*&v549[24])
      {
        goto LABEL_558;
      }

      if ((v549[12] & 0x20) != 0)
      {
        v318 = 1;
      }

      else
      {
        v318 = *&value[28];
      }

      if (!v318)
      {
        v316 = 0;
LABEL_558:
        v319 = *&value[32] == 0;
        goto LABEL_559;
      }

      v316 = 8 * (*&v549[24] / v318);
      v319 = v316 == *&value[32];
LABEL_559:
      v320 = v319;
      v321 = v317 & 0xFFFFFFBF;
      if (v320)
      {
        v321 |= 8u;
      }

      v322 = v316 == *&value[32] && v313 == 0;
      v323 = v321 & 0xFFFFFFAF;
      if (!v322)
      {
        v323 = v321;
      }

      if (v323)
      {
        v323 &= 0xFFFFFFBB;
      }

      v324 = (v323 & 8) == 0 || *&value[32] > 8u;
      v325 = v323 & 2;
      if (v324)
      {
        v325 = v323;
      }

      if (*&value[28] == 1)
      {
        v309 = v325 & 0xFFFFFFDF;
      }

      else
      {
        v309 = v325;
      }

      if (!v309)
      {
        v309 = 0x80000000;
      }

LABEL_581:
      if (v305 != v309)
      {
        goto LABEL_582;
      }

LABEL_597:
      v302 = (v302 + 1);
    }

    while (v300 != v302);
  }

  if (v287 >= v289)
  {
    v346 = v289;
  }

  else
  {
    v346 = v287;
  }

  if (v346)
  {
    v347 = 0;
    v511 = *(v301 + 501);
    do
    {
      v348 = ausdk::AUScope::GetElement((v512 + 128), v347);
      if (!v348)
      {
        goto LABEL_730;
      }

      v349 = *(v348 + 96);
      *value = *(v348 + 80);
      *&value[16] = v349;
      *&value[32] = *(v348 + 112);
      CA::DSP::Graph::GetStreamDescription(buf, v539, v347, 1);
      *v549 = *buf;
      *&v549[16] = *&buf[16];
      *&v549[32] = *&buf[32];
      if (*value != *buf || *&value[8] != *&v549[8] || *&value[16] != *&v549[16] || *&value[28] != *&v549[28])
      {
LABEL_689:
        v371 = *(v512 + 85);
        if (v371)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v373 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            v376 = *(v512 + 85);
            CA::StreamDescription::AsString(&cf, value, v374, v375);
            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v379 = &cf;
            }

            else
            {
              v379 = cf.__r_.__value_.__r.__words[0];
            }

            v380 = *&value[12];
            CA::StreamDescription::AsString(&theDict, v549, v377, v378);
            v381 = &theDict;
            if ((theDict.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v381 = theDict.__r_.__value_.__r.__words[0];
            }

            *buf = v511;
            *&buf[4] = v512;
            *&buf[12] = 2112;
            *&buf[14] = v376;
            *&buf[22] = 2080;
            *&buf[24] = v379;
            *&buf[32] = 2048;
            *&buf[34] = v380;
            *&buf[42] = 2080;
            *&buf[44] = v381;
            *&buf[52] = 2048;
            *&buf[54] = *&v549[12];
            *&buf[62] = 1024;
            LODWORD(v551) = v347;
            _os_log_error_impl(&dword_1C91AE000, v373, OS_LOG_TYPE_ERROR, "[%p|%@] AudioUnit format %s (0x%lX) and DSP graph format %s (0x%lX) for output bus %d don't match", buf, 0x44u);
            if (SHIBYTE(theDict.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(theDict.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }
          }
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v382 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            CA::StreamDescription::AsString(&cf, value, v383, v384);
            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v387 = &cf;
            }

            else
            {
              v387 = cf.__r_.__value_.__r.__words[0];
            }

            v388 = *&value[12];
            CA::StreamDescription::AsString(&theDict, v549, v385, v386);
            v389 = &theDict;
            if ((theDict.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v389 = theDict.__r_.__value_.__r.__words[0];
            }

            *buf = 134219266;
            *&buf[4] = v512;
            *&buf[12] = 2080;
            *&buf[14] = v387;
            *&buf[22] = 2048;
            *&buf[24] = v388;
            *&buf[32] = 2080;
            *&buf[34] = v389;
            *&buf[42] = 2048;
            *&buf[44] = *&v549[12];
            *&buf[52] = 1024;
            *&buf[54] = v347;
            _os_log_error_impl(&dword_1C91AE000, v382, OS_LOG_TYPE_ERROR, "[%p] AudioUnit format %s (0x%lX) and DSP graph format %s (0x%lX) for output bus %d don't match", buf, 0x3Au);
            if (SHIBYTE(theDict.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(theDict.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }
          }
        }

        goto LABEL_704;
      }

      v350 = *&value[12];
      if (*&value[8] != 1819304813)
      {
        v354 = *&v549[12];
        goto LABEL_688;
      }

      v351 = *&value[12] & 0x7FFFFFFF;
      if ((*&value[12] & 0x7FFFFFFF) == 0)
      {
        v351 = *&value[12];
      }

      if (*&value[24])
      {
        if ((value[12] & 0x20) != 0)
        {
          v352 = 1;
        }

        else
        {
          v352 = *&value[28];
        }

        if (v352)
        {
          v352 = 8 * (*&value[24] / v352);
          v353 = v352 == *&value[32];
          goto LABEL_634;
        }
      }

      else
      {
        v352 = 0;
      }

      v353 = *&value[32] == 0;
LABEL_634:
      v355 = v353;
      v356 = v351 & 0xFFFFFFBF;
      if (v355)
      {
        v357 = v356 | 8;
      }

      else
      {
        v357 = v356;
      }

      v358 = value[32] & 7;
      v359 = v352 == *&value[32] && v358 == 0;
      v350 = v357 & 0xFFFFFFAF;
      if (!v359)
      {
        v350 = v357;
      }

      if (v350)
      {
        v350 &= 0xFFFFFFBB;
      }

      if ((v350 & 8) != 0 && *&value[32] <= 8u)
      {
        v350 &= 2u;
      }

      if (*&value[28] == 1)
      {
        v350 &= ~0x20u;
      }

      if (!v350)
      {
        v350 = 0x80000000;
      }

      v361 = *&v549[24];
      v362 = *&v549[12] & 0x7FFFFFFF;
      if ((*&v549[12] & 0x7FFFFFFF) == 0)
      {
        v362 = *&v549[12];
      }

      if (!*&v549[24])
      {
        goto LABEL_665;
      }

      if ((v549[12] & 0x20) != 0)
      {
        v363 = 1;
      }

      else
      {
        v363 = *&value[28];
      }

      if (!v363)
      {
        v361 = 0;
LABEL_665:
        v364 = *&value[32] == 0;
        goto LABEL_666;
      }

      v361 = 8 * (*&v549[24] / v363);
      v364 = v361 == *&value[32];
LABEL_666:
      v365 = v364;
      v366 = v362 & 0xFFFFFFBF;
      if (v365)
      {
        v366 |= 8u;
      }

      v367 = v361 == *&value[32] && v358 == 0;
      v368 = v366 & 0xFFFFFFAF;
      if (!v367)
      {
        v368 = v366;
      }

      if (v368)
      {
        v368 &= 0xFFFFFFBB;
      }

      v369 = (v368 & 8) == 0 || *&value[32] > 8u;
      v370 = v368 & 2;
      if (v369)
      {
        v370 = v368;
      }

      if (*&value[28] == 1)
      {
        v354 = v370 & 0xFFFFFFDF;
      }

      else
      {
        v354 = v370;
      }

      if (!v354)
      {
        v354 = 0x80000000;
      }

LABEL_688:
      if (v350 != v354)
      {
        goto LABEL_689;
      }

LABEL_704:
      v347 = (v347 + 1);
    }

    while (v346 != v347);
  }

  if (!allocatora)
  {
    goto LABEL_725;
  }

  v390 = (v512 + 648);
  v391 = CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v512 + 81);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(v391, v539);
  v392 = *(v512 + 100);
  v393 = *(v512 + 101);
  v394 = v392;
  if (!v392)
  {
    goto LABEL_850;
  }

  while (2)
  {
    if (v394 != &v392[12 * v393])
    {
      if (!v394)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v427 = *v394;
      v428 = *v390;
      if (std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((*(*v390 + 8) + 584), *v394))
      {
        CA::DSP::Graph::GetParameterDirection(buf, v428, v427);
        if (*buf)
        {
          v429 = 0;
        }

        else
        {
          v429 = buf[8];
        }

        if ((buf[8] & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        }

        if ((v429 & 1) == 0)
        {
          LODWORD(v427) = *v394;
          goto LABEL_846;
        }

LABEL_847:
        v394 += 12;
      }

      else
      {
LABEL_846:
        if (std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(v512 + 416, v427))
        {
          goto LABEL_847;
        }

        boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::new_allocator<void>,void>,void>::erase(buf, v512 + 100, v394);
        v394 = *buf;
      }

      v392 = *(v512 + 100);
      v393 = *(v512 + 101);
      if (!v392)
      {
LABEL_850:
        if (v393)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }
      }

      continue;
    }

    break;
  }

  CA::DSP::Graph::GetModel(v549, *v390);
  v430 = [*v549 parameters];
  *buf = 0;
  *value = v430;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v549);
  v431 = *value;
  v433 = CA::DSP::end<CA::DSP::ParameterModel>(value);
  if (v431 != v433 || v432)
  {
    v434 = 0;
    v435 = v432 - 1;
    do
    {
      v436 = v434;
      v437 = CFArrayGetValueAtIndex(v431, v434);
      v438 = v437;
      if (v437)
      {
        CFRetain(v437);
      }

      *buf = 0;
      cf.__r_.__value_.__r.__words[0] = v438;
      CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(buf);
      v439 = cf.__r_.__value_.__r.__words[0];
      theDict.__r_.__value_.__r.__words[0] = cf.__r_.__value_.__r.__words[0];
      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRetain(cf.__r_.__value_.__l.__data_);
        v439 = theDict.__r_.__value_.__r.__words[0];
      }

      v440 = [v439 ID];
      CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
      *buf = v440;
      rep = cf.__r_.__value_.__r.__words[0];
      __t.__d_.__rep_ = cf.__r_.__value_.__r.__words[0];
      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRetain(cf.__r_.__value_.__l.__data_);
        rep = __t.__d_.__rep_;
      }

      v442 = [rep direction];
      CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&__t);
      if (!v442)
      {
        boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,void,void>>::priv_subscript(v512 + 100, buf);
      }

      CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
      v434 = v436 + 1;
    }

    while (v431 != v433 || v435 != v436);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(value);
  for (j = *(v512 + 418); j; j = *j)
  {
    *value = *(j + 4);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::find(buf, v512 + 100, value);
    v444 = *(v512 + 100);
    v445 = *(v512 + 101);
    if (v444)
    {
      v446 = 1;
    }

    else
    {
      v446 = v445 == 0;
    }

    if (!v446)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (*buf == v444 + 12 * v445)
    {
      boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,void,void>>::priv_subscript(v512 + 100, value);
    }
  }

  v447 = *(v512 + 151);
  v448 = *(v512 + 152);
  v449 = v447;
  if (!v447)
  {
    goto LABEL_890;
  }

  while (2)
  {
    if (v449 != &v447[16 * v448])
    {
      if (!v449)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v450 = *v449;
      v451 = *v390;
      if (std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((*(*v390 + 8) + 624), *v449))
      {
        CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(buf, CADSPGraphGetPropertyDirection, v451, v450);
        v452 = buf[8];
        if (buf[8] == 1)
        {
          if (!*buf)
          {
LABEL_886:
            v449 += 16;
            goto LABEL_889;
          }
        }

        else
        {
          v453 = *buf;
          *buf = 0;
          *v549 = 0;
          *value = v453;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v549);
          value[8] = v452;
          if ((buf[8] & 1) != 0 || (CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf), (value[8] & 1) == 0))
          {
            CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value);
          }

          else if ((value[8] & (*value == 0)) != 0)
          {
            goto LABEL_886;
          }
        }
      }

      boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::erase(buf, v512 + 151, v449);
      v449 = *buf;
LABEL_889:
      v447 = *(v512 + 151);
      v448 = *(v512 + 152);
      if (!v447)
      {
LABEL_890:
        if (v448)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }
      }

      continue;
    }

    break;
  }

  CA::DSP::Graph::GetModel(v549, *v390);
  v454 = [*v549 properties];
  *buf = 0;
  *value = v454;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v549);
  v455 = CFArrayGetCount(*value);
  v456 = *value;
  if (v454 != *value || v455)
  {
    v457 = 0;
    v458 = v455 - 1;
    do
    {
      v459 = v457;
      v460 = CFArrayGetValueAtIndex(v454, v457);
      v461 = v460;
      if (v460)
      {
        CFRetain(v460);
      }

      *buf = 0;
      cf.__r_.__value_.__r.__words[0] = v461;
      CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(buf);
      v462 = cf.__r_.__value_.__r.__words[0];
      theDict.__r_.__value_.__r.__words[0] = cf.__r_.__value_.__r.__words[0];
      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRetain(cf.__r_.__value_.__l.__data_);
        v462 = theDict.__r_.__value_.__r.__words[0];
      }

      v463 = [v462 ID];
      CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
      LODWORD(v542) = v463;
      v464 = cf.__r_.__value_.__r.__words[0];
      __t.__d_.__rep_ = cf.__r_.__value_.__r.__words[0];
      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRetain(cf.__r_.__value_.__l.__data_);
        v464 = __t.__d_.__rep_;
      }

      v465 = [v464 direction];
      CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(&__t);
      if (!v465)
      {
        CA::DSP::Graph::GetPropertyInfo(buf, *v390, v463);
        if (buf[8] != 1 || (boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,void,void>>::priv_subscript(v512 + 1208, &v542), (buf[8] & 1) == 0))
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        }
      }

      CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
      v457 = v459 + 1;
    }

    while (v454 != v456 || v458 != v459);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(value);
  if ((*(v512 + 3312) & 1) == 0 && *(v512 + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::Resume(*(v512 + 412));
  }

  {
    CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
  }

  if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
  {
    v466 = *(v512 + 85);
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v467 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    v468 = os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG);
    if (v466)
    {
      if (v468)
      {
        v469 = *(v512 + 85);
        CA::DSP::Graph::GetLatency(value, v539);
        v470 = 0x7FF8000000000000;
        if (value[8])
        {
          v470 = *value;
        }

        *buf = 134218498;
        *&buf[4] = v512;
        *&buf[12] = 2112;
        *&buf[14] = v469;
        *&buf[22] = 2048;
        *&buf[24] = v470;
        v471 = "[%p|%@] total DSP graph latency is %f seconds";
        v472 = v467;
        v473 = 32;
        goto LABEL_963;
      }
    }

    else if (v468)
    {
      CA::DSP::Graph::GetLatency(value, v539);
      v504 = 0x7FF8000000000000;
      if (value[8])
      {
        v504 = *value;
      }

      *buf = 134218240;
      *&buf[4] = v512;
      *&buf[12] = 2048;
      *&buf[14] = v504;
      v471 = "[%p] total DSP graph latency is %f seconds";
      v472 = v467;
      v473 = 22;
LABEL_963:
      _os_log_debug_impl(&dword_1C91AE000, v472, OS_LOG_TYPE_DEBUG, v471, buf, v473);
      if ((value[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value);
      }
    }

    CA::DSP::Graph::CopyBoxes(&theDict, v539);
    v474 = theDict.__r_.__value_.__r.__words[0];
    v476 = CA::DSP::end<CA::DSP::Box>(&theDict);
    if (v474 == v476 && !v475)
    {
LABEL_921:
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&theDict.__r_.__value_.__l.__data_);
      goto LABEL_922;
    }

    v484 = 0;
    v485 = v475 - 1;
    v486 = &dword_1C91AE000;
    v487 = "[%p|%@] DSP graph latency for box '%@' is %f seconds";
    while (2)
    {
      v488 = v484;
      v489 = CFArrayGetValueAtIndex(v474, v484);
      v490 = v489;
      if (v489)
      {
        CFRetain(v489);
      }

      *buf = 0;
      __t.__d_.__rep_ = v490;
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(buf);
      v542 = 0;
      LODWORD(theString) = 8;
      *v549 = 0;
      Property = CADSPBoxGetProperty(__t.__d_.__rep_, 0xCuLL, 0, &v542, &theString);
      v492 = *v549;
      if (!Property && !*v549)
      {
        v492 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
        *v549 = v492;
      }

      cf.__r_.__value_.__r.__words[0] = v492;
      if (v492)
      {
        v493 = 0;
        cf.__r_.__value_.__r.__words[0] = 0;
        *buf = v492;
      }

      else
      {
        v493 = 1;
      }

      buf[8] = v493;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&cf.__r_.__value_.__l.__data_);
      v494 = buf[8];
      if (buf[8])
      {
        value[8] = buf[8];
        goto LABEL_940;
      }

      v502 = *buf;
      *buf = 0;
      *v549 = 0;
      *value = v502;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v549);
      value[8] = v494;
      if ((buf[8] & 1) != 0 || (CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf), (value[8] & 1) == 0))
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(value);
        goto LABEL_949;
      }

LABEL_940:
      v495 = *(v512 + 85);
      if (v495)
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v497 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          v498 = v486;
          v499 = v487;
          v500 = *(v512 + 85);
          CA::DSP::Box::GetModel(&v516, __t.__d_.__rep_);
          CA::DSP::CopyName(value, v516);
          *buf = 134218754;
          *&buf[4] = v512;
          *&buf[12] = 2112;
          *&buf[14] = v500;
          v487 = v499;
          v486 = v498;
          *&buf[22] = 2112;
          *&buf[24] = *value;
          *&buf[32] = 2048;
          *&buf[34] = v542;
          _os_log_debug_impl(v498, v497, OS_LOG_TYPE_DEBUG, v487, buf, 0x2Au);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
          v501 = &v516;
LABEL_953:
          CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(v501);
        }
      }

      else
      {
        {
          CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v503 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          CA::DSP::Box::GetModel(&v515, __t.__d_.__rep_);
          CA::DSP::CopyName(value, v515);
          *buf = 134218498;
          *&buf[4] = v512;
          *&buf[12] = 2112;
          *&buf[14] = *value;
          *&buf[22] = 2048;
          *&buf[24] = v542;
          _os_log_debug_impl(v486, v503, OS_LOG_TYPE_DEBUG, "[%p] DSP graph latency for box '%@' is %f seconds", buf, 0x20u);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(value);
          v501 = &v515;
          goto LABEL_953;
        }
      }

LABEL_949:
      CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(&__t);
      v484 = v488 + 1;
      if (v474 == v476 && v485 == v488)
      {
        goto LABEL_921;
      }

      continue;
    }
  }

LABEL_922:
  v477 = *(v512 + 85);
  {
    CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
  }

  v478 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
  v479 = os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT);
  if (v477)
  {
    if (v479)
    {
      v480 = *(v512 + 85);
      *buf = 134218242;
      *&buf[4] = v512;
      *&buf[12] = 2112;
      *&buf[14] = v480;
      v481 = "[%p|%@] did initialize";
      v482 = v478;
      v483 = 22;
      goto LABEL_928;
    }
  }

  else if (v479)
  {
    *buf = 134217984;
    *&buf[4] = v512;
    v481 = "[%p] did initialize";
    v482 = v478;
    v483 = 12;
LABEL_928:
    _os_log_impl(&dword_1C91AE000, v482, OS_LOG_TYPE_DEFAULT, v481, buf, v483);
  }

  v65 = 0;
LABEL_726:
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v539);
LABEL_727:
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v521);
  caulk::shared_semaphore_mutex::unlock((v512 + 608));
  return v65;
}

void sub_1C91D4770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  if ((*(v52 - 200) & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted((v52 - 208));
  }

  CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(va);
  JUMPOUT(0x1C91D478CLL);
}

const void **CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::Graph::CopyBoxes(CA::DSP::Graph *this, void *a2)
{
  [a2 boxes];
  *this = v4 = 0;
  return CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v4);
}

const void **CA::DSP::ReferenceCounted<__CADSPBox *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::Box::GetModel(CA::DSP::Box *this, void *a2)
{
  Model = CADSPBoxGetModel(a2);
  v4 = Model;
  if (Model)
  {
    CFRetain(Model);
  }

  v6 = 0;
  *this = v4;
  return CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v6);
}

const void **CA::DSP::CopyName(uint64_t *a1, void *a2)
{
  [a2 name];
  *a1 = v4 = 0;
  return CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v4);
}

const void **CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPPropertyModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void CA::StreamDescription::AsString(std::string *this, void *a2, double a3, int8x8_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string(this, "%2u ch, %6.0f Hz, 'freq'", a2, *(a2 + 7), *a2);
    return;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v56 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v56;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string(this, "%2u ch, %6.0f Hz", a2, 0, *a2);
      return;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v61.__r_.__value_.__s + 23) = 4;
    LODWORD(v61.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v61.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string(&v59, "%2u ch, %6.0f Hz, %s (0x%08X) ", a2, v13, *&v14, &v61, *(a2 + 3));
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v20 = *(a2 + 2);
    if (v20 <= 1819304812)
    {
      if (v20 != 1634492771 && v20 != 1634497332 && v20 != 1718378851)
      {
LABEL_70:
        caulk::make_string(&v61, "%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", v19, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v59;
        }

        else
        {
          v33 = v59.__r_.__value_.__r.__words[0];
        }

        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v59.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v35 = std::string::insert(&v61, 0, v33, size);
        v36 = *&v35->__r_.__value_.__l.__data_;
        this->__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&this->__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v37 = v61.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v37);
LABEL_65:
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        return;
      }

LABEL_45:
      v29 = *(a2 + 3);
      if ((v29 - 1) < 4 || !v29 && (v20 == 1634497332 || v20 == 1936487278 || v20 == 1936487267))
      {
        caulk::make_string(&v61, "from %u-bit source, ", v19, CA::StreamDescription::AsString(void)const::kSourceBits[v29]);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v61;
        }

        else
        {
          v30 = v61.__r_.__value_.__r.__words[0];
        }

        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v61.__r_.__value_.__l.__size_;
        }

        std::string::append(&v59, v30, v31);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v59, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string(&v61, "%u frames/packet", v32, *(a2 + 5));
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v59;
      }

      else
      {
        v33 = v59.__r_.__value_.__r.__words[0];
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v59.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v20 == 1936487278 || v20 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v20 != 1819304813)
    {
      goto LABEL_70;
    }

    v21 = *(a2 + 3);
    v22 = *(a2 + 6);
    v23 = v21 & 0x20;
    v24 = &byte_1C9279A7A;
    if (!v22)
    {
      goto LABEL_37;
    }

    if ((v21 & 0x20) != 0)
    {
      v25 = 1;
    }

    else
    {
      v25 = *(a2 + 7);
      if (!v25)
      {
        v23 = 0;
LABEL_37:
        v26 = " signed";
        if ((v21 & 4) == 0)
        {
          v26 = " unsigned";
        }

        if (v21)
        {
          v27 = "float";
        }

        else
        {
          v27 = "integer";
        }

        if (v21)
        {
          v28 = &byte_1C9279A7A;
        }

        else
        {
          v28 = v26;
        }

LABEL_102:
        v61.__r_.__value_.__s.__data_[0] = 0;
        if (v23)
        {
          v42 = ", deinterleaved";
        }

        else
        {
          v42 = &byte_1C9279A7A;
        }

        v39 = &byte_1C9279A7A;
        v43 = &byte_1C9279A7A;
        goto LABEL_106;
      }
    }

    v38 = v22 / v25;
    if (v22 / v25 < 2)
    {
      v41 = " signed";
      if ((v21 & 4) == 0)
      {
        v41 = " unsigned";
      }

      if (v21)
      {
        v27 = "float";
      }

      else
      {
        v27 = "integer";
      }

      if (v21)
      {
        v28 = &byte_1C9279A7A;
      }

      else
      {
        v28 = v41;
      }

      if (v25 > v22)
      {
        goto LABEL_102;
      }

      v38 = 1;
      v39 = &byte_1C9279A7A;
    }

    else
    {
      if ((v21 & 2) != 0)
      {
        v39 = " big-endian";
      }

      else
      {
        v39 = " little-endian";
      }

      v40 = " unsigned";
      if ((v21 & 4) != 0)
      {
        v40 = " signed";
      }

      if (v21)
      {
        v27 = "float";
      }

      else
      {
        v27 = "integer";
      }

      if (v21)
      {
        v28 = &byte_1C9279A7A;
      }

      else
      {
        v28 = v40;
      }
    }

    v44 = *(a2 + 7);
    if ((v21 & 0x20) != 0)
    {
      v45 = 1;
    }

    else
    {
      v45 = *(a2 + 7);
    }

    if (v45)
    {
      v45 = 8 * (v22 / v45);
    }

    if (v45 == *(a2 + 8))
    {
      v61.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v21 & 8) != 0)
      {
        v46 = &byte_1C9279A7A;
      }

      else
      {
        v46 = "un";
      }

      snprintf(&v61, 0x20uLL, "%spacked in %u bytes", v46, v38);
      v22 = *(a2 + 6);
      v21 = *(a2 + 3);
      if (!v22)
      {
        v47 = 0;
        v23 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v44 = *(a2 + 7);
      v23 = *(a2 + 3) & 0x20;
    }

    if (v23)
    {
      v47 = 1;
    }

    else
    {
      v47 = v44;
    }

    if (v47)
    {
      v47 = 8 * (v22 / v47);
    }

LABEL_128:
    v48 = *(a2 + 8);
    v49 = " high-aligned";
    if ((v21 & 0x10) == 0)
    {
      v49 = " low-aligned";
    }

    if ((v48 & 7) == 0 && v47 == v48)
    {
      v43 = &byte_1C9279A7A;
    }

    else
    {
      v43 = v49;
    }

    if (v23)
    {
      v42 = ", deinterleaved";
    }

    else
    {
      v42 = &byte_1C9279A7A;
    }

    if (v61.__r_.__value_.__s.__data_[0])
    {
      v24 = ", ";
LABEL_141:
      if (((v21 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string(&v58, "%s-bit%s%s %s%s%s%s%s", v51, __str, v39, v28, v27, v24, &v61, v43, v42);
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v59;
      }

      else
      {
        v52 = v59.__r_.__value_.__r.__words[0];
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v53 = v59.__r_.__value_.__l.__size_;
      }

      v54 = std::string::insert(&v58, 0, v52, v53);
      v55 = *&v54->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v37 = v58.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v43)
    {
      v24 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v57 = ", deinterleaved";
  }

  else
  {
    v57 = ", interleaved";
  }

  if (v9 == 1)
  {
    v57 = &byte_1C9279A7A;
  }

  caulk::make_string(this, "%2u ch, %6.0f Hz, %s%s", a2, v9, *a2, *(&off_1E8334528 + v12), v57);
}

void sub_1C91D5160(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void caulk::make_string(std::string *__return_ptr a1@<X8>, caulk *this@<X0>, const char *a3@<X1>, ...)
{
  va_start(va, a3);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    std::string::resize(a1, (v5 + 1), 0);
    v6 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = a1->__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v9 = vsnprintf(v7, size, this, va);
    std::string::resize(a1, v9, 0);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::string *AudioDSPGraph::stringFromFourCharCode<unsigned int>(std::string *retstr, unsigned int __val)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = bswap32(__val);
  v5 = v2;
  if ((v2 - 32) > 0x5E || ((v2 >> 8) - 32) > 0x5E || ((v2 << 8 >> 24) - 32) > 0x5E || ((v2 >> 24) - 32) > 0x5E)
  {
    return std::to_string(retstr, __val);
  }

  v6 = 39;
  v4 = 39;
  return std::string::basic_string[abi:ne200100]<0>(retstr, &v4);
}

void sub_1C91D5340(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__exception_guard_exceptions<std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v2[1] = v3;
      std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](v2[3], v3, v2[2] - v3);
    }
  }

  return a1;
}

uint64_t std::pair<unsigned int,applesauce::CF::DictionaryRef>::pair[abi:ne200100](uint64_t a1, int a2, CFTypeRef cf)
{
  *a1 = a2;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 8) = cf;
  return a1;
}

uint64_t std::pair<unsigned int,applesauce::CF::DictionaryRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **CA::DSP::Box::SetProperty(CA::DSP::Box *this, const CADSPPropertyAddress *a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v7 = 0;
  if (CADSPBoxSetProperty(a2, a3, a4))
  {
    v8 = 0;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v7 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v13 = v7;
  }

  v12 = v7;
  if (v7)
  {
    v12 = 0;
    v11 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    v10 = 0;
    v13 = 0;
    *this = v7;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
  }

  else
  {
    v11 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    *(this + 8) = 1;
  }

  return result;
}

void CA::DSP::AU::DSPGraph::Settings::Get<__CFString const*>(void *a1, const __CFDictionary **a2, const void *a3, CFTypeRef cf)
{
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    v8 = CFGetTypeID(v4);
    if (v8 != CFStringGetTypeID())
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  if (*a2)
  {
    v9 = applesauce::CF::details::at_key<__CFString const*&>(*a2, a3);
    if (v9)
    {
      v10 = v9;
      CFRetain(v9);
      v11 = CFGetTypeID(v10);
      if (v11 == CFStringGetTypeID())
      {
        CFRetain(v10);
        CFRelease(v10);
        if (v4)
        {
          CFRelease(v4);
        }

        v4 = v10;
      }

      else
      {
        CFRelease(v10);
      }
    }
  }

  *a1 = v4;
}

void *applesauce::CF::convert_to<std::string,0>(uint64_t a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a2);
    maxBufLen = 0;
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(a2, v13, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v8 = maxBufLen;
    if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (maxBufLen >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = maxBufLen;
    if (v8)
    {
      bzero(a1, v8);
    }

    *(a1 + v8) = 0;
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v14.location = 0;
    v14.length = Length;
    return CFStringGetBytes(a2, v14, 0x8000100u, 0, 0, v9, maxBufLen, &maxBufLen);
  }
}

void sub_1C91D579C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **CA::DSP::MutableRecorderTapPointModel::Create(CA::DSP::MutableRecorderTapPointModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = [[CADSPMutableRecorderTapPointModel allocWithZone:?]];
  return CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v3);
}

const void **CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void *applesauce::CF::details::at_key<__CFString const*&>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t applesauce::CF::convert_as<BOOL,0>(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    v4 = 1;
  }

  else
  {
    v5 = CFNumberGetTypeID();
    if (v5 == CFGetTypeID(a1))
    {
      v3 = applesauce::CF::details::number_convert_as<BOOL>(a1);
      v4 = HIBYTE(v3);
    }

    else
    {
      LOBYTE(v3) = 0;
      v4 = 0;
    }
  }

  return v3 | (v4 << 8);
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

const void **CA::DSP::MutableGraphModel::Create(CA::DSP::MutableGraphModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = [[CADSPMutableGraphModel allocWithZone:?]];
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v3);
}

void *CA::DSP::ReferenceCounted<__CADSPError *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPLanguageV1Interpreter *,__CFString const*,__CADSPGraphModel *,__CADSPError **)>::operator()<__CADSPLanguageV1Interpreter *,__CFString const*&,__CADSPGraphModel * const&>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, CADSPError **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v6 = a2(a3, a4, a5, &v11);
  v7 = v11;
  if (!v6 && !v11)
  {
    v7 = [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1970170734, 0];
    v11 = v7;
  }

  v10 = v7;
  if (v7)
  {
    v8 = 0;
    v10 = 0;
    *a1 = v7;
  }

  else
  {
    v8 = 1;
  }

  *(a1 + 8) = v8;
  return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v10);
}

const void **CA::DSP::ReferenceCounted<__CFDictionary *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::String::Create@<X0>(const void **__return_ptr a1@<X8>, CA::DSP::String *this@<X0>, const __CFString *a3@<X2>, ...)
{
  va_start(va, a3);
  *a1 = 0;
  va_copy(&v7[1], va);
  v4 = CFStringCreateWithFormatAndArguments(this, 0, @"%u", va);
  v6 = 0;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(a1);
  v7[0] = 0;
  *a1 = v4;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v7);
  return CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v6);
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::StringRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::StringRef>::~DictionaryRef_iterator(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void CA::DSP::AUDSPGraph::PreDestructor(CA::DSP::AUDSPGraph *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    (*(*v2 + 16))(*(this + 59));
  }

  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::~RPBConnection(this + 412);
    *(this + 3304) = 0;
  }

  if (v2)
  {
    v3 = *(*v2 + 24);

    v3(v2);
  }
}

void CA::DSP::AUDSPGraph::PostConstructor(CA::DSP::AUDSPGraph *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    (*(*v2 + 16))(*(this + 59));
  }

  v3 = (this + 3296);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN2CA3DSP10AUDSPGraph15PostConstructorEv_block_invoke;
  v9[3] = &__block_descriptor_tmp;
  v9[4] = this;
  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::~RPBConnection(this + 412);
    *(this + 3304) = 0;
  }

  v4 = v9;
  *v3 = 0;
  v5 = [MEMORY[0x1E69C6E00] sharedInstance];
  if (v5)
  {
    v6 = [CADSPRPBConnection alloc];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZN2CA3DSP10AUDSPGraph13RPBConnectionC2EU13block_pointerFP9__RPBHostvE_block_invoke;
    v11[3] = &unk_1E8334560;
    v12 = v4;
    v7 = [(CADSPRPBConnection *)v6 initWithServer:v5 hostFactory:v11];
    v8 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(this + 412);
    v10 = 0;
    *v3 = v8;
    CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(&v10);
  }

  *(this + 3304) = 1;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

CFTypeRef ___ZN2CA3DSP10AUDSPGraph15PostConstructorEv_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v16, *(v1 + 648));
  if (!v16)
  {
    goto LABEL_9;
  }

  v18 = 0;
  v2 = CADSPGraphCreateRemoteProcessingBlockHost(v16, &v18);
  if (v2)
  {
    *buf = 0;
    cf = v2;
    v15 = 1;
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(buf);
    v18 = 0;
    goto LABEL_4;
  }

  v5 = v18;
  if (!v18)
  {
    v5 = [[CADSPError allocWithZone:?]userInfo:"initWithCode:userInfo:", 1970170734, 0];
    v18 = v5;
  }

  v17 = 0;
  *buf = 0;
  cf = v5;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
  v15 = 0;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v17);
  v18 = v5;
  if (v5)
  {
    CFRetain(v5);
    v6 = *(v1 + 680);
    if (v6)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v8 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        v9 = *(v1 + 680);
        *buf = 134218498;
        *&buf[4] = v1;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v18;
        v10 = "[%p|%@] failed to create remote processing block - %@";
        v11 = v8;
        v12 = 32;
LABEL_21:
        _os_log_error_impl(&dword_1C91AE000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }
    }

    else
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v13 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v1;
        v20 = 2112;
        v21 = v18;
        v10 = "[%p] failed to create remote processing block - %@";
        v11 = v13;
        v12 = 22;
        goto LABEL_21;
      }
    }
  }

LABEL_4:
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v18);
  if (v15 != 1)
  {
    *buf = 0;
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(buf);
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf);
LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  v3 = cf;
  *buf = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *buf = 0;
  CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(buf);
  CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&cf);
LABEL_10:
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v16);
  return v3;
}

void sub_1C91D6410(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CA::DSP::AUDSPGraph::~AUDSPGraph(CA::DSP::AUDSPGraph *this)
{
  CA::DSP::AUDSPGraph::~AUDSPGraph(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 85);
  if (v2)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v4 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 85);
      v16 = 134218242;
      v17 = this;
      v18 = 2112;
      v19 = v5;
      v6 = "[%p|%@] destroyed";
      v7 = v4;
      v8 = 22;
LABEL_8:
      _os_log_impl(&dword_1C91AE000, v7, OS_LOG_TYPE_DEFAULT, v6, &v16, v8);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v9 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = this;
      v6 = "[%p] destroyed";
      v7 = v9;
      v8 = 12;
      goto LABEL_8;
    }
  }

  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::Suspend(*(this + 412));
  }

  std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::~__hash_table(this + 3328);
  v10 = *(this + 415);
  if (v10)
  {
    CFRelease(v10);
  }

  if (*(this + 3304) == 1)
  {
    CA::DSP::AUDSPGraph::RPBConnection::~RPBConnection(this + 412);
  }

  v11 = *(this + 410);
  if (v11)
  {
    CFRelease(v11);
  }

  boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::~vector(this + 151);
  if (*(this + 102))
  {
    v12 = *(this + 100);
    if (this + 824 != v12)
    {
      operator delete(v12);
    }
  }

  v13 = *(this + 99);
  if (v13)
  {
    CFRelease(v13);
  }

  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 98);
  boost::container::vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,void>::~vector(this + 93);
  boost::container::vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,void>::~vector(this + 88);
  v14 = *(this + 87);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 86);
  if (v15)
  {
    CFRelease(v15);
  }

  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 85);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 84);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 83);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 81);
  MEMORY[0x1CCA84490](this + 608);
  *(this + 67) = &unk_1F48CB880;
  std::recursive_mutex::~recursive_mutex((this + 544));
  ausdk::AUBase::~AUBase(this);
}

void sub_1C91D66E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void **boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::~vector(void **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 48);
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        *(v3 - 2) = v4;
        std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*v3, v4, *(v3 - 1) - v4);
      }

      --v2;
      CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v3 - 5);
      v3 += 8;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **boost::container::vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,void>::~vector(void **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      if (*v3)
      {
        CFRelease(*v3);
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ausdk::AUMutex::~AUMutex(ausdk::AUMutex *this)
{
  *this = &unk_1F48CB880;
  std::recursive_mutex::~recursive_mutex((this + 8));

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CB880;
  std::recursive_mutex::~recursive_mutex((this + 8));
}

void sub_1C91D6998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6DA0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C91D6E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C91D6EEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CADSPRPBConnection;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id ___ZN2CA3DSP10AUDSPGraph13RPBConnectionC2EU13block_pointerFP9__RPBHostvE_block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void CA::DSP::AUDSPGraph::RPBConnection::~RPBConnection(id *this)
{
  v2 = *this;
  [v2 disable];

  CA::DSP::ReferenceCounted<void const*>::~ReferenceCounted(this);
}

void CA::DSP::AUDSPGraph::RPBConnection::Resume(CA::DSP::AUDSPGraph::RPBConnection *this)
{
  v1 = this;
  [(CA::DSP::AUDSPGraph::RPBConnection *)v1 enable];
}

void CA::DSP::AUDSPGraph::RPBConnection::Suspend(CA::DSP::AUDSPGraph::RPBConnection *this)
{
  v1 = this;
  [(CA::DSP::AUDSPGraph::RPBConnection *)v1 disable];
}

void CA::DSP::AUDSPGraph::RPBConnection::GetHost(CA::DSP::AUDSPGraph::RPBConnection *this, void *a2)
{
  v3 = a2;
  cf = [v3 host];

  v4 = cf;
  *this = cf;
  if (cf)
  {
    CFRetain(cf);
    v4 = cf;
  }
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F48CC178;
  *(a1 + 8) = a2;
  ausdk::ComponentBase::GetComponentDescription(__str, a2);
  v3 = 0;
  *a1 = off_1F48CBC78;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  *(a1 + 20) = 0x100000001;
  *(a1 + 28) = 0;
  do
  {
    v4 = a1 + v3;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0uLL;
    *(v4 + 64) = 0uLL;
    v3 += 48;
  }

  while (v3 != 192);
  *(a1 + 224) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  info.__r_.__value_.__r.__words[0] = 0;
  mach_timebase_info(&info);
  LODWORD(v5) = HIDWORD(info.__r_.__value_.__r.__words[0]);
  LODWORD(v6) = info.__r_.__value_.__l.__data_;
  *(a1 + 344) = v5 / v6 * 1000000000.0;
  *(a1 + 352) = 0;
  *(a1 + 360) = -1;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  ausdk::ComponentBase::GetComponentDescription(&v44, *(a1 + 8));
  memset(__str, 0, 32);
  snprintf(__str, 0x20uLL, "AU (%p): ", *(a1 + 8));
  v7.i32[0] = bswap32(v44);
  v8 = vzip1_s8(v7, v7);
  v9 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v8, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v8, 0x2E002E002E002ELL);
  *(&v39.__r_.__value_.__s + 23) = 4;
  LODWORD(v39.__r_.__value_.__l.__data_) = vuzp1_s8(v9, v9).u32[0];
  v39.__r_.__value_.__s.__data_[4] = 0;
  v10 = strlen(__str);
  v11 = std::string::insert(&v39, 0, __str, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v40, 47);
  v13.i32[1] = HIDWORD(v40.__r_.__value_.__r.__words[0]);
  v41 = v40;
  memset(&v40, 0, sizeof(v40));
  v13.i32[0] = bswap32(HIDWORD(v44));
  v14 = vzip1_s8(v13, v13);
  v15 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v14, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v14, 0x2E002E002E002ELL);
  v38 = 4;
  *__s = vuzp1_s8(v15, v15).u32[0];
  __s[4] = 0;
  v16 = std::string::append(&v41, __s, 4uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v42, 47);
  v18.i32[1] = HIDWORD(v42.__r_.__value_.__r.__words[0]);
  info = v42;
  memset(&v42, 0, sizeof(v42));
  v18.i32[0] = bswap32(v45);
  v19 = vzip1_s8(v18, v18);
  v20 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v19, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v19, 0x2E002E002E002ELL);
  v36 = 4;
  *v35 = vuzp1_s8(v20, v20).u32[0];
  v35[4] = 0;
  v21 = std::string::append(&info, v35, 4uLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  *(a1 + 456) = *(&v21->__r_.__value_.__l + 2);
  *(a1 + 440) = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (v36 < 0)
  {
    operator delete(*v35);
  }

  if (SHIBYTE(info.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(info.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  *(a1 + 328) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 272) = 0xFFEFFFFFFFFFFFFFLL;
  ausdk::AUScope::Initialize((a1 + 32), a1, 0, 1);
  *(a1 + 360) = -1;
  *(a1 + 368) = @"Untitled";
  CFRetain(@"Untitled");
  *a1 = &unk_1F48CB620;
  {
    if (v33)
    {
      v34 = caulk::concurrent::messenger::shared_logging_priority(v33);
      MEMORY[0x1CCA84430](&CA::DSP::AUDSPGraph::GetMessenger(void)::sMessenger, 0, v34);
    }
  }

  *(a1 + 528) = &CA::DSP::AUDSPGraph::GetMessenger(void)::sMessenger;
  *(a1 + 536) = &unk_1F48CB880;
  MEMORY[0x1CCA847D0](a1 + 544);
  *(a1 + 608) = 0;
  caulk::semaphore::semaphore((a1 + 616));
  v23 = caulk::semaphore::semaphore((a1 + 632));
  *(a1 + 696) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 704) = a1 + 728;
  *(a1 + 712) = 0;
  *(a1 + 720) = 1;
  *(a1 + 744) = a1 + 768;
  *(a1 + 752) = xmmword_1C925F100;
  *(a1 + 784) = 0u;
  *(a1 + 800) = a1 + 824;
  *(a1 + 808) = xmmword_1C925F150;
  *(a1 + 1208) = a1 + 1232;
  *(a1 + 1216) = xmmword_1C925F150;
  *(a1 + 3280) = 0;
  *(a1 + 3288) = 0;
  *(a1 + 3296) = 0;
  *(a1 + 3304) = 0;
  *(a1 + 3312) = 0;
  *(a1 + 3352) = 0;
  *(a1 + 3320) = 0u;
  *(a1 + 3336) = 0u;
  *(a1 + 3360) = 1065353216;
  *(a1 + 3368) = 0;
  MEMORY[0x1CCA844C0](v23);
  *(a1 + 472) = a1 + 536;
  v24 = *(a1 + 680);
  if (v24)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v26 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 680);
      *__str = 134218242;
      *&__str[4] = a1;
      *&__str[12] = 2112;
      *&__str[14] = v27;
      v28 = "[%p|%@] created";
      v29 = v26;
      v30 = 22;
LABEL_25:
      _os_log_impl(&dword_1C91AE000, v29, OS_LOG_TYPE_DEFAULT, v28, __str, v30);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v31 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *__str = 134217984;
      *&__str[4] = a1;
      v28 = "[%p] created";
      v29 = v31;
      v30 = 12;
      goto LABEL_25;
    }
  }

  return a1;
}

void sub_1C91D77D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  ausdk::AUBase::~AUBase(v47);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Factory()
{
  result = malloc_type_malloc(0xD70uLL, 0x10F304054A42181uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Destruct;
  return result;
}

void CADSPInitialize()
{
  if (CADSPAllocatorInitialize::sInitializeOnce != -1)
  {
    dispatch_once(&CADSPAllocatorInitialize::sInitializeOnce, &__block_literal_global);
  }

  if (CADSPErrorInitialize::sInitializeOnce != -1)
  {

    dispatch_once(&CADSPErrorInitialize::sInitializeOnce, &__block_literal_global_238);
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

uint64_t CADSPBoxGetAudioComponentDescription(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(**(a1 + 8) + 216))(&v4);
    *a2 = v4;
    *(a2 + 16) = v5;
  }

  return 1;
}

void sub_1C91D8228(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a2)
  {
    if (a43 < 0)
    {
      operator delete(__p);
    }

    AudioDSPGraph::BoxRegistry::~BoxRegistry(&a25);
    __cxa_begin_catch(a1);
    if (v43)
    {
      CADSPErrorCreateFromCurrentException(*MEMORY[0x1E695E480]);
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    __cxa_end_catch();
    if (v43)
    {
      v47 = v46;
      *v43 = v46;
    }

    JUMPOUT(0x1C91D7FD0);
  }

  _Unwind_Resume(a1);
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

std::string *caulk::string_from_4cc(std::string *retstr, unsigned int __val)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = bswap32(__val);
  v5 = v2;
  if ((v2 - 32) > 0x5E || ((v2 >> 8) - 32) > 0x5E || ((v2 << 8 >> 24) - 32) > 0x5E || ((v2 >> 24) - 32) > 0x5E)
  {
    return std::to_string(retstr, __val);
  }

  v6 = 39;
  v4 = 39;
  return std::string::basic_string[abi:ne200100]<0>(retstr, &v4);
}

void sub_1C91D8564(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string,std::string>(void *result, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t **a5)
{
  v5 = *(a3 + 23);
  v6 = v5;
  v7 = *a3;
  v8 = a3[1];
  *result = 13;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v8;
  }

  if (v6 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  *a2 = v9;
  a2[1] = v5;
  v10 = *(a4 + 23);
  v11 = v10;
  v12 = *a4;
  v13 = a4[1];
  *result |= 0x1A0uLL;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v13;
  }

  if (v11 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = v12;
  }

  a2[2] = v14;
  a2[3] = v10;
  v15 = *(a5 + 23);
  v16 = v15;
  v17 = *a5;
  v18 = a5[1];
  *result |= 0x3400uLL;
  if ((v15 & 0x80u) != 0)
  {
    v15 = v18;
  }

  if (v16 >= 0)
  {
    v19 = a5;
  }

  else
  {
    v19 = v17;
  }

  a2[4] = v19;
  a2[5] = v15;
  return result;
}

void *std::string::basic_string<std::string_view,0>(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

uint64_t ***std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const>(unsigned long long &,std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>> *,std::string const &)::{lambda(void)#1}::operator()(uint64_t ***result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 23);
  v4 = **result;
  v5 = (*result)[1];
  v6 = *v2;
  if (*v2)
  {
    *result[2] = (*result[2] | (13 << v6));
  }

  else
  {
    *result[2] = 13;
  }

  v7 = v3;
  if (v3 < 0)
  {
    v3 = v5;
  }

  if (v7 < 0)
  {
    v1 = v4;
  }

  *v2 = v6 + 5;
  v8 = result[3];
  v9 = *v8;
  *v8 += 2;
  *v9 = v1;
  v9[1] = v3;
  return result;
}

void AudioDSPGraph::BoxRegistry::~BoxRegistry(AudioDSPGraph::BoxRegistry *this)
{
  v2 = (this + 80);
  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(this);
}