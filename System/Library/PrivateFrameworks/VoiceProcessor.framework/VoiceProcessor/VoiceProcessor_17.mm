void *std::map<double,int>::map[abi:ne200100](void *a1, double **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v3 = a1[1];
      v4 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v5 = a1[1];
      v6 = a1 + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (*(v4 + 4) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }
      }

      else
      {
        v9 = a1 + 1;
        if (v3)
        {
          v9 = a1 + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 4);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v3;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v3 + 1;
            v3 = v3[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = *(v2 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v2 + 2);
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return a1;
}

void *std::__tree<std::__value_type<double,int>,std::__map_value_compare<double,std::__value_type<double,int>,std::less<double>,true>,std::allocator<std::__value_type<double,int>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::Cache::get_configuration(cache_t **this, const vp::vx::Configuration_Context *a2, vp::vx::Global_Configuration *a3)
{
  v4 = 0;
  v5[0] = &v4;
  v5[1] = this;
  v5[2] = a2;
  v5[3] = a3;
  v6[0] = caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Global_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>;
  v6[1] = v5;
  vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::read_default<>(this + 1, a2, v6);
  return v4;
}

void sub_2725E6374(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E6364);
}

char *caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Global_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>(char *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (*(a2 + 112) == 1)
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *v4 = v5;
    if (v4 != a2)
    {
      boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<vp::vx::Chat_Flavor*>((v4 + 16), a2[3], (a2[3] + 4 * a2[4]));
      result = boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<vp::vx::Chat_Flavor*>((v4 + 56), a2[8], (a2[8] + 4 * a2[9]));
    }

    v6 = a2[12];
    *(v4 + 104) = *(a2 + 26);
    *(v4 + 96) = v6;
LABEL_5:
    v7 = 1;
    goto LABEL_13;
  }

  result = *(*(v3 + 8) + 24);
  if (!result || (result = (*(*result + 24))(result, *(v3 + 16), v4), !result))
  {
    v7 = 0;
    goto LABEL_13;
  }

  if (*(a2 + 112) == 1)
  {
    v8 = *v4;
    *(a2 + 8) = *(v4 + 8);
    *a2 = v8;
    if (v4 != a2)
    {
      boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<vp::vx::Chat_Flavor*>(a2 + 16, *(v4 + 24), (*(v4 + 24) + 4 * *(v4 + 32)));
      result = boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<vp::vx::Chat_Flavor*>(a2 + 56, *(v4 + 64), (*(v4 + 64) + 4 * *(v4 + 72)));
    }

    v9 = *(v4 + 96);
    *(a2 + 26) = *(v4 + 104);
    a2[12] = v9;
    goto LABEL_5;
  }

  *a2 = *v4;
  a2[2] = *(v4 + 16);
  a2[3] = (a2 + 6);
  *(a2 + 2) = xmmword_2727565D0;
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v17 = v10;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v16 = &v10[4 * v11];
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(a2 + 16, &v17, &v16);
  a2[7] = *(v4 + 56);
  a2[8] = (a2 + 11);
  *(a2 + 9) = xmmword_2727565D0;
  v13 = *(v4 + 64);
  v14 = *(v4 + 72);
  v17 = v13;
  if (!v13 && v14)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v16 = &v13[4 * v14];
  result = boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(a2 + 56, &v17, &v16);
  v15 = *(v4 + 96);
  *(a2 + 26) = *(v4 + 104);
  a2[12] = v15;
  v7 = 1;
  *(a2 + 112) = 1;
LABEL_13:
  **v3 = v7;
  return result;
}

void sub_2725E65C0(void *a1)
{
  if (*(v1 + 80))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v3, *(v1 + 64));
  }

  if (*(v1 + 40))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v2, *(v1 + 24));
  }

  __clang_call_terminate(a1);
}

char *boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<vp::vx::Chat_Flavor*>(char *result, char *__src, char *a3)
{
  v4 = __src;
  v5 = result;
  v6 = a3 - __src;
  v7 = (a3 - __src) >> 2;
  if (v7 <= *(result + 3))
  {
    v12 = *(result + 1);
    v13 = *(result + 2);
    if (v7 <= v13)
    {
      if (a3 == __src)
      {
LABEL_16:
        *(v5 + 2) = v7;
        return result;
      }

      v15 = *(result + 1);
      v14 = a3 - __src;
    }

    else
    {
      if (v13)
      {
        memmove(*(result + 1), __src, 4 * v13);
        v4 += 4 * v13;
        v12 += 4 * v13;
      }

      v14 = 4 * (v7 - v13);
      v15 = v12;
      __src = v4;
    }

    result = memmove(v15, __src, v14);
    goto LABEL_16;
  }

  if (v7 >> 62)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", __src);
  }

  result = (*(**result + 16))();
  v8 = result;
  v9 = *(v5 + 1);
  if (v9)
  {
    *(v5 + 2) = 0;
    result = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v5, v9);
  }

  v10 = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = v7;
  *(v5 + 1) = v8;
  if (!v4 || v4 == a3)
  {
    v11 = v8;
  }

  else
  {
    result = memmove(v8, v4, v6);
    v11 = &v8[v6];
    v10 = *(v5 + 2);
  }

  *(v5 + 2) = v10 + ((v11 - v8) >> 2);
  return result;
}

char *boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(char *result, const void **a2, const void **a3)
{
  v4 = result;
  v5 = *a2;
  v6 = *a3;
  v7 = *a3 - *a2;
  v8 = v7 >> 2;
  if ((v7 >> 2) <= *(result + 3))
  {
    v17 = *(result + 1);
    v18 = *(result + 2);
    if (v8 <= v18)
    {
      if (v6 == v5)
      {
LABEL_16:
        *(v4 + 2) = v8;
        return result;
      }
    }

    else
    {
      if (v18)
      {
        memmove(*(result + 1), *a2, 4 * v18);
        if (!v5)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v5 += 4 * v18;
        v17 += 4 * v18;
      }

      v7 = 4 * (v8 - v18);
    }

    result = memmove(v17, v5, v7);
    goto LABEL_16;
  }

  if (v8 >> 62)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  result = (*(**result + 16))();
  v10 = result;
  v11 = *(v4 + 1);
  if (v11)
  {
    *(v4 + 2) = 0;
    result = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v4, v11);
  }

  v12 = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = v8;
  *(v4 + 1) = v10;
  v13 = *a2;
  if (!*a2 || (v14 = *a3, v13 == *a3))
  {
    v16 = v10;
  }

  else
  {
    v15 = v14 - v13;
    result = memmove(v10, v13, v14 - v13);
    v16 = &v10[v15];
    v12 = *(v4 + 2);
  }

  *(v4 + 2) = v12 + ((v16 - v10) >> 2);
  return result;
}

void vp::vx::database::Cache::~Cache(vp::vx::database::Cache *this)
{
  std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>::reset[abi:ne200100](this + 3, 0);
  cache_destroy(*(this + 2));

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>::reset[abi:ne200100](this + 3, 0);
  cache_destroy(*(this + 2));
}

unsigned int *caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::store(unsigned int *result, uint64_t *a2)
{
  v3 = result;
  for (i = 0; ; result = caulk::concurrent::details::spinloop::spin(&i))
  {
    v4 = atomic_load(v3);
    if ((v4 & 1) == 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong(v3, &v5, v4 | 1);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = v4 >> 2;
  v7 = (v4 & 0xFFFFFFFC) + 5;
  v8 = &v3[16 * ((v4 >> 2) & 1)];
  v9 = 2 * v6;
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 16);
  v10 = *a2;
  v8[19] = *(a2 + 2);
  *(v8 + 17) = v10;
  __dmb(0xBu);
  atomic_store(v9, v8 + 16);
  atomic_store(v7 & 0xFFFFFFFC | 2, v3);
  return result;
}

uint64_t caulk::concurrent::details::spinloop::spin(uint64_t this)
{
  v1 = *this + 1;
  *this = v1;
  if (v1 == 100)
  {
    v2 = this;
    this = sched_yield();
    *v2 = 0;
  }

  return this;
}

unint64_t caulk::concurrent::atomic_value<vp::sim::utility::Call_Counts_Recorder::Snapshot,2,6>::load(unsigned int *a1)
{
  v11 = 0;
  v1 = atomic_load(a1);
  if ((v1 & 2) != 0)
  {
    v3 = a1 + 16;
    while (1)
    {
      v4 = (v1 >> 2) & 1;
      v5 = &v3[16 * ((v1 & 4) == 0)];
      explicit = atomic_load_explicit(v5, memory_order_acquire);
      if ((explicit & 1) == 0 || (v5 = &v3[16 * v4], explicit = atomic_load_explicit(v5, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v7 = *(v5 + 1);
        __dmb(9u);
        if (explicit == atomic_load_explicit(v5, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v11);
      v1 = atomic_load(a1);
      if ((v1 & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    v9 = v7 & 0xFFFFFFFF00000000;
    v8 = v7;
  }

  else
  {
LABEL_7:
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t vp::vx::database::v1::syntax::parse_condition(uint64_t a1, vp::xml::Node **a2, uint64_t a3)
{
  v4 = vp::xml::Node::name(*a2, a2[1]);
  v6 = *(*(*(*a3 + 16))(a3, v4, v5) + 16);

  return v6();
}

uint64_t (***vp::vx::database::v1::syntax::Conditions::condition_parser(uint64_t (***a1)(), vp::vx::database::v1::syntax *this, char *a3))()
{
  v4 = vp::vx::database::v1::syntax::constexpr_hash(this, a3, a3);
  result = &vp::vx::database::v1::syntax::Condition::Parser::null(void)::s_null;
  if (v4 > 0x1CF24631F5F1E797)
  {
    if (v4 <= 0x3BF916BAD158AABDLL)
    {
      v6 = 0x1CF24631F5F1E798;
      v7 = a1 + 5;
      v10 = v4 == 0x373E6888939862DBLL;
      v9 = a1 + 7;
    }

    else
    {
      if (v4 == 0x3BF916BAD158AABELL)
      {
        return a1 + 8;
      }

      v6 = 0x683C7EEA355EEC71;
      v7 = a1 + 4;
      v10 = v4 == 0x7A8E56EA400776CALL;
      v9 = a1 + 3;
    }

    if (!v10)
    {
      v9 = &vp::vx::database::v1::syntax::Condition::Parser::null(void)::s_null;
    }

    goto LABEL_17;
  }

  if (v4 > 0xEB23C75C1B45EB01)
  {
    v6 = 0xEB23C75C1B45EB02;
    v7 = a1 + 2;
    v8 = a1 + 9;
    if (v4 != 0x5B061431DCC4B4FLL)
    {
      v8 = &vp::vx::database::v1::syntax::Condition::Parser::null(void)::s_null;
    }

    if (v4 == 0xF50F4DBC6B2D55A9)
    {
      v9 = a1 + 6;
    }

    else
    {
      v9 = v8;
    }

LABEL_17:
    if (v4 == v6)
    {
      return v7;
    }

    else
    {
      return v9;
    }
  }

  if (v4 == 0x9D56D0B5C6B6FC26)
  {
    return a1 + 11;
  }

  if (v4 == 0xAA4A97187414575DLL)
  {
    return a1 + 8;
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::constexpr_hash(vp::vx::database::v1::syntax *this, const char *a2, unint64_t a3)
{
  if (a2)
  {
    v5 = vp::vx::database::v1::syntax::constexpr_hash(this, a2 - 1, a3);
  }

  else
  {
    v5 = 0xCBF29CE484222325;
  }

  return 0x100000001B3 * (v5 ^ a2[this]);
}

void vp::vx::database::v1::syntax::Conditions::create_condition(vp::vx::database::v1::fbs::Condition *this@<X1>, uint64_t *a4@<X8>)
{
  v5 = (this - *this);
  if (*v5 >= 7u && v5[3])
  {
    v6 = *(this + v5[3]);
    if (v6 > 4)
    {
      if (*(this + v5[3]) > 6u)
      {
        if (v6 == 7)
        {
          vp::vx::database::v1::fbs::Condition::condition_as_When(this);
          operator new();
        }

        if (v6 == 8)
        {
          operator new();
        }
      }

      else
      {
        if (v6 == 5)
        {
          operator new();
        }

        if (v6 == 6)
        {
          operator new();
        }
      }
    }

    else if (*(this + v5[3]) > 2u)
    {
      if (v6 == 3)
      {
        operator new();
      }

      if (v6 == 4)
      {
        operator new();
      }
    }

    else
    {
      if (v6 == 1)
      {
        operator new();
      }

      if (v6 == 2)
      {
        operator new();
      }
    }
  }

  *a4 = 0;
}

uint64_t vp::vx::database::v1::fbs::Condition::condition_as_When(vp::vx::database::v1::fbs::Condition *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 7 && v1[3] && (v2 >= 9 ? (v3 = *(this + v1[3]) == 7) : (v3 = 0), v3 && (v4 = v1[4]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v120, 0, 48);
    v60 = *(a1 + 40);
    if (!v60)
    {
LABEL_173:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v120);
      return v60;
    }

    *v124 = 0;
    memset(&v124[8], 0, 32);
    v125 = 0uLL;
    memset(v126, 0, 37);
    std::deque<std::__state<char>>::push_back(v120, v124);
    if (v126[0])
    {
      operator delete(v126[0]);
    }

    if (*&v124[32])
    {
      operator delete(*&v124[32]);
    }

    v114 = a4;
    v62 = *&v120[8];
    v63 = *&v120[40] + *&v120[32] - 1;
    v64 = v63 / 0x2A;
    v65 = *(*&v120[8] + 8 * (v63 / 0x2A));
    v66 = 3 * (v63 % 0x2A);
    v67 = v65 + 32 * v66;
    *v67 = 0;
    *(v67 + 8) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 16) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v62 + 8 * v64) + 32 * v66 + 56), *(a1 + 32));
    v117 = 0;
    v68 = 0;
    v115 = 0;
    v69 = &a3[-a2];
    v70 = *&v120[40];
    v71 = *&v120[8];
    v72 = *&v120[40] + *&v120[32] - 1;
    v73 = v72 / 0x2A;
    v74 = 3 * (v72 % 0x2A);
    *(*(*&v120[8] + 8 * v73) + 32 * v74 + 80) = v60;
    v75 = *(v71 + 8 * v73) + 32 * v74;
    v76 = a5;
    *(v75 + 88) = a5;
    *(v75 + 92) = a6;
    v77 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v68 & 0xFFF) == 0 && (v68 >> 12) >= v69)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v79 = v70 + *&v120[32] - 1;
      v80 = (((v79 >> 1) * v77) >> 64) >> 4;
      v81 = *(*&v120[8] + 8 * v80) - 4032 * v80 + 96 * v79;
      v83 = (v81 + 80);
      v82 = *(v81 + 80);
      if (v82)
      {
        (*(*v82 + 16))(v82, v81);
      }

      v84 = *v81;
      if (*v81 <= -995)
      {
        switch(v84)
        {
          case -1000:
            v89 = *(v81 + 16);
            if ((v76 & 0x20) != 0 && v89 == a2)
            {
              goto LABEL_168;
            }

            v90 = (v89 - *(v81 + 8));
            v91 = v115;
            if (v115 <= v90)
            {
              v91 = v90;
            }

            if (v117)
            {
              v90 = v91;
            }

            if (v90 == v69)
            {
              v92 = *&v120[8];
              v93 = *&v120[16];
              if (*&v120[16] == *&v120[8])
              {
                v93 = *&v120[8];
              }

              else
              {
                v94 = (((*&v120[32] >> 1) * v77) >> 64) >> 4;
                v95 = (*&v120[8] + 8 * v94);
                v96 = (*v95 - 4032 * v94 + 96 * *&v120[32]);
                v97 = v77;
                v98 = ((((*&v120[40] + *&v120[32]) >> 1) * v77) >> 64) >> 4;
                v99 = *(*&v120[8] + 8 * v98) - 4032 * v98 + 96 * (*&v120[40] + *&v120[32]);
                if (v96 != v99)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v96);
                    v96 += 12;
                    if ((v96 - *v95) == 4032)
                    {
                      v100 = v95[1];
                      ++v95;
                      v96 = v100;
                    }
                  }

                  while (v96 != v99);
                  v92 = *&v120[8];
                  v93 = *&v120[16];
                }

                v76 = a5;
                v77 = v97;
              }

              *&v120[40] = 0;
              v103 = (v93 - v92) >> 3;
              if (v103 >= 3)
              {
                do
                {
                  operator delete(*v92);
                  v92 = (*&v120[8] + 8);
                  *&v120[8] = v92;
                  v103 = (*&v120[16] - v92) >> 3;
                }

                while (v103 > 2);
              }

              if (v103 == 1)
              {
                v104 = 21;
LABEL_159:
                *&v120[32] = v104;
              }

              else if (v103 == 2)
              {
                v104 = 42;
                goto LABEL_159;
              }

              v117 = 1;
              v115 = v69;
              break;
            }

            v115 = v90;
            std::deque<std::__state<char>>::pop_back(v120);
            v117 = 1;
            break;
          case -999:
            break;
          case -995:
            v85 = *&v120[32];
            v86 = *&v120[8];
            v87 = *&v120[16];
            if (!*&v120[32])
            {
              v88 = 42 * ((*&v120[16] - *&v120[8]) >> 3) - 1;
              if (*&v120[16] == *&v120[8])
              {
                v88 = 0;
              }

              if ((v88 - *&v120[40]) < 0x2A)
              {
                if (*&v120[16] - *&v120[8] < *&v120[24] - *v120)
                {
                  if (*&v120[8] != *v120)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v120[24] == *v120)
                {
                  v105 = 1;
                }

                else
                {
                  v105 = (*&v120[24] - *v120) >> 2;
                }

                *&v124[32] = v120;
                std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v105);
              }

              *&v120[32] = 42;
              *v124 = *(*&v120[16] - 8);
              *&v120[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v120, v124);
              v85 = *&v120[32];
              v86 = *&v120[8];
              v87 = *&v120[16];
            }

            v106 = (((v85 >> 1) * v77) >> 64) >> 4;
            v107 = (v86 + 8 * v106);
            v108 = *v107 - 4032 * v106 + 96 * v85;
            if (v87 == v86)
            {
              v109 = 0;
            }

            else
            {
              v109 = v108;
            }

            if (v109 == *v107)
            {
              v109 = *(v107 - 1) + 4032;
            }

            v110 = *(v81 + 16);
            *(v109 - 96) = *v81;
            *(v109 - 80) = v110;
            *(v109 - 56) = 0;
            *(v109 - 48) = 0;
            *(v109 - 64) = 0;
            *(v109 - 64) = *(v81 + 32);
            *(v109 - 48) = *(v81 + 48);
            *(v81 + 32) = 0;
            *(v81 + 40) = 0;
            *(v81 + 48) = 0;
            *(v109 - 40) = 0;
            *(v109 - 32) = 0;
            *(v109 - 24) = 0;
            *(v109 - 40) = *(v81 + 56);
            *(v109 - 24) = *(v81 + 72);
            *(v81 + 56) = 0;
            *(v81 + 64) = 0;
            *(v81 + 72) = 0;
            v111 = *v83;
            *(v109 - 11) = *(v81 + 85);
            *(v109 - 16) = v111;
            *&v120[32] = vaddq_s64(*&v120[32], xmmword_2727565E0);
            goto LABEL_168;
          default:
            goto LABEL_176;
        }
      }

      else
      {
        if (v84 > -993)
        {
          if (v84 == -992)
          {
            v101 = *(v81 + 16);
            *v124 = *v81;
            *&v124[16] = v101;
            v125 = 0uLL;
            *&v124[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v124[32], *(v81 + 32), *(v81 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v81 + 40) - *(v81 + 32)) >> 3));
            memset(v126, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v126, *(v81 + 56), *(v81 + 64), (*(v81 + 64) - *(v81 + 56)) >> 4);
            v102 = *v83;
            *(&v126[3] + 5) = *(v81 + 85);
            v126[3] = v102;
            (*(**(v81 + 80) + 24))(*(v81 + 80), 1, v81);
            (*(*v126[3] + 24))(v126[3], 0, v124);
            std::deque<std::__state<char>>::push_back(v120, v124);
            if (v126[0])
            {
              v126[1] = v126[0];
              operator delete(v126[0]);
            }

            if (*&v124[32])
            {
              *&v125 = *&v124[32];
              operator delete(*&v124[32]);
            }
          }

          else if (v84 != -991)
          {
LABEL_176:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_169;
        }

        if (v84 != -994)
        {
          if (v84 != -993)
          {
            goto LABEL_176;
          }

LABEL_168:
          std::deque<std::__state<char>>::pop_back(v120);
        }
      }

LABEL_169:
      v70 = *&v120[40];
      if (!*&v120[40])
      {
        if (v117)
        {
          v112 = *v114;
          *v112 = a2;
          *(v112 + 8) = &v115[a2];
          v60 = 1;
          *(v112 + 16) = 1;
        }

        else
        {
          v60 = 0;
        }

        goto LABEL_173;
      }
    }
  }

  v127 = 0;
  v128 = 0;
  v129 = 0;
  *v124 = 0;
  memset(&v124[8], 0, 32);
  v125 = 0u;
  memset(v126, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_91:
    v60 = 0;
    goto LABEL_92;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v120 = 0;
  memset(&v120[8], 0, 48);
  *__p = 0uLL;
  memset(v122, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v127, v120);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v120[32])
  {
    operator delete(*&v120[32]);
  }

  v118 = a5;
  v113 = a4;
  v13 = v128;
  *(v128 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v128 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v116 = a2;
  v17 = &a3[-a2];
  v18 = v128;
  *(v128 - 2) = v12;
  *(v18 - 2) = v118;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_38;
        case -992:
          v36 = *(v18 - 5);
          *v120 = *v22;
          *&v120[16] = v36;
          memset(&v120[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v120[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v122[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v122[1] + 5) = *(v18 - 11);
          v122[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v122[1] + 24))(v122[1], 0, v120);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v127, v120);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v120[32])
          {
            *&v120[40] = *&v120[32];
            operator delete(*&v120[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_175:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_82;
      }

      if (v23 != -1000)
      {
        goto LABEL_175;
      }

      v24 = *(v18 - 10);
      if ((v118 & 0x20) != 0 && v24 == v116)
      {
LABEL_38:
        v35 = v128 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v128 - 12);
        v128 = v35;
        goto LABEL_82;
      }

      v25 = (v24 - *(v18 - 11));
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v124 = *v22;
        *&v124[16] = v26;
        if (v124 != v22)
        {
          v27 = *(v18 - 8);
          v28 = *(v18 - 7);
          v29 = v28 - v27;
          v30 = *(&v125 + 1);
          v31 = *&v124[32];
          if (*(&v125 + 1) - *&v124[32] < (v28 - v27))
          {
            if (*&v124[32])
            {
              *&v125 = *&v124[32];
              operator delete(*&v124[32]);
              v30 = 0;
              *&v124[32] = 0;
              v125 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v34);
              }
            }

            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
          }

          v38 = v125;
          if (v125 - *&v124[32] >= v29)
          {
            while (v27 != v28)
            {
              *v31 = *v27;
              *(v31 + 16) = *(v27 + 16);
              v27 = (v27 + 24);
              v31 += 24;
            }
          }

          else
          {
            if (v125 != *&v124[32])
            {
              v39 = (v27 + v125 - *&v124[32]);
              do
              {
                *v31 = *v27;
                *(v31 + 16) = *(v27 + 16);
                v27 = (v27 + 24);
                v31 += 24;
              }

              while (v27 != v39);
              v27 = v39;
            }

            while (v27 != v28)
            {
              v40 = *v27;
              *(v38 + 16) = *(v27 + 2);
              *v38 = v40;
              v38 += 24;
              v27 = (v27 + 24);
            }

            v31 = v38;
          }

          *&v125 = v31;
          v41 = *(v18 - 5);
          v42 = *(v18 - 4);
          v43 = v42 - v41;
          v44 = v126[2];
          v45 = v126[0];
          if ((v126[2] - v126[0]) < (v42 - v41))
          {
            if (v126[0])
            {
              v126[1] = v126[0];
              operator delete(v126[0]);
              v44 = 0;
              memset(v126, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v47);
              }
            }

            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
          }

          v48 = v126[1];
          if ((v126[1] - v126[0]) >= v43)
          {
            while (v41 != v42)
            {
              *v45 = *v41;
              v45[1] = *(v41 + 1);
              v41 += 16;
              v45 += 2;
            }
          }

          else
          {
            if (v126[1] != v126[0])
            {
              v49 = &v41[v126[1] - v126[0]];
              do
              {
                *v45 = *v41;
                v45[1] = *(v41 + 1);
                v41 += 16;
                v45 += 2;
              }

              while (v41 != v49);
              v41 = v49;
            }

            while (v41 != v42)
            {
              *v48 = *v41;
              v48[1] = *(v41 + 1);
              v41 += 16;
              v48 += 2;
            }

            v45 = v48;
          }

          v126[1] = v45;
        }

        v50 = *v21;
        *(&v126[3] + 5) = *(v21 + 5);
        v126[3] = v50;
        v14 = v25;
      }

      v51 = v128;
      if (v14 == v17)
      {
        v52 = v127;
        while (v51 != v52)
        {
          v51 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v51);
        }

        v128 = v52;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v53 = v128 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v128 - 12);
        v128 = v53;
        v15 = 1;
      }
    }

LABEL_82:
    v18 = v128;
  }

  while (v127 != v128);
  if ((v15 & 1) == 0)
  {
    goto LABEL_91;
  }

  v54 = *v113;
  *v54 = v116;
  *(v54 + 8) = &v14[v116];
  *(v54 + 16) = 1;
  if (v125 != *&v124[32])
  {
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v125 - *&v124[32]) >> 3);
    v56 = (*&v124[32] + 16);
    v57 = 1;
    do
    {
      v58 = v54 + 24 * v57;
      *v58 = *(v56 - 1);
      v59 = *v56;
      v56 += 24;
      *(v58 + 16) = v59;
      v19 = v55 > v57++;
    }

    while (v19);
  }

  v60 = 1;
LABEL_92:
  if (v126[0])
  {
    v126[1] = v126[0];
    operator delete(v126[0]);
  }

  if (*&v124[32])
  {
    *&v125 = *&v124[32];
    operator delete(*&v124[32]);
  }

  *v124 = &v127;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v124);
  return v60;
}

void sub_2725E84FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = a3 - a2;
  v16 = 1;
  while (1)
  {
    if ((v16 & 0xFFF) == 0 && (v16 >> 12) >= v15)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v18 = (v14 - 16);
    v17 = *(v14 - 16);
    v19 = (v14 - 96);
    if (v17)
    {
      (*(*v17 + 16))(v17, v14 - 96);
    }

    v20 = *v19;
    if (*v19 > -994)
    {
      if (v20 != -993)
      {
        if (v20 == -992)
        {
          v23 = *(v14 - 80);
          *v36 = *v19;
          *&v36[16] = v23;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v24 = *v18;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v24;
          (*(**v18 + 24))(*v18, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v20 != -991)
        {
LABEL_34:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_26;
      }

      goto LABEL_21;
    }

    if ((v20 + 995) >= 2)
    {
      break;
    }

LABEL_26:
    v14 = v42;
    ++v16;
    if (v41 == v42)
    {
      goto LABEL_27;
    }
  }

  if (v20 != -1000)
  {
    goto LABEL_34;
  }

  v21 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v21 == a2)
  {
LABEL_21:
    v22 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v22;
    goto LABEL_26;
  }

  v27 = *a4;
  *v27 = a2;
  *(v27 + 8) = v21;
  *(v27 + 16) = 1;
  v28 = *(v14 - 64);
  v29 = *(v14 - 56) - v28;
  if (v29)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
    v31 = (v28 + 16);
    v32 = 1;
    do
    {
      v33 = v27 + 24 * v32;
      *v33 = *(v31 - 1);
      v34 = *v31;
      v31 += 24;
      *(v33 + 16) = v34;
    }

    while (v30 > v32++);
  }

  v25 = 1;
LABEL_28:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v25;
}

void sub_2725E8B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  std::__state<char>::~__state(&a9);
  a9 = v14 - 104;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 12);
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2725E9194(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2725E9208(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 16);
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::deque<std::__state<char>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v4 - v5) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v4)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v18 = a1;
      std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v12);
    }

    a1[4] = v8 - 42;
    *&v17 = *v5;
    a1[1] = (v5 + 8);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v17);
    v5 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v5[8 * (v9 / 0x2A)] - 4032 * (v9 / 0x2A) + 96 * v9;
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_2725E9684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(unint64_t *a1, void *a2)
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
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x2743CBDC0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void sub_2725E9F8C(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 17);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 14);
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2881B4E78;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x2743CBFA0);
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 15);
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *this, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
LABEL_25:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    goto LABEL_26;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v9 == 5)
    {
      if (this->__open_count_)
      {
        goto LABEL_4;
      }

      v15 = 41;
LABEL_15:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v15);
      v11 = a2 + 1;
      goto LABEL_38;
    }

LABEL_13:
    if ((v8 - 123) < 2)
    {
      goto LABEL_4;
    }

    v15 = *a2;
    goto LABEL_15;
  }

LABEL_4:
  v10 = (a2 + 1);
  v11 = a2;
  if (a2 + 1 == a3)
  {
    goto LABEL_22;
  }

  v12 = *a2;
  if (v12 != 92)
  {
    goto LABEL_23;
  }

  v13 = *v10;
  v14 = *v10;
  if ((v13 - 36) <= 0x3A && ((1 << (v13 - 36)) & 0x5800000080004F1) != 0 || (v13 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v14);
    v11 = a2 + 2;
    goto LABEL_38;
  }

  if ((this->__flags_ & 0x1F0) == 0x40)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(this, v10, a3, 0);
  }

  else
  {
    v16 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v14);
    v17 = 2;
    if (!v16)
    {
      v17 = 0;
    }

    v11 = &a2[v17];
  }

  if (v11 == a2)
  {
LABEL_22:
    v12 = *v11;
LABEL_23:
    if (v12 == 46)
    {
      operator new();
    }

    goto LABEL_25;
  }

LABEL_26:
  if (v11 == a2 && v11 != a3)
  {
    v18 = *v11;
    switch(v18)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v19 = this->__marked_count_;
        ++this->__open_count_;
        v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(this, (v11 + 1), a3);
        if (v20 == a3 || (v11 = v20, *v20 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v19);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_37;
    }

    ++v11;
  }

LABEL_37:
  if (v11 == a2)
  {
    return v11;
  }

LABEL_38:
  v21 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v11, a3, end, marked_count + 1, v21);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 6);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 8);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 7);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_225;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_225;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 != a3)
    {
      v8 = a3 - 4;
      while (1)
      {
        v9 = v5;
        if (v5 == a3)
        {
          goto LABEL_129;
        }

        v10 = *v5;
        v9 = v5;
        if (v10 == 93)
        {
          goto LABEL_129;
        }

        v11 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v76 = 0;
        v12 = 0;
        v9 = v5;
        if (v5 + 1 != a3 && v10 == 91)
        {
          v13 = v5[1];
          switch(v13)
          {
            case '.':
              v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, __p);
              v12 = HIBYTE(v76);
              v11 = __p[1];
              break;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_224;
              }

              v18 = v8 - v5;
              v15 = v5 + 2;
              for (i = v5 + 2; ; v15 = i)
              {
                v20 = *i++;
                if (v20 == 58 && *i == 93)
                {
                  break;
                }

                if (!v18)
                {
                  goto LABEL_224;
                }

                --v18;
              }

              if (v15 == a3)
              {
LABEL_224:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              v26 = *(a1 + 24);
              std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, v5 + 2, v15, v15 - (v5 + 2));
              v27 = HIBYTE(v82);
              if (v82 >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst;
              }

              if (v82 < 0)
              {
                v27 = *(&__dst + 1);
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, p_dst + v27);
              if (v82 >= 0)
              {
                v29 = &__dst;
              }

              else
              {
                v29 = __dst;
              }

              classname = std::__get_classname(v29, v26 & 1);
              if (SHIBYTE(v82) < 0)
              {
                operator delete(__dst);
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v31 = 0;
              *(v7 + 160) |= classname;
              goto LABEL_125;
            case '=':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_224;
              }

              v14 = v8 - v5;
              v15 = v5 + 2;
              for (j = v5 + 2; ; v15 = j)
              {
                v17 = *j++;
                if (v17 == 61 && *j == 93)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_224;
                }

                --v14;
              }

              if (v15 == a3)
              {
                goto LABEL_224;
              }

              std::regex_traits<char>::__lookup_collatename<char const*>(__src, a1, v5 + 2, v15);
              v24 = SHIBYTE(v80);
              if ((SHIBYTE(v80) & 0x8000000000000000) != 0)
              {
                v24 = __src[1];
                if (!__src[1])
                {
LABEL_226:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                v25 = __src[0];
              }

              else
              {
                if (!HIBYTE(v80))
                {
                  goto LABEL_226;
                }

                v25 = __src;
              }

              std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, v25, v25 + v24, v24);
              (*(**(a1 + 16) + 32))(v77);
              v33 = HIBYTE(v78);
              if (v78 < 0)
              {
                v33 = v77[1];
              }

              if (v33 != 1)
              {
                if (v33 == 12)
                {
                  v34 = v77;
                  if (v78 < 0)
                  {
                    v34 = v77[0];
                  }

                  *(v34 + 11) = *(v34 + 3);
                }

                else if (SHIBYTE(v78) < 0)
                {
                  *v77[0] = 0;
                  v77[1] = 0;
                }

                else
                {
                  LOBYTE(v77[0]) = 0;
                  HIBYTE(v78) = 0;
                }
              }

              if (SHIBYTE(v82) < 0)
              {
                operator delete(__dst);
              }

              v40 = HIBYTE(v78);
              if (v78 < 0)
              {
                v40 = v77[1];
              }

              if (v40)
              {
                std::vector<std::string>::push_back[abi:ne200100](v7 + 136, v77);
              }

              else
              {
                v41 = HIBYTE(v80);
                if (v80 < 0)
                {
                  v41 = __src[1];
                }

                if (v41 == 2)
                {
                  v43 = __src;
                  if (v80 < 0)
                  {
                    v43 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v43, *(v43 + 1));
                }

                else
                {
                  if (v41 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  v42 = __src;
                  if (v80 < 0)
                  {
                    v42 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v42);
                }
              }

              if (SHIBYTE(v78) < 0)
              {
                operator delete(v77[0]);
              }

              if (SHIBYTE(v80) < 0)
              {
                operator delete(__src[0]);
              }

              v31 = 0;
LABEL_125:
              v21 = v15 + 2;
              v38 = v5;
              goto LABEL_126;
            default:
              v11 = 0;
              v12 = 0;
              v9 = v5;
              break;
          }
        }

        v21 = (*(a1 + 24) & 0x1F0);
        if (v12 >= 0)
        {
          v11 = v12;
        }

        if (!v11)
        {
          if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
          {
            v22 = *v9;
            if (v22 == 92)
            {
              if ((*(a1 + 24) & 0x1F0) != 0)
              {
                v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v9 + 1, a3, __p);
              }

              else
              {
                v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v9 + 1, a3, __p, v7);
              }

              v9 = v23;
              goto LABEL_76;
            }
          }

          else
          {
            LOBYTE(v22) = *v9;
          }

          if (v12 < 0)
          {
            v32 = __p[0];
            __p[1] = 1;
          }

          else
          {
            HIBYTE(v76) = 1;
            v32 = __p;
          }

          *v32 = v22;
          *(v32 + 1) = 0;
          ++v9;
        }

LABEL_76:
        if (v9 != a3)
        {
          v35 = *v9;
          if (v35 != 93)
          {
            v37 = v9 + 1;
            if (v9 + 1 != a3 && v35 == 45 && *v37 != 93)
            {
              v73[0] = 0;
              v73[1] = 0;
              v74 = 0;
              v38 = v9 + 2;
              if (v9 + 2 != a3 && *v37 == 91 && *v38 == 46)
              {
                v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v9 + 3, a3, v73);
                goto LABEL_134;
              }

              if ((v21 | 0x40) == 0x40)
              {
                LODWORD(v37) = *v37;
                if (v37 == 92)
                {
                  if (v21)
                  {
                    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v9 + 2, a3, v73);
                  }

                  else
                  {
                    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v9 + 2, a3, v73, v7);
                  }

LABEL_134:
                  v38 = v39;
LABEL_135:
                  v21 = &__dst;
                  *v71 = *__p;
                  v72 = v76;
                  __p[1] = 0;
                  v76 = 0;
                  *v69 = *v73;
                  v70 = v74;
                  v73[0] = 0;
                  v73[1] = 0;
                  v74 = 0;
                  __p[0] = 0;
                  if (*(v7 + 170) == 1)
                  {
                    if (*(v7 + 169) == 1)
                    {
                      for (k = 0; ; ++k)
                      {
                        if ((SHIBYTE(v72) & 0x8000000000000000) != 0)
                        {
                          if (k >= v71[1])
                          {
LABEL_180:
                            for (m = 0; ; ++m)
                            {
                              if ((SHIBYTE(v70) & 0x8000000000000000) != 0)
                              {
                                if (m >= v69[1])
                                {
                                  goto LABEL_190;
                                }

                                v61 = v69[0];
                              }

                              else
                              {
                                if (m >= SHIBYTE(v70))
                                {
                                  goto LABEL_190;
                                }

                                v61 = v69;
                              }

                              v62 = (*(**(v7 + 24) + 40))(*(v7 + 24), m[v61]);
                              if (v70 >= 0)
                              {
                                v63 = v69;
                              }

                              else
                              {
                                v63 = v69[0];
                              }

                              m[v63] = v62;
                            }
                          }

                          v46 = v71[0];
                        }

                        else
                        {
                          if (k >= SHIBYTE(v72))
                          {
                            goto LABEL_180;
                          }

                          v46 = v71;
                        }

                        v47 = (*(**(v7 + 24) + 40))(*(v7 + 24), k[v46]);
                        v48 = v71;
                        if (v72 < 0)
                        {
                          v48 = v71[0];
                        }

                        k[v48] = v47;
                      }
                    }

                    v58 = 0;
                    if (v72 < 0)
                    {
                      goto LABEL_171;
                    }

                    while (v58 < HIBYTE(v72))
                    {
                      while (1)
                      {
                        ++v58;
                        if ((v72 & 0x8000000000000000) == 0)
                        {
                          break;
                        }

LABEL_171:
                        if (v58 >= v71[1])
                        {
                          goto LABEL_174;
                        }
                      }
                    }

LABEL_174:
                    v59 = 0;
                    if (v70 < 0)
                    {
                      goto LABEL_177;
                    }

                    while (v59 < HIBYTE(v70))
                    {
                      while (1)
                      {
                        ++v59;
                        if ((v70 & 0x8000000000000000) == 0)
                        {
                          break;
                        }

LABEL_177:
                        if (v59 >= v69[1])
                        {
                          goto LABEL_190;
                        }
                      }
                    }

LABEL_190:
                    v64 = HIBYTE(v72);
                    if (v72 >= 0)
                    {
                      v65 = v71;
                    }

                    else
                    {
                      v65 = v71[0];
                    }

                    if (v72 < 0)
                    {
                      v64 = v71[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__src, v7 + 16, v65, &v64[v65]);
                    v66 = HIBYTE(v70);
                    if (v70 >= 0)
                    {
                      v67 = v69;
                    }

                    else
                    {
                      v67 = v69[0];
                    }

                    if (v70 < 0)
                    {
                      v66 = v69[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(v77, v7 + 16, v67, &v66[v67]);
                    __dst = *__src;
                    v82 = v80;
                    __src[1] = 0;
                    v80 = 0;
                    v83 = *v77;
                    v84 = v78;
                    v77[0] = 0;
                    v77[1] = 0;
                    v78 = 0;
                    __src[0] = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v7 + 88, &__dst);
                    if (SHIBYTE(v84) < 0)
                    {
                      operator delete(v83);
                    }

                    if (SHIBYTE(v82) < 0)
                    {
                      operator delete(__dst);
                    }

                    if (SHIBYTE(v78) < 0)
                    {
                      operator delete(v77[0]);
                    }

                    if (SHIBYTE(v80) < 0)
                    {
                      v57 = __src[0];
LABEL_208:
                      operator delete(v57);
                    }
                  }

                  else
                  {
                    v49 = HIBYTE(v72);
                    if (v72 < 0)
                    {
                      v49 = v71[1];
                    }

                    if (v49 != 1)
                    {
                      goto LABEL_228;
                    }

                    v50 = HIBYTE(v70);
                    if (v70 < 0)
                    {
                      v50 = v69[1];
                    }

                    if (v50 != 1)
                    {
LABEL_228:
                      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
                    }

                    if (*(v7 + 169) == 1)
                    {
                      v51 = v71;
                      if (v72 < 0)
                      {
                        v51 = v71[0];
                      }

                      v52 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v51);
                      v53 = v71;
                      if (v72 < 0)
                      {
                        v53 = v71[0];
                      }

                      *v53 = v52;
                      if (v70 >= 0)
                      {
                        v54 = v69;
                      }

                      else
                      {
                        v54 = v69[0];
                      }

                      v55 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v54);
                      if (v70 >= 0)
                      {
                        v56 = v69;
                      }

                      else
                      {
                        v56 = v69[0];
                      }

                      *v56 = v55;
                    }

                    __dst = *v71;
                    v82 = v72;
                    v71[0] = 0;
                    v71[1] = 0;
                    v72 = 0;
                    v83 = *v69;
                    v84 = v70;
                    v69[0] = 0;
                    v69[1] = 0;
                    v70 = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v7 + 88, &__dst);
                    if (SHIBYTE(v84) < 0)
                    {
                      operator delete(v83);
                    }

                    if (SHIBYTE(v82) < 0)
                    {
                      v57 = __dst;
                      goto LABEL_208;
                    }
                  }

                  if (SHIBYTE(v70) < 0)
                  {
                    operator delete(v69[0]);
                  }

                  if (SHIBYTE(v72) < 0)
                  {
                    operator delete(v71[0]);
                  }

                  if (SHIBYTE(v74) < 0)
                  {
                    operator delete(v73[0]);
                  }

                  v31 = 1;
LABEL_126:
                  if (SHIBYTE(v76) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v9 = v38;
                  if ((v31 & 1) == 0)
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_129;
                }
              }

              else
              {
                LOBYTE(v37) = *v37;
              }

              HIBYTE(v74) = 1;
              LOWORD(v73[0]) = v37;
              goto LABEL_135;
            }
          }
        }

        if (SHIBYTE(v76) < 0)
        {
          if (__p[1])
          {
            if (__p[1] == 1)
            {
              v36 = __p[0];
LABEL_85:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v36);
LABEL_95:
              v31 = 1;
              v38 = v9;
              goto LABEL_126;
            }

            v36 = __p[0];
LABEL_94:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v36, v36[1]);
            goto LABEL_95;
          }

          operator delete(__p[0]);
        }

        else if (HIBYTE(v76))
        {
          v36 = __p;
          if (HIBYTE(v76) == 1)
          {
            goto LABEL_85;
          }

          goto LABEL_94;
        }

LABEL_129:
        v21 = v9;
LABEL_130:
        v44 = v21 == v5;
        v5 = v21;
        if (v44)
        {
          goto LABEL_217;
        }
      }
    }

    v21 = v5;
LABEL_217:
    if (v21 == a3)
    {
      goto LABEL_225;
    }

    if (*v21 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v21;
    }

    if (v21 == a3 || *v21 != 93)
    {
LABEL_225:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v21 + 1;
  }

  return a2;
}

void sub_2725EC3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 5);
}

void sub_2725EC6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x2743CBFA0](v10, v11);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          goto LABEL_26;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    goto LABEL_26;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 == 87)
  {
    *(a5 + 164) |= 0x500u;
    v15 = 95;
    if (*(a5 + 169) == 1)
    {
      v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v10 = a5 + 64;
      v11 = &v14;
    }

    else
    {
      if (*(a5 + 170) != 1)
      {
        std::vector<char>::push_back[abi:ne200100](a5 + 64, &v15);
        return a2 + 1;
      }

      v13 = 95;
      v10 = a5 + 64;
      v11 = &v13;
    }

    std::vector<char>::push_back[abi:ne200100](v10, v11);
    return a2 + 1;
  }

LABEL_26:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_57;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_73:
        *a4 = v9;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
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
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2725ED044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 9);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 3);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_2725ED3E4(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x2743CBFA0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4CC8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743CBFA0);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4CC8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4C98;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743CBFA0);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4C98;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 > 0x74u)
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

LABEL_43:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v10 = v4[1];
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6u)
          {
            goto LABEL_97;
          }

          v11 = -87;
        }

        if (v4 + 2 == a3)
        {
LABEL_97:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v12 = v4[2];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6u)
          {
            goto LABEL_97;
          }

          v13 = -87;
        }

        v14 = v13 + v12 + 16 * (v11 + v10);
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v14;
          *(a4 + 1) = 0;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
        }

        v4 += 3;
        return v4;
      }

      if (v5 != 118)
      {
        if (v5 != 120)
        {
          goto LABEL_71;
        }

        goto LABEL_43;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 11;
LABEL_89:
        *a4 = v16;
        return ++v4;
      }

      v15 = 11;
      goto LABEL_76;
    }

    if (v5 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 13;
        goto LABEL_89;
      }

      v15 = 13;
      goto LABEL_76;
    }

    if (v5 == 116)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 9;
        goto LABEL_89;
      }

      v15 = 9;
LABEL_76:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v15);
      return ++v4;
    }

LABEL_71:
    v15 = v5;
    if (v5 < 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v5;
        *(a4 + 1) = 0;
        return ++v4;
      }

      goto LABEL_76;
    }

    goto LABEL_97;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 12;
        goto LABEL_89;
      }

      v15 = 12;
      goto LABEL_76;
    }

    if (v5 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 10;
        goto LABEL_89;
      }

      v15 = 10;
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v15 = 0;
    goto LABEL_76;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_71;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  v6 = a2[1];
  if (((v6 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  v7 = v6 & 0x1F;
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v7;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  v4 += 2;
  return v4;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_2725EDF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 2);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_61;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_38;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v75, &__s);
  __p = v75;
  size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v75);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v75;
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v75.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v75.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_167;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_167:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_38:
    negate = 0;
    v9 = 1;
    goto LABEL_39;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_38;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_163;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v75);
    v16 = this->__ranges_.__begin_;
    v17 = this->__ranges_.__end_ - v16;
    if (v17)
    {
      v18 = 0;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v16->second.__r_.__value_.__r.__words) >= 1)
      {
        ++v18;
        ++v16;
        if (v18 >= v19)
        {
          goto LABEL_32;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    else
    {
LABEL_32:
      v20 = 0;
      v21 = 0;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_143;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v22 = 0;
    goto LABEL_145;
  }

  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v75);
  v38 = this->__equivalences_.__begin_;
  v39 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v40 = this->__equivalences_.__end_ - v38;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v41 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = v38->__r_.__value_.__l.__size_;
      }

      if (v42 == v47)
      {
        v49 = v48 >= 0 ? v38 : v38->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v49, v42))
        {
          break;
        }
      }

      v46 = v45++ < v41;
      ++v38;
      if (!--v44)
      {
        goto LABEL_140;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v39 < 0)
    {
LABEL_141:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_140:
    v21 = 0;
    v22 = 0;
    if (v39 < 0)
    {
      goto LABEL_141;
    }
  }

  if (!v46)
  {
LABEL_145:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v69 = tab[__src];
      if (((v69 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_163;
      }

      neg_mask = this->__neg_mask_;
      if ((v69 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_162:
        negate = v22;
LABEL_164:
        v9 = 2;
        goto LABEL_61;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_162;
    }

LABEL_163:
    negate = 1;
    goto LABEL_164;
  }

LABEL_143:
  v9 = 2;
  negate = v22;
  if (v21)
  {
    goto LABEL_61;
  }

LABEL_39:
  v24 = *a2->__current_;
  v75.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v24) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v24);
    v75.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = this->__chars_.__begin_;
  v26 = this->__chars_.__end_ - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_60;
      }
    }

    while (--v26);
  }

  v28 = this->__neg_mask_;
  if (v28 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v24 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v24] & v28) == 0)
    {
      v29 = (v24 == 95) & (v28 >> 7);
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    end = this->__neg_chars_.__end_;
    v31 = memchr(this->__neg_chars_.__begin_, v24, end - this->__neg_chars_.__begin_);
    v32 = !v31 || v31 == end;
    v33 = !v32;
    if ((v29 & 1) == 0 && !v33)
    {
LABEL_60:
      negate = 1;
      goto LABEL_61;
    }
  }

  v37 = this->__ranges_.__begin_;
  v36 = this->__ranges_.__end_;
  if (v37 == v36)
  {
    goto LABEL_99;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v37 = this->__ranges_.__begin_;
    v36 = this->__ranges_.__end_;
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  v50 = v36 - v37;
  if (v50)
  {
    v51 = 0;
    v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 4);
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v37->second.__r_.__value_.__r.__words) >= 1)
    {
      ++v51;
      ++v37;
      if (v51 >= v52)
      {
        goto LABEL_95;
      }
    }

    v53 = 1;
    negate = 1;
  }

  else
  {
LABEL_95:
    v53 = 0;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v53 & 1) == 0)
  {
LABEL_99:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_134:
      v65 = this->__mask_;
      if ((v75.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v75.__r_.__value_.__s.__data_[0]] & v65) != 0)
      {
        goto LABEL_60;
      }

      v66 = (v65 >> 7) & 1;
      if (v75.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v66) = 0;
      }

      negate |= v66;
      goto LABEL_61;
    }

    v54 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v55 = this->__equivalences_.__begin_;
    v56 = this->__equivalences_.__end_ - v55;
    if (v56)
    {
      v71 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v72 = v9;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      }

      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = v55->__r_.__value_.__l.__size_;
        }

        if (v58 == v62)
        {
          v64 = v63 >= 0 ? v55 : v55->__r_.__value_.__r.__words[0];
          if (!memcmp(v54, v64, v58))
          {
            break;
          }
        }

        v61 = v60++ < v57;
        ++v55;
        if (!--v59)
        {
          goto LABEL_131;
        }
      }

      negate = 1;
LABEL_131:
      v9 = v72;
      if ((v71 & 0x80) == 0)
      {
LABEL_133:
        if (v61)
        {
          goto LABEL_61;
        }

        goto LABEL_134;
      }
    }

    else
    {
      v61 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_133;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_133;
  }

LABEL_61:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v35 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v35 = -995;
  }

  a2->__do_ = v35;
  a2->__node_ = first;
}

void sub_2725EE808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2725EE8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2725EEA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x2743CBFA0);
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 4);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4D58;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743CBFA0);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4D58;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4D28;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743CBFA0);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4D28;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = a2 + 1;
    v8 = *a2;
    if ((a2 + 1 != a3 || v8 != 36) && ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0))
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
LABEL_29:
      if (v9 == a3)
      {
        return v9;
      }

      v19 = a1->__marked_count_ + 1;
      v20 = *v9;
      if (v20 == 42)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
        return v9 + 1;
      }

      if (v9 + 1 == a3 || v20 != 92 || v9[1] != 123)
      {
        return v9;
      }

      LODWORD(__max) = 0;
      v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v9 + 2, a3, &__max);
      if (v21 == v9 + 2)
      {
        goto LABEL_55;
      }

      if (v21 != a3)
      {
        v22 = v21 + 1;
        v23 = *v21;
        if (v23 == 44)
        {
          v31 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v21 + 1, a3, &v31);
          if (v24 != a3)
          {
            v25 = v24;
            if (v24 + 1 != a3 && *v24 == 92)
            {
              v26 = v24[1];
              v27 = v26 == 125;
              if (v26 == 125)
              {
                v28 = v31;
                if (v31 == -1)
                {
                  v29 = a1;
                  v28 = -1;
                  goto LABEL_52;
                }

                if (v31 >= __max)
                {
                  v29 = a1;
LABEL_52:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v29, __max, v28, end, marked_count + 1, v19, 1);
                  return &v25[2 * v27];
                }

LABEL_55:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v22 != a3 && v23 == 92 && *v22 == 125)
        {
          v3 = v21 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v19, 1);
          return v3;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(a1, a2, a3);
    v9 = v11;
    if (v11 == v3)
    {
      if (*v11 == 46)
      {
        operator new();
      }

      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, v3, a3);
    }

    if (v9 == v3 && v9 != a3 && v9 + 1 != a3 && *v9 == 92)
    {
      v12 = v9[1];
      if (v12 == 40)
      {
        v13 = v9 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v14 = a1->__marked_count_;
        do
        {
          v15 = v13;
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || v16 + 1 == a3 || *v16 != 92 || v16[1] != 41)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        v9 = v16 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v14);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v12);
        v18 = 2;
        if (!v17)
        {
          v18 = 0;
        }

        v9 += v18;
      }
    }

    if (v9 != v3)
    {
      goto LABEL_29;
    }
  }

  return v3;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 == 92)
    {
      if (a2 + 1 == a3)
      {
        end = this->__end_;
        marked_count = this->__marked_count_;
        goto LABEL_38;
      }

      v11 = a2[1];
      if (v11 == 66)
      {
        v12 = 1;
      }

      else
      {
        if (v11 != 98)
        {
          goto LABEL_29;
        }

        v12 = 0;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
      return a2 + 2;
    }

    if (v6 != 94)
    {
      goto LABEL_30;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return a2 + 1;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return a2 + 1;
  }

  if (v6 != 40)
  {
    goto LABEL_30;
  }

  if (a2 + 1 == a3)
  {
    end = this->__end_;
    marked_count = this->__marked_count_;
LABEL_43:
    if (a2 + 1 == a3)
    {
      goto LABEL_99;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
      if (v20 == a3)
      {
        goto LABEL_99;
      }

      v21 = v20;
      if (*v20 != 41)
      {
        goto LABEL_99;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      v22 = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 1, a3);
      if (v23 == a3 || (v21 = v23, *v23 != 41))
      {
LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v22);
    }

    --*p_open_count;
    v24 = v21 + 1;
LABEL_56:
    result = a2;
    if (v24 == a2)
    {
      return result;
    }

    goto LABEL_96;
  }

  if (a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_29;
  }

  v7 = a2[2];
  if (v7 == 33)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v15 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 1, this->__marked_count_);
    this->__marked_count_ += v15;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

LABEL_28:
    std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v38.__traits_.__loc_);
    result = v8 + 1;
    if (v8 + 1 != a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v7 == 61)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v9 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 0, this->__marked_count_);
    this->__marked_count_ += v9;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_28;
  }

LABEL_29:
  v6 = *a2;
LABEL_30:
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (v6 > 62)
  {
    v16 = (v6 - 92);
    if (v16 <= 0x21)
    {
      if (((1 << (v6 - 92)) & 0x300000006) != 0)
      {
        return a2;
      }

      if (v6 == 92)
      {
LABEL_38:
        v17 = a2 + 1;
        if (a2 + 1 == a3)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v18 = *v17;
        if (v18 == 48)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 0);
LABEL_95:
          v24 = a2 + 2;
          goto LABEL_96;
        }

        if ((v18 - 49) <= 8)
        {
          v25 = (v18 - 48);
          v24 = a2 + 2;
          if (a2 + 2 != a3)
          {
            while (1)
            {
              v26 = *v24;
              if ((v26 - 48) > 9)
              {
                break;
              }

              if (v25 >= 0x19999999)
              {
                goto LABEL_100;
              }

              v25 = v26 + 10 * v25 - 48;
              if (++v24 == a3)
              {
                v24 = a3;
                break;
              }
            }

            if (!v25)
            {
              goto LABEL_100;
            }
          }

          if (v25 > marked_count)
          {
LABEL_100:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, v25);
          if (v24 != v17)
          {
            goto LABEL_56;
          }

          v18 = *v17;
        }

        if (v18 > 99)
        {
          if (v18 == 119)
          {
            v27 = this;
            v28 = 0;
            goto LABEL_87;
          }

          if (v18 == 115)
          {
            v35 = this;
            v36 = 0;
LABEL_93:
            started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v35, v36);
            v32 = started->__mask_ | 0x4000;
            goto LABEL_94;
          }

          if (v18 != 100)
          {
            goto LABEL_88;
          }

          v29 = this;
          v30 = 0;
        }

        else
        {
          if (v18 != 68)
          {
            if (v18 != 83)
            {
              if (v18 == 87)
              {
                v27 = this;
                v28 = 1;
LABEL_87:
                v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v27, v28);
                v33->__mask_ |= 0x500u;
                std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v33, 95);
                goto LABEL_95;
              }

LABEL_88:
              v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(this, a2 + 1, a3, 0);
              if (v34 == v17)
              {
                v24 = a2;
              }

              else
              {
                v24 = v34;
              }

              goto LABEL_56;
            }

            v35 = this;
            v36 = 1;
            goto LABEL_93;
          }

          v29 = this;
          v30 = 1;
        }

        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v29, v30);
        v32 = started->__mask_ | 0x400;
LABEL_94:
        started->__mask_ = v32;
        goto LABEL_95;
      }

      if (v16 == 31)
      {
        goto LABEL_101;
      }
    }

    if (v6 == 91)
    {
      v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_56;
    }

    if (v6 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_83;
  }

  if (v6 > 40)
  {
    if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      goto LABEL_83;
    }

    return a2;
  }

  if (v6 == 36)
  {
    return a2;
  }

  if (v6 == 40)
  {
    goto LABEL_43;
  }

LABEL_83:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
  v24 = a2 + 1;
LABEL_96:
  v37 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v24, a3, end, marked_count + 1, v37);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 11);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * (v10 + v12 - 2);
    *v15 = v14->std::pair<const char *, const char *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
  }

  while (v9 > v12++);
LABEL_11:

  operator delete(begin);
}

void sub_2725F025C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4C20;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4C20;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4BF0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743CBFA0);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4BF0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t vp::vx::Uplink_Configuration_Manager::calculate_output_max_block_size(vp::vx::Uplink_Configuration_Manager *this, double a2, unsigned int a3, double a4, uint64_t a5, int a6, double a7, uint64_t a8, int a9)
{
  v9 = 0;
  if (a2 != 0.0 && a4 != 0.0 && a7 != 0.0)
  {
    v13 = a8;
    LODWORD(v9) = vcvtpd_u64_f64(a3 / a2 * a4);
    if (a6)
    {
      v9 = v9 + a5 - std::__gcd<unsigned int>(v9, a5);
    }

    LODWORD(v9) = vcvtpd_u64_f64(v9 / a4 * a7);
    if (a9)
    {
      return v9 + v13 - std::__gcd<unsigned int>(v9, v13);
    }
  }

  return v9;
}

uint64_t std::__gcd<unsigned int>(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v4)
  {
    v5 = v4 >> __clz(__rbit32(v4));
    v6 = result;
    do
    {
      v7 = v6 >> __clz(__rbit32(v6));
      v6 = v7 - v5;
      if (v5 > v7)
      {
        v6 = v5 - v7;
      }

      if (v5 >= v7)
      {
        v5 = v7;
      }
    }

    while (v6);
    return v5 << __clz(__rbit32(v4 | result));
  }

  return result;
}

unsigned int vp::vx::Uplink_Configuration_Manager::calculate_content_dsp_max_block_size(vp::vx::Uplink_Configuration_Manager *this, double a2, unsigned int a3, double a4)
{
  v4 = a3 * a4 / a2;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v4 = 0.0;
  }

  return vcvtpd_u64_f64(v4);
}

uint64_t vp::vx::Uplink_Configuration_Manager::calculate_echo_dsp_block_size(double a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  v4 = *(a3 + 48);
  v5 = &qword_272756000;
  if (!*(a3 + 56))
  {
    v4 = 0.01;
  }

  LODWORD(v5) = vcvtpd_u64_f64(v4 * a1);
  return vp::utility::Quantization_Table<unsigned int>::quantize(*a4, a4[1], v5);
}

uint64_t vp::utility::Quantization_Table<unsigned int>::quantize(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  if (*a1 <= a3 && v4 >= a3)
  {
    if (a2 != a1)
    {
      v6 = a2 - a1;
      do
      {
        v7 = v6 >> 1;
        v8 = &a1[v6 >> 1];
        v10 = *v8;
        v9 = v8 + 1;
        v6 += ~(v6 >> 1);
        if (v10 < a3)
        {
          a1 = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
      a2 = a1;
    }

    if (*a2 != a3)
    {
      v11 = *(a2 - 1);
      if (*a2 - a3 >= a3 - v11)
      {
        return v11;
      }

      else
      {
        return *a2;
      }
    }
  }

  else
  {
    if (v4 >= a3)
    {
      v4 = a3;
    }

    if (v3 <= a3)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return a3;
}

double vp::vx::Uplink_Configuration_Manager::calculate_echo_dsp_sample_rate(double a1, double a2, double a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, unsigned int a11, _BYTE *a12, uint64_t a13, char a14)
{
  v22[4] = *MEMORY[0x277D85DE8];
  if (a12[8] == 1)
  {
    return *a12;
  }

  v15 = 32000.0;
  if (a1 == 44100.0 && a2 == 44100.0)
  {
    *a7.i64 = a11 * 22050.0 / 44100.0;
    *a8.i64 = *a7.i64 - trunc(*a7.i64);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v16), a8, a7).i64 == 0.0)
    {
      v15 = 22050.0;
    }
  }

  v17 = a3 > 0.0;
  if (a3 > 16000.0)
  {
    v17 = 0;
  }

  if ((v17 & a10) != 0)
  {
    v18 = 16000.0;
  }

  else
  {
    v18 = v15;
  }

  *v22 = v18;
  *&v22[1] = a1;
  v19 = 1.79769313e308;
  if (a14)
  {
    v19 = *&a13;
  }

  *&v22[2] = v19;
  *&v22[3] = a2;
  v20 = 1;
  v21 = v22;
  do
  {
    if (*&v22[v20] < v18)
    {
      v18 = *&v22[v20];
      v21 = &v22[v20];
    }

    ++v20;
  }

  while (v20 != 4);
  return *v21;
}

uint64_t vp::vx::Uplink_Configuration_Manager::calculate_mic_ref_sample_time_delta(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11, unsigned int a12, int a13, int a14, int a15, unsigned int a16, unsigned int a17, int a18, char a19, unsigned int a20)
{
  v20 = *(a6 + 4);
  v21 = a10 & (v20 << 29 >> 31);
  if ((v20 & 1) == 0)
  {
    a8 = 0;
  }

  v23 = a11 & (v20 << 27 >> 31);
  v24 = a15 & (v20 << 23 >> 31);
  result = (a9 & (v20 << 30 >> 31)) + a8 - (v23 + v21) + (a14 & (v20 << 25 >> 31)) + (a18 & (v20 << 21 >> 31)) + v24;
  v26 = 1.0;
  if (a4 > 0.0)
  {
    v26 = a3 / a4;
    if ((v20 & 0x80) == 0)
    {
LABEL_6:
      if ((v20 & 0x200) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v20 & 0x80) == 0)
  {
    goto LABEL_6;
  }

  result = (a9 & (v20 << 30 >> 31)) + a8 - (v23 + v21) + (a18 & (v20 << 21 >> 31)) + v24 + vcvtms_s32_f32(v26 * a16);
  if ((v20 & 0x200) == 0)
  {
LABEL_7:
    if ((v20 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = vcvtms_s32_f32(v26 * a17) - v24 + result;
  if ((v20 & 8) == 0)
  {
LABEL_8:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_26:
  result = v21 - vcvtms_s32_f32(v26 * a12) + result;
  if ((v20 & 0x20) != 0)
  {
LABEL_9:
    result = v23 - vcvtms_s32_f32(v26 * a13) + result;
  }

LABEL_10:
  if (!*(a6 + 80))
  {
    goto LABEL_41;
  }

  if (a3 >= a1)
  {
    v27 = a1;
  }

  else
  {
    v27 = a3;
  }

  v28 = (a6 + 72);
  v29 = *(a6 + 72);
  if (!v29)
  {
    v30 = (a6 + 72);
    do
    {
LABEL_29:
      v33 = *(v30 + 2);
      v36 = *v33 == v30;
      v30 = v33;
    }

    while (v36);
    goto LABEL_40;
  }

  v30 = (a6 + 72);
  do
  {
    v31 = v29[4];
    if (v31 >= v27)
    {
      v30 = v29;
    }

    v29 = *&v29[v31 < v27];
  }

  while (v29);
  if (v30 != v28)
  {
    v32 = *(v30 + 1);
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      v35 = v30;
      do
      {
        v33 = *(v35 + 2);
        v36 = *v33 == v35;
        v35 = v33;
      }

      while (!v36);
    }

    if (v33 == v28 || v33[4] - v27 >= v30[4] - v27)
    {
      v33 = v30;
    }

    goto LABEL_40;
  }

  v34 = *v30;
  if (!*v30)
  {
    goto LABEL_29;
  }

  do
  {
    v33 = v34;
    v34 = *(v34 + 1);
  }

  while (v34);
LABEL_40:
  result = (*(v33 + 10) + result);
LABEL_41:
  if (a3 < a1)
  {
    a1 = a3;
  }

  if (*(a6 + 24) == 1)
  {
    result = (result + *(a6 + 16) / 1000.0 * a1);
  }

  if (a19)
  {
    v36 = *(a7 + 8) == 1 && *(a7 + 40) == 13;
    if (v36)
    {
      result = (result + a20 / 1000.0 * a1);
    }
  }

  if (*(a6 + 40) == 1)
  {
    v37 = (a1 * *(a6 + 32));
    if (result <= v37)
    {
      result = v37;
    }

    else
    {
      result = result;
    }
  }

  if (*(a6 + 56) == 1)
  {
    v38 = (a1 * *(a6 + 48));
    if (result >= v38)
    {
      return v38;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t vp::vx::Downlink_Configuration_Manager::calculate_dynamics_dsp_block_size(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 40) != 1)
  {
    return a4;
  }

  do
  {
    result = a4;
    if (*(a3 + 32) >= a4 / a1)
    {
      break;
    }

    if (a4 < 0x41)
    {
      break;
    }

    a4 = a4 >> 1;
  }

  while ((result & 3) == 0);
  return result;
}

uint64_t vp::vx::Downlink_Configuration_Manager::calculate_voice_dsp_fft_block_size(double a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int **a5)
{
  v5 = a4 / a1;
  v6 = *(a3 + 64);
  if (!*(a3 + 72))
  {
    v6 = 2.22507386e-308;
  }

  v7 = *(a3 + 80);
  if (!*(a3 + 88))
  {
    v7 = 1.79769313e308;
  }

  if (v7 >= v5)
  {
    v7 = a4 / a1;
  }

  if (v5 >= v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 * a1;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = 0.0;
  }

  return vp::utility::Quantization_Table<unsigned int>::quantize(*a5, a5[1], v9);
}

unsigned int vp::vx::Downlink_Configuration_Manager::calculate_voice_dsp_block_size(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  if (*(a4 + 56) == 1)
  {
    LODWORD(a5) = vcvtpd_u64_f64(*(a4 + 48) * a1);
    return vp::utility::Quantization_Table<unsigned int>::quantize(*a6, a6[1], a5);
  }

  else
  {
    v7 = a5 * a1 / a2;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v7 = 0.0;
    }

    return vcvtpd_u64_f64(v7);
  }
}

double vp::vx::Downlink_Configuration_Manager::calculate_voice_dsp_sample_rate(double a1, double a2, double a3, uint64_t a4, int a5, _BYTE *a6, uint64_t a7, char a8)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (a6[8] == 1)
  {
    return *a6;
  }

  v9 = a3 > 0.0;
  if (a3 > 16000.0)
  {
    v9 = 0;
  }

  v10 = 32000.0;
  if ((v9 & a5) != 0)
  {
    v10 = 16000.0;
  }

  *v14 = a1;
  *&v14[1] = a2;
  v11 = 1.79769313e308;
  if (a8)
  {
    v11 = *&a7;
  }

  *&v14[2] = v10;
  *&v14[3] = v11;
  v12 = 1;
  v13 = v14;
  do
  {
    if (*&v14[v12] < a1)
    {
      a1 = *&v14[v12];
      v13 = &v14[v12];
    }

    ++v12;
  }

  while (v12 != 4);
  return *v13;
}

unsigned int vp::vx::Downlink_Configuration_Manager::calculate_voice_mix_dsp_block_size(vp::vx::Downlink_Configuration_Manager *this, double a2, double a3, unsigned int a4, int a5, double a6, unsigned int a7)
{
  result = 0;
  if (a2 != 0.0 && a3 != 0.0 && a6 != 0.0)
  {
    v9 = ceil(a2 / a3);
    LODWORD(v7) = vcvtpd_u64_f64(a7 / a6 * a3);
    if (a5)
    {
      LODWORD(v7) = v7 + a4 - std::__gcd<unsigned int>(v7, a4);
    }

    return vcvtpd_u64_f64(v9 * v7 * 1.1);
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Constant::build(vp::vx::database::v1::syntax::conditions::Constant *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v3 = this;
  v4 = *(this + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 4, v4);
  v8 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v7 - v6 + v5);
  LODWORD(v3) = *(v3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v9 = v8;
  *(a2 + 70) = 1;
  LODWORD(v5) = *(a2 + 8);
  LODWORD(v6) = *(a2 + 12);
  v10 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v9);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 1);
  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v5 - v6 + v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v11);
  return v11;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
  }

  if (*(this + 64))
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
  }

  return this;
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(apple::aiml::flatbuffers2::vector_downward *this, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = this;
  if (a3 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 1uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 1uLL);
    v6 = (*(v5 + 6) - 1);
    *(v5 + 6) = v6;
    *v6 = v3;
    v7 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1450, "nested");
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
  v4 = *(this + 6);
  *(v4 - 4) = 0;
  v4 -= 4;
  *(this + 6) = v4;
  v5 = *(this + 4) - v4 + *(this + 5);
  if ((*(this + 34) + 2) <= 4u)
  {
    v6 = 4;
  }

  else
  {
    v6 = (*(this + 34) + 2);
  }

  *(this + 34) = v6;
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, v6);
  v7 = (*(this + 6) - v6);
  *(this + 6) = v7;
  bzero(v7, v6);
  v8 = v5 - a2;
  if ((v5 - a2) >= 0x10000)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1465, "table_object_size < 0x10000");
  }

  v9 = *(this + 6);
  if (!v9)
  {
    __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
  }

  v9[1] = v8;
  *v9 = *(this + 34);
  v10 = *(this + 7);
  if (!v10)
  {
    __assert_rtn("scratch_end", "flatbuffers.h", 1026, "scratch_");
  }

  v11 = *(this + 16);
  v12 = v10 - 8 * v11;
  if (v11)
  {
    v13 = (v10 - 8 * v11);
    do
    {
      v14 = *(v13 + 2);
      if (*(v9 + v14))
      {
        __assert_rtn("EndTable", "flatbuffers.h", 1476, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
      }

      v15 = *v13;
      v13 += 2;
      *(v9 + v14) = v5 - v15;
    }

    while (v13 < v10);
  }

  *(this + 7) = v12;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v17 = *(this + 4);
  v16 = *(this + 5);
  LODWORD(v18) = v17 - v9 + v16;
  if (*(this + 81))
  {
    if (!v16)
    {
      __assert_rtn("scratch_data", "flatbuffers.h", 1021, "buf_");
    }

    if (v16 < v12)
    {
      v19 = *v9;
      v20 = v16 + v17;
      v21 = *(this + 5);
      while (1)
      {
        v18 = *v21;
        if (v19 == *(v20 - v18) && !memcmp((v20 - v18), v9, v19))
        {
          break;
        }

        if (++v21 >= v12)
        {
          LODWORD(v18) = v17 - v9 + v16;
          goto LABEL_21;
        }
      }

      v9 = (v9 + (v17 - v9 + v16 - v5));
      *(this + 6) = v9;
    }
  }

LABEL_21:
  if (v18 == v17 + v16 - v9)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
    v22 = *(this + 7);
    *v22 = v18;
    *(this + 7) = v22 + 1;
    v17 = *(this + 4);
    v16 = *(this + 5);
  }

  *(v16 + v17 - v5) = v18 - v5;
  *(this + 70) = 0;
  return v5;
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5);
  }

  return result;
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(apple::aiml::flatbuffers2::vector_downward *this, int a2)
{
  v2 = a2;
  v3 = this;
  if (a2 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 2uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v3, 2uLL);
    v4 = *(v3 + 6);
    *(v4 - 2) = v2;
    v4 -= 2;
    *(v3 + 6) = v4;
    v5 = (*(v3 + 8) - v4 + *(v3 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v3, 8uLL);
    **(v3 + 7) = v5 | 0x400000000;
    *(v3 + 7) += 8;
    ++*(v3 + 16);
    v6 = *(v3 + 34);
    if (v6 <= 4)
    {
      LOWORD(v6) = 4;
    }

    *(v3 + 34) = v6;
  }

  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = (a2 + result - a3 - *(a2 + result - a3));
  if (*v3 < 9u || !v3[4])
  {
    __assert_rtn("Required", "flatbuffers.h", 2702, "ok");
  }

  return result;
}

unint64_t apple::aiml::flatbuffers2::vector_downward::ensure_space(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v6 = *(this + 5), v7 = v3 - v6, v3 < v6))
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
  }

  v8 = *(this + 4);
  if (&v2[-v3] < a2)
  {
    v9 = v8 - v2 + v6;
    if (v8)
    {
      v10 = v8 >> 1;
    }

    else
    {
      v10 = *(this + 2);
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    v11 = (*(this + 3) + v8 + v10 - 1) & -*(this + 3);
    *(this + 4) = v11;
    v12 = *this;
    if (v6)
    {
      if (v12)
      {
        v13 = (*(*v12 + 32))(v12);
      }

      else
      {
        v15 = &unk_2881C64A8;
        v13 = apple::aiml::flatbuffers2::Allocator::reallocate_downward(&v15, v6, v8, v11, v9, v7);
      }
    }

    else
    {
      if (!v12)
      {
        v15 = &unk_2881C64A8;
        operator new[]();
      }

      v13 = (*(*v12 + 16))(v12, v11);
    }

    LODWORD(v6) = v13;
    v8 = *(this + 4);
    v2 = &v13[v8 - v9];
    *(this + 5) = v13;
    *(this + 6) = v2;
    *(this + 7) = &v13[v7];
  }

  if ((v8 - v2 + v6) >= 0x7FFFFFFF)
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  return a2;
}

char *apple::aiml::flatbuffers2::Allocator::reallocate_downward(apple::aiml::flatbuffers2::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    __assert_rtn("reallocate_downward", "flatbuffers.h", 687, "new_size > old_size");
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void apple::aiml::flatbuffers2::DefaultAllocator::deallocate(apple::aiml::flatbuffers2::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x2743CBF70);
  }
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Align(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::fill(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  result = apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a2);
  *(this + 6) -= a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    __assert_rtn("ReferTo", "flatbuffers.h", 1419, "off && off <= GetSize()");
  }

  return (v6 + 4);
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v4, 8uLL);
    **(v4 + 56) = v5 | (a2 << 32);
    *(v4 + 56) += 8;
    ++*(v4 + 64);
    v6 = *(v4 + 68);
    if (v6 <= a2)
    {
      LOWORD(v6) = a2;
    }

    *(v4 + 68) = v6;
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 4uLL);
  v4 = *(a1 + 48);
  *(v4 - 4) = a2;
  v4 -= 4;
  *(a1 + 48) = v4;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

uint64_t vp::vx::database::v1::syntax::decisions::Constant::build(vp::vx::database::v1::syntax::decisions::Constant *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v3 = this;
  v4 = *(this + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 4, v4);
  v8 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v7 - v6 + v5);
  LODWORD(v3) = *(v3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v9 = v8;
  *(a2 + 70) = 1;
  LODWORD(v5) = *(a2 + 8);
  LODWORD(v6) = *(a2 + 12);
  v10 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v9);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 1);
  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v5 - v6 + v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v11);
  return v11;
}

uint64_t vp::vx::database::v1::syntax::Constraint::build(CFStringRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2, const applesauce::CF::StringRef *a3)
{
  v4 = this;
  v5 = vp::vx::database::v1::fbs::BuildString(a2, this, a3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v6 = v5;
  *(a2 + 70) = 1;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v6);
  v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v9 - v8 + v7);
  v11 = *(v4 + 2);
  LODWORD(v4) = vp::vx::database::v1::fbs::BuildPropertyList(a2, v4 + 2, v12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v13 = v4;
  *(a2 + 70) = 1;
  v14 = *(a2 + 8);
  v15 = *(a2 + 12);
  v16 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v13);
  if (v10)
  {
    v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, v10);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a2, 4, v17);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, v11);
  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v14 - v15 + v16);
}

void *vp::vx::database::v1::syntax::Constraint::get_value(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void *vp::vx::database::v1::syntax::Constraint::get_key(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef>(void *a1, CFDictionaryRef theDict, void *key, void *a4)
{
  if (theDict && key && (Value = CFDictionaryGetValue(theDict, key), (v7 = Value) != 0))
  {
    CFRetain(Value);
    CFRetain(v7);
    *a1 = v7;
    CFRelease(v7);
  }

  else
  {
    *a1 = *a4;
    *a4 = 0;
  }
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::more_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v9, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a3);
  v4 = cf;
  if (!v9)
  {
    if (cf)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (!cf)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!cf || ((v5 = CFNumberCompare(v9, cf, 0)) == kCFCompareEqualTo ? (v6 = 0) : (v6 = -1), v5 == kCFCompareGreaterThan))
  {
    v6 = 1;
  }

  v4 = cf;
  if (cf)
  {
LABEL_14:
    CFRelease(v4);
  }

LABEL_15:
  if (v9)
  {
    CFRelease(v9);
  }

  return (v6 & 0x80) == 0;
}

void sub_2725F1F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFNumberGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2725F205C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::more(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v7, a3);
  v4 = v7;
  if (cf)
  {
    v5 = !v7 || CFNumberCompare(cf, v7, 0) == kCFCompareGreaterThan;
    v4 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    if (v7)
    {
LABEL_9:
      CFRelease(v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2725F2138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::less_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v7, a3);
  v4 = v7;
  if (cf)
  {
    v5 = v7 && CFNumberCompare(cf, v7, 0) != kCFCompareGreaterThan;
    v4 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 1;
    if (v7)
    {
LABEL_9:
      CFRelease(v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2725F21E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

unint64_t vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::less(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v9, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a3);
  v4 = cf;
  if (!v9)
  {
    if (cf)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (!cf)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!cf || ((v5 = CFNumberCompare(v9, cf, 0)) == kCFCompareEqualTo ? (v6 = 0) : (v6 = -1), v5 == kCFCompareGreaterThan))
  {
    v6 = 1;
  }

  v4 = cf;
  if (cf)
  {
LABEL_14:
    CFRelease(v4);
  }

LABEL_15:
  if (v9)
  {
    CFRelease(v9);
  }

  return (v6 >> 7) & 1;
}

void sub_2725F229C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v10, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a3);
  v5 = cf;
  v4 = v10;
  if (v10)
  {
    if (!cf)
    {
      v7 = 0;
LABEL_12:
      CFRelease(v4);
      return v7;
    }

    v6 = CFNumberCompare(v10, cf, 0);
    v5 = cf;
  }

  else if (cf)
  {
    v6 = kCFCompareLessThan;
  }

  else
  {
    v6 = kCFCompareEqualTo;
  }

  v7 = v6 == kCFCompareEqualTo;
  if (v5)
  {
    CFRelease(v5);
  }

  v4 = v10;
  if (v10)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_2725F2348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::more_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v11, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a3);
  v5 = BOOLean;
  v4 = v11;
  v6 = BOOLean == 0;
  if (v11)
  {
    if (!BOOLean)
    {
      v6 = 1;
LABEL_12:
      CFRelease(v4);
      return v6;
    }

    Value = CFBooleanGetValue(v11);
    v8 = Value >= CFBooleanGetValue(BOOLean);
    v6 = v8;
    if (v8)
    {
      CFBooleanGetValue(v11);
      CFBooleanGetValue(BOOLean);
    }

    v5 = BOOLean;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v4 = v11;
  if (v11)
  {
    goto LABEL_12;
  }

  return v6;
}

void sub_2725F2408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFBooleanGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFBooleanGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2725F2504(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::more(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v8, a3);
  v6 = 0;
  if (BOOLean)
  {
    if (!v8 || (Value = CFBooleanGetValue(BOOLean), Value >= CFBooleanGetValue(v8)) && (v5 = CFBooleanGetValue(BOOLean), v5 != CFBooleanGetValue(v8)))
    {
      v6 = 1;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v6;
}

void sub_2725F2628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::less_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v8, a3);
  v6 = 1;
  if (BOOLean)
  {
    if (!v8 || (Value = CFBooleanGetValue(BOOLean), Value >= CFBooleanGetValue(v8)) && (v5 = CFBooleanGetValue(BOOLean), v5 != CFBooleanGetValue(v8)))
    {
      v6 = 0;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v6;
}

void sub_2725F26F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::less(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v12, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a3);
  v5 = BOOLean;
  v4 = v12;
  if (!v12)
  {
    v9 = BOOLean != 0;
    if (!BOOLean)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (BOOLean)
  {
    Value = CFBooleanGetValue(v12);
    v7 = CFBooleanGetValue(BOOLean);
    v8 = Value >= v7;
    v9 = Value < v7;
    if (v8)
    {
      CFBooleanGetValue(v12);
      CFBooleanGetValue(BOOLean);
    }

    v5 = BOOLean;
    if (!BOOLean)
    {
LABEL_10:
      v4 = v12;
      if (!v12)
      {
        return v9;
      }

      goto LABEL_13;
    }

LABEL_9:
    CFRelease(v5);
    goto LABEL_10;
  }

  v9 = 0;
LABEL_13:
  CFRelease(v4);
  return v9;
}

void sub_2725F27BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v12, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a3);
  v5 = BOOLean;
  v4 = v12;
  if (v12)
  {
    if (!BOOLean)
    {
      v8 = 0;
LABEL_14:
      CFRelease(v4);
      return v8;
    }

    Value = CFBooleanGetValue(v12);
    if (Value >= CFBooleanGetValue(BOOLean))
    {
      v9 = CFBooleanGetValue(v12);
      v7 = v9 != CFBooleanGetValue(BOOLean);
    }

    else
    {
      v7 = 1;
    }

    v5 = BOOLean;
  }

  else if (BOOLean)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 == 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v4 = v12;
  if (v12)
  {
    goto LABEL_14;
  }

  return v8;
}

void sub_2725F289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::more_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 < 2;
}

void sub_2725F2928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::StringRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFStringGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2725F2A20(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::more(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 == kCFCompareGreaterThan;
}

void sub_2725F2AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::less_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 != kCFCompareGreaterThan;
}

void sub_2725F2B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::less(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 > kCFCompareGreaterThan;
}

void sub_2725F2BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 == kCFCompareEqualTo;
}

void sub_2725F2C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::more_or_equal(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v4 >= v5;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::more(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a2 != 0;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
    v5 = v4 >= v6 && CFEqual(v4, v6) == 0;
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::less_or_equal(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a2 == 0;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
    v5 = v4 < v6 || CFEqual(v4, v6) != 0;
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::less(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v4 < v5;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::equal(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a2 == 0;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
    if (v4)
    {
      v5 = CFEqual(v4, v6) != 0;
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t vp::vx::database::v1::syntax::parse_constraint(uint64_t a1, vp::xml::Node **a2, uint64_t a3)
{
  v4 = vp::xml::Node::name(*a2, a2[1]);
  v6 = *(*(*(*a3 + 16))(a3, v4, v5) + 16);

  return v6();
}

void vp::vx::database::v1::syntax::Constraints::Boolean::parse_constraint(vp::vx::database::v1::syntax::Constraints::Boolean *this@<X0>, const vp::xml::Node *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 24) = 0;
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(v6 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *(v6 + 8);
  }

  if (v7 == 1)
  {
    if (*(this + 16))
    {
      v8 = MEMORY[0x277CBED28];
    }

    else
    {
      v8 = MEMORY[0x277CBED10];
    }

    std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a3);
    v9 = *(this + 1);
    if (v9)
    {
      CFRetain(*(this + 1));
    }

    v10 = *v8;
    *a3 = v9;
    *(a3 + 8) = 2;
    if (v10)
    {
      CFRetain(v10);
      *(a3 + 16) = v10;
      *(a3 + 24) = 1;
      CFRelease(v10);
    }

    else
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }
  }
}

void std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    *(a1 + 24) = 0;
  }
}

void vp::vx::database::v1::syntax::Constraints::Boolean::~Boolean(vp::vx::database::v1::syntax::Constraints::Boolean *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void vp::vx::database::v1::syntax::Constraints::Number::parse_constraint(vp::vx::database::v1::syntax::Constraints::Number *this@<X0>, uint64_t a2@<X8>, uint64_t *a3@<X1>)
{
  *a2 = 0;
  *(a2 + 24) = 0;
  vp::xml::Node::children(v23, a3);
  v25[0] = v23;
  v25[1] = 0;
  v26 = 0;
  v27 = 0;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v21, v25, v4);
  v20 = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 64);
  v7 = *(MEMORY[0x277D82818] + 72);
  while (v21)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      v8 = vp::xml::Node::content(v21, v22);
      v10 = v9;
      if (std::string_view::starts_with[abi:ne200100](v8, v9, "<=", 2uLL))
      {
        if (v10 <= 1)
        {
          goto LABEL_40;
        }

        v8 += 2;
        v10 -= 2;
        v11 = 4;
      }

      else if (std::string_view::starts_with[abi:ne200100](v8, v10, "<", 1uLL))
      {
        if (!v10)
        {
          goto LABEL_40;
        }

        ++v8;
        --v10;
        v11 = 3;
      }

      else if (std::string_view::starts_with[abi:ne200100](v8, v10, ">=", 2uLL))
      {
        v12 = v10 >= 2;
        v10 -= 2;
        if (!v12)
        {
          goto LABEL_40;
        }

        v8 += 2;
        v11 = 6;
      }

      else if (std::string_view::starts_with[abi:ne200100](v8, v10, ">", 1uLL))
      {
        if (!v10)
        {
LABEL_40:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        ++v8;
        --v10;
        v11 = 5;
      }

      else
      {
        v11 = 2;
      }

      v19 = v11;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, v8, v10);
      v35 = 0;
      MEMORY[0x2743CBA70](v28, &v35);
      valuePtr = v35;
      v13 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
      v36 = v13;
      if (!v13)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v28[0] = v20;
      *(v28 + *(v20 - 24)) = v6;
      v29 = v7;
      v30 = MEMORY[0x277D82878] + 16;
      if (v32 < 0)
      {
        operator delete(v31[7].__locale_);
      }

      v30 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v31);
      std::iostream::~basic_iostream();
      MEMORY[0x2743CBE30](&v33);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v8, v10);
      v35 = 0;
      MEMORY[0x2743CBA50](v37, &v35);
      v43 = v35;
      v14 = CFNumberCreate(0, kCFNumberDoubleType, &v43);
      v36 = v14;
      if (!v14)
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v17, "Could not construct");
      }

      v37[0] = v20;
      *(v37 + *(v20 - 24)) = v6;
      v38 = v7;
      v39 = MEMORY[0x277D82878] + 16;
      if (v41 < 0)
      {
        operator delete(v40[7].__locale_);
      }

      v39 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v40);
      std::iostream::~basic_iostream();
      MEMORY[0x2743CBE30](&v42);
      if (v14 != 0)
      {
        CFRelease(v14);
      }

      std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a2);
      v15 = *(this + 1);
      if (v15)
      {
        CFRetain(*(this + 1));
      }

      *a2 = v15;
      *(a2 + 8) = v19;
      CFRetain(v13);
      *(a2 + 16) = v13;
      *(a2 + 24) = 1;
      CFRelease(v13);
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v21, v5);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v27 == 1 && v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](uint64_t **a1, uint64_t **a2, __n128 a3)
{
  if (*(a2 + 24) == 1)
  {
    v5 = a2[1];
    v6 = a2[2];
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = (*a2)[1];
  v11 = **a2;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10[0] = 0;
  v10[1] = 0;
  std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::text_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(v9, &v11, v10, a3);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(a2 + 24) == 1)
  {
    v8 = a2[2];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v5 = v9[0];
  v6 = v9[1];
  a2[1] = v9[0];
  a2[2] = v6;
  *(a2 + 24) = 1;
  if (v6)
  {
LABEL_12:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

LABEL_13:
  *a1 = v5;
  a1[1] = v6;
  a1[2] = a2;
}

uint64_t std::optional<applesauce::CF::NumberRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

std::__shared_weak_count **std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](std::__shared_weak_count **a1, __n128 a2)
{
  vp::xml::Node_Iterator::increment(a1, a2);
  v3 = *a1;
  *a1 = 0;
  a1[1] = 0;
  v8 = v3;
  v7[0] = 0;
  v7[1] = 0;
  std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::text_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(&v6, &v8, v7, v3);
  if (v8.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8.n128_u64[1]);
  }

  v4 = a1[1];
  *a1 = v6;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

double vp::xml::Node_Iterator::increment(vp::xml::Node_Iterator *this, __n128 a2)
{
  v2 = *this;
  if (*this)
  {
    v4 = *(this + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *(this + 1);
      v6 = *(v2 + 48);
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      *&v7 = v6;
      *(&v7 + 1) = v5;
      v10 = v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v8 = *(this + 1);
      a2.n128_u64[0] = v10;
      *this = v10;
      if (v8)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    else
    {
      a2.n128_u64[0] = *(v2 + 48);
      *this = a2;
    }
  }

  return a2.n128_f64[0];
}

void std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::text_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(void *a1, vp::xml::Node_Iterator *a2, void *a3, __n128 a4)
{
  v6 = *a2;
  if (*a2 != *a3)
  {
    while (1)
    {
      v8 = *(a2 + 1);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(v6 + 8);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v9 = *(v6 + 8);
      }

      if (v9 == 3)
      {
        break;
      }

      a4.n128_f64[0] = vp::xml::Node_Iterator::increment(a2, a4);
      v6 = *a2;
      if (*a2 == *a3)
      {
        goto LABEL_9;
      }
    }

    v6 = *a2;
  }

LABEL_9:
  v10 = *(a2 + 1);
  *a1 = v6;
  a1[1] = v10;
  *a2 = 0;
  *(a2 + 1) = 0;
}

void vp::vx::database::v1::syntax::Constraints::Number::~Number(vp::vx::database::v1::syntax::Constraints::Number *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void vp::vx::database::v1::syntax::Constraints::String::parse_constraint(vp::vx::database::v1::syntax::Constraints::String *this@<X0>, uint64_t a2@<X8>, uint64_t *a3@<X1>)
{
  *a2 = 0;
  *(a2 + 24) = 0;
  vp::xml::Node::children(v16, a3);
  v18[0] = v16;
  v18[1] = 0;
  v19 = 0;
  v20 = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v14, v18, v5);
  while (v14)
  {
    v6 = *(this + 2);
    v7 = vp::xml::Node::content(v14, v15);
    vp::vx::database::v1::runtime::String_Pool::intern(&cf, v6, v7, v8);
    if (cf)
    {
      std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a2);
      v10 = *(this + 1);
      if (v10)
      {
        CFRetain(v10);
      }

      *a2 = v10;
      *(a2 + 8) = 2;
      v11 = cf;
      if (cf)
      {
        CFRetain(cf);
        v12 = cf;
        *(a2 + 16) = v11;
        *(a2 + 24) = 1;
        if (v12)
        {
          CFRelease(v12);
        }
      }

      else
      {
        *(a2 + 16) = 0;
        *(a2 + 24) = 1;
      }

      break;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v14, v9);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v20 == 1)
  {
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }
}