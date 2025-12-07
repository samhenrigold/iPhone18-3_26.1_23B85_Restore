uint64_t nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::logSpanCoverage(int *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v19);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (*(v4 + 48))
      {
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "span '", 6);
        v7 = MEMORY[0x223DC48E0](v6, *(v4 + 48));
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "' covers tokens [", 17);
        v9 = MEMORY[0x223DC4930](v8, *(v4 + 76));
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
        v11 = MEMORY[0x223DC4930](v10, *(v4 + 72));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ")\n", 2);
      }

      v4 += 88;
    }

    while (v4 != v5);
  }

  v12 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a1;
    if (v13 >= 8)
    {
      v15 = SNLPOSLoggerForCategory(4);
      v14 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v26 = 2048;
        v27 = v13;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v14 = off_2784B6F30[v13];
    }

    std::stringbuf::str();
    if (v28 >= 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    *v29 = 136315394;
    v30 = v14;
    v31 = 2080;
    v32 = v16;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "[%s] %s", v29, 0x16u);
    if (v28 < 0)
    {
      operator delete(*buf);
    }
  }

  v19[0] = *MEMORY[0x277D82818];
  v17 = *(MEMORY[0x277D82818] + 72);
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v20 = v17;
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v24);
}

void sub_2229A0EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance(void)::t);
}

void *boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t ***a3)
{
  (*(*a1 + 40))(v11);
  v6 = *a3;
  v5 = a3[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 3);
  v12 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2);
  v13 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
      result = boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a2, v10);
      v10 += 3;
    }

    while (v7);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(boost::archive::detail::basic_iserializer *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  if ((*(*(a1 + 6) + *(**(a1 + 6) - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  MEMORY[0x223DC4940]();
  return a1;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(boost::archive::detail::basic_iserializer *a1)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned int>(a1 + 6);
  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E86C0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E86C0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::vector<unsigned long>>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, unint64_t *a3)
{
  (*(*a1 + 40))(&v11);
  v6 = *a3;
  v5 = a3[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 3);
  v12 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2);
  v13 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v10, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
      v10 += 24;
    }

    while (v7);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  (*(*a1 + 40))(v12);
  v6 = *a3;
  v5 = a3[1];
  v7 = (v5 - *a3) >> 3;
  v13 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2);
  v14 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      v11 = v10 + 8;
      result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(a2);
      v10 = v11;
    }

    while (v7);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(boost::archive::detail::basic_iserializer *a1)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned long>(a1 + 6);
  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7CE0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7CE0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::vector<unsigned long>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E8648;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8648;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E8738;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8738;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E87B0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E87B0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::string>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::string>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::string>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t **a3)
{
  (*(*a1 + 40))(v10);
  v11 = 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v11);
  v12 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v5, &v12);
  v7 = *a3;
  if (v11--)
  {
    do
    {
      boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
      result = boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a2 + 5, v7);
      v9 = v11--;
      v7 += 3;
    }

    while (v9);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(boost::archive::detail::basic_iserializer *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  if ((*(**(a1 + 5) + 96))(*(a1 + 5), a2, 8) != 8)
  {
    boost::archive::archive_exception::archive_exception(v5, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v5);
  }

  return a1;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(boost::archive::detail::basic_iserializer *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  if ((*(**(a1 + 5) + 96))(*(a1 + 5), a2, 4) != 4)
  {
    boost::archive::archive_exception::archive_exception(v5, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v5);
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::string>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E84E0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E84E0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::vector<unsigned long>>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, char **a3)
{
  (*(*a1 + 40))(v10);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v11);
  v12 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v5, &v12);
  v7 = *a3;
  if (v11--)
  {
    do
    {
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v7, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
      v9 = v11--;
      v7 += 24;
    }

    while (v9);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(v8);
  v9 = (a3[1] - *a3) >> 3;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v9);
  v6 = *a3;
  if (*a3 != a3[1])
  {
    v7 = (8 * v9);
    result = (*(**(a2 + 5) + 96))(*(a2 + 5), v6, 8 * v9);
    if (result != v7)
    {
      boost::archive::archive_exception::archive_exception(v10, 13, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v10);
    }
  }

  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7A78;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7A78;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::vector<unsigned long>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E8368;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8368;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E8558;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8558;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E85D0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E85D0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 48, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>::save_object_data(uint64_t a1, uint64_t **a2, float **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(&v13);
  v6 = *a3;
  v5 = a3[1];
  v7 = v5 - *a3;
  v14 = v7;
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2);
  v15 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(a2);
  if (v5 != v6)
  {
    v9 = *a3;
    do
    {
      boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
      boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a2);
      v10 = a2[6];
      v11 = *v10;
      v12 = v10 + *(*v10 - 24);
      if ((v12[32] & 5) != 0)
      {
        boost::archive::archive_exception::archive_exception(v16, 13, 0, 0);
        boost::serialization::throw_exception<boost::archive::archive_exception>(v16);
      }

      ++v9;
      *(v12 + 2) = 9;
      *(v10 + *(v11 - 24) + 8) = *(v10 + *(v11 - 24) + 8) & 0xFFFFFEFB | 0x100;
      result = std::ostream::operator<<();
      --v7;
    }

    while (v7);
  }

  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7D58;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7D58;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7FE0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7FE0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 48, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(v8);
  v9 = (a3[1] - *a3) >> 2;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v9);
  v6 = *a3;
  if (*a3 != a3[1])
  {
    v7 = (4 * v9);
    result = (*(**(a2 + 5) + 96))(*(a2 + 5), v6, 4 * v9);
    if (result != v7)
    {
      boost::archive::archive_exception::archive_exception(v10, 13, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v10);
    }
  }

  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7BF0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7BF0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7F68;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7F68;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::get_instance(void)::t);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7DD0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7DD0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::get_instance(void)::t);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7C68;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7C68;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, unint64_t *a3)
{
  (*(*a1 + 40))(&v11);
  v6 = *a3;
  v5 = a3[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 4);
  v12 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2);
  v13 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v10, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance(void)::t);
      v10 += 48;
    }

    while (v7);
  }

  return result;
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t **a3)
{
  (*(*a1 + 40))(&v6);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a2, a3);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, (a3 + 3), boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, unint64_t *a3)
{
  (*(*a1 + 40))(&v11);
  v6 = *a3;
  v5 = a3[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 4);
  v12 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2);
  v13 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v10, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance(void)::t);
      v10 += 48;
    }

    while (v7);
  }

  return result;
}

void *boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t **a3)
{
  (*(*a1 + 40))(&v6);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a2, a3);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  return boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a2, a3 + 3);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7620;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7620;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7698;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7698;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7710;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7710;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7788;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7788;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7800;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7800;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, char **a3)
{
  (*(*a1 + 40))(v10);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v11);
  v12 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v5, &v12);
  v7 = *a3;
  if (v11--)
  {
    do
    {
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v7, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance(void)::t);
      v9 = v11--;
      v7 += 48;
    }

    while (v9);
  }

  return result;
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  (*(*a1 + 40))(&v6);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a2 + 5, a3);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, (a3 + 3), boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, char **a3)
{
  (*(*a1 + 40))(v10);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v11);
  v12 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v5, &v12);
  v7 = *a3;
  if (v11--)
  {
    do
    {
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v7, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance(void)::t);
      v9 = v11--;
      v7 += 48;
    }

    while (v9);
  }

  return result;
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  (*(*a1 + 40))(&v6);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a2 + 5, a3);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  return boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a2 + 5, a3 + 3);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E73C8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E73C8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7440;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7440;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E74B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E74B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7530;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7530;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E75A8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E75A8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2)
{
  (*(*a1 + 40))(&v6);
  v3 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(a2);
  v4 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(v3);
  return boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(v4);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E6E40;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6E40;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t a3)
{
  (*(*a1 + 40))(&v8);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<unsigned long>(a2, a3);
  v6 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<unsigned long>(v5, a3 + 8);
  return boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<unsigned long>(v6, a3 + 16);
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<unsigned long>(boost::archive::detail::basic_iserializer *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  if ((*(**(a1 + 5) + 96))(*(a1 + 5), a2, 8) != 8)
  {
    boost::archive::archive_exception::archive_exception(v5, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v5);
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E6DC8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6DC8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

std::string *snlp::ssu::cache::SSUCacheFileWriteStream::SSUCacheFileWriteStream(std::string *this, __int128 *a2, __int128 *a3, void **a4, void **a5, uint64_t a6)
{
  v6 = a6;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v12;
  }

  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  std::ofstream::basic_ofstream(&this[1], v13, 16);
  snlp::ssu::cache::SSUCacheFileWriteStream::buildArchive(&this[1], v6, &this[24].__r_.__value_.__r.__words[2]);
  this[30].__r_.__value_.__l.__size_ = a4;
  this[30].__r_.__value_.__r.__words[2] = a5;
  this[31].__r_.__value_.__s.__data_[16] = 0;
  *&this[31].__r_.__value_.__l.__data_ = 0u;
  v19[0] = 1;
  v19[1] = a4;
  v19[2] = a5;
  v20 = v19;
  data_low = LODWORD(this[30].__r_.__value_.__l.__data_);
  if (data_low == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v21 = &v20;
  (off_2835E6CA8[data_low])(&v21, &this[24].__r_.__value_.__r.__words[2]);
  v17 = *a3;
  v18 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v21 = &v17;
  v15 = LODWORD(this[30].__r_.__value_.__l.__data_);
  if (v15 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v19[0] = &v21;
  (off_2835E6EA8[v15])(v19, &this[24].__r_.__value_.__r.__words[2]);
  v19[0] = &v17;
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](v19);
  return this;
}

void sub_2229A3CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string *a10, std::string *a11, uint64_t a12, __int128 a13, std::string::size_type a14)
{
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&a10, "I/O stream exception: ");
    v16 = (*(*v14 + 16))(v14);
    v17 = std::string::append(&a10, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    a14 = v17->__r_.__value_.__r.__words[2];
    a13 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &a13);
    exception->__vftable = &unk_2835E6BA0;
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(exception_object);
    v20 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&a10, "Boost serialization exception: ");
    v21 = (*(*v19 + 16))(v19);
    v22 = std::string::append(&a10, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    a14 = v22->__r_.__value_.__r.__words[2];
    a13 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v20, &a13);
    v20->__vftable = &unk_2835E6BA0;
  }

  _Unwind_Resume(exception_object);
}

void sub_2229A3EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_2229A3F8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v15);
  __cxa_end_catch();
  JUMPOUT(0x2229A3FB4);
}

void snlp::ssu::cache::SSUCacheFileWriteStream::buildArchive(uint64_t *a1@<X0>, int a2@<W1>, boost::archive::detail::basic_oarchive *a3@<X8>)
{
  if (a2)
  {
    v4 = boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::text_oarchive_impl(a3, a1, 0);
    *a3 = &unk_2835E6BC8;
    boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init(v4);
    v5 = 1;
  }

  else
  {
    v6 = boost::archive::binary_oarchive_impl<boost::archive::binary_oarchive,char,std::char_traits<char>>::binary_oarchive_impl(a3, a1, 0);
    *a3 = &unk_2835E6C40;
    boost::archive::basic_binary_oarchive<boost::archive::binary_oarchive>::init(v6);
    boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::init(a3 + 5);
    v5 = 0;
  }

  *(a3 + 32) = v5;
}

void sub_2229A405C(_Unwind_Exception *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(v1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v1 + 48);
  _Unwind_Resume(a1);
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x277D82810];
  v2 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x223DC47C0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectIntentList>(snlp::ssu::cache::SSUCacheObjectIntentList)::{lambda(snlp::ssu::cache::SSUCacheObjectIntentList&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectIntentList>(snlp::ssu::cache::SSUCacheObjectIntentList)::{lambda(snlp::ssu::cache::SSUCacheObjectIntentList&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectHeader>(snlp::ssu::cache::SSUCacheObjectHeader)::{lambda(snlp::ssu::cache::SSUCacheObjectHeader&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectHeader>(snlp::ssu::cache::SSUCacheObjectHeader)::{lambda(snlp::ssu::cache::SSUCacheObjectHeader&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance(void)::t);
}

void boost::archive::binary_oarchive::~binary_oarchive(boost::archive::binary_oarchive *this)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v1 + 5);

  JUMPOUT(0x223DC4D00);
}

{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v1 + 5);
}

void boost::archive::text_oarchive::~text_oarchive(boost::archive::text_oarchive *this)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v1 + 48);

  JUMPOUT(0x223DC4D00);
}

{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v1 + 48);
}

void snlp::ssu::cache::SSUCacheFileWriteStream::path(snlp::ssu::cache::SSUCacheFileWriteStream *this@<X0>, std::string *a2@<X8>)
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

uint64_t snlp::ssu::cache::SSUCacheFileWriteStream::isAtEnd(snlp::ssu::cache::SSUCacheFileWriteStream *this)
{
  if (*(this + 93) == *(this + 91) && *(this + 94) == *(this + 92))
  {
    v1 = *(this + 760);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL snlp::ssu::cache::SSUCacheFileWriteStream::writeBatchNegative(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 744);
  v3 = *(a1 + 728);
  if (v2 == v3)
  {
    v7 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "Client tried to write the next negative cached encodings batch when there are none remaining to be written", buf, 2u);
    }
  }

  else
  {
    *buf = *a2;
    v10 = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *__p = *(a2 + 24);
    v12 = *(a2 + 40);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v13 = buf;
    v5 = *(a1 + 720);
    if (v5 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v14 = &v13;
    (off_2835E7E38[v5])(&v14, a1 + 592);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v6 = *(a1 + 744) + 1;
    *(a1 + 744) = v6;
    if (v6 == *(a1 + 728))
    {
      snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<unsigned long>(a1, 4660);
    }
  }

  return v2 != v3;
}

void sub_2229A46E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_2229A4774(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v15);
  __cxa_end_catch();
  JUMPOUT(0x2229A479CLL);
}

uint64_t snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<unsigned long>(uint64_t a1, uint64_t a2)
{
  v4 = &v5;
  v5 = a2;
  v2 = *(a1 + 720);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v4;
  return (off_2835E7E48[v2])(&v6, a1 + 592);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance(void)::t);
}

BOOL snlp::ssu::cache::SSUCacheFileWriteStream::writeBatchPositive(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 744) >= *(a1 + 728))
  {
    if (*(a1 + 752) == *(a1 + 736))
    {
      v2 = SNLPOSLoggerForCategory(8);
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        v4 = "Client tried to write the next positive cached encodings batch when there are none remaining to be written";
        goto LABEL_7;
      }
    }

    else
    {
      *buf = *a2;
      v9 = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *v10 = *(a2 + 24);
      v11 = *(a2 + 40);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *__p = *(a2 + 48);
      v13 = *(a2 + 64);
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      v14 = buf;
      v6 = *(a1 + 720);
      if (v6 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v15 = &v14;
      (off_2835E8048[v6])(&v15, a1 + 592);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v10[0])
      {
        v10[1] = v10[0];
        operator delete(v10[0]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v7 = *(a1 + 752) + 1;
      *(a1 + 752) = v7;
      if (v7 == *(a1 + 736))
      {
        snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<unsigned long>(a1, 22136);
      }

      return 1;
    }
  }

  else
  {
    v2 = SNLPOSLoggerForCategory(8);
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v4 = "Client tried to write a positive cached encodings batch when there are still negative batches remaining to be written";
LABEL_7:
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, v4, buf, 2u);
      return 0;
    }
  }

  return result;
}

void sub_2229A4C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_2229A4C7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
      goto LABEL_8;
    }
  }

  else if (!v22)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x2229A4CD8);
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance(void)::t);
}

BOOL snlp::ssu::cache::SSUCacheFileWriteStream::writeDebugInformation(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 744) >= *(a1 + 728))
  {
    if (*(a1 + 752) >= *(a1 + 736))
    {
      if (*(a1 + 760) == 1)
      {
        v2 = SNLPOSLoggerForCategory(8);
        result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 0;
          v4 = "Client tried to write debug information when this have already been written";
          goto LABEL_10;
        }
      }

      else
      {
        *buf = *a2;
        v9 = *(a2 + 16);
        *a2 = 0;
        *(a2 + 8) = 0;
        v10 = *(a2 + 24);
        v11 = *(a2 + 40);
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        v12 = buf;
        v6 = *(a1 + 720);
        if (v6 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v13 = &v12;
        (off_2835E8818[v6])(&v13, a1 + 592);
        v7[0] = &v10;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v7);
        v7[0] = buf;
        std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](v7);
        result = 1;
        *(a1 + 760) = 1;
      }
    }

    else
    {
      v2 = SNLPOSLoggerForCategory(8);
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        v4 = "Client tried to write positive plaintext examples when there are still positive batches remaining to be written";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v2 = SNLPOSLoggerForCategory(8);
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v4 = "Client tried to write positive plaintext examples when there are still negative batches remaining to be written";
LABEL_10:
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, v4, buf, 2u);
      return 0;
    }
  }

  return result;
}

void sub_2229A50C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_2229A5120(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
      goto LABEL_8;
    }
  }

  else if (!v22)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x2229A517CLL);
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectDebugInformation>(snlp::ssu::cache::SSUCacheObjectDebugInformation)::{lambda(snlp::ssu::cache::SSUCacheObjectDebugInformation&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectDebugInformation>(snlp::ssu::cache::SSUCacheObjectDebugInformation)::{lambda(snlp::ssu::cache::SSUCacheObjectDebugInformation&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(const void ***a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance(void)::t);
}

unint64_t snlp::ssu::trigger::SSUTriggerAppName::isTriggered(snlp::ssu::trigger::SSUTriggerAppName *this, const snlp::ssu::proto::SSUValidatedRequest *a2)
{
  snlp::ssu::proto::SSUValidatedRequest::getAppNameMatchingSpanBundleIds(a2, a2, &v14);
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
  return (v4 != v3) | ((v4 != v3) << 32);
}

void snlp::ssu::trigger::SSUTriggerAppName::~SSUTriggerAppName(void **this)
{
  *this = &unk_2835E8838;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E8838;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

__n128 snlp::ssu::trigger::SSUTriggerAppName::SSUTriggerAppName(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2835E8838;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2835E8838;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

void snlp::ssu::espresso::SSUNessieModule::forward(snlp::ssu::espresso::SSUNessieModule *this, uint64_t **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 432));
  if (a2[1] != *a2)
  {
    v4 = **a2;
    v5 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v7 = v4;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "Reshaping input descriptors to use batch size %lu", buf, 0xCu);
    }

    snlp::ssu::espresso::SSUNessieModule::reshapeInputDescriptors(this, v4);
  }

  std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
}

void sub_2229A6084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v11);
  std::mutex::unlock((v10 + 432));
  _Unwind_Resume(a1);
}

double snlp::ssu::espresso::SSUNessieModule::getOutputs@<D0>(E5RT::ExecutionStreamOperation **this@<X0>, _OWORD *a2@<X8>)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(this, this + 50, &v12);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[22]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 50);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  E5RT::IOPort::GetPortDescriptor(&v10, v5[5]);
  v6 = E5RT::OperandDescriptor::TensorDescriptor(v10);
  NumElements = E5RT::TensorDescriptor::GetNumElements(v6);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::vector<float>::resize(&v13 + 1, NumElements);
  v8 = v13;
  *a2 = v12;
  a2[1] = v8;
  result = *&v14;
  a2[2] = v14;
  return result;
}

void sub_2229A6160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::espresso::SSUNessieModule::setInputs(const void **this, const snlp::ssu::espresso::SSUNessieModuleInputs *a2)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 47, a2 + 48);

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 44, a2);
}

void nlv4_inference_orchestrator::placeholder::VerbExtractor::extractVerbFromUsoGraph(const siri::ontology::UsoGraph *a1@<X1>, std::string *a2@<X8>)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 1065353216;
  v3 = *(a1 + 11);
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v15 = v3;
  std::deque<siri::ontology::UsoGraphNode const*>::push_back(&v17, &v15);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v5 = MEMORY[0x277D5F620];
    do
    {
      v6 = *(*(*(&v17 + 1) + (((v4 + v19 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + v19 - 1) & 0x1FF));
      if (!v6)
      {
        break;
      }

      if ((*(*v6 + 16))(v6) == 1)
      {
        if (v7)
        {
          v12 = v7[13];
          if (*(v12 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(a2, *(v12 + 40), *(v12 + 48));
          }

          else
          {
            v13 = *(v12 + 40);
            a2->__r_.__value_.__r.__words[2] = *(v12 + 56);
            *&a2->__r_.__value_.__l.__data_ = v13;
          }

          v11 = 1;
          goto LABEL_18;
        }
      }

      if (v18 == *(&v17 + 1))
      {
        v8 = 0;
      }

      else
      {
        v8 = ((v18 - *(&v17 + 1)) << 6) - 1;
      }

      if ((v8 - (--*(&v19 + 1) + v19)) >= 0x400)
      {
        operator delete(*(v18 - 8));
        *&v18 = v18 - 8;
      }

      siri::ontology::UsoGraph::getSuccessorsWithEdges(&v15, *(v6 + 8), v6);
      v9 = v15;
      v10 = v16;
      if (v15 != v16)
      {
        do
        {
          v14 = *v9;
          std::deque<siri::ontology::UsoGraphNode const*>::push_back(&v17, &v14);
          v9 += 2;
        }

        while (v9 != v10);
        v9 = v15;
      }

      if (v9)
      {
        v16 = v9;
        operator delete(v9);
      }

      v4 = *(&v19 + 1);
    }

    while (*(&v19 + 1));
  }

  v11 = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
LABEL_18:
  a2[1].__r_.__value_.__s.__data_[0] = v11;
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](&v17);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(0);
}

void nlv4_inference_orchestrator::placeholder::VerbExtractor::getVerbFromUserDialogAct(nlv4_inference_orchestrator::placeholder::VerbExtractor *this@<X0>, const sirinluexternal::UserDialogAct *a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(this + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v14 = 0;
  }

  v6 = *(a2 + 1);
  if (v6 && *(v6 + 16))
  {
    operator new();
  }

  v7 = *(a2 + 6);
  if (v7 && *(v7 + 16))
  {
    operator new();
  }

  v8 = *(a2 + 4);
  if (v8 && *(v8 + 8))
  {
    operator new();
  }

  v9 = *(a2 + 10);
  if (v9 && *(v9 + 8))
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (v10 && *(v10 + 8))
  {
    operator new();
  }

  v11 = *(a2 + 9);
  if (v11 && *(v11 + 8))
  {
    operator new();
  }

  v12 = *(a2 + 8);
  if (v12 && *(v12 + 8))
  {
    operator new();
  }

  v13 = *(a2 + 7);
  if (v13 && *(v13 + 8))
  {
    operator new();
  }

  a3->__r_.__value_.__s.__data_[0] = 0;
  a3[1].__r_.__value_.__s.__data_[0] = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_2229A67C8(void *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10A0C403D23BABBLL);
  __cxa_begin_catch(a1);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x2229A679CLL);
}

void sub_2229A6868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<siri::ontology::UsoGraphNode const*>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode **>>(v13);
    }

    a1[4] = v8 - 512;
    v14 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<nlv4_inference_orchestrator::trees::TreeNode **>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode **&>(a1, &v14);
    v5 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

void sub_2229A6DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *nlv4_inference_orchestrator::trees::operator<<(void *a1, uint64_t **a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "TreeNode[", 9);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "label:'", 7);
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
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "', ", 3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "value:'", 7);
  v11 = *(a2 + 47);
  if (v11 >= 0)
  {
    v12 = (a2 + 3);
  }

  else
  {
    v12 = a2[3];
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 47);
  }

  else
  {
    v13 = a2[4];
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "', ", 3);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "parentArgument:'", 16);
  v19 = a2[6];
  v18 = (a2 + 6);
  v17 = v19;
  v20 = *(v18 + 23);
  if (v20 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  if (v20 >= 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = v18[1];
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "', ", 3);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "UTF-8 code unit indices:[", 25);
  v26 = MEMORY[0x223DC4940](v25, v18[3]);
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", ", 2);
  v28 = MEMORY[0x223DC4940](v27, v18[4]);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "), ", 3);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "UTF-16 code unit indices:[", 26);
  v31 = MEMORY[0x223DC4940](v30, v18[8]);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", ", 2);
  v33 = MEMORY[0x223DC4940](v32, v18[9]);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "), ", 3);
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unicode code point indices:[", 28);
  v36 = MEMORY[0x223DC4940](v35, v18[10]);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", ", 2);
  v38 = MEMORY[0x223DC4940](v37, v18[11]);
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ")", 1);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "]", 1);
}

uint64_t snlp::common::text_uso_graph::SpacedTextTreeLexer::lex(uint64_t a1, const std::string *a2, uint64_t a3)
{
  nlv4_inference_orchestrator::trees::trimWhitespace(&v85, a2);
  do
  {
    size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v85.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_217;
    }

    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    *v75 = 0u;
    memset(v76, 0, 25);
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    v87[0] = 0u;
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v85;
    }

    else
    {
      v6 = v85.__r_.__value_.__r.__words[0];
    }

    *(v87 + 9) = 0uLL;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 32, v6, (v6 + size), &__p, 0);
    v8 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v85;
    }

    else
    {
      v9 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v9, v9 + v8, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v7)
    {
      v10 = v75[0];
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v11 <= 1)
      {
        v12 = v75;
      }

      else
      {
        v12 = v75[0];
      }

      if (*(v12 + 40) == 1)
      {
        if (v11 <= 1)
        {
          v10 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v10[3], v10[4], v10[4] - v10[3]);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      (*(*a3 + 16))(a3, &__p);
    }

    else
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      __p = 0u;
      memset(v87, 0, 25);
      v13 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v85;
      }

      else
      {
        v14 = v85.__r_.__value_.__r.__words[0];
      }

      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = v85.__r_.__value_.__l.__size_;
      }

      v15 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 96, v14, (v14 + v13), &__p, 0);
      v16 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v85;
      }

      else
      {
        v17 = v85.__r_.__value_.__r.__words[0];
      }

      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v85.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v17, v17 + v16, &__p, 0);
      if (__p)
      {
        operator delete(__p);
      }

      if (v15)
      {
        v18 = v75[0];
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
        if (v19 <= 1)
        {
          v20 = v75;
        }

        else
        {
          v20 = v75[0];
        }

        if (*(v20 + 40) == 1)
        {
          if (v19 <= 1)
          {
            v18 = v75;
          }

          std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v18[3], v18[4], v18[4] - v18[3]);
        }

        else
        {
          __p = 0uLL;
          *&v87[0] = 0;
        }

        v29 = std::stoi(&__p, 0, 10);
        (*(*a3 + 24))(a3, v29);
      }

      else
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        __p = 0u;
        memset(v87, 0, 25);
        v21 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v85;
        }

        else
        {
          v22 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v85.__r_.__value_.__l.__size_;
        }

        v23 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 160, v22, (v22 + v21), &__p, 0);
        v24 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v85;
        }

        else
        {
          v25 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v85.__r_.__value_.__l.__size_;
        }

        std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v25, v25 + v24, &__p, 0);
        if (__p)
        {
          operator delete(__p);
        }

        if (!v23)
        {
          goto LABEL_201;
        }

        v26 = v75[0];
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
        if (v27 <= 1)
        {
          v28 = v75;
        }

        else
        {
          v28 = v75[0];
        }

        if (*(v28 + 40) == 1)
        {
          if (v27 <= 1)
          {
            v26 = v75;
          }

          std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v26[3], v26[4], v26[4] - v26[3]);
        }

        else
        {
          __p = 0uLL;
          *&v87[0] = 0;
        }

        (**a3)(a3, &__p);
      }
    }

    if (SBYTE7(v87[0]) < 0)
    {
      operator delete(__p);
    }

    if (v82 == 1)
    {
      std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
    }

    else
    {
      __p = 0uLL;
      *&v87[0] = 0;
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v85.__r_.__value_.__r.__words[2] = *&v87[0];
    *&v85.__r_.__value_.__l.__data_ = __p;
    v30 = BYTE7(v87[0]);
    v31 = SBYTE7(v87[0]);
    if (SBYTE7(v87[0]) < 0)
    {
      v30 = v85.__r_.__value_.__l.__size_;
    }

    if (!v30)
    {
      goto LABEL_200;
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    v87[0] = 0u;
    if (v31 >= 0)
    {
      v32 = &v85;
    }

    else
    {
      v32 = v85.__r_.__value_.__r.__words[0];
    }

    *(v87 + 9) = 0uLL;
    v33 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 352, v32, (v32 + v30), &__p, 0);
    v34 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v85;
    }

    else
    {
      v35 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v35, v35 + v34, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v33)
    {
      v36 = v75[0];
      v37 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v37 <= 1)
      {
        v38 = v75;
      }

      else
      {
        v38 = v75[0];
      }

      if (*(v38 + 40) == 1)
      {
        if (v37 <= 1)
        {
          v36 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v36[3], v36[4], v36[4] - v36[3]);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      (*(*a3 + 40))(a3, &__p);
      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p);
      }

      if (v82 == 1)
      {
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      *&v85.__r_.__value_.__l.__data_ = __p;
      v85.__r_.__value_.__r.__words[2] = *&v87[0];
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    memset(v87, 0, 25);
    v39 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v85;
    }

    else
    {
      v40 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = v85.__r_.__value_.__l.__size_;
    }

    v41 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 416, v40, (v40 + v39), &__p, 0);
    v42 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v85;
    }

    else
    {
      v43 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v43, v43 + v42, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v41)
    {
      v44 = v75[0];
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v45 <= 1)
      {
        v46 = v75;
      }

      else
      {
        v46 = v75[0];
      }

      if (*(v46 + 40) == 1)
      {
        if (v45 <= 1)
        {
          v44 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v44[3], v44[4], v44[4] - v44[3]);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      v47 = std::stoi(&__p, 0, 10);
      v48 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      v49 = v75[0] + 64;
      if (v48 <= 2)
      {
        v49 = &v76[1] + 8;
      }

      if (*v49 == 1)
      {
        v50 = v48 > 2;
        if (v48 <= 2)
        {
          v51 = v76 + 8;
        }

        else
        {
          v51 = v75[0] + 48;
        }

        v52 = (v75[0] + 56);
        if (!v50)
        {
          v52 = &v76[1];
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__str, *v51, *v52, &(*v52)[-*v51]);
      }

      else
      {
        memset(&__str, 0, sizeof(__str));
      }

      v53 = std::stoi(&__str, 0, 10);
      (*(*a3 + 48))(a3, v47, v53);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p);
      }

      if (v82 == 1)
      {
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      *&v85.__r_.__value_.__l.__data_ = __p;
      v85.__r_.__value_.__r.__words[2] = *&v87[0];
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    memset(v87, 0, 25);
    v54 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v85;
    }

    else
    {
      v55 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v54 = v85.__r_.__value_.__l.__size_;
    }

    v56 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 288, v55, (v55 + v54), &__p, 0);
    v57 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v85;
    }

    else
    {
      v58 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v57 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v58, v58 + v57, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v56)
    {
      v59 = v75[0];
      v60 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v60 <= 1)
      {
        v61 = v75;
      }

      else
      {
        v61 = v75[0];
      }

      if (*(v61 + 40) == 1)
      {
        if (v60 <= 1)
        {
          v59 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v59[3], v59[4], v59[4] - v59[3]);
        if ((SBYTE7(v87[0]) & 0x80u) == 0)
        {
          v62 = BYTE7(v87[0]);
        }

        else
        {
          v62 = DWORD2(__p);
        }
      }

      else
      {
        v62 = 0;
        __p = 0uLL;
        *&v87[0] = 0;
      }

      (*(*a3 + 32))(a3, v62);
      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p);
      }

      if (v82 == 1)
      {
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      *&v85.__r_.__value_.__l.__data_ = __p;
      v85.__r_.__value_.__r.__words[2] = *&v87[0];
    }

    v63 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v85.__r_.__value_.__l.__size_;
    }

    if (!v63)
    {
LABEL_200:
      v71 = 3;
      goto LABEL_213;
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    v87[0] = 0u;
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v85;
    }

    else
    {
      v64 = v85.__r_.__value_.__r.__words[0];
    }

    *(v87 + 9) = 0uLL;
    v65 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 224, v64, (v64 + v63), &__p, 0);
    v66 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v85;
    }

    else
    {
      v67 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v66 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v67, v67 + v66, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v65)
    {
      v68 = v75[0];
      v69 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v69 <= 1)
      {
        v70 = v75;
      }

      else
      {
        v70 = v75[0];
      }

      if (*(v70 + 40) == 1)
      {
        if (v69 <= 1)
        {
          v68 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v68[3], v68[4], v68[4] - v68[3]);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      (*(*a3 + 8))(a3, &__p);
      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p);
      }

      if (v82 == 1)
      {
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      v71 = 0;
      *&v85.__r_.__value_.__l.__data_ = __p;
      v85.__r_.__value_.__r.__words[2] = *&v87[0];
      goto LABEL_213;
    }

LABEL_201:
    std::operator+<char>();
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = __p;
    *(a1 + 24) = *&v87[0];
    v71 = 1;
LABEL_213:
    if (v75[0])
    {
      v75[1] = v75[0];
      operator delete(v75[0]);
    }
  }

  while (!v71);
  if (v71 == 3)
  {
LABEL_217:
    v72 = 1;
    goto LABEL_219;
  }

  v72 = 0;
LABEL_219:
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  return v72;
}

void sub_2229A7C18()
{
  if (v1)
  {
    operator delete(v1);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(v0);
}

uint64_t nlv4_inference_orchestrator::span_matching::SpanTruncator::truncateSpans(char *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *a2;
  v7 = a2[1];
  v8 = 126 - 2 * __clz((v7 - v6) >> 5);
  __s = a1;
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,false>(v6, v7, &__s, v9, 1);
  v10 = 0;
  v11 = 0;
  while ((a2[1] - *a2) >> 5 > v10)
  {
    v12 = *(*a2 + 32 * v10 + 24);
    v11 += (v12[2] - v12[1]) >> 2 << (v12[7] != 0);
    ++v10;
    if (v11 >= v3)
    {
      goto LABEL_9;
    }
  }

  v10 = v3;
LABEL_9:
  nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpans(a1, a2, v10);
  __s = "";
  MEMORY[0x223DC3160](v30, a1 + 48);
  v13 = strlen(__s);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v32) = v13;
  if (v13)
  {
    memmove(&__dst, __s, v13);
  }

  *(&__dst + v14) = 0;
  v33 = v30;
  v15 = v10;
  v17 = *a2;
  v16 = a2[1];
  v18 = (v16 - *a2) >> 5;
  if (v15 <= v18)
  {
    if (v15 < v18)
    {
      v22 = (v17 + 32 * v15);
      while (v16 != v22)
      {
        v23 = v16[-1].__r_.__value_.__s.__data_[15];
        v16 = (v16 - 32);
        if (v23 < 0)
        {
          operator delete(v16->__r_.__value_.__l.__data_);
        }
      }

      a2[1] = v22;
    }
  }

  else
  {
    v19 = a2[2];
    if (v15 - v18 > (v19 - v16) >> 5)
    {
      v34 = a2;
      v20 = (v19 - v17) >> 4;
      if (v20 <= v15)
      {
        v20 = v15;
      }

      if ((v19 - v17) >= 0x7FFFFFFFFFFFFFE0)
      {
        v21 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v21);
    }

    v24 = v16 + 32 * (v15 - v18);
    v25 = SHIBYTE(v32);
    v26 = __dst;
    v27 = 32 * v15 - 32 * v18;
    do
    {
      if (v25 < 0)
      {
        std::string::__init_copy_ctor_external(v16, v26, *(&v26 + 1));
      }

      else
      {
        *&v16->__r_.__value_.__l.__data_ = __dst;
        v16->__r_.__value_.__r.__words[2] = v32;
      }

      v16[1].__r_.__value_.__r.__words[0] = v30;
      v16 = (v16 + 32);
      v27 -= 32;
    }

    while (v27);
    a2[1] = v24;
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

  return MEMORY[0x223DC3180](v30);
}

void sub_2229A7FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DC3180](v30, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,false>(unint64_t a1, void **a2, nlv4_inference_orchestrator::span_matching::SpanTruncator **a3, uint64_t a4, char a5)
{
  while (2)
  {
    v212 = (a2 - 1);
    v215 = a2;
    v208 = (a2 - 5);
    v203 = a2 - 12;
    v204 = a2 - 8;
    v206 = a2 - 4;
    v207 = (a2 - 9);
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = (a2 - v9) >> 5;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v127 = (a1 + 56);
                v128 = (a1 + 32);
                v129 = (a1 + 24);
                v130 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 56), *(a1 + 24));
                v131 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v212, *(a1 + 56));
                if (v130)
                {
                  if (v131)
                  {
                    v272 = *(a1 + 16);
                    v243 = *a1;
                    v132 = *v206;
                    *(a1 + 16) = v206[2];
                    *a1 = v132;
                    v206[2] = v272;
                    *v206 = v243;
                  }

                  else
                  {
                    v274 = *(a1 + 16);
                    v249 = *a1;
                    *a1 = *v128;
                    *(a1 + 16) = *(a1 + 48);
                    *v128 = v249;
                    *(a1 + 48) = v274;
                    v198 = *(a1 + 24);
                    *(a1 + 24) = *(a1 + 56);
                    *(a1 + 56) = v198;
                    if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v212, v198))
                    {
                      return;
                    }

                    v199 = *v128;
                    v200 = *(a1 + 48);
                    v201 = v206[2];
                    *v128 = *v206;
                    *(a1 + 48) = v201;
                    v206[2] = v200;
                    *v206 = v199;
                    v129 = (a1 + 56);
                  }

                  v127 = v212;
                }

                else
                {
                  if (!v131)
                  {
                    return;
                  }

                  v184 = *v128;
                  v185 = *(a1 + 48);
                  v186 = v206[2];
                  *v128 = *v206;
                  *(a1 + 48) = v186;
                  v206[2] = v185;
                  *v206 = v184;
                  v187 = *v127;
                  *v127 = *v212;
                  *v212 = v187;
                  if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v127, *v129))
                  {
                    return;
                  }

                  v273 = *(a1 + 16);
                  v247 = *a1;
                  *a1 = *v128;
                  *(a1 + 16) = *(a1 + 48);
                  *v128 = v247;
                  *(a1 + 48) = v273;
                }

                v202 = *v129;
                *v129 = *v127;
                *v127 = v202;
                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, (a1 + 32), (a1 + 64), v206, a3);
                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), v206, a3);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v212, *(a1 + 24)))
              {
                v271 = *(a1 + 16);
                v242 = *a1;
                v125 = *v206;
                *(a1 + 16) = v206[2];
                *a1 = v125;
                v206[2] = v271;
                *v206 = v242;
                v126 = *(a1 + 24);
                *(a1 + 24) = *v212;
                *v212 = v126;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v133 = (a1 + 32);
            v135 = a1 == a2 || v133 == a2;
            if (a5)
            {
              if (!v135)
              {
                v136 = 0;
                v137 = a1;
                do
                {
                  v138 = v133;
                  if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v133[3], *(v137 + 24)))
                  {
                    v139 = *v138;
                    *v244 = v138[1];
                    *&v244[7] = *(v138 + 15);
                    v140 = *(v138 + 23);
                    v138[1] = 0;
                    v138[2] = 0;
                    *v138 = 0;
                    v141 = *(v137 + 56);
                    v142 = v136;
                    while (1)
                    {
                      v143 = a1 + v142;
                      if (*(a1 + v142 + 55) < 0)
                      {
                        operator delete(*(v143 + 32));
                      }

                      *(v143 + 32) = *v143;
                      v144 = *(v143 + 16);
                      v145 = *(v143 + 24);
                      *(v143 + 23) = 0;
                      *v143 = 0;
                      *(v143 + 48) = v144;
                      *(v143 + 56) = v145;
                      if (!v142)
                      {
                        break;
                      }

                      v146 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v141, *(a1 + v142 - 8));
                      v142 -= 32;
                      if (!v146)
                      {
                        v147 = a1 + v142 + 32;
                        goto LABEL_141;
                      }
                    }

                    v147 = a1;
LABEL_141:
                    a2 = v215;
                    if (*(v147 + 23) < 0)
                    {
                      operator delete(*v147);
                    }

                    *v147 = v139;
                    *(v147 + 8) = *v244;
                    *(v147 + 15) = *&v244[7];
                    *(v147 + 23) = v140;
                    *(v147 + 24) = v141;
                  }

                  v133 = v138 + 4;
                  v136 += 32;
                  v137 = v138;
                }

                while (v138 + 4 != a2);
              }
            }

            else if (!v135)
            {
              v188 = a1 - 8;
              do
              {
                v189 = v133;
                if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v133[3], *(a1 + 24)))
                {
                  v190 = *v189;
                  *v248 = *(v189 + 8);
                  *&v248[7] = *(v189 + 15);
                  v191 = *(v189 + 23);
                  *(v189 + 8) = 0;
                  *(v189 + 16) = 0;
                  *v189 = 0;
                  v192 = *(a1 + 56);
                  v193 = v188;
                  do
                  {
                    v194 = v193;
                    if (*(v193 + 63) < 0)
                    {
                      operator delete(*(v193 + 40));
                    }

                    *(v194 + 40) = *(v194 + 8);
                    v195 = *(v194 + 24);
                    v196 = *(v194 + 32);
                    *(v194 + 31) = 0;
                    *(v194 + 8) = 0;
                    *(v194 + 56) = v195;
                    *(v194 + 64) = v196;
                    v197 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v192, *v194);
                    v193 = v194 - 32;
                  }

                  while (v197);
                  if (*(v194 + 31) < 0)
                  {
                    operator delete(*(v194 + 8));
                  }

                  *(v194 + 8) = v190;
                  *(v194 + 23) = *&v248[7];
                  *(v194 + 16) = *v248;
                  *(v194 + 31) = v191;
                  *(v194 + 32) = v192;
                }

                v133 = (v189 + 32);
                v188 += 32;
                a1 = v189;
              }

              while ((v189 + 32) != a2);
            }

            return;
          }

          if (!a4)
          {
            if (a1 != a2)
            {
              v148 = v11 >> 1;
              v149 = v11 >> 1;
              do
              {
                v150 = v149;
                if (v148 >= v149)
                {
                  v151 = (2 * v149) | 1;
                  v152 = a1 + 32 * v151;
                  v153 = *a3;
                  if (2 * v149 + 2 < v10)
                  {
                    v154 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(v153, *(v152 + 24), *(v152 + 56));
                    v155 = 32;
                    if (!v154)
                    {
                      v155 = 0;
                    }

                    v152 += v155;
                    if (v154)
                    {
                      v151 = 2 * v150 + 2;
                    }

                    v153 = *a3;
                  }

                  v156 = a1 + 32 * v150;
                  if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(v153, *(v152 + 24), *(v156 + 24)))
                  {
                    v210 = *v156;
                    *&v245[7] = *(v156 + 15);
                    *v245 = *(v156 + 8);
                    v213 = *(v156 + 23);
                    *v156 = 0;
                    *(v156 + 8) = 0;
                    *(v156 + 16) = 0;
                    v157 = *(v156 + 24);
                    do
                    {
                      v158 = v152;
                      if (*(v156 + 23) < 0)
                      {
                        operator delete(*v156);
                      }

                      v159 = *v152;
                      *(v156 + 16) = *(v152 + 16);
                      *v156 = v159;
                      *(v152 + 23) = 0;
                      *v152 = 0;
                      *(v156 + 24) = *(v152 + 24);
                      if (v148 < v151)
                      {
                        break;
                      }

                      v160 = (2 * v151) | 1;
                      v152 = a1 + 32 * v160;
                      v151 = 2 * v151 + 2;
                      if (v151 >= v10)
                      {
                        v151 = v160;
                      }

                      else
                      {
                        v161 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v152 + 24), *(v152 + 56));
                        v162 = 32;
                        if (!v161)
                        {
                          v162 = 0;
                        }

                        v152 += v162;
                        if (!v161)
                        {
                          v151 = v160;
                        }
                      }

                      v156 = v158;
                    }

                    while (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v152 + 24), v157));
                    if (*(v158 + 23) < 0)
                    {
                      operator delete(*v158);
                    }

                    *v158 = v210;
                    *(v158 + 8) = *v245;
                    *(v158 + 15) = *&v245[7];
                    *(v158 + 23) = v213;
                    *(v158 + 24) = v157;
                  }
                }

                v149 = v150 - 1;
              }

              while (v150);
              v163 = v215;
              do
              {
                v164 = 0;
                v165 = v163;
                v166 = *a1;
                *v220 = *(a1 + 8);
                *&v220[7] = *(a1 + 15);
                v216 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v211 = *(a1 + 24);
                v214 = v166;
                v167 = a1;
                do
                {
                  v168 = v167 + 32 * v164;
                  v169 = v168 + 32;
                  v170 = (2 * v164) | 1;
                  v164 = 2 * v164 + 2;
                  if (v164 >= v10)
                  {
                    v164 = v170;
                  }

                  else if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v168 + 56), *(v168 + 88)))
                  {
                    v169 = v168 + 64;
                  }

                  else
                  {
                    v164 = v170;
                  }

                  if (*(v167 + 23) < 0)
                  {
                    operator delete(*v167);
                  }

                  v171 = *v169;
                  *(v167 + 16) = *(v169 + 16);
                  *v167 = v171;
                  *(v169 + 23) = 0;
                  *v169 = 0;
                  *(v167 + 24) = *(v169 + 24);
                  v167 = v169;
                }

                while (v164 <= ((v10 - 2) >> 1));
                v163 = v165 - 4;
                v172 = *(v169 + 23);
                if (v169 == v165 - 4)
                {
                  if (v172 < 0)
                  {
                    operator delete(*v169);
                  }

                  *v169 = v214;
                  *(v169 + 8) = *v220;
                  *(v169 + 15) = *&v220[7];
                  *(v169 + 23) = v216;
                  *(v169 + 24) = v211;
                }

                else
                {
                  if (v172 < 0)
                  {
                    operator delete(*v169);
                  }

                  v173 = *v163;
                  *(v169 + 16) = *(v165 - 2);
                  *v169 = v173;
                  *(v165 - 9) = 0;
                  *(v165 - 32) = 0;
                  *(v169 + 24) = *(v165 - 1);
                  if (*(v165 - 9) < 0)
                  {
                    operator delete(*v163);
                  }

                  *(v165 - 4) = v214;
                  *(v165 - 17) = *&v220[7];
                  *(v165 - 3) = *v220;
                  *(v165 - 9) = v216;
                  *(v165 - 1) = v211;
                  v174 = (v169 + 32 - a1) >> 5;
                  v175 = v174 < 2;
                  v176 = v174 - 2;
                  if (!v175)
                  {
                    v177 = v176 >> 1;
                    v178 = a1 + 32 * (v176 >> 1);
                    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v178 + 24), *(v169 + 24)))
                    {
                      v217 = v165 - 4;
                      v179 = *v169;
                      *v246 = *(v169 + 8);
                      *&v246[7] = *(v169 + 15);
                      v180 = *(v169 + 23);
                      *(v169 + 8) = 0;
                      *(v169 + 16) = 0;
                      *v169 = 0;
                      v181 = *(v169 + 24);
                      do
                      {
                        v182 = v178;
                        if (*(v169 + 23) < 0)
                        {
                          operator delete(*v169);
                        }

                        v183 = *v178;
                        *(v169 + 16) = *(v178 + 16);
                        *v169 = v183;
                        *(v178 + 23) = 0;
                        *v178 = 0;
                        *(v169 + 24) = *(v178 + 24);
                        if (!v177)
                        {
                          break;
                        }

                        v177 = (v177 - 1) >> 1;
                        v178 = a1 + 32 * v177;
                        v169 = v182;
                      }

                      while (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v178 + 24), v181));
                      if (*(v182 + 23) < 0)
                      {
                        operator delete(*v182);
                      }

                      *v182 = v179;
                      *(v182 + 8) = *v246;
                      *(v182 + 15) = *&v246[7];
                      *(v182 + 23) = v180;
                      *(v182 + 24) = v181;
                      v163 = v217;
                    }
                  }
                }

                v175 = v10-- <= 2;
              }

              while (!v175);
            }

            return;
          }

          v12 = a1 + 32 * (v10 >> 1);
          v13 = *a3;
          if (v10 >= 0x81)
          {
            v14 = (v12 + 24);
            v15 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(v13, *(v12 + 24), *(a1 + 24));
            v16 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v212, *(v12 + 24));
            v205 = a4;
            if (v15)
            {
              if (v16)
              {
                v250 = *(a1 + 16);
                v221 = *a1;
                v17 = *v206;
                *(a1 + 16) = v206[2];
                *a1 = v17;
                v206[2] = v250;
                *v206 = v221;
                v18 = (a1 + 24);
              }

              else
              {
                v256 = *(a1 + 16);
                v227 = *a1;
                v30 = *v12;
                v31 = *(v12 + 24);
                *(a1 + 16) = *(v12 + 16);
                *a1 = v30;
                *v12 = v227;
                v32 = *(a1 + 24);
                *(a1 + 24) = v31;
                *(v12 + 16) = v256;
                *(v12 + 24) = v32;
                if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v212, v32))
                {
                  goto LABEL_28;
                }

                v257 = *(v12 + 16);
                v228 = *v12;
                v33 = *v206;
                *(v12 + 16) = v206[2];
                *v12 = v33;
                v206[2] = v257;
                *v206 = v228;
                v18 = (v12 + 24);
              }

              v26 = v212;
            }

            else
            {
              if (!v16 || (v252 = *(v12 + 16), v223 = *v12, v23 = *v206, *(v12 + 16) = v206[2], *v12 = v23, v206[2] = v252, *v206 = v223, v24 = *(v12 + 24), *(v12 + 24) = *v212, *v212 = v24, !nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 + 24), *(a1 + 24))))
              {
LABEL_28:
                v35 = (v12 - 8);
                v36 = (v12 - 32);
                v37 = (a1 + 56);
                v38 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 - 8), *(a1 + 56));
                v39 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v208, *(v12 - 8));
                if (v38)
                {
                  if (v39)
                  {
                    v40 = *(a1 + 32);
                    v41 = *(a1 + 48);
                    v42 = v204[2];
                    *(a1 + 32) = *v204;
                    *(a1 + 48) = v42;
                    v204[2] = v41;
                    *v204 = v40;
                  }

                  else
                  {
                    v53 = *(a1 + 32);
                    v54 = *(a1 + 48);
                    v55 = *v37;
                    v56 = *(v12 - 16);
                    *v37 = *(v12 - 8);
                    *(a1 + 32) = *v36;
                    *(a1 + 48) = v56;
                    *v36 = v53;
                    *(v12 - 16) = v54;
                    *(v12 - 8) = v55;
                    if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v208, v55))
                    {
                      goto LABEL_41;
                    }

                    v261 = *(v12 - 16);
                    v232 = *v36;
                    v57 = *v204;
                    *(v12 - 16) = v204[2];
                    *v36 = v57;
                    v204[2] = v261;
                    *v204 = v232;
                    v37 = (v12 - 8);
                  }

                  v48 = v208;
                }

                else
                {
                  if (!v39 || (v258 = *(v12 - 16), v229 = *v36, v43 = *v204, *(v12 - 16) = v204[2], *v36 = v43, v204[2] = v258, *v204 = v229, v44 = *(v12 - 8), *(v12 - 8) = *v208, *v208 = v44, !nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 - 8), *v37)))
                  {
LABEL_41:
                    v59 = (v12 + 56);
                    v60 = (v12 + 32);
                    v61 = (a1 + 88);
                    v62 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 + 56), *(a1 + 88));
                    v63 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v207, *(v12 + 56));
                    if (v62)
                    {
                      if (v63)
                      {
                        v64 = *(a1 + 64);
                        v65 = *(a1 + 80);
                        v66 = v203[2];
                        *(a1 + 64) = *v203;
                        *(a1 + 80) = v66;
                        v203[2] = v65;
                        *v203 = v64;
                      }

                      else
                      {
                        v73 = *(a1 + 64);
                        v74 = *(a1 + 80);
                        v75 = *v61;
                        v76 = *(v12 + 48);
                        *v61 = *(v12 + 56);
                        *(a1 + 64) = *v60;
                        *(a1 + 80) = v76;
                        *v60 = v73;
                        *(v12 + 48) = v74;
                        *(v12 + 56) = v75;
                        if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v207, v75))
                        {
                          goto LABEL_51;
                        }

                        v263 = *(v12 + 48);
                        v234 = *v60;
                        v77 = *v203;
                        *(v12 + 48) = v203[2];
                        *v60 = v77;
                        v203[2] = v263;
                        *v203 = v234;
                        v61 = (v12 + 56);
                      }

                      v72 = v207;
                    }

                    else
                    {
                      if (!v63 || (v262 = *(v12 + 48), v233 = *v60, v67 = *v203, *(v12 + 48) = v203[2], *v60 = v67, v203[2] = v262, *v203 = v233, v68 = *(v12 + 56), *(v12 + 56) = *v207, *v207 = v68, !nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 + 56), *v61)))
                      {
LABEL_51:
                        v79 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v14, *v35);
                        v80 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v59, *v14);
                        if (v79)
                        {
                          if (v80)
                          {
                            v264 = *(v12 - 16);
                            v235 = *v36;
                            *v36 = *v60;
                            *(v12 - 16) = *(v12 + 48);
                            *(v12 + 48) = v264;
                            *v60 = v235;
                          }

                          else
                          {
                            v267 = *(v12 - 16);
                            v238 = *v36;
                            *v36 = *v12;
                            v83 = *(v12 + 24);
                            *(v12 - 16) = *(v12 + 16);
                            v84 = *(v12 - 8);
                            *(v12 - 8) = v83;
                            *v12 = v238;
                            *(v12 + 16) = v267;
                            *(v12 + 24) = v84;
                            if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v59, v84))
                            {
LABEL_60:
                              v269 = *(a1 + 16);
                              v240 = *a1;
                              v86 = *v12;
                              *(a1 + 16) = *(v12 + 16);
                              *a1 = v86;
                              *(v12 + 16) = v269;
                              *v12 = v240;
                              v19 = (a1 + 24);
                              a4 = v205;
                              goto LABEL_61;
                            }

                            v268 = *(v12 + 16);
                            v239 = *v12;
                            *v12 = *v60;
                            *(v12 + 16) = *(v12 + 48);
                            *(v12 + 48) = v268;
                            *v60 = v239;
                            v35 = (v12 + 24);
                          }
                        }

                        else
                        {
                          if (!v80)
                          {
                            goto LABEL_60;
                          }

                          v265 = *(v12 + 16);
                          v236 = *v12;
                          *v12 = *v60;
                          v81 = *(v12 + 56);
                          *(v12 + 16) = *(v12 + 48);
                          *v60 = v236;
                          v82 = *(v12 + 24);
                          *(v12 + 24) = v81;
                          *(v12 + 48) = v265;
                          *(v12 + 56) = v82;
                          if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v81, *v35))
                          {
                            goto LABEL_60;
                          }

                          v266 = *(v12 - 16);
                          v237 = *v36;
                          *v36 = *v12;
                          *(v12 - 16) = *(v12 + 16);
                          *(v12 + 16) = v266;
                          *v12 = v237;
                          v59 = (v12 + 24);
                        }

                        v85 = *v35;
                        *v35 = *v59;
                        *v59 = v85;
                        goto LABEL_60;
                      }

                      v69 = *(a1 + 64);
                      v70 = *(a1 + 80);
                      v71 = *(v12 + 48);
                      *(a1 + 64) = *v60;
                      *(a1 + 80) = v71;
                      *(v12 + 48) = v70;
                      *v60 = v69;
                      v72 = (v12 + 56);
                    }

                    v78 = *v61;
                    *v61 = *v72;
                    *v72 = v78;
                    goto LABEL_51;
                  }

                  v45 = *(a1 + 32);
                  v46 = *(a1 + 48);
                  v47 = *(v12 - 16);
                  *(a1 + 32) = *v36;
                  *(a1 + 48) = v47;
                  *(v12 - 16) = v46;
                  *v36 = v45;
                  v48 = (v12 - 8);
                }

                v58 = *v37;
                *v37 = *v48;
                *v48 = v58;
                goto LABEL_41;
              }

              v253 = *(a1 + 16);
              v224 = *a1;
              v25 = *v12;
              *(a1 + 16) = *(v12 + 16);
              *a1 = v25;
              *(v12 + 16) = v253;
              *v12 = v224;
              v18 = (a1 + 24);
              v26 = (v12 + 24);
            }

            v34 = *v18;
            *v18 = *v26;
            *v26 = v34;
            goto LABEL_28;
          }

          v14 = (a1 + 24);
          v19 = (v12 + 24);
          v20 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(v13, *(a1 + 24), *(v12 + 24));
          v21 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v212, *(a1 + 24));
          if (v20)
          {
            if (v21)
            {
              v251 = *(v12 + 16);
              v222 = *v12;
              v22 = *v206;
              *(v12 + 16) = v206[2];
              *v12 = v22;
              v206[2] = v251;
              *v206 = v222;
LABEL_36:
              v14 = v212;
              goto LABEL_61;
            }

            v259 = *(v12 + 16);
            v230 = *v12;
            v49 = *a1;
            v50 = *(a1 + 24);
            *(v12 + 16) = *(a1 + 16);
            *v12 = v49;
            v51 = *(v12 + 24);
            *(v12 + 24) = v50;
            *a1 = v230;
            *(a1 + 16) = v259;
            *(a1 + 24) = v51;
            if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v212, v51))
            {
              v260 = *(a1 + 16);
              v231 = *a1;
              v52 = *v206;
              *(a1 + 16) = v206[2];
              *a1 = v52;
              v206[2] = v260;
              *v206 = v231;
              v19 = (a1 + 24);
              goto LABEL_36;
            }
          }

          else if (v21)
          {
            v254 = *(a1 + 16);
            v225 = *a1;
            v27 = *v206;
            *(a1 + 16) = v206[2];
            *a1 = v27;
            v206[2] = v254;
            *v206 = v225;
            v28 = *(a1 + 24);
            *(a1 + 24) = *v212;
            *v212 = v28;
            if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 24), *v19))
            {
              v255 = *(v12 + 16);
              v226 = *v12;
              v29 = *a1;
              *(v12 + 16) = *(a1 + 16);
              *v12 = v29;
              *(a1 + 16) = v255;
              *a1 = v226;
LABEL_61:
              v87 = *v19;
              *v19 = *v14;
              *v14 = v87;
            }
          }

          --a4;
          if ((a5 & 1) != 0 || nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 - 8), *(a1 + 24)))
          {
            break;
          }

          v110 = *a1;
          *v219 = *(a1 + 8);
          *&v219[7] = *(a1 + 15);
          v111 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v112 = *(a1 + 24);
          if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *v212))
          {
            v9 = a1;
            do
            {
              v113 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v9 + 56));
              v9 += 32;
            }

            while (!v113);
          }

          else
          {
            v114 = a1 + 32;
            do
            {
              v9 = v114;
              if (v114 >= v215)
              {
                break;
              }

              v115 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v114 + 24));
              v114 = v9 + 32;
            }

            while (!v115);
          }

          v116 = v215;
          if (v9 < v215)
          {
            v116 = v215;
            do
            {
              v117 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v116 - 1));
              v116 -= 4;
            }

            while (v117);
          }

          while (v9 < v116)
          {
            v270 = *(v9 + 16);
            v241 = *v9;
            v118 = *v116;
            *(v9 + 16) = v116[2];
            *v9 = v118;
            v116[2] = v270;
            *v116 = v241;
            v119 = *(v9 + 24);
            *(v9 + 24) = v116[3];
            v116[3] = v119;
            do
            {
              v120 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v9 + 56));
              v9 += 32;
            }

            while (!v120);
            do
            {
              v121 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v116 - 1));
              v116 -= 4;
            }

            while (v121);
          }

          v122 = (v9 - 32);
          if (v9 - 32 != a1)
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v123 = *v122;
            *(a1 + 16) = *(v9 - 16);
            *a1 = v123;
            *(v9 - 9) = 0;
            *(v9 - 32) = 0;
            *(a1 + 24) = *(v9 - 8);
          }

          if (*(v9 - 9) < 0)
          {
            operator delete(*v122);
          }

          a5 = 0;
          *(v9 - 32) = v110;
          *(v9 - 17) = *&v219[7];
          *(v9 - 24) = *v219;
          *(v9 - 9) = v111;
          *(v9 - 8) = v112;
          a2 = v215;
        }

        v88 = *a1;
        *v218 = *(a1 + 8);
        *&v218[7] = *(a1 + 15);
        v89 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v90 = *(a1 + 24);
        v91 = a1;
        do
        {
          v92 = v91;
          v93 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v91 + 56), v90);
          v91 += 32;
        }

        while (v93);
        v94 = a4;
        v95 = v215;
        if (v92 == a1)
        {
          v95 = v215;
          do
          {
            if (v91 >= v95)
            {
              break;
            }

            v97 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v95 - 1), v90);
            v95 -= 4;
          }

          while (!v97);
        }

        else
        {
          do
          {
            v96 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v95 - 1), v90);
            v95 -= 4;
          }

          while (!v96);
        }

        v9 = v92 + 32;
        if (v91 < v95)
        {
          v98 = v95;
          do
          {
            v99 = *v9;
            v100 = *(v9 + 16);
            v101 = *(v98 + 16);
            *v9 = *v98;
            *(v9 + 16) = v101;
            *(v98 + 16) = v100;
            *v98 = v99;
            v102 = *(v9 + 24);
            *(v9 + 24) = *(v98 + 24);
            *(v98 + 24) = v102;
            do
            {
              v103 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v9 + 56), v90);
              v9 += 32;
            }

            while (v103);
            do
            {
              v104 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v98 - 8), v90);
              v98 -= 32;
            }

            while (!v104);
          }

          while (v9 < v98);
        }

        v105 = v88;
        v106 = (v9 - 32);
        if (v9 - 32 != a1)
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v107 = *v106;
          *(a1 + 16) = *(v9 - 16);
          *a1 = v107;
          *(v9 - 9) = 0;
          *(v9 - 32) = 0;
          *(a1 + 24) = *(v9 - 8);
        }

        if (*(v9 - 9) < 0)
        {
          operator delete(*v106);
        }

        *(v9 - 32) = v105;
        *(v9 - 17) = *&v218[7];
        *(v9 - 24) = *v218;
        *(v9 - 9) = v89;
        *(v9 - 8) = v90;
        v108 = v91 >= v95;
        a2 = v215;
        a4 = v94;
        if (v108)
        {
          break;
        }

LABEL_88:
        std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,false>(a1, (v9 - 32), a3, a4, a5 & 1);
        a5 = 0;
      }

      v109 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*>(a1, v9 - 32, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*>(v9, v215, a3))
      {
        break;
      }

      if (!v109)
      {
        goto LABEL_88;
      }
    }

    a2 = (v9 - 32);
    if (!v109)
    {
      continue;
    }

    break;
  }
}

void sub_2229A9508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18)
{
  if (v18 < 0)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpans(nlv4_inference_orchestrator::span_matching::SpanTruncator *a1, uint64_t *a2, unsigned int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 10);
  if (v6 > 6)
  {
    v7 = 4;
  }

  else
  {
    v7 = dword_2229DA4F4[v6];
  }

  v8 = SNLPOSLoggerForCategory(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 10);
    if (v9 > 3)
    {
      if (v9 <= 5)
      {
        if (v9 == 4)
        {
          v10 = "PSC";
LABEL_25:
          v11 = "[insights-snlp-psc]: ";
          goto LABEL_30;
        }

        v10 = "LVC";
        goto LABEL_14;
      }

      if (v9 == 6)
      {
        v10 = "SSU";
        goto LABEL_29;
      }

      if (v9 == 7)
      {
        v10 = "UNKNOWN";
        goto LABEL_21;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          v10 = "UaaP";
          goto LABEL_17;
        }

        v10 = "OWL";
        goto LABEL_27;
      }

      if (!v9)
      {
        v11 = "[insights-snlp-nlv4]: ";
        v10 = "NLv4";
        goto LABEL_30;
      }

      if (v9 == 1)
      {
        v10 = "SNLC";
LABEL_10:
        v11 = "[insights-snlp-snlc]: ";
LABEL_30:
        v27 = 136315394;
        v28 = v10;
        v29 = 2080;
        v30 = v11;
        _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] %sThe following spans were kept after truncation:\n", &v27, 0x16u);
        goto LABEL_31;
      }
    }

    v23 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "<UNDEFINED_COMPONENT>";
      v29 = 2048;
      v30 = v9;
      _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v27, 0x16u);
    }

    v9 = *(a1 + 10);
    v10 = "<UNDEFINED_COMPONENT>";
    if (v9 > 2)
    {
      if (v9 <= 4)
      {
        if (v9 != 3)
        {
          goto LABEL_25;
        }

LABEL_17:
        v11 = "[insights-snlp-uaap]: ";
        goto LABEL_30;
      }

      if (v9 != 5)
      {
        if (v9 != 6)
        {
          goto LABEL_21;
        }

LABEL_29:
        v11 = "[insights-snlp-ssu]: ";
        goto LABEL_30;
      }

LABEL_14:
      v11 = "[insights-snlp-lvc]: ";
      goto LABEL_30;
    }

    if (!v9)
    {
      v11 = "[insights-snlp-nlv4]: ";
      goto LABEL_30;
    }

    if (v9 == 1)
    {
      goto LABEL_10;
    }

    if (v9 != 2)
    {
LABEL_21:
      v12 = SNLPOSLoggerForCategory(4);
      v11 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v27 = 136315394;
        v28 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v29 = 2048;
        v30 = v9;
        _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v27, 0x16u);
      }

      goto LABEL_30;
    }

LABEL_27:
    v11 = "[insights-snlp-owl]: ";
    goto LABEL_30;
  }

LABEL_31:
  v13 = a3;
  if (a3)
  {
    v14 = 0;
    v15 = 24;
    do
    {
      if (v14 >= (a2[1] - *a2) >> 5)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpan(a1, *(*a2 + v15));
      ++v14;
      v15 += 32;
    }

    while (v13 != v14);
  }

  v16 = *(a1 + 10);
  if (v16 > 6)
  {
    v17 = 4;
  }

  else
  {
    v17 = dword_2229DA4F4[v16];
  }

  v18 = SNLPOSLoggerForCategory(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 10);
    if (v19 > 3)
    {
      if (v19 <= 5)
      {
        if (v19 == 4)
        {
          v20 = "PSC";
LABEL_65:
          v21 = "[insights-snlp-psc]: ";
          goto LABEL_70;
        }

        v20 = "LVC";
        goto LABEL_48;
      }

      if (v19 == 6)
      {
        v20 = "SSU";
        goto LABEL_69;
      }

      if (v19 == 7)
      {
        v20 = "UNKNOWN";
        goto LABEL_55;
      }
    }

    else
    {
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          v20 = "UaaP";
          goto LABEL_51;
        }

        v20 = "OWL";
        goto LABEL_67;
      }

      if (!v19)
      {
        v21 = "[insights-snlp-nlv4]: ";
        v20 = "NLv4";
        goto LABEL_70;
      }

      if (v19 == 1)
      {
        v20 = "SNLC";
LABEL_44:
        v21 = "[insights-snlp-snlc]: ";
LABEL_70:
        v27 = 136315394;
        v28 = v20;
        v29 = 2080;
        v30 = v21;
        _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, "[%s] %sThe following spans were removed during truncation:\n", &v27, 0x16u);
        goto LABEL_71;
      }
    }

    v26 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "<UNDEFINED_COMPONENT>";
      v29 = 2048;
      v30 = v19;
      _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v27, 0x16u);
    }

    v19 = *(a1 + 10);
    v20 = "<UNDEFINED_COMPONENT>";
    if (v19 > 2)
    {
      if (v19 <= 4)
      {
        if (v19 != 3)
        {
          goto LABEL_65;
        }

LABEL_51:
        v21 = "[insights-snlp-uaap]: ";
        goto LABEL_70;
      }

      if (v19 != 5)
      {
        if (v19 != 6)
        {
          goto LABEL_55;
        }

LABEL_69:
        v21 = "[insights-snlp-ssu]: ";
        goto LABEL_70;
      }

LABEL_48:
      v21 = "[insights-snlp-lvc]: ";
      goto LABEL_70;
    }

    if (!v19)
    {
      v21 = "[insights-snlp-nlv4]: ";
      goto LABEL_70;
    }

    if (v19 == 1)
    {
      goto LABEL_44;
    }

    if (v19 != 2)
    {
LABEL_55:
      v22 = SNLPOSLoggerForCategory(4);
      v21 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v27 = 136315394;
        v28 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v29 = 2048;
        v30 = v19;
        _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v27, 0x16u);
      }

      goto LABEL_70;
    }

LABEL_67:
    v21 = "[insights-snlp-owl]: ";
    goto LABEL_70;
  }

LABEL_71:
  v24 = *a2;
  if (v13 < (a2[1] - *a2) >> 5)
  {
    v25 = (32 * v13) | 0x18;
    do
    {
      nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpan(a1, *(v24 + v25));
      ++v13;
      v24 = *a2;
      v25 += 32;
    }

    while (v13 < (a2[1] - *a2) >> 5);
  }
}

void nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpan(nlv4_inference_orchestrator::span_matching::SpanTruncator *this, const sirinluinternal::MatchingSpan *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = *(this + 10);
  if ((~*(a2 + 80) & 3) != 0)
  {
    if (v4 > 6)
    {
      v6 = 4;
    }

    else
    {
      v6 = dword_2229DA4F4[v4];
    }

    v11 = SNLPOSLoggerForCategory(v6);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v12 = *(this + 10);
    if (v12 > 3)
    {
      if (v12 <= 5)
      {
        if (v12 == 4)
        {
          v13 = "PSC";
LABEL_51:
          v14 = "[insights-snlp-psc]: ";
          goto LABEL_63;
        }

        v13 = "LVC";
        goto LABEL_29;
      }

      if (v12 == 6)
      {
        v13 = "SSU";
        goto LABEL_62;
      }

      if (v12 == 7)
      {
        v13 = "UNKNOWN";
        goto LABEL_44;
      }
    }

    else
    {
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          v13 = "UaaP";
          goto LABEL_35;
        }

        v13 = "OWL";
        goto LABEL_55;
      }

      if (!v12)
      {
        v14 = "[insights-snlp-nlv4]: ";
        v13 = "NLv4";
        goto LABEL_63;
      }

      if (v12 == 1)
      {
        v13 = "SNLC";
LABEL_21:
        v14 = "[insights-snlp-snlc]: ";
LABEL_63:
        v23 = *(a2 + 6);
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v26 = 136315650;
        v27 = v13;
        v28 = 2080;
        v29 = v14;
        v30 = 2080;
        v31 = v23;
        v20 = "[%s] %s  Span with label %s.\n";
        v21 = v11;
        v22 = 32;
        goto LABEL_66;
      }
    }

    v25 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315394;
      v27 = "<UNDEFINED_COMPONENT>";
      v28 = 2048;
      v29 = v12;
      _os_log_impl(&dword_22284A000, v25, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v26, 0x16u);
    }

    v12 = *(this + 10);
    v13 = "<UNDEFINED_COMPONENT>";
    if (v12 > 2)
    {
      if (v12 <= 4)
      {
        if (v12 != 3)
        {
          goto LABEL_51;
        }

LABEL_35:
        v14 = "[insights-snlp-uaap]: ";
        goto LABEL_63;
      }

      if (v12 != 5)
      {
        if (v12 != 6)
        {
          goto LABEL_44;
        }

LABEL_62:
        v14 = "[insights-snlp-ssu]: ";
        goto LABEL_63;
      }

LABEL_29:
      v14 = "[insights-snlp-lvc]: ";
      goto LABEL_63;
    }

    if (!v12)
    {
      v14 = "[insights-snlp-nlv4]: ";
      goto LABEL_63;
    }

    if (v12 == 1)
    {
      goto LABEL_21;
    }

    if (v12 != 2)
    {
LABEL_44:
      v16 = SNLPOSLoggerForCategory(4);
      v14 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v26 = 136315394;
        v27 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v28 = 2048;
        v29 = v12;
        _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v26, 0x16u);
      }

      goto LABEL_63;
    }

LABEL_55:
    v14 = "[insights-snlp-owl]: ";
    goto LABEL_63;
  }

  if (v4 > 6)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_2229DA4F4[v4];
  }

  v7 = SNLPOSLoggerForCategory(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(this + 10);
    if (v8 > 3)
    {
      if (v8 <= 5)
      {
        if (v8 == 4)
        {
          v9 = "PSC";
LABEL_49:
          v10 = "[insights-snlp-psc]: ";
          goto LABEL_58;
        }

        v9 = "LVC";
        goto LABEL_25;
      }

      if (v8 == 6)
      {
        v9 = "SSU";
        goto LABEL_57;
      }

      if (v8 == 7)
      {
        v9 = "UNKNOWN";
        goto LABEL_39;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v8 != 2)
        {
          v9 = "UaaP";
          goto LABEL_32;
        }

        v9 = "OWL";
        goto LABEL_53;
      }

      if (!v8)
      {
        v10 = "[insights-snlp-nlv4]: ";
        v9 = "NLv4";
        goto LABEL_58;
      }

      if (v8 == 1)
      {
        v9 = "SNLC";
LABEL_13:
        v10 = "[insights-snlp-snlc]: ";
LABEL_58:
        v17 = *(a2 + 6);
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = *(a2 + 18);
        v18 = *(a2 + 19);
        v26 = 136316162;
        v27 = v9;
        v28 = 2080;
        v29 = v10;
        v30 = 2080;
        v31 = v17;
        v32 = 1024;
        v33 = v18;
        v34 = 1024;
        v35 = v19;
        v20 = "[%s] %s  Span with label %s across indices (%u, %u).\n";
        v21 = v7;
        v22 = 44;
LABEL_66:
        _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEBUG, v20, &v26, v22);
        return;
      }
    }

    v24 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315394;
      v27 = "<UNDEFINED_COMPONENT>";
      v28 = 2048;
      v29 = v8;
      _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v26, 0x16u);
    }

    v8 = *(this + 10);
    v9 = "<UNDEFINED_COMPONENT>";
    if (v8 > 2)
    {
      if (v8 <= 4)
      {
        if (v8 != 3)
        {
          goto LABEL_49;
        }

LABEL_32:
        v10 = "[insights-snlp-uaap]: ";
        goto LABEL_58;
      }

      if (v8 != 5)
      {
        if (v8 != 6)
        {
          goto LABEL_39;
        }

LABEL_57:
        v10 = "[insights-snlp-ssu]: ";
        goto LABEL_58;
      }

LABEL_25:
      v10 = "[insights-snlp-lvc]: ";
      goto LABEL_58;
    }

    if (!v8)
    {
      v10 = "[insights-snlp-nlv4]: ";
      goto LABEL_58;
    }

    if (v8 == 1)
    {
      goto LABEL_13;
    }

    if (v8 != 2)
    {
LABEL_39:
      v15 = SNLPOSLoggerForCategory(4);
      v10 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v26 = 136315394;
        v27 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v28 = 2048;
        v29 = v8;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v26, 0x16u);
      }

      goto LABEL_58;
    }

LABEL_53:
    v10 = "[insights-snlp-owl]: ";
    goto LABEL_58;
  }
}

BOOL nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(nlv4_inference_orchestrator::span_matching::SpanTruncator *this, sirinluinternal::MatchingSpan *a2, const sirinluinternal::MatchingSpan *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  if (v6 != v7)
  {
    while (*v6 != 2)
    {
      if (++v6 == v7)
      {
        v6 = *(a2 + 2);
        break;
      }
    }
  }

  v8 = v6 == v7;
  isReinsertionDataDetectorSpan = nlv4_inference_orchestrator::span_matching::SpanTruncator::isReinsertionDataDetectorSpan(this, a2);
  v10 = *(a2 + 6);
  v28 = v8;
  v29 = !isReinsertionDataDetectorSpan;
  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    v30.__r_.__value_.__r.__words[2] = *(v10 + 2);
    *&v30.__r_.__value_.__l.__data_ = v11;
  }

  v12 = *(a3 + 1);
  v13 = *(a3 + 2);
  if (v12 != v13)
  {
    while (*v12 != 2)
    {
      if (++v12 == v13)
      {
        v12 = *(a3 + 2);
        break;
      }
    }
  }

  v14 = nlv4_inference_orchestrator::span_matching::SpanTruncator::isReinsertionDataDetectorSpan(this, a3);
  v15 = v12 == v13;
  v16 = *(a3 + 6);
  v26 = !v14;
  if (*(v16 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v16, *(v16 + 1));
    v15 = v12 == v13;
  }

  else
  {
    v17 = *v16;
    __p.__r_.__value_.__r.__words[2] = *(v16 + 2);
    *&__p.__r_.__value_.__l.__data_ = v17;
  }

  if (v28 < v15)
  {
    goto LABEL_16;
  }

  if (v15 < v28)
  {
    goto LABEL_18;
  }

  if (v29 < v26)
  {
LABEL_16:
    v18 = 1;
    goto LABEL_19;
  }

  if (v26 < v29)
  {
LABEL_18:
    v18 = 0;
  }

  else
  {
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v30;
    }

    else
    {
      v21 = v30.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v22 >= size)
    {
      v24 = size;
    }

    else
    {
      v24 = v22;
    }

    v25 = memcmp(v21, p_p, v24);
    if (v25)
    {
      v18 = v25 < 0;
    }

    else
    {
      v18 = size < v22;
    }
  }

LABEL_19:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_2229AA37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(uint64_t a1, sirinluinternal::MatchingSpan **a2, sirinluinternal::MatchingSpan **a3, __int128 *a4, nlv4_inference_orchestrator::span_matching::SpanTruncator **a5)
{
  v10 = a2 + 3;
  v11 = (a1 + 24);
  v12 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a2[3], *(a1 + 24));
  v13 = a3 + 3;
  v14 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a3[3], *v10);
  if (v12)
  {
    if (v14)
    {
      v15 = *(a1 + 16);
      v16 = *a1;
      v17 = a3[2];
      *a1 = *a3;
      *(a1 + 16) = v17;
      *a3 = v16;
      a3[2] = v15;
      v18 = (a1 + 24);
LABEL_9:
      v26 = a3 + 3;
      goto LABEL_10;
    }

    v27 = *(a1 + 16);
    v28 = *a1;
    v29 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v29;
    *a2 = v28;
    a2[2] = v27;
    v30 = *(a1 + 24);
    *(a1 + 24) = a2[3];
    a2[3] = v30;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, *v13, v30))
    {
      v31 = a2[2];
      v32 = *a2;
      v33 = a3[2];
      *a2 = *a3;
      a2[2] = v33;
      *a3 = v32;
      a3[2] = v31;
      v18 = v10;
      goto LABEL_9;
    }
  }

  else if (v14)
  {
    v19 = a2[2];
    v20 = *a2;
    v21 = a3[2];
    *a2 = *a3;
    a2[2] = v21;
    *a3 = v20;
    a3[2] = v19;
    v22 = a2[3];
    a2[3] = a3[3];
    a3[3] = v22;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a2[3], *v11))
    {
      v23 = *(a1 + 16);
      v24 = *a1;
      v25 = a2[2];
      *a1 = *a2;
      *(a1 + 16) = v25;
      *a2 = v24;
      a2[2] = v23;
      v18 = (a1 + 24);
      v26 = v10;
LABEL_10:
      v34 = *v18;
      *v18 = *v26;
      *v26 = v34;
    }
  }

  if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, *(a4 + 3), *v13))
  {
    v36 = a3[2];
    v37 = *a3;
    v38 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v38;
    *a4 = v37;
    *(a4 + 2) = v36;
    v39 = a3[3];
    a3[3] = *(a4 + 3);
    *(a4 + 3) = v39;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a3[3], *v10))
    {
      v40 = a2[2];
      v41 = *a2;
      v42 = a3[2];
      *a2 = *a3;
      a2[2] = v42;
      *a3 = v41;
      a3[2] = v40;
      v43 = a2[3];
      a2[3] = a3[3];
      a3[3] = v43;
      if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a2[3], *v11))
      {
        v44 = *(a1 + 16);
        result = *a1;
        v45 = a2[2];
        *a1 = *a2;
        *(a1 + 16) = v45;
        *a2 = result;
        a2[2] = v44;
        v46 = *(a1 + 24);
        *(a1 + 24) = a2[3];
        a2[3] = v46;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(uint64_t a1, sirinluinternal::MatchingSpan **a2, sirinluinternal::MatchingSpan **a3, __int128 *a4, __int128 *a5, nlv4_inference_orchestrator::span_matching::SpanTruncator **a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, a2, a3, a4, a6);
  if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a6, *(a5 + 3), *(a4 + 3)))
  {
    v13 = *(a4 + 2);
    v14 = *a4;
    v15 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v15;
    *a5 = v14;
    *(a5 + 2) = v13;
    v16 = *(a4 + 3);
    *(a4 + 3) = *(a5 + 3);
    *(a5 + 3) = v16;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a6, *(a4 + 3), a3[3]))
    {
      v17 = a3[2];
      v18 = *a3;
      v19 = *(a4 + 2);
      *a3 = *a4;
      a3[2] = v19;
      *a4 = v18;
      *(a4 + 2) = v17;
      v20 = a3[3];
      a3[3] = *(a4 + 3);
      *(a4 + 3) = v20;
      if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a6, a3[3], a2[3]))
      {
        v21 = a2[2];
        v22 = *a2;
        v23 = a3[2];
        *a2 = *a3;
        a2[2] = v23;
        *a3 = v22;
        a3[2] = v21;
        v24 = a2[3];
        a2[3] = a3[3];
        a3[3] = v24;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a6, a2[3], *(a1 + 24)))
        {
          v25 = *(a1 + 16);
          result = *a1;
          v26 = a2[2];
          *a1 = *a2;
          *(a1 + 16) = v26;
          *a2 = result;
          a2[2] = v25;
          v27 = *(a1 + 24);
          *(a1 + 24) = a2[3];
          a2[3] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*>(__int128 *a1, uint64_t a2, nlv4_inference_orchestrator::span_matching::SpanTruncator **a3)
{
  v4 = a2;
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v11 = a1 + 7;
        v12 = a1 + 2;
        v13 = a1 + 3;
        v14 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 7), *(a1 + 3));
        v16 = *(v4 - 8);
        v15 = (v4 - 8);
        v17 = v15 - 3;
        v18 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v16, *v11);
        if (v14)
        {
          if (v18)
          {
            v19 = *(a1 + 2);
            v20 = *a1;
            v21 = *(v15 - 1);
            *a1 = *v17;
            *(a1 + 2) = v21;
            *v17 = v20;
            *(v15 - 1) = v19;
          }

          else
          {
            v43 = *a1;
            *a1 = *v12;
            v44 = *(a1 + 6);
            *v12 = v43;
            v45 = *(a1 + 3);
            *(a1 + 6) = *(a1 + 2);
            v46 = *(a1 + 7);
            *(a1 + 2) = v44;
            *(a1 + 3) = v46;
            *(a1 + 7) = v45;
            if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v15, v45))
            {
              return 1;
            }

            v47 = *(a1 + 6);
            v48 = *v12;
            v49 = *(v15 - 1);
            *v12 = *v17;
            *(a1 + 6) = v49;
            *v17 = v48;
            *(v15 - 1) = v47;
            v13 = a1 + 7;
          }

          v11 = v15;
        }

        else
        {
          if (!v18)
          {
            return 1;
          }

          v31 = *(a1 + 6);
          v32 = *v12;
          v33 = *(v15 - 1);
          *v12 = *v17;
          *(a1 + 6) = v33;
          *v17 = v32;
          *(v15 - 1) = v31;
          v34 = *v11;
          *v11 = *v15;
          *v15 = v34;
          if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v11, *v13))
          {
            return 1;
          }

          v35 = *(a1 + 2);
          v36 = *a1;
          *a1 = *v12;
          *(a1 + 2) = *(a1 + 6);
          *v12 = v36;
          *(a1 + 6) = v35;
        }

        v50 = *v13;
        *v13 = *v11;
        *v11 = v50;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, a1 + 4, a1 + 8, (a2 - 32), a3);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, a1 + 4, a1 + 8, a1 + 6, (a2 - 32), a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a2 - 8), *(a1 + 3)))
    {
      v7 = *(a1 + 2);
      v8 = *a1;
      v9 = *(v4 - 16);
      *a1 = *(v4 - 32);
      *(a1 + 2) = v9;
      *(v4 - 32) = v8;
      *(v4 - 16) = v7;
      v10 = *(a1 + 3);
      *(a1 + 3) = *(v4 - 8);
      *(v4 - 8) = v10;
    }

    return 1;
  }

LABEL_13:
  v22 = a1 + 7;
  v23 = a1 + 3;
  v24 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 7), *(a1 + 3));
  v25 = a1 + 11;
  v26 = (a1 + 4);
  v27 = a1 + 2;
  v28 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 11), *(a1 + 7));
  if (v24)
  {
    if (v28)
    {
      v29 = *(a1 + 2);
      v30 = *a1;
      *a1 = *v26;
      *(a1 + 2) = *(a1 + 10);
      *v26 = v30;
      *(a1 + 10) = v29;
    }

    else
    {
      v51 = *a1;
      *a1 = *v27;
      v52 = *(a1 + 6);
      *v27 = v51;
      v53 = *(a1 + 3);
      *(a1 + 6) = *(a1 + 2);
      v54 = *(a1 + 7);
      *(a1 + 2) = v52;
      *(a1 + 3) = v54;
      *(a1 + 7) = v53;
      if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 11), v53))
      {
        goto LABEL_31;
      }

      v55 = *(a1 + 6);
      v56 = *v27;
      *v27 = *v26;
      *(a1 + 6) = *(a1 + 10);
      *v26 = v56;
      *(a1 + 10) = v55;
      v23 = a1 + 7;
    }

    v22 = a1 + 11;
    goto LABEL_30;
  }

  if (v28)
  {
    v37 = *(a1 + 6);
    v38 = *v27;
    *v27 = *v26;
    *(a1 + 6) = *(a1 + 10);
    *v26 = v38;
    *(a1 + 10) = v37;
    v39 = *v22;
    v40 = *v25;
    *v22 = *v25;
    *v25 = v39;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v40, *v23))
    {
      v41 = *(a1 + 2);
      v42 = *a1;
      *a1 = *v27;
      *(a1 + 2) = *(a1 + 6);
      *v27 = v42;
      *(a1 + 6) = v41;
LABEL_30:
      v57 = *v23;
      *v23 = *v22;
      *v22 = v57;
    }
  }

LABEL_31:
  v58 = (a1 + 6);
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v59 = 0;
  v60 = 0;
  v71 = v4;
  while (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v58[3], v26[3]))
  {
LABEL_45:
    v26 = v58;
    v59 += 32;
    v58 += 4;
    if (v58 == v4)
    {
      return 1;
    }
  }

  v61 = *v58;
  *v72 = v58[1];
  *&v72[7] = *(v58 + 15);
  v62 = *(v58 + 23);
  v58[1] = 0;
  v58[2] = 0;
  *v58 = 0;
  v63 = v58[3];
  v64 = v59;
  while (1)
  {
    v65 = a1 + v64;
    if (*(a1 + v64 + 119) < 0)
    {
      operator delete(*(v65 + 96));
    }

    *(v65 + 96) = *(v65 + 64);
    v66 = *(v65 + 80);
    v67 = *(v65 + 88);
    *(v65 + 87) = 0;
    *(v65 + 64) = 0;
    *(v65 + 112) = v66;
    *(v65 + 120) = v67;
    if (v64 == -64)
    {
      break;
    }

    v68 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v63, *(a1 + v64 + 56));
    v64 -= 32;
    if (!v68)
    {
      v69 = a1 + v64 + 96;
      goto LABEL_41;
    }
  }

  v69 = a1;
LABEL_41:
  if (*(v69 + 23) < 0)
  {
    operator delete(*v69);
  }

  *v69 = v61;
  *(v69 + 8) = *v72;
  *(v69 + 15) = *&v72[7];
  *(v69 + 23) = v62;
  *(v69 + 24) = v63;
  if (++v60 != 8)
  {
    v4 = v71;
    goto LABEL_45;
  }

  return v58 + 4 == v71;
}

void sub_2229AAC3C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL nlv4_inference_orchestrator::span_matching::SpanTruncator::isReinsertionDataDetectorSpan(nlv4_inference_orchestrator::span_matching::SpanTruncator *this, const sirinluinternal::MatchingSpan *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v2 != v3)
  {
    while (*v2)
    {
      if (++v2 == v3)
      {
        return 0;
      }
    }
  }

  return v2 != v3 && std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this, *(a2 + 6)) != 0;
}

void nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(nlv4_inference_orchestrator::span_matching::SpanTruncator *a1, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = 126 - 2 * __clz((v2 - v3) >> 5);
  v6 = a1;
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,false>(v3, v2, &v6, v5, 1);
}

BOOL nlv4_inference_orchestrator::span_matching::SpanTruncator::isUserVocabSpan(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    while (*v2 != 2)
    {
      if (++v2 == v3)
      {
        v2 = *(a2 + 16);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::toTreeDebug@<X0>(snlp::common::text_uso_graph::UDATextTreeParser *this@<X0>, _BYTE *a2@<X8>)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 56))();
  }

  a2[23] = 0;
  *a2 = 0;
  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::textAlignment(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::alias(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::indentation(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::integerValue(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::stringValue(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::edge(uint64_t a1, const void **a2)
{
  if (*(a1 + 88) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    _ZN4snlp6common14text_uso_graph21UDATextTreeParseErrorCI1St13runtime_errorEPKc(exception, "User dialog act not yet specified");
  }

  v4 = siri::ontology::oname::graph::ontology_init::Argument_task(a1);
  v5 = *(v4 + 31);
  if (v5 >= 0)
  {
    v6 = *(v4 + 31);
  }

  else
  {
    v6 = *(v4 + 16);
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = a2[1];
  }

  if (v6 == v7)
  {
    v11 = *(v4 + 8);
    v9 = (v4 + 8);
    v10 = v11;
    if (v5 < 0)
    {
      v9 = v10;
    }

    if (v8 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (!memcmp(v9, v12, v6))
    {
      operator new();
    }
  }

  v13 = *(**(a1 + 96) + 8);

  return v13();
}

void sub_2229AAFD8(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x223DC4D00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<snlp::common::text_uso_graph::UsoGraphTextTreeParser>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_2835E90A8;
    std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v2 + 112);
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 96) = v3;
      operator delete(v3);
    }

    if (*(v2 + 72) == 1 && *(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100]((v2 + 40));
    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

std::runtime_error *_ZN4snlp6common14text_uso_graph21UDATextTreeParseErrorCI1St13runtime_errorEPKc(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2835E8968;
  return result;
}

void snlp::common::text_uso_graph::UDATextTreeParser::node(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *__p = 0u;
  memset(v23, 0, sizeof(v23));
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  memset(v32, 0, 32);
  v4 = *(a2 + 23);
  v5 = *(a2 + 8);
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
    v4 = v5;
  }

  *(&v32[1].__r_.__value_.__l.__data_ + 1) = 0uLL;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 120, a2, (a2 + v4), v32, 0);
  v7 = *(v2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = *v2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(__p, v8, v8 + v7, v32, 0);
  if (v32[0].__r_.__value_.__r.__words[0])
  {
    operator delete(v32[0].__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    if (*(a1 + 88) == 1)
    {
      v10 = v2;
      exception = __cxa_allocate_exception(0x10uLL);
      if (*(a1 + 88))
      {
        std::operator+<char>();
        v12 = std::string::append(&v20, " but is being redefined as ");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v21.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v21.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        v14 = *(v10 + 23);
        if (v14 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = *v10;
        }

        if (v14 >= 0)
        {
          v16 = *(v10 + 23);
        }

        else
        {
          v16 = *(v10 + 8);
        }

        v17 = std::string::append(&v21, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v32[0].__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v32[0].__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, v32);
        exception->__vftable = &unk_2835E8968;
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>((a1 + 64), v2);
  }

  else
  {
    if (*(a1 + 88) != 1)
    {
      v19 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      std::runtime_error::runtime_error(v19, v32);
      v19->__vftable = &unk_2835E8968;
    }

    (***(a1 + 96))(*(a1 + 96), v2);
  }

  v9 = __p[0];
  if (__p[0])
  {

    operator delete(v9);
  }
}

void sub_2229AB3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  if (*(v25 - 137) < 0)
  {
    operator delete(*(v25 - 160));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_10:
      if (a23)
      {
        operator delete(a23);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v23);
  goto LABEL_10;
}

void snlp::common::text_uso_graph::UDATextTreeParser::UDATextTreeParser(uint64_t a1, void *a2)
{
  *a1 = &unk_2835E88D8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v2 = a2[1];
  *(a1 + 104) = *a2;
  *(a1 + 112) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]((a1 + 120), "^(accepted|acknowledged|cancelled|delegated|rejected|user_stated_task|wanted_to_pause|wanted_to_proceed|wanted_to_repeat|UserAccepted|UserAcknowledged|UserCancelled|DelegatedUserDialogAct|UserRejected|UserStatedTask|UserWantedToPause|UserWantedToProceed|UserWantedToRepeat)");
}

void sub_2229AB548(_Unwind_Exception *a1)
{
  v5 = *(v1 + 112);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::unique_ptr<snlp::common::text_uso_graph::UsoGraphTextTreeParser>::reset[abi:ne200100](v3, 0);
  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::getAliasMap(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    return v1 + 112;
  }

  else
  {
    return this + 8;
  }
}

void snlp::common::text_uso_graph::UDATextTreeParser::releaseUserDialogAct(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  if (*(this + 88))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  _ZN4snlp6common14text_uso_graph21UDATextTreeParseErrorCI1St13runtime_errorEPKc(exception, "UDA not yet specified");
}

void sub_2229ABA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      *v18 = 0;
      (*(*v20 + 8))(v20);
      if (a16)
      {
        (*(*a16 + 8))(a16);
      }

      std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

BOOL std::operator==[abi:ne200100]<std::string,char [9]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [13]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [17]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [10]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [19]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [18]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

void snlp::ssu::matcher::SSURequestHandler::buildResponseForApps(__int128 *a1, uint64_t *a2, snlp::ssu::proto::SSUValidatedRequest *a3)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 15);
  v16[0] = *(a1 + 14);
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  snlp::ssu::cache::SSUCacheFileReadStreamManager::SSUCacheFileReadStreamManager(&v17, a1 + 3, v16, a1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v14 = 0;
  v15 = 0uLL;
  v7 = a2[1];
  if (v7 != *a2)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a2) >> 3);
    if (v8 <= 0x666666666666666)
    {
      v19[0] = &v14;
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppCategory>>(v8);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  snlp::ssu::matcher::SSURequestHandler::generateAllAppCandidates(&v14, v13);
  snlp::ssu::proto::SSUValidatedRequest::getRequestId(a3, &buf);
  (*(**(a1 + 18) + 16))(&v10);
  snlp::ssu::matcher::SSUCandidateEncoder::SSUCandidateEncoder(&v12, a1, &buf, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  snlp::ssu::matcher::SSUCandidateEncoder::computeEncodedAppCandidates(&v12, *(*a3 + 80), v13);
}

void sub_2229AC9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int16 a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void **a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);
  *a12 = 0;
  (*(*v58 + 8))(v58, a2, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  std::optional<snlp::common::tensor::InferenceTensor>::~optional(&a30);
  *(v57 + 48) = &a37;
  std::vector<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>::__destroy_vector::operator()[abi:ne200100]((v60 - 192));
  snlp::ssu::matcher::SSUCandidateEncoder::~SSUCandidateEncoder(&a42);
  *(v57 + 48) = &a50;
  std::vector<snlp::ssu::candidate::SSUAppCandidates>::__destroy_vector::operator()[abi:ne200100]((v60 - 192));
  *v59 = &a53;
  std::vector<snlp::ssu::app::SSUAppCategory>::__destroy_vector::operator()[abi:ne200100](&a42);
  snlp::ssu::cache::SSUCacheFileReadStreamManager::~SSUCacheFileReadStreamManager(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSURequestHandler::generateAllAppCandidates(uint64_t *a1@<X1>, uint64_t *a4@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = a1[1];
  if (v4 != *a1)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (!HIBYTE(v5))
    {
      v6 = a4;
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>(v5);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2229AD010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::vector<snlp::ssu::candidate::SSUAppCandidates>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSURequestHandler::loadGlobalNegatives(snlp::ssu::matcher::SSURequestHandler *this)
{
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this + 24, &v4);
  snlp::ssu::app::SSUFileWrapper::SSUFileWrapper(v5, &__p);
}

void sub_2229AD140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  snlp::ssu::app::SSUFileWrapper::~SSUFileWrapper((v23 - 24));
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSURequestHandler::buildParsesForApp(int8x8_t *a1, uint64_t **a2, uint64_t a3, snlp::ssu::cache::SSUCacheFileReadStream **a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = a3 + 8;
    if (*(a3 + 31) < 0)
    {
      v10 = *(a3 + 8);
    }

    buf = 136315138;
    *buf_4 = v10;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "Building parses for app: %s", &buf, 0xCu);
  }

  v11 = *a4;
  *a4 = 0;
  v13 = v11;
  snlp::ssu::matcher::SSURequestHandler::buildSortedAppResults(a1, a2, a3, &v13, &v14);
  v12 = std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>::~unique_ptr[abi:ne200100](&v13);
  snlp::ssu::matcher::SSURequestHandler::buildParsesForAppResults(v12, a3);
}

void sub_2229AD6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 *a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  a15 = &a20;
  std::vector<snlp::ssu::similarity::SSUAppResult>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v6 = (v2 + 704);
    std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v6);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_iarchive,boost::archive::text_iarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v2 + 576));
    v3 = MEMORY[0x277D82808];
    v4 = *MEMORY[0x277D82808];
    *v2 = *MEMORY[0x277D82808];
    *(v2 + *(v4 - 24)) = *(v3 + 24);
    MEMORY[0x223DC47C0](v2 + 16);
    std::istream::~istream();
    MEMORY[0x223DC4C10](v2 + 424);
    MEMORY[0x223DC4D00](v2, 0x10F2C40FAC52364);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::selflogging::SSUUserRequestCacheEntryInfo>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<snlp::ssu::similarity::SSUMatchInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 256;
        std::allocator<snlp::ssu::similarity::SSUMatchInfo>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<sirinluexternal::UserParse>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 12;
      v7 = v4 - 12;
      v8 = v4 - 12;
      do
      {
        v9 = *v8;
        v8 -= 12;
        (*v9)(v7);
        v6 -= 12;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void snlp::ssu::matcher::SSURequestHandler::BuildParsesResult::~BuildParsesResult(void **this)
{
  v2 = this + 3;
  std::vector<snlp::ssu::similarity::SSUMatchInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<sirinluexternal::UserParse>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<snlp::ssu::candidate::SSUAppCandidates>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,0>(i))
    {
      i -= 256;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<snlp::ssu::app::SSUAppCategory const,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void snlp::ssu::matcher::SSUCandidateEncoder::~SSUCandidateEncoder(snlp::ssu::matcher::SSUCandidateEncoder *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void snlp::ssu::cache::SSUCacheFileReadStreamManager::~SSUCacheFileReadStreamManager(void **this)
{
  std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::~__hash_table((this + 8));
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,0>(uint64_t a1)
{
  v3 = (a1 + 232);
  std::vector<snlp::ssu::candidate::SSUCandidate>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 224) == 1)
  {
    if (*(a1 + 223) < 0)
    {
      operator delete(*(a1 + 200));
    }

    v3 = (a1 + 176);
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }
  }

  if (*(a1 + 128) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 88));
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::allocator<snlp::ssu::similarity::SSUMatchInfo>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 208) == 1)
  {
    if (*(a1 + 207) < 0)
    {
      operator delete(*(a1 + 184));
    }

    v3 = (a1 + 160);
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }
  }

  if (*(a1 + 112) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 72));
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void snlp::ssu::matcher::SSURequestHandler::buildSortedAppResults(int8x8_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, snlp::ssu::cache::SSUCacheFileReadStream **a4@<X3>, uint64_t a5@<X8>)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v7 = a3 + 8;
  v8 = a1[10];
  if (v8)
  {
    v12 = *(a3 + 32);
    v13 = vcnt_s8(v8);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = *(a3 + 32);
      if (*&v8 <= v12)
      {
        v14 = v12 % *&v8;
      }
    }

    else
    {
      v14 = (*&v8 - 1) & v12;
    }

    v15 = *(*&a1[9] + 8 * v14);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v17 == v12)
        {
          if (*(i + 16) == v12)
          {
            v30 = (a3 + 8);
            memset(v31, 0, sizeof(v31));
            v22 = *(*a4 + 88);
            v23 = *(*a4 + 89);
            *buf = v31;
            buf[8] = 0;
            if (v23 != v22)
            {
              v24 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 4);
              if (v24 < 0x555555555555556)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>>(v24);
              }

              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v25 = SNLPOSLoggerForCategory(8);
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
            if (v26)
            {
              snlp::ssu::matcher::SSURequestHandler::logCacheFileInfo(v26, v30, *a4, v31);
            }

            snlp::ssu::similarity::SSUSimilaritySearchApp::SSUSimilaritySearchApp(buf, *(a3 + 4), (i + 3), v31);
            if (snlp::ssu::matcher::SSURequestHandler::processAllBatches(a1, a2, buf, *a4, v30, a3))
            {
              snlp::ssu::similarity::SSUSimilaritySearchApp::getSearchResult(buf, a5);
              if (*a5 != *(a5 + 8))
              {
                snlp::ssu::cache::SSUCacheFileReadStream::readDebugInformation(*a4, v33);
                if (v35 == 1)
                {
                  snlp::ssu::matcher::SSURequestHandler::attachDebugInformation(a5, v33);
                }

                else
                {
                  v29 = SNLPOSLoggerForCategory(8);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    *v32 = 0;
                    _os_log_impl(&dword_22284A000, v29, OS_LOG_TYPE_DEBUG, "Debug information not available in cache file. Output parses will not have a plaintext positive example in identifiers.", v32, 2u);
                  }
                }

                if (v35 == 1)
                {
                  *v32 = &v34;
                  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v32);
                  *v32 = v33;
                  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](v32);
                }
              }
            }

            else
            {
              v27 = SNLPOSLoggerForCategory(8);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                if (*(a3 + 31) >= 0)
                {
                  v28 = v30;
                }

                else
                {
                  v28 = *(a3 + 8);
                }

                *v33 = 136315138;
                *&v33[4] = v28;
                _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_ERROR, "Error searching similarities for %s. Skipping entire app.", v33, 0xCu);
              }

              *(a5 + 32) = 0;
              *(a5 + 40) = 0;
              *(a5 + 8) = 0;
              *(a5 + 16) = 0;
              *a5 = 0;
              *(a5 + 24) = 0;
            }

            *v33 = v41;
            std::vector<std::optional<snlp::ssu::similarity::SSUMatchInfo>>::__destroy_vector::operator()[abi:ne200100](v33);
            std::optional<snlp::ssu::similarity::SSUMatchInfo>::~optional(&v40);
            *v33 = &v39;
            std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](v33);
            *buf = v31;
            std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](buf);
            return;
          }
        }

        else
        {
          if (v13.u32[0] > 1uLL)
          {
            if (v17 >= *&v8)
            {
              v17 %= *&v8;
            }
          }

          else
          {
            v17 &= *&v8 - 1;
          }

          if (v17 != v14)
          {
            break;
          }
        }
      }
    }
  }

  v18 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 31) >= 0)
    {
      v19 = v7;
    }

    else
    {
      v19 = *(a3 + 8);
    }

    v20 = *(a3 + 32);
    if (v20 <= 3)
    {
      v21 = EnumNamesSSUCategoryType(void)::names[v20];
    }

    else
    {
      v21 = "";
    }

    *buf = 136315394;
    *&buf[4] = v19;
    v37 = 2080;
    v38 = v21;
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, "Could not find similarity search configuration for app %s and category %s. Skipping entire app.", buf, 0x16u);
  }

  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 24) = 0;
}

void sub_2229AE2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf)
{
  std::optional<snlp::ssu::cache::SSUCacheObjectDebugInformation>::~optional(&a17);
  a17 = v25;
  std::vector<snlp::ssu::similarity::SSUAppResult>::__destroy_vector::operator()[abi:ne200100](&a17);
  snlp::ssu::similarity::SSUSimilaritySearchApp::~SSUSimilaritySearchApp(&buf);
  *&buf = &a12;
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (a2 == 1)
  {
    v29 = __cxa_begin_catch(a1);
    v30 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      if (*(v26 + 31) >= 0)
      {
        v31 = a11;
      }

      else
      {
        v31 = *(v26 + 8);
      }

      v32 = (*(*v29 + 16))(v29);
      LODWORD(buf) = 136315394;
      *(&buf + 4) = v31;
      WORD6(buf) = 2080;
      *(&buf + 14) = v32;
      _os_log_impl(&dword_22284A000, v30, OS_LOG_TYPE_ERROR, "Error reading cache file for %s: %s. Skipping entire app.", &buf, 0x16u);
    }

    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = 0;
    *(v25 + 24) = 0;
    __cxa_end_catch();
    JUMPOUT(0x2229ADFC0);
  }

  _Unwind_Resume(a1);
}

void sub_2229AE7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void **);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::__split_buffer<sirinluexternal::UserParse>::~__split_buffer(va1);
  std::vector<sirinluexternal::UserParse>::__destroy_vector::operator()[abi:ne200100](va);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<snlp::ssu::similarity::SSUMatchInfo>>::construct[abi:ne200100]<snlp::ssu::similarity::SSUMatchInfo,snlp::ssu::similarity::SSUMatchInfo,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = result;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a1 + 72, a2 + 9);
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v7;
    *(a2 + 16) = 0;
    *(a2 + 17) = 0;
    *(a2 + 15) = 0;
    *(a1 + 144) = a2[9];
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = 0;
    *(a1 + 160) = a2[10];
    *(a1 + 176) = *(a2 + 22);
    *(a2 + 20) = 0;
    *(a2 + 21) = 0;
    *(a2 + 22) = 0;
    result = *(a2 + 184);
    *(a1 + 200) = *(a2 + 25);
    *(a1 + 184) = result;
    *(a2 + 24) = 0;
    *(a2 + 25) = 0;
    *(a2 + 23) = 0;
    *(a1 + 208) = 1;
  }

  result.n128_u32[0] = *(a2 + 54);
  *(a1 + 224) = 0;
  *(a1 + 216) = result.n128_u32[0];
  *(a1 + 248) = 0;
  if (*(a2 + 248) == 1)
  {
    result = a2[14];
    *(a1 + 240) = *(a2 + 30);
    *(a1 + 224) = result;
    *(a2 + 29) = 0;
    *(a2 + 30) = 0;
    *(a2 + 28) = 0;
    *(a1 + 248) = 1;
  }

  return result;
}

void snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(void **this)
{
  if (*(this + 248) == 1 && *(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  if (*(this + 208) == 1)
  {
    if (*(this + 207) < 0)
    {
      operator delete(this[23]);
    }

    v2 = this + 20;
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
    }
  }

  if (*(this + 112) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 9);
    if (*(this + 71) < 0)
    {
      operator delete(this[6]);
    }
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void std::vector<snlp::ssu::similarity::SSUAppResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 144;
      do
      {
        if (*(v6 + 128) == 1 && *(v6 + 127) < 0)
        {
          operator delete(*(v6 + 104));
        }

        if (*(v6 + 88) == 1)
        {
          if (*(v6 + 87) < 0)
          {
            operator delete(*(v6 + 64));
          }

          v8 = (v6 + 40);
          std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v8);
          if (*(v6 + 23) < 0)
          {
            operator delete(*v6);
          }
        }

        if (*(v6 - 8) == 1)
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v6 - 48));
          if (*(v6 - 49) < 0)
          {
            operator delete(*(v6 - 72));
          }
        }

        if (*(v6 - 73) < 0)
        {
          operator delete(*(v6 - 96));
        }

        if (*(v6 - 121) < 0)
        {
          operator delete(*(v6 - 144));
        }

        v7 = (v6 - 144);
        v6 -= 288;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUMatchInfo>>(unint64_t a1)
{
  if (!HIBYTE(a1))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluexternal::UserParse>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUMatchInfo>,snlp::ssu::similarity::SSUMatchInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::similarity::SSUMatchInfo>>::construct[abi:ne200100]<snlp::ssu::similarity::SSUMatchInfo,snlp::ssu::similarity::SSUMatchInfo,0>(a4, v7);
      v7 += 16;
      a4 += 256;
    }

    while (v7 != a3);
    do
    {
      std::allocator<snlp::ssu::similarity::SSUMatchInfo>::destroy[abi:ne200100](v6);
      v6 += 16;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::similarity::SSUMatchInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 256;
    std::allocator<snlp::ssu::similarity::SSUMatchInfo>::destroy[abi:ne200100](i - 256);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<sirinluexternal::UserParse>,sirinluexternal::UserParse*>(uint64_t (***result)(void), uint64_t (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      MEMORY[0x223DC3120](a3, v6);
      v6 += 12;
      a3 += 96;
    }

    while (v6 != a2);
    v7 = v5;
    v8 = v5;
    do
    {
      v9 = *v8;
      v8 += 12;
      result = (*v9)(v5);
      v7 += 12;
      v5 = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<sirinluexternal::UserParse>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 96);
    *(a1 + 16) = i - 96;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t snlp::ssu::matcher::SSURequestHandler::logCacheFileInfo(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4))
  {
    snlp::ssu::cache::SSUCacheObjectIntentList::getIntentWithIndex(a4, 0, &buf);
    operator new();
  }

  v5 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 23);
    v7 = *a2;
    v9 = *a4;
    v8 = a4[1];
    v10 = *(a3 + 744);
    v11 = *(a3 + 736);
    std::stringbuf::str();
    v12 = v6 >= 0 ? a2 : v7;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
    v13 = v19 >= 0 ? &__p : __p;
    *(buf.__r_.__value_.__r.__words + 4) = v12;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4);
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = v13;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "App %s has numUniqueIntents=%lu, numPositiveBatches=%lu, numNegativeBatches=%lu, intent names: %s", &buf, 0x34u);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

  v20[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v20[2] = v14;
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v24);
}

void sub_2229AF2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a25, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](va);
  _Unwind_Resume(a1);
}

BOOL snlp::ssu::matcher::SSURequestHandler::processAllBatches(uint64_t a1, uint64_t **a2, snlp::ssu::similarity::SSUSimilaritySearchApp *a3, snlp::ssu::cache::SSUCacheFileReadStream *this, uint64_t *a5, uint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!snlp::ssu::matcher::SSURequestHandler::processCacheFileBatches(a1, a3, this, a5, a6))
  {
    v13 = SNLPOSLoggerForCategory(8);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    if (*(a5 + 23) >= 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = *a5;
    }

    v19 = 136315138;
    v20 = v16;
    v17 = "Error processing cache file batches for app %s.";
LABEL_19:
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, v17, &v19, 0xCu);
    return 0;
  }

  v11 = snlp::ssu::matcher::SSURequestHandler::processGlobalNegatives(a1, a3, a2, a5, a6);
  v12 = SNLPOSLoggerForCategory(8);
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    if (*(a5 + 23) >= 0)
    {
      v18 = a5;
    }

    else
    {
      v18 = *a5;
    }

    v19 = 136315138;
    v20 = v18;
    v17 = "Error processing global negatives for app %s.";
    goto LABEL_19;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (*(a5 + 23) >= 0)
    {
      v14 = a5;
    }

    else
    {
      v14 = *a5;
    }

    v19 = 136315138;
    v20 = v14;
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEBUG, "Successfully processed cache file batches and global negatives for app %s.", &v19, 0xCu);
  }

  return 1;
}

void snlp::ssu::matcher::SSURequestHandler::attachDebugInformation(uint64_t **a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *(v2 + 32);
      if (v5 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3))
      {
        v13 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = v2;
          if (*(v2 + 23) < 0)
          {
            v14 = *v2;
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
          *buf = 134218498;
          v26 = v5;
          v27 = 2048;
          v28 = v15;
          v29 = 2080;
          v30 = v14;
          v16 = v13;
          v17 = "App result batch provenance has batchIndex=%lu, but this is greater than indexes.size()=%lu. Skipping attaching debug information for intent %s.";
          v18 = 32;
          goto LABEL_22;
        }
      }

      else
      {
        v6 = *(v2 + 40);
        v7 = (*a2 + 24 * v5);
        if (v6 >= (v7[1] - *v7) >> 3)
        {
          v19 = SNLPOSLoggerForCategory(8);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = v2;
            if (*(v2 + 23) < 0)
            {
              v20 = *v2;
            }

            v21 = (v7[1] - *v7) >> 3;
            *buf = 134218754;
            v26 = v6;
            v27 = 2048;
            v28 = v5;
            v29 = 2048;
            v30 = v21;
            v31 = 2080;
            v32 = v20;
            v16 = v19;
            v17 = "App result batch provenance has encodingIndexWithinBatch=%lu for batchIndex=%lu, but this is greater than indexesForBatch.size()=%lu. Skipping attaching debug information for intent %s.";
            v18 = 42;
            goto LABEL_22;
          }
        }

        else
        {
          v8 = *(*v7 + 8 * v6);
          v9 = a2[3];
          if (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2[4] - v9) >> 3))
          {
            v10 = v9 + 24 * v8;
            v11 = SNLPOSLoggerForCategory(8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = v10;
              if (*(v10 + 23) < 0)
              {
                v12 = *v10;
              }

              *buf = 136315138;
              v26 = v12;
              _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "Attaching plaintext example to match info: %s", buf, 0xCu);
            }

            std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>((v2 + 248), v10);
            goto LABEL_23;
          }

          v22 = SNLPOSLoggerForCategory(8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = v2;
            if (*(v2 + 23) < 0)
            {
              v23 = *v2;
            }

            v24 = 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 3);
            *buf = 134219010;
            v26 = v5;
            v27 = 2048;
            v28 = v6;
            v29 = 2048;
            v30 = v8;
            v31 = 2048;
            v32 = v24;
            v33 = 2080;
            v34 = v23;
            v16 = v22;
            v17 = "App result batch provenance has batchIndex=%lu, encodingIndexWithinBatch=%lu and exampleIndex=%lu, but this is greater than  debugInformation.plaintextPositiveExamples.examples.size()=%lu. Skipping attaching debug information for intent %s.";
            v18 = 52;
LABEL_22:
            _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, v17, buf, v18);
          }
        }
      }

LABEL_23:
      v2 += 288;
    }

    while (v2 != v3);
  }
}

uint64_t std::optional<snlp::ssu::cache::SSUCacheObjectDebugInformation>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a1;
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void std::vector<std::optional<snlp::ssu::similarity::SSUMatchInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::optional<snlp::ssu::similarity::SSUMatchInfo>::~optional(v4 - 264);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::optional<snlp::ssu::similarity::SSUMatchInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 256) == 1)
  {
    if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
    {
      operator delete(*(a1 + 224));
    }

    if (*(a1 + 208) == 1)
    {
      if (*(a1 + 207) < 0)
      {
        operator delete(*(a1 + 184));
      }

      v3 = (a1 + 160);
      std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }
    }

    if (*(a1 + 112) == 1)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 72));
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

void snlp::ssu::similarity::SSUSimilaritySearchApp::~SSUSimilaritySearchApp(snlp::ssu::similarity::SSUSimilaritySearchApp *this)
{
  v2 = (this + 336);
  std::vector<std::optional<snlp::ssu::similarity::SSUMatchInfo>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::optional<snlp::ssu::similarity::SSUMatchInfo>::~optional(this + 72);
  v2 = (this + 48);
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v2);
}

BOOL snlp::ssu::matcher::SSURequestHandler::processCacheFileBatches(int a1, snlp::ssu::similarity::SSUSimilaritySearchApp *a2, snlp::ssu::cache::SSUCacheFileReadStream *this, uint64_t *a4, uint64_t a5)
{
  v10 = 0;
  v20 = *MEMORY[0x277D85DE8];
  do
  {
    if (v10 >= *(this + 92))
    {
      v15 = 0;
      do
      {
        if (v15 >= *(this + 93))
        {
          return 1;
        }

        v16 = snlp::ssu::matcher::SSURequestHandler::processPositiveBatch(a1, a2, this, a4, v15++, a5);
      }

      while ((v16 & 1) != 0);
      v12 = SNLPOSLoggerForCategory(8);
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      if (*(a4 + 23) >= 0)
      {
        v17 = a4;
      }

      else
      {
        v17 = *a4;
      }

      v18 = 136315138;
      v19 = v17;
      goto LABEL_17;
    }

    v11 = snlp::ssu::matcher::SSURequestHandler::processNegativeBatch(a1, a2, this, a4, v10++, a5);
  }

  while ((v11 & 1) != 0);
  v12 = SNLPOSLoggerForCategory(8);
  result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  if (*(a4 + 23) >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  v18 = 136315138;
  v19 = v14;
LABEL_17:
  _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "Error processing batch for %s. Skipping entire app.", &v18, 0xCu);
  return 0;
}

uint64_t snlp::ssu::matcher::SSURequestHandler::processGlobalNegatives(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3[1] - *a3 != 16)
  {
    v11 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = a3[1] - *a3;
      *buf = 134217984;
      *&buf[4] = v12;
      _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_ERROR, "Unexpected global negatives tensor rank: %lu", buf, 0xCu);
    }

    return 0;
  }

  if (!**a3)
  {
    v14 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "Skipping global negative processing since there are no global negative examples", buf, 2u);
    }

    return 1;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v6 = *(a5 + 40);
  v7 = *(a5 + 48);
  if (v6 == v7)
  {
    return 1;
  }

  while (1)
  {
    snlp::ssu::similarity::SSUSimilarityScore::computeSimilarity(a3, buf);
    v10 = v25;
    if (v25 == 1)
    {
      break;
    }

    snlp::ssu::similarity::SSUSimilaritySearchApp::processNegativeBatch(a2, &xmmword_2229D2A50, &__p, v6);
    if ((v10 & 1) == 0)
    {
      v6 += 240;
      if (v6 != v7)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  v15 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    *v21 = 136315138;
    v22 = v16;
    _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "Error computing global negatives similarity for app %s.", v21, 0xCu);
  }

  if (v24 < 0)
  {
    operator delete(*buf);
  }

LABEL_21:
  v13 = v10 ^ 1u;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_2229AFD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::matcher::SSURequestHandler::processNegativeBatch(int a1, uint64_t a2, snlp::ssu::cache::SSUCacheFileReadStream *this, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  snlp::ssu::cache::SSUCacheFileReadStream::readNextBatchNegative(this, v23);
  v10 = v25;
  if (v25)
  {
    __p = 0;
    v21 = 0;
    v22 = 0;
    v11 = *(a6 + 40);
    v12 = *(a6 + 48);
    if (v11 == v12)
    {
      v16 = 1;
LABEL_24:
      if (v24)
      {
        operator delete(v24);
      }

      if (v23[0])
      {
        operator delete(v23[0]);
      }

      return v16;
    }

    while (1)
    {
      snlp::ssu::similarity::SSUSimilarityScore::computeSimilarity(v23, buf);
      v13 = v29;
      if (v29 == 1)
      {
        break;
      }

      *&v26 = 0;
      *(&v26 + 1) = a5;
      snlp::ssu::similarity::SSUSimilaritySearchApp::processNegativeBatch(a2, &v26, &__p, v11);
      if ((v13 & 1) == 0)
      {
        v11 += 240;
        if (v11 != v12)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v17 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 23) >= 0)
      {
        v18 = a4;
      }

      else
      {
        v18 = *a4;
      }

      LODWORD(v26) = 136315138;
      *(&v26 + 4) = v18;
      _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "Error computing similarity for app %s.", &v26, 0xCu);
    }

    if (v28 < 0)
    {
      operator delete(*buf);
    }

LABEL_21:
    v16 = v13 ^ 1u;
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    if (v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 23) >= 0)
      {
        v15 = a4;
      }

      else
      {
        v15 = *a4;
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "Error reading negative batch for app %s.", buf, 0xCu);
    }

    return 0;
  }

  return v16;
}

uint64_t snlp::ssu::matcher::SSURequestHandler::processPositiveBatch(int a1, snlp::ssu::similarity::SSUSimilaritySearchApp *a2, snlp::ssu::cache::SSUCacheFileReadStream *this, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  snlp::ssu::cache::SSUCacheFileReadStream::readNextBatchPositive(this, v24);
  v10 = v27;
  if (v27)
  {
    __p = 0;
    v22 = 0;
    v23 = 0;
    v11 = *(a6 + 40);
    v12 = *(a6 + 48);
    if (v11 == v12)
    {
      v17 = 1;
    }

    else
    {
      do
      {
        snlp::ssu::similarity::SSUSimilarityScore::computeSimilarity(v24, v29);
        v13 = v31;
        if (v31 == 1)
        {
          v14 = SNLPOSLoggerForCategory(8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if ((v31 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if (*(a4 + 23) >= 0)
            {
              v15 = a4;
            }

            else
            {
              v15 = *a4;
            }

            v16 = v29;
            if (v30 < 0)
            {
              v16 = *v29;
            }

            *buf = 136315394;
            *&buf[4] = v15;
            *&buf[12] = 2080;
            *&buf[14] = v16;
            _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "Error computing similarity for app %s: %s", buf, 0x16u);
          }
        }

        else
        {
          *buf = 0;
          *&buf[8] = a5;
          snlp::ssu::similarity::SSUSimilaritySearchApp::processPositiveBatch(a2, buf, v24, &__p, v11);
        }

        if (v31 == 1 && v30 < 0)
        {
          operator delete(*v29);
        }

        if (v13)
        {
          break;
        }

        v11 = (v11 + 240);
      }

      while (v11 != v12);
      v17 = v13 ^ 1u;
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      if (!v10)
      {
        return v17;
      }
    }

    if (v26)
    {
      operator delete(v26);
    }

    if (v25)
    {
      operator delete(v25);
    }

    if (v24[0])
    {
      operator delete(v24[0]);
    }

    return v17;
  }

  v18 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    *v29 = 136315138;
    *&v29[4] = v19;
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, "Error reading positive batch for app %s.", v29, 0xCu);
  }

  return 0;
}

uint64_t std::optional<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }

    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

__n128 std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::construct[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,snlp::ssu::candidate::SSUAppCandidates,0>(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  v5 = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 8) = v5;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 10);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v6;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 5) = 0;
  *(a1 + 64) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v7 = *(a2 + 4);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v7;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 8) = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a1 + 88, a2 + 11);
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    v8 = *(a2 + 34);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 136) = v8;
    *(a2 + 18) = 0;
    *(a2 + 19) = 0;
    *(a2 + 17) = 0;
    *(a1 + 160) = *(a2 + 10);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 176) = 0;
    *(a1 + 176) = *(a2 + 11);
    *(a1 + 192) = *(a2 + 24);
    *(a2 + 22) = 0;
    *(a2 + 23) = 0;
    *(a2 + 24) = 0;
    v9 = *(a2 + 50);
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 200) = v9;
    *(a2 + 26) = 0;
    *(a2 + 27) = 0;
    *(a2 + 25) = 0;
    *(a1 + 224) = 1;
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  result = *(a2 + 58);
  *(a1 + 232) = result;
  *(a1 + 248) = *(a2 + 31);
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  return result;
}

void snlp::ssu::candidate::SSUAppCandidates::~SSUAppCandidates(void **this)
{
  v2 = this + 29;
  std::vector<snlp::ssu::candidate::SSUCandidate>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 224) == 1)
  {
    if (*(this + 223) < 0)
    {
      operator delete(this[25]);
    }

    v2 = this + 22;
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(this + 159) < 0)
    {
      operator delete(this[17]);
    }
  }

  if (*(this + 128) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 11);
    if (*(this + 87) < 0)
    {
      operator delete(this[8]);
    }
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>(unint64_t a1)
{
  if (!HIBYTE(a1))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::candidate::SSUAppCandidates>,snlp::ssu::candidate::SSUAppCandidates*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::construct[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,snlp::ssu::candidate::SSUAppCandidates,0>(a4, v7);
      v7 += 64;
      a4 += 256;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,0>(v6);
      v6 += 64;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::candidate::SSUAppCandidates>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 256;
    std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,0>(v3 - 256);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlv4_inference_orchestrator::trees::TreeDecompressor::decompressNode(std::string *__return_ptr a1@<X8>, nlv4_inference_orchestrator::trees::TreeDecompressor *this@<X0>, const nlv4_inference_orchestrator::trees::TreeNode *a3@<X1>, const void **a4@<X2>)
{
  v8 = a4 + 6;
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this, a4 + 6))
  {
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this, v8);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v67 = this;
    v68 = v8;
    v66 = a4;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry*,nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry*>(&v92, v9[5], v9[6], 0xAAAAAAAAAAAAAAABLL * ((v9[6] - v9[5]) >> 4));
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(a1, a3);
    v10 = v92;
    v70 = a1;
    v74 = v93;
    if (v92 != v93)
    {
      v11 = a1;
      do
      {
        v12 = v11[3].__r_.__value_.__r.__words[2];
        v76 = &v11[3].__r_.__value_.__r.__words[2];
        data = v11[4].__r_.__value_.__l.__data_;
        if (*(v10 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v90, *v10, *(v10 + 8));
        }

        else
        {
          v14 = *v10;
          v90.__r_.__value_.__r.__words[2] = *(v10 + 16);
          *&v90.__r_.__value_.__l.__data_ = v14;
        }

        v15 = (v10 + 24);
        if (*(v10 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v91, *(v10 + 24), *(v10 + 32));
        }

        else
        {
          v16 = *v15;
          v91.__r_.__value_.__r.__words[2] = *(v10 + 40);
          *&v91.__r_.__value_.__l.__data_ = v16;
        }

        v17 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        if (v12 == data)
        {
          v30 = 0;
          if ((*(&v91.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v91.__r_.__value_.__l.__size_;
          }

          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v91;
          }

          else
          {
            v19 = v91.__r_.__value_.__r.__words[0];
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v20 = v90.__r_.__value_.__l.__size_;
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &v90;
          }

          else
          {
            v21 = v90.__r_.__value_.__r.__words[0];
          }

          v22 = v12 + 48;
          while (1)
          {
            v23 = *(v22 - 25);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = *(v22 - 5);
            }

            if (v23 == size)
            {
              v25 = v24 >= 0 ? v22 - 48 : *(v22 - 6);
              if (!memcmp(v25, v19, size))
              {
                v26 = v22[23];
                v27 = v26;
                if ((v26 & 0x80u) != 0)
                {
                  v26 = *(v22 + 1);
                }

                if (v26 == v20)
                {
                  v28 = v27 >= 0 ? v22 : *v22;
                  if (!memcmp(v28, v21, v20))
                  {
                    break;
                  }
                }
              }
            }

            v29 = v22 + 96;
            v22 += 144;
            if (v29 == data)
            {
              v30 = 0;
              goto LABEL_41;
            }
          }

          v30 = 1;
LABEL_41:
          if (v17 < 0)
          {
LABEL_42:
            operator delete(v91.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
          if ((v30 & 1) == 0)
          {
LABEL_65:
            if (*(v10 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v84, *(v10 + 24), *(v10 + 32));
            }

            else
            {
              *&v84.__r_.__value_.__l.__data_ = *v15;
              v84.__r_.__value_.__r.__words[2] = *(v10 + 40);
            }

            memset(&v85, 0, sizeof(v85));
            if (*(v10 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *v10, *(v10 + 8));
            }

            else
            {
              v38 = *v10;
              __p.__r_.__value_.__r.__words[2] = *(v10 + 16);
              *&__p.__r_.__value_.__l.__data_ = v38;
            }

            memset(v88, 0, sizeof(v88));
            v87 = 0u;
            std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](v76, &v84);
            v39 = v11[4].__r_.__value_.__l.__data_;
            __str.__r_.__value_.__r.__words[0] = v88;
            std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&__str);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v84.__r_.__value_.__l.__data_);
            }

            a1 = (v39 - 144);
            goto LABEL_97;
          }
        }

        else if ((v30 & 1) == 0)
        {
          goto LABEL_65;
        }

        v84.__r_.__value_.__s.__data_[0] = 0;
        v89 = 0;
        a1 = v11[3].__r_.__value_.__r.__words[2];
        v31 = v11[4].__r_.__value_.__l.__data_;
        v32 = *(v10 + 47);
        if (a1 == v31)
        {
LABEL_60:
          if (v32 < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v10 + 24), *(v10 + 32));
          }

          else
          {
            *&__str.__r_.__value_.__l.__data_ = *v15;
            __str.__r_.__value_.__r.__words[2] = *(v10 + 40);
          }

          memset(&v80, 0, sizeof(v80));
          if (*(v10 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v81, *v10, *(v10 + 8));
          }

          else
          {
            v40 = *v10;
            v81.__r_.__value_.__r.__words[2] = *(v10 + 16);
            *&v81.__r_.__value_.__l.__data_ = v40;
          }

          memset(v83, 0, sizeof(v83));
          v82 = 0u;
          std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](v76, &__str);
          v41 = v11[4].__r_.__value_.__l.__data_;
          v78.__r_.__value_.__r.__words[0] = v83;
          std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v78);
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v80.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          a1 = (v41 - 144);
          if ((v89 & 1) == 0)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v32 >= 0)
          {
            v33 = *(v10 + 47);
          }

          else
          {
            v33 = *(v10 + 32);
          }

          while (1)
          {
            v34 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
            v35 = v34;
            if ((v34 & 0x80u) != 0)
            {
              v34 = a1->__r_.__value_.__l.__size_;
            }

            if (v34 == v33)
            {
              v36 = v35 >= 0 ? a1 : a1->__r_.__value_.__r.__words[0];
              v37 = v32 >= 0 ? (v10 + 24) : *v15;
              if (!memcmp(v36, v37, v33))
              {
                break;
              }
            }

            a1 += 6;
            if (a1 == v31)
            {
              goto LABEL_60;
            }
          }

          nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v84, a1);
          v89 = 1;
        }

        __str.__r_.__value_.__r.__words[0] = v88;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&__str);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

LABEL_97:
        v10 += 48;
        v11 = a1;
      }

      while (v10 != v74);
    }

    v42 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(v67, v68);
    if (!v42)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v43 = v66;
    if (*(v42 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v78, v42[8], v42[9]);
    }

    else
    {
      v78 = *(v42 + 8);
    }

    memset(&v84, 0, sizeof(v84));
    if (*(v66 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v85, v66[3], v66[4]);
    }

    else
    {
      v85 = *(v66 + 1);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v78;
    }

    v87 = *(v66 + 9);
    memset(v88, 0, 24);
    v44 = *(v66 + 8);
    *&v88[3] = *(v66 + 7);
    *&v88[5] = v44;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](&a1[3].__r_.__value_.__r.__words[2], &v84);
    v45 = v70;
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&__str, (v70[4].__r_.__value_.__r.__words[0] - 144));
    v47 = v70[3].__r_.__value_.__r.__words[2];
    v46 = v70[4].__r_.__value_.__l.__data_;
    if (v47 != v46)
    {
      v48 = *(v66 + 23);
      if (v48 >= 0)
      {
        v49 = *(v66 + 23);
      }

      else
      {
        v49 = v66[1];
      }

      if (v48 < 0)
      {
        v43 = *v66;
      }

      v50 = *(v66 + 47);
      if (v50 >= 0)
      {
        v51 = *(v66 + 47);
      }

      else
      {
        v51 = v66[4];
      }

      if (v50 >= 0)
      {
        v52 = v66 + 3;
      }

      else
      {
        v52 = v66[3];
      }

      v53 = *(v66 + 71);
      if (v53 >= 0)
      {
        v54 = *(v66 + 71);
      }

      else
      {
        v54 = v66[7];
      }

      if (v53 >= 0)
      {
        v55 = v68;
      }

      else
      {
        v55 = v66[6];
      }

      v75 = v66[10];
      v77 = v66[9];
      v72 = v66[15];
      v73 = v66[14];
      v71 = v66[16];
      v69 = v66[17];
      while (1)
      {
        v56 = *(v47 + 23);
        v57 = v56;
        if ((v56 & 0x80u) != 0)
        {
          v56 = *(v47 + 8);
        }

        if (v56 == v49)
        {
          v58 = v57 >= 0 ? v47 : *v47;
          if (!memcmp(v58, v43, v49))
          {
            v59 = *(v47 + 47);
            v60 = v59;
            if ((v59 & 0x80u) != 0)
            {
              v59 = *(v47 + 32);
            }

            if (v59 == v51)
            {
              v61 = v60 >= 0 ? (v47 + 24) : *(v47 + 24);
              if (!memcmp(v61, v52, v51))
              {
                v62 = *(v47 + 71);
                v63 = v62;
                if ((v62 & 0x80u) != 0)
                {
                  v62 = *(v47 + 56);
                }

                if (v62 == v54)
                {
                  v64 = v63 >= 0 ? (v47 + 48) : *(v47 + 48);
                  if (!memcmp(v64, v55, v54) && *(v47 + 72) == v77 && *(v47 + 80) == v75 && *(v47 + 112) == v73 && *(v47 + 120) == v72 && *(v47 + 128) == v71 && *(v47 + 136) == v69)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        v47 += 144;
        if (v47 == v46)
        {
          v45 = v70;
          goto LABEL_161;
        }
      }

      std::string::operator=(v47, &__str);
      std::string::operator=((v47 + 24), &v80);
      std::string::operator=((v47 + 48), &v81);
      *(v47 + 72) = v82;
      if (v47 != &__str)
      {
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(v47 + 88, v83[0], v83[1], 0x8E38E38E38E38E39 * ((v83[1] - v83[0]) >> 4));
      }

      v65 = *&v83[5];
      *(v47 + 112) = *&v83[3];
      *(v47 + 128) = v65;
      v45 = v70;
      v46 = v70[4].__r_.__value_.__l.__data_;
    }

LABEL_161:
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100](&v45[3].__r_.__value_.__r.__words[2], v46 - 18);
    v95 = v83;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v95);
    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = v88;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&__str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    v84.__r_.__value_.__r.__words[0] = &v92;
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v84);
  }

  else
  {

    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(a1, a3);
  }
}

void sub_2229B0EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a26);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a50);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(a13);
  a50 = (v61 - 120);
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&a50);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](uint64_t *a1, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode const&>(a1, a2);
  }

  else
  {
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(a1[1], a2);
    result = v3 + 144;
    a1[1] = v3 + 144;
  }

  a1[1] = result;
  return result;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack *this@<X0>, std::string *a2@<X8>)
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

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::handleTreeNode(nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack *this, nlv4_inference_orchestrator::trees::TreeNode *a2, BOOL *a3)
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v5 = *(a2 + 11);
  if (v5 != *(a2 + 12))
  {
    v7 = *(a2 + 11);
    do
    {
      if (nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::isCommonPersonNode(v7, a2))
      {
        nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::handleCommonPersonSubtree(v17, this, v7);
        v8 = *v17;
        v9 = v18;
        v10 = SNLPOSLoggerForCategory(1);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        if (v8 != v9)
        {
          if (v11)
          {
            v12 = *(this + 3);
            *buf = 136315138;
            *&buf[4] = v12;
            _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] Successfully spawned replacement common_Person nodes", buf, 0xCu);
          }

          std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,std::back_insert_iterator<std::vector<nlv4_inference_orchestrator::trees::TreeNode>>>(*v17, v18, v15);
          *buf = v17;
          std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<nlv4_inference_orchestrator::trees::TreeNode const*>>>(1uLL);
        }

        if (v11)
        {
          v13 = *(this + 3);
          *buf = 136315138;
          *&buf[4] = v13;
          _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] Could not split this common_Person node", buf, 0xCu);
        }

        *buf = v17;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      v7 = (v7 + 144);
      v5 += 144;
    }

    while (v7 != *(a2 + 12));
    v3 = a3;
  }

  *v17 = v15;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v17);
  *v3 = 0;
}

void sub_2229B144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a16;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::handleCommonPersonSubtree(uint64_t *__return_ptr a1@<X8>, nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack *this@<X0>, const nlv4_inference_orchestrator::trees::TreeNode *a3@<X1>)
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = SNLPOSLoggerForCategory(1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    v8 = *(this + 3);
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] Handling common_Person subtree", buf, 0xCu);
  }

  v9 = *(a3 + 11);
  if (*(a3 + 12) - v9 != 144)
  {
    v20 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v23;
      goto LABEL_21;
    }

LABEL_22:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v10 = siri::ontology::oname::graph::ontology_init::Argument_name(v7);
  v11 = *(v9 + 71);
  if (v11 >= 0)
  {
    v12 = *(v9 + 71);
  }

  else
  {
    v12 = *(v9 + 56);
  }

  v13 = *(v10 + 31);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v10 + 16);
  }

  if (v12 != v13 || (v11 >= 0 ? (v15 = (v9 + 48)) : (v15 = *(v9 + 48)), (v18 = *(v10 + 8), v16 = (v10 + 8), v17 = v18, v14 >= 0) ? (v19 = v16) : (v19 = v17), memcmp(v15, v19, v12)))
  {
    v20 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v21;
LABEL_21:
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v24 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(this + 3);
    v26 = (v9 + 24);
    if (*(v9 + 47) < 0)
    {
      v26 = *v26;
    }

    *buf = 136315395;
    *&buf[4] = v25;
    v73 = 2085;
    v74 = v26;
    _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_DEBUG, "[%s] common_Person.name value: %{sensitive}s", buf, 0x16u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, *(this + 3));
  v27 = v82;
  v28 = *(this + 4);
  v29 = *(this + 5);
  if (v29 == v28)
  {
LABEL_32:
    v33 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = buf;
      if (v75 < 0)
      {
        v34 = *buf;
      }

      v35 = *(v9 + 72);
      *v82 = 136315394;
      *&v82[4] = v34;
      *&v82[12] = 2048;
      *&v82[14] = v35;
      v36 = "[%s] Warning: could not find start token index corresponding to node.startCharIndex=%lu";
LABEL_44:
      _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_DEFAULT, v36, v82, 0x16u);
    }

LABEL_45:
    v30 = 0;
    v42 = 0;
    goto LABEL_46;
  }

  v30 = 0;
  v31 = 0x8E38E38E38E38E39 * ((v29 - v28) >> 4);
  v32 = (v28 + 104);
  while (*(v32 - 1) != *(v9 + 72))
  {
    ++v30;
    v32 += 18;
    if (v30 >= v31)
    {
      goto LABEL_32;
    }
  }

  v37 = v31 - v30;
  if (v31 <= v30)
  {
LABEL_40:
    v33 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v40 = buf;
      if (v75 < 0)
      {
        v40 = *buf;
      }

      v41 = *(v9 + 80);
      *v82 = 136315394;
      *&v82[4] = v40;
      *&v82[12] = 2048;
      *&v82[14] = v41;
      v36 = "[%s] Warning: could not find end token index corresponding to node.endCharIndex=%lu";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v38 = ~v30;
  while (1)
  {
    v39 = *v32;
    v32 += 18;
    if (v39 == *(v9 + 80))
    {
      break;
    }

    --v38;
    if (!--v37)
    {
      goto LABEL_40;
    }
  }

  v27 = -v38;
  v42 = 1;
LABEL_46:
  if (v75 < 0)
  {
    operator delete(*buf);
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_22;
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::findPersonMatchingSpansMinimalPartition(v82, this, v30, v27);
  if (v83)
  {
    v43 = *&v82[8] - *v82;
    v44 = SNLPOSLoggerForCategory(1);
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
    if (v43 != 88)
    {
      if (v45)
      {
        if ((v83 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v51 = *(this + 3);
        *buf = 136315394;
        *&buf[4] = v51;
        v73 = 2048;
        v74 = 0x2E8BA2E8BA2E8BA3 * ((*&v82[8] - *v82) >> 3);
        _os_log_impl(&dword_22284A000, v44, OS_LOG_TYPE_DEBUG, "[%s] This common_Person has been partitioned into %lu sub-spans.", buf, 0x16u);
      }

      v67 = 0uLL;
      v68 = 0;
      if ((v83 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v52 = *v82;
      v53 = *&v82[8];
      if (*v82 == *&v82[8])
      {
        v66 = 0;
        v65 = 0uLL;
LABEL_95:
        *a1 = v65;
        a1[2] = v66;
        v68 = 0;
        v67 = 0uLL;
      }

      else
      {
        while (1)
        {
          v54 = *(a3 + 71);
          v55 = v54 >= 0 ? (a3 + 48) : *(a3 + 6);
          v56 = v54 >= 0 ? *(a3 + 71) : *(a3 + 7);
          v57 = *(v9 + 47);
          if ((v57 & 0x8000000000000000) != 0)
          {
            v58 = *(v9 + 24);
            v57 = *(v9 + 32);
          }

          else
          {
            v58 = v9 + 24;
          }

          nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::generateCommonPersonNode(this, v52, v55, v56, v58, v57, *(v9 + 72), buf);
          v59 = v81;
          if (v81)
          {
            v60 = *(&v67 + 1);
            if (*(&v67 + 1) >= v68)
            {
              v61 = std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode const&>(&v67, buf);
            }

            else
            {
              nlv4_inference_orchestrator::trees::TreeNode::TreeNode(*(&v67 + 1), buf);
              v61 = v60 + 144;
            }

            *(&v67 + 1) = v61;
          }

          else
          {
            v62 = *(v52 + 32);
            if (v62)
            {
              if (v62[23] < 0)
              {
                v62 = *v62;
              }
            }

            else
            {
              v62 = "nullptr";
            }

            v63 = SNLPOSLoggerForCategory(1);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = *(this + 3);
              *v69 = 136315395;
              *&v69[4] = v64;
              v70 = 2085;
              v71 = v62;
              _os_log_impl(&dword_22284A000, v63, OS_LOG_TYPE_DEFAULT, "[%s] Warning: Failed to generate a node for matching span (input=%{sensitive}s)", v69, 0x16u);
            }

            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
          }

          if (v81 == 1)
          {
            *v69 = &v80;
            std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v69);
            if (v79 < 0)
            {
              operator delete(__p);
            }

            if (v77 < 0)
            {
              operator delete(v76);
            }

            if (v75 < 0)
            {
              operator delete(*buf);
            }
          }

          if ((v59 & 1) == 0)
          {
            break;
          }

          v52 += 88;
          if (v52 == v53)
          {
            v65 = v67;
            v66 = v68;
            goto LABEL_95;
          }
        }
      }

      *buf = &v67;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_97;
    }

    if (v45)
    {
      v46 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v46;
      v47 = "[%s] This common_Person cannot be split into multiple sub-spans. Skipping.";
      v48 = v44;
LABEL_55:
      _os_log_impl(&dword_22284A000, v48, OS_LOG_TYPE_DEBUG, v47, buf, 0xCu);
    }
  }

  else
  {
    v49 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v50 = *(this + 3);
      *buf = 136315138;
      *&buf[4] = v50;
      v47 = "[%s] Could not find _any_ partition for this common_Person (including a single-span one). Skipping.";
      v48 = v49;
      goto LABEL_55;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
LABEL_97:
  if (v83 == 1)
  {
    *buf = v82;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](buf);
  }
}

void sub_2229B1B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (*(v21 - 120) == 1)
  {
    a21 = v21 - 144;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&a21);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::findPersonMatchingSpansMinimalPartition(uint64_t *__return_ptr a1@<X8>, nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack *this@<X0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(this + 3);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v50 = 2048;
    v51 = a4;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] Finding person matching span partitions for range %lu -> %lu", buf, 0x20u);
  }

  v10 = *(this + 7);
  for (i = *(this + 8); v10 != i; v10 += 88)
  {
    v12 = *(v10 + 32);
    if (v12)
    {
      if (v12[23] < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "nullptr";
    }

    v13 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(this + 3);
      *buf = 136315395;
      *&buf[4] = v14;
      *&buf[12] = 2085;
      *&buf[14] = v12;
      _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEBUG, "[%s]  - span: %{sensitive}s", buf, 0x16u);
    }
  }

  memset(v48, 0, 24);
  nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::findAllMatchingSpanPartitions(this, v48, a3, a4, buf);
  v47 = v48;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v47);
  v15 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(this + 3);
    *v48 = 136315394;
    *&v48[4] = v16;
    *&v48[12] = 2048;
    *&v48[14] = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
    _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] Found %lu possible person partitions:", v48, 0x16u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  v17 = *buf;
  v18 = *&buf[8];
  if (*buf == *&buf[8])
  {
    goto LABEL_57;
  }

  do
  {
    if (*(a1 + 24) == 1)
    {
      v19 = *v17;
      v20 = v17[1];
      v21 = v20 - *v17;
      v23 = *a1;
      v22 = a1[1];
      v24 = v21 >= (v22 - *a1) || v17 == a1;
      if (!v24)
      {
        v25 = a1[2];
        if (v25 - v23 < v21)
        {
          if (v23)
          {
            v26 = *a1;
            if (v22 != v23)
            {
              v27 = v22 - 88;
              v28 = (v22 - 88);
              v29 = (v22 - 88);
              do
              {
                v30 = *v29;
                v29 -= 11;
                (*v30)(v28);
                v27 -= 88;
                v24 = v28 == v23;
                v28 = v29;
              }

              while (!v24);
              v26 = *a1;
            }

            a1[1] = v23;
            operator delete(v26);
            v25 = 0;
            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
          }

          v31 = 0x2E8BA2E8BA2E8BA3 * (v21 >> 3);
          if (v31 <= 0x2E8BA2E8BA2E8BALL)
          {
            v32 = 0x2E8BA2E8BA2E8BA3 * (v25 >> 3);
            if (2 * v32 > v31)
            {
              v31 = 2 * v32;
            }

            if (v32 >= 0x1745D1745D1745DLL)
            {
              v33 = 0x2E8BA2E8BA2E8BALL;
            }

            else
            {
              v33 = v31;
            }

            std::vector<sirinluinternal::MatchingSpan>::__vallocate[abi:ne200100](a1, v33);
          }

          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (v19 != v20)
        {
          do
          {
            sirinluinternal::MatchingSpan::operator=();
            v19 += 88;
            v23 += 88;
          }

          while (v19 != v20);
          v22 = a1[1];
        }

        if (v22 != v23)
        {
          v34 = v22 - 88;
          v35 = (v22 - 88);
          v36 = (v22 - 88);
          do
          {
            v37 = *v36;
            v36 -= 11;
            (*v37)(v35);
            v34 -= 88;
            v24 = v35 == v23;
            v35 = v36;
          }

          while (!v24);
        }

        a1[1] = v23;
      }
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(a1, *v17, v17[1], 0x2E8BA2E8BA2E8BA3 * ((v17[1] - *v17) >> 3));
      *(a1 + 24) = 1;
    }

    v17 += 3;
  }

  while (v17 != v18);
  if ((a1[3] & 1) == 0)
  {
LABEL_57:
    v45 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(this + 3);
      *v48 = 136315138;
      *&v48[4] = v46;
      _os_log_impl(&dword_22284A000, v45, OS_LOG_TYPE_DEBUG, "[%s] Did not find minimal partition", v48, 0xCu);
    }
  }

  else
  {
    v38 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = *(this + 3);
      *v48 = 136315138;
      *&v48[4] = v39;
      _os_log_impl(&dword_22284A000, v38, OS_LOG_TYPE_DEBUG, "[%s] Found minimal partition:", v48, 0xCu);
    }

    if ((a1[3] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v40 = *a1;
    v41 = a1[1];
    if (*a1 != v41)
    {
      do
      {
        v42 = *(v40 + 32);
        if (v42)
        {
          if (v42[23] < 0)
          {
            v42 = *v42;
          }
        }

        else
        {
          v42 = "nullptr";
        }

        v43 = SNLPOSLoggerForCategory(1);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v44 = *(this + 3);
          *v48 = 136315395;
          *&v48[4] = v44;
          *&v48[12] = 2085;
          *&v48[14] = v42;
          _os_log_impl(&dword_22284A000, v43, OS_LOG_TYPE_DEBUG, "[%s]  - component: %{sensitive}s", v48, 0x16u);
        }

        v40 += 88;
      }

      while (v40 != v41);
    }
  }

  *v48 = buf;
  std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](v48);
}

void sub_2229B21C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (*(v21 + 24) == 1)
  {
    a17 = v21;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&a17);
  }

  a17 = &a21;
  std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::generateCommonPersonNode(siri::ontology::oname::graph::ontology_init *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string::size_type a6@<X5>, std::string::size_type a7@<X6>, uint64_t a8@<X8>)
{
  v62[8] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 76);
  v11 = *(a1 + 4);
  v12 = 0x8E38E38E38E38E39 * ((*(a1 + 5) - v11) >> 4);
  if (v12 <= v10 || (v13 = (*(a2 + 72) - 1), v12 <= v13))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  memset(&v59, 0, sizeof(v59));
  memset(v62, 0, 24);
  v18 = siri::ontology::oname::graph::ontology_init::Argument_name(a1);
  std::string::operator=(&v59, (v18 + 8));
  v19 = (v11 + 144 * v10);
  v20 = (v11 + 144 * v13);
  v21 = v19[12];
  v60 = v21;
  v62[3] = v19[14];
  v62[5] = v19[16];
  v22 = v20[13];
  v61 = v22;
  v62[4] = v20[15];
  v62[6] = v20[17];
  v23 = v21 - a7;
  if (v21 < a7)
  {
    v24 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      *a8 = 0;
      *(a8 + 144) = 0;
      goto LABEL_20;
    }

    v25 = *(a1 + 3);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
    *(buf[0].__r_.__value_.__r.__words + 4) = v25;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2048;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v60;
    HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2048;
    buf[1].__r_.__value_.__r.__words[0] = a7;
    v26 = "[%s] newNameNode.startCharIndex (%lu) is less than originalNameStartCharIndex (%lu)";
LABEL_18:
    _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0x20u);
    goto LABEL_19;
  }

  v27 = v22 >= v21;
  v28 = v22 - v21;
  if (v28 == 0 || !v27)
  {
    v24 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v31 = *(a1 + 3);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
    *(buf[0].__r_.__value_.__r.__words + 4) = v31;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2048;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v60;
    HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2048;
    buf[1].__r_.__value_.__r.__words[0] = v61;
    v26 = "[%s] newNameNode character indices imply an empty or impossible substring (%lu -> %lu)";
    goto LABEL_18;
  }

  if (a6 < v23)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (a6 - v23 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = a6 - v23;
  }

  if (v29 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (v29 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v29;
  if (v29)
  {
    memmove(&__dst, (a5 + v23), v29);
  }

  __dst.__r_.__value_.__s.__data_[v29] = 0;
  std::string::operator=((&v57 + 8), &__dst);
  v32 = SNLPOSLoggerForCategory(1);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
  if (v33)
  {
    v34 = *(a1 + 3);
    if (v58 >= 0)
    {
      v35 = &v57 + 8;
    }

    else
    {
      v35 = *(&v57 + 1);
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315907;
    *(buf[0].__r_.__value_.__r.__words + 4) = v34;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2048;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v60;
    HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2048;
    buf[1].__r_.__value_.__r.__words[0] = v61;
    LOWORD(buf[1].__r_.__value_.__r.__words[1]) = 2085;
    *(&buf[1].__r_.__value_.__r.__words[1] + 2) = v35;
    _os_log_impl(&dword_22284A000, v32, OS_LOG_TYPE_DEBUG, "[%s] Generated new common_Person.name node with startCharIndex=%lu, endCharIndex=%lu, value=%{sensitive}s", buf, 0x2Au);
  }

  v53 = 0;
  memset(buf, 0, sizeof(buf));
  *v49 = 0u;
  v52 = 0uLL;
  v50 = 0;
  v36 = siri::ontology::oname::graph::ontology_init::common_Person(v33);
  std::string::operator=(buf, (v36 + 8));
  MEMORY[0x223DC46E0](v49, a3, a4);
  v51 = 0uLL;
  v54 = 0u;
  v55 = 0u;
  nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v42, &v56);
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(&v52, &v42, buf, 1uLL);
  v41 = &v47;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v41);
  if (v46 < 0)
  {
    operator delete(__p);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v37 = buf[1].__r_.__value_.__r.__words[2];
  *a8 = buf[0];
  *&buf[0].__r_.__value_.__l.__data_ = 0uLL;
  *(a8 + 24) = *&buf[1].__r_.__value_.__l.__data_;
  *(a8 + 40) = v37;
  memset(&buf[0].__r_.__value_.__r.__words[2], 0, 32);
  *(a8 + 64) = v50;
  *(a8 + 48) = *v49;
  v49[1] = 0;
  v50 = 0;
  v49[0] = 0;
  *(a8 + 72) = v51;
  *(a8 + 88) = v52;
  *(a8 + 104) = v53;
  v52 = 0uLL;
  v53 = 0;
  v38 = v55;
  *(a8 + 112) = v54;
  *(a8 + 128) = v38;
  *(a8 + 144) = 1;
  v42.__r_.__value_.__r.__words[0] = &v52;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v42);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_20:
  buf[0].__r_.__value_.__r.__words[0] = v62;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(*(&v57 + 1));
  }

  if (SBYTE7(v57) < 0)
  {
    operator delete(v56);
  }
}