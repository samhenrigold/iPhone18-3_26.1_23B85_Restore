@interface WBSJSONReader
- (BOOL)parseData:(id)data error:(id *)error;
- (BOOL)parseFileHandle:(id)handle error:(id *)error;
- (BOOL)parseURL:(id)l error:(id *)error;
- (WBSJSONReaderDelegate)delegate;
@end

@implementation WBSJSONReader

- (BOOL)parseData:(id)data error:(id *)error
{
  v48[9] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v32 = &unk_1F30601A0;
  selfCopy = self;
  v34 = WeakRetained;
  v7 = dataCopy;
  bytes = [dataCopy bytes];
  v43 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::iterator_input_adapter<char const*>>(bytes, bytes + [dataCopy length], v42, 1, v44);
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    while (1)
    {
      if (v45 <= 5)
      {
        if (v45 > 2)
        {
          if (v45 == 3)
          {
            v9 = (*v32)(&v32);
          }

          else if (v45 == 4)
          {
            v9 = v32[5](&v32, v48);
          }

          else
          {
            v9 = v32[3](&v32, v48[5]);
          }

          goto LABEL_27;
        }

        if (v45 == 1)
        {
          v9 = v32[1](&v32, 1);
          goto LABEL_27;
        }

        if (v45 == 2)
        {
          v9 = v32[1](&v32, 0);
          goto LABEL_27;
        }

        goto LABEL_66;
      }

      if (v45 <= 7)
      {
        if (v45 == 6)
        {
          v9 = v32[2](&v32, v48[4]);
          goto LABEL_27;
        }

        if ((v48[6] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v27 = v47.__r_.__value_.__r.__words[0];
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v46, &v40);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v46, &v35);
          v28 = std::string::insert(&v35, 0, "number overflow parsing '", 0x19uLL);
          v29 = *&v28->__r_.__value_.__l.__data_;
          v36.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v36.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&v36, "'", 1uLL);
          v31 = *&v30->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, &v37, &v38);
          v16 = (v32[12])(&v32, v27, &v40, &v38);
          nlohmann::detail::out_of_range::~out_of_range(&v38);
          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          goto LABEL_68;
        }

        if (!v32[4](&v32, v48))
        {
          goto LABEL_63;
        }

        goto LABEL_28;
      }

      if (v45 != 8)
      {
        break;
      }

      if (!(v32)[10](&v32, -1))
      {
        goto LABEL_63;
      }

      v45 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
      if (v45 == 10)
      {
        v9 = (v32[11])(&v32);
        goto LABEL_27;
      }

      LOBYTE(v38.__vftable) = 1;
      std::vector<BOOL>::push_back(&__p, &v38);
    }

    if (v45 != 9)
    {
      if (v45 == 14)
      {
        v19 = v47.__r_.__value_.__r.__words[0];
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v46, &v40);
        v37 = v47;
        std::string::basic_string[abi:sn200100]<0>(&v35.__r_.__value_.__l.__data_, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v44, 0, &v35, &v36);
        nlohmann::detail::parse_error::create(101, &v37, &v36, &v38);
        v20 = (v32[12])(&v32, v19, &v40, &v38);
LABEL_67:
        v16 = v20;
        v38.__vftable = &unk_1F30602D0;
        MEMORY[0x1B8CC0150](v39);
        std::exception::~exception(&v38);
        goto LABEL_68;
      }

LABEL_66:
      v21 = v47.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v46, &v40);
      v37 = v47;
      std::string::basic_string[abi:sn200100]<0>(&v35.__r_.__value_.__l.__data_, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v44, 16, &v35, &v36);
      nlohmann::detail::parse_error::create(101, &v37, &v36, &v38);
      v20 = (v32[12])(&v32, v21, &v40, &v38);
      goto LABEL_67;
    }

    if (((v32)[7](&v32, -1) & 1) == 0)
    {
      goto LABEL_63;
    }

    v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
    v45 = v10;
    if (v10 == 11)
    {
      break;
    }

    if (v10 != 4)
    {
LABEL_77:
      v25 = v47.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v46, &v40);
      v37 = v47;
      std::string::basic_string[abi:sn200100]<0>(&v35.__r_.__value_.__l.__data_, "object key");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v44, 4, &v35, &v36);
      nlohmann::detail::parse_error::create(101, &v37, &v36, &v38);
      v23 = (v32[12])(&v32, v25, &v40, &v38);
      goto LABEL_79;
    }

    if (!v32[8](&v32, v48))
    {
      goto LABEL_63;
    }

    v45 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
    if (v45 != 12)
    {
LABEL_78:
      v26 = v47.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v46, &v40);
      v37 = v47;
      std::string::basic_string[abi:sn200100]<0>(&v35.__r_.__value_.__l.__data_, "object separator");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v44, 12, &v35, &v36);
      nlohmann::detail::parse_error::create(101, &v37, &v36, &v38);
      v23 = (v32[12])(&v32, v26, &v40, &v38);
LABEL_79:
      v16 = v23;
      nlohmann::detail::parse_error::~parse_error(&v38);
LABEL_68:
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      goto LABEL_52;
    }

    LOBYTE(v38.__vftable) = 0;
    std::vector<BOOL>::push_back(&__p, &v38);
    v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
LABEL_45:
    v45 = v15;
  }

  v9 = (v32[9])(&v32);
LABEL_27:
  if ((v9 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_28:
  size = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
LABEL_51:
    v16 = 1;
    goto LABEL_52;
  }

  while (2)
  {
    if ((*(__p.__r_.__value_.__r.__words[0] + (((size - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (size - 1)))
    {
      v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
      v45 = v12;
      if (v12 == 13)
      {
        goto LABEL_44;
      }

      if (v12 != 10)
      {
        goto LABEL_75;
      }

      v13 = (v32[11])(&v32);
LABEL_36:
      if (!v13)
      {
        goto LABEL_63;
      }

      if (!__p.__r_.__value_.__l.__size_)
      {
        __break(1u);
LABEL_75:
        v22 = v47.__r_.__value_.__r.__words[0];
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v46, &v40);
        v37 = v47;
        std::string::basic_string[abi:sn200100]<0>(&v35.__r_.__value_.__l.__data_, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v44, 10, &v35, &v36);
        nlohmann::detail::parse_error::create(101, &v37, &v36, &v38);
        v23 = (v32[12])(&v32, v22, &v40, &v38);
        goto LABEL_79;
      }

      size = __p.__r_.__value_.__l.__size_ - 1;
      __p.__r_.__value_.__l.__size_ = size;
      if (!size)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
  v45 = v14;
  if (v14 != 13)
  {
    if (v14 != 11)
    {
      v24 = v47.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v46, &v40);
      v37 = v47;
      std::string::basic_string[abi:sn200100]<0>(&v35.__r_.__value_.__l.__data_, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v44, 11, &v35, &v36);
      nlohmann::detail::parse_error::create(101, &v37, &v36, &v38);
      v23 = (v32[12])(&v32, v24, &v40, &v38);
      goto LABEL_79;
    }

    v13 = (v32[9])(&v32);
    goto LABEL_36;
  }

  v45 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
  if (v45 != 4)
  {
    goto LABEL_77;
  }

  if (v32[8](&v32, v48))
  {
    v45 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
    if (v45 != 12)
    {
      goto LABEL_78;
    }

LABEL_44:
    v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
    goto LABEL_45;
  }

LABEL_63:
  v16 = 0;
LABEL_52:
  if (__p.__r_.__value_.__r.__words[0])
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    v45 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v46);
    if (v45 != 15)
    {
      v17 = v47.__r_.__value_.__r.__words[0];
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(v46, &__p);
      v40 = v47;
      std::string::basic_string[abi:sn200100]<0>(&v36.__r_.__value_.__l.__data_, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(v44, 15, &v36, &v37);
      nlohmann::detail::parse_error::create(101, &v40, &v37, &v38);
      (v32[12])(&v32, v17, &__p, &v38);
      v38.__vftable = &unk_1F30602D0;
      MEMORY[0x1B8CC0150](v39);
      std::exception::~exception(&v38);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v46);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v44);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v42);

  return 1;
}

- (BOOL)parseURL:(id)l error:(id *)error
{
  v21[18] = *MEMORY[0x1E69E9840];
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = &unk_1F30601A0;
  selfCopy = self;
  v13 = WeakRetained;
  path = [lCopy path];
  v8 = path;
  std::ifstream::basic_ifstream(v15, [path fileSystemRepresentation], 8);

  v9 = *&v16[*(v15[0] - 24) + 24];
  v14[0] = v15;
  v14[1] = v9;
  v14[2] = 0;
  v14[3] = 0;
  v19 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::input_stream_adapter>(v14, v18, 1, v20);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(v21);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v20);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v18);
  if (v14[0])
  {
    std::ios_base::clear((v14[0] + *(*v14[0] - 24)), *(v14[0] + *(*v14[0] - 24) + 32) & 2);
  }

  v15[0] = *MEMORY[0x1E69E54C8];
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8CC01B0](v16);
  std::istream::~istream();
  MEMORY[0x1B8CC0220](&v17);

  return 1;
}

- (BOOL)parseFileHandle:(id)handle error:(id *)error
{
  v25[18] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = &unk_1F30601A0;
  selfCopy = self;
  v16 = WeakRetained;
  LODWORD(WeakRetained) = [handleCopy fileDescriptor];
  v7 = MEMORY[0x1E69E5538] + 16;
  __sb = (MEMORY[0x1E69E5538] + 16);
  MEMORY[0x1B8CC01E0](v19);
  memset(&v19[4], 0, 24);
  v20 = WeakRetained;
  __sb = &unk_1F3060228;
  v19[1].__locale_ = v21;
  v19[2].__locale_ = v21;
  v19[3].__locale_ = v21;
  v11.__loc_ = 0;
  v10[0] = MEMORY[0x1E69E5518] + 24;
  v10[1] = 0;
  v11.__vftable = (MEMORY[0x1E69E5518] + 64);
  std::ios_base::init(&v11, &__sb);
  v12 = 0;
  v13 = -1;
  v8 = *(&v11.__width_ + *(v10[0] - 24));
  v17[0] = v10;
  v17[1] = v8;
  v17[2] = 0;
  v17[3] = 0;
  v23 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::input_stream_adapter>(v17, v22, 1, v24);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(v25);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v24);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v22);
  if (v17[0])
  {
    std::ios_base::clear((v17[0] + *(*v17[0] - 24)), *(v17[0] + *(*v17[0] - 24) + 32) & 2);
  }

  std::istream::~istream();
  __sb = v7;
  std::locale::~locale(v19);

  return 1;
}

- (WBSJSONReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end