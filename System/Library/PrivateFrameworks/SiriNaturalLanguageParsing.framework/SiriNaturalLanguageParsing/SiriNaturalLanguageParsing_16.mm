void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E5028;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E5028;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E7E68;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7E68;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~extended_type_info_typeid(a1, a2);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E7F10;
  boost::serialization::extended_type_info::key_unregister(a1, a2);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3 + 48, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>::load_object_data(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = (a3[1] - *a3) >> 2;
  boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(a2, &v10);
  std::vector<float>::resize(a3, v10);
  v9 = 0;
  boost::archive::detail::basic_iarchive::get_library_version(a2, v11);
  if (v11[0] == 4 || (result = boost::archive::detail::basic_iarchive::get_library_version(a2, &v8), v8 == 5))
  {
    result = boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned int>(a2, &v9);
  }

  v6 = *a3;
  if (*a3 != a3[1])
  {
    v7 = 4 * v10;
    result = (*(**(a2 + 40) + 64))(*(a2 + 40), v6, 4 * v10);
    if (result != v7)
    {
      boost::archive::archive_exception::archive_exception(v11, 8, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v11);
    }
  }

  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4D08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4D08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4FA8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4FA8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<float>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<float>>>::get_instance(void)::t);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4F08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4F08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E7878;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7878;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::~extended_type_info_typeid(a1, a2);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E7920;
  boost::serialization::extended_type_info::key_unregister(a1, a2);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<float>>>::get_instance(void)::t);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4D88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4D88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void **boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectIntentList>(void **result)
{
  if (result)
  {
    v1 = result;
    std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance(void)::t);
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::load_object_data(int a1, boost::archive::detail::basic_iarchive *this, uint64_t *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v5);
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>();
  if (v5 >= 4u)
  {
    v6 = 0;
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(this + 5);
  }

  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::reserve(a3, 0);
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::resize(a3, 0);
}

void std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 48 * a2;
      while (v4 != v11)
      {
        v4 -= 48;
        std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>::destroy[abi:ne200100](v4);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v13 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>>(v10);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 48 * ((48 * v6 - 48) / 0x30) + 48;
    bzero(a1[1], v12);
    a1[1] = v4 + v12;
  }
}

uint64_t boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectIntent>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 24);
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, std::string *a3)
{
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a2, a3);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, &a3[1], boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance(void)::t);
}

void **boost::serialization::access::destroy<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>(void **result)
{
  if (result)
  {
    v1 = result;
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::load_object_data(int a1, boost::archive::detail::basic_iarchive *this, uint64_t *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v5);
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>();
  if (v5 >= 4u)
  {
    v6 = 0;
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(this + 5);
  }

  std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::reserve(a3, 0);
  std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::resize(a3, 0);
}

void std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 48 * a2;
      while (v4 != v11)
      {
        v4 -= 48;
        std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100](v4);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v13 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v10);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 48 * ((48 * v6 - 48) / 0x30) + 48;
    bzero(a1[1], v12);
    a1[1] = v4 + v12;
  }
}

uint64_t boost::serialization::access::destroy<snlp::ssu::cache::SSUCacheObjectParameter>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 47) < 0)
    {
      operator delete(*(result + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>::load_object_data(uint64_t a1, uint64_t a2, std::string *a3)
{
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a2, a3);

  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a2, a3 + 1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4A08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4A08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E72C8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E72C8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>::~extended_type_info_typeid(a1, a2);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E7370;
  boost::serialization::extended_type_info::key_unregister(a1, a2);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectParameter>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4A88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4A88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E71C8;
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E71C8;
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::~extended_type_info_typeid(a1, a2);
}

void boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E7270;
  boost::serialization::extended_type_info::key_unregister(a1, a2);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4B08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4B08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E70C8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E70C8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>::~extended_type_info_typeid(a1, a2);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E7170;
  boost::serialization::extended_type_info::key_unregister(a1, a2);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntent>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4B88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4B88;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E6FC8;
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6FC8;
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::~extended_type_info_typeid(a1, a2);
}

void boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E7070;
  boost::serialization::extended_type_info::key_unregister(a1, a2);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4C08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4C08;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E6EC8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6EC8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>::~extended_type_info_typeid(a1, a2);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E6F70;
  boost::serialization::extended_type_info::key_unregister(a1, a2);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectIntentList>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>::load_object_data(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2, unint64_t a3)
{
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance(void)::t);
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::load_object_data(int a1, boost::archive::detail::basic_iarchive_impl **this, uint64_t *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v9);
  v8 = 0;
  v7 = 0;
  boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v7);
  if (v9 >= 4u)
  {
    boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v8);
  }

  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::reserve(a3, v7);
  v5 = v7;
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::resize(a3, v7);
  if (v5)
  {
    v6 = *a3;
    do
    {
      --v5;
      boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance();
      boost::archive::detail::basic_iarchive::load_object(this, v6, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance(void)::t);
      v6 += 48;
    }

    while (v5);
  }
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>::load_object_data(uint64_t a1, uint64_t a2, std::string *a3)
{
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load((a2 + 40), a3);
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, &a3[1], boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance(void)::t);
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::load_object_data(int a1, boost::archive::detail::basic_iarchive_impl **this, uint64_t *a3)
{
  boost::archive::detail::basic_iarchive::get_library_version(this, &v9);
  v8 = 0;
  v7 = 0;
  boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v7);
  if (v9 >= 4u)
  {
    boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::load_override(this, &v8);
  }

  std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::reserve(a3, v7);
  v5 = v7;
  std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::resize(a3, v7);
  if (v5)
  {
    v6 = *a3;
    do
    {
      --v5;
      boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance();
      boost::archive::detail::basic_iarchive::load_object(this, v6, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance(void)::t);
      v6 += 48;
    }

    while (v5);
  }
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>::load_object_data(uint64_t a1, uint64_t a2, std::string *a3)
{
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load((a2 + 40), a3);

  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::load((a2 + 40), a3 + 1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4788;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4788;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4808;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4808;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4888;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4888;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4908;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4908;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4988;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4988;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x223DC4D00);
  }
}

void *boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>::load_object_data(uint64_t a1, uint64_t a2)
{
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a2 + 40));
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a2 + 40));

  return boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a2 + 40));
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E46F8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E46F8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x223DC4D00);
  }
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E6CC8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6CC8;
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::~extended_type_info_typeid(a1, a2);
}

void boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1, uint64_t a2)
{
  *a1 = &unk_2835E6D70;
  boost::serialization::extended_type_info::key_unregister(a1, a2);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<snlp::ssu::cache::SSUCacheObjectHeader>::~extended_type_info_typeid(a1, a2);

  JUMPOUT(0x223DC4D00);
}

void boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x223DC4D00);
  }
}

uint64_t boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>::load_object_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned long>(a2, a3);
  v5 = boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned long>(v4, a3 + 8);

  return boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned long>(v5, a3 + 16);
}

uint64_t boost::archive::detail::interface_iarchive<boost::archive::binary_iarchive>::operator>><unsigned long>(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 40) + 64))(*(a1 + 40), a2, 8) != 8)
  {
    boost::archive::archive_exception::archive_exception(v4, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E4678;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E4678;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

snlp::ssu::cache::SSUCacheFileReadStream *snlp::ssu::cache::SSUCacheFileReadStream::SSUCacheFileReadStream(snlp::ssu::cache::SSUCacheFileReadStream *this, const std::__fs::filesystem::path *a2, uint64_t a3)
{
  v3 = a3;
  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  std::ifstream::basic_ifstream(this, a2, 8);
  snlp::ssu::cache::SSUCacheFileReadStream::buildArchive(this, v3, (this + 576));
  v5 = (this + 704);
  *(this + 90) = 0;
  *(this + 44) = 0u;
  *(this + 47) = 0u;
  *(this + 768) = 0;
  __val = 0;
  v18 = 0uLL;
  p_val = &__val;
  v6 = *(this + 174);
  if (v6 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v15.__r_.__value_.__r.__words[0] = &p_val;
  (off_2835E4658[v6])(&v15, this + 576);
  if (__val >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v15, __val);
    v13 = std::string::insert(&v15, 0, "Cannot read SSU cache file with unrecognized version: ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v16);
    exception->__vftable = &unk_2835E9238;
  }

  *(this + 91) = __val;
  *(this + 46) = v18;
  memset(&v16, 0, sizeof(v16));
  v15.__r_.__value_.__r.__words[0] = &v16;
  v7 = *(this + 174);
  if (v7 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  p_val = &v15;
  (off_2835E4768[v7])(&p_val, this + 576);
  v8 = *v5;
  if (*v5)
  {
    v9 = *(this + 89);
    v10 = *v5;
    if (v9 != v8)
    {
      do
      {
        v9 -= 48;
        std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>::destroy[abi:ne200100](v9);
      }

      while (v9 != v8);
      v10 = *v5;
    }

    *(this + 89) = v8;
    operator delete(v10);
    *v5 = 0;
    *(this + 89) = 0;
    *(this + 90) = 0;
  }

  *(this + 704) = v16;
  memset(&v16, 0, sizeof(v16));
  v15.__r_.__value_.__r.__words[0] = &v16;
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v15);
  return this;
}

void sub_222960C84(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *__p, uint64_t a9, void *a10, uint64_t a11, std::string *a12, void *__pa, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, __int128 a20, std::string::size_type a21)
{
  v24 = a2;
  if (a18 < 0)
  {
    operator delete(__pa);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&a20);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_iarchive,boost::archive::text_iarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v21 + 72));
      std::ifstream::~ifstream(v21, MEMORY[0x277D82808]);
      MEMORY[0x223DC4C10](v21 + 53);
      if (v24 == 2)
      {
        v26 = __cxa_begin_catch(a1);
        exception = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&__pa, "I/O stream exception: ");
        v28 = (*(*v26 + 16))(v26);
        v29 = std::string::append(&__pa, v28);
        v30 = *&v29->__r_.__value_.__l.__data_;
        a21 = v29->__r_.__value_.__r.__words[2];
        a20 = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &a20);
        exception->__vftable = &unk_2835E6BA0;
      }

      if (v24 == 1)
      {
        v31 = __cxa_begin_catch(a1);
        v32 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&__pa, "Boost serialization exception: ");
        v33 = (*(*v31 + 16))(v31);
        v34 = std::string::append(&__pa, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        a21 = v34->__r_.__value_.__r.__words[2];
        a20 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v32, &a20);
        v32->__vftable = &unk_2835E6BA0;
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_222960EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

void sub_222960F88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v18);
  __cxa_end_catch();
  JUMPOUT(0x222960FB0);
}

void snlp::ssu::cache::SSUCacheFileReadStream::buildArchive(uint64_t *a1@<X0>, int a2@<W1>, boost::archive::detail::basic_iarchive *a3@<X8>)
{
  if (a2)
  {
    v4 = boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::text_iarchive_impl(a3, a1, 0);
    *a3 = &unk_2835E4598;
    boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::init(v4);
    v5 = 1;
  }

  else
  {
    v6 = boost::archive::binary_iarchive_impl<boost::archive::binary_iarchive,char,std::char_traits<char>>::binary_iarchive_impl(a3, a1, 0);
    *a3 = &unk_2835E4600;
    boost::archive::basic_binary_iarchive<boost::archive::binary_iarchive>::init(v6);
    boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::init(a3 + 5);
    v5 = 0;
  }

  *(a3 + 30) = v5;
}

void sub_222961058(_Unwind_Exception *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(v1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);
  _Unwind_Resume(a1);
}

void snlp::ssu::cache::CacheFileException::~CacheFileException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223DC4D00);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectIntentList snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectIntentList>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectIntentList&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectIntentList snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectIntentList>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectIntentList&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectHeader snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectHeader>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectHeader&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectHeader snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectHeader>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectHeader&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance(void)::t);
}

void boost::archive::binary_iarchive::~binary_iarchive(boost::archive::binary_iarchive *this)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v1 + 5);

  JUMPOUT(0x223DC4D00);
}

{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v1 + 5);
}

void boost::archive::text_iarchive::~text_iarchive(boost::archive::text_iarchive *this)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);

  JUMPOUT(0x223DC4D00);
}

{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);
}

uint64_t snlp::ssu::cache::SSUCacheFileReadStream::isAtEnd(snlp::ssu::cache::SSUCacheFileReadStream *this)
{
  if (*(this + 94) == *(this + 92))
  {
    v1 = *(this + 95);
    v2 = *(this + 93);
    v3 = *(this + 91);
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v1 == v2;
    }

    v5 = v4;
    if (v3)
    {
      v6 = v1 == v2;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v5 = *(this + 768);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

double snlp::ssu::cache::SSUCacheFileReadStream::readNextBatchNegative@<D0>(snlp::ssu::cache::SSUCacheFileReadStream *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 94) == *(this + 92))
  {
    v3 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_ERROR, "Client tried to read the next negative cached encodings batch when there are none remaining", &v10, 2u);
    }

    *a2 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    v11 = 0u;
    v12[0] = 0u;
    v10 = 0u;
    v13 = &v10;
    v6 = *(this + 174);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v14 = &v13;
    (off_2835E4F78[v6])(&v14, this + 576);
    v7 = *(this + 94) + 1;
    *(this + 94) = v7;
    if (v7 == *(this + 92) && snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<unsigned long>(this) != 4660)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Corrupted SSU cache file: invalid terminator after last negative batch");
      exception->__vftable = &unk_2835E6BA0;
    }

    v8 = v11;
    *a2 = v10;
    *(a2 + 16) = v8;
    result = *v12;
    *(a2 + 32) = v12[0];
    *(a2 + 48) = 1;
  }

  return result;
}

void sub_222961518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::string *a16)
{
  __cxa_free_exception(v16);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a9);
  if (a2 == 2)
  {
    v20 = __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&a16, "I/O stream exception: ");
    v22 = (*(*v20 + 16))(v20);
    v23 = std::string::append(&a16, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(v17 - 48) = *(&v23->__r_.__value_.__l + 2);
    *(v17 - 64) = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, (v17 - 64));
    exception->__vftable = &unk_2835E6BA0;
  }

  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&a16, "Boost serialization exception: ");
    v27 = (*(*v25 + 16))(v25);
    v28 = std::string::append(&a16, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    *(v17 - 48) = *(&v28->__r_.__value_.__l + 2);
    *(v17 - 64) = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v26, (v17 - 64));
    v26->__vftable = &unk_2835E6BA0;
  }

  _Unwind_Resume(a1);
}

void sub_2229616E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_222961774(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v21);
  __cxa_end_catch();
  JUMPOUT(0x22296179CLL);
}

uint64_t snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<unsigned long>(uint64_t a1)
{
  v3 = &v4;
  v4 = 0;
  v1 = *(a1 + 696);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v3;
  (off_2835E4F88[v1])(&v5, a1 + 576);
  return v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance(void)::t);
}

double snlp::ssu::cache::SSUCacheFileReadStream::readNextBatchPositive@<D0>(snlp::ssu::cache::SSUCacheFileReadStream *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 94) < *(this + 92))
  {
    v3 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v5 = "Client tried to read a positive cached encodings batch when there are still negative batches to be read";
LABEL_7:
      _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_ERROR, v5, &v12, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (*(this + 95) == *(this + 93))
  {
    v3 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v5 = "Client tried to read the next positive cached encodings batch when there are none remaining";
      goto LABEL_7;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 72) = 0;
    return result;
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v17.__r_.__value_.__r.__words[0] = &v12;
  v7 = *(this + 174);
  if (v7 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v18 = &v17;
  (off_2835E5098[v7])(&v18, this + 576);
  v8 = *(this + 95) + 1;
  *(this + 95) = v8;
  if (v8 == *(this + 93) && snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<unsigned long>(this) != 22136)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "Corrupted SSU cache file: invalid terminator after last positive batch");
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_2835E9238;
  }

  v9 = v13;
  *a2 = v12;
  *(a2 + 16) = v9;
  result = *&v14;
  v10 = v15;
  *(a2 + 32) = v14;
  *(a2 + 48) = v10;
  *(a2 + 64) = v16;
  *(a2 + 72) = 1;
  return result;
}

void sub_222961A9C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::string *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
    if ((v19 & 1) == 0)
    {
LABEL_6:
      snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive::~SSUCacheObjectEncodingsBatchPositive(&a9);
      if (a2 == 2)
      {
        v23 = __cxa_begin_catch(a1);
        exception = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&a18, "I/O stream exception: ");
        v25 = (*(*v23 + 16))(v23);
        v26 = std::string::append(&a18, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        *(v20 - 48) = *(&v26->__r_.__value_.__l + 2);
        *(v20 - 64) = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, (v20 - 64));
        exception->__vftable = &unk_2835E6BA0;
      }

      if (a2 == 1)
      {
        v28 = __cxa_begin_catch(a1);
        v29 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&a18, "Boost serialization exception: ");
        v30 = (*(*v28 + 16))(v28);
        v31 = std::string::append(&a18, v30);
        v32 = *&v31->__r_.__value_.__l.__data_;
        *(v20 - 48) = *(&v31->__r_.__value_.__l + 2);
        *(v20 - 64) = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v29, (v20 - 64));
        v29->__vftable = &unk_2835E6BA0;
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_222961C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void sub_222961CEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v24)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x222961D48);
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance(void)::t);
}

void snlp::ssu::cache::SSUCacheFileReadStream::readDebugInformation(snlp::ssu::cache::SSUCacheFileReadStream *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 91))
  {
    *(this + 768) = 1;
    v4 = 0u;
    memset(v5, 0, 32);
    v6[0] = &v4;
    v3 = *(this + 174);
    if (v3 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v7 = v6;
    (off_2835E54A8[v3])(&v7, this + 576);
    *a2 = v4;
    *(a2 + 16) = *&v5[0];
    v4 = 0uLL;
    *(a2 + 24) = *(v5 + 8);
    *(a2 + 40) = *(&v5[1] + 1);
    memset(v5, 0, 32);
    *(a2 + 48) = 1;
    v6[0] = v5 + 1;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v6);
    v6[0] = &v4;
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

void sub_222962088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_22296211C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v21);
  __cxa_end_catch();
  JUMPOUT(0x222962144);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectDebugInformation snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectDebugInformation>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectDebugInformation&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<snlp::ssu::cache::SSUCacheObjectDebugInformation snlp::ssu::cache::SSUCacheFileReadStream::readObjectFromStream<snlp::ssu::cache::SSUCacheObjectDebugInformation>(void)::{lambda(snlp::ssu::cache::SSUCacheObjectDebugInformation&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_iarchive,std::__variant_detail::_Trait::text_iarchive> &>(void ***a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, v3, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::binary_iarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance(void)::t);
}

void itfm_inference_orchestrator::inference_engine::EspressoITFMModel::forward(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  NetworkConfig = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 48));
  v7 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 72));
  v8 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 144));
  v9 = snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(*(a1 + 8), (a1 + 96));
  nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor(a2, v47);
  nlv4_inference_orchestrator::inference_engine::utils::padEmbeddingTensor(v47, NetworkConfig, v7, (a1 + 16), &v43, *(a1 + 40));
  if (v43 == v44)
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor(a2 + 48, v40);
    nlv4_inference_orchestrator::inference_engine::utils::padSpanTensor(v40, NetworkConfig, v9, (a1 + 16), &v36, *(a1 + 40));
    if (v36 == v37)
    {
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
    }

    else
    {
      nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor(a2 + 96, v33);
      nlv4_inference_orchestrator::inference_engine::utils::padContextTensor(v33, v8, (a1 + 16), &v29, *(a1 + 40));
      if (v29 == v30)
      {
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
      }

      else
      {
        nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor(a2 + 144, v26);
        nlv4_inference_orchestrator::inference_engine::utils::padITFMMaskTensor(v26, NetworkConfig, (a1 + 16), &v22, *(a1 + 40));
        if (v22 == v23)
        {
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
        }

        else
        {
          memset(v14, 0, sizeof(v14));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v14, v43, v44, (v44 - v43) >> 3);
          memset(v15, 0, sizeof(v15));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v15, v45, v46, (v46 - v45) >> 2);
          memset(v16, 0, sizeof(v16));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v16, v36, v37, (v37 - v36) >> 3);
          memset(v17, 0, sizeof(v17));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v17, v38, v39, (v39 - v38) >> 2);
          memset(v18, 0, sizeof(v18));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v18, v29, v30, (v30 - v29) >> 3);
          memset(v19, 0, sizeof(v19));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v19, v31, v32, (v32 - v31) >> 2);
          memset(v20, 0, sizeof(v20));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v20, v22, v23, (v23 - v22) >> 3);
          memset(v21, 0, sizeof(v21));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v21, v24, v25, (v25 - v24) >> 2);
          itfm_inference_orchestrator::inference_engine::ITFMModule::forward(*(a1 + 8), v14, &v10);
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
          if (&v10 != a3)
          {
            std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a3, v10, v11, (v11 - v10) >> 3);
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 24), __p, v13, (v13 - __p) >> 2);
          }

          if (__p)
          {
            v13 = __p;
            operator delete(__p);
          }

          if (v10)
          {
            v11 = v10;
            operator delete(v10);
          }

          nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(v14);
        }

        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (v22)
        {
          v23 = v22;
          operator delete(v22);
        }

        if (v27)
        {
          v28 = v27;
          operator delete(v27);
        }

        if (v26[0])
        {
          v26[1] = v26[0];
          operator delete(v26[0]);
        }
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v33[0])
      {
        v33[1] = v33[0];
        operator delete(v33[0]);
      }
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v40[0])
    {
      v40[1] = v40[0];
      operator delete(v40[0]);
    }
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }
}

void sub_22296265C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(&a15);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a39);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a45);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a51);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(va);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v56 - 256));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v56 - 208));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v56 - 160));
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v56 - 112));
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::EspressoITFMModel::~EspressoITFMModel(void **this)
{
  itfm_inference_orchestrator::inference_engine::EspressoITFMModel::~EspressoITFMModel(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5508;
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void itfm_inference_orchestrator::inference_engine::EspressoITFMModel::EspressoITFMModel(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_2835E5508;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "component_name");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a3, __p);
  if (v5 && *(v5 + 16) == 4)
  {
    if (*(v5 + 63) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 16), v5[5], v5[6]);
    }

    else
    {
      v6 = *(v5 + 5);
      *(a1 + 32) = v5[7];
      *(a1 + 16) = v6;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>((a1 + 16), "UNDEFINED_COMPONENT");
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 40) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "max_num_utterance_embeddings");
  std::string::basic_string[abi:ne200100]<0>((a1 + 72), "utterance_tokens_embedder_emb_dim");
  std::string::basic_string[abi:ne200100]<0>((a1 + 96), "max_num_spans_tokens");
  std::string::basic_string[abi:ne200100]<0>((a1 + 120), "spans_pad_symbol_index");
  std::string::basic_string[abi:ne200100]<0>((a1 + 144), "max_num_context_tokens");
  std::string::basic_string[abi:ne200100]<0>((a1 + 168), "batch_size");
  operator new();
}

void sub_222962ABC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 8);
  *(v15 + 8) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void itfm_inference_orchestrator::inference_engine::ITFMModule::~ITFMModule(void **this)
{
  *this = &unk_2835E5580;
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5580;
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(this);
}

void snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(snlp::common::espresso_inference::pre_e5ml::EspressoModule *this)
{
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::~EspressoModule(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E55B8;
  espresso_plan_destroy();
  espresso_context_destroy();
  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(this + 40);
}

void *snlp::common::espresso_inference::pre_e5ml::EspressoModule::EspressoModule(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2835E55B8;
  std::unordered_map<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>::unordered_map((a1 + 5), a3);
  snlp::common::espresso_inference::pre_e5ml::EspressoModule::deserialiseModule(a1);
  return a1;
}

void snlp::common::espresso_inference::pre_e5ml::EspressoModule::deserialiseModule(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  context = espresso_create_context();
  a1[1] = context;
  if (!context)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not deserialise espresso context.");
    goto LABEL_33;
  }

  plan = espresso_create_plan();
  a1[2] = plan;
  if (!plan)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not create espresso plan.");
LABEL_33:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = espresso_plan_add_network();
  if (v4)
  {
    v12 = v4;
    v13 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v18, v12);
    v14 = std::string::insert(&v18, 0, "Could not set up espresso network. Got error status: ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v13, &buf);
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v18, "bolt_task_id");
  std::string::basic_string[abi:ne200100]<0>(&v17, "not_found");
  if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 5, &v18.__r_.__value_.__l.__data_))
  {
    v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 5, &v18.__r_.__value_.__l.__data_);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v5 + 16) == 4)
    {
      v6 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 5, &v18.__r_.__value_.__l.__data_);
      if (!v6)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (*(v6 + 16) != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      std::string::operator=(&v17, (v6 + 5));
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "component_name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a1 + 5, &buf.__r_.__value_.__l.__data_);
  if (v7 && *(v7 + 16) == 4)
  {
    if (*(v7 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v7[5], v7[6]);
    }

    else
    {
      __p = *(v7 + 5);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "UNDEFINED_COMPONENT");
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v8 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v10 = &v17;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v17.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = p_p;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] [model_task_id=%s]", &buf, 0x16u);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_222963200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::buildPlan(snlp::common::espresso_inference::pre_e5ml::EspressoModule *this)
{
  result = espresso_plan_build();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to build espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::executePlan(snlp::common::espresso_inference::pre_e5ml::EspressoModule *this)
{
  result = espresso_plan_execute_sync();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to execute espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::cleanPlan(snlp::common::espresso_inference::pre_e5ml::EspressoModule *this)
{
  result = espresso_plan_build_clean();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to clean up espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::getNetworkConfig(uint64_t a1, const void **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 40), a2))
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 40), a2);
    if (!v4)
    {
      goto LABEL_31;
    }

    if (*(v4 + 16) == 1)
    {
      v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 40), a2);
      if (v5)
      {
        if (*(v5 + 16) != 1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        return *(v5 + 10);
      }

LABEL_31:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "component_name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 40), __p);
  if (v7 && *(v7 + 16) == 4)
  {
    if (*(v7 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, v7[5], v7[6]);
    }

    else
    {
      v16 = *(v7 + 5);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, "UNDEFINED_COMPONENT");
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  std::operator+<char>();
  v8 = std::string::append(&v15, ".\n");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v19, "Note that only parameters of unsigned integer type are currently expected by SiriNaturalLanguageParsing.  This issue will likely cause SiriNaturalLanguageParsing to fail.");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v12 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = &v16;
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    v14 = __p;
    if (v18 < 0)
    {
      v14 = __p[0];
    }

    LODWORD(v19.__r_.__value_.__l.__data_) = 136315394;
    *(v19.__r_.__value_.__r.__words + 4) = v13;
    WORD2(v19.__r_.__value_.__r.__words[1]) = 2080;
    *(&v19.__r_.__value_.__r.__words[1] + 6) = v14;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "[%s] %s", &v19, 0x16u);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_222963678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::common::espresso_inference::pre_e5ml::EspressoModule::setInput(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = a3[3];
  espresso_buffer_pack_tensor_shape();
  v7 = 65568;
  result = espresso_network_bind_buffer();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v5);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_2229637C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void snlp::common::espresso_inference::pre_e5ml::EspressoModule::getOutput(uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 65568;
  if (espresso_network_bind_buffer())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v17);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = 0;
  espresso_buffer_unpack_tensor_shape();
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v13 = 0uLL;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, &v17, &v17 + 8 * v14, v14);
  v4 = __p;
  v5 = v15;
  *a3 = __p;
  v6 = v13;
  *(a3 + 8) = v13;
  if (v6 == v4)
  {
    v10 = 1;
  }

  else
  {
    if (((v6 - v4) >> 3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (v6 - v4) >> 3;
    }

    v8 = 1;
    do
    {
      v9 = *v4;
      v4 += 8;
      v8 *= v9;
      --v7;
    }

    while (v7);
    v10 = v8;
  }

  __p = 0;
  v13 = 0uLL;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v5, v5 + 4 * v10, v10);
  if ((a3 + 24) != &__p)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 24), __p, v13, (v13 - __p) >> 2);
  }

  free(v15);
  if (__p)
  {
    *&v13 = __p;
    operator delete(__p);
  }
}

void sub_2229639C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (*(v12 - 97) < 0)
  {
    operator delete(*(v12 - 120));
    if ((v11 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v10);
  goto LABEL_6;
}

void sub_222963AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2229646FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(v10);

  _Unwind_Resume(a1);
}

uint64_t SNLPAssetVersionChecks::getNLv4SupportedNCVNumbers@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[2] = xmmword_2229D5EF8;
  v2[3] = unk_2229D5F08;
  v2[4] = xmmword_2229D5F18;
  v2[5] = unk_2229D5F28;
  v2[0] = xmmword_2229D5ED8;
  v2[1] = unk_2229D5EE8;
  return std::unordered_set<unsigned int>::unordered_set(a1, v2, 24);
}

uint64_t SNLPAssetVersionChecks::getSSUSupportedNCVNumbers@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = xmmword_2229D29E0;
  return std::unordered_set<unsigned int>::unordered_set(a1, &v2, 4);
}

uint64_t SNLPAssetVersionChecks::getITFMSupportedNCVNumbers@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2[2] = xmmword_2229D5F58;
  v2[3] = unk_2229D5F68;
  v3[0] = xmmword_2229D5F78;
  *(v3 + 12) = *(&xmmword_2229D5F78 + 12);
  v2[0] = xmmword_2229D5F38;
  v2[1] = unk_2229D5F48;
  return std::unordered_set<unsigned int>::unordered_set(a1, v2, 23);
}

uint64_t nlv4_inference_orchestrator::trees::TagExpander::extractNumberOfNextTags(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 47);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = *(a1 + 32);
  }

  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = *(a1 + 95);
  if (v4 < 0)
  {
    v4 = *(a1 + 80);
  }

  std::string::basic_string(&__p, a2, v2, v3 + ~v4, &v10);
  v5 = std::stoi(&__p, 0, 10);
  v6 = (v5 & 0xFFFFFF00);
  v7 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6 | v7;
}

void nlv4_inference_orchestrator::trees::TagExpander::splitTagBySeparator(uint64_t a1, uint64_t *a2)
{
  __dst[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 23);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  v7 = 0uLL;
  v8 = 0;
  v9[0] = v5;
  if (v4 < 0)
  {
    v4 = v6;
  }

  v9[1] = v5 + v4;
  boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<std::__wrap_iter<char const*>>>(__dst, v9);
  boost::algorithm::split<std::vector<std::string>,std::string const&,boost::algorithm::detail::is_any_ofF<char>>(&v7, a2, __dst, 0);
}

void sub_222964B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

char *boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<std::__wrap_iter<char const*>>>(char *__dst, uint64_t a2)
{
  *__dst = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  *(__dst + 2) = v5 - v4;
  if ((v5 - v4) >= 0x11)
  {
    operator new[]();
  }

  if (v5 != v4)
  {
    memmove(__dst, v4, v5 - v4);
  }

  std::__sort<std::__less<char,char> &,char *>();
  return __dst;
}

void boost::algorithm::split<std::vector<std::string>,std::string const&,boost::algorithm::detail::is_any_ofF<char>>(__int128 *a1, uint64_t *a2, void *__src, int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = __src[2];
  __n = v5;
  __srca = 0;
  if (v5 < 0x11)
  {
    memcpy(&__srca, __src, v5);
    v30 = __n;
    v29[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v29, &__srca, __n);
      v9 = v30;
      __dst[0] = 0;
      if (v30 <= 0x10)
      {
        memcpy(__dst, v29, v30);
        v10 = a4;
        v24 = v9;
        v23[0] = 0;
        if (v9 < 0x11)
        {
          memcpy(v23, __dst, v9);
          v25 = a4;
          v18 = v24;
          v17[0] = 0;
          if (v24 < 0x11)
          {
            memcpy(v17, v23, v24);
            v19 = a4;
            v12 = v18;
            v11[0] = 0;
            if (v18 < 0x11)
            {
              memcpy(v11, v17, v18);
              v13 = a4;
              v15 = v12;
              v14[0] = 0;
              if (v12 < 0x11)
              {
                memcpy(v14, v11, v12);
                v16 = a4;
                v21 = v15;
                v20[0] = 0;
                if (v15 < 0x11)
                {
                  memcpy(v20, v14, v15);
                  v22 = a4;
                  v27 = v21;
                  v26[0] = 0;
                  if (v21 < 0x11)
                  {
                    memcpy(v26, v20, v21);
                    v28 = a4;
                    v30 = v27;
                    v29[0] = 0;
                    if (v27 < 0x11)
                    {
                      memcpy(v29, v26, v27);
                      v31 = a4;
                      operator new();
                    }

                    operator new[]();
                  }

                  operator new[]();
                }

                operator new[]();
              }

              operator new[]();
            }

            operator new[]();
          }

          operator new[]();
        }

        operator new[]();
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_22296546C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x223DC4D00](v66, 0x1012C405C87E9CELL, a3, a4, a5, a6, a7, a8);
  v74 = *(v72 - 176);
  if (v74)
  {
    MEMORY[0x223DC4CD0](v74, 0x1000C8077774924);
  }

  if (v65 >= 0x11)
  {
    v75 = *(v72 - 256);
    if (v75)
    {
      MEMORY[0x223DC4CD0](v75, 0x1000C8077774924);
    }
  }

  if (v71 >= 0x11 && a65)
  {
    MEMORY[0x223DC4CD0](a65, 0x1000C8077774924);
  }

  if (v70 >= 0x11 && a52)
  {
    MEMORY[0x223DC4CD0](a52, 0x1000C8077774924);
  }

  if (v69 >= 0x11 && a42)
  {
    MEMORY[0x223DC4CD0](a42, 0x1000C8077774924);
  }

  if (v68 >= 0x11 && a62)
  {
    MEMORY[0x223DC4CD0](a62, 0x1000C8077774924);
  }

  if (v67 >= 0x11 && STACK[0x240])
  {
    MEMORY[0x223DC4CD0](STACK[0x240], 0x1000C8077774924);
  }

  if (a11 >= 0x11 && a38)
  {
    MEMORY[0x223DC4CD0](a38, 0x1000C8077774924);
  }

  if (a12 >= 0x11)
  {
    if (a35)
    {
      MEMORY[0x223DC4CD0](a35, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::split_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v4 = *a2;
  if (*a2)
  {
    *a1 = v4;
    if (v4)
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    else
    {
      (*v4)(a2 + 8, a1 + 8, 0);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void (***boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char const*>>::increment(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*a1)
  {
    result = (*((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8))(a1 + 8, *(a1 + 48), v2);
    v2 = *(a1 + 56);
  }

  else
  {
    v4 = *(a1 + 56);
    result = v4;
  }

  v5 = result == v2 && v4 == v2;
  if (v5 && *(a1 + 40) == v2)
  {
    *(a1 + 64) = 1;
  }

  *(a1 + 32) = *(a1 + 48);
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  return result;
}

char *boost::detail::function::function_obj_invoker2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>,boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::invoke(const void ***a1, char *a2, char *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = (*a1)[2];
  v11 = v6;
  v10[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v10, v5, v6);
  v7 = a3;
  v8 = a3;
  if (a2 != a3)
  {
    v7 = a2;
    while (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v10, *v7))
    {
      if (++v7 == a3)
      {
        v7 = a3;
        break;
      }
    }

    v8 = v7;
  }

  if (v11 >= 0x11 && v10[0])
  {
    MEMORY[0x223DC4CD0](v10[0], 0x1000C8077774924);
  }

  if (v8 != a3)
  {
    if (!v5[6])
    {
      do
      {
        if (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v5, *v7))
        {
          break;
        }

        ++v7;
      }

      while (v7 != a3);
    }

    return v8;
  }

  return a3;
}

BOOL boost::algorithm::detail::is_any_ofF<char>::operator()<char>(void *a1, int a2)
{
  v2 = a1[2];
  if (v2 >= 0x11)
  {
    a1 = *a1;
    v3 = (a1 + v2);
  }

  else
  {
    v3 = (a1 + v2);
    if (!v2)
    {
      return a1 != v3 && *a1 <= a2;
    }
  }

  do
  {
    v4 = a1 + (v2 >> 1);
    v6 = *v4;
    v5 = v4 + 1;
    v7 = v2 >> 1;
    v2 += ~(v2 >> 1);
    if (v6 < a2)
    {
      a1 = v5;
    }

    else
    {
      v2 = v7;
    }
  }

  while (v2);
  return a1 != v3 && *a1 <= a2;
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manage(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (v5[2] >= 0x11uLL && *v5)
      {
        MEMORY[0x223DC4CD0](*v5, 0x1000C8077774924);
      }

      result = MEMORY[0x223DC4D00](v5, 0x1012C405C87E9CELL);
    }

LABEL_16:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != (0x80000002229D6624 & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, (0x80000002229D6624 & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_16;
    }
  }

  *a2 = *v4;
  return result;
}

void *snlp::ssu::candidate::operator<<(void *a1, uint64_t **a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "SSUAlternativeCandidateInfo[\n", 29);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "    generatedUtterance='", 24);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "',\n", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "    relevantIntents={\n", 22);
  v9 = a2[5];
  memset(v13, 0, 24);
  if (v9)
  {
    v10 = 0;
    v11 = v9;
    do
    {
      ++v10;
      v11 = *v11;
    }

    while (v11);
    v13[3] = v13;
    v14 = 0;
    std::vector<std::string>::__vallocate[abi:ne200100](v13, v10);
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(0, 0, 0, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  }]", 4);
  v15 = v13;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v15);
  return a1;
}

{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "SSUCandidate[\n", 14);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  originalUtterance='", 21);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "',\n", 3);
  if (*(a2 + 88) == 1)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  alternativeCandidateInfo=", 27);
    if ((a2[11] & 1) == 0)
    {
      goto LABEL_16;
    }

    v10 = snlp::ssu::candidate::operator<<(v9, a2 + 3);
    v11 = ",\n";
    v12 = 2;
  }

  else
  {
    v11 = "  alternativeCandidateInfo=<not alternative candidate>,\n";
    v10 = a1;
    v12 = 56;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  if (*(a2 + 184) != 1)
  {
    v15 = "  relatedEntity=<no related entity>\n";
    v14 = a1;
    v16 = 36;
    goto LABEL_15;
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  relatedEntity=", 16);
  if ((a2[23] & 1) == 0)
  {
LABEL_16:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v14 = snlp::ssu::proto::operator<<(v13, a2 + 12);
  v15 = "\n";
  v16 = 1;
LABEL_15:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  return a1;
}

void sub_222965DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::candidate::SSUCandidate::toString(uint64_t **this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  snlp::ssu::candidate::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v10);
}

void sub_2229660CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](v3 + 128);
  _Unwind_Resume(a1);
}

void snlp::ssu::espresso::SSUNessieModel::forward(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 528));
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SSUNessieModel Inference", "", buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN SSUNessieModel Inference", buf, 2u);
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v12 = *(a2 + 24);
  v13 = *(a2 + 5);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v14 = a2[3];
  v15 = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v9 = snlp::ssu::espresso::SSUNessieModel::validateModelInputs(a1, &v10);
  snlp::ssu::espresso::SSUNessieModel::buildPaddingMask(a1, &v14, v9);
}

void sub_22296641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a19);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v35 - 128));
  snlp::ssu::espresso::SSUNessieModuleInputs::~SSUNessieModuleInputs(va);
  std::mutex::unlock((v34 + 528));
  _Unwind_Resume(a1);
}

unint64_t *snlp::ssu::espresso::SSUNessieModel::buildModelOutputs@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v5 != 16)
  {
    v13 = v5 >> 3;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v44, v13);
    v15 = std::string::insert(&v44, 0, "SSUNessieModel moduleOutputs.encodings is of unexpected rank: expected=2, actual=");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v45);
    exception->__vftable = &unk_2835E9238;
  }

  v6 = result;
  v7 = v4[1];
  if (v7 != *result)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v41, v7);
    v18 = std::string::insert(&v41, 0, "SSUNessieModel moduleOutputs.encodings dimension (");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v42, ") does not match the expected dimension from config (");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, *v6);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v40;
    }

    else
    {
      v22 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v43, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v44, ")");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v17, &v45);
    v17->__vftable = &unk_2835E9238;
  }

  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *v4 * v7;
  if ((v8 - v9) >> 2 != v10)
  {
    v28 = (v8 - v9) >> 2;
    v29 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v41, v28);
    v30 = std::string::insert(&v41, 0, "SSUNessieModel moduleOutputs.encodings data size (");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v42, ") does not match the expected size implied by the shape (");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, v10);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v40;
    }

    else
    {
      v34 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v40.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v43, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v44, ")");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v29, &v45);
    v29->__vftable = &unk_2835E9238;
  }

  *a3 = v4;
  a3[1] = v3;
  v11 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a3[2] = v11;
  a3[3] = v9;
  v12 = *(a2 + 40);
  a3[4] = v8;
  a3[5] = v12;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_22296687C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v34)
  {
    __cxa_free_exception(v33);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::espresso::SSUNessieModuleInputs::~SSUNessieModuleInputs(snlp::ssu::espresso::SSUNessieModuleInputs *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

unint64_t snlp::ssu::espresso::SSUNessieModel::validateModelInputs(unint64_t *a1, unint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 != 16)
  {
    v40 = v3 >> 3;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v87, v40);
    v42 = std::string::insert(&v87, 0, "SSUNessieModel modelInputs.tokenIds is of unexpected rank: expected=2, actual=");
    v43 = *&v42->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v88);
    exception->__vftable = &unk_2835E9238;
  }

  result = *v2;
  v7 = a2[6];
  v6 = a2[7];
  v8 = v6 - v7;
  if (*v2 != v6 - v7)
  {
    v44 = *v2;
    v45 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v84, v44);
    v46 = std::string::insert(&v84, 0, "SSUNessieModel batch size implied by modelInputs.tokenIds (");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v85, ") does not match batch size implied by modelInputs.utteranceLengths (");
    v49 = *&v48->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v83, v8 >> 3);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v83;
    }

    else
    {
      v50 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v83.__r_.__value_.__l.__size_;
    }

    v52 = std::string::append(&v86, v50, size);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = std::string::append(&v87, ")");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v45, &v88);
    v45->__vftable = &unk_2835E9238;
  }

  if (result < a1[2] || result > a1[3])
  {
    v22 = *v2;
    v23 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v82, v22);
    v24 = std::string::insert(&v82, 0, "SSUNessieModel batch size (");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v83, ") not in valid range [");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v84.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v84.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v81, a1[2]);
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v81;
    }

    else
    {
      v28 = v81.__r_.__value_.__r.__words[0];
    }

    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v81.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v84, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v85, ", ");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v80, a1[3]);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v80;
    }

    else
    {
      v34 = v80.__r_.__value_.__r.__words[0];
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v80.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v86, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v87, "]");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v23, &v88);
    v23->__vftable = &unk_2835E9238;
  }

  v9 = v2[1];
  if (v9 != a1[1])
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v84, v9);
    v57 = std::string::insert(&v84, 0, "SSUNessieModel sequence length implied by modelInputs.tokenIds (");
    v58 = *&v57->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = std::string::append(&v85, ") must be equal to the max sequence length from model config (");
    v60 = *&v59->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v83, a1[1]);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v83;
    }

    else
    {
      v61 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = v83.__r_.__value_.__l.__size_;
    }

    v63 = std::string::append(&v86, v61, v62);
    v64 = *&v63->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    v65 = std::string::append(&v87, ")");
    v66 = *&v65->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v56, &v88);
    v56->__vftable = &unk_2835E9238;
  }

  if ((a2[4] - a2[3]) >> 2 != v9 * result)
  {
    v67 = v9 * result;
    v68 = (a2[4] - a2[3]) >> 2;
    v69 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v84, v68);
    v70 = std::string::insert(&v84, 0, "SSUNessieModel modelInputs.tokenIds data size (");
    v71 = *&v70->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    v72 = std::string::append(&v85, ") does not match the expected size implied by the shape (");
    v73 = *&v72->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v73;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v83, v67);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v83;
    }

    else
    {
      v74 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v75 = v83.__r_.__value_.__l.__size_;
    }

    v76 = std::string::append(&v86, v74, v75);
    v77 = *&v76->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    v78 = std::string::append(&v87, ")");
    v79 = *&v78->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v69, &v88);
    v69->__vftable = &unk_2835E9238;
  }

  while (v7 != v6)
  {
    if (*v7 - 1 >= v9)
    {
      v10 = *v7;
      v11 = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v84, v10);
      v12 = std::string::insert(&v84, 0, "SSUNessieModel modelInputs.utteranceLengths contains a value (");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = std::string::append(&v85, ") outside the valid range [1, ");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v86.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v86.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v83, a1[1]);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v83;
      }

      else
      {
        v16 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v83.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v86, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v87.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v87.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v87, "]");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v11, &v88);
      v11->__vftable = &unk_2835E9238;
    }

    ++v7;
  }

  return result;
}

void sub_22296720C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v49 - 57) < 0)
  {
    operator delete(*(v49 - 80));
  }

  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v47)
  {
    __cxa_free_exception(v48);
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::espresso::SSUNessieModel::buildPaddingMask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  *buf = a3;
  v8 = v4;
  v6 = 0;
  v5 = 0uLL;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v5, buf, v9, 2uLL);
}

void sub_22296766C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *uaap::DDUsoMapper::mapDateTimeByHandlers(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *result;
  if (result[1] != *result)
  {
    v10 = result;
    v11 = 0;
    do
    {
      result = (*(**(v5 + 8 * v11) + 16))(*(v5 + 8 * v11), a2, a3, a4, a5);
      ++v11;
      v5 = *v10;
    }

    while (v11 < (v10[1] - *v10) >> 3);
  }

  return result;
}

void uaap::DDUsoMapper::flattenToDDSpans(uint64_t a1, __DDResult *a2, float *a3)
{
  v5 = a2;
  Type = DDResultGetType();
  if (CFEqual(Type, @"DateTime"))
  {
    operator new();
  }

  if (CFEqual(Type, @"TimeDuration"))
  {
    operator new();
  }

  if (CFEqual(Type, @"TimeSpanWithReference"))
  {
    operator new();
  }

  if (CFEqual(Type, @"DateSpanWithReference"))
  {
    operator new();
  }

  if (CFEqual(Type, @"Time") || CFEqual(Type, @"TimeSpan"))
  {
    std::make_unique[abi:ne200100]<uaap::UPDDTimeSpan,__DDResult *&,0>(&v4, &v5);
  }

  if (!CFEqual(Type, @"Date") && !CFEqual(Type, @"DateSpan"))
  {
    std::make_unique[abi:ne200100]<uaap::UPDDSpan,__DDResult *&,0>(&v4, &v5);
  }

  std::make_unique[abi:ne200100]<uaap::UPDDDateSpan,__DDResult *&,0>(&v4, &v5);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<std::unique_ptr<uaap::UPDDSpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void std::vector<std::unique_ptr<uaap::UPDDSpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uaap::UPDDSpan *uaap::UPDDSpan::UPDDSpan(uaap::UPDDSpan *this, __DDResult *a2, const __CFString *a3)
{
  Range = DDResultGetRange();
  v7 = v6;
  Type = DDResultGetType();

  return uaap::UPDDSpan::UPDDSpan(this, Type, a3, Range, v7 + Range);
}

uaap::UPDDSpan *uaap::UPDDSpan::UPDDSpan(uaap::UPDDSpan *this, const __CFString *a2, const __CFString *a3, int a4, int a5)
{
  *this = &unk_2835E5AB0;
  Copy = CFStringCreateCopy(0, a2);
  v10 = MEMORY[0x277CBE550];
  *(this + 1) = Copy;
  *(this + 2) = v10;
  v11 = CFStringCreateCopy(0, a3);
  v12 = MEMORY[0x277CBE550];
  *(this + 3) = v11;
  *(this + 4) = v12;
  *(this + 10) = a4;
  *(this + 11) = a5;
  return this;
}

void sub_222968300(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    (*(v1 + 16))();
  }

  _Unwind_Resume(exception_object);
}

void uaap::UPDDSpan::~UPDDSpan(uaap::UPDDSpan *this)
{
  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5AB0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(this + 4))();
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(this + 2))();
  }
}

BOOL uaap::DDUsoMapper::toItemizedUsos(uint64_t *a1, CFArrayRef theArray, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  if (CFArrayGetCount(theArray) >= 1)
  {
    CFArrayGetValueAtIndex(theArray, 0);
    operator new();
  }

  return a3[1] - *a3 > (v5 - v6);
}

void sub_2229684CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::unordered_map<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::unordered_map<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v7 = (v3 + 24);
        std::vector<std::unique_ptr<uaap::UPDDSpan>>::__destroy_vector::operator()[abi:ne200100](&v7);
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x223DC4D00](v2, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void sub_222968630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::unordered_map<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_222968730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::unique_ptr<std::vector<std::unique_ptr<siri::ontology::UsoGraph>>>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<std::unordered_map<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<std::vector<std::unique_ptr<siri::ontology::UsoGraph>>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::unique_ptr<siri::ontology::UsoGraph>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x223DC4D00](v2, 0x20C40960023A9);
  }

  return a1;
}

void std::vector<std::unique_ptr<siri::ontology::UsoGraph>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *--v4;
        *v4 = 0;
        if (v6)
        {
          v7 = MEMORY[0x223DC42A0]();
          MEMORY[0x223DC4D00](v7, 0x10A0C403D23BABBLL);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void uaap::DDUsoMapper::getSpanRangeFromUtteranceAlignments(uaap::DDUsoMapper *this@<X0>, uint64_t a2@<X8>)
{
  siri::ontology::oname::graph::ontology_init::Argument_entity(this);
  siri::ontology::UsoGraph::getSuccessors();
  v3 = __p;
  v4 = v14;
  if (__p == v14)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 16) = 0;
    goto LABEL_10;
  }

  v5 = MEMORY[0x277D5F628];
  while (1)
  {
    if (v6)
    {
      if (*(v6 + 7) != *(v6 + 8))
      {
        break;
      }
    }

LABEL_8:
    if (++v3 == v4)
    {
      goto LABEL_9;
    }
  }

  UtteranceAlignment = siri::ontology::UsoEntityNode::getUtteranceAlignment(v6);
  siri::ontology::UsoUtteranceAlignment::getSpans(&v11, UtteranceAlignment);
  v8 = v11;
  if (v12 == v11)
  {
    if (v12)
    {
      v12 = v11;
      operator delete(v11);
    }

    goto LABEL_8;
  }

  v9 = **v11;
  v10 = (*v11)[1] - v9;
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = 1;
  v12 = v8;
  operator delete(v8);
LABEL_10:
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_22296898C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::espresso_inference::e5ml::MILCompiler::~MILCompiler(void **this)
{
  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 88) == 1)
  {
    if (*(this + 79) < 0)
    {
      operator delete(this[7]);
    }

    if (*(this + 55) < 0)
    {
      operator delete(this[4]);
    }

    if (*(this + 31) < 0)
    {
      operator delete(this[1]);
    }
  }
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

void snlp::common::selflogging::NLXSchemaNLXClientEventMetadata::~NLXSchemaNLXClientEventMetadata(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(uint64_t a1, std::string *a2, uint64_t a3, int *a4, __int128 *a5)
{
  return snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(a1, a2, a3, a4, a1, a5);
}

{
  return snlp::common::espresso_inference::e5ml::EspressoE5MLModule::EspressoE5MLModule(a1, a2, a3, a4, a1, a5);
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<E5RT::BufferObject  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC4D00);
}

void snlp::common::espresso_inference::e5ml::WeightsHandler::throwInconsistentPortDataTypeError(uint64_t a1, const void **a2, unsigned int *a3, unsigned int *a4)
{
  if (!std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::find<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>((a1 + 40), *a3) || !std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::find<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>((a1 + 40), *a4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v41);
    exception->__vftable = &unk_2835E9238;
  }

  std::string::basic_string[abi:ne200100]<0>(&v41, "Inconsistent data type for port ");
  std::string::basic_string[abi:ne200100]<0>(v39, ". Found weight type ");
  std::string::basic_string[abi:ne200100]<0>(v37, ", but the already-recorded weights type for this port was ");
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, &v41.__r_.__value_.__l.__data_, a2);
  if ((v40 & 0x80u) == 0)
  {
    v9 = v39;
  }

  else
  {
    v9 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v10 = v40;
  }

  else
  {
    v10 = v39[1];
  }

  v11 = std::string::append(&v31, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::unordered_map<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>::at((a1 + 40), *a4);
  v14 = *(v13 + 23);
  if (v14 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = *v13;
  }

  if (v14 >= 0)
  {
    v16 = *(v13 + 23);
  }

  else
  {
    v16 = v13[1];
  }

  v17 = std::string::append(&v32, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if ((v38 & 0x80u) == 0)
  {
    v19 = v37;
  }

  else
  {
    v19 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v20 = v38;
  }

  else
  {
    v20 = v37[1];
  }

  v21 = std::string::append(&v33, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::unordered_map<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>::at((a1 + 40), *a3);
  v24 = *(v23 + 23);
  if (v24 >= 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = *v23;
  }

  if (v24 >= 0)
  {
    v26 = *(v23 + 23);
  }

  else
  {
    v26 = v23[1];
  }

  v27 = std::string::append(&v34, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v36 = v27->__r_.__value_.__r.__words[2];
  v35 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v29 = __cxa_allocate_exception(0x10uLL);
  if (v36 >= 0)
  {
    v30 = &v35;
  }

  else
  {
    v30 = v35;
  }

  std::string::basic_string[abi:ne200100]<0>(&v34, v30);
  std::runtime_error::runtime_error(v29, &v34);
  v29->__vftable = &unk_2835E9238;
}

void sub_222968E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v43 & 1) == 0)
    {
LABEL_6:
      if (a42 < 0)
      {
        operator delete(a37);
      }

      if (*(v44 - 97) < 0)
      {
        operator delete(*(v44 - 120));
      }

      if (*(v44 - 73) < 0)
      {
        operator delete(*(v44 - 96));
      }

      if (*(v44 - 49) < 0)
      {
        operator delete(*(v44 - 72));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v42);
  goto LABEL_6;
}

uint64_t *std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::find<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::unordered_map<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>::at(void *a1, int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::find<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>(a1, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

void snlp::ssu::parse::SSUGraphBuilder::graphBuilderForAppCategory(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      operator new();
    }

    if (*(a1 + 32))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v7, *(a1 + 32));
      v5 = std::string::insert(&v7, 0, "Could not build a graph builder for unhandled category: %u");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v8.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v8.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v8);
      exception->__vftable = &unk_2835E9238;
    }
  }

  operator new();
}

void sub_2229691E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void snlp::ssu::parse::SSUGraphBuilder::addUtteranceSubgraph(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  siri::ontology::oname::graph::ontology_init::common_VoiceCommand(a1);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  siri::ontology::oname::graph::ontology_init::Argument_reference(EntityNode);
  siri::ontology::UsoGraphNode::setSuccessor();
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a5, *(a5 + 8));
  }

  else
  {
    v17 = *a5;
  }

  v18 = 1;
  StringNode = siri::ontology::UsoGraph::createStringNode();
  if (v18 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  siri::ontology::oname::graph::ontology_init::Argument_name(StringNode);
  siri::ontology::UsoGraphNode::setSuccessor();
  (*(*a1 + 24))(&v16, a1, a4);
  siri::ontology::UsoEntityNode::addIdentifier();
  std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](&v16);
  if (*(a6 + 24) == 1)
  {
    snlp::ssu::parse::SSUGraphBuilder::buildClosestPositiveIdentifier(a1);
  }

  v12 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "No closest positive plaintext example available -- skipping attaching USO identifier", &v17, 2u);
  }

  Utf16Length = snlp::common::utilities::getUtf16Length(a5);
  UnicodeScalarLength = snlp::common::utilities::getUnicodeScalarLength(a5);
  if ((Utf16Length & 0x100000000) != 0 && (UnicodeScalarLength & 0x100000000) != 0)
  {
    siri::ontology::UsoEntityNode::addUtteranceAlignment();
  }

  else
  {
    v15 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "Could not compute utterance alignment boundary due to Unicode issue. Not adding alignment.", &v17, 2u);
    }
  }
}

uint64_t snlp::ssu::parse::SSUGraphBuilder::addPayloadSubgraph(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  siri::ontology::oname::graph::ontology_init::common_VoiceCommandPayload(a1);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  siri::ontology::oname::graph::ontology_init::Argument_payload(EntityNode);
  v6 = siri::ontology::UsoGraphNode::setSuccessor();
  siri::ontology::oname::graph::ontology_init::common_AppEntity(v6);
  v7 = siri::ontology::UsoGraph::createEntityNode();
  siri::ontology::oname::graph::ontology_init::Argument_appEntity(v7);
  siri::ontology::UsoGraphNode::setSuccessor();
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a4, *(a4 + 8));
  }

  else
  {
    v10 = *a4;
  }

  v11 = 1;
  StringNode = siri::ontology::UsoGraph::createStringNode();
  if (v11 == 1 && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  siri::ontology::oname::graph::ontology_init::Argument_name(StringNode);
  result = siri::ontology::UsoGraphNode::setSuccessor();
  if (*(a4 + 40) != *(a4 + 48))
  {
    operator new();
  }

  return result;
}

void sub_2229698D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 72) == 1 && *(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DC4D00](v2, 0x1012C40071C2685);
  }

  return a1;
}

void sub_222969AC4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x223DC4D00](v25, 0x1012C40071C2685, a3, a4, a5, a6, a7, a8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer itfm_inference_orchestrator::utilities::ITFMFeatureStoreUtilities::getITFMExecutedHandcraftedRules@<X0>(__int128 **a1@<X0>, sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules *a2@<X8>)
{
  sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::ITFMExecutedHandcraftedRules(a2);
  result = sirinluinternalsnlp_intermediate::ITFMExecutedHandcraftedRules::makeRules(a2);
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    v7 = *(a2 + 2);
    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24))
    {
      result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v7 + 8, v5);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v7 + 8, v5);
      result = v8 + 1;
    }

    *(v7 + 16) = result;
    v5 = (v5 + 24);
  }

  return result;
}

void uaap::toUTF8String(const __CFString *this)
{
  Length = CFStringGetLength(this);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

void sub_222969D8C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  MEMORY[0x223DC4CD0](v2, v1);
  _Unwind_Resume(a1);
}

uaap *uaap::searchDDTreeWithType(uaap *this, __DDResult *a2, const __CFString *a3)
{
  v3 = this;
  if (this)
  {
    Type = DDResultGetType();
    if (!CFEqual(Type, a2))
    {
      SubResults = DDResultGetSubResults();
      if (SubResults && (v7 = SubResults, (Count = CFArrayGetCount(SubResults)) != 0))
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
          v13 = uaap::searchDDTreeWithType(ValueAtIndex, a2, v12);
          if (v13)
          {
            break;
          }

          if (v9 == ++v10)
          {
            return 0;
          }
        }

        return v13;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

void sub_222969F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::selflogging::convertCacheTriggerReason(uint64_t a1)
{
  v1 = a1;
  v5 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
    v2 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, "Unhandled SSUCacheTriggerReason case: %d. Defaulting to UNKNOWN.", v4, 8u);
    }

    return 0;
  }

  return v1;
}

uint64_t snlp::ssu::selflogging::convertCategoryType(unsigned int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1 < 4)
  {
    return (a1 + 1);
  }

  v3 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_ERROR, "Unhandled SSUCategoryType case: %d. Defaulting to UNKNOWN.", v4, 8u);
  }

  return 0;
}

uint64_t snlp::ssu::selflogging::convertUtteranceCandidateType(uint64_t a1)
{
  v1 = a1;
  v5 = *MEMORY[0x277D85DE8];
  if (a1 >= 3)
  {
    v2 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, "Unhandled SSUUtteranceCandidateType case: %d. Defaulting to UNKNOWN.", v4, 8u);
    }

    return 0;
  }

  return v1;
}

id snlp::ssu::selflogging::convertUserRequestMatchInfo(unsigned int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D59178]);
  [v2 setMatchingUtteranceCandidateType:snlp::ssu::selflogging::convertUtteranceCandidateType(*a1)];
  [v2 setNumEntities:a1[1]];

  return v2;
}

id snlp::ssu::selflogging::convertUserRequestCacheEntryInfo(unsigned int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D59158]);
  [v2 setTriggerReason:snlp::ssu::selflogging::convertCacheTriggerReason(*a1)];
  [v2 setCategoryType:snlp::ssu::selflogging::convertCategoryType(*(a1 + 4))];
  [v2 setNumEncodingSimilarityScoreComparisons:a1[2]];
  if (*(a1 + 24) == 1)
  {
    [v2 setClosestNegativeExampleScore:*(a1 + 2)];
  }

  if (*(a1 + 40) == 1)
  {
    [v2 setClosestPositiveExampleScore:*(a1 + 4)];
  }

  if (*(a1 + 56) == 1)
  {
    v3 = snlp::ssu::selflogging::convertUserRequestMatchInfo(a1 + 12);
    [v2 setMatchInfo:v3];
  }

  return v2;
}

uint64_t snlp::ssu::selflogging::convertBackgroundUpdateType(uint64_t a1)
{
  v1 = a1;
  v5 = *MEMORY[0x277D85DE8];
  if (a1 >= 5)
  {
    v2 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, "Unhandled SSUBackgroundUpdateType case: %d. Defaulting to UNKNOWN.", v4, 8u);
    }

    return 0;
  }

  return v1;
}

uint64_t snlp::ssu::selflogging::convertCacheAction(uint64_t a1)
{
  v1 = a1;
  v5 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
    v2 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, "Unhandled SSUCacheAction case: %d. Defaulting to UNKNOWN.", v4, 8u);
    }

    return 0;
  }

  return v1;
}

id snlp::ssu::selflogging::convertBackgroundUpdateAppCategoryInfo(char *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D59128]);
  if (a1[1] == 1)
  {
    [v2 setCategoryType:snlp::ssu::selflogging::convertCategoryType(*a1)];
  }

  [v2 setNumAppExamplesPositive:*(a1 + 1)];
  [v2 setNumAppExamplesNegative:*(a1 + 2)];
  [v2 setCacheAction:snlp::ssu::selflogging::convertCacheAction(*(a1 + 3))];

  return v2;
}

id snlp::ssu::selflogging::convertBackgroundUpdateAppInfo(char **this, const snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo *a2)
{
  v3 = objc_alloc_init(MEMORY[0x277D59130]);
  if (*(this + 23) >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = *this;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  [v3 setAppBundleIdSaltedHash:v5];

  [v3 setNumCacheFilesRemoved:*(this + 6)];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = this[4];
  v8 = this[5];
  while (v7 != v8)
  {
    v9 = snlp::ssu::selflogging::convertBackgroundUpdateAppCategoryInfo(v7);
    [v6 addObject:v9];

    v7 += 16;
  }

  [v3 setCategoryInfos:v6];

  return v3;
}

void sub_22296B250(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  nlv4_inference_orchestrator::orchestration::EmbedderResponse::~EmbedderResponse(&a69);
  if (a2 == 1)
  {
    v77 = __cxa_begin_catch(a1);
    if (a13)
    {
      v78 = MEMORY[0x277CCACA8];
      (*(*v77 + 16))(v77);
      v79 = [v78 stringWithFormat:@"Hit SNLP exception while calling SNLPEmbedder::getEmbeddings : %s "];
      v80 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA470];
      a65 = *MEMORY[0x277CCA450];
      a66 = v81;
      a67 = v79;
      a68 = v79;
      v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a67 forKeys:&a65 count:2];
      *a13 = [v80 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:v82];
    }

    __cxa_end_catch();
    JUMPOUT(0x22296B188);
  }

  nlv4_inference_orchestrator::orchestration::EmbedderRequest::~EmbedderRequest(&a31);
  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  a69 = &a62;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a69);

  _Unwind_Resume(a1);
}

uint64_t std::vector<nlv4_inference_orchestrator::orchestration::Token>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::Token>(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>(v5);
  }

  v6 = 112 * v2;
  *(&v17 + 1) = 0;
  v7 = *a2;
  *(v6 + 16) = *(a2 + 2);
  *v6 = v7;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v8 = *(a2 + 24);
  *(v6 + 35) = *(a2 + 35);
  *(v6 + 24) = v8;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0;
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 9);
  *(a2 + 56) = 0uLL;
  *(a2 + 9) = 0;
  v9 = a2[6];
  *(v6 + 80) = a2[5];
  *(v6 + 96) = v9;
  *&v17 = 112 * v2 + 112;
  v10 = *(a1 + 8);
  v11 = 112 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>,nlv4_inference_orchestrator::orchestration::Token*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v17;
  *(a1 + 8) = v17;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v16[0] = v12;
  v16[1] = v12;
  std::__split_buffer<nlv4_inference_orchestrator::orchestration::Token>::~__split_buffer(v16);
  return v15;
}

void nlv4_inference_orchestrator::orchestration::Token::~Token(void **this)
{
  v2 = this + 7;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void nlv4_inference_orchestrator::orchestration::EmbedderRequest::~EmbedderRequest(void **this)
{
  v2 = this + 6;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_22296BEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  a12 = &STACK[0x230];
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void sub_22296C5A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  MEMORY[0x223DC4D00](v41, 0x10B2C401347FB16, a3, a4, a5, a6, a7, a8);
  if (a2 == 1)
  {
    v45 = __cxa_begin_catch(a1);
    v46 = MEMORY[0x277CCACA8];
    (*(*v45 + 16))(v45);
    v47 = [v46 stringWithFormat:@"NLv4 Asset Error when creating the OWL orchestrator: %s"];
    v48 = v47;
    if (v40)
    {
      v49 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA470];
      *(v42 - 120) = *MEMORY[0x277CCA450];
      *(v42 - 112) = v50;
      *(v42 - 104) = v47;
      *(v42 - 96) = v47;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 - 104 forKeys:v42 - 120 count:2];
      *v40 = [v49 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:3 userInfo:v51];
    }

    __cxa_end_catch();
    JUMPOUT(0x22296C50CLL);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void sub_22296CA8C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  MEMORY[0x223DC4D00](v29, 0x10B2C401347FB16, a3, a4, a5, a6, a7, a8);
  if (a2 == 2)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = MEMORY[0x277CCACA8];
    (*(*v33 + 16))(v33);
    v35 = [v34 stringWithFormat:@"Hit SNLP exception while constructing OWL orchestrator with asset directory %@: %s"];
    v36 = v35;
    if (v28)
    {
      v37 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA470];
      a21 = *MEMORY[0x277CCA450];
      a22 = v38;
      a23 = v35;
      a24 = v35;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a23 forKeys:&a21 count:2];
      *v28 = [v37 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:v39];
    }

    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      if (a18 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }

    v40 = __cxa_begin_catch(a1);
    v41 = MEMORY[0x277CCACA8];
    (*(*v40 + 16))(v40);
    v42 = [v41 stringWithFormat:@"NLv4 Asset Error when creating the OWL orchestrator: %s"];
    v43 = v42;
    if (v28)
    {
      v44 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA470];
      a25 = *MEMORY[0x277CCA450];
      a26 = v45;
      *(v30 - 88) = v42;
      *(v30 - 80) = v42;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 - 88 forKeys:&a25 count:2];
      *v28 = [v44 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:3 userInfo:v46];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x22296CA38);
}

void sub_22296D0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::nlv4_response_manipulations::UserAcceptedModification::matchingSpansContainsGenericConfirmationYes(uint64_t a1, uint64_t *a2)
{
  v29[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v20, "genericConfirmation");
  std::string::basic_string[abi:ne200100]<0>(v22, "CONFIRM_CONTACT");
  std::string::basic_string[abi:ne200100]<0>(v23, "CONFIRMATION_YES");
  std::string::basic_string[abi:ne200100]<0>(v24, "OK");
  std::string::basic_string[abi:ne200100]<0>(v25, "YES");
  std::string::basic_string[abi:ne200100]<0>(v26, "YES_GENERIC");
  std::string::basic_string[abi:ne200100]<0>(v27, "YES_OK");
  std::string::basic_string[abi:ne200100]<0>(v28, "YES_SHORT");
  std::string::basic_string[abi:ne200100]<0>(v29, "yes");
  std::unordered_set<std::string>::unordered_set(__p, v22, 8);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v29[i + 2]) < 0)
    {
      operator delete(v29[i]);
    }
  }

  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *(v4 + 48);
      if (v6)
      {
        v7 = *(v4 + 56);
        if (v7)
        {
          if ((v21 & 0x80u) == 0)
          {
            v8 = v21;
          }

          else
          {
            v8 = v20[1];
          }

          v9 = *(v6 + 23);
          v10 = v9;
          if ((v9 & 0x80u) != 0)
          {
            v9 = *(v6 + 8);
          }

          if (v8 == v9)
          {
            if ((v21 & 0x80u) == 0)
            {
              v11 = v20;
            }

            else
            {
              v11 = v20[0];
            }

            if (v10 >= 0)
            {
              v12 = *(v4 + 48);
            }

            else
            {
              v12 = *v6;
            }

            v13 = memcmp(v11, v12, v8);
            v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(__p, v7);
            if (v13)
            {
              v15 = 1;
            }

            else
            {
              v15 = v14 == 0;
            }

            if (!v15)
            {
              v18 = 1;
              goto LABEL_28;
            }
          }

          else
          {
            std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(__p, *(v4 + 56));
          }
        }
      }

      v4 += 88;
    }

    while (v4 != v5);
  }

  v18 = 0;
LABEL_28:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(__p[2]);
  v16 = __p[0];
  __p[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  return v18;
}

void sub_22296D338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  v23 = (v21 + 191);
  v24 = -192;
  v25 = v23;
  while (1)
  {
    v26 = *v25;
    v25 -= 24;
    if (v26 < 0)
    {
      operator delete(*(v23 - 23));
    }

    v23 = v25;
    v24 += 24;
    if (!v24)
    {
      if (a20 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t snlp::ssu::trigger::SSUTriggerOnScreen::isTriggered(snlp::ssu::trigger::SSUTriggerOnScreen *this, const snlp::ssu::proto::SSUValidatedRequest *a2)
{
  snlp::ssu::proto::SSUValidatedRequest::getOnScreenSalientEntityAppBundleIds(a2, &v14);
  v3 = v14;
  v4 = v15;
  if (v14 != v15)
  {
    v7 = *(this + 1);
    v6 = this + 8;
    v5 = v7;
    v8 = v6[23];
    if (v8 >= 0)
    {
      v9 = v6[23];
    }

    else
    {
      v9 = *(v6 + 1);
    }

    if (v8 < 0)
    {
      v6 = v5;
    }

    while (1)
    {
      v10 = *(v3 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v3 + 8);
      }

      if (v10 == v9)
      {
        v12 = v11 >= 0 ? v3 : *v3;
        if (!memcmp(v12, v6, v9))
        {
          break;
        }
      }

      v3 += 24;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  v16 = &v14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v16);
  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return 0x100000002;
  }
}

void snlp::ssu::trigger::SSUTriggerOnScreen::~SSUTriggerOnScreen(void **this)
{
  *this = &unk_2835E57B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E57B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

__n128 snlp::ssu::trigger::SSUTriggerOnScreen::SSUTriggerOnScreen(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2835E57B0;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2835E57B0;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

void snlp::ssu::similarity::SSUSimilarityScore::computeSimilarity(uint64_t **a2@<X2>, _BYTE *a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "batch");
  snlp::ssu::utilities::validateTensorRank(2uLL, a2, a4);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if ((a4[24] & 1) == 0)
  {
    v6 = *a2;
    v7 = a2[1] - *a2;
    if (v7)
    {
      if (v7 > 8)
      {
        v8 = v6[1];
        v11[0] = *v6;
        v11[1] = v8;
        __p[1] = 0;
        v10 = 0;
        __p[0] = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, v11, &v12, 2uLL);
      }

      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }
}

void sub_22296E3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::buildSNLCOverrideITFMResponse(int *a1@<X0>, sirinluinternalitfm::ITFMParserResponse *a2@<X8>)
{
  sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(v8);
  v4 = *a1;
  v11 |= 3u;
  v9 = v4;
  v10 = 1065353216;
  v5 = v4 != 1;
  sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(v6);
  v7 |= 3u;
  v6[4] = v5;
  v6[5] = 0;
  sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(a2);
  PB::PtrVector<sirinluinternalitfm::ITFMHypothesis>::emplace_back<sirinluinternalitfm::ITFMHypothesis&>(a2 + 8, v8);
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const(&)[35]>(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
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
  std::string::basic_string[abi:ne200100]<0>((24 * v2), a2);
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

void snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::legacyNLContextOverride(uint64_t a1@<X0>, _BYTE *a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[56] = 0;
  if ((*(a1 + 72) & 8) == 0 || *(a1 + 70) != 1)
  {
    goto LABEL_15;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    if (v3[1] != 11)
    {
LABEL_15:
      LODWORD(v3) = 0;
      goto LABEL_16;
    }

    v3 = *v3;
  }

  else if (v4 != 11)
  {
    goto LABEL_15;
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  LODWORD(v3) = v5 == 0x74616C736E617274 && v6 == 0x6E6F6974616C736ELL;
LABEL_16:
  if ((*(a1 + 68) & ((*(a1 + 72) & 2) >> 1) | v3))
  {
    v8 = 0;
    snlc_inference_orchestrator::orchestration::SNLCOverrideGenerator::buildSNLCOverrideITFMResponse(&v8, buf);
  }
}

void sub_22296E9F8(_Unwind_Exception *a1, uint64_t a2, std::__split_buffer<std::string> *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  std::__split_buffer<std::string>::~__split_buffer(&a11);
  if (*(v11 + 56) == 1)
  {
    MEMORY[0x223DC3310](v11);
  }

  _Unwind_Resume(a1);
}

void *uaap::TimeDurationHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::mapDurationToItemizedUsos(a3, a4);
  }

  return result;
}

void *uaap::mapDurationToItemizedUsos(uint64_t a1, uint64_t a2)
{
  v4 = CFHash(@"TimeDuration");
  v5 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v4);
  v6 = v5[3];
  {
    operator new();
  }

  uaap::mapTimeSpansToItemizedUsos(a1, a2);
  return uaap::mapTimeSpanSpansToItemizedUsos(a1, a2);
}

void sub_22296EC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x223DC4D00](v4, v3);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

siri::ontology::oname::graph::ontology_init *uaap::TimeDurationHandler::resolveDurationGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeDurationSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v3 = this;
    siri::ontology::oname::graph::ontology_init::common_DateTimeRange(this);
    EntityNode = siri::ontology::UsoGraph::createEntityNode();
    uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, v3, v5);
  }

  return this;
}

uaap::AbstractDateTimeHandler *uaap::TimeDurationHandler::resolveOffsetReferenceWithDirection(siri::ontology::oname::graph::ontology_init **a1, uaap::UPDDTimeSpan *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if ((a1[6] == 0) == (a1[7] != 0))
          {
            siri::ontology::oname::graph::ontology_init::Root(a1);
            v6 = siri::ontology::operator!=();
            if ((v6 & 1) == 0)
            {
              siri::ontology::oname::graph::ontology_init::common_DateTime(v6);
              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              v8 = EntityNode;
              v9 = a1[6];
              if (!v9)
              {
                v9 = a1[7];
              }

              v10 = siri::ontology::oname::graph::ontology_init::Argument_offsetReference(EntityNode);
              v11 = uaap::TimeHandler::resolveTimeWithDateTimeRangeAndQualifier(v9, a2, v8, v10);
              siri::ontology::oname::graph::ontology_init::common_OffsetDirection(v11);
              v12 = siri::ontology::UsoGraph::createEntityNode();
              if (a1[6])
              {
                siri::ontology::oname::graph::ontology_init::common_OffsetDirection_After(v12);
              }

              else
              {
                siri::ontology::oname::graph::ontology_init::common_OffsetDirection_Before(v12);
              }

              v13 = siri::ontology::UsoGraph::createEntityNode();
              siri::ontology::oname::graph::ontology_init::Argument_direction(v13);
              v14 = siri::ontology::UsoGraphNode::setSuccessor();
              siri::ontology::oname::graph::ontology_init::Argument_definedValue(v14);
              siri::ontology::UsoGraphNode::setSuccessor();
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v13, a1, v15);
            }
          }
        }
      }
    }
  }

  return 0;
}

siri::ontology::oname::graph::ontology_init *uaap::resolveOffsetReferenceGraphWithDirection(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeDurationSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeDurationHandler::resolveOffsetReferenceWithDirection(v4, a2, v5, v6);
  }

  return this;
}

double nlv4_inference_orchestrator::inference_engine::utils::padSpanTensor@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = a6;
  v8 = *a1;
  if (*(a1 + 8) - *a1 == 24)
  {
    v26 = a5;
    v9 = *v8;
    v10 = v8[2];
    v11 = a3 * a2;
    v28 = v8[1];
    std::vector<float>::vector[abi:ne200100](__dst, a3 * a2 * v28, &v29);
    if (v9)
    {
      v12 = 0;
      v13 = *(a1 + 24);
      if (v10 >= a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = v10;
      }

      v15 = *__dst;
      v16 = 4 * v11;
      v17 = 4 * v10;
      do
      {
        v18 = v15;
        for (i = v28; i; --i)
        {
          if (v14)
          {
            memmove(v18, v13, 4 * v14);
          }

          v18 += v16;
          v13 += v17;
        }

        ++v12;
        v15 += 4 * a3;
      }

      while (v12 != v9);
    }

    v30[0] = v28;
    v30[1] = a2;
    v30[2] = a3;
    v26[1] = 0;
    v26[2] = 0;
    *v26 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v26, v30, __dst, 3uLL);
  }

  v21 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    v23 = (*(a1 + 8) - *a1) >> 3;
    *__dst = 136315394;
    *&__dst[4] = v22;
    v32 = 2048;
    v33 = v23;
    _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_ERROR, "[%s] Could not reshape the input span tensor with %lu dimensions", __dst, 0x16u);
  }

  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 2) = 0u;
  *a5 = 0u;
  return result;
}

void sub_22296F0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  v22 = *v20;
  if (*v20)
  {
    *(a11 + 8) = v22;
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::utils::padContextTensor(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (*(a1 + 8) - *a1 == 16)
  {
    v10 = *v7;
    v11 = v7[1];
    std::vector<float>::vector[abi:ne200100](__dst, *v7 * a2);
    if (v10)
    {
      v12 = 0;
      v13 = *(a1 + 24);
      v14 = *__dst;
      if (v11 >= a2)
      {
        v15 = a2;
      }

      else
      {
        v15 = v11;
      }

      v16 = (4 * (a2 - v11)) >> 2;
      v17 = vdupq_n_s64(v16 - 1);
      v18 = xmmword_2229D1B20;
      v19 = xmmword_2229D1B30;
      v30 = v17;
      do
      {
        if (v15)
        {
          memmove(v14, v13, 4 * v15);
          v19 = xmmword_2229D1B30;
          v18 = xmmword_2229D1B20;
          v17 = v30;
        }

        if (v16 >= 1)
        {
          v20 = &v14[4 * v11 + 8];
          v21 = 1;
          v22 = (v16 + 3) & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = vdupq_n_s64(v21 - 1);
            v24 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v23, v19)));
            if (vuzp1_s16(v24, *v23.i8).u8[0])
            {
              *(v20 - 2) = a5;
            }

            if (vuzp1_s16(v24, *&v23).i8[2])
            {
              *(v20 - 1) = a5;
            }

            v25 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v23, v18)));
            if (vuzp1_s16(v25, v25).i32[1])
            {
              *v20 = a5;
              v20[1] = a5;
            }

            v21 += 4;
            v20 += 4;
            v22 -= 4;
          }

          while (v22);
        }

        ++v12;
        v13 += 4 * v11;
        v14 += 4 * a2;
      }

      while (v12 != v10);
    }

    v31[0] = v10;
    v31[1] = a2;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a4, v31, __dst, 2uLL);
  }

  v27 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    v29 = (*(a1 + 8) - *a1) >> 3;
    *__dst = 136315394;
    *&__dst[4] = v28;
    v33 = 2048;
    v34 = v29;
    _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_ERROR, "[%s] Could not reshape the input context tensor with %lu dimensions", __dst, 0x16u);
  }

  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
}

void sub_22296F3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  v24 = *v22;
  if (*v22)
  {
    *(a10 + 8) = v24;
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::utils::padEmbeddingTensor(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  v66 = *MEMORY[0x277D85DE8];
  v57 = a6;
  v9 = *a1;
  if (*(a1 + 8) - *a1 == 24)
  {
    v11 = v9[1];
    if (v11 <= a2)
    {
      v13 = *v9;
      v14 = v9[2];
      v15 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        if (*(a4 + 23) >= 0)
        {
          v16 = a4;
        }

        else
        {
          v16 = *a4;
        }

        v17 = (*(a1 + 32) - *(a1 + 24)) >> 2;
        *buf = 136316162;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = v17;
        *&buf[22] = 2048;
        v59 = v13;
        v60 = 2048;
        v61 = v11;
        v62 = 2048;
        v63 = v14;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] padEmbeddings input tensor size = %lu (%lu, %lu, %lu)", buf, 0x34u);
      }

      v18 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        if (*(a4 + 23) >= 0)
        {
          v19 = a4;
        }

        else
        {
          v19 = *a4;
        }

        *buf = 136315394;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, "[%s] padEmbeddings maxNumTokens (defined by network config) = %lu", buf, 0x16u);
      }

      if (v14 == a3 && v13 * a3 * v11 == (*(a1 + 32) - *(a1 + 24)) >> 2)
      {
        std::vector<float>::vector[abi:ne200100](&__p, v13 * a2 * a3, &v57);
        v20 = v11 * a3;
        v21 = a3 * a2;
        v22 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          if (*(a4 + 23) >= 0)
          {
            v23 = a4;
          }

          else
          {
            v23 = *a4;
          }

          *buf = 136315650;
          *&buf[4] = v23;
          *&buf[12] = 2048;
          *&buf[14] = v20;
          *&buf[22] = 2048;
          v59 = v21 - v20;
          _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_DEBUG, "[%s] padEmbeddings For each batch, copying %lu embedding values and adding %lu padding values", buf, 0x20u);
        }

        if (v13)
        {
          v24 = 0;
          v25 = *(a1 + 24);
          v26 = __p.__r_.__value_.__r.__words[0];
          do
          {
            v27 = v25;
            v28 = v26;
            for (i = v20; i; --i)
            {
              v30 = *v27++;
              *v28++ = v30;
            }

            ++v24;
            v26 += 4 * v21;
            v25 += v20;
          }

          while (v24 != v13);
        }

        v31 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          if (*(a4 + 23) >= 0)
          {
            v32 = a4;
          }

          else
          {
            v32 = *a4;
          }

          *buf = 136315906;
          *&buf[4] = v32;
          *&buf[12] = 2048;
          *&buf[14] = v13;
          *&buf[22] = 2048;
          v59 = a2;
          v60 = 2048;
          v61 = a3;
          _os_log_impl(&dword_22284A000, v31, OS_LOG_TYPE_DEBUG, "[%s] padEmbeddings Padded embedding tensor shape: (%lu, %lu, %lu)", buf, 0x2Au);
        }

        *buf = v13;
        *&buf[8] = a2;
        *&buf[16] = a3;
        a5[1] = 0;
        a5[2] = 0;
        *a5 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a5, buf, &v59, 3uLL);
      }

      v36 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        if (*(a4 + 23) >= 0)
        {
          v37 = a4;
        }

        else
        {
          v37 = *a4;
        }

        v38 = (*(a1 + 32) - *(a1 + 24)) >> 2;
        *buf = 136316418;
        *&buf[4] = v37;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        *&buf[22] = 2048;
        v59 = v11;
        v60 = 2048;
        v61 = v14;
        v62 = 2048;
        v63 = a3;
        v64 = 2048;
        v65 = v38;
        _os_log_impl(&dword_22284A000, v36, OS_LOG_TYPE_ERROR, "[%s] Illegal shape for embeddings: (%lu, %lu, %lu). Must be (?, ?, %lu) and hold %lu values", buf, 0x3Eu);
      }

      *buf = v13;
      *&buf[8] = a2;
      *&buf[16] = a3;
      a5[1] = 0;
      a5[2] = 0;
      *a5 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a5, buf, &v59, 3uLL);
    }

    std::to_string(&v53, v11);
    v39 = std::string::insert(&v53, 0, "Token overflow; received ");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v54, " tokens, expected ");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v52, a2);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v52;
    }

    else
    {
      v43 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v45 = std::string::append(&v55, v43, size);
    v46 = *&v45->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&__p, " or fewer tokens.");
    v48 = *&v47->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v47->__r_.__value_.__l + 2);
    *buf = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    if (buf[23] >= 0)
    {
      v50 = buf;
    }

    else
    {
      v50 = *buf;
    }

    v51 = strlen(v50);
    std::string::__init(&__p, v50, v51);
    std::runtime_error::runtime_error(exception, &__p);
    exception->__vftable = &unk_2835E9238;
  }

  v33 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v34 = a4;
    }

    else
    {
      v34 = *a4;
    }

    v35 = (*(a1 + 8) - *a1) >> 3;
    *buf = 136315394;
    *&buf[4] = v34;
    *&buf[12] = 2048;
    *&buf[14] = v35;
    _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_ERROR, "[%s] Could not reshape the input embeddings tensor with %lu dimensions", buf, 0x16u);
  }

  *(a5 + 1) = 0u;
  *(a5 + 2) = 0u;
  *a5 = 0u;
}

void sub_22296FA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((v48 & 1) == 0)
    {
LABEL_6:
      if (a47 < 0)
      {
        operator delete(a42);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v47);
  goto LABEL_6;
}

double nlv4_inference_orchestrator::inference_engine::utils::padITFMMaskTensor@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = a5;
  v7 = *a1;
  if (*(a1 + 8) - *a1 == 16)
  {
    v9 = *v7;
    std::vector<float>::vector[abi:ne200100](__dst, *v7 * a2, &v17);
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    if (v11 != v10)
    {
      memmove(*__dst, v10, v11 - v10);
    }

    v18[0] = v9;
    v18[1] = a2;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a4, v18, __dst, 2uLL);
  }

  v13 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    v15 = (*(a1 + 8) - *a1) >> 3;
    *__dst = 136315394;
    *&__dst[4] = v14;
    v20 = 2048;
    v21 = v15;
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, "[%s] Could not reshape the mask tensor with %lu dimensions", __dst, 0x16u);
  }

  result = 0.0;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  return result;
}

void sub_22296FCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *nlv4_inference_orchestrator::inference_engine::utils::convertITFMTensorToCommonTensor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2 + 3, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
}

void sub_22296FD7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_string<char16_t>::resize(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  v3 = this;
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v5 = __n - size;
    if (__n > size)
    {
      v4 = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v7 = HIBYTE(v9);
      goto LABEL_6;
    }

    this->__r_.__value_.__l.__size_ = __n;
    v3 = this->__r_.__value_.__r.__words[0];
LABEL_40:
    v23 = (v3 + 2 * __n);
    goto LABEL_43;
  }

  v5 = __n - v4;
  if (__n <= v4)
  {
    *(&this->__r_.__value_.__s + 23) = __n;
    goto LABEL_40;
  }

  v6 = 10;
  LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
LABEL_6:
  if (v6 - v4 < v5)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 >= v5 - v6 + v4)
    {
      v10 = v5 + v4;
      if (v5 + v4 <= 2 * v6)
      {
        v10 = 2 * v6;
      }

      if ((v10 | 3) == 0xB)
      {
        v11 = 13;
      }

      else
      {
        v11 = (v10 | 3) + 1;
      }

      v12 = v10 >= 0xB;
      v13 = 11;
      if (v12)
      {
        v13 = v11;
      }

      if (v6 <= 0x3FFFFFFFFFFFFFF2)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0x7FFFFFFFFFFFFFF7;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v14);
    }

    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v15 = this;
  if ((v7 & 0x80) != 0)
  {
    v15 = this->__r_.__value_.__r.__words[0];
  }

  v16 = 0;
  v17 = vdupq_n_s64(v5 - 1);
  v18 = &v15->__r_.__value_.__s.__data_[v4 + 4];
  do
  {
    v19 = vdupq_n_s64(v16);
    v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_2229D1B30)));
    if (vuzp1_s8(vuzp1_s16(v20, *v17.i8), *v17.i8).u8[0])
    {
      *(v18 - 4) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v20, *&v17), *&v17).i8[1])
    {
      *(v18 - 3) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_2229D1B20)))), *&v17).i8[2])
    {
      *(v18 - 2) = 0;
      *(v18 - 1) = 0;
    }

    v21 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_2229D2A00)));
    if (vuzp1_s8(*&v17, vuzp1_s16(v21, *&v17)).i32[1])
    {
      *v18 = 0;
    }

    if (vuzp1_s8(*&v17, vuzp1_s16(v21, *&v17)).i8[5])
    {
      v18[1] = 0;
    }

    if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_2229D29F0))))).i8[6])
    {
      v18[2] = 0;
      v18[3] = 0;
    }

    v16 += 8;
    v18 += 8;
  }

  while (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) != v16);
  v22 = v4 + v5;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v22;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v22 & 0x7F;
  }

  v23 = (v15 + 2 * v22);
LABEL_43:
  v23->__r_.__value_.__s.__data_[0] = 0;
}

void *uaap::DateTimeHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::mapDateTimeToItemizedUsos(a3, a4);
  }

  return result;
}

void *uaap::mapDateTimeToItemizedUsos(uint64_t a1, uint64_t a2)
{
  v4 = CFHash(@"DateTime");
  v5 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v4);
  if (v5)
  {
    v6 = v5[3];
    if (v5[4] == v6)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    {
      operator new();
    }
  }

  uaap::DateHandler::mapDateToItemizedUsos(a1, a2);
  uaap::mapTimeSpansToItemizedUsos(a1, a2);
  uaap::mapTimeSpanSpansToItemizedUsos(a1, a2);
  v7 = CFHash(@"DateSpan");
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v7);
  if (result)
  {
    v10 = result[3];
    v9 = result[4];
    if (v9 != v10)
    {
      v11 = 0;
      do
      {
        result = *(v10 + 8 * v11);
        if (result)
        {
          if (result)
          {
            operator new();
          }
        }

        ++v11;
      }

      while (v11 < (v9 - v10) >> 3);
    }
  }

  return result;
}

void sub_222971044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x223DC4D00](v4, v3);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

siri::ontology::oname::graph::ontology_init *uaap::DateTimeHandler::resolveRecurringDateTime(siri::ontology::oname::graph::ontology_init *a1, uaap::UPDDTimeSpan *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          siri::ontology::oname::graph::ontology_init::Root(a1);
          v6 = siri::ontology::operator!=();
          if ((v6 & 1) == 0)
          {
            siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(v6);
            EntityNode = siri::ontology::UsoGraph::createEntityNode();
            v8 = siri::ontology::oname::graph::ontology_init::Argument_recurrencePeriod(EntityNode);
            v9 = uaap::DateTimeHandler::resolveRecurrenceDuration(a1, a2, EntityNode, v8);
            v10 = siri::ontology::oname::graph::ontology_init::Argument_recurrenceDateTimes(v9);
            if (v9 | uaap::DateTimeHandler::resolveDateTime(a1, a2, EntityNode, v10, 1))
            {
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v11);
            }
          }
        }
      }
    }
  }

  return 0;
}

siri::ontology::UsoGraph *uaap::DateTimeHandler::resolveDateTime(uaap::TimeHandler **a1, uaap::UPDDDateOffsetSpan *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    return v5;
  }

  siri::ontology::oname::graph::ontology_init::Root(a1);
  isRecurringTime = siri::ontology::operator!=();
  if (isRecurringTime)
  {
    siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(isRecurringTime);
    isRecurringTime = siri::ontology::operator!=();
    if (isRecurringTime)
    {
      return 0;
    }
  }

  if (a5)
  {
    v10 = a1[10];
    if (v10 && (v11 = *(v10 + 16)) != 0 && (*(v11 + 48) || *(v11 + 64)))
    {
      v12 = 0;
    }

    else
    {
      v12 = a1[8];
    }

    isRecurringTime = uaap::TimeSpanHandler::isRecurringTime(a1[9], v9);
    if (isRecurringTime)
    {
      v13 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v12 = a1[8];
  }

  v13 = a1[7];
LABEL_18:
  v14 = a1[9];
  if (!v14)
  {
    v15 = a1[7];
    if (v15)
    {
      v14 = *(v15 + 15);
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = a1[10];
  if (!v12 && !v13 && !v14 && !v16)
  {
    return 0;
  }

  __p = 0;
  v85 = 0;
  v86 = 0;
  siri::ontology::oname::graph::ontology_init::common_DateTime(isRecurringTime);
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  v5 = EntityNode;
  v81 = v16;
  if (v12)
  {
    v20 = siri::ontology::oname::graph::ontology_init::Argument_date(EntityNode);
    EntityNode = uaap::DateHandler::resolveDate(v12, a2, v5, v20, v21);
    v82 = EntityNode;
    if (EntityNode)
    {
      v27 = __p;
      v79 = (v85 - __p) >> 3;
      v28 = v79 + 1;
      if ((v79 + 1) >> 61)
      {
        goto LABEL_133;
      }

      v29 = v86 - __p;
      if ((v86 - __p) >> 2 > v28)
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

      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v30);
      }

      v35 = v85 - __p;
      *(8 * v79) = v12;
      EntityNode = memcpy(0, v27, v35);
      __p = 0;
      v86 = 0;
      v85 = (8 * v79 + 8);
      v22 = 1;
      if (v13)
      {
        goto LABEL_30;
      }

LABEL_50:
      v24 = 0;
      goto LABEL_51;
    }
  }

  v22 = 0;
  v82 = 0;
  if (!v13)
  {
    goto LABEL_50;
  }

LABEL_30:
  v23 = siri::ontology::oname::graph::ontology_init::Argument_time(EntityNode);
  v24 = uaap::TimeHandler::resolveTime(v13, a2, v5, v23);
  if (v24)
  {
    v25 = v85;
    if (v85 < v86)
    {
      *v85 = v13;
      v26 = (v25 + 8);
      goto LABEL_54;
    }

    v31 = __p;
    v80 = (v85 - __p) >> 3;
    v32 = v80 + 1;
    if (!((v80 + 1) >> 61))
    {
      v33 = v86 - __p;
      if ((v86 - __p) >> 2 > v32)
      {
        v32 = v33 >> 2;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        v34 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v34);
      }

      v36 = v85 - __p;
      *(8 * v80) = v13;
      v26 = 8 * v80 + 8;
      memcpy(0, v31, v36);
      __p = 0;
      v86 = 0;
LABEL_54:
      v85 = v26;
      v22 = 1;
      v16 = v81;
      if (!v81)
      {
        goto LABEL_70;
      }

      goto LABEL_55;
    }

LABEL_133:
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

LABEL_51:
  if (!v16)
  {
LABEL_70:
    if (!v14)
    {
      goto LABEL_95;
    }

    goto LABEL_71;
  }

LABEL_55:
  if (!v14)
  {
    goto LABEL_70;
  }

  SpecialDateUnitDefinedValue = uaap::DateHandler::getSpecialDateUnitDefinedValue(v16);
  SpecialTimeDefinedValue = uaap::TimeHandler::getSpecialTimeDefinedValue(v14);
  if (SpecialDateUnitDefinedValue && SpecialTimeDefinedValue)
  {
    if (!v82)
    {
      siri::ontology::oname::graph::ontology_init::common_Date(SpecialTimeDefinedValue);
      SpecialTimeDefinedValue = siri::ontology::UsoGraph::createEntityNode();
      v82 = SpecialTimeDefinedValue;
    }

    if (!v24)
    {
      siri::ontology::oname::graph::ontology_init::common_Time(SpecialTimeDefinedValue);
      v24 = siri::ontology::UsoGraph::createEntityNode();
    }

    v39 = uaap::DateHandler::resolveDateTimeRangeValue(v16, a2, v82, v19);
    siri::ontology::oname::graph::ontology_init::Argument_date(v39);
    siri::ontology::UsoGraphNode::setSuccessor();
    v41 = *(v16 + 6);
    if (v41 && *(v41 + 24))
    {
      uaap::TimeHandler::resolveDateTimeQualifierListValue(v16, a2, v24, v40);
    }

    uaap::TimeHandler::resolveDateTimeRangeValue(v14, a2, v24, v40);
    v43 = *(v14 + 6);
    if (v43 && *(v43 + 24))
    {
      uaap::TimeHandler::resolveDateTimeQualifierListValue(v14, a2, v24, v42);
    }

    v45 = v85;
    v44 = v86;
    if (v85 >= v86)
    {
      v56 = __p;
      v57 = v85 - __p;
      v58 = (v85 - __p) >> 3;
      v59 = v58 + 1;
      if ((v58 + 1) >> 61)
      {
        goto LABEL_135;
      }

      if ((v86 - __p) >> 2 > v59)
      {
        v59 = (v86 - __p) >> 2;
      }

      if (v86 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v60 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v60 = v59;
      }

      if (v60)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v60);
      }

      v71 = (8 * v58);
      v44 = 0;
      *v71 = v16;
      v46 = v71 + 1;
      memcpy(0, v56, v57);
      __p = 0;
      v85 = v46;
      v86 = 0;
    }

    else
    {
      *v85 = v16;
      v46 = (v45 + 8);
    }

    if (v46 < v44)
    {
      *v46 = v14;
      v72 = (v46 + 1);
LABEL_126:
      v85 = v72;
      goto LABEL_127;
    }

    v73 = __p;
    v74 = v46 - __p;
    v75 = (v46 - __p) >> 3;
    v76 = v75 + 1;
    if (!((v75 + 1) >> 61))
    {
      if ((v44 - __p) >> 2 > v76)
      {
        v76 = (v44 - __p) >> 2;
      }

      if (v44 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v77 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v76;
      }

      if (v77)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v77);
      }

      *(8 * v75) = v14;
      v72 = 8 * v75 + 8;
      memcpy(0, v73, v74);
      __p = 0;
      v86 = 0;
      goto LABEL_126;
    }

LABEL_135:
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

LABEL_71:
  if (uaap::TimeHandler::resolveDateTimeRangeValue(v14, a2, v5, v19))
  {
    v47 = *(v14 + 6);
    if (v47 && *(v47 + 24))
    {
      uaap::TimeHandler::resolveDateTimeQualifierListValue(v14, a2, v5, v19);
    }

    v48 = v85;
    if (v85 >= v86)
    {
      v50 = __p;
      v51 = v85 - __p;
      v52 = (v85 - __p) >> 3;
      v53 = v52 + 1;
      if ((v52 + 1) >> 61)
      {
        goto LABEL_134;
      }

      v54 = v86 - __p;
      if ((v86 - __p) >> 2 > v53)
      {
        v53 = v54 >> 2;
      }

      if (v54 >= 0x7FFFFFFFFFFFFFF8)
      {
        v55 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      if (v55)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v55);
      }

      *(8 * v52) = v14;
      v49 = 8 * v52 + 8;
      memcpy(0, v50, v51);
      __p = 0;
      v86 = 0;
    }

    else
    {
      *v85 = v14;
      v49 = (v48 + 8);
    }

    v85 = v49;
    v22 = 1;
    v16 = v81;
  }

LABEL_95:
  if (v16 && uaap::DateHandler::resolveDateTimeRangeValue(v16, a2, v5, v19))
  {
    v62 = *(v16 + 6);
    if (v62 && *(v62 + 24))
    {
      uaap::TimeHandler::resolveDateTimeQualifierListValue(v16, a2, v5, v61);
    }

    v63 = v85;
    if (v85 < v86)
    {
      *v85 = v81;
      v64 = (v63 + 8);
LABEL_113:
      v85 = v64;
      goto LABEL_127;
    }

    v65 = __p;
    v66 = v85 - __p;
    v67 = (v85 - __p) >> 3;
    v68 = v67 + 1;
    if (!((v67 + 1) >> 61))
    {
      v69 = v86 - __p;
      if ((v86 - __p) >> 2 > v68)
      {
        v68 = v69 >> 2;
      }

      if (v69 >= 0x7FFFFFFFFFFFFFF8)
      {
        v70 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v70 = v68;
      }

      if (v70)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v70);
      }

      *(8 * v67) = v81;
      v64 = 8 * v67 + 8;
      memcpy(0, v65, v66);
      __p = 0;
      v86 = 0;
      goto LABEL_113;
    }

LABEL_134:
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (v22)
  {
LABEL_127:
    if (!a5)
    {
      uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v5, a1, v18);
    }

    uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v5, &__p);
    siri::ontology::UsoGraphNode::setSuccessor();
    goto LABEL_130;
  }

  v5 = 0;
LABEL_130:
  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_2229718E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t uaap::DateTimeHandler::resolveRecurrenceDuration(_BOOL8 *a1, uaap::UPDDTimeSpan *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  siri::ontology::oname::graph::ontology_init::Root(a1);
  v8 = siri::ontology::operator!=();
  if (v8)
  {
    siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(v8);
    if (siri::ontology::operator!=())
    {
      return 0;
    }
  }

  isRecurringTime = uaap::TimeSpanHandler::isRecurringTime(a1[9], v9);
  if (isRecurringTime)
  {
    v11 = a1[9];
    if (*(v11 + 7) || *(v11 + 8) || *(v11 + 10))
    {
      siri::ontology::oname::graph::ontology_init::common_Duration(isRecurringTime);
      EntityNode = siri::ontology::UsoGraph::createEntityNode();
      uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, v11, v13);
    }
  }

  v14 = a1[10];
  if (!v14 || !uaap::DateSpanHandler::isRecurringDate(v14))
  {
    return 0;
  }

  v15 = a1[10];

  return uaap::DateHandler::resolveDurationValueAndUnit(v15, a2, a3, a4);
}

siri::ontology::oname::graph::ontology_init *uaap::DateTimeHandler::resolveDateTimeGraph(siri::ontology::oname::graph::ontology_init *result, uint64_t a2, uaap::UPDDDateOffsetSpan *a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(a3 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(result);

    return uaap::DateTimeHandler::resolveDateTime(v4, a3, v5, v6, 0);
  }

  return result;
}

siri::ontology::oname::graph::ontology_init *uaap::DateTimeHandler::resolveRecurringDateTimeGraph(siri::ontology::oname::graph::ontology_init *result, uint64_t a2, uaap::UPDDTimeSpan *a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(a3 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(result);

    return uaap::DateTimeHandler::resolveRecurringDateTime(v4, a3, v5, v6);
  }

  return result;
}

void *uaap::DateSpanWithReferenceHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::DateSpanWithReferenceHandler::mapDateSpanWithReferenceToItemizedUsos(a3, a4);
  }

  return result;
}

void *uaap::DateSpanWithReferenceHandler::mapDateSpanWithReferenceToItemizedUsos(uint64_t a1, uint64_t a2)
{
  v4 = CFHash(@"DateSpanWithReference");
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v4);
  if (result)
  {
    v7 = result[3];
    v6 = result[4];
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        v9 = *(v7 + 8 * v8);
        if (v9)
        {
          {
            operator new();
          }
        }

        ++v8;
      }

      while (v8 < (v6 - v7) >> 3);
    }

    return uaap::DateSpanHandler::mapDateSpanToItemizedUsos(a1, a2);
  }

  return result;
}

siri::ontology::oname::graph::ontology_init *uaap::DateSpanWithReferenceHandler::resolveDateSpanWithReference(siri::ontology::oname::graph::ontology_init **a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  EntityNode = 0;
  if (a2 && a1 && a3 && a4)
  {
    siri::ontology::oname::graph::ontology_init::Root(a1);
    v7 = siri::ontology::operator!=();
    if (v7)
    {
      return 0;
    }

    siri::ontology::oname::graph::ontology_init::common_DateTime(v7);
    EntityNode = siri::ontology::UsoGraph::createEntityNode();
    v8 = a1[7];
    v9 = siri::ontology::oname::graph::ontology_init::Argument_date(EntityNode);
    if (!uaap::DateSpanHandler::resolveDateSpan(v8, a2, EntityNode, v9))
    {
      return 0;
    }

    else
    {
      siri::ontology::UsoGraphNode::setSuccessor();
    }
  }

  return EntityNode;
}

siri::ontology::oname::graph::ontology_init *uaap::DateSpanWithReferenceHandler::resolveDateSpanWithReferenceGraph(siri::ontology::oname::graph::ontology_init *this, __CFString *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    length = a2[2].length;
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::DateSpanWithReferenceHandler::resolveDateSpanWithReference(v4, a2, length, v6);
  }

  return this;
}

uint64_t snlp::common::utilities::getUtf16Length(uint64_t *a1)
{
  v1 = *(a1 + 23);
  v2 = a1[1];
  if (v1 >= 0)
  {
    v2 = *(a1 + 23);
  }

  if (v2)
  {
    v3 = 0;
    LODWORD(v4) = 0;
    if (v1 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    while (1)
    {
      v6 = v3 + 1;
      v7 = *(v5 + v3);
      if (v7 < 0)
      {
        if (v6 == v2)
        {
          goto LABEL_29;
        }

        v9 = *(v5 + v3);
        if (v9 < 0xE0)
        {
          if (v9 < 0xC2)
          {
            goto LABEL_29;
          }

          v12 = v7 & 0x1F;
        }

        else
        {
          if (v9 > 0xEF)
          {
            if (v9 > 0xF4 || (v13 = v9 - 240, v14 = *(v5 + v6), ((byte_2229DAB85[v14 >> 4] >> (v9 + 16)) & 1) == 0) || (v6 = v3 + 2, v3 + 2 == v2) || (v11 = *(v5 + v6) ^ 0x80, v11 > 0x3F))
            {
LABEL_29:
              v15 = 0;
              v4 = 0;
              return v15 | v4;
            }

            LODWORD(v10) = v14 & 0x3F | (v13 << 6);
          }

          else
          {
            v10 = v7 & 0xF;
            if (((a00000000000000[v10] >> (*(v5 + v6) >> 5)) & 1) == 0)
            {
              goto LABEL_29;
            }

            v11 = *(v5 + v6) & 0x3F;
          }

          if (++v6 == v2)
          {
            goto LABEL_29;
          }

          v12 = v11 | (v10 << 6);
        }

        if (*(v5 + v6) > -65)
        {
          goto LABEL_29;
        }

        ++v6;
        if (v12 < 0x400)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }
      }

      else
      {
        v8 = 1;
      }

      v4 = (v8 + v4);
      v3 = v6;
      if (v6 >= v2)
      {
        goto LABEL_31;
      }
    }
  }

  v4 = 0;
LABEL_31:
  v15 = 0x100000000;
  return v15 | v4;
}

uint64_t snlp::common::utilities::getUnicodeScalarLength(uint64_t *a1)
{
  v1 = *(a1 + 23);
  v2 = a1[1];
  if (v1 >= 0)
  {
    v2 = *(a1 + 23);
  }

  if (v2)
  {
    v3 = 0;
    LODWORD(v4) = 0;
    if (v1 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    while (1)
    {
      v6 = v3 + 1;
      v7 = *(v5 + v3);
      if (v7 < 0)
      {
        if (v6 == v2)
        {
          break;
        }

        v8 = *(v5 + v3);
        if (v8 < 0xE0)
        {
          if (v8 < 0xC2)
          {
            break;
          }
        }

        else
        {
          if (v8 > 0xEF)
          {
            if (v8 > 0xF4)
            {
              break;
            }

            if (((byte_2229DAB85[*(v5 + v6) >> 4] >> (v7 + 16)) & 1) == 0)
            {
              break;
            }

            v6 = v3 + 2;
            if (v3 + 2 == v2 || *(v5 + v6) > -65)
            {
              break;
            }
          }

          else if (((a00000000000000[v7 & 0xF] >> (*(v5 + v6) >> 5)) & 1) == 0)
          {
            break;
          }

          if (++v6 == v2)
          {
            break;
          }
        }

        v9 = *(v5 + v6);
        if (v9 < -64)
        {
          ++v6;
        }

        if (v9 > -65)
        {
          break;
        }
      }

      v4 = (v4 + 1);
      v3 = v6;
      if (v6 >= v2)
      {
        goto LABEL_27;
      }
    }

    v10 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
LABEL_27:
    v10 = 0x100000000;
  }

  return v10 | v4;
}

uint64_t itfm_inference_orchestrator::orchestration::itfm_response_types::getStringLabelForPSCOutputClass@<X0>(int *a1@<X0>, std::string *a2@<X8>)
{
  v30[3] = *MEMORY[0x277D85DE8];
  LODWORD(v28.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v28.__r_.__value_.__l.__size_, "Not_Pommes");
  v29 = 1;
  std::string::basic_string[abi:ne200100]<0>(v30, "Pommes");
  v23 = a1;
  v3 = 0;
  *__p = 0u;
  v26 = 0u;
  v27 = 1065353216;
  do
  {
    v4 = *(&v28.__r_.__value_.__l.__data_ + v3);
    if (!__p[1])
    {
      goto LABEL_18;
    }

    v5 = vcnt_s8(__p[1]);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = *(&v28.__r_.__value_.__l.__data_ + v3);
      if (__p[1] <= v4)
      {
        v6 = v4 % __p[1];
      }
    }

    else
    {
      v6 = (__p[1] - 1) & v4;
    }

    v7 = *(__p[0] + v6);
    if (!v7 || (v8 = *v7) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v9 = v8[1];
      if (v9 == v4)
      {
        break;
      }

      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= __p[1])
        {
          v9 %= __p[1];
        }
      }

      else
      {
        v9 &= __p[1] - 1;
      }

      if (v9 != v6)
      {
        goto LABEL_18;
      }

LABEL_17:
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    if (*(v8 + 4) != v4)
    {
      goto LABEL_17;
    }

    v3 += 32;
  }

  while (v3 != 64);
  for (i = 0; i != -8; i -= 4)
  {
    if (SHIBYTE(v30[i + 2]) < 0)
    {
      operator delete(v30[i]);
    }
  }

  v11 = *v23;
  v12 = vcnt_s8(__p[1]);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = *v23;
    if (__p[1] <= v11)
    {
      v13 = v11 % __p[1];
    }
  }

  else
  {
    v13 = (__p[1] - 1) & v11;
  }

  v14 = *(__p[0] + v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_39:
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v24, *v23);
    v18 = std::string::insert(&v24, 0, "Failed to find the string representation of the PSC output class: ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  while (2)
  {
    v16 = v15[1];
    if (v16 != v11)
    {
      if (v12.u32[0] > 1uLL)
      {
        if (v16 >= __p[1])
        {
          v16 %= __p[1];
        }
      }

      else
      {
        v16 &= __p[1] - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (*(v15 + 4) != v11)
    {
LABEL_38:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  if (*(v15 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, v15[3], v15[4]);
  }

  else
  {
    v20 = *(v15 + 3);
    a2->__r_.__value_.__r.__words[2] = v15[5];
    *&a2->__r_.__value_.__l.__data_ = v20;
  }

  return std::__hash_table<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::__unordered_map_hasher<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::__unordered_map_equal<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>,std::equal_to<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,true>,std::allocator<std::__hash_value_type<snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType,std::string>>>::~__hash_table(__p);
}

unint64_t itfm_inference_orchestrator::orchestration::itfm_response_types::convertSNLCLabelToStringLabel@<X0>(unint64_t this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  if (this <= 1)
  {
    v6 = v2;
    v7 = v3;
    v5 = this;
    this = itfm_inference_orchestrator::orchestration::itfm_response_types::getStringLabelForSNLCOutputClass(&v5, a2);
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

unint64_t itfm_inference_orchestrator::orchestration::itfm_response_types::convertPSCLabelToStringLabel@<X0>(unint64_t this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  if (this <= 1)
  {
    v6 = v2;
    v7 = v3;
    v5 = this;
    this = itfm_inference_orchestrator::orchestration::itfm_response_types::getStringLabelForPSCOutputClass(&v5, a2);
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::isSetNumberVocSpan(uint64_t a1, void *a2)
{
  v2 = a2[6];
  if (!v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  if (v3 != v4)
  {
    while (*v3 != 3 && *v3 != 8)
    {
      if (++v3 == v4)
      {
        v3 = a2[2];
        break;
      }
    }
  }

  v6 = *(a1 + 103);
  if (v6 >= 0)
  {
    v7 = *(a1 + 103);
  }

  else
  {
    v7 = *(a1 + 88);
  }

  v8 = *(v2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v2 + 8);
  }

  if (v7 == v8)
  {
    v12 = *(a1 + 80);
    v10 = (a1 + 80);
    v11 = v12;
    if (v6 < 0)
    {
      v10 = v11;
    }

    if (v9 >= 0)
    {
      v13 = a2[6];
    }

    else
    {
      v13 = *v2;
    }

    v14 = memcmp(v10, v13, v7) == 0;
  }

  else
  {
    v14 = 0;
  }

  return (v4 != v3) & v14;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *a2 = *this;
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::replaceTreeNodeVerb(nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer *this, std::string *__str, BOOL *a3)
{
  v56[2] = *MEMORY[0x277D85DE8];
  v5 = (this + 56);
  v6 = *(this + 79);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = *(this + 7);
    v6 = *(this + 8);
  }

  else
  {
    v7 = this + 56;
  }

  __p.__r_.__value_.__r.__words[0] = v7;
  __p.__r_.__value_.__l.__size_ = v6;
  nlv4_inference_orchestrator::trees::split(&v52, __str, &__p.__r_.__value_.__l.__data_);
  *a3 = 0;
  v9 = v55;
  v10 = v54;
  if ((v55 & 0x80u) == 0)
  {
    v11 = v55;
  }

  else
  {
    v11 = v54;
  }

  if (!v11)
  {
    goto LABEL_67;
  }

  if ((v55 & 0x80) != 0)
  {
    if (v54 != 10)
    {
      goto LABEL_17;
    }

    v12 = v53;
  }

  else
  {
    v12 = &v53;
    if (v55 != 10)
    {
      goto LABEL_17;
    }
  }

  v13 = *v12;
  v14 = v12[4];
  if (v13 == 0x6573616572636E69 && v14 == 31042)
  {
    v24 = 1;
    if ((v55 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

LABEL_17:
  v8 = siri::ontology::oname::graph::ontology_init::ReferenceNumberTrigger_increaseBy(v8);
  v9 = v55;
  v10 = v54;
  if ((v55 & 0x80u) == 0)
  {
    v16 = v55;
  }

  else
  {
    v16 = v54;
  }

  v17 = *(v8 + 63);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v8 + 48);
  }

  if (v16 == v17)
  {
    if ((v55 & 0x80u) == 0)
    {
      v19 = &v53;
    }

    else
    {
      v19 = v53;
    }

    v22 = *(v8 + 40);
    v20 = (v8 + 40);
    v21 = v22;
    if (v18 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    v8 = memcmp(v19, v23, v16);
    v24 = v8 == 0;
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_35;
    }

LABEL_32:
    v25 = &v53;
    if (v9 != 10)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v24 = 0;
  if ((v55 & 0x80) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  if (v10 != 10)
  {
    goto LABEL_41;
  }

  v25 = v53;
LABEL_37:
  v26 = *v25;
  v27 = v25[4];
  if (v26 == 0x6573616572636564 && v27 == 31042)
  {
LABEL_56:
    v39 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v52.__r_.__value_.__l.__data_, v5);
    v40 = siri::ontology::oname::graph::ontology_init::ReferenceNumberTrigger_setNumber(v39);
    v43 = *(v40 + 40);
    v41 = v40 + 40;
    v42 = v43;
    v44 = *(v41 + 23);
    if (v44 >= 0)
    {
      v45 = v41;
    }

    else
    {
      v45 = v42;
    }

    if (v44 >= 0)
    {
      v46 = *(v41 + 23);
    }

    else
    {
      v46 = *(v41 + 8);
    }

    v47 = std::string::append(&__p, v45, v46);
    v48 = v47->__r_.__value_.__r.__words[0];
    v56[0] = v47->__r_.__value_.__l.__size_;
    *(v56 + 7) = *(&v47->__r_.__value_.__r.__words[1] + 7);
    v49 = HIBYTE(v47->__r_.__value_.__r.__words[2]);
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str->__r_.__value_.__l.__data_);
    }

    v50 = v56[0];
    __str->__r_.__value_.__r.__words[0] = v48;
    __str->__r_.__value_.__l.__size_ = v50;
    *(&__str->__r_.__value_.__r.__words[1] + 7) = *(v56 + 7);
    *(&__str->__r_.__value_.__s + 23) = v49;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *a3 = 1;
    LOBYTE(v9) = v55;
    goto LABEL_67;
  }

LABEL_41:
  v29 = siri::ontology::oname::graph::ontology_init::ReferenceNumberTrigger_decreaseBy(v8);
  LOBYTE(v9) = v55;
  if ((v55 & 0x80u) == 0)
  {
    v30 = v55;
  }

  else
  {
    v30 = v54;
  }

  v31 = *(v29 + 63);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(v29 + 48);
  }

  if (v30 == v31)
  {
    if ((v55 & 0x80u) == 0)
    {
      v33 = &v53;
    }

    else
    {
      v33 = v53;
    }

    v36 = *(v29 + 40);
    v34 = (v29 + 40);
    v35 = v36;
    if (v32 >= 0)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    v38 = memcmp(v33, v37, v30) == 0;
  }

  else
  {
    v38 = 0;
  }

  if (v24 || v38)
  {
    goto LABEL_56;
  }

LABEL_67:
  if ((v9 & 0x80) != 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }
}

uaap::UPDDDateTimeBaseSpan *uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(uaap::UPDDDateTimeBaseSpan *this, __DDResult *a2)
{
  Value = DDResultGetValue();
  uaap::UPDDSpan::UPDDSpan(this, a2, Value);
  *this = &unk_2835E58B0;
  *(this + 6) = 0;
  if (DDResultGetSubresultWithType())
  {
    operator new();
  }

  return this;
}

void sub_222972D0C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6);
  *(v1 + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  uaap::UPDDSpan::~UPDDSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(uaap::UPDDDateTimeBaseSpan *this)
{
  *this = &unk_2835E58B0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E58B0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

{
  *this = &unk_2835E58B0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDSpan *uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(uaap::UPDDSpan *a1, const __CFString *a2, const __CFString *a3, int a4, int a5, uint64_t *a6)
{
  v8 = uaap::UPDDSpan::UPDDSpan(a1, a2, a3, a4, a5);
  *v8 = &unk_2835E58B0;
  *(v8 + 6) = 0;
  v9 = *a6;
  *a6 = 0;
  v10 = *(v8 + 6);
  *(a1 + 6) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t uaap::UPDDSpan::extractIntValueFromCFStringRef(const __CFString *this, const __CFString *a2)
{
  v19 = 0;
  if (DDFastIntegerExtraction())
  {
    return v19;
  }

  v4 = __p;
  std::string::basic_string[abi:ne200100]<0>(__p, "unknown/");
  applesauce::CF::convert_to<std::string,0>(&__str, this);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v4 = __p[0];
    v7 = __p[1];
  }

  if (v7)
  {
    if (size >= v7)
    {
      v8 = p_str + size;
      v9 = *v4;
      v10 = p_str;
      do
      {
        v11 = size - v7;
        if (v11 == -1)
        {
          break;
        }

        v12 = memchr(v10, v9, v11 + 1);
        if (!v12)
        {
          break;
        }

        v13 = v12;
        if (!memcmp(v12, v4, v7))
        {
          if (v13 != v8)
          {
            v14 = v13 - p_str;
            if (v13 - p_str != -1)
            {
              goto LABEL_20;
            }
          }

          break;
        }

        v10 = (v13 + 1);
        size = v8 - (v13 + 1);
      }

      while (size >= v7);
    }
  }

  else
  {
    v14 = 0;
LABEL_20:
    std::string::erase(&__str, v14, v7);
  }

  v3 = std::stoi(&__str, 0, 10);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_222973070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t uaap::UPDDSpan::extractIntValueFromDDResult(uaap::UPDDSpan *this, __DDResult *a2)
{
  Value = DDResultGetValue();

  return uaap::UPDDSpan::extractIntValueFromCFStringRef(Value, v3);
}

uaap::UPDDTimeSpan *uaap::UPDDTimeSpan::UPDDTimeSpan(uaap::UPDDTimeSpan *this, __DDResult *a2)
{
  v4 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v4 = &unk_2835E58D0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 15) = 0;
  SubresultWithType = DDResultGetSubresultWithType();
  v6 = DDResultGetSubresultWithType();
  v7 = DDResultGetSubresultWithType();
  v8 = DDResultGetSubresultWithType();
  v9 = DDResultGetSubresultWithType();
  v11 = uaap::searchDDTreeWithType(a2, @"SpecialTimePeriod", v10);
  v12 = DDResultGetSubresultWithType();
  v13 = DDResultGetSubresultWithType();
  v16 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v6)
  {
    operator new();
  }

  if (v7)
  {
    operator new();
  }

  if (v8)
  {
    operator new();
  }

  if (v9)
  {
    operator new();
  }

  if (v11)
  {
    operator new();
  }

  v15 = *(this + 12);
  *(this + 12) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (v12)
  {
    operator new();
  }

  if (v13)
  {
    operator new();
  }

  if (v16)
  {
    operator new();
  }

  return this;
}

void sub_2229735D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  MEMORY[0x223DC4D00](v10, 0x10E1C406A116140, a3, a4, a5, a6, a7, a8);
  v12 = *(v9 + 15);
  *(v9 + 15) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(v9 + 14);
  *(v9 + 14) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(v9 + 13);
  *(v9 + 13) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(v9 + 12);
  *(v9 + 12) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(v9 + 11);
  *(v9 + 11) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(v9 + 10);
  *(v9 + 10) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(v9 + 9);
  *(v9 + 9) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v9 + 8);
  *(v9 + 8) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *a9;
  *a9 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v9);
  _Unwind_Resume(a1);
}

void uaap::UPDDTimeSpan::~UPDDTimeSpan(uaap::UPDDTimeSpan *this)
{
  uaap::UPDDTimeSpan::~UPDDTimeSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E58D0;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *this = &unk_2835E58B0;
  v11 = *(this + 6);
  *(this + 6) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDTimeDurationSpan *uaap::UPDDTimeDurationSpan::UPDDTimeDurationSpan(uaap::UPDDTimeDurationSpan *this, __DDResult *a2)
{
  Value = DDResultGetValue();
  uaap::UPDDSpan::UPDDSpan(this, a2, Value);
  *this = &unk_2835E58F0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  DDResultGetSubresultWithType();
  SubresultWithType = DDResultGetSubresultWithType();
  DDResultGetSubresultWithType();
  v6 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v6)
  {
    operator new();
  }

  return this;
}

void sub_222973CB8(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10E1C406A116140);
  v5 = *(v1 + 7);
  *(v1 + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDSpan::~UPDDSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDTimeDurationSpan::~UPDDTimeDurationSpan(uaap::UPDDTimeDurationSpan *this)
{
  *this = &unk_2835E58F0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E58F0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDTimeSpanWithReference *uaap::UPDDTimeSpanWithReference::UPDDTimeSpanWithReference(uaap::UPDDTimeSpanWithReference *this, __DDResult *a2)
{
  v3 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v3 = &unk_2835E5910;
  *(v3 + 7) = 0;
  *(v3 + 8) = 0;
  SubresultWithType = DDResultGetSubresultWithType();
  DDResultGetSubresultWithType();
  v5 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v5)
  {
    operator new();
  }

  return this;
}

void sub_22297403C(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10E1C406A116140);
  v5 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDTimeSpanWithReference::~UPDDTimeSpanWithReference(uaap::UPDDTimeSpanWithReference *this)
{
  *this = &unk_2835E5910;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2835E58B0;
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5910;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2835E58B0;
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDSpecialDatePeriodSpan *uaap::UPDDSpecialDatePeriodSpan::UPDDSpecialDatePeriodSpan(uaap::UPDDSpecialDatePeriodSpan *this, __DDResult *a2)
{
  Value = DDResultGetValue();
  uaap::UPDDSpan::UPDDSpan(this, a2, Value);
  *this = &unk_2835E5930;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  SubresultWithType = DDResultGetSubresultWithType();
  v6 = DDResultGetSubresultWithType();
  v7 = DDResultGetSubresultWithType();
  v9 = uaap::searchDDTreeWithType(a2, @"OccurrenceCount", v8);
  v10 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v6)
  {
    operator new();
  }

  if (v7)
  {
    v11 = DDResultGetValue();
  }

  else
  {
    v11 = 0;
  }

  *(this + 12) = v11;
  if (v9)
  {
    operator new();
  }

  if (v10)
  {
    operator new();
  }

  return this;
}

void sub_2229746A4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 11);
  *(v1 + 11) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 10);
  *(v1 + 10) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 9);
  *(v1 + 9) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v1 + 7);
  *(v1 + 7) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v2;
  *v2 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  uaap::UPDDSpan::~UPDDSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDSpecialDatePeriodSpan::~UPDDSpecialDatePeriodSpan(uaap::UPDDSpecialDatePeriodSpan *this)
{
  uaap::UPDDSpecialDatePeriodSpan::~UPDDSpecialDatePeriodSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5930;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDSpan *uaap::UPDDSpecialDatePeriodSpan::UPDDSpecialDatePeriodSpan(uaap::UPDDSpan *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v13 = uaap::UPDDSpan::UPDDSpan(a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 20));
  *v13 = &unk_2835E5930;
  *(v13 + 3) = 0u;
  v14 = (v13 + 48);
  *(v13 + 4) = 0u;
  *(v13 + 5) = 0u;
  v15 = *a3;
  if (*a3)
  {
    *a3 = 0;
    v16 = *v14;
    *v14 = v15;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v17 = *a4;
  if (*a4)
  {
    *a4 = 0;
    v18 = *(a1 + 7);
    *(a1 + 7) = v17;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  v19 = *a5;
  if (*a5)
  {
    *a5 = 0;
    v20 = *(a1 + 8);
    *(a1 + 8) = v19;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  v21 = *a6;
  if (*a6)
  {
    *a6 = 0;
    v22 = *(a1 + 11);
    *(a1 + 11) = v21;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  *(a1 + 12) = a7;
  return a1;
}

uaap::UPDDAbsoluteDateSpan *uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(uaap::UPDDAbsoluteDateSpan *this, __DDResult *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v4 = &unk_2835E5950;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 11) = 0;
  v6 = uaap::searchDDTreeWithType(a2, @"SpecialDay", v5);
  v8 = uaap::searchDDTreeWithType(v6, @"Identifier", v7);
  SubresultWithType = DDResultGetSubresultWithType();
  v10 = DDResultGetSubresultWithType();
  v11 = DDResultGetSubresultWithType();
  v12 = DDResultGetSubresultWithType();
  v13 = DDResultGetSubresultWithType();
  v15 = uaap::searchDDTreeWithType(a2, @"DayOfWeek", v14);
  if (v8)
  {
    operator new();
  }

  if (SubresultWithType)
  {
    operator new();
  }

  if (v10)
  {
    operator new();
  }

  if (v11)
  {
    operator new();
  }

  if (v13)
  {
    operator new();
  }

  if (v12)
  {
    v17 = MEMORY[0x223DC2D70](a2);
    if ((v17 & 0x80000000) == 0)
    {
      std::to_string(&v22, v17);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v22;
      }

      else
      {
        v18 = v22.__r_.__value_.__r.__words[0];
      }

      CFStringCreateWithCString(0, v18, 0x8000100u);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      operator new();
    }

    v19 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      Value = DDResultGetValue();
      applesauce::CF::convert_to<std::string,0>(&v22, Value);
      v21 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v22 : v22.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v24 = v21;
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_ERROR, "Warning: failed to extract JapaneseYear: %s", buf, 0xCu);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v15)
  {
    operator new();
  }

  return this;
}

void sub_22297509C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 + 11);
  *(v15 + 11) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  v18 = *(v15 + 10);
  *(v15 + 10) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  v19 = *(v15 + 9);
  *(v15 + 9) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19, a2, a3, a4, a5, a6, a7, a8);
  }

  v20 = *(v15 + 8);
  *(v15 + 8) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
  }

  v21 = *a9;
  *a9 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21, a2, a3, a4, a5, a6, a7, a8);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v15);
  _Unwind_Resume(a1);
}

void uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(uaap::UPDDAbsoluteDateSpan *this)
{
  uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5950;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *this = &unk_2835E58B0;
  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDSpan *uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(uaap::UPDDSpan *a1, const __CFString *a2, const __CFString *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v13 = *a6;
  *a6 = 0;
  v19 = v13;
  uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(a1, a2, a3, a4, a5, &v19);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  *a1 = &unk_2835E5950;
  v14 = *a7;
  *a7 = 0;
  *(a1 + 7) = v14;
  v15 = *a8;
  *a8 = 0;
  *(a1 + 8) = v15;
  v16 = *a9;
  *a9 = 0;
  *(a1 + 9) = v16;
  v17 = *a10;
  *a10 = 0;
  *(a1 + 10) = v17;
  *(a1 + 11) = 0;
  return a1;
}

{
  return uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_222975560(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uaap::UPDDDateOffsetSpan *uaap::UPDDDateOffsetSpan::UPDDDateOffsetSpan(uaap::UPDDDateOffsetSpan *this, __DDResult *a2)
{
  v4 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v4 = &unk_2835E5970;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  v6 = uaap::searchDDTreeWithType(a2, @"OccurrenceCount", v5);
  v8 = uaap::searchDDTreeWithType(a2, @"SpecialDatePeriodUnit", v7);
  if (v6)
  {
    operator new();
  }

  if (v8)
  {
    operator new();
  }

  return this;
}

void sub_2229757FC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 10);
  *(v1 + 10) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 9);
  *(v1 + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDDateOffsetSpan::~UPDDDateOffsetSpan(uaap::UPDDDateOffsetSpan *this)
{
  *this = &unk_2835E5970;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *this = &unk_2835E58B0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5970;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *this = &unk_2835E58B0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}

uaap::UPDDDateSpan *uaap::UPDDDateSpan::UPDDDateSpan(uaap::UPDDDateSpan *this, __DDResult *a2)
{
  v4 = uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(this, a2);
  *v4 = &unk_2835E5990;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 16) = 0;
  SubresultWithType = DDResultGetSubresultWithType();
  v6 = DDResultGetSubresultWithType();
  v7 = DDResultGetSubresultWithType();
  v8 = DDResultGetSubresultWithType();
  v9 = DDResultGetSubresultWithType();
  v11 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v9 | v11)
  {
    v12 = uaap::searchDDTreeWithType(a2, @"DayOfWeek", v10);
    v14 = uaap::searchDDTreeWithType(a2, @"DayOfNextWeek", v13);
    v16 = uaap::searchDDTreeWithType(a2, @"DayOfThisWeek", v15);
    if (v12)
    {
      operator new();
    }

    if (v14)
    {
      operator new();
    }

    if (v16)
    {
      operator new();
    }
  }

  if (v6)
  {
    operator new();
  }

  if (v7)
  {
    operator new();
  }

  if (v8)
  {
    operator new();
  }

  if (v11)
  {
    operator new();
  }

  return this;
}

void sub_222976108(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10E1C40AC054123);
  v5 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v3;
  *v3 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDDateSpan::~UPDDDateSpan(uaap::UPDDDateSpan *this)
{
  *this = &unk_2835E5990;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E5990;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDAbsoluteDateSpan::~UPDDAbsoluteDateSpan(this);
}

double uaap::UPDDDateSpan::UPDDDateSpan(uaap::UPDDSpan *a1, const __CFString *a2, const __CFString *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v11 = uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  *v11 = &unk_2835E5990;
  result = 0.0;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  v13 = *a11;
  *a11 = 0;
  *(v11 + 16) = v13;
  return result;
}

{
  v11 = uaap::UPDDAbsoluteDateSpan::UPDDAbsoluteDateSpan(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  *v11 = &unk_2835E5990;
  result = 0.0;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  v13 = *a11;
  *a11 = 0;
  *(v11 + 16) = v13;
  return result;
}

uaap::UPDDDateSpanWithReference *uaap::UPDDDateSpanWithReference::UPDDDateSpanWithReference(uaap::UPDDDateSpanWithReference *this, __DDResult *a2)
{
  v3 = uaap::UPDDDateTimeBaseSpan::UPDDDateTimeBaseSpan(this, a2);
  *v3 = &unk_2835E59B0;
  *(v3 + 7) = 0;
  *(v3 + 8) = 0;
  SubresultWithType = DDResultGetSubresultWithType();
  DDResultGetSubresultWithType();
  v5 = DDResultGetSubresultWithType();
  if (SubresultWithType)
  {
    operator new();
  }

  if (v5)
  {
    operator new();
  }

  return this;
}

void sub_2229767D4(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10E1C402100513ELL);
  v5 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  uaap::UPDDDateTimeBaseSpan::~UPDDDateTimeBaseSpan(v1);
  _Unwind_Resume(a1);
}

void uaap::UPDDDateSpanWithReference::~UPDDDateSpanWithReference(uaap::UPDDDateSpanWithReference *this)
{
  *this = &unk_2835E59B0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2835E58B0;
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  uaap::UPDDSpan::~UPDDSpan(this);

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E59B0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2835E58B0;
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  uaap::UPDDSpan::~UPDDSpan(this);
}