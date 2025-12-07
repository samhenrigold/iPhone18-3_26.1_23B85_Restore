re::DirectFence *re::DirectFence::DirectFence(re::DirectFence *this, char *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v4 = &unk_285BC12C0;
  *(v4 + 16) = 0;
  *(v4 + 20) = 1;
  *(v4 + 24) = 0;
  std::string::basic_string[abi:nn200100]<0>((v4 + 32), a2);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  return this;
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
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

ArcSharedObject *re::DirectFence::DirectFence(ArcSharedObject *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *v4 = &unk_285BC12C0;
  *(v4 + 16) = 1;
  *(v4 + 20) = 1;
  *(v4 + 32) = 0u;
  v5 = v4 + 32;
  *(v4 + 24) = a2;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  v6 = [a2 label];
  if (v6)
  {
    v7 = [v6 UTF8String];
  }

  else
  {
    snprintf(__str, 0x80uLL, "CommandBuffer %p", a2);
    v7 = __str;
  }

  MEMORY[0x24C1E9E80](v5, v7);
  return a1;
}

void re::DirectFence::~DirectFence(re::DirectFence *this)
{
  *this = &unk_285BC12C0;
  if (*(this + 20) == 1)
  {
    re::DirectFence::~DirectFence();
  }

  v2 = (this + 56);
  std::vector<std::function<void ()(re::DirectFence *)>>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectFence::~DirectFence(this);

  JUMPOUT(0x24C1E9EB0);
}

uint64_t re::DirectFence::invalidate(uint64_t this)
{
  if ((*(this + 20) & 1) == 0)
  {
    re::DirectFence::invalidate();
  }

  v1 = this;
  *(this + 20) = 0;
  v2 = *(this + 56);
  v3 = *(this + 64);
  while (v2 != v3)
  {
    this = std::function<void ()(re::DirectFence *)>::operator()(v2, v1);
    v2 += 32;
  }

  return this;
}

uint64_t std::function<void ()(re::DirectFence *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::DirectFence::addInvalidateHandler(v4);
}

uint64_t std::vector<std::function<void ()(re::DirectFence *)>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<void ()(re::DirectFence *)>>>(a1, v11);
    }

    v12 = 32 * v8;
    std::__function::__value_func<void ()(re::DirectFence *)>::__value_func[abi:nn200100](v12, a2);
    v7 = v12 + 32;
    v13 = a1[1];
    v14 = v12 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<void ()(re::DirectFence *)>>,std::function<void ()(re::DirectFence *)>*>(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    a1[1] = v12 + 32;
    v16 = a1[2];
    a1[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::function<void ()(re::DirectFence *)>>::~__split_buffer(v17);
  }

  else
  {
    result = std::__function::__value_func<void ()(re::DirectFence *)>::__value_func[abi:nn200100](v4, a2);
    v7 = result + 32;
  }

  a1[1] = v7;
  return result;
}

void re::DirectFence::description(re::DirectFence *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v11, "Fence: ");
  v6 = *(this + 4);
  v5 = this + 32;
  v4 = v6;
  v7 = v5[23];
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = v5[23];
  }

  else
  {
    v9 = *(v5 + 1);
  }

  v10 = std::string::append(&v11, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void std::vector<std::function<void ()(re::DirectFence *)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(re::DirectFence *)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(re::DirectFence *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::DirectFence *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<void ()(re::DirectFence *)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<void ()(re::DirectFence *)>>,std::function<void ()(re::DirectFence *)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<void ()(re::DirectFence *)>::__value_func[abi:nn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__function::__value_func<void ()(re::DirectFence *)>::~__value_func[abi:nn200100](v6);
      v6 += 32;
    }
  }
}

uint64_t std::__split_buffer<std::function<void ()(re::DirectFence *)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(re::DirectFence *)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL re::MeshValidation::validateIndices_neon(uint16x8_t *this, unint64_t a2, unsigned int a3)
{
  if (a2 < 8)
  {
LABEL_5:
    if ((a2 & 0xFFFFFFFFFFFFFFF8) == a2)
    {
      return 1;
    }

    else
    {
      v9 = (a2 & 0xFFFFFFFFFFFFFFF8) + 1;
      v10 = &this[a2 >> 3];
      do
      {
        v12 = v10->u16[0];
        v10 = (v10 + 2);
        v11 = v12;
        result = v12 < a3 || v11 == 0xFFFF;
      }

      while (result && v9++ < a2);
    }
  }

  else
  {
    v3 = vdupq_n_s16(a3);
    v4.i64[0] = -1;
    v4.i64[1] = -1;
    v5 = this;
    v6 = a2 >> 3;
    while (1)
    {
      v7 = vorrq_s8(vcgtq_u16(v3, *v5), vceqq_s16(*v5, v4));
      v7.i16[0] = vminvq_u16(v7);
      if (!v7.i32[0])
      {
        return 0;
      }

      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

BOOL re::MeshValidation::validateIndices_neon(uint32x4_t *this, unint64_t a2, unsigned int a3)
{
  if (a2 < 4)
  {
LABEL_5:
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == a2)
    {
      return 1;
    }

    else
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFFFCLL) + 1;
      v9 = &this[a2 >> 2];
      do
      {
        v11 = v9->i32[0];
        v9 = (v9 + 4);
        v10 = v11;
        result = v11 < a3 || v10 == -1;
      }

      while (result && v8++ < a2);
    }
  }

  else
  {
    v3 = vdupq_n_s32(a3);
    v4.i64[0] = -1;
    v4.i64[1] = -1;
    v5 = this;
    v6 = a2 >> 2;
    while (vminvq_u32(vorrq_s8(vcgtq_u32(v3, *v5), vceqq_s32(*v5, v4))))
    {
      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

uint64_t re::MeshValidation::validateIndices(uint64_t a1, uint32x4_t *this, unint64_t a3, unint64_t a4)
{
  if (a1 == 1)
  {
    return re::MeshValidation::validateIndices_neon(this, a3 >> 2, a4);
  }

  if (a1)
  {
    return 0;
  }

  if (a4 <= 0xFFFD)
  {
    return re::MeshValidation::validateIndices_neon(this, a3 >> 1, a4);
  }

  return 1;
}

uint64_t re::directResourceLog(re *this)
{
  if ((atomic_load_explicit(byte_2810C3978, memory_order_acquire) & 1) == 0)
  {
    re::directResourceLog();
  }

  return _MergedGlobals;
}

uint64_t re::DirectMaterialParameters::create@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 > 0x10 || (*a1 == (a1[2] - a1[1]) >> 3 ? (v4 = a1[4] > 0x10) : (v4 = 1), v4))
  {
    result = 0;
  }

  else
  {
    v5 = operator new(0x88uLL);
    result = re::DirectMaterialParameters::DirectMaterialParameters(v5, a1);
  }

  *a2 = result;
  return result;
}

uint64_t re::DirectMaterialParameters::DirectMaterialParameters(uint64_t a1, unint64_t *a2)
{
  v4 = re::DirectResource::DirectResource(a1);
  *v4 = &unk_285BC12F8;
  *(v4 + 6) = *a2;
  std::vector<unsigned long>::vector[abi:nn200100](v4 + 7, a2 + 1);
  *(a1 + 80) = a2[4];
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 88) = 0u;
  std::vector<re::SharedPtr<re::DirectBuffer>>::resize((a1 + 88), *a2);
  std::vector<re::SharedPtr<re::DirectBuffer>>::resize((a1 + 112), a2[4]);
  return a1;
}

void std::vector<re::SharedPtr<re::DirectBuffer>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        if (v8)
        {

          *v3 = 0;
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<re::SharedPtr<re::DirectBuffer>>::__append(a1, v5);
  }
}

void re::DirectMaterialParameters::~DirectMaterialParameters(re::DirectMaterialParameters *this)
{
  v3 = (this + 112);
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 88);
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  re::DirectResource::~DirectResource(this);
}

{
  re::DirectMaterialParameters::~DirectMaterialParameters(this);

  JUMPOUT(0x24C1E9EB0);
}

void *re::DirectMaterialParameters::forEachSlot(void *result, uint64_t a2)
{
  v3 = result;
  if (result[12] != result[11])
  {
    v4 = 0;
    do
    {
      result = std::function<void ()(re::DirectResourceSlot)>::operator()(a2, 4, v4++);
    }

    while (v4 < (v3[12] - v3[11]) >> 3);
  }

  if (v3[15] != v3[14])
  {
    v5 = 0;
    do
    {
      result = std::function<void ()(re::DirectResourceSlot)>::operator()(a2, 5, v5++);
    }

    while (v5 < (v3[15] - v3[14]) >> 3);
  }

  return result;
}

uint64_t std::function<void ()(re::DirectResourceSlot)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, v5);
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return re::DirectMaterialParameters::setPayload();
}

uint64_t *std::vector<unsigned long>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void std::vector<unsigned long>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<re::SharedPtr<re::DirectBuffer>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<re::SharedPtr<re::DirectBuffer>>::clear[abi:nn200100](void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v5 = *--v3;
    v4 = v5;
    if (v5)
    {

      *v3 = 0;
    }
  }

  a1[1] = v2;
}

void std::vector<re::SharedPtr<re::DirectBuffer>>::__append(uint64_t *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(a1[1], 8 * a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v15[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>>(a1, v10);
    }

    v11 = v7 >> 3;
    v12 = (8 * (v7 >> 3));
    bzero(v12, 8 * a2);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>,re::SharedPtr<re::DirectBuffer>*>(a1, v6, v5, v12 - v11);
    v13 = *a1;
    *a1 = v12 - 8 * v11;
    a1[1] = v12 + 8 * a2;
    v14 = a1[2];
    a1[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::~__split_buffer(v15);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>,re::SharedPtr<re::DirectBuffer>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*v5)
      {

        *v5 = 0;
      }

      ++v5;
    }
  }
}

uint64_t std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::__destruct_at_end[abi:nn200100](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v6 = *--v2;
    v5 = v6;
    *(a1 + 16) = v2;
    if (v6)
    {

      *v2 = 0;
      v2 = *(a1 + 16);
    }
  }
}

void re::SharedPtr<re::DirectBuffer>::reset(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (a2)
    {
      v5 = (a2 + 8);
      v2 = *a1;
    }

    if (v2)
    {
    }

    *a1 = a2;
  }
}

void re::XPCObject::~XPCObject(void **this)
{
  v2 = *this;
  if (v2)
  {
    xpc_release(v2);
    *this = 0;
  }
}

void re::XPCObject::setValue(xpc_object_t *this, xpc_object_t object)
{
  if (object)
  {
    xpc_retain(object);
  }

  if (*this)
  {
    xpc_release(*this);
  }

  *this = object;
}

void **re::XPCObject::operator=(void **a1, void **a2)
{
  v4 = *a1;
  if (v4)
  {
    xpc_release(v4);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

xpc_object_t *re::DirectResourceEvent::operator=(xpc_object_t *a1, id a2)
{
  v4 = *a1;
  if (v4)
  {
    xpc_release(v4);
    *a1 = 0;
  }

  if (a2)
  {
    v5 = [a2 newSharedEventHandle];
    [v5 eventPort];
    v6 = xpc_mach_send_create();
    if (*a1)
    {
      xpc_release(*a1);
    }

    *a1 = v6;
    if (v5)
    {
    }
  }

  return a1;
}

id re::DirectResourceEvent::makeEvent@<X0>(void *a2@<X1>, void *a3@<X8>)
{
  right = xpc_mach_send_get_right();
  if (([a2 respondsToSelector_] & 1) != 0 || (result = objc_msgSend(a2, sel_methodSignatureForSelector_, sel_newSharedEventWithMachPort_)) != 0)
  {
    result = [a2 newSharedEventWithMachPort_];
  }

  *a3 = result;
  return result;
}

uint64_t re::lengthInBytes(uint64_t a1)
{
  if (a1)
  {
    return 4 * (a1 == 1);
  }

  else
  {
    return 2;
  }
}

unint64_t re::lengthInBytes(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2[4])
  {
    v3 = 0;
    v4 = 0;
    v5 = a2[2];
    if (!is_mul_ok(v5, a3))
    {
      return v4 | v3;
    }

    v6 = v5 * a3;
    v7 = *(a1 + 24);
    v8 = a2[1];
    v9 = v7 + v8;
    v10 = __CFADD__(v7, v8);
    v11 = MTLAttributeFormatSize(*(a1 + 8));
    if (v11 <= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = v11;
    }

    v13 = __CFADD__(v12, v9);
    v14 = v12 + v9;
    v15 = v13;
    if (v10)
    {
LABEL_13:
      v3 = 0;
      v4 = 0;
      return v4 | v3;
    }
  }

  else
  {
    v16 = *(a1 + 24);
    v17 = a2[1];
    v18 = v16 + v17;
    v19 = __CFADD__(v16, v17);
    v20 = MTLAttributeFormatSize(*(a1 + 8));
    v14 = v20 + v18;
    v15 = __CFADD__(v20, v18);
    if (v19)
    {
      goto LABEL_13;
    }
  }

  v3 = 0;
  v4 = 0;
  if (!v15)
  {
    v4 = v14 & 0xFFFFFFFFFFFFFF00;
    v3 = v14;
  }

  return v4 | v3;
}

const char *re::toString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278F7CF50[a1];
  }
}

const char *re::toString(int a1)
{
  if ((a1 + 1) > 7)
  {
    return "???";
  }

  else
  {
    return off_278F7CF78[a1 + 1];
  }
}

void re::DirectBuffer::create(_OWORD *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (re::DirectBufferValidation::isWellFormed(a1))
  {
    v6 = operator new(0x50uLL);
    v7 = re::DirectResource::DirectResource(v6);
    *v7 = &unk_285BC1368;
    *(v7 + 3) = *a1;
    *(v7 + 8) = 0;
    *(v7 + 9) = 0;
    if (re::DirectBuffer::allocateStorage(v7, a2))
    {
      re::DirectBuffer::attachToDevice(v6, *a2);
      *a3 = v6;
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    *a3 = 0;
  }
}

BOOL re::DirectBuffer::allocateStorage(void *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = 11;
  }

  else
  {
    v3 = 3;
  }

  re::DirectMemoryResource::create(a1[6], v3, *a2, &v7);
  v4 = a1[9];
  v5 = v7;
  a1[9] = v7;
  v7 = v4;
  if (v4)
  {

    v5 = a1[9];
  }

  if (v5)
  {
    a1[8] = a1[6];
  }

  return v5 != 0;
}

uint64_t re::DirectBuffer::attachToDevice(uint64_t a1, void *a2)
{
  v4 = re::DirectMemoryResource::bindToResource(*(a1 + 72), 3, 3);
  if (v4 && !*re::DirectMemoryResource::runtimeResource(*(a1 + 72)))
  {
    v5 = *(a1 + 72);
    re::DirectMemoryResource::makeBuffer(&v8, a2, v5);
    v6 = v8;
    v8 = 0;
    v9 = v6;
    re::DirectMemoryResource::setRuntimeResource(v5, &v9);
    if (v9)
    {

      v9 = 0;
    }

    if (v8)
    {
    }
  }

  return v4;
}

__n128 re::DirectBuffer::DirectBuffer(re::DirectResource *a1, __n128 *a2)
{
  v3 = re::DirectResource::DirectResource(a1);
  v3->n128_u64[0] = &unk_285BC1368;
  result = *a2;
  v3[3] = *a2;
  v3[4].n128_u64[0] = 0;
  v3[4].n128_u64[1] = 0;
  return result;
}

void re::DirectBuffer::~DirectBuffer(re::DirectBuffer *this)
{
  v2 = *(this + 9);
  if (v2)
  {

    *(this + 9) = 0;
  }

  re::DirectResource::~DirectResource(this);
}

{
  re::DirectBuffer::~DirectBuffer(this);

  JUMPOUT(0x24C1E9EB0);
}

re::DirectMemoryResource *re::DirectBuffer::isAttachedToDevice(re::DirectBuffer *this)
{
  result = *(this + 9);
  if (result)
  {
    return (*re::DirectMemoryResource::runtimeResource(result) != 0);
  }

  return result;
}

uint64_t re::DirectBuffer::payload(uint64_t a1, int a2, uint64_t a3)
{
  result = 0;
  if (a2 == 3 && !a3)
  {
    return *(a1 + 72);
  }

  return result;
}

void re::DirectBuffer::replaceContentsInternal(uint64_t a1, re::DirectMemoryResource **a2)
{
  v4 = *(a1 + 72);
  if (v4 && (v5 = *re::DirectMemoryResource::runtimeResource(v4), v4 = *(a1 + 72), v5))
  {
    v6 = [*re::DirectMemoryResource::runtimeResource(v4) device];
    v7 = *(a1 + 72);
    *(a1 + 72) = *a2;
    *a2 = v7;
    if (v6)
    {
      v8 = v6;
      if (!*re::DirectMemoryResource::runtimeResource(*(a1 + 72)))
      {
        v9 = *(a1 + 72);
        re::DirectMemoryResource::makeBuffer(&v11, v8, v9);
        v10 = v11;
        v11 = 0;
        v12 = v10;
        re::DirectMemoryResource::setRuntimeResource(v9, &v12);
        if (v12)
        {

          v12 = 0;
        }

        if (v11)
        {
        }
      }
    }
  }

  else
  {
    *(a1 + 72) = *a2;
    *a2 = v4;
  }
}

uint64_t re::DirectBuffer::setPayload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = re::DirectMemoryResource::bindToResource(*a4, 3, a2);
  if (result)
  {
    v9 = *(a1 + 40);
    if (!v9 || (result = (*(*v9 + 48))(v9, *a4, a1, a2, a3), result))
    {
      result = 0;
      if (a2 == 3 && !a3)
      {
        v10 = *(a1 + 40);
        if (v10)
        {
          (*(*v10 + 56))(v10, a1, a2, 0);
        }

        v11 = *a4;
        v14 = v11;
        if (v11)
        {
          v12 = (v11 + 8);
        }

        re::DirectBuffer::replaceContentsInternal(a1, &v14);
        if (v14)
        {
        }

        v13 = *(a1 + 40);
        if (v13)
        {
          (*(*v13 + 64))(v13, a1, a2, 0);
        }

        return 1;
      }
    }
  }

  return result;
}

BOOL re::DirectBuffer::setBytesUsed(re::DirectBuffer *this, unint64_t a2)
{
  if (*(this + 8) == a2)
  {
    return 1;
  }

  result = re::DirectBufferValidation::isValidBytesUsed(a2, this + 6);
  if (result)
  {
    *(this + 8) = a2;
    re::DirectResource::didChange(this, 0, 0, 0);
    return 1;
  }

  return result;
}

uint64_t re::DirectBuffer::read(uint64_t a1, uint64_t a2)
{
  v4 = re::DirectMemoryResource::bytes(*(a1 + 72));
  v5 = *(*(a1 + 72) + 48);
  v6 = *(a2 + 16);

  return v6(a2, v4, v5);
}

uint64_t re::DirectBuffer::update(uint64_t a1, uint64_t a2)
{
  re::DirectResource::willChange(a1, 3, 0, 0, 0);
  v4 = re::DirectMemoryResource::bytes(*(a1 + 72));
  (*(a2 + 16))(a2, v4, *(*(a1 + 72) + 48));

  return re::DirectResource::didChange(a1, 3, 0, 0);
}

uint64_t re::DirectBuffer::replace(uint64_t a1, uint64_t a2)
{
  re::DirectResource::willChange(a1, 3, 0, 1, 0);
  v4 = re::DirectMemoryResource::bytes(*(a1 + 72));
  (*(a2 + 16))(a2, v4, *(*(a1 + 72) + 48));

  return re::DirectResource::didChange(a1, 3, 0, 0);
}

id re::DirectBuffer::read@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *re::DirectMemoryResource::runtimeResource(*(a1 + 72));
  *a2 = result;
  return result;
}

id re::DirectBuffer::replace@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  re::DirectResource::willChange(a1, 3, 0, 1, a2);
  result = *re::DirectMemoryResource::runtimeResource(*(a1 + 72));
  *a3 = result;
  return result;
}

BOOL re::xpc_get_value(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = MEMORY[0x24C1EA420]();
  v5 = MEMORY[0x277D864C8];
  if (v4 == MEMORY[0x277D864C8])
  {
    *a2 = xpc_uint64_get_value(v3);
  }

  return v4 == v5;
}

{
  v3 = a1;
  *a2 = xpc_dictionary_get_uint64(v3, "indexCapacity");
  a2[1] = xpc_dictionary_get_uint64(v3, "indexType");
  a2[2] = xpc_dictionary_get_uint64(v3, "vertexBufferCount");
  a2[3] = xpc_dictionary_get_uint64(v3, "vertexCapacity");
  v4 = xpc_dictionary_get_array(v3, "vertexAttributes");
  v5 = v4;
  if (v4)
  {
    v6 = !re::xpc_array_get_values<re::DirectMeshVertexAttribute>(v4, a2 + 4);
  }

  else
  {
    v6 = 1;
  }

  v7 = xpc_dictionary_get_array(v3, "vertexLayouts");
  v8 = v7;
  v9 = 0;
  if (v7 && !v6)
  {
    v9 = re::xpc_array_get_values<re::DirectMeshVertexLayout>(v7, a2 + 7);
  }

  return v9;
}

BOOL re::xpc_get_value(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v4 = MEMORY[0x24C1EA420]();
  v5 = MEMORY[0x277D864D0];
  if (v4 == MEMORY[0x277D864D0])
  {
    bytes = xpc_uuid_get_bytes(v3);
    uuid_copy(a2, bytes);
  }

  return v4 == v5;
}

{
  v3 = a1;
  v4 = xpc_dictionary_get_value(v3, "partCount");
  if (re::xpc_get_value<unsigned long>(v4, a2))
  {
    v5 = xpc_dictionary_get_value(v3, "parts");
    if (re::xpc_get_value<re::DirectResourceId>(v5, a2 + 16))
    {
      v6 = xpc_dictionary_get_value(v3, "indices");
      if (re::xpc_get_value<re::DirectResourceId>(v6, a2 + 33))
      {
        v7 = xpc_dictionary_get_array(v3, "vertices");
        v8 = re::xpc_array_get_values<std::optional<re::DirectResourceId>,4ul>(v7, a2 + 50);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

{
  v3 = a1;
  uuid = xpc_dictionary_get_uuid(v3, "identifier");
  if (uuid)
  {
    uuid_copy(a2, uuid);
    v5 = xpc_dictionary_get_dictionary(v3, "contents");
    value = re::xpc_get_value(v5, a2 + 16);
  }

  else
  {
    value = 0;
  }

  return value;
}

{
  v3 = a1;
  uuid = xpc_dictionary_get_uuid(v3, "identifier");
  if (uuid)
  {
    uuid_copy(a2, uuid);
    v5 = xpc_dictionary_get_dictionary(v3, "description");
    re::xpc_get_value(v5, (a2 + 16));
    v6 = xpc_dictionary_get_uuid(v3, "contents");
    v7 = v6 != 0;
    if (v6)
    {
      uuid_copy(a2 + 88, v6);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

{
  v3 = a1;
  uuid = xpc_dictionary_get_uuid(v3, "identifier");
  if (uuid)
  {
    uuid_copy(a2, uuid);
    v5 = xpc_dictionary_get_dictionary(v3, "contents");
    value = re::xpc_get_value(v5, (a2 + 16));
  }

  else
  {
    value = 0;
  }

  return value;
}

id re::xpc_dictionary_create(uint64_t a1, uint64_t a2)
{
  empty = xpc_dictionary_create_empty();
  if (a2)
  {
    v5 = a1 + 16 * a2;
    do
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      a1 += 16;
      xpc_dictionary_set_value(empty, v6, v7);
    }

    while (a1 != v5);
  }

  return empty;
}

id re::xpc_object_create(uint64_t *a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "semantic", *a1);
  xpc_dictionary_set_uint64(empty, "format", a1[1]);
  xpc_dictionary_set_uint64(empty, "layoutIndex", a1[2]);
  xpc_dictionary_set_uint64(empty, "offset", a1[3]);

  return empty;
}

{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "bufferIndex", *a1);
  xpc_dictionary_set_uint64(empty, "bufferOffset", a1[1]);
  xpc_dictionary_set_uint64(empty, "bufferStride", a1[2]);
  xpc_dictionary_set_uint64(empty, "stepRate", a1[3]);
  xpc_dictionary_set_uint64(empty, "stepFunction", a1[4]);

  return empty;
}

{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "indexCapacity", *a1);
  xpc_dictionary_set_uint64(empty, "indexType", a1[1]);
  xpc_dictionary_set_uint64(empty, "vertexBufferCount", a1[2]);
  xpc_dictionary_set_uint64(empty, "vertexCapacity", a1[3]);
  v3 = re::xpc_array_create_with<re::DirectMeshVertexAttribute>(a1 + 4);
  xpc_dictionary_set_value(empty, "vertexAttributes", v3);

  v4 = re::xpc_array_create_with<re::DirectMeshVertexLayout>(a1 + 7);
  xpc_dictionary_set_value(empty, "vertexLayouts", v4);

  return empty;
}

{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "capacity", *a1);
  xpc_dictionary_set_uint64(empty, "sizeMultiple", a1[1]);

  return empty;
}

uint64_t re::xpc_get_value(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = xpc_dictionary_get_uint64(v3, "semantic");
  *(a2 + 8) = xpc_dictionary_get_uint64(v3, "format");
  *(a2 + 16) = xpc_dictionary_get_uint64(v3, "layoutIndex");
  uint64 = xpc_dictionary_get_uint64(v3, "offset");

  *(a2 + 24) = uint64;
  return 1;
}

{
  v3 = a1;
  *a2 = xpc_dictionary_get_uint64(v3, "width");
  *(a2 + 8) = xpc_dictionary_get_uint64(v3, "height");
  *(a2 + 16) = xpc_dictionary_get_uint64(v3, "depth");
  *(a2 + 24) = xpc_dictionary_get_uint64(v3, "mipmapLevelCount");
  *(a2 + 32) = xpc_dictionary_get_uint64(v3, "arrayLength");
  *(a2 + 40) = xpc_dictionary_get_uint64(v3, "pixelFormat");
  *(a2 + 48) = xpc_dictionary_get_uint64(v3, "textureType");
  *(a2 + 56) = xpc_dictionary_get_uint64(v3, "textureUsage");
  uint64 = xpc_dictionary_get_uint64(v3, "swizzle");

  *(a2 + 64) = uint64;
  return 1;
}

uint64_t re::xpc_get_value(void *a1, uint64_t *a2)
{
  v3 = a1;
  *a2 = xpc_dictionary_get_uint64(v3, "bufferIndex");
  a2[1] = xpc_dictionary_get_uint64(v3, "bufferOffset");
  a2[2] = xpc_dictionary_get_uint64(v3, "bufferStride");
  a2[3] = xpc_dictionary_get_uint64(v3, "stepRate");
  uint64 = xpc_dictionary_get_uint64(v3, "stepFunction");

  a2[4] = uint64;
  return 1;
}

{
  v3 = a1;
  *a2 = xpc_dictionary_get_uint64(v3, "capacity");
  uint64 = xpc_dictionary_get_uint64(v3, "sizeMultiple");

  a2[1] = uint64;
  return 1;
}

{
  v3 = a1;
  re::make::shared::object<re::DirectResourceCommands>(&v16);
  v4 = *a2;
  *a2 = v16;
  v16 = v4;
  if (v4)
  {
  }

  *(*a2 + 16) = xpc_dictionary_get_uint64(v3, "identifier");
  v16 = xpc_dictionary_get_value(v3, "userPayload");
  re::XPCObject::operator=((*a2 + 24), &v16);
  re::XPCObject::~XPCObject(&v16);
  v5 = xpc_dictionary_get_value(v3, "event");
  v6 = v5;
  if (v5 && !re::xpc_get_value(v5, (*a2 + 32)) || (v6, xpc_dictionary_get_dictionary(v3, "meshes"), v7 = objc_claimAutoreleasedReturnValue(), (v6 = v7) != 0) && !re::xpc_get_value<re::CreateDirectMesh,re::UpdateDirectMesh>(v7, (*a2 + 40)) || (v6, xpc_dictionary_get_dictionary(v3, "textures"), v8 = objc_claimAutoreleasedReturnValue(), (v6 = v8) != 0) && !re::xpc_get_value<re::CreateDirectTexture,re::UpdateDirectTexture>(v8, (*a2 + 112)) || (v6, xpc_dictionary_get_dictionary(v3, "buffers"), v9 = objc_claimAutoreleasedReturnValue(), (v6 = v9) != 0) && !re::xpc_get_value<re::CreateDirectBuffer,re::UpdateDirectBuffer>(v9, (*a2 + 184)))
  {
    LOBYTE(v14) = 0;
  }

  else
  {

    v10 = xpc_dictionary_get_dictionary(v3, "payloads");
    v6 = v10;
    if (v10)
    {
      v11 = xpc_dictionary_get_array(v10, "create");
      v12 = v11;
      if (v11 && !re::xpc_array_get_values<re::CreateDirectPayload>(v11, (*a2 + 256)))
      {
        LOBYTE(v14) = 0;
      }

      else
      {

        v13 = xpc_dictionary_get_array(v6, "destroy");
        v12 = v13;
        if (v13)
        {
          v14 = re::xpc_array_get_values<re::DestroyResource>(v13, (*a2 + 280)) << 31 >> 31;
        }

        else
        {
          LOBYTE(v14) = 1;
        }
      }
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  return v14 & 1;
}

BOOL re::xpc_array_get_values<re::DirectMeshVertexAttribute>(void *a1, void *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::DirectMeshVertexAttribute>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_25DirectMeshVertexAttributeEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

BOOL re::xpc_array_get_values<re::DirectMeshVertexLayout>(void *a1, void *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::DirectMeshVertexLayout>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_22DirectMeshVertexLayoutEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

id re::xpc_array_create_with<re::DirectMeshVertexAttribute>(uint64_t **a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = re::xpc_array_create_with<re::DirectMeshVertexAttribute>(v4);

  return v2;
}

{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 4;
  }

  return empty;
}

id re::xpc_array_create_with<re::DirectMeshVertexLayout>(uint64_t **a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = re::xpc_array_create_with<re::DirectMeshVertexLayout>(v4);

  return v2;
}

{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 5;
  }

  return empty;
}

id re::xpc_object_create(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "width", *a1);
  xpc_dictionary_set_uint64(empty, "height", *(a1 + 8));
  xpc_dictionary_set_uint64(empty, "depth", *(a1 + 16));
  xpc_dictionary_set_uint64(empty, "mipmapLevelCount", *(a1 + 24));
  xpc_dictionary_set_uint64(empty, "arrayLength", *(a1 + 32));
  xpc_dictionary_set_uint64(empty, "pixelFormat", *(a1 + 40));
  xpc_dictionary_set_uint64(empty, "textureType", *(a1 + 48));
  xpc_dictionary_set_uint64(empty, "textureUsage", *(a1 + 56));
  xpc_dictionary_set_uint64(empty, "swizzle", *(a1 + 64));

  return empty;
}

{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = xpc_uuid_create(a1);
  v7[0] = "identifier";
  v7[1] = v2;
  v4 = re::xpc_object_create(*(a1 + 16), v3);
  v7[2] = "contents";
  v7[3] = v4;
  v5 = re::xpc_dictionary_create(v7, 2);

  return v5;
}

{
  v8[8] = *MEMORY[0x277D85DE8];
  v2 = re::xpc_object_create<unsigned long>(a1);
  v8[0] = "partCount";
  v8[1] = v2;
  v3 = re::xpc_object_create<re::DirectResourceId>(a1 + 16);
  v8[2] = "parts";
  v8[3] = v3;
  v4 = re::xpc_object_create<re::DirectResourceId>(a1 + 33);
  v8[4] = "indices";
  v8[5] = v4;
  v5 = re::xpc_array_create_with<std::optional<re::DirectResourceId>,4ul>(a1 + 50);
  v8[6] = "vertices";
  v8[7] = v5;
  v6 = re::xpc_dictionary_create(v8, 4);

  return v6;
}

{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = xpc_uuid_create(a1);
  v7[0] = "identifier";
  v7[1] = v2;
  v3 = re::xpc_object_create((a1 + 16));
  v7[2] = "description";
  v7[3] = v3;
  v4 = re::xpc_object_create(a1 + 96);
  v7[4] = "contents";
  v7[5] = v4;
  v5 = re::xpc_dictionary_create(v7, 3);

  return v5;
}

{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = re::xpc_object_create<unsigned long>(a1);
  v6[0] = "bytesUsed";
  v6[1] = v2;
  v3 = re::xpc_object_create<re::DirectResourceId>(a1 + 16);
  v6[2] = "contents";
  v6[3] = v3;
  v4 = re::xpc_dictionary_create(v6, 2);

  return v4;
}

{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = xpc_uuid_create(a1);
  v7[0] = "identifier";
  v7[1] = v2;
  v3 = re::xpc_object_create((a1 + 16));
  v7[2] = "description";
  v7[3] = v3;
  v4 = re::xpc_object_create(a1 + 32);
  v7[4] = "contents";
  v7[5] = v4;
  v5 = re::xpc_dictionary_create(v7, 3);

  return v5;
}

id re::XPCObject::retain@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1;
  *a2 = result;
  return result;
}

void re::DirectResourceEvent::setValue(void **a1, void *a2)
{
  v3 = a2;
  re::XPCObject::operator=(a1, &v3);
  re::XPCObject::~XPCObject(&v3);
}

BOOL re::xpc_get_value(void *a1, void **a2)
{
  v3 = a1;
  v4 = MEMORY[0x24C1EA420]();
  v5 = MEMORY[0x277D864A0];
  if (v4 == MEMORY[0x277D864A0])
  {
    re::DirectResourceEvent::setValue(a2, v3);
  }

  return v4 == v5;
}

id re::xpc_object_create(re *this, const re::DirectMemoryResource *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = xpc_uuid_create(this + 16);
  v10[0] = "identifier";
  v10[1] = v3;
  v4 = re::xpc_dictionary_create(v10, 1);

  v5 = *(this + 8);
  if ((v5 - 1) < 4)
  {
    v6 = re::DirectMemoryResource::bytes(this);
    xpc_dictionary_set_data(v4, "data", v6, *(this + 6));
    goto LABEL_8;
  }

  if (v5 == 6)
  {
    XPCObject = IOSurfaceCreateXPCObject(*(this + 8));
    v8 = "iosurface";
  }

  else
  {
    if (v5 != 7)
    {
      goto LABEL_8;
    }

    XPCObject = xpc_shmem_create(*(*(this + 9) + 16), *(*(this + 9) + 24));
    v8 = "shmem";
  }

  xpc_dictionary_set_value(v4, v8, XPCObject);

LABEL_8:

  return v4;
}

BOOL re::xpc_get_value(void *a1, re::DirectMemoryResource **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (MEMORY[0x24C1EA420]() != MEMORY[0x277D864B0])
  {
    memset(dst, 0, sizeof(dst));
    uuid = xpc_dictionary_get_uuid(v3, "identifier");
    if (!uuid)
    {
      v9 = 0;
      goto LABEL_20;
    }

    uuid_copy(dst, uuid);
    v5 = operator new(0x70uLL);
    v6 = re::DirectMemoryResource::DirectMemoryResource(v5, dst);
    v7 = *a2;
    *a2 = v6;
    if (v7)
    {
    }

    length = 0;
    data = xpc_dictionary_get_data(v3, "data", &length);
    if (data)
    {
      v9 = re::DirectMemoryResource::copyFromPrivateMemory(*a2, data, length, 0);
      goto LABEL_20;
    }

    v10 = xpc_dictionary_get_value(v3, "iosurface");
    if (v10)
    {
      v11 = v10;
      v12 = IOSurfaceLookupFromXPCObject(v10);
      if (v12)
      {
        v13 = v12;
        v9 = re::DirectMemoryResource::assignIOSurface(*a2, v12);
        CFRelease(v13);
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v14 = xpc_dictionary_get_value(v3, "shmem");
      v11 = v14;
      if (v14)
      {
        region = 0;
        v15 = xpc_shmem_map(v14, &region);
        if (v15)
        {
          v16 = v15;
          v17 = *a2;
          v18 = operator new(0x20uLL);
          re::MemoryMappedRegion::MemoryMappedRegion(v18, region, v16);
          v21 = v19;
          v9 = re::DirectMemoryResource::assignSharedMemory(v17, &v21);
          if (v21)
          {

            v21 = 0;
          }

          goto LABEL_19;
        }
      }
    }

    v9 = 0;
    goto LABEL_19;
  }

  if (*a2)
  {

    *a2 = 0;
  }

  v9 = 1;
LABEL_20:

  return v9;
}

BOOL re::xpc_get_value(void *a1, uint64_t a2)
{
  v3 = a1;
  uuid = xpc_dictionary_get_uuid(v3, "identifier");
  if (uuid)
  {
    uuid_copy(a2, uuid);
    v5 = xpc_dictionary_get_dictionary(v3, "contents");
    value = re::xpc_get_value(v5, (a2 + 16));
  }

  else
  {
    value = 0;
  }

  return value;
}

{
  v3 = a1;
  uuid = xpc_dictionary_get_uuid(v3, "identifier");
  if (uuid)
  {
    uuid_copy(a2, uuid);
    v5 = xpc_dictionary_get_dictionary(v3, "description");
    if (re::xpc_get_value(v5, (a2 + 16)))
    {
      v6 = xpc_dictionary_get_dictionary(v3, "contents");
      value = re::xpc_get_value(v6, (a2 + 96));
    }

    else
    {
      value = 0;
    }
  }

  else
  {
    value = 0;
  }

  return value;
}

{
  v3 = a1;
  v4 = xpc_dictionary_get_value(v3, "bytesUsed");
  if (re::xpc_get_value<unsigned long>(v4, a2))
  {
    v5 = xpc_dictionary_get_value(v3, "contents");
    v6 = re::xpc_get_value<re::DirectResourceId>(v5, (a2 + 16));
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

{
  v3 = a1;
  uuid = xpc_dictionary_get_uuid(v3, "identifier");
  if (uuid)
  {
    uuid_copy(a2, uuid);
    v5 = xpc_dictionary_get_dictionary(v3, "description");
    re::xpc_get_value(v5, (a2 + 16));
    v6 = xpc_dictionary_get_dictionary(v3, "contents");
    value = re::xpc_get_value(v6, a2 + 32);
  }

  else
  {
    value = 0;
  }

  return value;
}

BOOL re::xpc_get_value<unsigned long>(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || MEMORY[0x24C1EA420](v3) == MEMORY[0x277D864B0])
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    value = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1;
    value = re::xpc_get_value(v4, a2);
  }

  return value;
}

BOOL re::xpc_get_value<re::DirectResourceId>(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || MEMORY[0x24C1EA420](v3) == MEMORY[0x277D864B0])
  {
    *a2 = 0;
    a2[16] = 0;
    value = 1;
  }

  else
  {
    if (a2[16] == 1)
    {
      a2[16] = 0;
    }

    uuid_copy(a2, UUID_NULL);
    a2[16] = 1;
    value = re::xpc_get_value(v4, a2);
  }

  return value;
}

BOOL re::xpc_array_get_values<std::optional<re::DirectResourceId>,4ul>(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  if (count >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = count;
  }

  if (count)
  {
    v6 = count;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = xpc_array_get_value(v3, v7);
      v10 = re::xpc_get_value<re::DirectResourceId>(v9, v8);

      if (!v10)
      {
        v11 = 0;
        goto LABEL_15;
      }

      ++v7;
      v8 += 17;
    }

    while (v5 != v7);
    if (v6 <= 3)
    {
      goto LABEL_10;
    }

    v11 = 1;
  }

  else
  {
LABEL_10:
    v12 = v5 - 3;
    v13 = &a2[17 * v5];
    do
    {
      v14 = v12;
      v15 = xpc_null_create();
      v11 = re::xpc_get_value<re::DirectResourceId>(v15, v13);

      if (!v11)
      {
        break;
      }

      v12 = v14 + 1;
      v13 += 17;
    }

    while (v14);
  }

LABEL_15:

  return v11;
}

id re::xpc_object_create<unsigned long>(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = xpc_uint64_create(*a1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id re::xpc_object_create<re::DirectResourceId>(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = xpc_uuid_create(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id re::xpc_array_create_with<std::optional<re::DirectResourceId>,4ul>(uint64_t a1)
{
  v3[0] = a1;
  v3[1] = a1 + 68;
  v1 = re::xpc_array_create_with<std::optional<re::DirectResourceId> const>(v3);

  return v1;
}

id re::xpc_object_create(const unsigned __int8 *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = xpc_uuid_create(a1);
  v6[0] = "identifier";
  v6[1] = v2;
  v3 = re::xpc_object_create((a1 + 16));
  v6[2] = "contents";
  v6[3] = v3;
  v4 = re::xpc_dictionary_create(v6, 2);

  return v4;
}

{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = xpc_uuid_create(a1);
  v7[0] = "identifier";
  v7[1] = v2;
  v3 = re::xpc_object_create((a1 + 16));
  v7[2] = "description";
  v7[3] = v3;
  v4 = xpc_uuid_create(a1 + 88);
  v7[4] = "contents";
  v7[5] = v4;
  v5 = re::xpc_dictionary_create(v7, 3);

  return v5;
}

{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = xpc_uuid_create(a1);
  v6[0] = "identifier";
  v6[1] = v2;
  v3 = xpc_uuid_create(a1 + 16);
  v6[2] = "contents";
  v6[3] = v3;
  v4 = re::xpc_dictionary_create(v6, 2);

  return v4;
}

{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = xpc_uuid_create(a1);
  v6[0] = "identifier";
  v6[1] = v2;
  v3 = re::xpc_object_create((a1 + 16));
  v6[2] = "contents";
  v6[3] = v3;
  v4 = re::xpc_dictionary_create(v6, 2);

  return v4;
}

uint64_t re::xpc_get_value(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  uuid = xpc_dictionary_get_uuid(v3, "identifier");
  if (uuid && (uuid_copy(a2, uuid), (v5 = xpc_dictionary_get_uuid(v3, "contents")) != 0))
  {
    uuid_copy(a2 + 16, v5);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL re::xpc_get_value<re::CreateDirectMesh,re::UpdateDirectMesh>(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = xpc_dictionary_get_array(v3, "create");
  v5 = v4;
  v8 = 0;
  if (!v4 || re::xpc_array_get_values<re::CreateDirectMesh>(v4, a2))
  {

    v6 = xpc_dictionary_get_array(v3, "update");
    v5 = v6;
    if (!v6 || re::xpc_array_get_values<re::UpdateDirectMesh>(v6, a2 + 3))
    {

      v7 = xpc_dictionary_get_array(v3, "destroy");
      v5 = v7;
      if (!v7 || re::xpc_array_get_values<re::DestroyResource>(v7, a2 + 6))
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

BOOL re::xpc_get_value<re::CreateDirectTexture,re::UpdateDirectTexture>(void *a1, void *a2)
{
  v3 = a1;
  v4 = xpc_dictionary_get_array(v3, "create");
  v5 = v4;
  v8 = 0;
  if (!v4 || re::xpc_array_get_values<re::CreateDirectTexture>(v4, a2))
  {

    v6 = xpc_dictionary_get_array(v3, "update");
    v5 = v6;
    if (!v6 || re::xpc_array_get_values<re::UpdateDirectTexture>(v6, a2 + 3))
    {

      v7 = xpc_dictionary_get_array(v3, "destroy");
      v5 = v7;
      if (!v7 || re::xpc_array_get_values<re::DestroyResource>(v7, a2 + 6))
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

BOOL re::xpc_get_value<re::CreateDirectBuffer,re::UpdateDirectBuffer>(void *a1, void *a2)
{
  v3 = a1;
  v4 = xpc_dictionary_get_array(v3, "create");
  v5 = v4;
  v8 = 0;
  if (!v4 || re::xpc_array_get_values<re::CreateDirectBuffer>(v4, a2))
  {

    v6 = xpc_dictionary_get_array(v3, "update");
    v5 = v6;
    if (!v6 || re::xpc_array_get_values<re::UpdateDirectBuffer>(v6, a2 + 3))
    {

      v7 = xpc_dictionary_get_array(v3, "destroy");
      v5 = v7;
      if (!v7 || re::xpc_array_get_values<re::DestroyResource>(v7, a2 + 6))
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

BOOL re::xpc_array_get_values<re::CreateDirectPayload>(void *a1, uint64_t *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::CreateDirectPayload>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_19CreateDirectPayloadEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

BOOL re::xpc_array_get_values<re::DestroyResource>(void *a1, void *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::DestroyResource>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_15DestroyResourceEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

id re::xpc_object_create(re *this, const re::DirectResourceCommands *a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "identifier", *(this + 2));
  v4 = *(this + 3);
  if (v4)
  {
    xpc_dictionary_set_value(empty, "userPayload", v4);
  }

  if (*(this + 4))
  {
    v5 = re::DirectResourceEvent::value(this + 4);
    xpc_dictionary_set_value(empty, "event", v5);
  }

  if (*(this + 5) != *(this + 6) || *(this + 8) != *(this + 9) || *(this + 11) != *(this + 12))
  {
    v6 = re::xpc_object_create<re::CreateDirectMesh,re::UpdateDirectMesh>(this + 40);
    xpc_dictionary_set_value(empty, "meshes", v6);
  }

  if (*(this + 14) != *(this + 15) || *(this + 17) != *(this + 18) || *(this + 20) != *(this + 21))
  {
    v7 = re::xpc_object_create<re::CreateDirectTexture,re::UpdateDirectTexture>(this + 14);
    xpc_dictionary_set_value(empty, "textures", v7);
  }

  if (*(this + 23) != *(this + 24) || *(this + 26) != *(this + 27) || *(this + 29) != *(this + 30))
  {
    v8 = re::xpc_object_create<re::CreateDirectBuffer,re::UpdateDirectBuffer>(this + 184);
    xpc_dictionary_set_value(empty, "buffers", v8);
  }

  if (*(this + 32) != *(this + 33) || *(this + 35) != *(this + 36))
  {
    v9 = re::xpc_array_create_unless_empty<re::CreateDirectPayload>(this + 32);
    v13[0] = "create";
    v13[1] = v9;
    v10 = re::xpc_array_create_unless_empty<re::DestroyResource>(this + 35);
    v13[2] = "destroy";
    v13[3] = v10;
    v11 = re::xpc_dictionary_create(v13, 2);
    xpc_dictionary_set_value(empty, "payloads", v11);
  }

  return empty;
}

id re::xpc_object_create<re::CreateDirectMesh,re::UpdateDirectMesh>(uint64_t a1)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = re::xpc_array_create_unless_empty<re::CreateDirectMesh>(a1);
  v7[0] = "create";
  v7[1] = v2;
  v3 = re::xpc_array_create_unless_empty<re::UpdateDirectMesh>((a1 + 24));
  v7[2] = "update";
  v7[3] = v3;
  v4 = re::xpc_array_create_unless_empty<re::DestroyResource>((a1 + 48));
  v7[4] = "destroy";
  v7[5] = v4;
  v5 = re::xpc_dictionary_create(v7, 3);

  return v5;
}

id re::xpc_object_create<re::CreateDirectTexture,re::UpdateDirectTexture>(const unsigned __int8 **a1)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = re::xpc_array_create_unless_empty<re::CreateDirectTexture>(a1);
  v7[0] = "create";
  v7[1] = v2;
  v3 = re::xpc_array_create_unless_empty<re::UpdateDirectTexture>(a1 + 3);
  v7[2] = "update";
  v7[3] = v3;
  v4 = re::xpc_array_create_unless_empty<re::DestroyResource>(a1 + 6);
  v7[4] = "destroy";
  v7[5] = v4;
  v5 = re::xpc_dictionary_create(v7, 3);

  return v5;
}

id re::xpc_object_create<re::CreateDirectBuffer,re::UpdateDirectBuffer>(uint64_t a1)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = re::xpc_array_create_unless_empty<re::CreateDirectBuffer>(a1);
  v7[0] = "create";
  v7[1] = v2;
  v3 = re::xpc_array_create_unless_empty<re::UpdateDirectBuffer>((a1 + 24));
  v7[2] = "update";
  v7[3] = v3;
  v4 = re::xpc_array_create_unless_empty<re::DestroyResource>((a1 + 48));
  v7[4] = "destroy";
  v7[5] = v4;
  v5 = re::xpc_dictionary_create(v7, 3);

  return v5;
}

id re::xpc_array_create_unless_empty<re::CreateDirectPayload>(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7[2] = v1;
    v8 = v2;
    v7[0] = v3;
    v7[1] = v4;
    v5 = re::xpc_array_create_with<re::CreateDirectPayload>(v7);
  }

  return v5;
}

id re::xpc_array_create_unless_empty<re::DestroyResource>(const unsigned __int8 **a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7[2] = v1;
    v8 = v2;
    v7[0] = v3;
    v7[1] = v4;
    v5 = re::xpc_array_create_with<re::DestroyResource>(v7);
  }

  return v5;
}

void std::vector<re::DirectMeshVertexAttribute>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexAttribute>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

uint64_t ___ZN2re20xpc_array_get_valuesINS_25DirectMeshVertexAttributeEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 >= v7)
  {
    v9 = *v5;
    v10 = v6 - *v5;
    v11 = v10 >> 5;
    v12 = (v10 >> 5) + 1;
    if (v12 >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = v7 - v9;
    if (v13 >> 4 > v12)
    {
      v12 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexAttribute>>(*(a1 + 32), v12);
    }

    v14 = 32 * v11;
    *v14 = -1;
    v8 = 32 * v11 + 32;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 8) = 0;
    memcpy(0, v9, v10);
    v15 = *v5;
    *v5 = 0;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = -1;
    v8 = v6 + 32;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 8) = 0;
  }

  *(v5 + 8) = v8;
  re::xpc_get_value(v4, *(*(a1 + 32) + 8) - 32);

  return 1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexAttribute>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::DirectMeshVertexLayout>::reserve(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexLayout>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

uint64_t ___ZN2re20xpc_array_get_valuesINS_22DirectMeshVertexLayoutEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 >= v7)
  {
    v9 = 0x666666666666666;
    v10 = *v5;
    v11 = v6 - *v5;
    v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) + 1;
    if (v12 > 0x666666666666666)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v10) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 < 0x333333333333333)
    {
      v9 = v12;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexLayout>>(*(a1 + 32), v9);
    }

    v14 = 8 * (v11 >> 3);
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = vdupq_n_s64(1uLL);
    v8 = v14 + 40;
    v15 = v14 - v11;
    memcpy((v14 - v11), v10, v11);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = vdupq_n_s64(1uLL);
    v8 = v6 + 40;
  }

  *(v5 + 8) = v8;
  re::xpc_get_value(v4, (*(*(a1 + 32) + 8) - 40));

  return 1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexLayout>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

id re::xpc_array_create_with<std::optional<re::DirectResourceId> const>(uint64_t *a1)
{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create<re::DirectResourceId>(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 17;
  }

  return empty;
}

double re::make::shared::object<re::DirectResourceCommands>@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x130uLL);
  *v2 = 0u;
  v2[1] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[10] = 0u;
  v2[11] = 0u;
  v2[12] = 0u;
  v2[13] = 0u;
  v2[14] = 0u;
  v2[15] = 0u;
  v2[16] = 0u;
  v2[17] = 0u;
  v2[18] = 0u;
  v2[2] = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v3 = &unk_285BC13D8;
  v3[2] = 0;
  v3[3] = 0;
  re::DirectResourceEvent::DirectResourceEvent(v2 + 4);
  *(v2 + 37) = 0;
  result = 0.0;
  *(v2 + 248) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *a1 = v2;
  return result;
}

void re::DirectResourceCommands::~DirectResourceCommands(re::DirectResourceCommands *this)
{
  re::DirectResourceCommands::~DirectResourceCommands(this);

  JUMPOUT(0x24C1E9EB0);
}

{
  *this = &unk_285BC13D8;
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  v11 = (this + 256);
  std::vector<re::CreateDirectPayload>::__destroy_vector::operator()[abi:nn200100](&v11);
  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    *(this + 27) = v4;
    operator delete(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    *(this + 24) = v5;
    operator delete(v5);
  }

  v6 = *(this + 20);
  if (v6)
  {
    *(this + 21) = v6;
    operator delete(v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    *(this + 18) = v7;
    operator delete(v7);
  }

  v8 = *(this + 14);
  if (v8)
  {
    *(this + 15) = v8;
    operator delete(v8);
  }

  v9 = *(this + 11);
  if (v9)
  {
    *(this + 12) = v9;
    operator delete(v9);
  }

  v10 = *(this + 8);
  if (v10)
  {
    *(this + 9) = v10;
    operator delete(v10);
  }

  v11 = (this + 40);
  std::vector<re::CreateDirectMesh>::__destroy_vector::operator()[abi:nn200100](&v11);
  re::XPCObject::~XPCObject(this + 4);
  re::XPCObject::~XPCObject(this + 3);
  ArcSharedObject::~ArcSharedObject(this);
}

void std::vector<re::CreateDirectPayload>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<re::CreateDirectPayload>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<re::CreateDirectPayload>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {

      *(i - 8) = 0;
    }
  }

  a1[1] = v2;
}

void std::vector<re::CreateDirectMesh>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 27;
        std::allocator<re::CreateDirectMesh>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<re::CreateDirectMesh>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[6];
  if (v4)
  {
    a2[7] = v4;

    operator delete(v4);
  }
}

BOOL re::xpc_array_get_values<re::CreateDirectMesh>(void *a1, uint64_t *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::CreateDirectMesh>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_16CreateDirectMeshEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

BOOL re::xpc_array_get_values<re::UpdateDirectMesh>(void *a1, void *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::UpdateDirectMesh>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_16UpdateDirectMeshEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

uint64_t *std::vector<re::CreateDirectMesh>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x84BDA12F684BDA13 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x12F684BDA12F685)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectMesh>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

BOOL ___ZN2re20xpc_array_get_valuesINS_16CreateDirectMeshEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  uuid_copy(&v20, UUID_NULL);
  v6 = 0;
  *v22 = 1;
  v21 = xmmword_248D650E0;
  __p[32] = 0;
  LOBYTE(v24) = 0;
  LOWORD(v25) = 0;
  BYTE1(v26) = 0;
  memset(&v22[8], 0, 32);
  memset(__p, 0, 25);
  do
  {
    v7 = &v20 + v6;
    v7[146] = 0;
    v7[162] = 0;
    v6 += 17;
  }

  while (v6 != 68);
  v8 = v5[1];
  if (v8 >= v5[2])
  {
    Direct = std::vector<re::CreateDirectMesh>::__emplace_back_slow_path<re::CreateDirectMesh>(v5, &v20);
    v17 = *__p;
    v5[1] = Direct;
    if (v17)
    {
      *&__p[8] = v17;
      operator delete(v17);
    }
  }

  else
  {
    *v8 = v20;
    v9 = *v22;
    *(v8 + 16) = v21;
    *(v8 + 32) = v9;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    *(v8 + 48) = 0;
    *(v8 + 48) = *&v22[16];
    *(v8 + 64) = *&v22[32];
    *(v8 + 72) = 0;
    *&v22[16] = 0;
    *&v22[24] = 0;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0;
    *(v8 + 72) = *__p;
    *(v8 + 88) = *&__p[16];
    *&v22[32] = 0;
    memset(__p, 0, 24);
    v10 = *&__p[24];
    v11 = v24;
    v12 = v26;
    *(v8 + 128) = v25;
    *(v8 + 144) = v12;
    *(v8 + 96) = v10;
    *(v8 + 112) = v11;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    *(v8 + 208) = v30;
    *(v8 + 176) = v14;
    *(v8 + 192) = v15;
    *(v8 + 160) = v13;
    v5[1] = v8 + 216;
  }

  if (*&v22[16])
  {
    *&v22[24] = *&v22[16];
    operator delete(*&v22[16]);
  }

  value = re::xpc_get_value(v4, *(*(a1 + 32) + 8) - 216);

  return value;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectMesh>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::CreateDirectMesh>,re::CreateDirectMesh*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 2);
      *(a4 + 16) = *(v7 + 1);
      *(a4 + 32) = v8;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v7 + 3);
      *(a4 + 64) = v7[8];
      v7[6] = 0;
      v7[7] = 0;
      v7[8] = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v7 + 9);
      *(a4 + 88) = v7[11];
      v7[10] = 0;
      v7[11] = 0;
      v7[9] = 0;
      v10 = *(v7 + 11);
      v9 = *(v7 + 12);
      v11 = *(v7 + 10);
      *(a4 + 208) = v7[26];
      *(a4 + 176) = v10;
      *(a4 + 192) = v9;
      *(a4 + 160) = v11;
      v12 = *(v7 + 6);
      v13 = *(v7 + 7);
      v14 = *(v7 + 9);
      *(a4 + 128) = *(v7 + 8);
      *(a4 + 144) = v14;
      *(a4 + 96) = v12;
      *(a4 + 112) = v13;
      v7 += 27;
      a4 += 216;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator<re::CreateDirectMesh>::destroy[abi:nn200100](a1, v5);
      v5 += 27;
    }
  }
}

void **std::__split_buffer<re::CreateDirectMesh>::~__split_buffer(void **a1)
{
  std::__split_buffer<re::CreateDirectMesh>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<re::CreateDirectMesh>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 216;
    std::allocator<re::CreateDirectMesh>::destroy[abi:nn200100](v4, (i - 216));
  }
}

uint64_t std::vector<re::CreateDirectMesh>::__emplace_back_slow_path<re::CreateDirectMesh>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v21[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectMesh>>(a1, v6);
  }

  v7 = 216 * v2;
  *v7 = *a2;
  v8 = *(a2 + 32);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 32) = v8;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v10 = *(a2 + 176);
  v9 = *(a2 + 192);
  v11 = *(a2 + 160);
  *(v7 + 208) = *(a2 + 208);
  *(v7 + 176) = v10;
  *(v7 + 192) = v9;
  *(v7 + 160) = v11;
  v12 = *(a2 + 96);
  v13 = *(a2 + 112);
  v14 = *(a2 + 144);
  *(v7 + 128) = *(a2 + 128);
  *(v7 + 144) = v14;
  *(v7 + 96) = v12;
  *(v7 + 112) = v13;
  v15 = 216 * v2 + 216;
  v16 = a1[1];
  v17 = 216 * v2 + *a1 - v16;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::CreateDirectMesh>,re::CreateDirectMesh*>(a1, *a1, v16, v7 + *a1 - v16);
  v18 = *a1;
  *a1 = v17;
  a1[1] = v15;
  v19 = a1[2];
  a1[2] = 0;
  v21[2] = v18;
  v21[3] = v19;
  v21[0] = v18;
  v21[1] = v18;
  std::__split_buffer<re::CreateDirectMesh>::~__split_buffer(v21);
  return v15;
}

void std::vector<re::UpdateDirectMesh>::reserve(void *a1, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectMesh>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

BOOL ___ZN2re20xpc_array_get_valuesINS_16UpdateDirectMeshEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  uuid_copy(&v33, UUID_NULL);
  v6 = 0;
  LOBYTE(v34) = 0;
  BYTE8(v34) = 0;
  LOBYTE(v35) = 0;
  LOWORD(v36) = 0;
  BYTE1(v37) = 0;
  do
  {
    v7 = &v33 + v6;
    v7[66] = 0;
    v7[82] = 0;
    v6 += 17;
  }

  while (v6 != 68);
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  if (v8 >= v9)
  {
    v17 = 0xF0F0F0F0F0F0F0F1 * ((v8 - *v5) >> 3);
    v18 = v17 + 1;
    if (v17 + 1 > 0x1E1E1E1E1E1E1E1)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v19 = 0xF0F0F0F0F0F0F0F1 * ((v9 - *v5) >> 3);
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0xF0F0F0F0F0F0F0)
    {
      v20 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectMesh>>(v5, v20);
    }

    v21 = 136 * v17;
    *v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v37;
    *(v21 + 48) = v36;
    *(v21 + 64) = v24;
    *(v21 + 16) = v22;
    *(v21 + 32) = v23;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    *(v21 + 128) = v41;
    *(v21 + 96) = v26;
    *(v21 + 112) = v27;
    *(v21 + 80) = v25;
    v16 = 136 * v17 + 136;
    v28 = *(v5 + 8) - *v5;
    v29 = 136 * v17 - v28;
    memcpy((v21 - v28), *v5, v28);
    v30 = *v5;
    *v5 = v29;
    *(v5 + 8) = v16;
    *(v5 + 16) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v8 = v33;
    v10 = v34;
    v11 = v35;
    v12 = v37;
    *(v8 + 48) = v36;
    *(v8 + 64) = v12;
    *(v8 + 16) = v10;
    *(v8 + 32) = v11;
    v13 = v38;
    v14 = v39;
    v15 = v40;
    *(v8 + 128) = v41;
    *(v8 + 96) = v14;
    *(v8 + 112) = v15;
    *(v8 + 80) = v13;
    v16 = v8 + 136;
  }

  *(v5 + 8) = v16;
  value = re::xpc_get_value(v4, (*(*(a1 + 32) + 8) - 136));

  return value;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectMesh>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

BOOL re::xpc_array_get_values<re::CreateDirectTexture>(void *a1, void *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::CreateDirectTexture>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_19CreateDirectTextureEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

BOOL re::xpc_array_get_values<re::UpdateDirectTexture>(void *a1, void *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::UpdateDirectTexture>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_19UpdateDirectTextureEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

void std::vector<re::CreateDirectTexture>::reserve(void *a1, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x276276276276277)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectTexture>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

BOOL ___ZN2re20xpc_array_get_valuesINS_19CreateDirectTextureEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  uuid_copy(&v29, UUID_NULL);
  v30 = vdupq_n_s64(1uLL);
  v31 = v30;
  v32 = xmmword_248D650F0;
  v33 = xmmword_248D65100;
  LODWORD(v34) = 84148994;
  uuid_copy(&v34 + 8, UUID_NULL);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 >= v7)
  {
    v14 = 0x4EC4EC4EC4EC4EC5 * ((v6 - *v5) >> 3);
    v15 = v14 + 1;
    if ((v14 + 1) > 0x276276276276276)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v16 = 0x4EC4EC4EC4EC4EC5 * ((v7 - *v5) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0x13B13B13B13B13BLL)
    {
      v17 = 0x276276276276276;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectTexture>>(v5, v17);
    }

    v18 = 104 * v14;
    v19 = v29;
    v20 = v31;
    *(v18 + 16) = v30;
    *(v18 + 32) = v20;
    *v18 = v19;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    *(v18 + 96) = v35;
    *(v18 + 64) = v22;
    *(v18 + 80) = v23;
    *(v18 + 48) = v21;
    v13 = 104 * v14 + 104;
    v24 = *(v5 + 8) - *v5;
    v25 = 104 * v14 - v24;
    memcpy((v18 - v24), *v5, v24);
    v26 = *v5;
    *v5 = v25;
    *(v5 + 8) = v13;
    *(v5 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v8 = v29;
    v9 = v31;
    *(v6 + 16) = v30;
    *(v6 + 32) = v9;
    *v6 = v8;
    v10 = v32;
    v11 = v33;
    v12 = v34;
    *(v6 + 96) = v35;
    *(v6 + 64) = v11;
    *(v6 + 80) = v12;
    *(v6 + 48) = v10;
    v13 = v6 + 104;
  }

  *(v5 + 8) = v13;
  value = re::xpc_get_value(v4, (*(*(a1 + 32) + 8) - 104));

  return value;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectTexture>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::UpdateDirectTexture>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectTexture>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

uint64_t ___ZN2re20xpc_array_get_valuesINS_19UpdateDirectTextureEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  uuid_copy(dst, UUID_NULL);
  uuid_copy(&v22, UUID_NULL);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 >= v7)
  {
    v10 = (v6 - *v5) >> 5;
    v11 = v10 + 1;
    if ((v10 + 1) >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = v7 - *v5;
    if (v12 >> 4 > v11)
    {
      v11 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectTexture>>(v5, v13);
    }

    v14 = (32 * v10);
    v15 = v22;
    *v14 = *dst;
    v14[1] = v15;
    v9 = 32 * v10 + 32;
    v16 = *(v5 + 8) - *v5;
    v17 = 32 * v10 - v16;
    memcpy(v14 - v16, *v5, v16);
    v18 = *v5;
    *v5 = v17;
    *(v5 + 8) = v9;
    *(v5 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v8 = v22;
    *v6 = *dst;
    v6[1] = v8;
    v9 = (v6 + 2);
  }

  *(v5 + 8) = v9;
  value = re::xpc_get_value(v4, (*(*(a1 + 32) + 8) - 32));

  return value;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectTexture>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

BOOL re::xpc_array_get_values<re::CreateDirectBuffer>(void *a1, void *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::CreateDirectBuffer>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_18CreateDirectBufferEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

BOOL re::xpc_array_get_values<re::UpdateDirectBuffer>(void *a1, void *a2)
{
  v3 = a1;
  count = xpc_array_get_count(v3);
  std::vector<re::UpdateDirectBuffer>::reserve(a2, count);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = ___ZN2re20xpc_array_get_valuesINS_18UpdateDirectBufferEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = a2;
  v5 = xpc_array_apply(v3, applier);

  return v5;
}

void std::vector<re::CreateDirectBuffer>::reserve(void *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectBuffer>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

BOOL ___ZN2re20xpc_array_get_valuesINS_18CreateDirectBufferEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  uuid_copy(&v25, UUID_NULL);
  v26 = xmmword_248D65110;
  LOBYTE(v27) = 0;
  BYTE8(v27) = 0;
  LOBYTE(v28) = 0;
  LOBYTE(v29) = 0;
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 >= v7)
  {
    v12 = 0x8E38E38E38E38E39 * ((v6 - *v5) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0x38E38E38E38E38ELL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v14 = 0x8E38E38E38E38E39 * ((v7 - *v5) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x1C71C71C71C71C7)
    {
      v15 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectBuffer>>(v5, v15);
    }

    v16 = 72 * v12;
    *v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    *(v16 + 64) = v29;
    *(v16 + 32) = v18;
    *(v16 + 48) = v19;
    *(v16 + 16) = v17;
    v11 = 72 * v12 + 72;
    v20 = *(v5 + 8) - *v5;
    v21 = 72 * v12 - v20;
    memcpy((v16 - v20), *v5, v20);
    v22 = *v5;
    *v5 = v21;
    *(v5 + 8) = v11;
    *(v5 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v6 = v25;
    v8 = v26;
    v9 = v27;
    v10 = v28;
    *(v6 + 64) = v29;
    *(v6 + 32) = v9;
    *(v6 + 48) = v10;
    *(v6 + 16) = v8;
    v11 = v6 + 72;
  }

  *(v5 + 8) = v11;
  value = re::xpc_get_value(v4, *(*(a1 + 32) + 8) - 72);

  return value;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectBuffer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::UpdateDirectBuffer>::reserve(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectBuffer>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

BOOL ___ZN2re20xpc_array_get_valuesINS_18UpdateDirectBufferEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  uuid_copy(&v25, UUID_NULL);
  LOBYTE(v26) = 0;
  BYTE8(v26) = 0;
  LOBYTE(v27) = 0;
  LOBYTE(v28) = 0;
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 >= v7)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *v5) >> 3);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x492492492492492)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v14 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *v5) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x249249249249249)
    {
      v15 = 0x492492492492492;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectBuffer>>(v5, v15);
    }

    v16 = 56 * v12;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    *(v16 + 48) = v28;
    *(v16 + 16) = v18;
    *(v16 + 32) = v19;
    *v16 = v17;
    v11 = 56 * v12 + 56;
    v20 = *(v5 + 8) - *v5;
    v21 = 56 * v12 - v20;
    memcpy((v16 - v20), *v5, v20);
    v22 = *v5;
    *v5 = v21;
    *(v5 + 8) = v11;
    *(v5 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v8 = v25;
    v9 = v26;
    v10 = v27;
    *(v6 + 48) = v28;
    *(v6 + 16) = v9;
    *(v6 + 32) = v10;
    *v6 = v8;
    v11 = v6 + 56;
  }

  *(v5 + 8) = v11;
  value = re::xpc_get_value(v4, (*(*(a1 + 32) + 8) - 56));

  return value;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectBuffer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<re::CreateDirectPayload>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectPayload>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

BOOL ___ZN2re20xpc_array_get_valuesINS_19CreateDirectPayloadEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  uuid_copy(dst, UUID_NULL);
  v23 = 0;
  v7 = v5[1];
  v6 = v5[2];
  if (v7 >= v6)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v5) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21[4] = v5;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectPayload>>(v5, v11);
    }

    v12 = 24 * v8;
    *v12 = *dst;
    *(v12 + 16) = v23;
    v23 = 0;
    v13 = 24 * v8 + 24;
    v14 = v5[1];
    v15 = 24 * v8 + *v5 - v14;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::CreateDirectPayload>,re::CreateDirectPayload*>(v5, *v5, v14, v12 + *v5 - v14);
    v16 = *v5;
    *v5 = v15;
    v21[0] = v16;
    v21[1] = v16;
    v5[1] = v13;
    v21[2] = v16;
    v17 = v5[2];
    v5[2] = 0;
    v21[3] = v17;
    std::__split_buffer<re::CreateDirectPayload>::~__split_buffer(v21);
    v18 = v23;
    v5[1] = v13;
    if (v18)
    {
    }
  }

  else
  {
    *v7 = *dst;
    *(v7 + 16) = v23;
    v5[1] = v7 + 24;
  }

  value = re::xpc_get_value(v4, *(*(a1 + 32) + 8) - 24);

  return value;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectPayload>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::CreateDirectPayload>,re::CreateDirectPayload*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {

        *(v5 + 16) = 0;
      }

      v5 += 24;
    }
  }
}

uint64_t std::__split_buffer<re::CreateDirectPayload>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<re::CreateDirectPayload>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<re::CreateDirectPayload>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 24;
    v5 = *(v2 - 8);
    if (v5)
    {

      *(v2 - 8) = 0;
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<re::DestroyResource>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::DestroyResource>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

BOOL ___ZN2re20xpc_array_get_valuesINS_15DestroyResourceEEEbPU24objcproto13OS_xpc_object8NSObjectRNSt3__16vectorIT_NS5_9allocatorIS7_EEEE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  uuid_copy(dst, UUID_NULL);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *v5) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v6 - *v5;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::DestroyResource>>(v5, v12);
    }

    v13 = (16 * v9);
    *v13 = *dst;
    v8 = 16 * v9 + 16;
    v14 = *(v5 + 8) - *v5;
    v15 = 16 * v9 - v14;
    memcpy(v13 - v14, *v5, v14);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = *dst;
    v8 = (v7 + 1);
  }

  *(v5 + 8) = v8;
  value = re::xpc_get_value(v4, (*(*(a1 + 32) + 8) - 16));

  return value;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::DestroyResource>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

id re::xpc_array_create_unless_empty<re::CreateDirectMesh>(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7[2] = v1;
    v8 = v2;
    v7[0] = v3;
    v7[1] = v4;
    v5 = re::xpc_array_create_with<re::CreateDirectMesh>(v7);
  }

  return v5;
}

id re::xpc_array_create_unless_empty<re::UpdateDirectMesh>(const unsigned __int8 **a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7[2] = v1;
    v8 = v2;
    v7[0] = v3;
    v7[1] = v4;
    v5 = re::xpc_array_create_with<re::UpdateDirectMesh>(v7);
  }

  return v5;
}

id re::xpc_array_create_with<re::CreateDirectMesh>(uint64_t *a1)
{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 216;
  }

  return empty;
}

id re::xpc_array_create_with<re::UpdateDirectMesh>(const unsigned __int8 **a1)
{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 136;
  }

  return empty;
}

id re::xpc_array_create_unless_empty<re::CreateDirectTexture>(const unsigned __int8 **a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7[2] = v1;
    v8 = v2;
    v7[0] = v3;
    v7[1] = v4;
    v5 = re::xpc_array_create_with<re::CreateDirectTexture>(v7);
  }

  return v5;
}

id re::xpc_array_create_unless_empty<re::UpdateDirectTexture>(const unsigned __int8 **a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7[2] = v1;
    v8 = v2;
    v7[0] = v3;
    v7[1] = v4;
    v5 = re::xpc_array_create_with<re::UpdateDirectTexture>(v7);
  }

  return v5;
}

id re::xpc_array_create_with<re::CreateDirectTexture>(const unsigned __int8 **a1)
{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 104;
  }

  return empty;
}

id re::xpc_array_create_with<re::UpdateDirectTexture>(const unsigned __int8 **a1)
{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 32;
  }

  return empty;
}

id re::xpc_array_create_unless_empty<re::CreateDirectBuffer>(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7[2] = v1;
    v8 = v2;
    v7[0] = v3;
    v7[1] = v4;
    v5 = re::xpc_array_create_with<re::CreateDirectBuffer>(v7);
  }

  return v5;
}

id re::xpc_array_create_unless_empty<re::UpdateDirectBuffer>(const unsigned __int8 **a1)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7[2] = v1;
    v8 = v2;
    v7[0] = v3;
    v7[1] = v4;
    v5 = re::xpc_array_create_with<re::UpdateDirectBuffer>(v7);
  }

  return v5;
}

id re::xpc_array_create_with<re::CreateDirectBuffer>(uint64_t *a1)
{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 72;
  }

  return empty;
}

id re::xpc_array_create_with<re::UpdateDirectBuffer>(const unsigned __int8 **a1)
{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 56;
  }

  return empty;
}

id re::xpc_array_create_with<re::CreateDirectPayload>(uint64_t *a1)
{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = re::xpc_object_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 24;
  }

  return empty;
}

id re::xpc_array_create_with<re::DestroyResource>(const unsigned __int8 **a1)
{
  empty = xpc_array_create_empty();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = xpc_uuid_create(v3);
    if (v5)
    {
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v5);
    }

    else
    {
      v6 = xpc_null_create();
      xpc_array_set_value(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
    }

    v3 += 16;
  }

  return empty;
}

void re::MemoryMappedRegion::MemoryMappedRegion(re::MemoryMappedRegion *this, void *a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v5 = &unk_285BC1410;
  v5[2] = a2;
  v5[3] = a3;
}

void re::MemoryMappedRegion::~MemoryMappedRegion(re::MemoryMappedRegion *this)
{
  *this = &unk_285BC1410;
  if (munmap(*(this + 2), *(this + 3)))
  {
    re::MemoryMappedRegion::~MemoryMappedRegion();
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::MemoryMappedRegion::~MemoryMappedRegion(this);

  JUMPOUT(0x24C1E9EB0);
}

void re::MemoryMappedRegion::map(re::MemoryMappedRegion *this@<X0>, int a2@<W1>, int a3@<W2>, const void *a4@<X3>, ArcSharedObject **a5@<X8>)
{
  v8 = *MEMORY[0x277D85FA0] - 1;
  if ((*MEMORY[0x277D85FA0] ^ v8) > v8)
  {
    v9 = (this + v8) & -*MEMORY[0x277D85FA0];
  }

  else
  {
    v9 = (this + v8) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
  }

  v10 = mmap(0, v9, a2, a3, -1, 0);
  if (v10 != -1)
  {
    v11 = v10;
    if (a4)
    {
      memcpy(v10, a4, this);
      v12 = v9 - this;
      if (v9 <= this)
      {
LABEL_11:
        v14 = operator new(0x20uLL);
        ArcSharedObject::ArcSharedObject(v14, 0);
        *v13 = &unk_285BC1410;
        *(v13 + 2) = v11;
        *(v13 + 3) = v9;
        goto LABEL_12;
      }

      v10 = this + v11;
    }

    else
    {
      v12 = v9;
    }

    bzero(v10, v12);
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:
  *a5 = v13;
}

uint64_t re::DirectMemoryResource::capabilities(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (([result respondsToSelector_] & 1) != 0 || objc_msgSend(v1, sel_methodSignatureForSelector_, sel_supportsBufferWithIOSurface))
    {
      if ([v1 supportsBufferWithIOSurface])
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t re::DirectMemoryResource::typeForUsage(re::DirectMemoryResource *this, char a2, unint64_t a3)
{
  if ((a2 & 2) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((this & 2) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if ((this & 4) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = a2 & 1 ^ 7;
  }

  if ((this & 8) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if ((a2 & 2) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if ((this & 2) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (a3 <= 0xFFF)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

void re::DirectMemoryResource::create(re::MemoryMappedRegion *a1@<X0>, re::DirectMemoryResource *a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x70uLL);
  re::DirectMemoryResource::DirectMemoryResource(v10);
  v11 = re::DirectMemoryResource::typeForUsage(a2, a3, a1);
  if (!re::DirectMemoryResource::allocate(v10, a1, a2, v12, v11, a4))
  {

    v10 = 0;
  }

  *a5 = v10;
}

BOOL re::DirectMemoryResource::allocate(re::DirectMemoryResource *a1, re::MemoryMappedRegion *a2, int a3, int a4, int a5, id a6)
{
  *(a1 + 10) = a3;
  if (a5 > 3)
  {
    if (a5 > 5)
    {
      if (a5 == 6)
      {

        return re::DirectMemoryResource::allocateIOSurface(a1, a2);
      }

      else
      {
        if (a5 != 7)
        {
          return 0;
        }

        return re::DirectMemoryResource::allocateSharedMemory(a1, a2);
      }
    }

    else
    {
      if (a5 != 4)
      {
        goto LABEL_10;
      }

      return re::DirectMemoryResource::allocatePrivateMTLBuffer(a1, a6, a2);
    }
  }

  else
  {
    if (a5 <= 1)
    {
      if (a5)
      {
        if (a5 == 1)
        {

          return re::DirectMemoryResource::allocatePrivateNonAligned(a1, a2);
        }

        return 0;
      }

LABEL_10:
      re::DirectMemoryResource::reset(a1);
      return 0;
    }

    if (a5 == 2)
    {

      return re::DirectMemoryResource::allocatePrivatePageAligned(a1, a2);
    }

    else
    {

      return re::DirectMemoryResource::allocatePrivateMemoryMap(a1, a2);
    }
  }
}

void re::DirectMemoryResource::create(re::MemoryMappedRegion *a1@<X0>, re::DirectMemoryResource *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = re::DirectMemoryResource::capabilities(a3);

  re::DirectMemoryResource::create(a1, a2, v8, a3, a4);
}

void re::DirectMemoryResource::createWithSharedTexture(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, re::DirectMemoryResource **a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  if (([a1 isShareable] & 1) == 0)
  {
    re::DirectMemoryResource::createWithSharedTexture();
  }

  v8 = [a1 newSharedTextureHandle];
  if (v8)
  {
    v9 = v8;
    re::DirectMemoryResource::createWithSharedTexture(a1, v8, v5, v4, a4);
  }

  else
  {
    *a4 = 0;
  }
}

double re::DirectMemoryResource::createWithSharedTexture@<D0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, re::DirectMemoryResource **a5@<X8>)
{
  v10 = operator new(0x70uLL);
  *a5 = re::DirectMemoryResource::DirectMemoryResource(v10);
  re::DirectMemoryResource::assignIOSurface(v10, [a2 ioSurface]);
  *(v10 + 10) = a3;
  v12 = a1;
  NS::SharedPtr<MTL::Resource>::operator=<MTL::Texture>(v10 + 13, &v12);
  if (v12)
  {
  }

  *&result = 0x300000002;
  v10[12] = 0x300000002;
  *(v10 + 9) = a4;
  return result;
}

BOOL re::DirectMemoryResource::assignIOSurface(re::DirectMemoryResource *this, IOSurfaceRef buffer)
{
  if (buffer)
  {
    *(this + 8) = 6;
    *(this + 6) = IOSurfaceGetAllocSize(buffer);
    *(this + 8) = buffer;
    CFRetain(buffer);
  }

  return buffer != 0;
}

void **NS::SharedPtr<MTL::Resource>::operator=<MTL::Texture>(void **a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == *a2)
  {
  }

  else
  {
    if (v4)
    {

      v5 = *a2;
    }

    *a1 = v5;
  }

  *a2 = 0;
  return a1;
}

double re::DirectMemoryResource::createWithPrivateTexture@<D0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, re::DirectMemoryResource **a4@<X8>)
{
  v8 = operator new(0x70uLL);
  v9 = re::DirectMemoryResource::DirectMemoryResource(v8);
  *a4 = v9;
  *(v9 + 8) = 5;
  v8[6] = [a1 allocatedSize];
  *(v8 + 10) = a2;
  v11 = a1;
  NS::SharedPtr<MTL::Resource>::operator=<MTL::Texture>(v8 + 13, &v11);
  if (v11)
  {
  }

  *&result = 0x300000002;
  v8[12] = 0x300000002;
  *(v8 + 9) = a3;
  return result;
}

re::DirectMemoryResource *re::DirectMemoryResource::DirectMemoryResource(re::DirectMemoryResource *this, const unsigned __int8 (*a2)[16])
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v4 = &unk_285BC1448;
  uuid_copy((v4 + 16), a2);
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0xFFFFFFFF00000000;
  *(this + 13) = 0;
  return this;
}

re::DirectMemoryResource *re::DirectMemoryResource::DirectMemoryResource(re::DirectMemoryResource *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v2 = &unk_285BC1448;
  uuid_copy((v2 + 16), UUID_NULL);
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0xFFFFFFFF00000000;
  *(this + 13) = 0;
  uuid_generate_random(this + 16);
  return this;
}

void re::DirectMemoryResource::~DirectMemoryResource(re::DirectMemoryResource *this)
{
  re::DirectMemoryResource::reset(this);
  v2 = *(this + 13);
  if (v2)
  {

    *(this + 13) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {

    *(this + 11) = 0;
  }

  v4 = *(this + 10);
  if (v4)
  {

    *(this + 10) = 0;
  }

  v5 = *(this + 9);
  if (v5)
  {

    *(this + 9) = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectMemoryResource::~DirectMemoryResource(this);

  JUMPOUT(0x24C1E9EB0);
}

void re::DirectMemoryResource::reset(re::DirectMemoryResource *this)
{
  v2 = *(this + 8);
  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v4 = this + 104;
      v3 = *(this + 13);
      goto LABEL_16;
    }

    if (v2 != 6)
    {
      if (v2 != 7)
      {
        goto LABEL_20;
      }

      v4 = this + 72;
      v5 = *(this + 9);
      if (!v5)
      {
        goto LABEL_20;
      }

LABEL_15:
      v3 = (v5 + 8);
      goto LABEL_16;
    }

    v4 = this + 64;
    v6 = *(this + 8);
    if (!v6)
    {
      goto LABEL_20;
    }

LABEL_18:
    CFRelease(v6);
    goto LABEL_19;
  }

  if ((v2 - 1) < 2)
  {
    v4 = this + 56;
    v6 = *(this + 7);
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v2 == 3)
  {
    v4 = this + 80;
    v5 = *(this + 10);
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v2 == 4)
  {
    v4 = this + 88;
    v3 = *(this + 11);
LABEL_16:

LABEL_19:
    *v4 = 0;
  }

LABEL_20:

  *(this + 13) = 0;
  *(this + 8) = 0;
}

UInt8 *re::DirectMemoryResource::bytes(re::DirectMemoryResource *this)
{
  result = 0;
  v3 = *(this + 8);
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        return [*(this + 11) contents];
      case 6:
        return IOSurfaceGetBaseAddress(*(this + 8));
      case 7:
        v4 = *(this + 9);
        return *(v4 + 16);
    }
  }

  else
  {
    if ((v3 - 1) < 2)
    {
      return CFDataGetMutableBytePtr(*(this + 7));
    }

    if (v3 == 3)
    {
      v4 = *(this + 10);
      return *(v4 + 16);
    }
  }

  return result;
}

BOOL re::DirectMemoryResource::allocatePrivateNonAligned(re::DirectMemoryResource *this, size_t size)
{
  v4 = malloc_type_malloc(size, 0x6028028CuLL);
  v5 = v4;
  if (v4)
  {
    bzero(v4, size);
    *(this + 8) = 1;
    *(this + 6) = size;
    *(this + 7) = CFDataCreateWithBytesNoCopy(0, v5, size, *MEMORY[0x277CBECF0]);
  }

  return v5 != 0;
}

BOOL re::DirectMemoryResource::allocatePrivatePageAligned(re::DirectMemoryResource *this, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2810C3988, memory_order_acquire) & 1) == 0)
  {
    re::DirectMemoryResource::allocatePrivatePageAligned();
  }

  v4 = _MergedGlobals_0 - 1 + a2;
  v5 = v4 / _MergedGlobals_0 * _MergedGlobals_0;
  v6 = v4 & -_MergedGlobals_0;
  if ((_MergedGlobals_0 ^ (_MergedGlobals_0 - 1)) > _MergedGlobals_0 - 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  memptr = 0;
  v8 = malloc_type_posix_memalign(&memptr, _MergedGlobals_0, v7, 0x62A84795uLL);
  if (!v8)
  {
    bzero(memptr, v7);
    *(this + 8) = 2;
    *(this + 6) = v7;
    *(this + 7) = CFDataCreateWithBytesNoCopy(0, memptr, v7, *MEMORY[0x277CBECF0]);
  }

  return v8 == 0;
}

BOOL re::DirectMemoryResource::allocateIOSurface(re::DirectMemoryResource *this, uint64_t a2)
{
  keys[2] = *MEMORY[0x277D85DE8];
  memset(out, 0, 37);
  uuid_unparse(this + 16, out);
  snprintf(__str, 0x400uLL, "Buffer %s", out);
  *(this + 8) = 6;
  *(this + 6) = a2;
  valuePtr = a2;
  v4 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  v5 = CFStringCreateWithCString(0, __str, 0x8000100u);
  v6 = *MEMORY[0x277CD2A50];
  keys[0] = *MEMORY[0x277CD2948];
  keys[1] = v6;
  values[0] = v4;
  values[1] = v5;
  v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = IOSurfaceCreate(v7);
  CFRelease(v7);
  CFRelease(v4);
  CFRelease(v5);
  *(this + 8) = v8;
  return v8 != 0;
}

BOOL re::DirectMemoryResource::allocateSharedMemory(re::DirectMemoryResource *this, re::MemoryMappedRegion *a2)
{
  re::MemoryMappedRegion::map(a2, 3, 4097, 0, &v6);
  v3 = v6;
  if (v6)
  {
    *(this + 8) = 7;
    *(this + 6) = *(v3 + 3);
    v4 = *(this + 9);
    *(this + 9) = v3;
    if (v4)
    {
    }
  }

  return v3 != 0;
}

BOOL re::DirectMemoryResource::allocatePrivateMemoryMap(re::DirectMemoryResource *this, re::MemoryMappedRegion *a2)
{
  re::MemoryMappedRegion::map(a2, 3, 4098, 0, &v6);
  v3 = v6;
  if (v6)
  {
    *(this + 8) = 3;
    *(this + 6) = *(v3 + 3);
    v4 = *(this + 10);
    *(this + 10) = v3;
    if (v4)
    {
    }
  }

  return v3 != 0;
}

BOOL re::DirectMemoryResource::allocatePrivateMTLBuffer(uint64_t a1, id a2, uint64_t a3)
{
  *(a1 + 32) = 4;
  *(a1 + 48) = a3;
  v5 = [a2 newBufferWithLength_options_];
  NS::SharedPtr<MTL::Resource>::operator=<MTL::Texture>((a1 + 88), &v5);
  if (v5)
  {
  }

  return *(a1 + 88) != 0;
}

BOOL re::DirectMemoryResource::copyFromPrivateMemory(re::DirectMemoryResource *this, const void *a2, re::MemoryMappedRegion *a3, char a4)
{
  if ((a4 & 2) != 0)
  {
    re::MemoryMappedRegion::map(a3, 3, 4097, a2, &v11);
    v7 = v11;
    v6 = v11 != 0;
    if (v11)
    {
      v8 = v11 + 8;
      *(this + 8) = 3;
      *(this + 6) = *(v7 + 3);
      v9 = *(this + 10);
      *(this + 10) = v7;
      if (v9)
      {
      }
    }
  }

  else
  {
    *(this + 8) = 1;
    *(this + 6) = a3;
    v5 = CFDataCreate(*MEMORY[0x277CBECE8], a2, a3);
    *(this + 7) = v5;
    return v5 != 0;
  }

  return v6;
}

BOOL re::DirectMemoryResource::assignSharedMemory(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a1 + 32) = 7;
    *(a1 + 48) = *(v2 + 24);
    v3 = *(a1 + 72);
    *(a1 + 72) = v2;
    *a2 = v3;
  }

  return v2 != 0;
}

void re::DirectMemoryResource::makeBuffer(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t a3@<X0>)
{
  v6 = *(a3 + 32);
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        v7 = *(a3 + 88);
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (v6 == 6)
    {
      v12 = *(a3 + 64);
      if (([a2 respondsToSelector_] & 1) != 0 || (v7 = objc_msgSend(a2, sel_methodSignatureForSelector_, sel_newBufferWithIOSurface_)) != 0)
      {
        v7 = [a2 newBufferWithIOSurface_];
      }

      goto LABEL_15;
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x3002000000;
    v29 = __Block_byref_object_copy_;
    v19 = *(a3 + 72);
    v30 = __Block_byref_object_dispose_;
    v31 = v19;
    v20 = (v19 + 8);
    v21 = v27[5];
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 0x40000000;
    v25[2] = ___ZNK2re20DirectMemoryResource10makeBufferEPN3MTL6DeviceE_block_invoke_5;
    v25[3] = &unk_278F7D000;
    v25[4] = &v26;
    v18 = [a2 newBufferWithBytesNoCopy:v22 length:v23 options:0 deallocator:v25];
  }

  else
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        v7 = [a2 newBufferWithBytes:CFDataGetMutableBytePtr(*(a3 + 56)) length:*(a3 + 48) options:0];
LABEL_15:
        *a1 = v7;
        return;
      }

LABEL_16:
      *a1 = 0;
      return;
    }

    if (v6 == 2)
    {
      v8 = *(a3 + 56);
      MutableBytePtr = CFDataGetMutableBytePtr(v8);
      v10 = *(a3 + 48);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 0x40000000;
      v32[2] = ___ZNK2re20DirectMemoryResource10makeBufferEPN3MTL6DeviceE_block_invoke;
      v32[3] = &__block_descriptor_tmp;
      v32[4] = v8;
      v11 = [a2 newBufferWithBytesNoCopy:MutableBytePtr length:v10 options:0 deallocator:v32];
      *a1 = v11;
      if (v11)
      {
        CFRetain(v8);
      }

      return;
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x3002000000;
    v29 = __Block_byref_object_copy_;
    v13 = *(a3 + 80);
    v30 = __Block_byref_object_dispose_;
    v31 = v13;
    v14 = (v13 + 8);
    v15 = v27[5];
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 0x40000000;
    v24[2] = ___ZNK2re20DirectMemoryResource10makeBufferEPN3MTL6DeviceE_block_invoke_2;
    v24[3] = &unk_278F7D028;
    v24[4] = &v26;
    v18 = [a2 newBufferWithBytesNoCopy:v16 length:v17 options:0 deallocator:v24];
  }

  *a1 = v18;
  _Block_object_dispose(&v26, 8);
  if (v31)
  {
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {

    *(a1 + 40) = 0;
  }
}

void ___ZNK2re20DirectMemoryResource10makeBufferEPN3MTL6DeviceE_block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if (v2)
  {

    *(v1 + 40) = 0;
  }
}

void ___ZNK2re20DirectMemoryResource10makeBufferEPN3MTL6DeviceE_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if (v2)
  {

    *(v1 + 40) = 0;
  }
}

uint64_t re::DirectMemoryResource::bindToResource(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    if (v3 != a2 || *(a1 + 100) != a3)
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 96) = a2;
    *(a1 + 100) = a3;
  }

  return 1;
}

void re::makeCommand(re *this@<X0>, uint64_t a2@<X8>)
{
  uuid_copy(a2, this + 16);
  v4 = *(this + 6);
  *(a2 + 48) = *(this + 5);
  *(a2 + 64) = v4;
  *(a2 + 80) = *(this + 28);
  v5 = *(this + 4);
  *(a2 + 16) = *(this + 3);
  *(a2 + 32) = v5;
  v6 = re::DirectTexture::payload(this, 3, 0);

  uuid_copy((a2 + 88), (v6 + 16));
}

{
  uuid_copy(a2, this + 16);
  v4 = *(this + 4);
  *(a2 + 16) = *(this + 3);
  *(a2 + 32) = v4;
  std::vector<re::DirectMeshVertexAttribute>::vector[abi:nn200100]((a2 + 48), this + 10);
  std::vector<re::DirectMeshVertexLayout>::vector[abi:nn200100]((a2 + 72), this + 13);
  *(a2 + 96) = *(this + 16);
  *(a2 + 104) = 1;
  v5 = re::DirectMesh::partsPayload(this);
  if (v5)
  {
    uuid_copy((a2 + 112), (v5 + 16));
    LOBYTE(v5) = 1;
  }

  else
  {
    *(a2 + 112) = 0;
  }

  *(a2 + 128) = v5;
  v6 = re::DirectMesh::indexPayload(this);
  if (v6)
  {
    uuid_copy((a2 + 129), (v6 + 16));
    LOBYTE(v6) = 1;
  }

  else
  {
    *(a2 + 129) = 0;
  }

  *(a2 + 145) = v6;
  v7 = re::DirectMesh::vertexPayload(this, 0);
  if (v7)
  {
    uuid_copy((a2 + 146), (v7 + 16));
    LOBYTE(v7) = 1;
  }

  else
  {
    *(a2 + 146) = 0;
  }

  *(a2 + 162) = v7;
  v8 = re::DirectMesh::vertexPayload(this, 1uLL);
  if (v8)
  {
    uuid_copy((a2 + 163), (v8 + 16));
    LOBYTE(v8) = 1;
  }

  else
  {
    *(a2 + 163) = 0;
  }

  *(a2 + 179) = v8;
  v9 = re::DirectMesh::vertexPayload(this, 2uLL);
  if (v9)
  {
    uuid_copy((a2 + 180), (v9 + 16));
    LOBYTE(v9) = 1;
  }

  else
  {
    *(a2 + 180) = 0;
  }

  *(a2 + 196) = v9;
  v10 = re::DirectMesh::vertexPayload(this, 3uLL);
  if (v10)
  {
    uuid_copy((a2 + 197), (v10 + 16));
    LOBYTE(v10) = 1;
  }

  else
  {
    *(a2 + 197) = 0;
  }

  *(a2 + 213) = v10;
}

{
  uuid_copy(a2, this + 16);
  *(a2 + 16) = *(this + 3);
  *(a2 + 32) = *(this + 8);
  *(a2 + 40) = 1;
  v4 = re::DirectBuffer::payload(this, 3, 0);
  if (v4)
  {
    uuid_copy((a2 + 48), (v4 + 16));
    LOBYTE(v4) = 1;
  }

  else
  {
    *(a2 + 48) = 0;
  }

  *(a2 + 64) = v4;
}

void re::makeCommand(_OWORD *a1@<X0>, re::DirectMeshUpdate *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  v5 = *(a2 + 3);
  *(a3 + 16) = *(a2 + 2);
  *(a3 + 24) = 1;
  if (v5)
  {
    uuid_copy((a3 + 32), (v5 + 16));
    LOBYTE(v5) = 1;
  }

  else
  {
    *(a3 + 32) = 0;
  }

  *(a3 + 48) = v5;
  v6 = *(a2 + 4);
  if (v6)
  {
    uuid_copy((a3 + 49), (v6 + 16));
    LOBYTE(v6) = 1;
  }

  else
  {
    *(a3 + 49) = 0;
  }

  *(a3 + 65) = v6;
  v7 = re::DirectMeshUpdate::vertexUpdate(a2, 0);
  if (v7)
  {
    uuid_copy((a3 + 66), (v7 + 16));
    LOBYTE(v7) = 1;
  }

  else
  {
    *(a3 + 66) = 0;
  }

  *(a3 + 82) = v7;
  v8 = re::DirectMeshUpdate::vertexUpdate(a2, 1uLL);
  if (v8)
  {
    uuid_copy((a3 + 83), (v8 + 16));
    LOBYTE(v8) = 1;
  }

  else
  {
    *(a3 + 83) = 0;
  }

  *(a3 + 99) = v8;
  v9 = re::DirectMeshUpdate::vertexUpdate(a2, 2uLL);
  if (v9)
  {
    uuid_copy((a3 + 100), (v9 + 16));
    LOBYTE(v9) = 1;
  }

  else
  {
    *(a3 + 100) = 0;
  }

  *(a3 + 116) = v9;
  v10 = re::DirectMeshUpdate::vertexUpdate(a2, 3uLL);
  if (v10)
  {
    uuid_copy((a3 + 117), (v10 + 16));
    LOBYTE(v10) = 1;
  }

  else
  {
    *(a3 + 117) = 0;
  }

  *(a3 + 133) = v10;
}

void re::makeCommand(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 16) = *(a2 + 24);
  *(a3 + 24) = *(a2 + 32);
  v4 = (*(*a2 + 40))(a2, 3, 0);
  if (v4)
  {
    uuid_copy((a3 + 32), (v4 + 16));
    LOBYTE(v4) = 1;
  }

  else
  {
    *(a3 + 32) = 0;
  }

  *(a3 + 48) = v4;
}

void re::makeCommands(re *this@<X0>, uint64_t **a2@<X8>)
{
  v186 = *MEMORY[0x277D85DE8];
  re::make::shared::object<re::DirectResourceCommands>(a2);
  v4 = *a2;
  *(v4 + 16) = *(this + 2);
  re::DirectResourceEvent::operator=((v4 + 32), this + 4);
  re::XPCObject::setValue(*a2 + 3, *(this + 3));
  std::vector<re::CreateDirectPayload>::reserve(*a2 + 32, *(this + 73) + *(this + 68));
  std::vector<re::DestroyResource>::reserve(*a2 + 35, *(this + 78));
  for (i = *(this + 67); i; i = *i)
  {
    v6 = i[4];
    if (v6)
    {
      v7 = (v6 + 8);
      v8 = *a2;
      uuid_copy(dst, (v6 + 16));
      *&v174 = v6;
      v9 = (v6 + 8);
    }

    else
    {
      v8 = *a2;
      uuid_copy(dst, 0x10);
      *&v174 = 0;
    }

    std::vector<re::CreateDirectPayload>::push_back[abi:nn200100]((v8 + 256), dst);
    if (v174)
    {
    }

    if (v6)
    {
    }
  }

  for (j = *(this + 72); j; j = *j)
  {
    v11 = j[4];
    if (v11)
    {
      v12 = (v11 + 8);
      v13 = *a2;
      uuid_copy(dst, (v11 + 16));
      *&v174 = v11;
      v14 = (v11 + 8);
    }

    else
    {
      v13 = *a2;
      uuid_copy(dst, 0x10);
      *&v174 = 0;
    }

    std::vector<re::CreateDirectPayload>::push_back[abi:nn200100]((v13 + 256), dst);
    if (v174)
    {
    }

    if (v11)
    {
    }
  }

  for (k = *(this + 77); k; k = *k)
  {
    *dst = *(k + 1);
    v16 = k[4];
    if (v16)
    {
      v17 = (v16 + 8);
      v18 = *a2;
      v171 = *dst;
      std::vector<re::DestroyResource>::push_back[abi:nn200100](v18 + 280, &v171);
    }

    else
    {
      v19 = *a2;
      v171 = *(k + 1);
      std::vector<re::DestroyResource>::push_back[abi:nn200100](v19 + 280, &v171);
    }
  }

  for (m = *(this + 7); m; m = *m)
  {
    v21 = m[4];
    if (v21)
    {
      v22 = (v21 + 8);
    }

    v23 = *a2;
    re::makeCommand(v21, dst);
    v24 = v23[6];
    if (v24 >= v23[7])
    {
      Direct = std::vector<re::CreateDirectMesh>::__emplace_back_slow_path<re::CreateDirectMesh>(v23 + 5, dst);
      v33 = __p[1];
      v23[6] = Direct;
      if (v33)
      {
        __p[2] = v33;
        operator delete(v33);
      }
    }

    else
    {
      *v24 = *dst;
      v25 = v175;
      *(v24 + 16) = v174;
      *(v24 + 32) = v25;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      *(v24 + 48) = 0;
      *(v24 + 48) = *v176;
      *(v24 + 64) = __p[0];
      *(v24 + 72) = 0;
      v176[0] = 0;
      v176[1] = 0;
      *(v24 + 80) = 0;
      *(v24 + 88) = 0;
      *(v24 + 72) = *&__p[1];
      *(v24 + 88) = __p[3];
      memset(__p, 0, sizeof(__p));
      v26 = v178;
      v27 = v179;
      v28 = v181;
      *(v24 + 128) = v180;
      *(v24 + 144) = v28;
      *(v24 + 96) = v26;
      *(v24 + 112) = v27;
      v29 = v182;
      v30 = v183;
      v31 = v184;
      *(v24 + 208) = v185;
      *(v24 + 176) = v30;
      *(v24 + 192) = v31;
      *(v24 + 160) = v29;
      v23[6] = v24 + 216;
    }

    if (v176[0])
    {
      v176[1] = v176[0];
      operator delete(v176[0]);
    }

    if (v21)
    {
    }
  }

  for (n = *(this + 12); n; n = *n)
  {
    v171 = *(n + 1);
    v35 = n[4];
    v172 = v35;
    if (v35)
    {
      v36 = (v35 + 8);
    }

    v37 = *a2;
    re::makeCommand(&v171, v35, dst);
    v38 = v37[9];
    v39 = v37[10];
    if (v38 >= v39)
    {
      v47 = v37[8];
      v48 = 0xF0F0F0F0F0F0F0F1 * ((v38 - v47) >> 3);
      v49 = v48 + 1;
      if (v48 + 1 > 0x1E1E1E1E1E1E1E1)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v50 = 0xF0F0F0F0F0F0F0F1 * ((v39 - v47) >> 3);
      if (2 * v50 > v49)
      {
        v49 = 2 * v50;
      }

      if (v50 >= 0xF0F0F0F0F0F0F0)
      {
        v51 = 0x1E1E1E1E1E1E1E1;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectMesh>>((v37 + 8), v51);
      }

      v52 = 136 * v48;
      *v52 = *dst;
      v53 = v174;
      v54 = v175;
      v55 = *__p;
      *(v52 + 48) = *v176;
      *(v52 + 64) = v55;
      *(v52 + 16) = v53;
      *(v52 + 32) = v54;
      v56 = *&__p[2];
      v57 = v178;
      v58 = v179;
      *(v52 + 128) = v180;
      *(v52 + 96) = v57;
      *(v52 + 112) = v58;
      *(v52 + 80) = v56;
      v46 = 136 * v48 + 136;
      v59 = v37[8];
      v60 = v37[9] - v59;
      v61 = v52 - v60;
      memcpy((v52 - v60), v59, v60);
      v62 = v37[8];
      v37[8] = v61;
      v37[9] = v46;
      v37[10] = 0;
      if (v62)
      {
        operator delete(v62);
        v35 = v172;
      }
    }

    else
    {
      *v38 = *dst;
      v40 = v174;
      v41 = v175;
      v42 = *__p;
      *(v38 + 48) = *v176;
      *(v38 + 64) = v42;
      *(v38 + 16) = v40;
      *(v38 + 32) = v41;
      v43 = *&__p[2];
      v44 = v178;
      v45 = v179;
      *(v38 + 128) = v180;
      *(v38 + 96) = v44;
      *(v38 + 112) = v45;
      *(v38 + 80) = v43;
      v46 = v38 + 136;
    }

    v37[9] = v46;
    if (v35)
    {
    }
  }

  for (ii = *(this + 17); ii; ii = *ii)
  {
    *dst = *(ii + 1);
    v64 = ii[4];
    if (v64)
    {
      v65 = (v64 + 8);
      v66 = *a2;
      v171 = *dst;
      std::vector<re::DestroyResource>::push_back[abi:nn200100]((v66 + 11), &v171);
    }

    else
    {
      v67 = *a2;
      v171 = *(ii + 1);
      std::vector<re::DestroyResource>::push_back[abi:nn200100]((v67 + 11), &v171);
    }
  }

  for (jj = *(this + 22); jj; jj = *jj)
  {
    v69 = jj[4];
    if (v69)
    {
      v70 = (v69 + 8);
    }

    v71 = *a2;
    re::makeCommand(v69, dst);
    v72 = v71[15];
    v73 = v71[16];
    if (v72 >= v73)
    {
      v80 = v71[14];
      v81 = 0x4EC4EC4EC4EC4EC5 * ((v72 - v80) >> 3);
      v82 = v81 + 1;
      if ((v81 + 1) > 0x276276276276276)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v83 = 0x4EC4EC4EC4EC4EC5 * ((v73 - v80) >> 3);
      if (2 * v83 > v82)
      {
        v82 = 2 * v83;
      }

      if (v83 >= 0x13B13B13B13B13BLL)
      {
        v84 = 0x276276276276276;
      }

      else
      {
        v84 = v82;
      }

      if (v84)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectTexture>>((v71 + 14), v84);
      }

      v85 = 104 * v81;
      v86 = *dst;
      v87 = v175;
      *(v85 + 16) = v174;
      *(v85 + 32) = v87;
      *v85 = v86;
      v88 = *v176;
      v89 = *__p;
      v90 = *&__p[2];
      *(v85 + 96) = v178;
      *(v85 + 64) = v89;
      *(v85 + 80) = v90;
      *(v85 + 48) = v88;
      v79 = 104 * v81 + 104;
      v91 = v71[14];
      v92 = v71[15] - v91;
      v93 = v85 - v92;
      memcpy((v85 - v92), v91, v92);
      v94 = v71[14];
      v71[14] = v93;
      v71[15] = v79;
      v71[16] = 0;
      if (v94)
      {
        operator delete(v94);
      }
    }

    else
    {
      v74 = *dst;
      v75 = v175;
      *(v72 + 16) = v174;
      *(v72 + 32) = v75;
      *v72 = v74;
      v76 = *v176;
      v77 = *__p;
      v78 = *&__p[2];
      *(v72 + 96) = v178;
      *(v72 + 64) = v77;
      *(v72 + 80) = v78;
      *(v72 + 48) = v76;
      v79 = v72 + 104;
    }

    v71[15] = v79;
    if (v69)
    {
    }
  }

  for (kk = *(this + 27); kk; kk = *kk)
  {
    v171 = *(kk + 1);
    v96 = kk[4];
    if (v96)
    {
      v97 = (v96 + 8);
    }

    v98 = *a2;
    *dst = v171;
    v99 = (*(*v96 + 40))(v96, 3, 0);
    uuid_copy(&v174, (v99 + 16));
    v100 = v98[18];
    v101 = v98[19];
    if (v100 >= v101)
    {
      v104 = v98[17];
      v105 = (v100 - v104) >> 5;
      v106 = v105 + 1;
      if ((v105 + 1) >> 59)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v107 = v101 - v104;
      if (v107 >> 4 > v106)
      {
        v106 = v107 >> 4;
      }

      if (v107 >= 0x7FFFFFFFFFFFFFE0)
      {
        v108 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v108 = v106;
      }

      if (v108)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectTexture>>((v98 + 17), v108);
      }

      v109 = (32 * v105);
      v110 = v174;
      *v109 = *dst;
      v109[1] = v110;
      v103 = 32 * v105 + 32;
      v111 = v98[17];
      v112 = v98[18] - v111;
      v113 = v109 - v112;
      memcpy(v109 - v112, v111, v112);
      v114 = v98[17];
      v98[17] = v113;
      v98[18] = v103;
      v98[19] = 0;
      if (v114)
      {
        operator delete(v114);
      }
    }

    else
    {
      v102 = v174;
      *v100 = *dst;
      v100[1] = v102;
      v103 = (v100 + 2);
    }

    v98[18] = v103;
  }

  for (mm = *(this + 32); mm; mm = *mm)
  {
    *dst = *(mm + 1);
    v116 = mm[4];
    if (v116)
    {
      v117 = (v116 + 8);
      v118 = *a2;
      v171 = *dst;
      std::vector<re::DestroyResource>::push_back[abi:nn200100]((v118 + 20), &v171);
    }

    else
    {
      v119 = *a2;
      v171 = *(mm + 1);
      std::vector<re::DestroyResource>::push_back[abi:nn200100]((v119 + 20), &v171);
    }
  }

  for (nn = *(this + 37); nn; nn = *nn)
  {
    v121 = nn[4];
    if (v121)
    {
      v122 = (v121 + 8);
    }

    v123 = *a2;
    re::makeCommand(v121, dst);
    v124 = v123[24];
    v125 = v123[25];
    if (v124 >= v125)
    {
      v130 = v123[23];
      v131 = 0x8E38E38E38E38E39 * ((v124 - v130) >> 3);
      v132 = v131 + 1;
      if (v131 + 1 > 0x38E38E38E38E38ELL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v133 = 0x8E38E38E38E38E39 * ((v125 - v130) >> 3);
      if (2 * v133 > v132)
      {
        v132 = 2 * v133;
      }

      if (v133 >= 0x1C71C71C71C71C7)
      {
        v134 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v134 = v132;
      }

      if (v134)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectBuffer>>((v123 + 23), v134);
      }

      v135 = 72 * v131;
      *v135 = *dst;
      v136 = v174;
      v137 = v175;
      v138 = *v176;
      *(v135 + 64) = __p[0];
      *(v135 + 32) = v137;
      *(v135 + 48) = v138;
      *(v135 + 16) = v136;
      v129 = 72 * v131 + 72;
      v139 = v123[23];
      v140 = v123[24] - v139;
      v141 = v135 - v140;
      memcpy((v135 - v140), v139, v140);
      v142 = v123[23];
      v123[23] = v141;
      v123[24] = v129;
      v123[25] = 0;
      if (v142)
      {
        operator delete(v142);
      }
    }

    else
    {
      *v124 = *dst;
      v126 = v174;
      v127 = v175;
      v128 = *v176;
      *(v124 + 64) = __p[0];
      *(v124 + 32) = v127;
      *(v124 + 48) = v128;
      *(v124 + 16) = v126;
      v129 = v124 + 72;
    }

    v123[24] = v129;
    if (v121)
    {
    }
  }

  for (i1 = *(this + 42); i1; i1 = *i1)
  {
    v171 = *(i1 + 1);
    v144 = i1[4];
    v172 = v144;
    if (v144)
    {
      v145 = (v144 + 8);
    }

    v146 = *a2;
    re::makeCommand(&v171, v144, dst);
    v147 = v146[27];
    v148 = v146[28];
    if (v147 >= v148)
    {
      v153 = v146[26];
      v154 = 0x6DB6DB6DB6DB6DB7 * ((v147 - v153) >> 3);
      v155 = v154 + 1;
      if ((v154 + 1) > 0x492492492492492)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v156 = 0x6DB6DB6DB6DB6DB7 * ((v148 - v153) >> 3);
      if (2 * v156 > v155)
      {
        v155 = 2 * v156;
      }

      if (v156 >= 0x249249249249249)
      {
        v157 = 0x492492492492492;
      }

      else
      {
        v157 = v155;
      }

      if (v157)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::UpdateDirectBuffer>>((v146 + 26), v157);
      }

      v158 = 56 * v154;
      v159 = *dst;
      v160 = v174;
      v161 = v175;
      *(v158 + 48) = v176[0];
      *(v158 + 16) = v160;
      *(v158 + 32) = v161;
      *v158 = v159;
      v152 = 56 * v154 + 56;
      v162 = v146[26];
      v163 = v146[27] - v162;
      v164 = v158 - v163;
      memcpy((v158 - v163), v162, v163);
      v165 = v146[26];
      v146[26] = v164;
      v146[27] = v152;
      v146[28] = 0;
      if (v165)
      {
        operator delete(v165);
        v144 = v172;
      }
    }

    else
    {
      v149 = *dst;
      v150 = v174;
      v151 = v175;
      *(v147 + 48) = v176[0];
      *(v147 + 16) = v150;
      *(v147 + 32) = v151;
      *v147 = v149;
      v152 = v147 + 56;
    }

    v146[27] = v152;
    if (v144)
    {
    }
  }

  for (i2 = *(this + 47); i2; i2 = *i2)
  {
    *dst = *(i2 + 1);
    v167 = i2[4];
    if (v167)
    {
      v168 = (v167 + 8);
      v169 = *a2;
      v171 = *dst;
      std::vector<re::DestroyResource>::push_back[abi:nn200100]((v169 + 29), &v171);
    }

    else
    {
      v170 = *a2;
      v171 = *(i2 + 1);
      std::vector<re::DestroyResource>::push_back[abi:nn200100]((v170 + 29), &v171);
    }
  }
}

uint64_t *std::vector<re::CreateDirectPayload>::push_back[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::CreateDirectPayload>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1];
    v13 = v11 + *result - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::CreateDirectPayload>,re::CreateDirectPayload*>(result, *result, v12, v13);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<re::CreateDirectPayload>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    v6 = v4 + 24;
  }

  v3[1] = v6;
  return result;
}

void std::vector<re::DestroyResource>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::DestroyResource>>(a1, v10);
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

uint64_t re::DirectResourceLoader::findPayload(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    return (*(*v2 + 48))(v2);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::DirectResourceLoader::missingPayload(v4, v5, v6, v7, v8, v9);
}

uint64_t re::DirectResourceLoader::missingPayload(re *a1, re *a2, re *a3, unsigned int a4, int a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = re::directResourceLog(a1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    re::toString(a3, v17);
    v14 = re::toString(a4);
    v15 = re::toString(a5);
    re::toString(a2, v16);
    *buf = 136316162;
    v19 = v17;
    v20 = 2080;
    v21 = v14;
    v22 = 2080;
    v23 = v15;
    v24 = 2048;
    v25 = a6;
    v26 = 2080;
    v27 = v16;
    _os_log_error_impl(&dword_248D48000, v12, OS_LOG_TYPE_ERROR, "MissingPayload %s for %s.%s[%zu] %s", buf, 0x34u);
  }

  *a1 = 0;
  return 0;
}

uint64_t re::DirectResourceLoader::corruptResource(re *a1, re *a2)
{
  v4 = re::directResourceLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    re::DirectResourceLoader::corruptResource(a2, v4);
  }

  *a1 = 0;
  return 0;
}

uint64_t re::DirectResourceLoader::setPayload(re *a1, const unsigned __int8 *a2, uint64_t a3, uint64_t a4, re *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a5 + 16) != 1)
  {
    return 1;
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    v11 = (*(*v6 + 48))(v6, a5);
    if (v11)
    {
      v23 = v11;
      v12 = (v11 + 8);
      v13 = (*(*a2 + 56))(a2, a3, a4, &v23);
      if (v23)
      {
      }
    }

    else
    {
      uuid_copy(dst, a2 + 16);
      v14 = (*(*a2 + 40))(a2);
      re::DirectResourceLoader::missingPayload(a1, dst, a5, v14, a3, a4);
      return 0;
    }

    return v13;
  }

  v16 = std::__throw_bad_function_call[abi:nn200100]();
  return re::DirectResourceLoader::setUpdatePayload(v16, v17, v18, v19, v20, v21, v22);
}

void re::DirectResourceLoader::setUpdatePayload(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, re *a7)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v20[0] = a2;
  v20[1] = a3;
  if (*(a7 + 16) == 1)
  {
    v8 = *(a1 + 4);
    if (v8)
    {
      v13 = (*(*v8 + 48))(v8, a7);
      if (v13)
      {
        v19 = v13;
        v14 = (v13 + 8);
        (*(*a4 + 48))(a4, a5, a6, &v19);
        if (v19)
        {
        }
      }

      else
      {
        v15 = (*(*a4 + 64))(a4);
        re::DirectResourceLoader::missingPayload(a1, v20, a7, v15, a5, a6);
      }
    }

    else
    {
      v16 = std::__throw_bad_function_call[abi:nn200100]();
      re::load(v16, v17, v18);
    }
  }
}

void re::load(uint64_t a1@<X0>, re *a2@<X1>, unsigned __int8 **a3@<X8>)
{
  if (re::DirectMeshValidation::isWellFormed(a1 + 16))
  {
    v6 = operator new(0xB8uLL);
    v7 = re::DirectMesh::DirectMesh(v6, (a1 + 16));
    re::DirectResource::setIdentifier(v7, a1);
    if (*(a1 + 128) == 1)
    {
      if (*(a1 + 104))
      {
        v8 = *(a1 + 96);
      }

      else
      {
        v8 = 0;
      }

      Payload = re::DirectResourceLoader::findPayload(a2, a1 + 112);
      re::DirectMesh::setParts(v6, v8, Payload);
    }

    re::DirectResourceLoader::setPayload(a2, v6, 1, 0, (a1 + 129));
    v10 = 0;
    v11 = (a1 + 146);
    do
    {
      re::DirectResourceLoader::setPayload(a2, v6, 2, v10++, v11);
      v11 = (v11 + 17);
    }

    while (v10 != 4);
    if (re::DirectMeshValidation::isValid(v6, v12))
    {
      *a3 = v6;
    }

    else
    {
      re::DirectResourceLoader::corruptResource(a2, a1);
      *a3 = 0;
    }
  }

  else
  {
    re::DirectResourceLoader::corruptResource(a2, a1);
    *a3 = 0;
  }
}

void re::load(uint64_t a1@<X0>, re *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  re::DirectMeshUpdate::DirectMeshUpdate(v6);
  *a3 = v7;
  if (*(a1 + 24) == 1)
  {
    v8 = *(a1 + 8);
    *(v6 + 2) = *(a1 + 16);
    re::DirectResourceLoader::setUpdatePayload(a2, *a1, v8, v6, 0, 0, (a1 + 32));
  }

  re::DirectResourceLoader::setUpdatePayload(a2, *a1, *(a1 + 8), v6, 1, 0, (a1 + 49));
  v9 = 0;
  v10 = (a1 + 66);
  do
  {
    re::DirectResourceLoader::setUpdatePayload(a2, *a1, *(a1 + 8), v6, 2, v9++, v10);
    v10 = (v10 + 17);
  }

  while (v9 != 4);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v6 = operator new(0x18uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  re::DirectContentsUpdate::DirectContentsUpdate(v6);
  *v7 = &unk_285BC15A8;
  *a3 = v7;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = 1;
  re::DirectResourceLoader::setUpdatePayload(a2, v8, v9, v6, 3, 0, &v10);
}

uint64_t re::load@<X0>(uint64_t a1@<X0>, re *a2@<X1>, re::DirectResource **a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (re::DirectTextureValidation::isWellFormed())
  {
    v6 = operator new(0x88uLL);
    v7 = re::DirectTexture::DirectTexture(v6, a1 + 16);
    re::DirectResource::setIdentifier(v7, a1);
    v9 = *(a1 + 88);
    v10 = 1;
    result = re::DirectResourceLoader::setPayload(a2, v6, 3, 0, &v9);
  }

  else
  {
    result = re::DirectResourceLoader::corruptResource(a2, a1);
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void re::load(__n128 *a1@<X0>, re *a2@<X1>, void *a3@<X8>)
{
  if (re::DirectBufferValidation::isWellFormed(a1[1].n128_u64))
  {
    v6 = operator new(0x50uLL);
    re::DirectBuffer::DirectBuffer(v6, a1 + 1);
    re::DirectResource::setIdentifier(v7, a1);
    if (a1[2].n128_u8[8])
    {
      v8 = a1[2].n128_u64[0];
    }

    else
    {
      v8 = 0;
    }

    re::DirectBuffer::setBytesUsed(v6, v8);
    re::DirectResourceLoader::setPayload(a2, v6, 3, 0, &a1[3]);
    if (re::DirectBufferValidation::isValid(v6, v9))
    {
      *a3 = v6;
    }

    else
    {
      re::DirectResourceLoader::corruptResource(a2, a1);
      *a3 = 0;
    }
  }

  else
  {
    re::DirectResourceLoader::corruptResource(a2, a1);
    *a3 = 0;
  }
}

void re::load(uint64_t *a1@<X0>, re *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  *v6 = 0u;
  v6[1] = 0u;
  *(v6 + 4) = 0;
  re::DirectContentsUpdate::DirectContentsUpdate(v6);
  *v7 = &unk_285BC1618;
  *a3 = v7;
  v8 = a1[3];
  *(v7 + 24) = a1[2];
  *(v7 + 32) = v8;
  v9 = *a1;
  v10 = a1[1];

  re::DirectResourceLoader::setUpdatePayload(a2, v9, v10, v6, 3, 0, (a1 + 4));
}

void re::load(uint64_t a1@<X0>, uint64_t a2@<X1>, re::DirectResourcesCommit **a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = operator new(0x280uLL);
  v7 = re::DirectResourcesCommit::DirectResourcesCommit(v6);
  *a3 = v7;
  *(v7 + 2) = *(a1 + 16);
  re::DirectResourceEvent::operator=(v7 + 4, (a1 + 32));
  re::XPCObject::setValue(v6 + 3, *(a1 + 24));
  v8 = *(a1 + 256);
  v9 = *(a1 + 264);
  while (v8 != v9)
  {
    v10 = *(v8 + 16);
    v16 = v10;
    if (v10)
    {
      v11 = (v10 + 8);
    }

    re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::create(v6 + 520, v8, &v16);
    if (v16)
    {

      v16 = 0;
    }

    v8 += 24;
  }

  v12 = *(a1 + 280);
  v13 = *(a1 + 288);
  while (v12 != v13)
  {
    v15 = 0;
    re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::destroy((v6 + 520), v12, &v15);
    if (v15)
    {

      v15 = 0;
    }

    v12 += 16;
  }

  std::__function::__value_func<re::DirectMemoryResource * ()(re::DirectResourceId const&)>::__value_func[abi:nn200100](v17, a2);
  v18 = v6;
  v14 = v6 + 8;
  operator new();
}

uint64_t *std::vector<re::DirectMeshVertexAttribute>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<re::DirectMeshVertexAttribute>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 5);
  }

  return a1;
}

void std::vector<re::DirectMeshVertexAttribute>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexAttribute>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<re::DirectMeshVertexLayout>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<re::DirectMeshVertexLayout>::__vallocate[abi:nn200100](a1, 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3));
  }

  return a1;
}

void std::vector<re::DirectMeshVertexLayout>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexLayout>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__function::__value_func<re::DirectMemoryResource * ()(re::DirectResourceId const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<re::DirectMemoryResource * ()(re::DirectResourceId const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<re::load(re::DirectResourceCommands const&,std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&)::$_0,std::allocator<std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::~__func(void *a1)
{
  *a1 = &unk_285BC1480;
  v2 = a1[5];
  if (v2)
  {

    a1[5] = 0;
  }

  std::__function::__value_func<re::DirectMemoryResource * ()(re::DirectResourceId const&)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<re::load(re::DirectResourceCommands const&,std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&)::$_0,std::allocator<std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::~__func(void *a1)
{
  *a1 = &unk_285BC1480;
  v2 = a1[5];
  if (v2)
  {

    a1[5] = 0;
  }

  std::__function::__value_func<re::DirectMemoryResource * ()(re::DirectResourceId const&)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x24C1E9EB0);
}

id std::__function::__func<re::load(re::DirectResourceCommands const&,std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&)::$_0,std::allocator<std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285BC1480;
  result = std::__function::__value_func<re::DirectMemoryResource * ()(re::DirectResourceId const&)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  v5 = *(a1 + 40);
  a2[5] = v5;
  if (v5)
  {

    return (v5 + 8);
  }

  return result;
}

void std::__function::__func<re::load(re::DirectResourceCommands const&,std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&)::$_0,std::allocator<std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<re::load(re::DirectResourceCommands const&,std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&)::$_0,std::allocator<std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::destroy[abi:nn200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<re::load(re::DirectResourceCommands const&,std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&)::$_0,std::allocator<std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>((*(a1 + 40) + 520), a2);
  if (v3)
  {
    return *(v3 + 4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(*v5 + 48);

    return v6();
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__alloc_func<re::load(re::DirectResourceCommands const&,std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&)::$_0,std::allocator<std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::destroy[abi:nn200100](v7);
  }
}

uint64_t std::__function::__alloc_func<re::load(re::DirectResourceCommands const&,std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&)::$_0,std::allocator<std::function<re::DirectMemoryResource * ()(re::DirectResourceId const&)> &&>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::destroy[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {

    *(a1 + 32) = 0;
  }

  return std::__function::__value_func<re::DirectMemoryResource * ()(re::DirectResourceId const&)>::~__value_func[abi:nn200100](a1);
}

const unsigned __int8 *std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(void *a1, unsigned __int8 *uu2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = (*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = (*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = v4 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = *(i + 1);
    if (v10 == v4)
    {
      if (!uuid_compare(i + 16, uu2))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

double re::DirectMeshUpdate::DirectMeshUpdate(re::DirectMeshUpdate *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v1 = &unk_285BC14C8;
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  return result;
}

void re::DirectMeshUpdate::~DirectMeshUpdate(re::DirectMeshUpdate *this)
{
  *this = &unk_285BC14C8;
  v4 = (this + 40);
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {

    *(this + 3) = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectMeshUpdate::~DirectMeshUpdate(this);

  JUMPOUT(0x24C1E9EB0);
}

uint64_t re::DirectMeshUpdate::setPayload(void *a1, int a2, unint64_t a3, uint64_t *a4)
{
  switch(a2)
  {
    case 2:
      if (a3 <= 3)
      {
        v7 = *a4;
        *a4 = 0;
        v8 = a1[5];
        v9 = a1 + 5;
        if (a3 >= (a1[6] - v8) >> 3)
        {
          std::vector<re::SharedPtr<re::DirectBuffer>>::resize(v9, a3 + 1);
          v8 = *v9;
        }

        v10 = *(v8 + 8 * a3);
        *(v8 + 8 * a3) = v7;
        if (v10)
        {
        }

        return 1;
      }

      break;
    case 1:
      v4 = a1[4];
      a1[4] = *a4;
      goto LABEL_6;
    case 0:
      v4 = a1[3];
      a1[3] = *a4;
LABEL_6:
      *a4 = v4;
      return 1;
  }

  return 0;
}

uint64_t re::DirectMeshUpdate::forEachSlot(uint64_t a1, uint64_t a2)
{
  v3 = &unk_248D65170;
  v4 = 96;
  do
  {
    result = std::function<void ()(re::DirectResourceSlot)>::operator()(a2, *(v3 - 1), *v3);
    v3 += 2;
    v4 -= 16;
  }

  while (v4);
  return result;
}

uint64_t re::DirectMeshUpdate::payload(uint64_t a1, int a2, unint64_t a3)
{
  switch(a2)
  {
    case 2:
      v4 = *(a1 + 40);
      if (a3 < (*(a1 + 48) - v4) >> 3)
      {
        v3 = v4 + 8 * a3;
        return *v3;
      }

      break;
    case 1:
      v3 = a1 + 32;
      return *v3;
    case 0:
      v3 = a1 + 24;
      return *v3;
  }

  return 0;
}

uint64_t re::DirectMeshUpdate::vertexUpdate(re::DirectMeshUpdate *this, unint64_t a2)
{
  v2 = *(this + 5);
  if (a2 >= (*(this + 6) - v2) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t re::DirectMeshUpdate::validate(re::DirectMeshUpdate *this, const re::DirectResource *a2)
{
  if ((*(*a2 + 40))(a2) != 1)
  {
    return 0;
  }

  result = re::DirectMeshValidation::isValid(this, a2 + 6);
  if (!result)
  {
    return result;
  }

  v5 = *(this + 4);
  if (v5)
  {
    isPrivateToThisProcess = re::isPrivateToThisProcess(*(v5 + 32));
    if (!isPrivateToThisProcess)
    {
      v9 = re::directResourceLog(isPrivateToThisProcess);
      result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v13 = 0;
      v10 = "Index buffer must be private";
      v11 = &v13;
      goto LABEL_12;
    }
  }

  v7 = *(this + 3);
  if (!v7)
  {
    return 1;
  }

  v8 = re::isPrivateToThisProcess(*(v7 + 32));
  if (v8)
  {
    return 1;
  }

  v9 = re::directResourceLog(v8);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v12 = 0;
    v10 = "Parts buffer must be private";
    v11 = &v12;
LABEL_12:
    _os_log_impl(&dword_248D48000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    return 0;
  }

  return result;
}

uint64_t re::DirectMeshUpdate::attachToDevice(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[3];
  if (!v5 || (result = re::DirectMemoryResource::bindToResource(v5, 1, 0), result))
  {
    v7 = a1[4];
    if (!v7 || (result = re::DirectMemoryResource::bindToResource(v7, 1, 1), result))
    {
      v8 = a1[5];
      v9 = a1[6];
      while (v8 != v9)
      {
        if (*v8)
        {
          result = re::DirectMemoryResource::bindToResource(*v8, 1, 2);
          if (!result)
          {
            return result;
          }
        }

        ++v8;
      }

      v10 = a1[4];
      if (v10 && !*re::DirectMemoryResource::runtimeResource(v10))
      {
        v11 = a1[4];
        re::DirectMemoryResource::makeBuffer(&v17, a3, v11);
        v12 = v17;
        v17 = 0;
        v18 = v12;
        re::DirectMemoryResource::setRuntimeResource(v11, &v18);
        if (v18)
        {

          v18 = 0;
        }

        if (v17)
        {
        }
      }

      v13 = a1[5];
      v14 = a1[6];
      while (v13 != v14)
      {
        v15 = *v13;
        if (*v13 && !*re::DirectMemoryResource::runtimeResource(*v13))
        {
          re::DirectMemoryResource::makeBuffer(&v17, a3, v15);
          v16 = v17;
          v17 = 0;
          re::DirectMemoryResource::setRuntimeResource(v15, &v16);
          if (v16)
          {

            v16 = 0;
          }

          if (v17)
          {
          }
        }

        ++v13;
      }

      return 1;
    }
  }

  return result;
}

void re::DirectMeshUpdate::apply(re::DirectMeshUpdate *this, re::DirectResource *a2)
{
  if ((*(*a2 + 40))(a2) == 1)
  {
    v4 = *(this + 3);
    if (v4)
    {
      re::DirectMesh::setParts(a2, *(this + 2), v4);
    }

    v5 = &unk_248D651D0;
    v6 = 80;
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = (*(*this + 40))(this, v7, *v5);
      if (v9)
      {
        v11 = v9;
        v10 = (v9 + 8);
        re::DirectMesh::setPayload(a2, v7, v8, &v11);
        if (v11)
        {

          v11 = 0;
        }
      }

      v5 += 2;
      v6 -= 16;
    }

    while (v6);
  }
}

void re::DirectContentsUpdate::DirectContentsUpdate(re::DirectContentsUpdate *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v1 = &unk_285BC1538;
  v1[2] = 0;
}

void re::DirectContentsUpdate::~DirectContentsUpdate(re::DirectContentsUpdate *this)
{
  *this = &unk_285BC1538;
  v2 = *(this + 2);
  if (v2)
  {

    *(this + 2) = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

uint64_t re::DirectContentsUpdate::payload(uint64_t a1, int a2, uint64_t a3)
{
  result = 0;
  if (a2 == 3 && !a3)
  {
    return *(a1 + 16);
  }

  return result;
}

uint64_t re::DirectContentsUpdate::setPayload(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v4 = a2 == 3 && a3 == 0;
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = *a4;
    *a4 = v6;
  }

  return v5;
}

void re::DirectContentsUpdate::apply(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 40))(a1, 3, 0);
  if (v3)
  {
    v5 = v3;
    v4 = (v3 + 8);
    (*(*a2 + 56))(a2, 3, 0, &v5);
    if (v5)
    {
    }
  }
}

void re::DirectTextureUpdate::~DirectTextureUpdate(re::DirectTextureUpdate *this)
{
  re::DirectContentsUpdate::~DirectContentsUpdate(this);

  JUMPOUT(0x24C1E9EB0);
}

BOOL re::DirectTextureUpdate::attachToDevice(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(*a2 + 40))(a2) != 2)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (!v6 || *re::DirectMemoryResource::runtimeResource(v6))
  {
    return 1;
  }

  v8 = *(a1 + 16);

  return re::DirectTexture::allocateRuntimeResource(a2 + 48, v8, a3);
}

void re::DirectBufferUpdate::~DirectBufferUpdate(re::DirectBufferUpdate *this)
{
  re::DirectContentsUpdate::~DirectContentsUpdate(this);

  JUMPOUT(0x24C1E9EB0);
}

BOOL re::DirectBufferUpdate::validate(re::DirectBufferUpdate *this, const re::DirectResource *a2)
{
  if ((*(*a2 + 40))(a2) != 3)
  {
    return 0;
  }

  if (*(this + 32) != 1 || (result = re::DirectBufferValidation::isValidBytesUsed(*(this + 3), a2 + 6), result))
  {
    v5 = *(this + 2);
    return !v5 || *(v5 + 48) >= *(a2 + 6);
  }

  return result;
}

uint64_t re::DirectBufferUpdate::attachToDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    result = re::DirectMemoryResource::bindToResource(*(a1 + 16), 3, 3);
    if (!result)
    {
      return result;
    }

    if (!*re::DirectMemoryResource::runtimeResource(v3))
    {
      re::DirectMemoryResource::makeBuffer(&v7, a3, v3);
      v6 = v7;
      v7 = 0;
      v8 = v6;
      re::DirectMemoryResource::setRuntimeResource(v3, &v8);
      if (v8)
      {

        v8 = 0;
      }

      if (v7)
      {
      }
    }
  }

  return 1;
}

void re::DirectBufferUpdate::apply(re::DirectBufferUpdate *this, re::DirectResource *a2)
{
  if ((*(*a2 + 40))(a2) == 3)
  {
    if (*(this + 32) == 1)
    {
      re::DirectBuffer::setBytesUsed(a2, *(this + 3));
    }

    re::DirectContentsUpdate::apply(this, a2);
  }
}

BOOL re::DirectMeshValidation::isValid(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (a1[2] > 4 || a1[4] > 1)
  {
    return 0;
  }

  v4 = *a1;
  return v4 + a1[1] * re::lengthInBytes(a3) <= a2;
}

uint64_t re::DirectMeshValidation::isWellFormed(unsigned int *a1, unsigned int *a2, unint64_t a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  memset(v6, 0, 13);
  if (a1 == a2)
  {
    return 1;
  }

  while (1)
  {
    v4 = *a1;
    if (v4 > 0xC || (*(a1 + 1) - 1) > 0x36 || *(a1 + 2) >= a3 || (*(v6 + v4) & 1) != 0)
    {
      break;
    }

    v3 = 1;
    *(v6 + v4) = 1;
    a1 += 8;
    if (a1 == a2)
    {
      return v3;
    }
  }

  return 0;
}

uint64_t re::DirectMeshValidation::isWellFormed(void *a1, void *a2)
{
  while (1)
  {
    if (a1 == a2)
    {
      return 1;
    }

    if (*a1 > 3uLL)
    {
      break;
    }

    v2 = a1[4];
    if (v2 > 2)
    {
      break;
    }

    v3 = a1[3];
    if (v2 == 2)
    {
      if (!v3)
      {
        return 0;
      }
    }

    else if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }

    a1 += 5;
  }

  return 0;
}

uint64_t re::DirectMeshValidation::isWellFormed(uint64_t a1)
{
  if ((*(a1 + 16) - 5) < 0xFFFFFFFFFFFFFFFCLL || *a1 == 0)
  {
    v4 = 0;
  }

  else
  {
    v11 = v1;
    v12 = v2;
    if (re::lengthInBytes(*(a1 + 8)) && (v7 = *(a1 + 56), v6 = *(a1 + 64), re::DirectMeshValidation::isWellFormed(*(a1 + 32), *(a1 + 40), 0xCCCCCCCCCCCCCCCDLL * (v6 - v7))) && re::DirectMeshValidation::isWellFormed(v7, v6) && is_mul_ok(*a1, re::lengthInBytes(*(a1 + 8))))
    {
      re::calculateBufferSizes(a1, v9);
      v4 = v10;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

uint64_t re::DirectMeshValidation::validateBufferSizes(re::DirectMeshValidation *this, const re::DirectMesh *a2)
{
  re::calculateBufferSizes(this + 6, v7);
  if (v8 == 1)
  {
    v3 = re::DirectMesh::indexPayload(this);
    if (*(v3 + 48) >= v7[0])
    {
      v5 = 0;
      while (1)
      {
        v6 = v7[v5 + 1];
        if (v6)
        {
          result = re::DirectMesh::vertexPayload(this, v5);
          if (!result)
          {
            return result;
          }

          if (*(result + 48) < v6)
          {
            break;
          }
        }

        if (++v5 == 4)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL re::DirectMeshValidation::validateBufferSizes(re::DirectMeshUpdate *a1, unint64_t *a2)
{
  re::calculateBufferSizes(a2, v10);
  if (v11 == 1)
  {
    v3 = *(a1 + 4);
    if (!v3 || *(v3 + 48) >= v10[0])
    {
      v4 = 0;
      while (1)
      {
        v5 = v10[v4 + 1];
        v6 = re::DirectMeshUpdate::vertexUpdate(a1, v4);
        v7 = !v5 || v6 == 0;
        if (!v7 && *(v6 + 48) < v5)
        {
          break;
        }

        if (++v4 == 4)
        {
          v8 = *(a1 + 3);
          return !v8 || *(v8 + 48) >= (96 * *(a1 + 2));
        }
      }
    }
  }

  return 0;
}

uint64_t re::DirectMeshValidation::validateAndFixupIndices(uint64_t a1, _WORD *a2, unint64_t a3, unint64_t a4)
{
  if (a1 != 1)
  {
    if (a1)
    {
      return 2;
    }

    if (a4 >= 0xFFFF)
    {
      v4 = 0xFFFF;
    }

    else
    {
      v4 = a4;
    }

    if (a3 >= 2)
    {
      result = 0;
      v6 = a3 >> 1;
      do
      {
        v7 = *a2;
        if (v7 >= v4 && v7 != 0xFFFF)
        {
          *a2 = -1;
          result = 1;
        }

        ++a2;
        --v6;
      }

      while (v6);
      return result;
    }

    return 0;
  }

  if (a3 < 4)
  {
    return 0;
  }

  result = 0;
  v9 = a3 >> 2;
  do
  {
    if (*a2 >= a4 && *a2 != -1)
    {
      *a2 = -1;
      result = 1;
    }

    a2 += 2;
    --v9;
  }

  while (v9);
  return result;
}

BOOL re::DirectMeshValidation::isValid(re::DirectMeshValidation *this, const re::DirectMesh *a2)
{
  if (!re::DirectMeshValidation::validateBufferSizes(this, a2))
  {
    return 0;
  }

  if (re::DirectMesh::indexPayload(this))
  {
    v3 = re::DirectMesh::indexPayload(this);
    isPrivateToThisProcess = re::isPrivateToThisProcess(*(v3 + 32));
    if (!isPrivateToThisProcess)
    {
      v14 = re::directResourceLog(isPrivateToThisProcess);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v18 = 0;
      v15 = "Index buffer must be private";
      v16 = &v18;
LABEL_14:
      _os_log_impl(&dword_248D48000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
      return 0;
    }
  }

  if (re::DirectMesh::partsPayload(this))
  {
    v5 = re::DirectMesh::partsPayload(this);
    v6 = re::isPrivateToThisProcess(*(v5 + 32));
    if (!v6)
    {
      v14 = re::directResourceLog(v6);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v17 = 0;
      v15 = "Parts buffer must be private";
      v16 = &v17;
      goto LABEL_14;
    }
  }

  v7 = *(this + 7);
  v8 = re::DirectMesh::indexPayload(this);
  v9 = re::DirectMemoryResource::bytes(v8);
  v10 = re::DirectMesh::indexPayload(this);
  if (!re::MeshValidation::validateIndices(v7, v9, *(v10 + 48), *(this + 9)))
  {
    return 0;
  }

  v11 = re::DirectMesh::partsPayload(this);
  v12 = *(this + 16);

  return re::DirectMeshValidation::isValidParts(v11, v12, this + 6);
}

BOOL re::DirectMeshValidation::isValidParts(re::DirectMemoryResource *a1, unint64_t a2, uint64_t *a3)
{
  if (a2 > *(a1 + 6) / 0x60uLL)
  {
    return 0;
  }

  v7 = *a3;
  v8 = re::lengthInBytes(a3[1]);
  v9 = a3[1];
  v10 = re::DirectMemoryResource::bytes(a1);
  if (!a2)
  {
    return 1;
  }

  v11 = v10;
  v12 = v8 * v7;
  v13 = 96 * a2 - 96;
  do
  {
    result = re::DirectMeshValidation::isValid(v11, v12, v9);
    if (!result)
    {
      break;
    }

    v11 += 12;
    v14 = v13;
    v13 -= 96;
  }

  while (v14);
  return result;
}

uint64_t re::DirectMeshValidation::isValid(uint64_t a1, unint64_t *a2)
{
  result = re::DirectMeshValidation::validateBufferSizes(a1, a2);
  if (result)
  {
    v5 = *(a1 + 32);
    if (!v5 || (v6 = a2[1], v7 = re::DirectMemoryResource::bytes(*(a1 + 32)), result = re::MeshValidation::validateIndices(v6, v7, *(v5 + 48), a2[3]), result))
    {
      v8 = *(a1 + 24);
      if (!v8)
      {
        return 1;
      }

      result = re::DirectMeshValidation::isValidParts(v8, *(a1 + 16), a2);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL __REALITYKIT_WAITING_ON_RENDERER__(re::ULockCounter *this, unint64_t a2, uint64_t a3)
{
  v4 = atomic_load(this);
  if (v4 >= a2)
  {
    return 1;
  }

  do
  {
    result = re::ULockCounter::compareAndWait(this, v4, a3);
    if (!result)
    {
      break;
    }

    v4 = atomic_load(this);
  }

  while (v4 < a2);
  return result;
}

void **re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::~DirectResourceChanges(void **a1)
{
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::clear(a1);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::clear((a1 + 5));
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::clear((a1 + 10));
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table(a1 + 10);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table(a1 + 5);

  return std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table(a1);
}

unsigned __int8 *re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::create(unsigned __int8 *result, unsigned __int8 *a2, uint64_t *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  if (*a3)
  {
    v5 = result;
    v7 = *a2;
    v8 = v3;
    v6 = (v3 + 8);
    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>(v5, &v7, &v7);
    if (v8)
    {
    }

    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::__erase_unique<re::DirectResourceId>((v5 + 40), a2);
    return std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::__erase_unique<re::DirectResourceId>((v5 + 80), a2);
  }

  return result;
}

void re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::setUpdate(float *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*a3 && !std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a1, a2))
  {
    v6 = *a2;
    v7 = *a3;
    *a3 = 0;
    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>(a1 + 10, &v6, &v6);
    if (v7)
    {
    }
  }
}

void re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::destroy(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::__erase_unique<re::DirectResourceId>(a1, a2);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::__erase_unique<re::DirectResourceId>((a1 + 40), a2);
  v8 = *a2;
  v6 = *a3;
  v9 = v6;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>((a1 + 80), &v8, &v8);
  if (v9)
  {
  }
}

uint64_t re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::ensureUpdate(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>((a1 + 40), a2);
  if (v4)
  {
    return *(v4 + 4);
  }

  v6 = operator new(0x40uLL);
  re::DirectMeshUpdate::DirectMeshUpdate(v6);
  v9 = *a2;
  v10 = v7;
  v5 = *(std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>((a1 + 40), &v9, &v9) + 4);
  if (v10)
  {
  }

  return v5;
}

uint64_t re::DirectResourceChanges<re::DirectTexture,re::DirectTextureUpdate>::ensureUpdate(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>((a1 + 40), a2);
  if (v4)
  {
    return *(v4 + 4);
  }

  v6 = operator new(0x18uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  re::DirectContentsUpdate::DirectContentsUpdate(v6);
  *v7 = &unk_285BC15A8;
  v9 = *a2;
  v10 = v7;
  v5 = *(std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>((a1 + 40), &v9, &v9) + 4);
  if (v10)
  {
  }

  return v5;
}

uint64_t re::DirectResourceChanges<re::DirectBuffer,re::DirectBufferUpdate>::ensureUpdate(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>((a1 + 40), a2);
  if (v4)
  {
    return *(v4 + 4);
  }

  v6 = operator new(0x28uLL);
  *v6 = 0u;
  v6[1] = 0u;
  *(v6 + 4) = 0;
  re::DirectContentsUpdate::DirectContentsUpdate(v6);
  *v7 = &unk_285BC1618;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v9 = *a2;
  v10 = v7;
  v5 = *(std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>((a1 + 40), &v9, &v9) + 4);
  if (v10)
  {
  }

  return v5;
}

void re::DirectResourcesResolvedCommit::~DirectResourcesResolvedCommit(void **this)
{
  *this = &unk_285BC1688;
  v2 = this + 4;
  v3 = this + 24;
  v4 = this + 30;
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 27;
  std::vector<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = v3;
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 21;
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 18;
  std::vector<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 15;
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 12;
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 9;
  std::vector<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 6;
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v4);
  re::XPCObject::~XPCObject(this + 5);
  re::XPCObject::~XPCObject(v2);
  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectResourcesResolvedCommit::~DirectResourcesResolvedCommit(this);

  JUMPOUT(0x24C1E9EB0);
}

uint64_t re::DirectResourcesResolvedCommit::apply(re::DirectResourcesResolvedCommit *this, re::DirectResourceContext *a2)
{
  kdebug_trace();
  re::ResolvedResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::apply(this + 48, a2);
  re::ResolvedResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::apply(this + 120, a2);
  re::ResolvedResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::apply(this + 192, a2);

  return kdebug_trace();
}

void re::ResolvedResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::apply(uint64_t a1, re::DirectResourceContext *this)
{
  if (*a1 != *(a1 + 8))
  {
    v4 = **a1;
    v13 = v4;
    if (v4)
    {
      v5 = (v4 + 8);
    }

    re::DirectResourceContext::addResource(this, &v13);
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  while (v6 != v7)
  {
    v9 = *v6;
    v8 = v6[1];
    v6 += 2;
    (*(*v8 + 88))(v8, v9);
  }

  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  while (v11 != v10)
  {
    v12 = *v11++;
    re::DirectResourceContext::removeResource(this, v12);
  }
}

re::DirectResourcesCommit *re::DirectResourcesCommit::DirectResourcesCommit(re::DirectResourcesCommit *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v2 = &unk_285BC16C0;
  v2[2] = 0;
  v2[3] = 0;
  re::DirectResourceEvent::DirectResourceEvent(v2 + 4);
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 1065353216;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 1065353216;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 1065353216;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 1065353216;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 1065353216;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 118) = 1065353216;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 128) = 1065353216;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 138) = 1065353216;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 1065353216;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 158) = 1065353216;
  return this;
}

void re::DirectResourcesCommit::~DirectResourcesCommit(void **this)
{
  re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::~DirectResourceChanges(this + 65);
  re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::~DirectResourceChanges(this + 50);
  re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::~DirectResourceChanges(this + 35);
  re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::~DirectResourceChanges(this + 20);
  re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::~DirectResourceChanges(this + 5);
  re::XPCObject::~XPCObject(this + 4);
  re::XPCObject::~XPCObject(this + 3);

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectResourcesCommit::~DirectResourcesCommit(this);

  JUMPOUT(0x24C1E9EB0);
}

BOOL re::DirectResourcesCommit::isCreatePending(re::DirectResourcesCommit *this, re::DirectResource *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  result = 0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      uuid_copy(dst, a2 + 16);
      v6 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(this + 35, dst);
    }

    else
    {
      if (v4 != 4)
      {
        return result;
      }

      uuid_copy(dst, a2 + 16);
      v6 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(this + 50, dst);
    }
  }

  else if (v4 == 1)
  {
    uuid_copy(dst, a2 + 16);
    v6 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(this + 5, dst);
  }

  else
  {
    if (v4 != 2)
    {
      return result;
    }

    uuid_copy(dst, a2 + 16);
    v6 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(this + 20, dst);
  }

  return v6 != 0;
}

std::string *re::DirectResourcesCommit::debugDescription@<X0>(re::DirectResourcesCommit *this@<X0>, std::string *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  snprintf(__str, 0x400uLL, "Commit %llu", *(this + 2));
  return std::string::append(a2, __str);
}

uint64_t re::DirectResourcesPendingCommit::DirectResourcesPendingCommit(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *v4 = &unk_285BC16F8;
  *(v4 + 16) = 0;
  v5 = operator new(0x280uLL);
  *(a1 + 24) = re::DirectResourcesCommit::DirectResourcesCommit(v5);
  *(a1 + 32) = 0;
  if (a2)
  {
    v6 = (a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak((a1 + 40), v6);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void re::DirectResourcesPendingCommit::~DirectResourcesPendingCommit(id *this)
{
  v4 = this + 7;
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v4);
  objc_destroyWeak(this + 5);
  this[5] = 0;
  v2 = this[4];
  if (v2)
  {

    this[4] = 0;
  }

  v3 = this[3];
  if (v3)
  {

    this[3] = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectResourcesPendingCommit::~DirectResourcesPendingCommit(this);

  JUMPOUT(0x24C1E9EB0);
}

void re::DirectResourcesPendingCommit::addResource(uint64_t a1, const unsigned __int8 *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v10 = *(a1 + 24);
      uuid_copy(dst, a2 + 16);
      v17 = a2;
      v11 = (a2 + 8);
      re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::create((v10 + 40), dst, &v17);
      v7 = v17;
      if (!v17)
      {
        return;
      }
    }

    else
    {
      if (v4 != 2)
      {
        return;
      }

      v5 = *(a1 + 24);
      uuid_copy(dst, a2 + 16);
      v16 = a2;
      v6 = (a2 + 8);
      re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::create((v5 + 160), dst, &v16);
      v7 = v16;
      if (!v16)
      {
        return;
      }
    }

    goto LABEL_9;
  }

  if (v4 == 3)
  {
    v12 = *(a1 + 24);
    uuid_copy(dst, a2 + 16);
    v15 = a2;
    v13 = (a2 + 8);
    re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::create((v12 + 280), dst, &v15);
    v7 = v15;
    if (!v15)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v4 == 4)
  {
    v8 = *(a1 + 24);
    uuid_copy(dst, a2 + 16);
    v14 = a2;
    v9 = (a2 + 8);
    re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::create((v8 + 400), dst, &v14);
    v7 = v14;
    if (v14)
    {
LABEL_9:
    }
  }
}

void re::DirectResourcesPendingCommit::destroyResource(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v13[1] = a4;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v7 = *(a1 + 24);
      v12 = 0;
      re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::destroy(v7 + 40, v13, &v12);
      v5 = v12;
      if (!v12)
      {
        return;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v4 = *(a1 + 24);
      v11 = 0;
      re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::destroy(v4 + 160, v13, &v11);
      v5 = v11;
      if (!v11)
      {
        return;
      }
    }

    goto LABEL_9;
  }

  if (a2 == 3)
  {
    v8 = *(a1 + 24);
    v10 = 0;
    re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::destroy(v8 + 280, v13, &v10);
    v5 = v10;
    if (!v10)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a2 == 4)
  {
    v6 = *(a1 + 24);
    v9 = 0;
    re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::destroy(v6 + 400, v13, &v9);
    v5 = v9;
    if (v9)
    {
LABEL_9:
    }
  }
}

void re::DirectResourcesPendingCommit::addPayload(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  uuid_copy(dst, (a2 + 16));
  v5 = a2;
  if (a2)
  {
    v4 = (a2 + 8);
  }

  re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::create((v3 + 520), dst, &v5);
  if (v5)
  {
  }
}

void re::DirectResourcesPendingCommit::updatePayload(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  uuid_copy(dst, (a2 + 16));
  v5 = a2;
  if (a2)
  {
    v4 = (a2 + 8);
  }

  re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::setUpdate((v3 + 520), dst, &v5);
  if (v5)
  {
  }
}

void re::DirectResourcesPendingCommit::removePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  v4 = 0;
  re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::destroy(v3 + 520, v5, &v4);
  if (v4)
  {
  }
}

uint64_t re::DirectResourcesPendingCommit::ensureUpdate(re::DirectResourcesPendingCommit *this, re::DirectResource *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a2 + 4))
  {
    re::DirectResourcesPendingCommit::ensureUpdate();
  }

  v4 = (*(*a2 + 40))(a2);
  switch(v4)
  {
    case 3:
      v8 = *(this + 3);
      uuid_copy(dst, a2 + 16);
      return re::DirectResourceChanges<re::DirectBuffer,re::DirectBufferUpdate>::ensureUpdate(v8 + 280, dst);
    case 2:
      v7 = *(this + 3);
      uuid_copy(dst, a2 + 16);
      return re::DirectResourceChanges<re::DirectTexture,re::DirectTextureUpdate>::ensureUpdate(v7 + 160, dst);
    case 1:
      v5 = *(this + 3);
      uuid_copy(dst, a2 + 16);
      return re::DirectResourceChanges<re::DirectMesh,re::DirectMeshUpdate>::ensureUpdate(v5 + 40, dst);
    default:
      return 0;
  }
}

const unsigned __int8 *re::DirectResourcesPendingCommit::existingUpdate(re::DirectResourcesPendingCommit *this, re::DirectResource *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a2 + 4))
  {
    re::DirectResourcesPendingCommit::existingUpdate();
  }

  v4 = (*(*a2 + 40))(a2);
  switch(v4)
  {
    case 3:
      v8 = *(this + 3);
      uuid_copy(dst, a2 + 16);
      result = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>((v8 + 320), dst);
      if (result)
      {
        return *(result + 4);
      }

      break;
    case 2:
      v7 = *(this + 3);
      uuid_copy(dst, a2 + 16);
      result = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>((v7 + 200), dst);
      if (result)
      {
        return *(result + 4);
      }

      break;
    case 1:
      v5 = *(this + 3);
      uuid_copy(dst, a2 + 16);
      result = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>((v5 + 80), dst);
      if (!result)
      {
        return result;
      }

      return *(result + 4);
    default:
      return 0;
  }

  return result;
}

void re::DirectResourcesPendingCommit::addCommandBuffer(uint64_t a1, void *a2)
{
  if ((re::DirectResourcesPendingCommit::isPending(a1, a2) & 1) == 0)
  {
    v4 = operator new(0x50uLL);
    v5 = re::DirectFence::DirectFence(v4, a2);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1174405120;
    v7[2] = ___ZN2re28DirectResourcesPendingCommit16addCommandBufferEPN3MTL13CommandBufferE_block_invoke;
    v7[3] = &__block_descriptor_tmp_0;
    v8 = v5;
    v6 = v5 + 8;
    [a2 addCompletedHandler_];
    re::DirectResourcesPendingCommit::addFence(a1, v4);
    if (v8)
    {

      v8 = 0;
    }
  }
}

uint64_t re::DirectResourcesPendingCommit::isPending(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 48));
  for (i = *(a1 + 56); ; i += 8)
  {
    if (i == *(a1 + 64))
    {
      v5 = 0;
      goto LABEL_8;
    }

    if (*(*i + 16) == 1 && *(*i + 24) == a2)
    {
      break;
    }
  }

  v5 = 1;
LABEL_8:
  os_unfair_lock_unlock((a1 + 48));
  return v5;
}

void *__copy_helper_block_8_32c38_ZTSN2re9SharedPtrINS_11DirectFenceEEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void __destroy_helper_block_8_32c38_ZTSN2re9SharedPtrINS_11DirectFenceEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {

    *(a1 + 32) = 0;
  }
}

void re::DirectResourcesPendingCommit::addFence(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v4 = (a1 + 8);
  v5 = (a1 + 8);
  v18 = &unk_285BC1988;
  v19 = a1;
  v21 = &v18;
  re::DirectFence::addInvalidateHandler(a2, &v18);
  std::__function::__value_func<void ()(re::DirectFence *)>::~__value_func[abi:nn200100](&v18);
  os_unfair_lock_lock((a1 + 48));
  if (a2)
  {
    v6 = (a2 + 8);
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  if (v7 >= v8)
  {
    v10 = *(a1 + 56);
    v11 = v7 - v10;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = v8 - v10;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
    v15 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    v22 = a1 + 56;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>>(a1 + 56, v15);
    }

    *(8 * v11) = a2;
    v9 = 8 * v11 + 8;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>,re::SharedPtr<re::DirectBuffer>*>(a1 + 56, v10, v7, 0);
    v16 = *(a1 + 56);
    *(a1 + 56) = 0;
    *(a1 + 64) = v9;
    v17 = *(a1 + 72);
    *(a1 + 72) = 0;
    v20 = v16;
    v21 = v17;
    v18 = v16;
    v19 = v16;
    std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::~__split_buffer(&v18);
  }

  else
  {
    *v7 = a2;
    v9 = (v7 + 1);
  }

  *(a1 + 64) = v9;
  os_unfair_lock_unlock((a1 + 48));
}

void re::DirectResourcesPendingCommit::forEachFence(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 48));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  while (v4 != v5)
  {
    v6 = *v4++;
    std::function<void ()(re::DirectFence *)>::operator()(a2, v6);
  }

  os_unfair_lock_unlock((a1 + 48));
}

void re::DirectResourcesPendingCommit::fenceCompleted_threadSafe(re::DirectResourcesPendingCommit *this, re::DirectFence *a2)
{
  os_unfair_lock_lock(this + 12);
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      if (++v5 == v4)
      {
        v5 = *(this + 8);
        break;
      }
    }
  }

  if (v4 == v5)
  {

    os_unfair_lock_unlock(this + 12);
  }

  else
  {
    v6 = v5 + 1;
    if (v5 + 1 != v4)
    {
      v7 = *v5;
      do
      {
        *(v6 - 1) = *v6;
        *v6++ = v7;
      }

      while (v6 != v4);
      v4 = *(this + 8);
      v5 = v6 - 1;
    }

    while (v4 != v5)
    {
      v9 = *--v4;
      v8 = v9;
      if (v9)
      {

        *v4 = 0;
      }
    }

    *(this + 8) = v5;
    v10 = *(this + 7);
    os_unfair_lock_unlock(this + 12);
    if (v10 == v5)
    {
      WeakRetained = objc_loadWeakRetained(this + 5);
      if (WeakRetained)
      {
        v12 = WeakRetained;
        v13 = WeakRetained - 2;
        os_unfair_lock_lock(WeakRetained + 16);
        re::DirectResourceContext::sendIfReady(v13);
        os_unfair_lock_unlock(v12 + 16);
      }
    }
  }
}

void re::DirectResourcesPendingCommit::scheduled(re::DirectResourcesPendingCommit *this)
{
  if (*(this + 4))
  {
    re::DirectResourcesPendingCommit::scheduled();
  }

  *(this + 4) = 1;
  re::makeCommands(*(this + 3), &v4);
  v2 = *(this + 4);
  *(this + 4) = v4;
  v4 = v2;
  if (v2)
  {
  }

  v3 = *(this + 3);
  if (v3)
  {

    *(this + 3) = 0;
  }
}

ArcSharedObject *re::DirectResourceCommitSignaling::DirectResourceCommitSignaling(ArcSharedObject *a1, uint64_t a2, void *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *v6 = &unk_285BC1760;
  v6[3] = 0;
  v7 = (v6 + 3);
  v6[2] = 0;
  v8 = (v6 + 2);
  location = [a3 newSharedEvent];
  NS::SharedPtr<MTL::Resource>::operator=<MTL::Texture>(v8, &location);
  if (location)
  {
  }

  location = [objc_msgSend(MEMORY[0x277CD6FD8] alloc)];
  NS::SharedPtr<MTL::Resource>::operator=<MTL::Texture>(v7, &location);
  if (location)
  {
  }

  if (a2)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  objc_initWeak(&location, v9);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN2re29DirectResourceCommitSignalingC2ENS_10UnownedPtrINS_21DirectResourceContextEEEPN3MTL6DeviceE_block_invoke;
  v11[3] = &__block_descriptor_tmp_7_0;
  v12 = 0;
  objc_copyWeak(&v12, &location);
  *(a1 + 4) = _Block_copy(v11);
  objc_destroyWeak(&v12);
  v12 = 0;
  objc_destroyWeak(&location);
  return a1;
}

void ___ZN2re29DirectResourceCommitSignalingC2ENS_10UnownedPtrINS_21DirectResourceContextEEEPN3MTL6DeviceE_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    re::DirectResourceContext::freeListReady((WeakRetained - 8), a3);
  }
}

void re::DirectResourceContext::freeListReady(re::DirectResourceContext *this, unint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 52);
  for (i = *(this + 27); i != *(this + 28); i = *(this + 27))
  {
    v5 = *i;
    if (*(*i + 16) > a2)
    {
      break;
    }

    v6 = (v5 + 8);
    v8 = *(this + 27);
    v7 = *(this + 28);
    v9 = v8 + 1;
    if (v8 + 1 != v7)
    {
      v10 = *v8;
      do
      {
        *(v9 - 1) = *v9;
        *v9++ = v10;
      }

      while (v9 != v7);
      v7 = *(this + 28);
      v8 = v9 - 1;
    }

    while (v7 != v8)
    {
      v12 = *--v7;
      v11 = v12;
      if (v12)
      {

        *v7 = 0;
      }
    }

    *(this + 28) = v8;
    kdebug_trace();
    re::DirectResourcesReusePool::mergeFrom(*(this + 30), v5);
  }

  atomic_store(a2, this + 31);
  __ulock_wake();
  v13 = *(this + 6);
  v14 = a2 > v13;
  v15 = a2 - v13;
  if (v14)
  {
    v27 = 0uLL;
    v28 = 0;
    re::DirectResourcesReusePool::purgeBefore(v25, *(this + 30), v15);
    std::vector<re::DirectResourcesReuseList::Entry>::__vdeallocate(&v27);
    v27 = *v25;
    v28 = v26;
    *dst = v25;
    v25[1] = 0;
    v26 = 0;
    v25[0] = 0;
    std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](dst);
    if (v27 != *(&v27 + 1))
    {
      kdebug_trace();
      v25[0] = 0;
      v25[1] = 0;
      v26 = 0;
      std::vector<re::DirectResourceId>::resize(v25, 0x6DB6DB6DB6DB6DB7 * ((*(&v27 + 1) - v27) >> 3));
      v16 = v27;
      if (*(&v27 + 1) != v27)
      {
        v17 = 0;
        v18 = 0;
        v19 = 48;
        do
        {
          uuid_copy(dst, (*(v16 + v19) + 16));
          *(v25[0] + v17) = *dst;
          ++v18;
          v16 = v27;
          v17 += 16;
          v19 += 56;
        }

        while (v18 < 0x6DB6DB6DB6DB6DB7 * ((*(&v27 + 1) - v27) >> 3));
      }

      *__p = *v25;
      v24 = v26;
      v25[1] = 0;
      v26 = 0;
      v25[0] = 0;
      re::DirectResourceContext::destroyPayloads_anyThread(this, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v21 = *(&v27 + 1);
      v20 = v27;
      while (v21 != v20)
      {
        v22 = *(v21 - 8);
        if (v22)
        {

          *(v21 - 8) = 0;
        }

        v21 -= 56;
      }

      *(&v27 + 1) = v20;
      if (v25[0])
      {
        v25[1] = v25[0];
        operator delete(v25[0]);
      }

      kdebug_trace();
    }

    v25[0] = &v27;
    std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](v25);
  }

  os_unfair_lock_unlock(this + 52);
}

void re::DirectResourceCommitSignaling::~DirectResourceCommitSignaling(const void **this)
{
  _Block_release(this[4]);
  v2 = this[3];
  if (v2)
  {

    this[3] = 0;
  }

  v3 = this[2];
  if (v3)
  {

    this[2] = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectResourceCommitSignaling::~DirectResourceCommitSignaling(this);

  JUMPOUT(0x24C1E9EB0);
}

uint64_t re::DirectResourceContext::recreatePayloadIfNecessary(re::DirectResourceContext *a1, re::DirectResource *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v14 = re::DirectResourceContext::ensureUncommitted(a1);
  if (re::DirectResourcesCommit::isCreatePending(v14[3], a2))
  {
    return 1;
  }

  v15 = re::DirectResourcesPendingCommit::existingUpdate(v14, a2);
  v16 = v15;
  if (v15)
  {
    if ((*(*v15 + 40))(v15, a3, a4))
    {
      return 1;
    }
  }

  v17 = (*(*a2 + 48))(a2, a3, a4);
  v18 = v17;
  if (v17)
  {
    v19 = (v17 + 8);
  }

  v20 = *(v18 + 40);
  if ((v20 & 8) != 0)
  {
    if ((v20 & 6) != 4)
    {
LABEL_9:
      re::DirectResourceContext::createPayload(a1, a2, a3, a4, v7, &v30);
      v21 = v30;
      if (!v30)
      {

        return 0;
      }

      if (!a5)
      {
        v22 = re::DirectMemoryResource::bytes(v30);
        v23 = re::DirectMemoryResource::bytes(v18);
        if (*(v18 + 48) >= *(v21 + 6))
        {
          v24 = *(v21 + 6);
        }

        else
        {
          v24 = *(v18 + 48);
        }

        memcpy(v22, v23, v24);
      }

      v29 = v21;
      v25 = v21 + 8;
      (*(*a2 + 56))(a2, a3, a4, &v29);
      if (v29)
      {

        v29 = 0;
      }

      goto LABEL_25;
    }
  }

  else if (!a6 && (v20 & 2) != 0)
  {
    goto LABEL_9;
  }

  if (!v16)
  {
    v16 = re::DirectResourcesPendingCommit::ensureUpdate(v14, a2);
  }

  v28 = v18;
  v26 = (v18 + 8);
  (*(*v16 + 48))(v16, a3, a4, &v28);
  if (v28)
  {

    v28 = 0;
  }

  if (re::isPrivateToThisProcess(*(v18 + 32)))
  {
    re::DirectResourcesPendingCommit::updatePayload(v14, v18);
  }

LABEL_25:

  return 1;
}

uint64_t re::DirectResourceContext::ensureUncommitted(re::DirectResourceContext *this)
{
  result = *(this + 21);
  if (!result)
  {
    kdebug_trace();
    v3 = operator new(0x50uLL);
    result = re::DirectResourcesPendingCommit::DirectResourcesPendingCommit(v3, this);
    v4 = *(this + 21);
    *(this + 21) = result;
    if (v4)
    {

      result = *(this + 21);
    }

    v6 = *(this + 19);
    v5 = *(this + 20);
    *(this + 20) = v5 + 1;
    *(*(result + 24) + 16) = v5;
    if (v6)
    {
      v7 = 32;
      if (!*(result + 16))
      {
        v7 = 24;
      }

      std::function<void ()(re::DirectResourceContext *,unsigned long long)>::operator()(this + 128, this, *(*(result + v7) + 16));
      return *(this + 21);
    }
  }

  return result;
}

void re::DirectResourceContext::createPayload(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 24));
  uuid_copy(dst, a2 + 16);
  v12 = (*(*a2 + 40))(a2);
  re::DirectResourceContext::reusePayload(a1, *dst, *&dst[8], v12, a3, a4, &v22);
  v13 = v22;
  if (v22)
  {
LABEL_16:
    *a6 = v13;
    return;
  }

  if (*(a1 + 40) != 3 || (v14 = *(a1 + 56)) == 0 || *(a1 + 160) - 1 <= v14 || (v15 = atomic_load((a1 + 248)), v16 = *(a1 + 160) + ~*(a1 + 56), v15 >= v16))
  {
LABEL_11:
    v13 = v22;
    if (!v22)
    {
      (*(*a2 + 88))(dst, a2, a3, a4, *(a1 + 64));
      v20 = v22;
      v13 = *dst;
      v22 = *dst;
      *dst = v20;
      if (v20)
      {

        v13 = v22;
      }

      if (v13)
      {
        re::DirectResourceContext::addPayload(a1, a2, &v22);
        v13 = v22;
      }
    }

    goto LABEL_16;
  }

  if (a5 != 1)
  {
    re::DirectResourceContext::freeListWait(a1, v16);
    uuid_copy(dst, a2 + 16);
    v17 = (*(*a2 + 40))(a2);
    re::DirectResourceContext::reusePayload(a1, *dst, *&dst[8], v17, a3, a4, &v21);
    v19 = v21;
    v18 = v22;
    v21 = v22;
    v22 = v19;
    if (v21)
    {
    }

    goto LABEL_11;
  }

  *a6 = 0;
  if (v22)
  {
  }
}

uint64_t std::function<void ()(re::DirectResourceContext *,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return re::DirectResourceContext::ensureUncommittedFreeList(v5);
}

void re::DirectResourceContext::ensureUncommittedFreeList(re::DirectResourceContext *this)
{
  if (!*(this + 22))
  {
    v2 = re::DirectResourceContext::ensureUncommitted(this);
    v3 = 32;
    if (!*(v2 + 16))
    {
      v3 = 24;
    }

    v4 = *(*(v2 + v3) + 16);
    v5 = operator new(0x38uLL);
    re::DirectResourcesReuseList::DirectResourcesReuseList(v5, v4);
    v6 = *(this + 22);
    *(this + 22) = v7;
    if (v6)
    {
    }
  }
}

void re::DirectResourceContext::sendIfReady(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 18);
  for (i = *&this[46]._os_unfair_lock_opaque; i != *&this[48]._os_unfair_lock_opaque; i = *&this[46]._os_unfair_lock_opaque)
  {
    v3 = *i;
    os_unfair_lock_lock(*i + 12);
    v4 = *&v3[14]._os_unfair_lock_opaque;
    v5 = *&v3[16]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 12);
    if (v4 != v5)
    {
      break;
    }

    kdebug_trace();
    v6 = *&this[46]._os_unfair_lock_opaque;
    v7 = *v6;
    if (*v6)
    {
      v8 = (v7 + 8);
      v6 = *&this[46]._os_unfair_lock_opaque;
    }

    v9 = v6 + 1;
    v10 = *&this[48]._os_unfair_lock_opaque;
    if (v6 + 1 != v10)
    {
      v11 = *v6;
      do
      {
        *(v9 - 1) = *v9;
        *v9++ = v11;
      }

      while (v9 != v10);
      v10 = *&this[48]._os_unfair_lock_opaque;
      v6 = v9 - 1;
    }

    while (v10 != v6)
    {
      v13 = *--v10;
      v12 = v13;
      if (v13)
      {

        *v10 = 0;
      }
    }

    *&this[48]._os_unfair_lock_opaque = v6;
    kdebug_trace();
    if (*(v7 + 16) != 1)
    {
      re::DirectResourceContext::sendIfReady();
    }

    *(v7 + 16) = 2;
    v14 = *&this[20]._os_unfair_lock_opaque;
    if (v14)
    {
      v15 = *(v7 + 32);
      re::DirectResourceEvent::operator=((v15 + 32), *(v14 + 16));
      [*(v14 + 16) notifyListener:*(v14 + 24) atValue:*(v15 + 16) block:*(v14 + 32)];
    }

    if (*&this[30]._os_unfair_lock_opaque)
    {
      std::function<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::operator()(&this[24], this, *(v7 + 32));
    }

    kdebug_trace();
    kdebug_trace();
  }
}

void std::function<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3, &v7, &v6);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    std::vector<re::DirectResourceId>::resize(v4, v5);
  }
}

void std::vector<re::DirectResourceId>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<re::DirectResourceId>::__append(result, a2 - v2);
  }
}

void re::DirectResourceContext::destroyPayloads_anyThread(void *a1, uint64_t *a2)
{
  if (dispatch_get_specific(a1))
  {
    v5 = *a2;
    v4 = a2[1];
    while (v5 != v4)
    {
      re::DirectResourceContext::removePayload(a1, v5);
      v5 += 16;
    }
  }

  else
  {
    if (a1)
    {
      v6 = a1 + 1;
    }

    else
    {
      v6 = 0;
    }

    objc_initWeak(&location, v6);
    v7 = a1[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZN2re21DirectResourceContext25destroyPayloads_anyThreadENSt3__16vectorINS_16DirectResourceIdENS1_9allocatorIS3_EEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_12;
    v9 = 0;
    objc_copyWeak(&v9, &location);
    std::vector<re::DirectResourceId>::vector[abi:nn200100](__p, a2);
    dispatch_async(v7, block);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    objc_destroyWeak(&v9);
    v9 = 0;
    objc_destroyWeak(&location);
  }
}

void std::vector<re::DirectResourcesReuseList::Entry>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 8);
    if (v4)
    {

      *(i - 8) = 0;
    }
  }

  a1[1] = v2;
}

os_unfair_lock_s *re::DirectResourceContext::freeListWait(os_unfair_lock_s *this, unint64_t a2)
{
  v2 = &this[62];
  v3 = atomic_load(&this[62]._os_unfair_lock_opaque);
  if (v3 < a2)
  {
    v5 = this;
    kdebug_trace();
    if (!__REALITYKIT_WAITING_ON_RENDERER__(v2, a2, 500000))
    {
      re::DirectResourceContext::freeListWaitTimedOut(v5, a2, v3);
      __REALITYKIT_WAITING_ON_RENDERER__(v2, a2, 0);
    }

    return kdebug_trace();
  }

  return this;
}

void re::DirectResourceContext::freeListWaitTimedOut(os_unfair_lock_s *this, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 18);
  v7 = re::directResourceLog(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    re::DirectResourceContext::freeListWaitTimedOut(v7);
  }

  v9 = re::directResourceLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    re::DirectResourceContext::freeListWaitTimedOut(a3, a2, v9);
  }

  v19 = 0;
  v10 = *&this[46]._os_unfair_lock_opaque;
  for (i = *&this[48]._os_unfair_lock_opaque; v10 != i; ++v10)
  {
    v12 = *v10;
    v13 = *(*v10 + 32);
    if (v13)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 33) - *(v13 + 32)) >> 3) + ((*(v13 + 36) - *(v13 + 35)) >> 4);
      v13 = re::commandCount(v13);
      v15 = v13;
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v16 = re::directResourceLog(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 32;
      if (!*(v12 + 16))
      {
        v17 = 24;
      }

      v18 = *(*(v12 + v17) + 16);
      *buf = 134218496;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      v21 = 2048;
      v22 = v15;
      _os_log_error_impl(&dword_248D48000, v16, OS_LOG_TYPE_ERROR, "\tCommit %llu pending with %zu payloads and %zu commands", buf, 0x20u);
    }

    *buf = &unk_285BC19D0;
    *&buf[8] = &v19;
    v22 = buf;
    re::DirectResourcesPendingCommit::forEachFence(v12, buf);
    std::__function::__value_func<void ()(re::DirectFence *)>::~__value_func[abi:nn200100](buf);
  }

  kdebug_trace();
  os_unfair_lock_unlock(this + 18);
}

void re::DirectResourceContext::DirectResourceContext(uint64_t a1, __int128 *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *v4 = &unk_285BC17C8;
  *(v4 + 16) = &unk_285BC1860;
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 56) = *(a2 + 4);
  *(v4 + 40) = v6;
  *(v4 + 24) = v5;
  *(a1 + 64) = *(a2 + 5);
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  *(a1 + 120) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  operator new();
}

void re::DirectResourceContext::~DirectResourceContext(re::DirectResourceContext *this)
{
  for (i = *(this + 34); i; i = *i)
  {
    WeakRetained = objc_loadWeakRetained(i + 4);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      re::DirectResource::setDelegate(WeakRetained - 8, 0);
    }
  }

  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::clear(this + 256);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::clear(this + 296);
  v5 = *(this + 30);
  if (v5)
  {
    re::DirectResourcesReusePool::~DirectResourcesReusePool(v5);
    MEMORY[0x24C1E9EB0]();
  }

  *(this + 30) = 0;
  v6 = *(this + 11);
  if (v6)
  {
    _Block_release(v6);
    *(this + 11) = 0;
  }

  dispatch_queue_set_specific(*(this + 3), this, 0, 0);
  dispatch_release(*(this + 3));
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table(this + 37);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::~__hash_table(this + 256);
  __ulock_wake();
  v11 = (this + 216);
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v11);
  v11 = (this + 184);
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v11);
  v7 = *(this + 22);
  if (v7)
  {

    *(this + 22) = 0;
  }

  v8 = *(this + 21);
  if (v8)
  {

    *(this + 21) = 0;
  }

  std::__function::__value_func<void ()(re::DirectResourceContext *,unsigned long long)>::~__value_func[abi:nn200100](this + 128);
  std::__function::__value_func<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::~__value_func[abi:nn200100](this + 96);
  v9 = *(this + 10);
  if (v9)
  {

    *(this + 10) = 0;
  }

  v10 = *(this + 8);
  if (v10)
  {

    *(this + 8) = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectResourceContext::~DirectResourceContext(this);

  JUMPOUT(0x24C1E9EB0);
}

void non-virtual thunk tore::DirectResourceContext::~DirectResourceContext(re::DirectResourceContext *this)
{
  re::DirectResourceContext::~DirectResourceContext((this - 16));
}

{
  re::DirectResourceContext::~DirectResourceContext((this - 16));

  JUMPOUT(0x24C1E9EB0);
}

void re::DirectResourceContext::createMesh(uint64_t a1@<X0>, _OWORD *a2@<X1>, char **a3@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 32) != 2;
  v9 = *(a1 + 64);
  v10 = v6;
  re::DirectMesh::create(a2, &v9, a3);
  v7 = *a3;
  if (*a3)
  {
    v9 = *a3;
    v8 = v7 + 8;
    re::DirectResourceContext::addResource(a1, &v9);
  }
}

void re::DirectResourceContext::addResource(uint64_t a1, const unsigned __int8 **a2)
{
  v4 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 24));
  re::DirectResource::setDelegate(*a2, a1 + 16);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__emplace_unique_impl<unsigned char const(&)[16],re::SharedPtr<re::DirectResource> const&>(a1 + 256);
}

void re::DirectResourceContext::createTexture(uint64_t a1@<X0>, uint64_t a2@<X1>, const unsigned __int8 **a3@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 32) != 2;
  v9 = *(a1 + 64);
  v10 = v6;
  re::DirectTexture::create(a2, &v9, a3);
  v7 = *a3;
  if (*a3)
  {
    v9 = *a3;
    v8 = (v7 + 8);
    re::DirectResourceContext::addResource(a1, &v9);
  }
}

void re::DirectResourceContext::createBuffer(uint64_t a1@<X0>, _OWORD *a2@<X1>, char **a3@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 32) != 2;
  v9 = *(a1 + 64);
  v10 = v6;
  re::DirectBuffer::create(a2, &v9, a3);
  v7 = *a3;
  if (*a3)
  {
    v9 = *a3;
    v8 = v7 + 8;
    re::DirectResourceContext::addResource(a1, &v9);
  }
}

void re::DirectResourceContext::createMaterial(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 32) != 2;
  v9 = *(a1 + 64);
  v10 = v6;
  re::DirectMaterialParameters::create(a2, a3);
  v7 = *a3;
  if (*a3)
  {
    v9 = *a3;
    v8 = (v7 + 8);
    re::DirectResourceContext::addResource(a1, &v9);
  }
}

void re::DirectResourceContext::reusePayload(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = a5;
  v9 = a4;
  os_unfair_lock_lock((a1 + 208));
  re::DirectResourcesReusePool::take(*(a1 + 240), a2, a3, v9, v8, a6, a7);

  os_unfair_lock_unlock((a1 + 208));
}

void re::DirectResourceContext::addPayload(dispatch_queue_t *a1, void *a2, uint64_t *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(a1[3]);
  if (a2[4])
  {
    re::DirectResourceContext::addPayload();
  }

  (*(*a2 + 40))(a2);
  kdebug_trace();
  v6 = re::DirectResourceContext::ensureUncommitted(a1);
  re::DirectResourcesPendingCommit::addPayload(v6, *a3);
  std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMemoryResource>>::pair[abi:nn200100]<unsigned char const(&)[16],re::SharedPtr<re::DirectMemoryResource> const&,0>(v7, (*a3 + 16), a3);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>(a1 + 74, v7, v7);
  if (v8)
  {
  }
}