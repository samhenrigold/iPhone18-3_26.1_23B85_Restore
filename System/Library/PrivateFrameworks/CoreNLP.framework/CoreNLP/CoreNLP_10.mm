uint64_t boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    do
    {
      *result = v2;
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  else
  {
    v3 = (*v1 & 0xFFFFFFFFFFFFFFFELL);
    if (v1 == v3[2])
    {
      do
      {
        v5 = v3;
        *result = v3;
        v3 = (*v3 & 0xFFFFFFFFFFFFFFFELL);
      }

      while (v5 == v3[2]);
      v4 = v5[2];
    }

    else
    {
      v4 = 0;
    }

    if (v4 != v3)
    {
      *result = v3;
    }
  }

  return result;
}

unint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::copy_(unint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 32);
  v5 = *(result - 8);
  v6 = (v5 + 32);
  if (v4 > 1)
  {
    *v6 = *v6 & 0xFFFFFFFFFFFFFFFELL | *(v3 + 32) & 1;
    v7 = *(v3 + 32);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFELL) - 32;
    v9 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 0;
    v10 = v4 & 1;
    if (v9)
    {
      v8 = 0;
    }

    v11 = a3[6];
    if (v11 == v8)
    {
      v18 = a3 + 7;
    }

    else
    {
      v12 = a3[4];
      v13 = a3[5];
      while (v13)
      {
        v14 = v13 >> 1;
        v15 = &v12[2 * (v13 >> 1)];
        v17 = *v15;
        v16 = v15 + 2;
        v13 += ~(v13 >> 1);
        if (v17 < v8)
        {
          v12 = v16;
        }

        else
        {
          v13 = v14;
        }
      }

      v18 = v12 + 1;
    }

    *v6 = v10 | (*v18 + 32);
    v19 = *(v3 + 40);
    v20 = v19 - 32;
    if (!v19)
    {
      v20 = 0;
    }

    if (v11 == v20)
    {
      v27 = a3 + 7;
    }

    else
    {
      v21 = a3[4];
      v22 = a3[5];
      while (v22)
      {
        v23 = v22 >> 1;
        v24 = &v21[2 * (v22 >> 1)];
        v26 = *v24;
        v25 = v24 + 2;
        v22 += ~(v22 >> 1);
        if (v26 < v20)
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      v27 = v21 + 1;
    }

    *(v5 + 40) = *v27 + 32;
    v28 = *(*(a2 - 8) + 48);
    if (v28)
    {
      v29 = v28 - 32;
    }

    else
    {
      v29 = 0;
    }

    if (a3[6] == v29)
    {
      v37 = a3 + 7;
      v30 = a3[5];
    }

    else
    {
      v31 = a3[4];
      v30 = a3[5];
      if (v30)
      {
        v32 = a3[5];
        do
        {
          v33 = v32 >> 1;
          v34 = &v31[2 * (v32 >> 1)];
          v36 = *v34;
          v35 = v34 + 2;
          v32 += ~(v32 >> 1);
          if (v36 < v29)
          {
            v31 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      v37 = v31 + 1;
    }

    *(*(result - 8) + 48) = *v37 + 32;
    if (v30)
    {
      v38 = a3[4];
      v39 = &v38[2 * v30];
      do
      {
        v41 = *v38;
        v40 = v38[1];
        v42 = (*v38 + 32);
        v43 = v40 + 4;
        v44 = *v42 & 1;
        result = v40[4] & 0xFFFFFFFFFFFFFFFELL | v44;
        v40[4] = result;
        v45 = *v42 & 0xFFFFFFFFFFFFFFFELL;
        if (v45)
        {
          v46 = a3 + 7;
          if (a3[6] != v45 - 32)
          {
            v47 = a3[4];
            v48 = a3[5];
            while (v48)
            {
              v49 = v48 >> 1;
              v50 = &v47[2 * (v48 >> 1)];
              v52 = *v50;
              v51 = v50 + 2;
              v48 += ~(v48 >> 1);
              if (v52 < v45 - 32)
              {
                v47 = v51;
              }

              else
              {
                v48 = v49;
              }
            }

            v46 = v47 + 1;
          }

          result = *v46;
          *v43 = v44 | (*v46 + 32);
          if (*(v45 + 8) == v42)
          {
            *(result + 40) = v43;
          }

          else if (*(v45 + 16) == v42)
          {
            *(result + 48) = v43;
          }
        }

        else
        {
          *v43 = v44;
        }

        if (!*(v41 + 40))
        {
          v40[5] = 0;
        }

        if (!*(v41 + 48))
        {
          v40[6] = 0;
        }

        v38 += 2;
      }

      while (v38 != v39);
    }
  }

  else
  {
    *(v5 + 32) = 0;
    *(v5 + 40) = v6;
    *(*(result - 8) + 48) = *(result - 8) + 32;
  }

  return result;
}

uint64_t boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && *(a1 + 40))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      v4 = *(*(a1 + 32) + v3);
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
        v4 = *(*(a1 + 32) + v3);
      }

      operator delete(v4);
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 40));
  }

  if (*(a1 + 24))
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

const void **boost::bimaps::container_adaptor::associative_container_adaptor<boost::multi_index::detail::ordered_index<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>,boost::bimaps::detail::map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::bimaps::detail::const_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,std::string const,boost::bimaps::container_adaptor::support::iterator_facade_to_base<boost::bimaps::detail::map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::bimaps::detail::const_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>>,mpl_::na,boost::bimaps::relation::detail::pair_to_relation_functor<boost::bimaps::relation::member_at::left,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>,boost::bimaps::relation::support::get_pair_functor<boost::bimaps::relation::member_at::left,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>,mpl_::na,boost::mpl::v_item<boost::bimaps::container_adaptor::detail::iterator_from_base_identity<boost::iterators::reverse_iterator<boost::multi_index::detail::bidir_node_iterator<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>>,boost::bimaps::detail::reverse_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::iterators::reverse_iterator<boost::multi_index::detail::bidir_node_iterator<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>>,boost::bimaps::detail::const_reverse_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>>,boost::mpl::vector<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,1>>::find<std::string>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v3 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::find<std::string>(v2, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_19D220B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
    v6 = *(a1 - 8);
    do
    {
      while (1)
      {
        v7 = (v3 - 32);
        if (std::less<std::string>::operator()[abi:ne200100](a1 + 1, (v3 - 32), a2))
        {
          break;
        }

        v3 = *(v3 + 8);
        v6 = v7;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v3 = *(v3 + 16);
    }

    while (v3);
    v7 = v6;
LABEL_7:
    if (v7 != v2 && !std::less<std::string>::operator()[abi:ne200100](a1 + 1, a2, v7))
    {
      return v7;
    }
  }

  return v2;
}

unint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::find<long>(uint64_t a1, uint64_t *a2)
{
  result = *(a1 - 8);
  v3 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
    v4 = *a2;
    v5 = result;
    do
    {
      while (*(v3 - 32) < v4)
      {
        v3 = *(v3 + 16);
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v5 = v3 - 56;
      v3 = *(v3 + 8);
    }

    while (v3);
LABEL_7:
    if (v5 != result && v4 >= *(v5 + 24))
    {
      return v5;
    }
  }

  return result;
}

void *corelm::OutOfVocabularyError::OutOfVocabularyError(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  *a1 = &unk_1F10AFB60;
  corelm::util::strCat<char [23],std::string_view>("OutOfVocabularyError: ", v5);
  return a1;
}

uint64_t corelm::util::strCat<char [23],std::string_view>(const char *a1, uint64_t *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  v5 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, a1, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, *a2, a2[1]);
  std::stringbuf::str();
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x19EAF8C10](&v11);
}

void sub_19D220E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t corelm::OutOfVocabularyError::what(corelm::OutOfVocabularyError *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

unint64_t boost::bimaps::detail::non_mutable_data_unique_map_view_access<boost::bimaps::views::map_view<boost::bimaps::relation::member_at::right,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::bimaps::relation::member_at::right,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>::at<long>(uint64_t *a1, std::logic_error_vtbl **a2)
{
  v3 = *a1;
  v5.__vftable = *a2;
  result = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::find<long>(v3, &v5);
  if (*(*a1 - 8) == result)
  {
    std::logic_error::logic_error(&v5, "bimap<>: invalid key");
    v5.__vftable = (MEMORY[0x1E69E55B8] + 16);
    boost::throw_exception<std::out_of_range>(&v5);
  }

  return result;
}

void boost::throw_exception<std::out_of_range>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::out_of_range>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::out_of_range>::wrapexcept(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_1F10AFC68;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F10AFBF0;
  *(a1 + 8) = &unk_1F10AFC20;
  *(a1 + 24) = &unk_1F10AFC48;
  return a1;
}

uint64_t boost::wrapexcept<std::out_of_range>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x19EAF8780](a1 + 8);
  return a1;
}

void sub_19D2212B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  (*(*v9 + 24))(v9);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::out_of_range>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::out_of_range>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::out_of_range>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x19EAF8780](a1 + 8);

  JUMPOUT(0x19EAF8CA0);
}

void non-virtual thunk toboost::wrapexcept<std::out_of_range>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x19EAF8780);
}

{
  *(a1 + 16) = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x19EAF8780](a1);

  JUMPOUT(0x19EAF8CA0);
}

void non-virtual thunk toboost::wrapexcept<std::out_of_range>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F10AFC98;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x19EAF8780);
}

{
  *a1 = &unk_1F10AFC98;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x19EAF8780](v1);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::wrapexcept<std::out_of_range>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F10AFC68;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55B8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F10AFC98;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F10AFBF0;
  *(a1 + 8) = &unk_1F10AFC20;
  *(a1 + 24) = &unk_1F10AFC48;
  return a1;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

uint64_t corelm::TokenIDMap::copyTokenToID@<X0>(uint64_t this@<X0>, uint64_t **a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = (a2 + 1);
  v3 = *(*(this + 48) - 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = v4 - 32;
  }

  else
  {
    v5 = 0;
  }

  while (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 8));
    }

    else
    {
      v6 = *v5;
      __p.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    v8 = *(v5 + 24);
    std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::string const&,long const&>(a2, &__p.__r_.__value_.__l.__data_, &__p, &v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v5 + 32;
    this = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(&__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      v5 = __p.__r_.__value_.__r.__words[0] - 32;
    }

    else
    {
      v5 = 0;
    }
  }

  return this;
}

void *std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::string const&,long const&>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v5, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__construct_node<std::string const&,long const&>();
  }

  return result;
}

void sub_19D221A60(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t corelm::TokenIDMap::copyIDToToken@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(*(this + 48) - 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = v4 - 32;
  }

  else
  {
    v5 = 0;
  }

  while (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 8));
    }

    else
    {
      v6 = *v5;
      __p.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    v8 = *(v5 + 24);
    std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__emplace_unique_key_args<long,long const&,std::string const&>(a2, &v8, &v8, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v5 + 32;
    this = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(&__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      v5 = __p.__r_.__value_.__r.__words[0] - 32;
    }

    else
    {
      v5 = 0;
    }
  }

  return this;
}

void *std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__emplace_unique_key_args<long,long const&,std::string const&>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__construct_node<long const&,std::string const&>();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_19D221CE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::allocator<std::string> **std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](std::allocator<std::string> **a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 1);
  v6 = *(*a1 + 2);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v20.__end_cap_.__value_ = *a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v4, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = 24 * v9 + 24;
    v15 = *(v4 + 1) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20.__first_ = v17;
    v20.__begin_ = v17;
    *(v4 + 1) = v8;
    v20.__end_ = v17;
    v18 = *(v4 + 2);
    *(v4 + 2) = 0;
    v20.__end_cap_.__value_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v7 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v7;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v8 = v5 + 24;
  }

  *(v4 + 1) = v8;
  return a1;
}

const void **std::transform[abi:ne200100]<std::__wrap_iter<std::string *>,std::back_insert_iterator<std::vector<long>>,corelm::AbstractVocabulary::tokensToIDs(std::vector<std::string> const&)::{lambda(std::__wrap_iter<std::string *>)#1}>(__int128 *a1, __int128 *a2, const void **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&__p.__r_.__value_.__l.__data_ = v8;
      }

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
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v11 = (*(*a4 + 32))(a4, p_p, size);
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = *a3;
        v16 = v13 - *a3;
        v17 = v16 >> 3;
        v18 = (v16 >> 3) + 1;
        if (v18 >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 2 > v18)
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a3, v20);
        }

        *(8 * v17) = v11;
        v14 = (8 * v17 + 8);
        memcpy(0, v15, v16);
        v21 = *a3;
        *a3 = 0;
        a3[1] = v14;
        a3[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v13 = v11;
        v14 = v13 + 8;
      }

      a3[1] = v14;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = (v7 + 24);
    }

    while (v7 != a2);
  }

  return a3;
}

void sub_19D222048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::util::InFile::InFile<corelm::util::Path>(void *a1, uint64_t a2)
{
  v3 = &unk_1F10AD1D0;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  corelm::util::File::File(a1, &v3, MEMORY[0x1E69E5350]);
}

void sub_19D222128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::util::File::File(uint64_t a1, uint64_t a2, std::ios_base::openmode *a3)
{
  *a1 = &unk_1F10AD1D0;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v5;
  }

  *a1 = &unk_1F10AD3C8;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  operator new();
}

void sub_19D222258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *v14 = v16;
  if (*(v14 + 31) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::fstream *__cdecl std::fstream::basic_fstream(std::fstream *this, const std::string *__s, std::ios_base::openmode __mode)
{
  *(&this[1].__sb_.__st_._mbstateL + 8) = 0;
  this->__sb_.__extbufnext_ = 0;
  this->__sb_.__extbuf_ = &unk_1F10AFE00;
  *(&this[1].__sb_.__st_._mbstateL + 2) = &unk_1F10AFE28;
  std::ios_base::init((&this[1].__sb_.__st_._mbstateL + 2), this->__sb_.__extbuf_min_);
  *(&this[1].__sb_.__st_last_._mbstateL + 3) = 0;
  *(&this[1].__sb_.__st_last_._mbstateL + 8) = -1;
  MEMORY[0x19EAF8950](this->__sb_.__extbuf_min_);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((this + *(this->__sb_.__extbuf_ - 3)), *&this->__sb_.__extbuf_min_[*(this->__sb_.__extbuf_ - 3) + 8] | 4);
  }

  return this;
}

void sub_19D2223F4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x19EAF8960](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v2);
  return a1;
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x19EAF8960](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v1);

  JUMPOUT(0x19EAF8CA0);
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x19EAF8960](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x19EAF8C10);
}

{
  v1 = a1 + 52;
  MEMORY[0x19EAF8960](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v1);

  JUMPOUT(0x19EAF8CA0);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x19EAF8960](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x19EAF8C10);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x19EAF8960](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v1 + 54);

  JUMPOUT(0x19EAF8CA0);
}

char *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

void corelm::CharacterTokenizer::tokenize(std::string::value_type *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  memset(&v6, 0, sizeof(v6));
  if (a2)
  {
    v4 = a2;
    do
    {
      std::string::push_back(&v6, *a1++);
      --v4;
    }

    while (v4);
  }

  corelm::util::getChars(&v6, a3);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_19D222A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::CharacterTokenizer::detokenize(uint64_t **a2@<X1>, std::string *x8_0@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  corelm::util::join<std::vector<std::string> const&>(a2, __p, x8_0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D222AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::util::join<std::vector<std::string> const&>@<X0>(uint64_t **a1@<X0>, std::string::size_type a2@<X1>, std::string *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v6 = *a1;
  v7 = a1[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
  if (v8 == 1)
  {
    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = *v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v6 + 23);
    }

    else
    {
      v11 = *(v6 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v10, v11);
    std::stringbuf::str();
  }

  else if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    __str.__r_.__value_.__r.__words[0] = &v17;
    __str.__r_.__value_.__l.__size_ = v12;
    while (v6 != v7)
    {
      std::ostream_iterator<std::string const&,char,std::char_traits<char>>::operator=[abi:ne200100](&__str, v6);
      v6 += 24;
    }

    std::stringbuf::str();
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v14 = *(a2 + 23);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 8);
    }

    std::string::basic_string(a3, &__str, 0, size - v14, &v22);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  v17 = *MEMORY[0x1E69E54E8];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x19EAF8C10](&v21);
}

void sub_19D222D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::ostream_iterator<std::string const&,char,std::char_traits<char>>::operator=[abi:ne200100](uint64_t a1, uint64_t ***a2)
{
  v3 = *a1;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, a2, v5);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = strlen(*(a1 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v6, v7);
  }

  return a1;
}

void corelm::WhitespaceTokenizer::tokenize(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  corelm::util::split(a1, a2, " ", 1, &v11);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v8, v11, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = v8;
  v5 = v9;
  v14 = a3;
  while (v4 != v5)
  {
    v6 = *(v4 + 23);
    if (v6 < 0)
    {
      v7 = *v4;
      v6 = *(v4 + 8);
    }

    else
    {
      v7 = v4;
    }

    memset(&v13, 0, sizeof(v13));
    for (; v6; --v6)
    {
      std::string::push_back(&v13, *v7++);
    }

    std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v14, &v13);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    v4 += 24;
  }

  v13.__r_.__value_.__r.__words[0] = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  v13.__r_.__value_.__r.__words[0] = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_19D222F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 - 56) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v21 - 56));
  _Unwind_Resume(a1);
}

void corelm::WhitespaceTokenizer::detokenize(uint64_t **a1@<X1>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, " ");
  corelm::util::join<std::vector<std::string> const&>(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D222FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *corelm::util::tuple_for_each<std::tuple<char const(&)[15],std::string const&,char const(&)[21]>,std::string corelm::util::strCat<char [15],std::string,char [21]>(char [15],std::string,char [21] const&)::{lambda(std::tuple<char const(&)[15],std::string const&,char const(&)[21]> const&)#1},0ul>(uint64_t a1, void **a2)
{
  corelm::util::tuple_at<0ul,std::tuple<char const(&)[15],std::string const&,char const(&)[21]>,std::string corelm::util::strCat<char [15],std::string,char [21]>(char [15],std::string,char [21] const&)::{lambda(0ul const&)#1}>(a1, a2);
  v4 = *(a1 + 8);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, v6, v7);
  v8 = *(a1 + 16);
  v9 = strlen(v8);
  v10 = *a2;

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v8, v9);
}

void *corelm::util::tuple_at<0ul,std::tuple<char const(&)[15],std::string const&,char const(&)[21]>,std::string corelm::util::strCat<char [15],std::string,char [21]>(char [15],std::string,char [21] const&)::{lambda(0ul const&)#1}>(const char **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = strlen(*a1);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v2, v4);
}

void corelm::AbstractPreProcessor::preProcess(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
  }
}

void corelm::AbstractPreProcessor::postProcess(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
  }
}

void **std::ostream_iterator<int &,char,std::char_traits<char>>::operator=[abi:ne200100](void **a1, unsigned int *a2)
{
  MEMORY[0x19EAF8A70](*a1, *a2);
  v3 = a1[1];
  if (v3)
  {
    v4 = strlen(a1[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v3, v4);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void std::__split_buffer<int>::emplace_back<int>(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 4);
}

uint64_t *std::vector<long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_19D223370(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_19D2233E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CoreNLP::CNNModel **CoreNLP::CNNModelHandler::CNNModelHandler(CoreNLP::CNNModel **a1, uint64_t a2, uint64_t a3, const void **a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  CoreNLP::CNNModel::CreateCNNModel(a2, &v11);
  v6 = v11;
  v11 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v6 = *a1;
  }

  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Cannot load the given model files");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E76245E0, MEMORY[0x1E69E5298]);
  }

  return a1;
}

void sub_19D223520(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::CNNModelHandler::~CNNModelHandler(CoreNLP::CNNModelHandler *this)
{
  NSLog(&cfstr_DeallocedFeatu.isa);
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t CoreNLP::CNNModelHandler::copyFeatureRepresentation(CoreNLP::CNNModelHandler *this, __CFString *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(*this + 44);
  if (v5 == 2)
  {
    CoreNLP::CNNModelHandler::copyFeatureRepresentationWordBased(this, a2);
  }

  if (v5 == 1)
  {
    v6 = CoreNLP::CNNModelHandler::copyFeatureRepresentationCharBased(this, a2);
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t CoreNLP::CNNModelHandler::copyFeatureRepresentationCharBased(CoreNLP::CNNModelHandler *this, __CFString *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, -[__CFString UTF8String](a2, "UTF8String"));
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if ((v23 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v3 = v23;
  }

  else
  {
    v3 = __p[1];
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = *v2;
      if (v4 >= v21)
      {
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v19) >> 3);
        v8 = v7 + 1;
        if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v21 - v19) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v21 - v19) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v21 - v19) >> 3) >= 0x555555555555555)
        {
          v9 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v9 = v8;
        }

        v24.__end_cap_.__value_ = &v19;
        if (v9)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v19, v9);
        }

        v10 = 24 * v7;
        *v10 = v5;
        *(v10 + 23) = 1;
        v4 = 24 * v7 + 24;
        v11 = (v10 - (v20 - v19));
        memcpy(v11, v19, v20 - v19);
        v12 = v19;
        v13 = v21;
        v19 = v11;
        v20 = v4;
        v21 = 0;
        v24.__end_ = v12;
        v24.__end_cap_.__value_ = v13;
        v24.__first_ = v12;
        v24.__begin_ = v12;
        std::__split_buffer<std::string>::~__split_buffer(&v24);
      }

      else
      {
        *v4 = v5;
        v6 = *&v25[7];
        *(v4 + 8) = *v25;
        *(v4 + 15) = v6;
        *(v4 + 23) = 1;
        v4 += 24;
      }

      v20 = v4;
      v2 = (v2 + 1);
      --v3;
    }

    while (v3);
  }

  memset(&v24, 0, 24);
  std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v24, &v19);
  v14 = *this;
  memset(v18, 0, sizeof(v18));
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v18, v24.__first_, v24.__begin_, 0xAAAAAAAAAAAAAAABLL * ((v24.__begin_ - v24.__first_) >> 3));
  v15 = CoreNLP::CNNModel::featureRepresentation(v14, v18);
  *v25 = v18;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](v25);
  *v25 = &v24;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](v25);
  v24.__first_ = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_19D2238B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  *(v23 - 104) = v22;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100]((v23 - 104));
  *(v23 - 104) = &a22;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100]((v23 - 104));
  *(v23 - 104) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v23 - 104));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CoreNLP::CNNModelHandler::copyFeatureRepresentationWordBased(CoreNLP::CNNModelHandler *this, const __CFString *a2)
{
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x3052000000;
  v2[3] = __Block_byref_object_copy__5;
  v2[4] = __Block_byref_object_dispose__5;
  v2[5] = [MEMORY[0x1E695DF70] array];
  NLTokenizerCreate(0, 0, 0);
}

void sub_19D223A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::CNNModelHandler::copyFeatureRepresentationWithTokens(CoreNLP::CNNModelHandler *this, const __CFArray *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(*this + 44);
  if (v5 == 2)
  {
    v6 = CoreNLP::CNNModelHandler::copyFeatureRepresentationForTokens(this, a2);
  }

  else
  {
    if (v5 != 1)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = CoreNLP::CNNModelHandler::copyFeatureRepresentationCharBased(this, [(__CFArray *)a2 componentsJoinedByString:@" "]);
  }

  v7 = v6;
LABEL_7:
  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t CoreNLP::CNNModelHandler::copyFeatureRepresentationForTokens(CoreNLP::CNNModelHandler *this, const __CFArray *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(__CFArray *)a2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(a2);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v16 + 1) + 8 * v6) UTF8String]);
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v12 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(&v11, __p);
        std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v20, &v11);
        v23 = &v11;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(__CFArray *)a2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  v7 = *this;
  memset(v10, 0, sizeof(v10));
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v10, v20, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3));
  v8 = CoreNLP::CNNModel::featureRepresentation(v7, v10);
  __p[0] = v10;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v20;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
  return v8;
}

void sub_19D223CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a31;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t ___ZN7CoreNLP15CNNModelHandler34copyFeatureRepresentationWordBasedEPK10__CFString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) substringWithRange:{*a2, a2[1]}];
  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 addObject:v3];
}

BOOL CoreNLP::WordEmbedding::loadModel(uint64_t a1, uint64_t a2)
{
  CoreNLP::ReadOnlyFile<char>::open(a2, "r", 1, &v9);
  v3 = v9;
  v9 = 0uLL;
  v4 = *(a1 + 2760);
  *(a1 + 2752) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
    }

    v5 = *(a1 + 2752);
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v3;
    if (!v3)
    {
LABEL_8:
      v7 = 0;
      v6 = 0;
      return CoreNLP::WordEmbedding::initModel(a1, v6, 0, v7);
    }
  }

  v6 = *v5;
  v7 = *(v5 + 8);
  return CoreNLP::WordEmbedding::initModel(a1, v6, 0, v7);
}

uint64_t ___ZN7CoreNLP13WordEmbedding9loadModelEPK10__CFLocalePK10__CFString_block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 4)
  {
    v2 = CoreNLP::copyLocaleForLanguageID(4);
    CoreNLP::Resource::getAssetResource(&v5, v2, @"Embedding", *(a1 + 40), 0);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    CoreNLP::Resource::getAssetResource(&v5, *(a1 + 32), @"Embedding", *(a1 + 40), 0);
  }

  if (v5)
  {
    CoreNLP::Resource::path(__p, v5);
    CoreNLP::ReadOnlyFile<char>::create(__p, "r", 1);
  }

  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

BOOL CoreNLP::WordEmbedding::loadModel(CFDataRef *this, const __CFData *a2)
{
  nlp::CFScopedPtr<__CFData const*>::acquire(this + 346, a2);
  BytePtr = CFDataGetBytePtr(this[346]);
  Length = CFDataGetLength(a2);

  return CoreNLP::WordEmbedding::initModel(this, BytePtr, 0, Length);
}

void nlp::CFScopedPtr<__CFData const*>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<__CFData const*>::reset(a1, cf);
  }
}

void CoreNLP::WordEmbedding::buildModelFromEmbeddingMap(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void ***a6)
{
  std::vector<std::string>::clear[abi:ne200100](a6);
  v13 = *a2;
  v11 = (a2 + 1);
  v12 = v13;
  if (v13 != v11)
  {
    do
    {
      if (a1 + 16 == std::__tree<std::string>::find<std::string>(a1 + 8, v12 + 4))
      {
        std::vector<std::string>::push_back[abi:ne200100](a6, v12 + 2);
      }

      v14 = *(v12 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v12 + 2);
          v16 = *v15 == v12;
          v12 = v15;
        }

        while (!v16);
      }

      v12 = v15;
    }

    while (v15 != v11);
  }

  v25 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v22[1] = 0;
  v23 = v24;
  v21 = v22;
  v22[0] = 0;
  v17 = *(a1 + 8);
  if (v17 != (a1 + 16))
  {
    do
    {
      if (*(v17 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v17[4], v17[5]);
      }

      else
      {
        v20 = *(v17 + 4);
      }

      if (a3 + 8 != std::__tree<std::string>::find<std::string>(a3, &v20.__r_.__value_.__l.__data_))
      {
        std::__tree<CoreNLP::NLTagSchemeType>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,CoreNLP::NLTagSchemeType const&>(&v23, &v25, &v25);
      }

      if (a4 + 8 != std::__tree<std::string>::find<std::string>(a4, &v20.__r_.__value_.__l.__data_))
      {
        std::__tree<CoreNLP::NLTagSchemeType>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,CoreNLP::NLTagSchemeType const&>(&v21, &v25, &v25);
      }

      ++v25;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      v18 = v17[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v17[2];
          v16 = *v19 == v17;
          v17 = v19;
        }

        while (!v16);
      }

      v17 = v19;
    }

    while (v19 != (a1 + 16));
  }

  memset(&v20, 0, sizeof(v20));
  CoreNLP::WordEmbedding::moveToFlattenedEmbeddings(a1, (a1 + 8), &v20);
  CoreNLP::WordEmbedding::runQuantization(a1, &v20);
}

void sub_19D224278(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (v25)
  {
    MEMORY[0x19EAF8CA0](v25, 0x1000C40565EDBD2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a21, a22);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a24, a25);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::WordEmbedding::buildModelFromDictionary(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  v5 = (a1 + 1);
  if (v5 != a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>(v5, *a2, a2 + 1);
  }

  *(a1 + 678) = a1[3];
  v6 = *(a3 + 4);
  v9 = *a3 > 0 && v6 > 0 && *a3 >= v6 && *a3 % v6 == 0;
  v10 = v9;
  if (v9)
  {
    *(a1 + 2) = *a3;
    std::string::operator=(a1 + 2, (a3 + 16));
    v11 = *(a3 + 40);
    *(a1 + 20) = *(a3 + 48);
    a1[9] = v11;
    v12 = *a1;
    *(a1 + 8) = (*(a1[1] + 64) - *(a1[1] + 56)) >> 2;
    v13 = (*(v12 + 64))(a1);
    CoreNLP::KDTree::initialize(a1 + 22, v13);
    v24[0] = 0;
    v24[1] = 0;
    v22[1] = 0;
    v23 = v24;
    v21 = v22;
    v22[0] = 0;
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    memset(v18, 0, sizeof(v18));
    v17[0] = 0;
    v17[1] = 0;
    v16[3] = v17;
    std::set<std::string>::set[abi:ne200100](v16, &v23);
    CoreNLP::WordEmbedding::buildModelFromEmbeddingMap(a1, v16, &v21, &v19, v14, v18);
  }

  return v10;
}

void sub_19D2244A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  std::__tree<std::string>::destroy(&a9, a10);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a12, a13);
  a12 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__tree<std::string>::destroy(&a18, a19);
  std::__tree<std::string>::destroy(v19 - 80, *(v19 - 72));
  std::__tree<std::string>::destroy(v19 - 56, *(v19 - 48));
  _Unwind_Resume(a1);
}

void CoreNLP::WordEmbedding::moveToFlattenedEmbeddings(uint64_t a1, void *a2, std::vector<int> *a3)
{
  v5 = a2[2];
  v6 = (*(*a1 + 64))(a1);
  std::vector<int>::reserve(a3, v5 * v6);
  v9 = *a2;
  v7 = a2 + 1;
  v8 = v9;
  if (v9 != v7)
  {
    do
    {
      std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(&v14, v8[7], v8[8], &a3->__begin_);
      v10 = v8[7];
      v8[8] = 0;
      v8[9] = 0;
      v8[7] = 0;
      if (v10)
      {
        operator delete(v10);
      }

      v11 = v8[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
    }

    while (v12 != v7);
  }
}

void CoreNLP::WordEmbedding::runQuantization(int *a1, const float **a2)
{
  v5 = (*(*a1 + 64))(a1);
  CoreNLP::ProductQuantizer::initialize((a1 + 670), v5, a1[9], 0);
  CoreNLP::ProductQuantizer::runCompressing((a1 + 670), a1[678], *a2);
}

void sub_19D2246B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::WordEmbedding::readQuantizedVectorsIntoKDTree(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 2712) >= 1)
  {
    v4 = (*(*a1 + 64))(a1);
    MEMORY[0x1EEE9AC00](v4);
    v6 = (v13 - v5);
    if ((*(*a1 + 64))(a1) / *(a1 + 36) >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        (*(*a1 + 64))(a1);
        v9 = *(a1 + 36);
        if (v9 >= 1)
        {
          v10 = &v6[(v9 * v8)];
          v11 = (*(a1 + 2696) + 4 * *(a1 + 2684) * (v7 + *(*a2 + v8)));
          do
          {
            v12 = *v11++;
            *v10++ = v12;
            --v9;
          }

          while (v9);
        }

        ++v8;
        v7 += 256;
      }

      while (v8 < (*(*a1 + 64))(a1) / *(a1 + 36));
    }

    CoreNLP::KDTree::readDataPoint((a1 + 88), v6);
  }
}

void sub_19D224B54(_Unwind_Exception *a1)
{
  *v3 = 0;
  MEMORY[0x19EAF8CA0](v1, v2);
  _Unwind_Resume(a1);
}

void CoreNLP::WordEmbedding::saveCompressedModel(uint64_t a1, const UInt8 **a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v71 = 0;
  v4 = MEMORY[0x1E69E5530] + 64;
  v70 = MEMORY[0x1E69E5530] + 64;
  v5 = *(MEMORY[0x1E69E54D0] + 16);
  v67 = *(MEMORY[0x1E69E54D0] + 8);
  *&v68[*(v67 - 24) - 8] = v5;
  v6 = &v68[*(v67 - 24) - 8];
  std::ios_base::init(v6, v68);
  v7 = MEMORY[0x1E69E5530] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v67 = v7;
  v70 = v4;
  MEMORY[0x19EAF8950](v68);
  if (!*(a1 + 72))
  {
    if ((*(a1 + 71) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 56))
      {
        goto LABEL_7;
      }
    }

    else if (!*(a1 + 71))
    {
      goto LABEL_7;
    }

    std::ofstream::open();
  }

LABEL_7:
  LOBYTE(__src) = 0;
  std::vector<char>::vector[abi:ne200100](&bytes, 8, &__src);
  v65 = 96;
  v8 = *a2;
  v11 = CoreNLP::paddingOffset(&v65, v9);
  v12 = *(a1 + 72);
  if (v12)
  {
    CFDataAppendBytes(v12, v8, 96);
    CFDataAppendBytes(*(a1 + 72), bytes, v11);
  }

  else if (v69)
  {
    std::ostream::write();
    std::ostream::write();
  }

  v13 = *(*a2 + 6);
  v65 += v13;
  v14 = *(a1 + 2696);
  v16 = CoreNLP::paddingOffset(&v65, v10);
  v17 = *(a1 + 72);
  if (v17)
  {
    CFDataAppendBytes(v17, v14, v13);
    CFDataAppendBytes(*(a1 + 72), bytes, v16);
  }

  else if (v69)
  {
    std::ostream::write();
    std::ostream::write();
  }

  v18 = *(*a2 + 8);
  v65 += v18;
  v19 = *(a1 + 2720);
  v20 = CoreNLP::paddingOffset(&v65, v15);
  v21 = *(a1 + 72);
  if (v21)
  {
    CFDataAppendBytes(v21, v19, v18);
    CFDataAppendBytes(*(a1 + 72), bytes, v20);
  }

  else if (v69)
  {
    std::ostream::write();
    std::ostream::write();
  }

  __src = 0;
  v63 = 0;
  v64 = 0;
  v22 = *(a1 + 8);
  if (v22 == (a1 + 16))
  {
    v41 = 0;
    v40 = 0;
  }

  else
  {
    v23 = 0;
    do
    {
      v24 = v63;
      if (v63 >= v64)
      {
        v26 = __src;
        v27 = v63 - __src;
        v28 = (v63 - __src) >> 2;
        v29 = v28 + 1;
        if ((v28 + 1) >> 62)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v30 = v64 - __src;
        if ((v64 - __src) >> 1 > v29)
        {
          v29 = v30 >> 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v31 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v31);
        }

        *(4 * v28) = v23;
        v25 = 4 * v28 + 4;
        memcpy(0, v26, v27);
        v32 = __src;
        __src = 0;
        v63 = v25;
        v64 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v63 = v23;
        v25 = (v24 + 4);
      }

      v63 = v25;
      v33 = *(v22 + 55);
      if (v33 < 0)
      {
        v34 = v22[4];
        v33 = v22[5];
      }

      else
      {
        v34 = (v22 + 4);
      }

      v35 = *(a1 + 72);
      if (v35)
      {
        CFDataAppendBytes(v35, v34, v33);
        CFDataAppendBytes(*(a1 + 72), bytes, 1);
      }

      else if (v69)
      {
        std::ostream::write();
        std::ostream::write();
      }

      v36 = *(v22 + 55);
      if (v36 < 0)
      {
        v36 = v22[5];
      }

      v37 = v22[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v22[2];
          v39 = *v38 == v22;
          v22 = v38;
        }

        while (!v39);
      }

      v23 += v36 + 1;
      v22 = v38;
    }

    while (v38 != (a1 + 16));
    v41 = v63;
    v40 = v64;
    if (v63 < v64)
    {
      *v63 = 0;
      v42 = v41 + 4;
      goto LABEL_60;
    }
  }

  v43 = __src;
  v44 = v41 - __src;
  v45 = (v41 - __src) >> 2;
  v46 = v45 + 1;
  if ((v45 + 1) >> 62)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v47 = v40 - __src;
  if (v47 >> 1 > v46)
  {
    v46 = v47 >> 1;
  }

  v48 = v47 >= 0x7FFFFFFFFFFFFFFCLL;
  v49 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v48)
  {
    v49 = v46;
  }

  if (v49)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v49);
  }

  v50 = v45;
  v51 = (4 * v45);
  v52 = &v51[-v50];
  *v51 = 0;
  v42 = (v51 + 1);
  memcpy(v52, v43, v44);
  v53 = __src;
  __src = v52;
  v63 = v42;
  v64 = 0;
  if (v53)
  {
    operator delete(v53);
  }

LABEL_60:
  v63 = v42;
  v65 += *(*a2 + 10);
  v54 = bytes;
  v56 = CoreNLP::paddingOffset(&v65, v34);
  v57 = *(a1 + 72);
  if (v57)
  {
    CFDataAppendBytes(v57, v54, v56);
    CFDataAppendBytes(*(a1 + 72), bytes, 0);
  }

  else if (v69)
  {
    std::ostream::write();
    std::ostream::write();
  }

  v65 += *(*a2 + 12);
  v59 = __src;
  v58 = v63;
  v60 = CoreNLP::paddingOffset(&v65, v55);
  v61 = *(a1 + 72);
  if (v61)
  {
    CFDataAppendBytes(v61, v59, v58 - v59);
    CFDataAppendBytes(*(a1 + 72), bytes, v60);
  }

  else if (v69)
  {
    std::ostream::write();
    std::ostream::write();
  }

  CoreNLP::KDTree::builtNodes((a1 + 88));
}

void sub_19D225334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  std::ofstream::~ofstream(&a18, MEMORY[0x1E69E54D0]);
  MEMORY[0x19EAF8C10](v18);
  _Unwind_Resume(a1);
}

void CoreNLP::KDTree::builtNodes(CoreNLP::KDTree *this)
{
  memset(__p, 0, sizeof(__p));
  std::vector<CoreNLP::Node *>::__init_with_size[abi:ne200100]<CoreNLP::Node **,CoreNLP::Node **>(__p, *this, *(this + 1), (*(this + 1) - *this) >> 3);
  CoreNLP::Serializer::getSerialized(this + 18, __p);
}

void sub_19D225434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::WordEmbedding::getAllEmbeddings(CoreNLP::WordEmbedding *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 342);
  if (v3 != *(a1 + 343))
  {
    v7 = 0;
    do
    {
      v8 = (*(a1 + 341) + *v3);
      v25[0] = v8;
      v9 = *(a2 + 8);
      if (v9 >= *(a2 + 16))
      {
        v10 = std::vector<std::string>::__emplace_back_slow_path<char const*>(a2, v25);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(*(a2 + 8), v8);
        v10 = v9 + 24;
        *(a2 + 8) = v9 + 24;
      }

      *(a2 + 8) = v10;
      CoreNLP::WordEmbedding::getEmbedding(&__p, a1, v7);
      v11 = *(a3 + 8);
      v12 = *(a3 + 16);
      if (v11 >= v12)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a3) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        v25[4] = a3;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a3, v16);
        }

        v17 = 24 * v13;
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = __p;
        memset(&__p, 0, sizeof(__p));
        v18 = 24 * v13 + 24;
        v19 = *(a3 + 8) - *a3;
        v20 = 24 * v13 - v19;
        memcpy((v17 - v19), *a3, v19);
        v21 = *a3;
        *a3 = v20;
        *(a3 + 8) = v18;
        v22 = *(a3 + 16);
        *(a3 + 16) = 0;
        v25[2] = v21;
        v25[3] = v22;
        v25[0] = v21;
        v25[1] = v21;
        std::__split_buffer<std::vector<long>>::~__split_buffer(v25);
        begin = __p.__begin_;
        *(a3 + 8) = v18;
        if (begin)
        {
          __p.__end_ = begin;
          operator delete(begin);
        }
      }

      else
      {
        v11->__begin_ = 0;
        v11->__end_ = 0;
        v11->__end_cap_.__value_ = 0;
        *v11 = __p;
        *(a3 + 8) = v11 + 1;
      }

      ++v7;
      ++v3;
    }

    while (v3 != *(a1 + 343));
  }
}

void sub_19D22563C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::WordEmbedding::getEmbedding(std::vector<int> *__return_ptr a1@<X8>, CoreNLP::WordEmbedding *this@<X0>, signed int a3@<W1>)
{
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  if ((a3 & 0x80000000) == 0 && *(this + 678) >= a3)
  {
    v6 = (*(*this + 64))(this);
    std::vector<float>::resize(a1, v6);
    v7 = *(this + 672);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(this + 340) + v7 * a3;
      v10 = *(this + 337);
      v11 = *(this + 671);
      v12 = *(this + 9);
      begin = a1->__begin_;
      do
      {
        if (v12 >= 1)
        {
          v14 = (v10 + 4 * v11 * (*(v9 + v8) | (v8 << 8)));
          v15 = v12;
          v16 = begin;
          do
          {
            v17 = *v14++;
            *v16++ = v17;
            --v15;
          }

          while (v15);
        }

        ++v8;
        begin += v12;
      }

      while (v8 != v7);
    }
  }
}

void sub_19D22575C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::WordEmbedding::getNearestNeighborsForVector(CoreNLP::WordEmbedding *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, const void **a4@<X8>, float a5@<S0>)
{
  v59 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v11 = *a2;
  v10 = *(a2 + 8);
  if ((*(*a1 + 64))(a1) == (v10 - v11) >> 2)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    CoreNLP::KDTree::getPossibleNNs(a1 + 88, *a2, &v52);
    std::__sort<std::__less<int,int> &,int *>();
    __p = 0;
    v57 = 0;
    v58 = 0;
    v12 = v52;
    if (v53 != v52)
    {
      v13 = 0;
      v14 = a3;
      while (1)
      {
        if (v13)
        {
          v15 = v12[v13];
          if (v15 <= v12[v13 - 1])
          {
            goto LABEL_48;
          }
        }

        else
        {
          v15 = *v12;
        }

        if (v15 >= 0)
        {
          v16 = v15;
        }

        else
        {
          v16 = -v15;
        }

        v17 = CoreNLP::WordEmbedding::computeCosineDistance(a1, *a2, v16);
        if (v15 < 0)
        {
          goto LABEL_48;
        }

        v18 = v17;
        if (v17 > a5 || v17 < 0.00000011921)
        {
          goto LABEL_48;
        }

        v20 = __p;
        v21 = v57;
        v22 = (v57 - __p) >> 3;
        if (v22 < v14)
        {
          break;
        }

        v24 = *__p;
        if (v17 < *__p)
        {
          if (v22 >= 2)
          {
            v25 = *(__p + 1);
            std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__p, &v55, (v57 - __p) >> 3);
            if (v21 - 2 == v26)
            {
              *v26 = v24;
              *(v26 + 1) = v25;
            }

            else
            {
              *v26 = *(v21 - 2);
              v26[1] = *(v21 - 1);
              *(v21 - 2) = v24;
              *(v21 - 1) = v25;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(v20, (v26 + 2), &v55, ((v26 + 2) - v20) >> 3);
            }
          }

          v23 = v57;
          v33 = v57 - 2;
          v57 = v33;
          if (v33 >= v58)
          {
            v34 = (v33 - __p) >> 3;
            if ((v34 + 1) >> 61)
            {
              std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
            }

            v35 = (v58 - __p) >> 2;
            if (v35 <= v34 + 1)
            {
              v35 = v34 + 1;
            }

            if (v58 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v36 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v35;
            }

            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v36);
            }

            v37 = (8 * v34);
            *v37 = v18;
            *(v37 + 1) = v15;
            v23 = 8 * v34 + 8;
            v38 = v37 - (v57 - __p);
            memcpy(v38, __p, v57 - __p);
            v39 = __p;
            __p = v38;
            v57 = v23;
            v58 = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *(v23 - 8) = v18;
            *(v23 - 4) = v15;
          }

          goto LABEL_47;
        }

LABEL_48:
        ++v13;
        v12 = v52;
        if (v13 >= (v53 - v52) >> 2)
        {
          v40 = v57 - __p;
          goto LABEL_51;
        }
      }

      if (v57 >= v58)
      {
        v27 = v22 + 1;
        if ((v22 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v28 = v58 - __p;
        if ((v58 - __p) >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v29);
        }

        v30 = 8 * v22;
        *v30 = v17;
        *(v30 + 4) = v15;
        v23 = 8 * v22 + 8;
        v31 = (v30 - (v57 - __p));
        memcpy(v31, __p, v57 - __p);
        v32 = __p;
        __p = v31;
        v57 = v23;
        v58 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v57 = v17;
        *(v21 + 1) = v15;
        v23 = (v21 + 2);
      }

LABEL_47:
      v57 = v23;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__p, v23, &v55, (v23 - __p) >> 3);
      goto LABEL_48;
    }

    v40 = 0;
LABEL_51:
    std::vector<std::pair<std::string,float>>::resize(a4, (v40 >> 3));
    v41 = v40 >> 3;
    v42 = __p;
    if (__p != v57)
    {
      v43 = 32 * v41 - 8;
      do
      {
        v44 = *v42;
        v45 = *a4;
        MEMORY[0x19EAF8860](*a4 + v43 - 24, *(a1 + 341) + *(*(a1 + 342) + 4 * *(v42 + 1)));
        *&v45[v43] = v44;
        v46 = __p;
        v47 = v57;
        v48 = (v57 - __p) >> 3;
        if (v48 >= 2)
        {
          v49 = *__p;
          v50 = *(__p + 1);
          std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__p, &v55, v48);
          if (v47 - 2 == v51)
          {
            *v51 = v49;
            *(v51 + 1) = v50;
          }

          else
          {
            *v51 = *(v47 - 2);
            v51[1] = *(v47 - 1);
            *(v47 - 2) = v49;
            *(v47 - 1) = v50;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(v46, (v51 + 2), &v55, ((v51 + 2) - v46) >> 3);
          }
        }

        v42 = __p;
        v57 -= 2;
        v43 -= 32;
        LODWORD(v41) = v41 - 1;
      }

      while (__p != v57);
    }

    if (v41 >= 1)
    {
      std::vector<std::pair<std::string,float>>::erase(a4, *a4, *a4 + 2 * (v41 & 0x7FFFFFFF));
      v42 = __p;
    }

    if (v42)
    {
      v57 = v42;
      operator delete(v42);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }
  }
}

void sub_19D225C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

float CoreNLP::WordEmbedding::computeCosineDistance(CoreNLP::WordEmbedding *this, const float *a2, int a3)
{
  if (a3 < 0 || *(this + 678) <= a3)
  {
    return 2.0;
  }

  v3 = *(this + 672);
  v4 = 2.0;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = *(this + 9);
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      if (v6 >= 1)
      {
        v10 = (*(this + 337) + 4 * *(this + 671) * (*(*(this + 340) + v3 * a3 + v5) | (v5 << 8)));
        v11 = *(this + 9);
        v12 = a2;
        do
        {
          v13 = *v12++;
          v14 = v13;
          v8 = v8 + (v14 * v14);
          v15 = *v10++;
          v9 = v9 + (v15 * v15);
          v7 = v7 + (v14 * v15);
          --v11;
        }

        while (v11);
        a2 += (v6 - 1) + 1;
      }

      ++v5;
    }

    while (v5 != v3);
    v16 = v9 * v8;
    if (v16 > 0.0)
    {
      v4 = 2.0 - (v7 + v7) / sqrtf(v16);
    }
  }

  return sqrtf(fmaxf(v4, 0.0));
}

void std::vector<std::pair<std::string,float>>::resize(const void **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 9);
        v3 -= 4;
        if (v7 < 0)
        {
          operator delete(*v3);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::pair<std::string,float>>::__append(a1, v5);
  }
}

__int128 *std::vector<std::pair<std::string,float>>::erase(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::string,float> *,std::pair<std::string,float> *,std::pair<std::string,float> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 9);
        v7 -= 4;
        if (v8 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void CoreNLP::WordEmbedding::getNearestNeighbors(CoreNLP::WordEmbedding *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, const void **a4@<X8>, float a5@<S0>)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 72))(a1) == 10 || (*(*a1 + 72))(a1) == 4)
  {
    v10 = a3 < 50;
    v11 = 50;
  }

  else
  {
    v10 = a3 < 20;
    v11 = 20;
  }

  if (!v10)
  {
    a3 = v11;
  }

  v19 = 0uLL;
  v20 = 0;
  v12 = (*(*a1 + 64))(a1);
  LODWORD(v17[0]) = 0;
  std::vector<float>::vector[abi:ne200100](&v18, v12, v17);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  memset(v17, 0, sizeof(v17));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v17, &v22, &v23, 1uLL);
  AverageEmbedding = CoreNLP::WordEmbedding::getAverageEmbedding(a1, v17, &v18);
  v21 = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (AverageEmbedding)
    {
      goto LABEL_12;
    }

LABEL_15:
    *a4 = v19;
    a4[2] = v20;
    v20 = 0;
    v19 = 0uLL;
    goto LABEL_16;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if ((AverageEmbedding & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v18.__begin_, v18.__end_, v18.__end_ - v18.__begin_);
  CoreNLP::WordEmbedding::getNearestNeighborsForVector(a1, &__p, a3, a4, a5);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

LABEL_16:
  if (v18.__begin_)
  {
    v18.__end_ = v18.__begin_;
    operator delete(v18.__begin_);
  }

  v18.__begin_ = &v19;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void sub_19D2260C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *__p, char *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  __p = &a19;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

float CoreNLP::WordEmbedding::getDistance(CoreNLP::WordEmbedding *a1, const char *a2, uint64_t a3)
{
  *v9 = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (!CoreNLP::WordEmbedding::getWordID(a1, a2, &v9[1]))
  {
    return 2.0;
  }

  v5 = *(a3 + 23) >= 0 ? a3 : *a3;
  if (!CoreNLP::WordEmbedding::getWordID(a1, v5, v9))
  {
    return 2.0;
  }

  v7 = v9[0];
  v6 = v9[1];

  return CoreNLP::WordEmbedding::computeCosineDistance(a1, v6, v7);
}

float CoreNLP::WordEmbedding::computeCosineDistance(CoreNLP::WordEmbedding *this, int a2, int a3)
{
  if (a2 < 0)
  {
    return 2.0;
  }

  v3 = *(this + 678);
  if (v3 <= a3 || a3 < 0 || v3 <= a2)
  {
    return 2.0;
  }

  v4 = *(this + 672);
  v5 = 2.0;
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = *(this + 340);
    v8 = v7 + v4 * a2;
    v9 = v7 + v4 * a3;
    v10 = *(this + 337);
    v11 = *(this + 671);
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      if (*(this + 9) >= 1)
      {
        v15 = (v10 + 4 * (*(v9 + v6) | (v6 << 8)) * v11);
        v16 = (v10 + 4 * v11 * (*(v8 + v6) | (v6 << 8)));
        v17 = *(this + 9);
        do
        {
          v18 = *v16++;
          v19 = v18;
          v13 = v13 + (v19 * v19);
          v20 = *v15++;
          v14 = v14 + (v20 * v20);
          v12 = v12 + (v19 * v20);
          --v17;
        }

        while (v17);
      }

      ++v6;
    }

    while (v6 != v4);
    v21 = v14 * v13;
    if (v21 > 0.0)
    {
      v5 = 2.0 - (v12 + v12) / sqrtf(v21);
    }
  }

  return sqrtf(fmaxf(v5, 0.0));
}

void CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::clearEmptyResources(uint64_t a1)
{
  if (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::onceToken != -1)
  {
    CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::clearEmptyResources();
  }

  v2 = CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue;

  dispatch_sync(v2, &__block_literal_global_41);
}

uint64_t *CoreNLP::WordEmbedding::getCentroids@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v8 = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  result = CoreNLP::WordEmbedding::getWordID(a1, a2, &v8);
  if (result)
  {
    v6 = *(a1 + 2688);
    v7 = (*(a1 + 2720) + v6 * v8);
    return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v7, &v7[v6], v6);
  }

  return result;
}

void sub_19D22638C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x19EAF89A0](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_19D2265EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x19D2265ACLL);
  }

  __cxa_rethrow();
}

uint64_t *std::vector<CoreNLP::Node *>::__init_with_size[abi:ne200100]<CoreNLP::Node **,CoreNLP::Node **>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CoreNLP::NLAttributedToken *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D2266FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageIDNS_12ReadOnlyFileIcEEE8getQueueEv_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreNLP.SingletonResourceManager", 0);
  CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue = v0;
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_set_target_queue(v0, global_queue);
}

void *std::set<std::string>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(void *result, const void ***a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(v5, v5 + 1, v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          std::pair<std::string &,std::vector<float> &>::operator=[abi:ne200100]<std::string const,std::vector<float>,0>(v16, (v9 + 4));
          leaf_high = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__find_leaf_high(v5, v16, v15 + 4);
          std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__insert_node_at(v5, v16[0], leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_multi<std::pair<std::string const,std::vector<float>> const&>(v5);
  }

  return result;
}

void sub_19D226A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string &,std::vector<float> &>::operator=[abi:ne200100]<std::string const,std::vector<float>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_19D226BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_19D226CAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const*>(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

const void **std::vector<std::pair<std::string,float>>::__append(const void **result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = &v4[4 * a2];
      do
      {
        *v4 = 0;
        v4[1] = 0;
        *(v4 + 6) = 0;
        v4[2] = 0;
        v4 += 4;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,float>>>(result, v10);
    }

    v13 = 32 * v8;
    v14 = 32 * a2;
    v15 = 32 * v8;
    v16 = 32 * v8 + 32 * a2;
    do
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 24) = 0;
      *(v15 + 16) = 0;
      v15 += 32;
      v14 -= 32;
    }

    while (v14);
    v17 = result[1] - *result;
    v18 = (v13 - v17);
    memcpy((v13 - v17), *result, v17);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v16;
    v20 = v3[2];
    v3[2] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    return std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(v21);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,float>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::string,float> *,std::pair<std::string,float> *,std::pair<std::string,float> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      *(a4 + 24) = *(v5 + 6);
      v5 += 2;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageIDNS_12ReadOnlyFileIcEEE19clearEmptyResourcesEv_block_invoke()
{
  if (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::onceToken != -1)
  {
    ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageIDNS_12ReadOnlyFileIcEEE21getPersistentResourceERKS1_U13block_pointerFPS3_vE_block_invoke_cold_1();
  }

  v0 = CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache;
  v2 = (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache + 8);
  v1 = *CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache;
  if (*CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache != (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache + 8))
  {
    do
    {
      v3 = v1[1];
      if (v1[5])
      {
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = v1[2];
            v5 = *v4 == v1;
            v1 = v4;
          }

          while (!v5);
        }
      }

      else
      {
        v6 = v1;
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = v6[2];
            v5 = *v4 == v6;
            v6 = v4;
          }

          while (!v5);
        }

        std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__remove_node_pointer(v0, v1);
        operator delete(v1);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

uint64_t *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

_DWORD *std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(uint64_t a1, _DWORD *a2, _DWORD *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a4, v14);
        }

        *(4 * v11) = *v5;
        v7 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 4;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void CoreNLP::logBlock(int a1, const __CFString *this)
{
  CoreNLP::getUTF8StringFromCFString(__p, this);
  if ((v5 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v5 & 0x80u) == 0)
  {
    v3 = v5;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], v2, v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D2273F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::annotationToTrainingLabel(int a1@<W1>, unsigned __int16 *a2@<X2>, std::string *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 1));
  }

  else
  {
    *a3 = *a2;
  }

  if (a1 == 6)
  {
    if (*(a2 + 23) < 0)
    {
      if (*(a2 + 1) == 7 && **a2 == 1852797520 && *(*a2 + 3) == 1853189998)
      {
        goto LABEL_40;
      }

      if (*(a2 + 1) == 3 && **a2 == 21072 && *(*a2 + 2) == 80)
      {
        goto LABEL_40;
      }

      if (*(a2 + 1) == 4 && **a2 == 1146114640 || *(a2 + 1) == 4 && **a2 == 1380995664)
      {
        goto LABEL_40;
      }

      if (*(a2 + 1) != 4)
      {
        goto LABEL_36;
      }

      v12 = *a2;
    }

    else
    {
      v6 = *(a2 + 23);
      if (v6 == 3)
      {
        v7 = *(a2 + 2);
        v8 = *a2 == 21072;
        v9 = 80;
        goto LABEL_32;
      }

      if (v6 != 4)
      {
        if (v6 != 7)
        {
          goto LABEL_36;
        }

        v7 = *(a2 + 3);
        v8 = *a2 == 1852797520;
        v9 = 1853189998;
LABEL_32:
        if (!v8 || v7 != v9)
        {
LABEL_36:
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "PRPT") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "WP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "EX") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "WRB"))
          {
            v13 = "NN";
            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "NNS") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "NN"))
            {
              v13 = "NNP";
              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "NNPS") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "NNP"))
              {
                v13 = "JJ";
                if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Adjective") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "JJ") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "JJS") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "JJR"))
                {
                  v13 = "RB";
                  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Adverb") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RB") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBC") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBN") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBS") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBW"))
                  {
                    v13 = "DT";
                    if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Determiner") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "DT") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "DTO") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "DTP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "DTW"))
                    {
                      v13 = "RP";
                      if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Particle") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RPP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RBP") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "TO") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "PRE"))
                      {
                        v13 = "IN";
                        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Preposition") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "IN"))
                        {
                          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Number") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "LS"))
                          {
                            v13 = "CD";
                          }

                          else
                          {
                            v13 = "CD";
                            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "CD"))
                            {
                              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Conjunction") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "CS"))
                              {
                                v13 = "CC";
                              }

                              else
                              {
                                v13 = "CC";
                                if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "CC"))
                                {
                                  v13 = "UH";
                                  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "Interjection") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "UH"))
                                  {
                                    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VB") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBC") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBD") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBF") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBG") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBI") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBM") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBN") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBR") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBS") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBT") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "VBZ"))
                                    {
                                      std::string::operator=(a3, a2);
                                      return;
                                    }

                                    v13 = "Other";
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_41;
          }
        }

LABEL_40:
        v13 = "PRP";
LABEL_41:
        MEMORY[0x19EAF8860](a3, v13);
        return;
      }

      v13 = "PRP";
      if (*a2 == 1146114640 || *a2 == 1380995664)
      {
        goto LABEL_41;
      }

      v12 = a2;
    }

    if (*v12 != 1397772880)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }
}

void sub_19D227A58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::tagToEvaluationLabel(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a5, "Other");
  if (a4 == 6)
  {
    switch(a3)
    {
      case 16:
      case 18:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassConjunction[0]);
        goto LABEL_23;
      case 17:
      case 29:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassNumber[0]);
        goto LABEL_23;
      case 19:
      case 20:
      case 21:
      case 22:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassDeterminer[0]);
        goto LABEL_23;
      case 23:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 65:
      case 66:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassPronoun[0]);
        goto LABEL_23;
      case 25:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassPreposition[0]);
        goto LABEL_23;
      case 26:
      case 27:
      case 28:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassAdjective[0]);
        goto LABEL_23;
      case 30:
      case 31:
      case 32:
      case 33:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassNoun[0]);
        goto LABEL_23;
      case 34:
      case 43:
      case 47:
      case 48:
      case 49:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassParticle[0]);
        goto LABEL_23;
      case 40:
      case 41:
      case 42:
      case 45:
      case 46:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassAdverb[0]);
        goto LABEL_23;
      case 50:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassInterjection[0]);
        goto LABEL_23;
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
        CoreNLP::getUTF8StringFromCFString(&v10, NLLexicalClassVerb[0]);
        goto LABEL_23;
      default:
        MEMORY[0x19EAF8860](a5, "Other");
        break;
    }
  }

  else
  {
    if (a4 != 7)
    {
      return;
    }

    if (a2 == 4)
    {
      CoreNLP::TaggingModelManager::tagToLabel(a1, a3, 7, 4, &v10);
    }

    else
    {
      switch(a3)
      {
        case 'E':
          CoreNLP::getUTF8StringFromCFString(&v10, NLNamedEntityOrganizationName[0]);
          break;
        case 'D':
          CoreNLP::getUTF8StringFromCFString(&v10, NLNamedEntityPlaceName[0]);
          break;
        case 'C':
          CoreNLP::getUTF8StringFromCFString(&v10, NLNamedEntityPersonalName[0]);
          break;
        default:
          return;
      }
    }

LABEL_23:
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = v10;
  }
}

void sub_19D227CC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::tokenizeGazetteerList(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, kNLTagSchemeTokenType[0]);
  NLTaggerCreate(Mutable, 0);
}

void sub_19D228214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  std::ifstream::~ifstream(&a51, MEMORY[0x1E69E54C8]);
  MEMORY[0x19EAF8C10](&STACK[0x298]);
  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

void ___ZN7CoreNLP21tokenizeGazetteerListERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE12NLLanguageIDRNS0_3mapIS6_NS0_3setIS6_NS0_4lessIS6_EENS4_IS6_EEEESD_NS4_INS0_4pairIS7_SF_EEEEEE_block_invoke(uint64_t a1, CFRange *a2)
{
  v3 = CFStringCreateWithSubstring(0, *(a1 + 40), *a2);
  if (CFStringGetLength(*(*(*(a1 + 32) + 8) + 24)) >= 1)
  {
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @" ");
  }

  CFStringAppend(*(*(*(a1 + 32) + 8) + 24), v3);

  CFRelease(v3);
}

void CoreNLP::createNERGazetteerBF(uint64_t a1, int a2, size_t *a3, long double a4)
{
  *a3 = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  CoreNLP::tokenizeGazetteerList(a1, a2, &v4);
}

void sub_19D228880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::locale a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  BloomFilter::~BloomFilter(&a29);
  BloomFilter::~BloomFilter(&a43);
  BloomFilter::~BloomFilter((v43 - 240));
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(v43 - 128, *(v43 - 120));
  _Unwind_Resume(a1);
}

void BloomFilter::~BloomFilter(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*this)
  {
    operator delete(*this);
  }
}

uint64_t CoreNLP::printTokens(void *a1, int a2, const __CFString *this, uint64_t *a4, uint64_t *a5, int a6)
{
  v10 = *a4;
  v9 = a4[1];
  v11 = a5[1];
  v60 = *a5;
  CoreNLP::getUTF8StringFromCFString(&v74, this);
  if ((v76 & 0x80u) == 0)
  {
    locale = &v74;
  }

  else
  {
    locale = v74.__locale_;
  }

  if ((v76 & 0x80u) == 0)
  {
    v13 = v76;
  }

  else
  {
    v13 = v75;
  }

  v14 = MEMORY[0x1E69E5310];
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], locale, v13);
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(v72, MEMORY[0x1E69E5318]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(v72);
  std::ostream::put();
  std::ostream::flush();
  if (v76 < 0)
  {
    operator delete(v74.__locale_);
  }

  v17 = *a4;
  if (a4[1] != *a4)
  {
    v18 = v11;
    v19 = 0;
    v65 = v9 - v10;
    v20 = v18 - v60;
    v61 = *MEMORY[0x1E695E480];
    do
    {
      v21 = CFStringCreateWithSubstring(v61, this, **(v17 + 8 * v19));
      CoreNLP::getUTF8StringFromCFString(&v74, v21);
      CFRelease(v21);
      if ((v76 & 0x80u) == 0)
      {
        v22 = &v74;
      }

      else
      {
        v22 = v74.__locale_;
      }

      if ((v76 & 0x80u) == 0)
      {
        v23 = v76;
      }

      else
      {
        v23 = v75;
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v22, v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ", 1);
      v26 = MEMORY[0x19EAF8A90](v25, **(v17 + 8 * v19));
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ":", 1);
      v28 = MEMORY[0x19EAF8A90](v27, *(*(v17 + 8 * v19) + 8));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
      v29 = *(v17 + 8 * v19);
      v30 = *(v29 + 24);
      v31 = (v29 + 32);
      if (v30 != (v29 + 32))
      {
        do
        {
          *&v72[0].__locale_ = *(v30 + 2);
          v73 = v30[6];
          CoreNLP::tagToEvaluationLabel(a1, a2, v72[1].__locale_, v72[0].__locale_, __p);
          v32 = HIBYTE(v71);
          LOBYTE(v33) = HIBYTE(v71);
          v34 = __p[1];
          if (v71 >= 0)
          {
            v35 = HIBYTE(v71);
          }

          else
          {
            v35 = __p[1];
          }

          if (!v35)
          {
            CoreNLP::tagToEvaluationLabel(a1, a2, v72[1].__locale_, v72[0].__locale_, v68);
            if (SHIBYTE(v71) < 0)
            {
              operator delete(__p[0]);
            }

            v71 = v69;
            *__p = *v68;
            v32 = HIBYTE(v69);
            v34 = v68[1];
            v33 = HIBYTE(v69);
          }

          if ((v33 & 0x80u) == 0)
          {
            v36 = __p;
          }

          else
          {
            v36 = __p[0];
          }

          if ((v33 & 0x80u) == 0)
          {
            v37 = v32;
          }

          else
          {
            v37 = v34;
          }

          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v36, v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " ", 1);
          if (LODWORD(v72[0].__locale_) == a6 && v65 == v20)
          {
            v39 = *(*a5 + 8 * v19);
            *&v66 = v72;
            v40 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v39 + 24, v72, &std::piecewise_construct, &v66);
            CoreNLP::tagToEvaluationLabel(a1, a2, *(v40 + 10), v72[0].__locale_, v68);
            v41 = v14;
            v42 = HIBYTE(v69);
            LOBYTE(v14) = HIBYTE(v69);
            v43 = v68[1];
            if (v69 >= 0)
            {
              v44 = HIBYTE(v69);
            }

            else
            {
              v44 = v68[1];
            }

            if (!v44)
            {
              v45 = *(*a5 + 8 * v19);
              v77 = v72;
              v46 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v45 + 24, v72, &std::piecewise_construct, &v77);
              CoreNLP::tagToEvaluationLabel(a1, a2, *(v46 + 10), v72[0].__locale_, &v66);
              if (SHIBYTE(v69) < 0)
              {
                operator delete(v68[0]);
              }

              v69 = v67;
              *v68 = v66;
              v42 = HIBYTE(v67);
              v43 = *(&v66 + 1);
              v14 = HIBYTE(v67);
            }

            if (v71 >= 0)
            {
              v47 = HIBYTE(v71);
            }

            else
            {
              v47 = __p[1];
            }

            if (v14 < 0)
            {
              v42 = v43;
            }

            if (v47 != v42 || (v71 >= 0 ? (v48 = __p) : (v48 = __p[0]), v14 >= 0 ? (v49 = v68) : (v49 = v68[0]), memcmp(v48, v49, v47)))
            {
              v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "--> expected: ", 14);
              if (v69 >= 0)
              {
                v51 = v68;
              }

              else
              {
                v51 = v68[0];
              }

              if (v69 >= 0)
              {
                v52 = HIBYTE(v69);
              }

              else
              {
                v52 = v68[1];
              }

              v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v51, v52);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " ", 1);
              LOBYTE(v14) = HIBYTE(v69);
            }

            if ((v14 & 0x80) != 0)
            {
              operator delete(v68[0]);
            }

            v14 = v41;
          }

          if (SHIBYTE(v71) < 0)
          {
            operator delete(__p[0]);
          }

          v54 = v30[1];
          if (v54)
          {
            do
            {
              v55 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v55 = v30[2];
              v56 = *v55 == v30;
              v30 = v55;
            }

            while (!v56);
          }

          v30 = v55;
        }

        while (v55 != v31);
      }

      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v57 = std::locale::use_facet(v72, MEMORY[0x1E69E5318]);
      (v57->__vftable[2].~facet_0)(v57, 10);
      std::locale::~locale(v72);
      std::ostream::put();
      std::ostream::flush();
      if (v76 < 0)
      {
        operator delete(v74.__locale_);
      }

      ++v19;
      v17 = *a4;
    }

    while (v19 < (a4[1] - *a4) >> 3);
  }

  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v58 = std::locale::use_facet(&v74, MEMORY[0x1E69E5318]);
  (v58->__vftable[2].~facet_0)(v58, 10);
  std::locale::~locale(&v74);
  std::ostream::put();
  return std::ostream::flush();
}

void CoreNLP::readAnnotatedToken(uint64_t a1, int a2, int a3, __CFString *a4, uint64_t a5)
{
  std::istringstream::basic_istringstream[abi:ne200100](v47, a1, 8);
  memset(&v46, 0, sizeof(v46));
  if (a2 != 7 || a3 != 4)
  {
    std::istream_iterator<std::string,char,std::char_traits<char>,long>::istream_iterator[abi:ne200100](v41, v47);
    *__p = 0u;
    v40 = 0u;
    std::vector<std::string>::vector[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,0>(&v45, v41, __p);
    std::vector<std::string>::__vdeallocate(&v46);
    v46 = v45;
    memset(&v45, 0, sizeof(v45));
    v44.__r_.__value_.__r.__words[0] = &v45;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p[1]);
    }

    if (v43 < 0)
    {
      v14 = v42;
LABEL_52:
      operator delete(v14);
    }

LABEL_53:
    if (0xAAAAAAAAAAAAAAABLL * ((v46.__end_ - v46.__begin_) >> 3) > 1)
    {
      if (CFStringGetLength(a4) >= 1)
      {
        CFStringAppend(a4, @" ");
      }

      v27 = v46.__end_ - 1;
      if (SHIBYTE(v46.__end_[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = v27->__r_.__value_.__r.__words[0];
      }

      CFStringCreateWithCString(*MEMORY[0x1E695E480], v27, 0x8000100u);
      operator new();
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "\nERROR: Unexpected Annotation (needs at least two columns): ", 60);
    v35 = *(a1 + 23);
    if (v35 >= 0)
    {
      v36 = a1;
    }

    else
    {
      v36 = *a1;
    }

    if (v35 >= 0)
    {
      v37 = *(a1 + 23);
    }

    else
    {
      v37 = *(a1 + 8);
    }

    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v38);
    exit(1);
  }

  std::string::basic_string[abi:ne200100]<0>(&v45, "\t");
  v9 = *(a1 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 8);
  }

  if (SHIBYTE(v45.__end_cap_.__value_) >= 0)
  {
    begin = &v45;
  }

  else
  {
    begin = v45.__begin_;
  }

  if (SHIBYTE(v45.__end_cap_.__value_) >= 0)
  {
    value_high = HIBYTE(v45.__end_cap_.__value_);
  }

  else
  {
    value_high = v45.__end_;
  }

  if (value_high)
  {
    if (v9 < value_high)
    {
LABEL_16:
      v13 = 0;
      goto LABEL_48;
    }

    v28 = (v10 + v9);
    v29 = begin->__r_.__value_.__s.__data_[0];
    v30 = v10;
    while (1)
    {
      v31 = v9 - value_high;
      if (v31 == -1)
      {
        goto LABEL_16;
      }

      v32 = memchr(v30, v29, v31 + 1);
      if (!v32)
      {
        goto LABEL_16;
      }

      v33 = v32;
      if (!memcmp(v32, begin, value_high))
      {
        break;
      }

      v30 = v33 + 1;
      v9 = v28 - (v33 + 1);
      if (v9 < value_high)
      {
        goto LABEL_16;
      }
    }

    v13 = 0;
    if (v33 == v28 || (v15 = &v33[-v10], v15 == -1))
    {
LABEL_48:
      std::string::basic_string(&v44, a1, v13, 0xFFFFFFFFFFFFFFFFLL, v48);
      std::vector<std::string>::push_back[abi:ne200100](&v46, &v44);
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__end_cap_.__value_) < 0)
      {
        v14 = v45.__begin_;
        goto LABEL_52;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v15 = 0;
  }

  v13 = 0;
  while (1)
  {
    std::string::basic_string(&v44, a1, v13, &v15[-v13], v48);
    std::vector<std::string>::push_back[abi:ne200100](&v46, &v44);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    v16 = *(a1 + 23);
    if ((v16 & 0x80u) == 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a1 + 8);
    }

    v18 = SHIBYTE(v45.__end_cap_.__value_) >= 0 ? HIBYTE(v45.__end_cap_.__value_) : v45.__end_;
    v13 = &v15[v18];
    v19 = SHIBYTE(v45.__end_cap_.__value_) >= 0 ? &v45 : v45.__begin_;
    v20 = v16 - v13;
    if (v16 < v13)
    {
      goto LABEL_48;
    }

    v15 += v18;
    if (v18)
    {
      if (v20 < v18)
      {
        goto LABEL_48;
      }

      v21 = (v17 + v16);
      v22 = (v17 + v13);
      begin_low = SLOBYTE(v19->__begin_);
      while (1)
      {
        v24 = v20 - v18;
        if (v24 == -1)
        {
          goto LABEL_48;
        }

        v25 = memchr(v22, begin_low, v24 + 1);
        if (!v25)
        {
          goto LABEL_48;
        }

        v26 = v25;
        if (!memcmp(v25, v19, v18))
        {
          break;
        }

        v22 = v26 + 1;
        v20 = v21 - (v26 + 1);
        if (v20 < v18)
        {
          goto LABEL_48;
        }
      }

      if (v26 == v21)
      {
        goto LABEL_48;
      }

      v15 = &v26[-v17];
    }

    if (v15 == -1)
    {
      goto LABEL_48;
    }
  }
}

void sub_19D229518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  __p = &a39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::istringstream::~istringstream(&a43, MEMORY[0x1E69E54E0]);
  MEMORY[0x19EAF8C10](&a58);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer CoreNLP::parseDir@<X0>(std::__split_buffer<std::string>::pointer result@<X0>, void *a2@<X8>)
{
  v2 = result;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (SHIBYTE(result->__r_.__value_.__r.__words[2]) < 0)
  {
    if (!result->__r_.__value_.__l.__size_)
    {
      return result;
    }

    result = result->__r_.__value_.__r.__words[0];
  }

  else if (!*(&result->__r_.__value_.__s + 23))
  {
    return result;
  }

  stat(result, &v22);
  if ((v22.st_mode & 0xF000) != 0x4000)
  {
    return std::vector<std::string>::push_back[abi:ne200100](a2, v2);
  }

  if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v2->__r_.__value_.__r.__words[0];
  }

  v5 = opendir(v4);
  if (v5)
  {
    while (1)
    {
      v6 = readdir(v5);
      v7 = v6;
      if (!v6)
      {
        break;
      }

      if (v6->d_type != 4)
      {
        if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v2->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v2->__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v19, size + 1);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v19;
        }

        else
        {
          v9 = v19.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = v2;
          }

          else
          {
            v10 = v2->__r_.__value_.__r.__words[0];
          }

          memmove(v9, v10, size);
        }

        *(&v9->__r_.__value_.__l.__data_ + size) = 47;
        v11 = std::string::append(&v19, v7->d_name);
        v12 = *&v11->__r_.__value_.__l.__data_;
        v21 = v11->__r_.__value_.__r.__words[2];
        *__p = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](a2, __p);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }
    }

    return closedir(v5);
  }

  else
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "\nERROR: could not open directory ", 33);
    v14 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
    if (v14 >= 0)
    {
      v15 = v2;
    }

    else
    {
      v15 = v2->__r_.__value_.__r.__words[0];
    }

    if (v14 >= 0)
    {
      v16 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v2->__r_.__value_.__l.__size_;
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(__p, MEMORY[0x1E69E5318]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    return std::ostream::flush();
  }
}

void sub_19D229824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  std::locale::~locale(&a16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void CoreNLP::NLTaggerTrainCollectFeatures(const void ***a1, uint64_t a2, void *a3, int a4, int a5)
{
  v64[19] = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = 0;
  v61 = 0;
  __p = 0;
  v57 = 0;
  v58 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CoreNLP::TaggingModelManager::labelMap(a4, v52, a1, a5);
  v11 = *a3;
  v44 = a3 + 1;
  if (*a3 != a3 + 1)
  {
    v46 = *MEMORY[0x1E69E54C8];
    v47 = *(MEMORY[0x1E69E54C8] + 24);
    do
    {
      v13 = v11[5];
      v12 = v11[6];
      v45 = v11;
      v48 = v12;
      while (v13 != v12)
      {
        v14 = v13;
        if (*(v13 + 23) < 0)
        {
          v14 = *v13;
        }

        std::ifstream::basic_ifstream(v62, v14, 8);
        if ((v63[*(v62[0] - 3) + 16] & 5) != 0)
        {
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "\nERROR: cannot open ", 20);
          v16 = *(v13 + 23);
          if (v16 >= 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = *v13;
          }

          if (v16 >= 0)
          {
            v18 = *(v13 + 23);
          }

          else
          {
            v18 = *(v13 + 8);
          }

          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
          std::ios_base::getloc((v19 + *(*v19 - 24)));
          v20 = std::locale::use_facet(&v49, MEMORY[0x1E69E5318]);
          (v20->__vftable[2].~facet_0)(v20, 10);
          std::locale::~locale(&v49);
          std::ostream::put();
          std::ostream::flush();
        }

        else
        {
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: Reading data from", 24);
          v22 = *(v13 + 23);
          if (v22 >= 0)
          {
            v23 = v13;
          }

          else
          {
            v23 = *v13;
          }

          if (v22 >= 0)
          {
            v24 = *(v13 + 23);
          }

          else
          {
            v24 = *(v13 + 8);
          }

          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "...", 3);
          std::ios_base::getloc((v26 + *(*v26 - 24)));
          v27 = std::locale::use_facet(&v49, MEMORY[0x1E69E5318]);
          (v27->__vftable[2].~facet_0)(v27, 10);
          std::locale::~locale(&v49);
          std::ostream::put();
          std::ostream::flush();
          while (1)
          {
            std::ios_base::getloc((v62 + *(v62[0] - 3)));
            v28 = std::locale::use_facet(&v49, MEMORY[0x1E69E5318]);
            v29 = (v28->__vftable[2].~facet_0)(v28, 10);
            std::locale::~locale(&v49);
            v30 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v62, &v59, v29);
            if ((*(v30 + *(*v30 - 24) + 32) & 5) != 0)
            {
              break;
            }

            if (v61 >= 0)
            {
              v31 = &v59;
            }

            else
            {
              v31 = v59;
            }

            if (v61 >= 0)
            {
              v32 = HIBYTE(v61);
            }

            else
            {
              v32 = v60;
            }

            if (v32)
            {
              v33 = 0;
              while (memchr(" \t\n\v\f\r", v31[v33], 6uLL))
              {
                if (v32 == ++v33)
                {
                  goto LABEL_37;
                }
              }

              if (v33 != -1)
              {
                v49.__locale_ = 0;
                v50 = 0;
                v51 = 0;
                CoreNLP::readAnnotatedToken(&v59, a4, a5, Mutable, &v49);
              }
            }

LABEL_37:
            if (__p != v57)
            {
              CoreNLP::TaggingFeatureExtractor::extractSharedData(a2, &__p, Mutable, a5);
              if (v57 != __p)
              {
                v34 = 0;
                do
                {
                  CoreNLP::TaggingFeatureExtractor::collectFeatures(a2, a4, a5, &__p, v34++);
                }

                while (v34 < (v57 - __p) >> 3);
              }

              v65.length = CFStringGetLength(Mutable);
              v65.location = 0;
              CFStringDelete(Mutable, v65);
              v35 = __p;
              v36 = v57;
              if (__p != v57)
              {
                do
                {
                  if (*v35)
                  {
                    CoreNLP::NLAttributedToken::~NLAttributedToken(*v35);
                    MEMORY[0x19EAF8CA0]();
                  }

                  ++v35;
                }

                while (v35 != v36);
                v35 = __p;
              }

              v57 = v35;
              v37 = v53;
              v38 = v54;
              while (v38 != v37)
              {
                v39 = *(v38 - 1);
                v38 -= 3;
                if (v39 < 0)
                {
                  operator delete(*v38);
                }
              }

              v54 = v37;
            }
          }
        }

        v62[0] = v46;
        *(v62 + *(v46 - 3)) = v47;
        MEMORY[0x19EAF8960](v63);
        std::istream::~istream();
        MEMORY[0x19EAF8C10](v64);
        v13 += 24;
        v12 = v48;
      }

      v40 = v45;
      v41 = v45[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v40[2];
          v43 = *v42 == v40;
          v40 = v42;
        }

        while (!v43);
      }

      v11 = v42;
    }

    while (v42 != v44);
  }

  CFRelease(Mutable);
  std::__tree<std::string>::destroy(v52, v52[1]);
  v62[0] = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v62);
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(v59);
  }
}

void sub_19D229EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char *a37)
{
  std::__tree<std::string>::destroy(&a22, a23);
  a37 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a37);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

void NLTaggerTrainModel(char *a1, const char *a2, char *a3, char *a4, char *a5, char *a6, char *a7, double a8, long double a9)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v14 = CoreNLP::languageIdForLanguage(v12, v13);
  CFRelease(v12);
  std::string::basic_string[abi:ne200100]<0>(v32, a1);
  if (v33 < 0)
  {
    if (v32[1] != 3)
    {
      goto LABEL_10;
    }

    v15 = v32[0];
  }

  else
  {
    if (v33 != 3)
    {
      goto LABEL_10;
    }

    v15 = v32;
  }

  v16 = *v15;
  v17 = *(v15 + 2);
  if (v16 == 28528 && v17 == 115)
  {
    v23 = 6;
    if ((v33 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  if (v35 < 0)
  {
    if (__p[1] == 3)
    {
      v24 = bswap32(*__p[0] | (*(__p[0] + 2) << 16));
      v20 = v24 >= 0x6E657200;
      v25 = v24 > 0x6E657200;
      v26 = !v20;
      if (v25 == v26)
      {
        v23 = 7;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    operator delete(__p[0]);
  }

  else if (v35 == 3)
  {
    v19 = bswap32(LOWORD(__p[0]) | (BYTE2(__p[0]) << 16));
    v20 = v19 >= 0x6E657200;
    v21 = v19 > 0x6E657200;
    v22 = !v20;
    if (v21 == v22)
    {
      v23 = 7;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  if ((v33 & 0x80) == 0)
  {
LABEL_32:
    CoreNLP::TaggingModelManager::TaggingModelManager(v32);
    CoreNLP::TaggingFeatureExtractor::TaggingFeatureExtractor(v31);
    CoreNLP::TaggerContext::TaggerContext(v30);
    v29 = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, a7);
    if (v35 < 0)
    {
      v27 = __p[1];
      operator delete(__p[0]);
      if (v27)
      {
LABEL_34:
        std::string::basic_string[abi:ne200100]<0>(__p, a7);
        CoreNLP::createNERGazetteerBF(__p, v14, &v29, a9);
      }
    }

    else if (v35)
    {
      goto LABEL_34;
    }

    CoreNLP::TaggingModelManager::labelMap(v23, &v28, v32, v14);
    operator new();
  }

LABEL_31:
  operator delete(v32[0]);
  goto LABEL_32;
}

void sub_19D22B518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char **a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, char *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char *a38, char *a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, char *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  a24 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  a30 = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::__tree<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::__map_value_compare<CoreNLP::NLTrainerDataType,std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::less<CoreNLP::NLTrainerDataType>,true>,std::allocator<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>>>::destroy(&a38, a39);
  a38 = &a41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a38);
  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  (*(*a14 + 8))(a14);
  std::__tree<std::string>::destroy(&a53, a54);
  CoreNLP::TaggerContext::~TaggerContext(&a57);
  CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor(&a65);
  CoreNLP::TaggingModelManager::~TaggingModelManager(&STACK[0x348]);
  _Unwind_Resume(a1);
}

void NLTaggerTestModel(char *a1, const char *a2, char *a3, char *a4, char *a5)
{
  v153[19] = *MEMORY[0x1E69E9840];
  v9 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v11 = CoreNLP::languageIdForLanguage(v9, v10);
  CFRelease(v9);
  std::string::basic_string[abi:ne200100]<0>(v144, a1);
  if (v145 < 0)
  {
    if (v144[1] != 3)
    {
      goto LABEL_10;
    }

    v12 = v144[0];
  }

  else
  {
    if (v145 != 3)
    {
      goto LABEL_10;
    }

    v12 = v144;
  }

  v13 = *v12;
  v14 = *(v12 + 2);
  v15 = v13 == 28528 && v14 == 115;
  if (v15)
  {
    v20 = 6;
    if ((v145 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(&__p, a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ == 3)
    {
      v21 = bswap32(*__p.__r_.__value_.__l.__data_ | (*(__p.__r_.__value_.__r.__words[0] + 2) << 16));
      v17 = v21 >= 0x6E657200;
      v22 = v21 > 0x6E657200;
      v23 = !v17;
      if (v22 == v23)
      {
        v20 = 7;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 3)
  {
    v16 = bswap32(LOWORD(__p.__r_.__value_.__l.__data_) | (__p.__r_.__value_.__s.__data_[2] << 16));
    v17 = v16 >= 0x6E657200;
    v18 = v16 > 0x6E657200;
    v19 = !v17;
    if (v18 == v19)
    {
      v20 = 7;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v145 < 0)
  {
LABEL_31:
    operator delete(v144[0]);
  }

LABEL_32:
  v147 = v20;
  CoreNLP::TaggingModelManager::TaggingModelManager(v144);
  CoreNLP::TaggingFeatureExtractor::TaggingFeatureExtractor(v143);
  CoreNLP::TaggerContext::TaggerContext(v142);
  CoreNLP::TaggingModelManager::labelMap(v147, v141, v144, v11);
  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!size)
    {
      goto LABEL_38;
    }
  }

  else if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_38;
  }

  v25 = v147;
  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  CoreNLP::TaggingModelManager::setCustomModelPath(v144, v11, v25, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_38:
  v138 = 0;
  v139 = 0;
  v140 = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v131[0] = 0;
  v131[1] = 0;
  v130 = v131;
  if (v11 == 4 && v147 == 7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, a5);
    CoreNLP::TaggingFeatureExtractor::setConstrainFeaturePath(v143, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, a5);
    CoreNLP::TaggingFeatureExtractor::setConstrainFeaturePath(&v146, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a4);
  CoreNLP::parseDir(&__p, &v128);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v27 = v128;
  v118 = v129;
  if (v128 != v129)
  {
    v119 = 0;
    v121 = 0;
    v116 = *MEMORY[0x1E69E54C8];
    v117 = *(MEMORY[0x1E69E54C8] + 24);
    while (1)
    {
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: Testing token data from", 30);
      v29 = *(v27 + 23);
      if (v29 >= 0)
      {
        v30 = v27;
      }

      else
      {
        v30 = *v27;
      }

      if (v29 >= 0)
      {
        v31 = *(v27 + 23);
      }

      else
      {
        v31 = *(v27 + 8);
      }

      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "...", 3);
      std::ios_base::getloc((v33 + *(*v33 - 24)));
      v34 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
      (v34->__vftable[2].~facet_0)(v34, 10);
      std::locale::~locale(&__p);
      std::ostream::put();
      std::ostream::flush();
      v35 = v27;
      if (*(v27 + 23) < 0)
      {
        v35 = *v27;
      }

      std::ifstream::basic_ifstream(&__p, v35, 8);
      while (1)
      {
        std::ios_base::getloc((&__p + *(__p.__r_.__value_.__r.__words[0] - 24)));
        v36 = std::locale::use_facet(v126, MEMORY[0x1E69E5318]);
        v37 = (v36->__vftable[2].~facet_0)(v36, 10);
        std::locale::~locale(v126);
        v38 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v138, v37);
        if ((*(v38 + *(*v38 - 24) + 32) & 5) != 0)
        {
          break;
        }

        if (v140 >= 0)
        {
          v40 = &v138;
        }

        else
        {
          v40 = v138;
        }

        if (v140 >= 0)
        {
          v41 = HIBYTE(v140);
        }

        else
        {
          v41 = v139;
        }

        if (v41)
        {
          v42 = 0;
          while (memchr(" \t\n\v\f\r", v40[v42], 6uLL))
          {
            if (v41 == ++v42)
            {
              goto LABEL_71;
            }
          }

          if (v42 != -1)
          {
            v126[0].__locale_ = 0;
            v126[1].__locale_ = 0;
            v127 = 0;
            CoreNLP::readAnnotatedToken(&v138, v147, v11, Mutable, v126);
          }
        }

LABEL_71:
        v43 = v132;
        v44 = v133;
        if (v132 != v133)
        {
          do
          {
            CoreNLP::extractTokenExtendedAttributes(Mutable, *v43++, v39);
          }

          while (v43 != v44);
          CoreNLP::TaggingModelManager::addTask(v144, v147, v11);
          Length = CFStringGetLength(Mutable);
          CoreNLP::TaggerContext::setString(v142, Mutable, 0, Length, v11);
          if ((CoreNLP::TaggingModelManager::tagInstance(v144, &v132, v142, 0) & 1) == 0)
          {
            exit(1);
          }

          CoreNLP::printTokens(v144, v11, Mutable, &v132, &v135, v147);
          v154.length = CFStringGetLength(Mutable);
          v154.location = 0;
          CFStringDelete(Mutable, v154);
          v120 = v27;
          v46 = v135;
          v47 = v136;
          if (v136 != v135)
          {
            v48 = 0;
            while (1)
            {
              v49 = v46[v48];
              v124[0] = &v147;
              v50 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v49 + 3), &v147, &std::piecewise_construct, v124);
              CoreNLP::tagToEvaluationLabel(v144, v11, *(v50 + 10), v147, v126);
              v51 = *(v132 + v48);
              v149 = &v147;
              v52 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v51 + 24, &v147, &std::piecewise_construct, &v149);
              CoreNLP::tagToEvaluationLabel(v144, v11, *(v52 + 10), v147, v124);
              if (v131 == std::__tree<std::string>::find<std::string>(&v130, &v126[0].__locale_))
              {
                std::vector<int>::vector[abi:ne200100](&v122, 3uLL);
                v149 = v126;
                v53 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v130, &v126[0].__locale_, &std::piecewise_construct, &v149, &v148);
                v54 = *(v53 + 7);
                if (v54)
                {
                  *(v53 + 8) = v54;
                  operator delete(v54);
                  *(v53 + 7) = 0;
                  *(v53 + 8) = 0;
                  *(v53 + 9) = 0;
                }

                *(v53 + 56) = v122;
                *(v53 + 9) = v123;
              }

              if (v131 == std::__tree<std::string>::find<std::string>(&v130, v124))
              {
                std::vector<int>::vector[abi:ne200100](&v122, 3uLL);
                v149 = v124;
                v55 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v130, v124, &std::piecewise_construct, &v149, &v148);
                v56 = *(v55 + 7);
                if (v56)
                {
                  *(v55 + 8) = v56;
                  operator delete(v56);
                  *(v55 + 7) = 0;
                  *(v55 + 8) = 0;
                  *(v55 + 9) = 0;
                }

                *(v55 + 56) = v122;
                *(v55 + 9) = v123;
              }

              v149 = v126;
              v57 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v130, &v126[0].__locale_, &std::piecewise_construct, &v149, &v148);
              ++*(*(v57 + 7) + 8);
              v149 = v124;
              v58 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v130, v124, &std::piecewise_construct, &v149, &v148);
              ++*(*(v58 + 7) + 4);
              if (v127 >= 0)
              {
                locale = HIBYTE(v127);
              }

              else
              {
                locale = v126[1].__locale_;
              }

              v60 = HIBYTE(v125);
              v61 = HIBYTE(v125);
              if (v125 < 0)
              {
                v60 = v124[1];
              }

              if (locale == v60)
              {
                v62 = v127 >= 0 ? v126 : v126[0].__locale_;
                v63 = v125 >= 0 ? v124 : v124[0];
                if (!memcmp(v62, v63, locale))
                {
                  break;
                }
              }

              if (v61 < 0)
              {
                goto LABEL_98;
              }

LABEL_99:
              if (SHIBYTE(v127) < 0)
              {
                operator delete(v126[0].__locale_);
              }

              ++v48;
              v46 = v135;
              v47 = v136;
              if (v48 >= (v136 - v135) >> 3)
              {
                v119 += v48;
                goto LABEL_105;
              }
            }

            v149 = v126;
            v64 = std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v130, &v126[0].__locale_, &std::piecewise_construct, &v149, &v148);
            ++v121;
            ++**(v64 + 7);
            if ((v125 & 0x8000000000000000) == 0)
            {
              goto LABEL_99;
            }

LABEL_98:
            operator delete(v124[0]);
            goto LABEL_99;
          }

LABEL_105:
          v66 = v132;
          v65 = v133;
          if (v132 != v133)
          {
            do
            {
              if (*v66)
              {
                CoreNLP::NLAttributedToken::~NLAttributedToken(*v66);
                MEMORY[0x19EAF8CA0]();
              }

              ++v66;
            }

            while (v66 != v65);
            v46 = v135;
            v47 = v136;
          }

          if (v46 != v47)
          {
            do
            {
              if (*v46)
              {
                CoreNLP::NLAttributedToken::~NLAttributedToken(*v46);
                MEMORY[0x19EAF8CA0]();
              }

              ++v46;
            }

            while (v46 != v47);
            v46 = v135;
          }

          v133 = v132;
          v136 = v46;
          v27 = v120;
        }
      }

      __p.__r_.__value_.__r.__words[0] = v116;
      *(__p.__r_.__value_.__r.__words + *(v116 - 24)) = v117;
      MEMORY[0x19EAF8960](&__p.__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x19EAF8C10](v153);
      v27 += 24;
      if (v27 == v118)
      {
        goto LABEL_119;
      }
    }
  }

  v121 = 0;
  v119 = 0;
LABEL_119:
  CFRelease(Mutable);
  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: item accuracy: ", 22);
  v68 = MEMORY[0x19EAF8A70](v67, v121);
  v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "/", 1);
  v70 = MEMORY[0x19EAF8A70](v69, v119);
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " = ", 3);
  v72 = MEMORY[0x19EAF8A50](v71, v121 / v119);
  std::ios_base::getloc((v72 + *(*v72 - 24)));
  v73 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
  (v73->__vftable[2].~facet_0)(v73, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: Performance by label (#match, #model, #ref) (precision, recall, F1):", 75);
  std::ios_base::getloc((v74 + *(*v74 - 24)));
  v75 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
  (v75->__vftable[2].~facet_0)(v75, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  v76 = v130;
  if (v130 == v131)
  {
    v103 = 0.0;
    v104 = 0.0;
    v105 = 0.0;
  }

  else
  {
    v77 = 0;
    v78 = 0;
    v79 = 0;
    do
    {
      std::pair<std::string const,std::vector<int>>::pair[abi:ne200100](&__p, v76 + 2);
      if (std::string::compare(&__p, "Other") && std::string::compare(&__p, "NONE") && std::string::compare(&__p, "O"))
      {
        v80 = *v151;
        v81 = *(v151 + 1);
        v82 = *(v151 + 2);
        v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\t", 1);
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
          v85 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v85 = __p.__r_.__value_.__l.__size_;
        }

        v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, p_p, v85);
        v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, ": (", 3);
        v88 = MEMORY[0x19EAF8A70](v87, *v151);
        v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ", ", 2);
        v90 = MEMORY[0x19EAF8A70](v89, *(v151 + 1));
        v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, ", ", 2);
        v92 = MEMORY[0x19EAF8A70](v91, *(v151 + 2));
        v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, ") (", 3);
        v94 = MEMORY[0x19EAF8A50](v93, v80 / v81);
        v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, ", ", 2);
        v96 = MEMORY[0x19EAF8A50](v95, v80 / v82);
        v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, ", ", 2);
        v98 = MEMORY[0x19EAF8A50](v97, (v80 / v81 + v80 / v81) * (v80 / v82) / (v80 / v81 + v80 / v82));
        v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, ")", 1);
        std::ios_base::getloc((v99 + *(*v99 - 24)));
        v100 = std::locale::use_facet(v126, MEMORY[0x1E69E5318]);
        (v100->__vftable[2].~facet_0)(v100, 10);
        std::locale::~locale(v126);
        std::ostream::put();
        std::ostream::flush();
        v79 += *v151;
        v78 += *(v151 + 1);
        v77 += *(v151 + 2);
      }

      if (v151)
      {
        v152 = v151;
        operator delete(v151);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v101 = v76[1];
      if (v101)
      {
        do
        {
          v102 = v101;
          v101 = *v101;
        }

        while (v101);
      }

      else
      {
        do
        {
          v102 = v76[2];
          v15 = *v102 == v76;
          v76 = v102;
        }

        while (!v15);
      }

      v76 = v102;
    }

    while (v102 != v131);
    v103 = v79;
    v104 = v78;
    v105 = v77;
  }

  v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\nINFO: Average precision, recall, F1: (", 39);
  v107 = v103 / v104;
  v108 = MEMORY[0x19EAF8A50](v106, v107);
  v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, ", ", 2);
  v110 = v103 / v105;
  v111 = MEMORY[0x19EAF8A50](v109, v110);
  v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, ", ", 2);
  v113 = MEMORY[0x19EAF8A50](v112, (v107 + v107) * v110 / (v107 + v110));
  v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, ")", 1);
  std::ios_base::getloc((v114 + *(*v114 - 24)));
  v115 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
  (v115->__vftable[2].~facet_0)(v115, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  __p.__r_.__value_.__r.__words[0] = &v128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(&v130, v131[0]);
  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }

  if (SHIBYTE(v140) < 0)
  {
    operator delete(v138);
  }

  std::__tree<std::string>::destroy(v141, v141[1]);
  CoreNLP::TaggerContext::~TaggerContext(v142);
  CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor(v143);
  CoreNLP::TaggingModelManager::~TaggingModelManager(v144);
}

void sub_19D22CA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(&a32, a33);
  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  std::__tree<std::string>::destroy(&a47, a48);
  CoreNLP::TaggerContext::~TaggerContext(&a50);
  CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor(&a58);
  CoreNLP::TaggingModelManager::~TaggingModelManager(&STACK[0x310]);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::set<std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::set<std::string>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_19D22CD34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::set<std::string>>::~pair(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<int>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  return this;
}

void sub_19D22CDFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t **std::istream_iterator<std::string,char,std::char_traits<char>,long>::istream_iterator[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v3 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (a1 + 1));
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_19D22D0D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::vector<std::string>::vector[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,0>(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, a2[1], a2[2]);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v6 = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a3[1], a3[2]);
  }

  else
  {
    __p = *(a3 + 1);
  }

  std::vector<std::string>::__init_with_sentinel[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>(a1, &v8, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_19D22D1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::vector<std::string>::__init_with_sentinel[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>(uint64_t **result, uint64_t a2, void *a3)
{
  v5 = result;
  while (*a2 != *a3)
  {
    v6 = *(v5 + 8);
    if (v6 >= *(v5 + 16))
    {
      v7 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v5, (a2 + 8));
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v5, (a2 + 8));
      v7 = v6 + 1;
    }

    *(v5 + 8) = v7;
    result = std::istream_iterator<std::string,char,std::char_traits<char>,long>::operator++[abi:ne200100](a2);
  }

  return result;
}

uint64_t **std::istream_iterator<std::string,char,std::char_traits<char>,long>::operator++[abi:ne200100](uint64_t **a1)
{
  v2 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, (a1 + 1));
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

void std::__tree<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::__map_value_compare<CoreNLP::NLTrainerDataType,std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::less<CoreNLP::NLTrainerDataType>,true>,std::allocator<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::__map_value_compare<CoreNLP::NLTrainerDataType,std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::less<CoreNLP::NLTrainerDataType>,true>,std::allocator<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::__map_value_compare<CoreNLP::NLTrainerDataType,std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>,std::less<CoreNLP::NLTrainerDataType>,true>,std::allocator<std::__value_type<CoreNLP::NLTrainerDataType,std::vector<std::string>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

uint64_t std::uniform_int_distribution<int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v13 = v3;
    v14 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v12, a2, 0x20uLL);
      return std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 31;
      if (((v7 << v9) & 0x7FFFFFFF) != 0)
      {
        v10 = 32;
      }

      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  LODWORD(v5) = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  *(result + 40) = v5;
  if (v5 / v3 < (v5 ^ 0x7FFFFFFE))
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x1F)
    {
      *(result + 40) = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x1E)
  {
LABEL_15:
    v8 = -v4;
    v7 = -1;
    *(result + 44) = 0;
    *(result + 48) = 0xFFFFFFFF >> v8;
    goto LABEL_16;
  }

  v6 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v6 = 0;
  }

  *(result + 44) = 0x3FFFFFFFu >> v4 << (v4 + 1);
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> ~v4;
LABEL_16:
  *(result + 52) = v7;
  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    LODWORD(result) = 0;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
      }

      while (v6 - 1 >= *(a1 + 40));
      v12 = result << v5;
      if (v5 >= 0x20)
      {
        v12 = 0;
      }

      result = v12 + (*(a1 + 48) & (v6 - 1));
      ++v4;
    }

    while (v4 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v13 = *(a1 + 24);
  if (v2 < v13)
  {
    v14 = *a1;
    v15 = *(a1 + 44);
    v16 = *(a1 + 16);
    v17 = *(a1 + 52);
    v18 = *v14;
    while (1)
    {
      v19 = v18 / 0xADC8;
      v20 = 48271 * (v18 % 0xADC8);
      v19 *= 3399;
      v9 = v20 >= v19;
      v21 = v20 - v19;
      if (v9)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0x7FFFFFFF;
      }

      v18 = v22 + v21;
      if (v18 - 1 < v15)
      {
        v23 = result << (v16 + 1);
        if (v16 >= 0x1F)
        {
          v23 = 0;
        }

        result = v23 + (v17 & (v18 - 1));
        if (++v2 == v13)
        {
          break;
        }
      }
    }

    *v14 = v18;
  }

  return result;
}

char *std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

CoreNLP::ThaiSubWordTagger *CoreNLP::ThaiSubWordTagger::ThaiSubWordTagger(CoreNLP::ThaiSubWordTagger *this, const CoreNLP::TaggerContext *a2, const CoreNLP::StringBuffer *a3)
{
  *CoreNLP::SubWordTagger::SubWordTagger(this, a2, a3) = &unk_1F10B0000;
  *(this + 6) = ThaiTokenizerCreate();
  return this;
}

void CoreNLP::ThaiSubWordTagger::~ThaiSubWordTagger(CoreNLP::ThaiSubWordTagger *this)
{
  *this = &unk_1F10B0000;
  if (*(this + 6))
  {
    ThaiTokenizerDestroy();
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  CoreNLP::ThaiSubWordTagger::~ThaiSubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::ThaiSubWordTagger::setString(CoreNLP::ThaiSubWordTagger *this, const __CFString *a2, CFRange a3)
{
  CoreNLP::SubWordTagger::setString(this, a2, a3);
  result = *(this + 6);
  if (result)
  {

    return MEMORY[0x1EEE632D0]();
  }

  return result;
}

uint64_t CoreNLP::ThaiSubWordTagger::fastEnumerateTokensWithSpecifiedStop(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (*(result + 48))
  {
    do
    {
      result = ThaiTokenizerAdvanceToNextToken();
      if (!result)
      {
        break;
      }

      v6 = result;
      v8[0] = ThaiTokenizerGetCurrentTokenRange();
      v8[1] = v7;
      v8[2] = 32 * ((v6 & 6) != 0);
      result = (*(a4 + 16))(a4, v8, a3);
    }

    while (*a3 != 1);
  }

  return result;
}

uint64_t CoreNLP::ThaiSubWordTagger::enumeratePersonNamesOfCurrentSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v4 = *(a1 + 8);
  v5 = (v4 + 16);
  v6 = CFStringFindWithOptions(*(v4 + 8), @" ", *(v4 + 16), 0, &v10);
  v12 = 0x10000;
  if (v6)
  {
    v7 = v10.location - *v5;
    *&v11 = *v5;
    *(&v11 + 1) = v7;
    (*(a3 + 16))(a3, &v11, &v13);
    if ((v13 & 1) == 0)
    {
      v12 = 0x40000;
      v8 = *(v4 + 24) + ~*(&v11 + 1);
      *&v11 = v10.location + 1;
      *(&v11 + 1) = v8;
      (*(a3 + 16))(a3, &v11, &v13);
    }
  }

  else
  {
    v11 = *v5;
    (*(a3 + 16))(a3, &v11, &v13);
  }

  return 1;
}

char *CoreNLP::ThaiSubWordTagger::goToTokenAtIndex(CoreNLP::ThaiSubWordTagger *this, unint64_t a2, uint64_t a3, CFRange *a4)
{
  if (a4)
  {
    *a4 = xmmword_19D27D570;
  }

  if (!*(this + 6))
  {
    return 0;
  }

  v6 = *(this + 1);
  v7 = *(v6 + 16);
  if (v7 > a3 || *(v6 + 24) + v7 <= a3)
  {
    return 0;
  }

  v9 = this + 24;
  v8 = *(this + 3);
  if (v8 > a3 || *(this + 4) + v8 <= a3)
  {
    v10 = ThaiTokenizerGoToTokenAtIndex();
    if (!v10)
    {
      return 0;
    }

    v11 = v10;
    if ((v10 & 4) != 0 && (**(this + 1) & 0x10000) == 0)
    {
      return 0;
    }

    CurrentTokenRange = ThaiTokenizerGetCurrentTokenRange();
    if (a4 && (v11 & 8) != 0)
    {
      v9 = 0;
      a4->location = CurrentTokenRange;
      a4->length = v14;
    }

    else
    {
      *(this + 3) = CurrentTokenRange;
      *(this + 4) = v14;
      *(this + 5) = 32 * ((v11 & 6) != 0);
    }
  }

  return v9;
}

char *CoreNLP::ThaiSubWordTagger::getNextToken(CoreNLP::ThaiSubWordTagger *this, CFRange *a2)
{
  if (!*(this + 6))
  {
    return 0;
  }

  do
  {
    Token = ThaiTokenizerAdvanceToNextToken();
    v5 = Token;
  }

  while ((*(*(this + 1) + 2) & 1) == 0 && (Token & 4) != 0);
  if (!Token)
  {
    return 0;
  }

  CurrentTokenRange = ThaiTokenizerGetCurrentTokenRange();
  if (a2 && (v5 & 8) != 0)
  {
    v8 = 0;
    a2->location = CurrentTokenRange;
    a2->length = v7;
  }

  else
  {
    *(this + 3) = CurrentTokenRange;
    *(this + 4) = v7;
    v8 = this + 24;
    *(v8 + 2) = 32 * ((v5 & 6) != 0);
  }

  return v8;
}

uint64_t CoreNLP::SentenceEmbedding::dimension(CoreNLP::SentenceEmbedding *this)
{
  if (*(this + 4) == 10)
  {
    return 512;
  }

  else
  {
    return 640;
  }
}

void ___ZN7CoreNLP8Resource16getAssetResourceEPK10__CFLocalePK10__CFStringS6_b_block_invoke(uint64_t a1, const __CFURL *a2, int a3, const void *a4, CFStringRef theString1, _BYTE *a6)
{
  if (CFStringCompare(theString1, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    PathComponent = CFURLCopyLastPathComponent(a2);
    if (CFStringCompare(PathComponent, *(a1 + 48), 0) == kCFCompareEqualTo)
    {
      operator new();
    }

    CFRelease(PathComponent);
  }
}

void sub_19D22DE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<CoreNLP::Resource>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

CoreNLP::Resource *CoreNLP::Resource::Resource(CoreNLP::Resource *this, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (cf)
  {
    *this = CFRetain(cf);
  }

  if (a3)
  {
    *(this + 1) = CFRetain(a3);
  }

  if (a4)
  {
    *(this + 2) = CFRetain(a4);
  }

  return this;
}

void CoreNLP::Resource::~Resource(CoreNLP::Resource *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    CFRelease(v4);
  }
}

void CoreNLP::Resource::path(uint64_t *__return_ptr a1@<X8>, CoreNLP **this@<X0>)
{
  if (*this)
  {
    CoreNLP::getFileSystemRepresentationFromCFURL();
  }

  *(a1 + 23) = 0;
  *a1 = 0;
}

BOOL CoreNLP::Resource::exists(CoreNLP **this)
{
  if (*this)
  {
    CoreNLP::getFileSystemRepresentationFromCFURL();
  }

  v5 = 0;
  LOBYTE(__p) = 0;
  v1 = open(&__p, 0);
  v2 = v1;
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2 >= 0;
}

void sub_19D22DFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN7CoreNLPL4loadEv_block_invoke(CoreNLP *a1)
{
  LinguisticData = CoreNLP::loadLinguisticData(a1);
  v2 = LinguisticData;
  if (LinguisticData)
  {
    result = dlsym(LinguisticData, "LDEnumerateAssetDataItems");
    CoreNLP::_LDEnumerateAssetDataItems = result;
  }

  else
  {
    result = CoreNLP::_LDEnumerateAssetDataItems;
  }

  if (v2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  CoreNLP::isSoftlinked = v5;
  return result;
}

void *tokenTypeToTokenizer@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 == 1)
  {
    operator new();
  }

  if (!a1)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

void corelm::VocabularyBuilder::makeVocabulary(uint64_t a1, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "vocab.txt");
  hasFile = corelm::util::Directory::hasFile(a1, &__p);
  v6 = hasFile;
  if (v15.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
    if (v6)
    {
LABEL_3:
      std::string::basic_string[abi:ne200100]<0>(&v13, "vocab.txt");
      corelm::util::Directory::getFilePath(a1, &v13, &__p);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
        __p = &unk_1F10AD1D0;
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v16 = v15;
        __p = &unk_1F10AD1D0;
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(v11, "special_map.txt");
      if (corelm::util::Directory::hasFile(a1, v11))
      {
        std::string::basic_string[abi:ne200100]<0>(v9, "special_map.txt");
        corelm::util::Directory::getFilePath(a1, v9, &__p);
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v13, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
          __p = &unk_1F10AD1D0;
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v13 = v15;
          __p = &unk_1F10AD1D0;
        }

        if (v10 < 0)
        {
          operator delete(v9[0]);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v13, "");
      }

      if (v12 < 0)
      {
        operator delete(v11[0]);
      }

      tokenTypeToTokenizer(a2, &__p);
      std::make_unique[abi:ne200100]<corelm::TokenListVocabulary,std::string &,std::unique_ptr<corelm::AbstractTokenizer>,std::string &,0>();
    }
  }

  else if (hasFile)
  {
    goto LABEL_3;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "sp.dat");
  v7 = corelm::util::Directory::hasFile(a1, &__p);
  if (v15.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  if (v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "sp.dat");
    corelm::util::Directory::getFilePath(a1, &v13, &__p);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
      __p = &unk_1F10AD1D0;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = v15;
      __p = &unk_1F10AD1D0;
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Unable to find vocab file.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_19D22E494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v37 - 41) < 0)
  {
    operator delete(*(v37 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_19D22E7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    (*(*v35 + 8))(v35, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  MEMORY[0x19EAF8CA0](v33, v34, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void CoreNLP::GermanCompoundWord::enumerateDerivedSubTokensOfToken(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v30[256] = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v10 = Mutable;
    v22 = v8;
    CoreNLP::StringBuffer::getSubStringCharsOfRange(*(v8 + 8), *v7);
    v26 = 0;
    v23 = v7;
    v11 = germantok_tokenize();
    v12 = v11 - 1;
    if (v11 >= 1)
    {
      v13 = &v28;
      v14 = &v27;
      v15 = &v29;
      v16 = v30;
      do
      {
        v17 = v12;
        v24 = *v16;
        if (v5)
        {
          v18 = *v15;
        }

        else
        {
          v18 = 0;
        }

        v25 = v18;
        v19.length = *v13;
        if (*v13)
        {
          v19.location = *(v13 - 1);
          v20 = v10;
        }

        else
        {
          v19.length = *(&v24 + 1);
          v20 = *(*v22 + 8);
          v19.location = v23->location + v24;
        }

        v21 = CFStringCreateWithSubstring(0, v20, v19);
        (*(v3 + 16))(v3, &v24, v21, *v14, &v26);
        if (v21)
        {
          CFRelease(v21);
        }

        if (v26)
        {
          break;
        }

        v12 = v17 - 1;
        v14 += 8;
        v13 += 2;
        ++v15;
        ++v16;
      }

      while (v17);
    }

    CFRelease(v10);
  }
}

uint64_t CoreNLP::CRFModel::CRFModel(uint64_t a1, const void ***a2)
{
  v3 = CoreNLP::AbstractModel::AbstractModel(a1, a2);
  *v3 = &unk_1F10B00F8;
  *(v3 + 72) = &unk_1F10AE9A8;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 224) = 0;
  *(v3 + 216) = v3 + 224;
  *(v3 + 232) = 0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  v4 = (v3 + 24);
  v5 = *(v3 + 16);
  if (v5 != (v3 + 24))
  {
    do
    {
      v16 = v5 + 7;
      v6 = std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v14, v5 + 14, &std::piecewise_construct, &v16);
      std::string::operator=((v6 + 5), (v5 + 4));
      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
    v10 = v14;
    if (v14 != v15)
    {
      do
      {
        std::vector<std::string>::push_back[abi:ne200100](a1 + 192, (v10 + 5));
        v11 = v10[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v10[2];
            v9 = *v12 == v10;
            v10 = v12;
          }

          while (!v9);
        }

        v10 = v12;
      }

      while (v12 != v15);
    }
  }

  std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(&v14, v15[0]);
  return a1;
}

void sub_19D22EBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char *a11)
{
  std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(&a10, a11);
  std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(v13, *(v11 + 28));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  CoreNLP::crfsuite::Instance::~Instance(v12);
  CoreNLP::AbstractModel::~AbstractModel(v11);
  _Unwind_Resume(a1);
}

BOOL CoreNLP::CRFModel::load(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  CoreNLP::CRFModel::releaseModel(a1);
  if (!a2)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_1F10B0198;
  }

  v8 = *a2;
  if (*a2 == 300)
  {
    v14 = *(a2 + 7);
    v15 = *(a2 + 5) + *(a2 + 3) + v14 + 68;
    if (a3 < v15)
    {
      if (CoreNLP::logger(void)::token != -1)
      {
        CoreNLP::CRFModel::load();
      }

      v50 = CoreNLP::logger(void)::log;
      if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
      {
        CoreNLP::CRFModel::load(v4, v50);
      }

      v51 = __cxa_allocate_exception(8uLL);
      *v51 = &unk_1F10B0198;
    }

    v16 = v15;
    v12 = a3 >= v15;
    v17 = a3 - v15;
    if (v17 != 0 && v12)
    {
      *(a1 + 168) = &a2[v16];
      *(a1 + 176) = v17;
    }

    v18 = *(a2 + 6);
    v19 = (a1 + 192);
    std::vector<std::string>::clear[abi:ne200100]((a1 + 192));
    if (v14 >= 0x20)
    {
      v20 = v14 >> 5;
      v21 = &a2[v18];
      do
      {
        std::string::basic_string[abi:ne200100]<0>(__p, v21);
        v23 = *(a1 + 200);
        v22 = *(a1 + 208);
        if (v23 >= v22)
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v19) >> 3);
          v26 = v25 + 1;
          if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v27 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *v19) >> 3);
          if (2 * v27 > v26)
          {
            v26 = 2 * v27;
          }

          if (v27 >= 0x555555555555555)
          {
            v28 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v28 = v26;
          }

          v54.__end_cap_.__value_ = (a1 + 192);
          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1 + 192, v28);
          }

          v29 = 24 * v25;
          v30 = *__p;
          *(v29 + 16) = v53;
          *v29 = v30;
          __p[1] = 0;
          v53 = 0;
          __p[0] = 0;
          v31 = 24 * v25 + 24;
          v32 = *(a1 + 192);
          v33 = *(a1 + 200) - v32;
          v34 = 24 * v25 - v33;
          memcpy((v29 - v33), v32, v33);
          v35 = *(a1 + 192);
          *(a1 + 192) = v34;
          *(a1 + 200) = v31;
          v36 = *(a1 + 208);
          *(a1 + 208) = 0;
          v54.__end_ = v35;
          v54.__end_cap_.__value_ = v36;
          v54.__first_ = v35;
          v54.__begin_ = v35;
          std::__split_buffer<std::string>::~__split_buffer(&v54);
          v37 = SHIBYTE(v53);
          *(a1 + 200) = v31;
          if (v37 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v24 = *__p;
          *(v23 + 16) = v53;
          *v23 = v24;
          *(a1 + 200) = v23 + 24;
        }

        v21 += 32;
        --v20;
      }

      while (v20);
    }

    std::string::basic_string[abi:ne200100]<0>(&v54, a2 + 36);
    std::string::operator=((a1 + 40), &v54);
    if (SHIBYTE(v54.__end_) < 0)
    {
      operator delete(v54.__first_);
    }

    v38 = *(a2 + 8);
    *(a1 + 64) = v38;
    if (v38 > 2)
    {
      if ((v38 - 105) >= 2)
      {
        if (v38 == 3)
        {
          v39 = 500000;
          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (!v38)
      {
LABEL_40:
        v39 = 50000;
LABEL_47:
        *(a1 + 128) = v39;
        goto LABEL_48;
      }

      if (v38 != 1)
      {
        if (v38 == 2)
        {
          goto LABEL_40;
        }

LABEL_48:
        v40 = *(a2 + 1);
        *(a1 + 12) = v40 & 0x7F;
        *(a1 + 68) = (v40 & 0x80) != 0;
        goto LABEL_49;
      }
    }

    v39 = 10000;
    goto LABEL_47;
  }

  if (v8 == 200)
  {
    v10 = *(a2 + 5) + *(a2 + 3) + 56;
    if (a3 < v10)
    {
      if (CoreNLP::logger(void)::token != -1)
      {
        CoreNLP::CRFModel::load();
      }

      v48 = CoreNLP::logger(void)::log;
      if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
      {
        CoreNLP::CRFModel::load(v4, v48);
      }

      v49 = __cxa_allocate_exception(8uLL);
      *v49 = &unk_1F10B0198;
    }

    v11 = v10;
    v12 = a3 >= v10;
    v13 = a3 - v10;
    if (v13 != 0 && v12)
    {
      *(a1 + 168) = &a2[v11];
      *(a1 + 176) = v13;
    }

    if (v4 == 7)
    {
      *(a1 + 64) = 103;
    }
  }

  else
  {
    if (v8 != 100)
    {
      goto LABEL_56;
    }

    if (v4 == 7)
    {
      v9 = 102;
    }

    else
    {
      if (v4 != 6)
      {
        goto LABEL_49;
      }

      v9 = 101;
    }

    *(a1 + 64) = v9;
  }

LABEL_49:
  v41 = *(a1 + 64);
  if (v41 >= 4 && v41 - 105 >= 2 && (v42 = CFBurstTrieCreateFromMapBytes(), (*(a1 + 120) = v42) == 0) || (v43 = crfsuite_model_create_from_buffer(), (*(a1 + 136) = v43) == 0) || (tagger = crfsuite_model_get_tagger(), (*(a1 + 144) = tagger) == 0))
  {
LABEL_56:
    v46 = __cxa_allocate_exception(8uLL);
    *v46 = &unk_1F10B0198;
  }

  return *(a1 + 136) != 0;
}

void sub_19D22F124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::exception a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_get_exception_ptr(exception_object);
    a11.__vftable = &unk_1F10B0198;
    __cxa_begin_catch(exception_object);
    CoreNLP::CRFModel::releaseModel(v22);
    std::exception::~exception(&a11);
    __cxa_end_catch();
    JUMPOUT(0x19D22EF68);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::CRFModel::acceptFeatures(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 23);
      if (v6 < 0)
      {
        if (!*(v3 + 8))
        {
          goto LABEL_14;
        }
      }

      else if (!*(v3 + 23))
      {
        goto LABEL_14;
      }

      v10 = 0;
      v7 = *(v5 + 64);
      if (v7 >= 4 && v7 - 105 > 1)
      {
        result = CFBurstTrieContainsUTF8String();
        if (!v10)
        {
          goto LABEL_14;
        }

        v9 = v10 - 1;
      }

      else
      {
        if ((v6 & 0x80000000) != 0)
        {
          v8 = *v3;
          v6 = *(v3 + 8);
        }

        else
        {
          v8 = v3;
        }

        MurmurHash3_x86_32(v8, v6, 0, &v10);
        v9 = v10 % *(v5 + 128);
      }

      v10 = v9;
      result = crfsuite_item_append_attribute();
LABEL_14:
      v3 += 24;
    }

    while (v3 != v4);
  }

  return result;
}

void CoreNLP::CRFModel::vinference(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1[18] || (v5 = a2[1], *a2 == v5))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
    std::vector<std::vector<std::pair<int,double>>>::vector[abi:ne200100](&v41, v7);
    CoreNLP::crfsuite::Instance::init((a1 + 9), v7, (-1431655765 * ((*(*a2 + 8) - **a2) >> 3)));
    v8 = 0;
    v9 = 0;
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    do
    {
      CoreNLP::CRFModel::acceptFeatures(a1, (*a2 + v8), v9++);
      v8 += 24;
    }

    while (v10 != v9);
    if ((crfsuite_tagger_set_instance() & 0x80000000) != 0)
    {
      CoreNLP::crfsuite::Instance::finish((a1 + 9));
      *a3 = v41;
      a3[2] = v42;
      v42 = 0;
      v41 = 0uLL;
    }

    else
    {
      v40[3] = 0xBFF0000000000000;
      LODWORD(__p[0]) = -1;
      std::vector<int>::vector[abi:ne200100](v40, v7, __p);
      crfsuite_tagger_viterbi();
      v11 = 0;
      for (i = 0; i != v10; ++i)
      {
        v13 = v41 + v11;
        v14 = *(v40[0] + i);
        v16 = *(v41 + v11 + 8);
        v15 = *(v41 + v11 + 16);
        if (v16 >= v15)
        {
          v18 = (v16 - *v13) >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v20 = v15 - *v13;
          if (v20 >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,unsigned long>>>(v41 + v11, v21);
          }

          v22 = (16 * v18);
          *v22 = v14;
          v22[1] = 0;
          v17 = 16 * v18 + 16;
          v23 = *(v13 + 8) - *v13;
          v24 = v22 - v23;
          memcpy(v22 - v23, *v13, v23);
          v25 = *v13;
          *v13 = v24;
          *(v13 + 8) = v17;
          *(v13 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v16 = v14;
          v16[1] = 0;
          v17 = (v16 + 2);
        }

        *(v13 + 8) = v17;
        crfsuite_tagger_marginal_point();
        v11 += 24;
      }

      CoreNLP::crfsuite::Instance::finish((a1 + 9));
      if (!a1[4] || (v26 = a1[24], v27 = a1[25], v26 == v27))
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>>*,std::vector<std::pair<int,double>>*>(a3, v41, *(&v41 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v41 + 1) - v41) >> 3));
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "NONE");
        v28 = std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::find<std::string>((a1 + 2), __p);
        if (v39 < 0)
        {
          operator delete(__p[0]);
        }

        v30 = *(&v41 + 1);
        v29 = v41;
        if (v41 != *(&v41 + 1))
        {
          v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3);
          v32 = a1 + 3;
          do
          {
            v33 = *v29;
            v34 = **v29;
            if ((v34 & 0x80000000) == 0 && v31 > v34)
            {
              v35 = std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::find<std::string>((a1 + 2), a1[24] + 24 * v34);
              if (v32 != v35 || v32 != v28)
              {
                if (v32 == v35)
                {
                  v37 = v28;
                }

                else
                {
                  v37 = v35;
                }

                *v33 = *(v37 + 56);
              }
            }

            v29 += 3;
          }

          while (v29 != v30);
          v30 = *(&v41 + 1);
          v29 = v41;
        }

        *a3 = v29;
        a3[1] = v30;
        a3[2] = v42;
        v42 = 0;
        v41 = 0uLL;
      }

      if (v40[0])
      {
        v40[1] = v40[0];
        operator delete(v40[0]);
      }
    }

    v40[0] = &v41;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v40);
  }
}

void sub_19D22F668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, char *a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  a16 = &a20;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::CRFModel::saveFeatures(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 23);
      if (v6 < 0)
      {
        if (*(v3 + 8))
        {
LABEL_7:
          v13 = 0;
          v7 = *(v5 + 64);
          if (v7 >= 4 && v7 - 105 > 1)
          {
            CFBurstTrieContainsUTF8String();
            v11 = v13;
            if (!v13)
            {
              ++*(v5 + 128);
              CFBurstTrieAddUTF8String();
              v11 = *(v5 + 128);
            }

            v10 = v11 - 1;
            v13 = v10;
          }

          else
          {
            if ((v6 & 0x80000000) != 0)
            {
              v8 = *v3;
              v6 = *(v3 + 8);
            }

            else
            {
              v8 = v3;
            }

            MurmurHash3_x86_32(v8, v6, 0, &v13);
            v13 %= *(v5 + 128);
            v12[0] = &v13;
            v9 = std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v5 + 216, &v13, &std::piecewise_construct, v12);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v9 + 5, v3, v3);
            v10 = v13;
          }

          v12[1] = 0x3FF0000000000000;
          v12[0] = v10;
          result = crfsuite_item_append_attribute();
        }
      }

      else if (*(v3 + 23))
      {
        goto LABEL_7;
      }

      v3 += 24;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t CoreNLP::CRFModel::readSample(uint64_t result, uint64_t a2, void *a3, int a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 != v6)
  {
    v7 = v5[1];
    if (*v5 != v7)
    {
      v11 = result;
      CoreNLP::crfsuite::Instance::init((result + 72), 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3), (-1431655765 * ((v7 - *v5) >> 3)));
      if (*(a2 + 8) != *a2)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          id_for_string = crfsuite_dictionary_get_id_for_string();
          CoreNLP::CRFModel::saveFeatures(v11, (*a2 + v12), v13);
          if (v13 < *(v11 + 88))
          {
            *(*(v11 + 104) + 4 * v13) = id_for_string;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(v11 + 200) - *(v11 + 192)) >> 3) == id_for_string)
          {
            std::vector<std::string>::push_back[abi:ne200100](v11 + 192, (*a3 + v12));
          }

          ++v13;
          v12 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) > v13);
      }

      *(v11 + 112) = a4;
      crfsuite_data_append();

      return CoreNLP::crfsuite::Instance::finish((v11 + 72));
    }
  }

  return result;
}

uint64_t CoreNLP::CRFModel::message_callback(void (**this)(CoreNLP::CRFModel *, CFStringRef, char *), const char *a2, va_list a3, char *a4)
{
  if (this)
  {
    v5 = 0;
    operator new[]();
  }

  return 0;
}

uint64_t CoreNLP::CRFModel::train(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "wb");
  v5 = (*(*a1 + 32))(a1, v4);
  fclose(v4);
  return v5;
}

BOOL CoreNLP::CRFModel::train(CoreNLP::CRFModel *this, __sFILE *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  CoreNLP::CRFModel::logHashCollision(this);
  v4 = fileno(a2);
  crfsuite_dictionary_get_count();
  crfsuite_trainer_set_message_callback();
  __buf = 300;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(this + 16);
  v27 = 0;
  v28 = v5;
  memset(v29, 0, sizeof(v29));
  if ((*(this + 63) & 0x80000000) == 0)
  {
    *&__dst[16] = *(this + 7);
    *__dst = *(this + 40);
    if (__dst[23] >= 0)
    {
      v6 = __dst;
    }

    else
    {
      v6 = *__dst;
    }

LABEL_8:
    __p = *(this + 40);
    goto LABEL_9;
  }

  v6 = __dst;
  std::string::__init_copy_ctor_external(__dst, *(this + 5), *(this + 6));
  if (__dst[23] < 0)
  {
    v6 = *__dst;
  }

  if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  std::string::__init_copy_ctor_external(&__p, *(this + 5), *(this + 6));
LABEL_9:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = __p.__r_.__value_.__r.__words[1];
    if (SLODWORD(__p.__r_.__value_.__r.__words[1]) >= 31)
    {
      v8 = 31;
    }

    memcpy(v29, v6, v8);
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 0x1F)
    {
      v7 = 31;
    }

    else
    {
      v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    memcpy(v29, v6, v7);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v9 = *(this + 3) & 0x7F;
  LODWORD(v24) = v9;
  if (*(this + 68) == 1)
  {
    LODWORD(v24) = v9 | 0x80;
  }

  v10 = lseek(v4, 0, 0);
  write(v4, &__buf, 0x44uLL);
  HIDWORD(v24) = lseek(v4, 0, 1);
  v11 = *(this + 16);
  if (v11 >= 4 && v11 - 105 >= 2)
  {
    CFBurstTrieSerializeWithFileDescriptor();
  }

  v12 = lseek(v4, 0, 1);
  LODWORD(v25) = v12 - HIDWORD(v24);
  HIDWORD(v25) = v12;
  v13 = crfsuite_trainer_train_model_to_file_pointer();
  v14 = lseek(v4, 0, 1);
  LODWORD(v26) = v14 - HIDWORD(v25);
  HIDWORD(v26) = v14;
  v15 = *(this + 24);
  v16 = *(this + 25);
  if (v15 == v16)
  {
    v19 = *(this + 24);
  }

  else
  {
    do
    {
      memset(__dst, 0, sizeof(__dst));
      v17 = *(v15 + 23);
      if ((v17 & 0x8000000000000000) != 0)
      {
        v18 = *v15;
        v17 = v15[1];
      }

      else
      {
        v18 = v15;
      }

      if (v17 >= 31)
      {
        LODWORD(v17) = 31;
      }

      memcpy(__dst, v18, v17);
      fwrite(__dst, 1uLL, 0x20uLL, a2);
      v15 += 3;
    }

    while (v15 != v16);
    v15 = *(this + 24);
    v19 = *(this + 25);
  }

  v27 = 1431655776 * ((v19 - v15) >> 3);
  pwrite(v4, &__buf, 0x44uLL, v10);
  return v13 == 0;
}

void sub_19D22FFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::CRFModel::logHashCollision(CoreNLP::CRFModel *this)
{
  if (*(this + 29) && (*(this + 16) - 105) <= 1)
  {
    v35[0] = 0;
    v35[1] = 0;
    v34 = v35;
    v2 = *(this + 27);
    v3 = this + 224;
    if (v2 == this + 224)
    {
      v4 = 0;
    }

    else
    {
      LODWORD(v4) = 0;
      do
      {
        v5 = *(v2 + 7);
        v33 = v5;
        v36.__locale_ = &v33;
        v6 = std::__tree<std::__value_type<unsigned long,int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v34, &v33, &std::piecewise_construct, &v36);
        ++*(v6 + 10);
        v7 = *(v2 + 1);
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
            v8 = *(v2 + 2);
            v9 = *v8 == v2;
            v2 = v8;
          }

          while (!v9);
        }

        v4 = (v4 + v5);
        v2 = v8;
      }

      while (v8 != v3);
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Raw Attribute Nb :", 18);
    v11 = MEMORY[0x19EAF8A70](v10, v4);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v36);
    std::ostream::put();
    std::ostream::flush();
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Hashed Attribute Nb :", 21);
    v14 = MEMORY[0x19EAF8AA0](v13, *(this + 29));
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v36);
    std::ostream::put();
    std::ostream::flush();
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Average collisionRate :", 23);
    v17 = MEMORY[0x19EAF8A50](v16, (v4 - *(this + 29)) / v4);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v36);
    std::ostream::put();
    std::ostream::flush();
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Mixed-Attribute", 15);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\t", 1);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Occurrence", 10);
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v36);
    std::ostream::put();
    std::ostream::flush();
    v23 = v34;
    if (v34 != v35)
    {
      v24 = MEMORY[0x1E69E5310];
      v25 = MEMORY[0x1E69E5318];
      do
      {
        v26 = *(v23 + 10);
        v27 = MEMORY[0x19EAF8AA0](v24, v23[4]);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\t", 1);
        v29 = MEMORY[0x19EAF8A70](v28, v26);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(&v36, v25);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&v36);
        std::ostream::put();
        std::ostream::flush();
        v31 = v23[1];
        if (v31)
        {
          do
          {
            v32 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v32 = v23[2];
            v9 = *v32 == v23;
            v23 = v32;
          }

          while (!v9);
        }

        v23 = v32;
      }

      while (v32 != v35);
    }

    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v34, v35[0]);
  }
}

void sub_19D230484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::locale::~locale(&a14);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::CRFModel::setUserData(uint64_t *a1, uint64_t *a2)
{
  v9[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v7, a1, 4);
  if ((*(&v8[2] + *(v7[0] - 24)) & 5) == 0)
  {
    (*(v8[0] + 32))(v5, v8, 0, 2, 8);
    memset(v5, 0, sizeof(v5));
    v6 = 0;
    (*(v8[0] + 40))(&v4, v8, v5, 8);
    operator new[]();
  }

  v2 = *(MEMORY[0x1E69E54C8] + 24);
  v7[0] = *MEMORY[0x1E69E54C8];
  *(v7 + *(v7[0] - 24)) = v2;
  MEMORY[0x19EAF8960](v8);
  std::istream::~istream();
  MEMORY[0x19EAF8C10](v9);
  return 0;
}

void sub_19D230BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ofstream::~ofstream(&a9, MEMORY[0x1E69E54D0]);
  MEMORY[0x19EAF8C10](v13 + 416);
  std::ifstream::~ifstream(&STACK[0x2C0]);
  std::ifstream::~ifstream(&STACK[0x508]);
  if (v11)
  {
    MEMORY[0x19EAF8C70](v11, v9);
  }

  if (v12)
  {
    MEMORY[0x19EAF8C70](v12, v9);
  }

  MEMORY[0x19EAF8C70](v10, v9);
  _Unwind_Resume(a1);
}

void CoreNLP::CRFModel::tagToLabel(CoreNLP::CRFModel *this@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 4))
  {
    v5 = *(this + 2);
    v6 = this + 24;
    if (v5 != (this + 24))
    {
      while (1)
      {
        if (*(v5 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v5[4], v5[5]);
        }

        else
        {
          __p = *(v5 + 4);
        }

        v12 = *(v5 + 14);
        if (v12 == a2)
        {
          break;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = v5[1];
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
            v8 = v5[2];
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
        if (v8 == v6)
        {
          return;
        }
      }

      std::string::operator=(a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a2 & 0x80000000) == 0)
  {
    v10 = *(this + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 25) - v10) >> 3) > a2)
    {
      std::string::operator=(a3, (v10 + 24 * a2));
    }
  }
}

void sub_19D230E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::CRFModel::modelLoadException::~modelLoadException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x19EAF8CA0);
}

os_log_t ___ZN7CoreNLPL6loggerEv_block_invoke_0()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "CRFModel");
  CoreNLP::logger(void)::log = result;
  return result;
}

uint64_t *std::vector<std::vector<std::pair<int,double>>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long,int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

CoreNLP::Gazetteer *CoreNLP::Gazetteer::Gazetteer(CoreNLP::Gazetteer *this, CFDictionaryRef theDict)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 24) = 0u;
  v4 = (this + 24);
  *(this + 40) = 0u;
  v5 = (this + 40);
  *(this + 52) = 0u;
  *(this + 18) = 953267991;
  if (CFDictionaryContainsKey(theDict, kNLGazetteerLocale[0]))
  {
    Value = CFDictionaryGetValue(theDict, kNLGazetteerLocale[0]);
    if (Value)
    {
      nlp::CFScopedPtr<__CFLocale const*>::acquire(this + 6, Value);
    }
  }

  if (CFDictionaryContainsKey(theDict, kNLGazetteerSkipNormalization))
  {
    v7 = CFDictionaryGetValue(theDict, kNLGazetteerSkipNormalization);
    v8 = CFBooleanGetValue(v7) != 0;
  }

  else
  {
    v8 = 0;
  }

  *(this + 68) = v8;
  if (CFDictionaryContainsKey(theDict, kNLGazetteerCompressedModelURL[0]))
  {
    v9 = CFDictionaryGetValue(theDict, kNLGazetteerCompressedModelURL[0]);
    v10 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
    v11 = v10;
    v26 = v10;
    if (!v10)
    {
      return this;
    }

    CoreNLP::getUTF8StringFromCFString(__p, v10);
    CoreNLP::ReadOnlyFile<char>::open(__p, "r", 1, v23);
    v12 = v23[0];
    v23[0] = 0uLL;
    v13 = *(this + 4);
    *(this + 24) = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      if (*(&v23[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23[0] + 1));
      }

      v14 = *v4;
      if (!*v4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = v12;
      if (!v12)
      {
LABEL_20:
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        CFRelease(v11);
        return this;
      }
    }

    if ((CoreNLP::Gazetteer::loadBloomFilters(this, *v14, *(v14 + 8)) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v23, "Failed to load bloom filter from file");
      CoreNLP::ResourceCreationException::ResourceCreationException(exception, v23);
    }

    goto LABEL_20;
  }

  if (CFDictionaryContainsKey(theDict, kNLGazetteerCompressedModelData[0]))
  {
    v15 = CFDictionaryGetValue(theDict, kNLGazetteerCompressedModelData[0]);
    if (v15)
    {
      nlp::CFScopedPtr<__CFData const*>::acquire(v5, v15);
      BytePtr = CFDataGetBytePtr(*v5);
      Length = CFDataGetLength(*v5);
      if ((CoreNLP::Gazetteer::loadBloomFilters(this, BytePtr, Length) & 1) == 0)
      {
        v18 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, "Failed to load bloom filter from data");
        CoreNLP::ResourceCreationException::ResourceCreationException(v18, __p);
      }
    }
  }

  else if (CFDictionaryContainsKey(theDict, kNLGazetteerEntities[0]))
  {
    LODWORD(__p[0]) = *(this + 18);
    if (CFDictionaryContainsKey(theDict, kNLGazetteerFalsePositiveRate[0]))
    {
      v20 = CFDictionaryGetValue(theDict, kNLGazetteerFalsePositiveRate[0]);
      CFNumberGetValue(v20, kCFNumberFloat32Type, __p);
    }

    v21 = CFDictionaryGetValue(theDict, kNLGazetteerEntities[0]);
    CoreNLP::Gazetteer::createBloomFilters(this, v21, *__p);
  }

  return this;
}

void sub_19D231420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      nlp::CFScopedPtr<void *>::reset((v22 + 56), 0);
      nlp::CFScopedPtr<__CFLocale const*>::reset((v22 + 48), 0);
      nlp::CFScopedPtr<__CFData const*>::reset(v23, 0);
      v27 = *(v22 + 32);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::destroy(v22, *(v22 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void nlp::CFScopedPtr<__CFLocale const*>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<__CFLocale const*>::reset(a1, cf);
  }
}

uint64_t CoreNLP::Gazetteer::loadBloomFilters(const void **this, const char *a2, unint64_t a3)
{
  if (a3 <= 3)
  {
    if (CoreNLP::logger(void)::token != -1)
    {
      CoreNLP::Gazetteer::loadBloomFilters();
    }

    v3 = CoreNLP::logger(void)::log;
    if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
    {
      CoreNLP::Gazetteer::loadBloomFilters(v3, v4, v5);
    }

    return 0;
  }

  if (!*a2)
  {
    return 1;
  }

  v9 = *a2 - 1;
  v10 = 4;
  while (1)
  {
    v11 = v10 + 32;
    if (v10 + 32 > a3)
    {
      break;
    }

    v29.__r_.__value_.__s.__data_[0] = 0;
    std::vector<char>::vector[abi:ne200100](v45, 32, &v29);
    v12 = v45[0];
    v13 = *&a2[v10];
    *(v45[0] + 15) = *&a2[v10 + 15];
    *v12 = v13;
    v10 += 36;
    if (v10 <= a3)
    {
      v16 = *&a2[v11];
      v11 = v10 + v16;
      if (v10 + v16 > a3)
      {
        if (CoreNLP::logger(void)::token != -1)
        {
          CoreNLP::Gazetteer::loadBloomFilters();
        }

        v17 = CoreNLP::logger(void)::log;
        if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
        {
          CoreNLP::Gazetteer::loadBloomFilters(&v41, v42, v17);
        }

        v15 = 0;
        goto LABEL_51;
      }

      BloomFilter::BloomFilter(v37);
      BloomFilter::loadFromBuffer(v37, &a2[v10], v16);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = v40;
      }

      size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v36.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        std::string::basic_string[abi:ne200100]<0>(&v29, v45[0]);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v36 = v29;
      }

      if (!this[6])
      {
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
        }

        else
        {
          v29 = v39;
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v29.__r_.__value_.__l.__size_;
        }

        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v21)
        {
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v29, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
          }

          else
          {
            v29 = v39;
          }

          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v29;
          }

          else
          {
            v22 = v29.__r_.__value_.__r.__words[0];
          }

          v23 = CFStringCreateWithCString(0, v22, 0x8000100u);
          v35 = v23;
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          v24 = CFLocaleCreate(0, v23);
          nlp::CFScopedPtr<__CFLocale const*>::reset(this + 6, v24);
          if (v23)
          {
            CFRelease(v23);
          }
        }
      }

      std::pair<std::string,BloomFilter>::pair[abi:ne200100]<std::string&,BloomFilter&,0>(&v29, &v36, v37);
      std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::__emplace_unique_key_args<std::string,std::pair<std::string,BloomFilter>>(this, &v29.__r_.__value_.__l.__data_, &v29);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }

      if (v30)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (*(this + 16) < v38)
      {
        *(this + 16) = v38;
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (v37[0])
      {
        operator delete(v37[0]);
      }

      v15 = 1;
    }

    else
    {
      if (CoreNLP::logger(void)::token != -1)
      {
        CoreNLP::Gazetteer::loadBloomFilters();
      }

      v14 = CoreNLP::logger(void)::log;
      if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
      {
        CoreNLP::Gazetteer::loadBloomFilters(&v43, v44, v14);
      }

      v15 = 0;
    }

    v10 = v11;
LABEL_51:
    if (v45[0])
    {
      v45[1] = v45[0];
      operator delete(v45[0]);
    }

    v20 = v9-- != 0;
    if ((v15 & v20 & 1) == 0)
    {
      return v15;
    }
  }

  if (CoreNLP::logger(void)::token != -1)
  {
    CoreNLP::Gazetteer::loadBloomFilters();
  }

  v25 = CoreNLP::logger(void)::log;
  if (os_log_type_enabled(CoreNLP::logger(void)::log, OS_LOG_TYPE_ERROR))
  {
    CoreNLP::Gazetteer::loadBloomFilters(v25, v26, v27);
  }

  return 0;
}

void sub_19D231994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  BloomFilter::~BloomFilter(&a37);
  v39 = *(v37 - 112);
  if (v39)
  {
    *(v37 - 104) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void CoreNLP::Gazetteer::createBloomFilters(CoreNLP::Gazetteer *this, CFDictionaryRef theDict, float a3)
{
  Count = CFDictionaryGetCount(theDict);
  if (Count >= 1)
  {
    v7 = Count;
    memset(&v36, 0, sizeof(v36));
    if (*(this + 6))
    {
      v8 = MEMORY[0x19EAF8290]();
      CoreNLP::getUTF8StringFromCFString(&__p, v8);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      v36 = __p;
    }

    v9 = malloc_type_calloc(v7, 8uLL, 0x6004044C4A2DFuLL);
    v10 = malloc_type_calloc(v7, 8uLL, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(theDict, v9, v10);
    v11 = 0;
    v12 = a3;
    do
    {
      CoreNLP::getUTF8StringFromCFString(&__str, v9[v11]);
      v13 = v10[v11];
      v14 = CFArrayGetCount(v13);
      if (v14 >= 1)
      {
        BloomFilter::BloomFilter(v29);
        BloomFilter::init(v29, (v14 + 10000), &__str, &v36, v12);
        v15 = v14 & 0x7FFFFFFF;
        if ((v14 & 0x7FFFFFFF) != 0)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
            if (*(this + 68) == 1)
            {
              CoreNLP::getUTF8StringFromCFString(&__p, ValueAtIndex);
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
                v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v20 = __p.__r_.__value_.__r.__words[1];
              }

              BloomFilter::add(v29, p_p, v20);
            }

            else
            {
              CoreNLP::Gazetteer::normalizeEntity(&__p, this, ValueAtIndex);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v21 = &__p;
              }

              else
              {
                v21 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v22 = __p.__r_.__value_.__r.__words[1];
              }

              BloomFilter::add(v29, v21, v22);
              if (v17 <= v24)
              {
                v17 = v24;
              }
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v16;
          }

          while (v15 != v16);
          v30 = v17;
          if (*(this + 16) < v17)
          {
            *(this + 16) = v17;
          }
        }

        else
        {
          v30 = 0;
        }

        std::pair<std::string,BloomFilter>::pair[abi:ne200100]<std::string&,BloomFilter&,0>(&__p, &__str, v29);
        std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::__emplace_unique_key_args<std::string,std::pair<std::string,BloomFilter>>(this, &__p.__r_.__value_.__l.__data_, &__p);
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24)
        {
          operator delete(v24);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (v29[0])
        {
          operator delete(v29[0]);
        }
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v11;
    }

    while (v11 != v7);
    free(v9);
    free(v10);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19D231D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v29 - 105) < 0)
  {
    operator delete(*(v29 - 128));
  }

  _Unwind_Resume(exception_object);
}

const void *CoreNLP::Gazetteer::getModelData(CoreNLP::Gazetteer *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = (this + 40);
  result = *(this + 5);
  if (!result)
  {
    if (*(this + 2))
    {
      *bytes = *(this + 2);
      *v8 = 0u;
      v9 = 0u;
      Mutable = CFDataCreateMutable(0, 0);
      theData = Mutable;
      CFDataAppendBytes(Mutable, bytes, 4);
      if (*this != (this + 8))
      {
        *v5 = BloomFilter::bufferSize((*this + 56));
        CFDataAppendBytes(theData, v8, 32);
        CFDataAppendBytes(theData, v5, 4);
        operator new[]();
      }

      nlp::CFScopedPtr<__CFData const*>::acquire(v3, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return *v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19D231F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,BloomFilter>::~pair(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t *CoreNLP::Gazetteer::availableLabels@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = this + 1;
  v3 = *this;
  if (*this != this + 1)
  {
    do
    {
      this = std::vector<std::string>::push_back[abi:ne200100](a1, v3 + 2);
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
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return this;
}

void sub_19D23206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

os_log_t ___ZN7CoreNLPL6loggerEv_block_invoke_1()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "Gazetteer");
  CoreNLP::logger(void)::log = result;
  return result;
}

std::string *std::pair<std::string,BloomFilter>::pair[abi:ne200100]<std::string&,BloomFilter&,0>(std::string *this, __int128 *a2, uint64_t a3)
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

  std::vector<BOOL>::vector(&this[1], a3);
  v6 = *(a3 + 24);
  *(&this[2].__r_.__value_.__r.__words[1] + 4) = *(a3 + 36);
  *&this[2].__r_.__value_.__l.__data_ = v6;
  if (*(a3 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a3 + 56), *(a3 + 64));
  }

  else
  {
    v7 = *(a3 + 56);
    this[4].__r_.__value_.__r.__words[0] = *(a3 + 72);
    *&this[3].__r_.__value_.__r.__words[1] = v7;
  }

  if (*(a3 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a3 + 80), *(a3 + 88));
  }

  else
  {
    v8 = *(a3 + 80);
    this[5].__r_.__value_.__r.__words[0] = *(a3 + 96);
    *&this[4].__r_.__value_.__r.__words[1] = v8;
  }

  LODWORD(this[5].__r_.__value_.__r.__words[1]) = *(a3 + 104);
  return this;
}

void sub_19D232178(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    operator delete(v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, v2);
  }

  return a1;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}