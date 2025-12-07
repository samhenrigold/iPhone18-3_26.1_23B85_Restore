void std::array<CLPCReportingRows * {__strong},11ul>::fill[abi:ne200100](id *location, id *a2)
{
  v4 = -11;
  do
  {
    objc_storeStrong(location++, *a2);
  }

  while (!__CFADD__(v4++, 1));
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(clpc::user::ioreport::Sample)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t ___ZN4clpc4user8ioreport10SampleList7iterateENSt3__18functionIFvNS1_6SampleEEEE_block_invoke(uint64_t a1, CFTypeRef cf)
{
  CFRetain(cf);
  v6[0] = &unk_2870186A0;
  v6[1] = cf;
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, v6);
  clpc::user::ioreport::Sample::~Sample(v6);
  return 0;
}

void clpc::user::ioreport::Sample::~Sample(id *this)
{
}

{
}

{

  JUMPOUT(0x25F8B1040);
}

uint64_t std::__function::__value_func<void ()(clpc::user::ioreport::Sample)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(float *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void clpc::user::iokit::Object::~Object(clpc::user::iokit::Object *this)
{
  *this = &unk_287018578;
  v1 = *(this + 2);
  *(this + 2) = 0;
  if (v1)
  {
    IOObjectRelease(0);
  }
}

{
  clpc::user::iokit::Object::~Object(this);

  JUMPOUT(0x25F8B1040);
}

void clpc::user::iokit::RegistryEntry::~RegistryEntry(clpc::user::iokit::RegistryEntry *this)
{
  clpc::user::iokit::Object::~Object(this);

  JUMPOUT(0x25F8B1040);
}

void clpc::user::iokit::Service::~Service(clpc::user::iokit::Service *this)
{
  *this = &unk_287018598;
  v2 = *(this + 3);
  if (v2)
  {
    IOServiceClose(v2);
  }

  *(this + 3) = 0;

  clpc::user::iokit::Object::~Object(this);
}

{
  clpc::user::iokit::Service::~Service(this);

  JUMPOUT(0x25F8B1040);
}

void clpc::user::iokit::CLPC::~CLPC(clpc::user::iokit::CLPC *this)
{
  *this = &unk_2870185B8;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    MEMORY[0x25F8B1020](v2, 0x1000C8077774924);
  }

  clpc::user::iokit::Service::~Service(this);
}

{
  clpc::user::iokit::CLPC::~CLPC(this);

  JUMPOUT(0x25F8B1040);
}

void clpc::user::ioreport::Channel::~Channel(id *this)
{
}

{
}

{

  JUMPOUT(0x25F8B1040);
}

void clpc::user::ioreport::Subscription::~Subscription(clpc::user::ioreport::Subscription *this)
{
  *this = &unk_2870185D8;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }
}

{
  clpc::user::ioreport::Subscription::~Subscription(this);

  JUMPOUT(0x25F8B1040);
}

void clpc::user::ioreport::ChannelList::withAllChannels(uint64_t a3@<X8>)
{
  v4 = IOReportCopyAllChannels();
  if (v4)
  {
    *a3 = v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 8) = v5;
}

void clpc::user::ioreport::ChannelList::fromCategories(uint64_t a4@<X8>)
{
  v5 = IOReportCopyChannelsInCategories();
  if (v5)
  {
    *a4 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a4 = 0;
  }

  *(a4 + 8) = v6;
}

void clpc::user::ioreport::ChannelList::fromFormat(uint64_t a4@<X8>)
{
  v5 = IOReportCopyChannelsOfFormat();
  if (v5)
  {
    *a4 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a4 = 0;
  }

  *(a4 + 8) = v6;
}

void clpc::user::ioreport::ChannelList::fromGroup(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v6 = a1;
  if (*(a1 + 23) < 0)
  {
    v6 = *a1;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v6, a4}];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  clpc::user::ioreport::ChannelList::fromGroup(v9, v8, x8_0);
}

void clpc::user::ioreport::ChannelList::fromGroup(void *a1@<X0>, void *a2@<X1>, uint64_t a5@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = IOReportCopyChannelsInGroup();
  if (v9)
  {
    *a5 = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *a5 = 0;
  }

  *(a5 + 8) = v10;
}

void clpc::user::ioreport::ChannelList::fromProvider(uint64_t a4@<X8>)
{
  v5 = IOReportCopyChannelsForDriver();
  if (v5)
  {
    *a4 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a4 = 0;
  }

  *(a4 + 8) = v6;
}

void anonymous namespace::populate_error_unsupported_stat(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported stat ID %llu.", a1];
    v5 = *MEMORY[0x277CCA068];
    v6[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870206 userInfo:v4];
  }
}

void anonymous namespace::populate_error_unsupported_schema(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported schema ID %lu.", a1];
    v5 = *MEMORY[0x277CCA068];
    v6[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870206 userInfo:v4];
  }
}

void sub_25E3B94AC(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_25E3BA5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, char a30, int a31, int a32, std::random_device argB4, void *a33, void *__p, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, void *a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61)
{
  std::__function::__value_func<void ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](&STACK[0x2D0]);
  if (a30)
  {
  }

  if (*(v63 - 168) == 1)
  {
  }

  std::random_device::~random_device(&argB4);
  if (a33)
  {
    __p = a33;
    operator delete(a33);
  }

  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&a36);
  if (a42)
  {
    a43 = a42;
    operator delete(a42);
  }

  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&a46);
  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&a52);

  _Unwind_Resume(a1);
}

id clpc::user::iokit::RegistryEntry::createProperty(clpc::user::iokit::RegistryEntry *this, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(*(this + 2), a2, *MEMORY[0x277CBECE8], 0);

  return CFProperty;
}

void anonymous namespace::populate_error_property_read(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *MEMORY[0x277CCA068];
    v4[0] = @"Failed to read AppleCLPC property.";
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
    *a1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v2];
  }
}

void anonymous namespace::populate_error_internal(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *MEMORY[0x277CCA068];
    v4[0] = @"An internal error occurred.";
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
    *a1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v2];
  }
}

void std::vector<std::pair<unsigned long,int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<unsigned long,int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<std::pair<unsigned long,int>>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_25E3BAB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t clpc::user::ioreport::ChannelList::iterate(uint64_t *a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(clpc::user::ioreport::Channel)>::__value_func[abi:ne200100](v3, a2);
  IOReportIterate();
  return std::__function::__value_func<void ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v3);
}

uint64_t clpc::user::iokit::Service::firstMatching@<X0>(const char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v4 = IOServiceNameMatching(a1);
    goto LABEL_5;
  }

  if (!a2)
  {
    v4 = IOServiceMatching(a1);
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  result = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v5);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F8B0FB0](exception, "Could not get service.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a3 + 8) = result;
  *(a3 + 12) = 0;
  *a3 = &unk_287018598;
  return result;
}

void sub_25E3BB510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, char a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (*(v33 - 152) == 1)
  {
    clpc::user::ioreport::Subscription::~Subscription((v33 - 176));
  }

  if (a18 == 1)
  {
  }

  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&a20);
  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&a26);
  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&a32);

  _Unwind_Resume(a1);
}

void clpc::user::ioreport::ChannelList::subscribe(uint64_t a3@<X8>)
{
  v10 = 0;
  v11 = 0;
  CFAllocatorGetDefault();
  Subscription = IOReportCreateSubscription();
  v7 = &unk_2870185D8;
  v8 = Subscription;
  v9 = 0;
  if (Subscription)
  {
    v5 = v11 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
    *a3 = 0;
  }

  else
  {
    *a3 = &unk_2870185D8;
    *(a3 + 8) = Subscription;
    *(a3 + 16) = 0;
    v8 = 0;
    v6 = 1;
  }

  *(a3 + 24) = v6;
  clpc::user::ioreport::Subscription::~Subscription(&v7);
}

void std::vector<CLPCReportingStatID>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<CLPCReportingStatID>::allocate_at_least[abi:ne200100](a1, a2);
    }

    std::vector<std::pair<unsigned long,int>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25E3BCCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  for (i = 80; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void clpc::user::iokit::CLPC::performRPC(uint64_t *__return_ptr a1@<X8>, clpc::user::iokit::CLPC *this@<X0>, NSObject *a3@<X1>, NSObject *a4@<X2>)
{
  clpc::user::iokit::CLPC::serializeRPC(&v14, a3, a4);
  if (v15)
  {
    clpc::user::iokit::CLPC::performRPCWithXML(&v11, this, v14);
    v6 = v12;
    if (v12 || !v11)
    {
      *a1 = 0;
    }

    else
    {
      if (v13 != 1)
      {
        clpc::user::iokit::CLPC::unserializeRPCReply(&v9, v11);
        if (v10)
        {
          v7 = v9;
          v8 = v12;
        }

        else
        {
          v7 = 0;
          v8 = -536870199;
        }

        *a1 = v7;
        *(a1 + 2) = v8;

        goto LABEL_13;
      }

      *a1 = v11;
      v6 = v12;
    }

    *(a1 + 2) = v6;
LABEL_13:

    goto LABEL_14;
  }

  *a1 = 0;
  *(a1 + 2) = -536870206;
LABEL_14:
}

void sub_25E3BDD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>>>::destroy(&a48, a49);

  _Unwind_Resume(a1);
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::pair<unsigned long,int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<CLPCReportingStatID>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279A18498, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::allocator<std::pair<unsigned long,int>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
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

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t ___ZN4clpc4user8ioreport11ChannelList7iterateENSt3__18functionIFvNS1_7ChannelEEEE_block_invoke(uint64_t a1, CFTypeRef cf)
{
  CFRetain(cf);
  v6[0] = &unk_287018670;
  v6[1] = cf;
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, v6);
  clpc::user::ioreport::Channel::~Channel(v6);
  return 0;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__value_func<void ()(clpc::user::ioreport::Channel)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t ___ZN4clpc4user8ioreport11ChannelList6filterENSt3__18functionIFbNS1_7ChannelEEEE_block_invoke(uint64_t a1, CFTypeRef cf)
{
  CFRetain(cf);
  v7[0] = &unk_287018670;
  v7[1] = cf;
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v4 + 48))(v4, v7))
  {
    v5 = 0;
  }

  else
  {
    v5 = 16;
  }

  clpc::user::ioreport::Channel::~Channel(v7);
  return v5;
}

uint64_t std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::allocator<CLPCReportingStatID>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_25E3BF22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  clpc::user::ioreport::Sample::~Sample(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
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

void clpc::user::iokit::CLPC::serializeRPC(uint64_t *__return_ptr a1@<X8>, clpc::user::iokit::CLPC *this@<X0>, NSObject *a3@<X1>)
{
  v5 = this;
  v6 = a3;
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  objc_opt_class();
  v12 = &v22;
  v13 = &v19;
  v14 = &v18;
  v15 = &v21;
  v16 = &v20;
  v18 = v17 = &v23;
  v7 = xmlNewNode(0, "dict");
  if (xmlNewChild(v7, 0, "key", "method") && _ZZN4clpc4user5iokit4CLPC12serializeRPCEP8NSObjectS4_ENKUlRT_P8_xmlNodeS4_E_clIKNS1_6detail16recursive_lambdaIS9_EEEEbS6_S8_S4_(&v12, &v12, v7, v5) && xmlNewChild(v7, 0, "key", "params") && _ZZN4clpc4user5iokit4CLPC12serializeRPCEP8NSObjectS4_ENKUlRT_P8_xmlNodeS4_E_clIKNS1_6detail16recursive_lambdaIS9_EEEEbS6_S8_S4_(&v12, &v12, v7, v6))
  {
    v8 = [MEMORY[0x277CBEB28] data];
    IO = xmlOutputBufferCreateIO(clpc::user::iokit::CLPC::serializeRPC(NSObject *,NSObject *)::{lambda(void *,char const*,int)#1}::__invoke, 0, v8, 0);
    xmlNodeDumpOutput(IO, v7->doc, v7, 0, 0, "UTF-8");
    xmlOutputBufferClose(IO);
    v10 = 1;
    [v8 appendBytes:&unk_25E3CC2C9 length:1];
    v11 = v8;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  xmlFreeNode(v7);
  *a1 = v11;
  *(a1 + 8) = v10;
}

void clpc::user::iokit::CLPC::performRPCWithXML(uint64_t *__return_ptr a1@<X8>, clpc::user::iokit::CLPC *this@<X0>, NSData *a3@<X1>)
{
  v10 = a3;
  v6 = clpc::user::iokit::CLPC::performRPCWithXMLInternal(this, [(NSData *)v10 bytes], [(NSData *)v10 length]);
  v7 = 0;
  v8 = 0;
  if (!v6 && v5)
  {
    if (v5 >= 0x28 && (v9 = **(this + 2), v7 = v9 == 0x316E696263706C63))
    {
      v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(this + 2) length:v5];
      v6 = 0;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(this + 2) length:v5 encoding:4];
      v6 = 0;
      v7 = 0;
    }
  }

  *a1 = v8;
  *(a1 + 2) = v6;
  *(a1 + 12) = v7;
}

void clpc::user::iokit::CLPC::unserializeRPCReply(uint64_t *__return_ptr a1@<X8>, clpc::user::iokit::CLPC *this@<X0>)
{
  v3 = this;
  v4 = xmlParseDoc([(clpc::user::iokit::CLPC *)v3 UTF8String]);
  v5 = xmlXPathNewContext(v4);
  children = v4->children;
  v5->node = children;
  _ZZN4clpc4user5iokit4CLPC19unserializeRPCReplyEP8NSStringENKUlRT_P8_xmlNodeP16_xmlXPathContextE_clIKNS1_6detail16recursive_lambdaISB_EEEENSt3__14pairIU8__strongP8NSObjectbEES6_S8_SA_(&v10, children, v5, &v8);
  xmlXPathFreeContext(v5);
  xmlFreeDoc(v4);
  v7 = v8;
  *a1 = v7;
  *(a1 + 8) = v9;
}

uint64_t _ZZN4clpc4user5iokit4CLPC12serializeRPCEP8NSObjectS4_ENKUlRT_P8_xmlNodeS4_E_clIKNS1_6detail16recursive_lambdaIS9_EEEEbS6_S8_S4_(void **a1, void **a2, xmlNode *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      if ([v6 BOOLValue])
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }

      xmlNewChild(a3, 0, v7, 0);
      goto LABEL_8;
    }

    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
      if (CFNumberIsFloatType(v10))
      {

        goto LABEL_13;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%llx", objc_msgSend(v10, "unsignedLongLongValue")];
      v14 = [v13 UTF8String];

      v15 = xmlNewChild(a3, 0, "integer", v14);
      xmlNewProp(v15, "size", "64");
    }

    else if (objc_opt_isKindOfClass())
    {
      xmlNewChild(a3, 0, "string", [v6 UTF8String]);
    }

    else
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_isKindOfClass())
        {
          v32 = v6;
          v16 = xmlNewNode(0, "dict");
          xmlAddChild(a3, v16);
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v17 = v32;
          v18 = [v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (v18)
          {
            v33 = *v39;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v39 != v33)
                {
                  objc_enumerationMutation(v17);
                }

                v20 = *(*(&v38 + 1) + 8 * i);
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

LABEL_41:
                  goto LABEL_13;
                }

                v21 = v20;
                xmlNewChild(v16, 0, "key", [v20 UTF8String]);
                v22 = [v17 objectForKeyedSubscript:v20];
                v23 = _ZZN4clpc4user5iokit4CLPC12serializeRPCEP8NSObjectS4_ENKUlRT_P8_xmlNodeS4_E_clIKNS1_6detail16recursive_lambdaIS9_EEEEbS6_S8_S4_(a2, a2, v16, v22);

                if ((v23 & 1) == 0)
                {
                  goto LABEL_41;
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_8;
        }

        if (objc_opt_isKindOfClass())
        {
          v24 = v6;
          v25 = xmlNewNode(0, "array");
          xmlAddChild(a3, v25);
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v26 = v24;
          v27 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v27)
          {
            v28 = *v35;
            while (2)
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v35 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = *(*(&v34 + 1) + 8 * j);
                v31 = _ZZN4clpc4user5iokit4CLPC12serializeRPCEP8NSObjectS4_ENKUlRT_P8_xmlNodeS4_E_clIKNS1_6detail16recursive_lambdaIS9_EEEEbS6_S8_S4_(a2, a2, v25, v30);

                if (!v31)
                {

                  goto LABEL_13;
                }
              }

              v27 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_8;
        }

LABEL_13:
        v8 = 0;
        goto LABEL_9;
      }

      v11 = [v6 base64EncodedStringWithOptions:0];
      v12 = [v11 UTF8String];

      xmlNewChild(a3, 0, "data", v12);
    }
  }

  else
  {
    xmlNewChild(a3, 0, "false", 0);
  }

LABEL_8:
  v8 = 1;
LABEL_9:

  return v8;
}

uint64_t clpc::user::iokit::CLPC::performRPCWithXMLInternal(clpc::user::iokit::CLPC *this, const void *a2, size_t a3)
{
  v6 = *(this + 2);
  if (!v6)
  {
    operator new[]();
  }

  memset_s(v6, *(this + 3), 0, *(this + 3));
  outputStruct = *(this + 2);
  v11 = *(this + 3);
  LODWORD(result) = IOConnectCallMethod(*(this + 3), 0, 0, 0, a2, a3, 0, 0, outputStruct, &v11);
  if (v11 >= *(this + 3) && *(this + 3) >> 25 == 0 && result == 0)
  {
    *(this + 3) *= 2;
    operator new[]();
  }

  return result;
}

void _ZZN4clpc4user5iokit4CLPC19unserializeRPCReplyEP8NSStringENKUlRT_P8_xmlNodeP16_xmlXPathContextE_clIKNS1_6detail16recursive_lambdaISB_EEEENSt3__14pairIU8__strongP8NSObjectbEES6_S8_SA_(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (!a2 || *(a2 + 8) != 1)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *(a2 + 16));
  if (v51 < 0)
  {
    v9 = v50;
    switch(v50)
    {
      case 4:
        if (*__p == 1702195828)
        {
LABEL_65:
          v25 = MEMORY[0x277CBEC38];
          goto LABEL_66;
        }

        break;
      case 5:
        if (*__p == 1936482662 && *(__p + 4) == 101)
        {
LABEL_45:
          v25 = MEMORY[0x277CBEC28];
LABEL_66:
          *a4 = v25;
LABEL_104:
          *(a4 + 8) = 1;
          goto LABEL_108;
        }

        break;
      case 9:
        p_p = __p;
LABEL_13:
        v10 = *p_p;
        v11 = p_p[8];
        if (v10 == 0x636E657265666572 && v11 == 101)
        {
          Prop = xmlGetProp(a2, "IDREF");
          if (Prop)
          {
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:Prop];