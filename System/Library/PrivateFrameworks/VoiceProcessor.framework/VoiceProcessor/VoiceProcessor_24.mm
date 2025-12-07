void sub_272656F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void vp::vx::trim_gains_parse_cf(vp::vx *this, const __CFArray **a2)
{
  v2 = *a2;
  v23 = 0u;
  if (*a2)
  {
    Count = CFArrayGetCount(v2);
    v5 = Count;
    v6 = *a2;
    if (v6)
    {
      v7 = CFArrayGetCount(v6);
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v7 = 0;
      if (!Count)
      {
        goto LABEL_27;
      }
    }

    v8 = 0;
    v23 = 0u;
    do
    {
      if (v2 == v6 && v7 == v8)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v24, v2, v8);
      v9 = v24;
      if (!v24)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v10 = CFStringCreateWithBytes(0, "trim_gain_db", 12, 0x8000100u, 0);
      cf = v10;
      if (!v10)
      {
        v20 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v20, "Could not construct");
      }

      Value = CFDictionaryGetValue(v9, v10);
      if (cf)
      {
        CFRelease(cf);
      }

      if (!Value)
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v21, "Could not find item");
      }

      v12 = applesauce::CF::convert_to<float,0>(Value);
      v13 = (*(&v23 + 1) - v23) >> 2;
      v14 = v13 + 1;
      if ((v13 + 1) >> 62)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      if (-v23 >> 1 > v14)
      {
        v14 = -v23 >> 1;
      }

      if (-v23 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (4 * v13);
      *v16 = v12;
      v17 = v16 + 1;
      memcpy(0, v23, *(&v23 + 1) - v23);
      if (v23)
      {
        operator delete(v23);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      *&v18 = 0;
      *(&v18 + 1) = v17;
      v23 = v18;
      ++v8;
    }

    while (v5 != v8);
  }

LABEL_27:
  *this = v23;
  *(this + 2) = 0;
  *(this + 24) = 1;
}

void sub_272657394(void *a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6, _BYTE *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  if (a8)
  {
    operator delete(a8);
  }

  __cxa_begin_catch(a1);
  *a7 = 0;
  a7[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x272657240);
}

uint64_t std::__function::__value_func<vp::Expected<void,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<vp::Expected<void,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_272657694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::TypeRef::~TypeRef(va1);

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<void,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int,applesauce::CF::TypeRef)>::operator()(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v9 = a3;
  v7 = a5;
  v8 = a4;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v9, &v8, &v7, a6);
}

_BYTE *vp::Expected<void,vp::rpb::Error>::on_error<vp::rpb::handle_error(NSError * {__autoreleasing}*)::{lambda(vp::rpb::Error const&)#1}>(_BYTE *result, uint64_t a2, void **a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if ((v5 & 1) == 0)
  {
    result = *a2;
    if (*a3 && result != 0)
    {
      result = result;
      **a3 = result;
      v5 = *(a2 + 8);
    }
  }

  *v4 = 0;
  v4[8] = v5;
  if ((v5 & 1) == 0)
  {

    return vp::objc::ID::ID(v4, a2);
  }

  return result;
}

void sub_272657984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error>::~Expected(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a3;
  v6 = a5;
  v7 = a4;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v8, &v7, &v6);
}

uint64_t caulk::expected<applesauce::CF::TypeRef,vp::rpb::Error>::value(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881B9728;
    exception[1] = v3;
  }

  return result;
}

void sub_272657A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::objc::ID::~ID(va);
  _Unwind_Resume(a1);
}

void caulk::bad_expected_access<vp::rpb::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2881B9728;
  vp::objc::ID::~ID(&a1[1].__vftable);

  std::exception::~exception(a1);
}

{
  a1->__vftable = &unk_2881B9728;
  vp::objc::ID::~ID(&a1[1].__vftable);
  std::exception::~exception(a1);

  JUMPOUT(0x2743CBFA0);
}

void sub_272657D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(va);

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v4);
}

uint64_t caulk::expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::value(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881B9728;
    exception[1] = v3;
  }

  return result;
}

void sub_272657E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::objc::ID::~ID(va);
  _Unwind_Resume(a1);
}

vp::objc::ID *caulk::__expected_detail::base<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error>::~base(vp::objc::ID *this)
{
  if (*(this + 32) == 1)
  {
    v3 = this;
    std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  else
  {
    vp::objc::ID::~ID(this);
  }

  return this;
}

void sub_272658180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((a10 & 1) == 0)
  {
    vp::objc::ID::~ID(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a3;
  v6 = a5;
  v7 = a4;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v8, &v7, &v6);
}

uint64_t caulk::expected<float,vp::rpb::Error>::value(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881B9728;
    exception[1] = v3;
  }

  return result;
}

void sub_2726582A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::objc::ID::~ID(va);
  _Unwind_Resume(a1);
}

void sub_27265847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(va);

  _Unwind_Resume(a1);
}

uint64_t std::function<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, &v4);
}

uint64_t caulk::expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::value(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881B9728;
    exception[1] = v3;
  }

  return result;
}

void sub_2726585B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::objc::ID::~ID(va);
  _Unwind_Resume(a1);
}

void *caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::base(void *result, uint64_t a2)
{
  *result = 0;
  v2 = *(a2 + 32);
  *(result + 32) = v2;
  if (v2 != 1)
  {
    return vp::objc::ID::ID(result, a2);
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = *(a2 + 24);
  *result = *a2;
  result[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

vp::objc::ID *caulk::__expected_detail::base<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error>::~base(vp::objc::ID *this)
{
  if (*(this + 32) == 1)
  {
    v3 = this;
    std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  else
  {
    vp::objc::ID::~ID(this);
  }

  return this;
}

void vp::rpb::Host::add_item(void *a1, id *a2)
{
  v4 = a1;
  v3 = *a2;
  [v4 addItem:v3];
}

void vp::rpb::Host::find_item_by_name(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [v6 itemForName:*a3];
  *a1 = v5;
}

void vp::rpb::Host::add_wire(void *a1, id *a2)
{
  v4 = a1;
  v3 = *a2;
  [v4 addWire:v3];
}

void vp::rpb::Host::find_wire_by_name(void *a1, void *a2, id *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a2;
  v6 = [v5 wires];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = *a3;
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          *a1 = v10;

          return;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  *a1 = 0;
}

void vp::rpb::Host::add_parameter_wire(void *a1, unsigned int *a2, id *a3, unsigned int *a4)
{
  v12 = a1;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *a3;
  LODWORD(v11) = a4[2];
  [v12 addWireFromHostParameter:v7 scope:v8 element:v9 to:v10 parameter:*a4 scope:a4[1] element:v11];
}

void vp::rpb::Host::add_parameter_wire(void *a1, id *a2, unsigned int *a3, unsigned int *a4)
{
  v9 = a1;
  v7 = *a2;
  LODWORD(v8) = a4[2];
  [v9 addWireFrom:v7 parameter:*a3 scope:a3[1] element:a3[2] toHostParameter:*a4 scope:a4[1] element:v8];
}

void vp::rpb::Host::add_property_wire(void *a1, unsigned int *a2, id *a3, unsigned int *a4)
{
  v12 = a1;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *a3;
  LODWORD(v11) = a4[2];
  [v12 addWireFromHostProperty:v7 scope:v8 element:v9 to:v10 property:*a4 scope:a4[1] element:v11];
}

void vp::rpb::Host::add_property_wire(void *a1, id *a2, unsigned int *a3, unsigned int *a4)
{
  v9 = a1;
  v7 = *a2;
  LODWORD(v8) = a4[2];
  [v9 addWireFrom:v7 property:*a3 scope:a3[1] element:a3[2] toHostProperty:*a4 scope:a4[1] element:v8];
}

uint64_t std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void vp::rpb::Host::Delegate::on_get_property_info(void *a1, uint64_t a2)
{
  v3 = a1;
  std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator=[abi:ne200100](v3 + 104, a2);
}

uint64_t std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void vp::rpb::Host::Delegate::on_get_property(void *a1, uint64_t a2)
{
  v3 = a1;
  std::__function::__value_func<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator=[abi:ne200100](v3 + 136, a2);
}

uint64_t std::__function::__value_func<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void vp::rpb::Host::new_delegate(vp::rpb::Host *this)
{
  v2 = objc_alloc_init(RPBHost_Delegate);
  *this = v2;
}

void vp::rpb::Host::set_delegate(void *a1, id *a2)
{
  v4 = a1;
  v3 = *a2;
  [v4 setDelegate:v3];
}

void virtual thunk tovp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory(vp::vx::IO_Far_End_Voice_Proc_Node_Factory *this)
{
  vp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory(vp::vx::IO_Far_End_Voice_Proc_Node_Factory *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B7EC0;
  *(this + 12) = &unk_2881B7EF0;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::IO_Far_End_Voice_Proc_Node_Factory]", 42);
    v3 = v14;
    v4 = v14;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v14;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 18);
  vp::vx::data_flow::State<void>::~State(this + 12);
  vp::vx::data_flow::State<void>::~State(this + 6);
  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(this + 12) = &unk_2881C6630;
  v12 = *(this + 14);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

{
  vp::vx::IO_Far_End_Voice_Proc_Node_Factory::~IO_Far_End_Voice_Proc_Node_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Far_End_Voice_Proc_Node_Factory::new_node(vp *a1, void x1_0, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (a1)
    {
      v7 = a1 + *(*a1 - 24);
    }

    else
    {
      v7 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v7, "vp::vx::IO_Far_End_Voice_Proc_Node_Factory]", 42);
    v8 = BYTE7(v23);
    v9 = SBYTE7(v23);
    v10 = __p[1];
    v12 = vp::get_log(v11);
    v6 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v9 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      v14 = __p[0];
      if (v9 >= 0)
      {
        v14 = __p;
      }

      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v15;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%s%swill create node", buf, 0x16u);
      LOBYTE(v9) = BYTE7(v23);
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  default_resource = std::pmr::get_default_resource(v6);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = default_resource;
  vp::vx::data_flow::State<void>::get_value(a1 + 18, buf);
  v17 = vp::vx::data_flow::Value::view_storage(buf);
  *__p = *v17;
  v23 = *(v17 + 16);
  v24 = *(v17 + 32);
  vp::vx::data_flow::Value::~Value(buf);
  v19 = std::pmr::get_default_resource(v18);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = v19;
  vp::vx::data_flow::State<void>::get_value(a1 + 12, buf);
  vp::vx::data_flow::Value::view_storage(buf);
  vp::vx::data_flow::Value::~Value(buf);
  v21 = std::pmr::get_default_resource(v20);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = v21;
  vp::vx::data_flow::State<void>::get_value(a1 + 6, buf);
  *vp::vx::data_flow::Value::view_storage(buf) = 0;
  vp::vx::data_flow::Value::~Value(buf);
  *buf = 0;
  *&buf[8] = a2;
  *&buf[16] = xmmword_272756560;
  *((*(*a2 + 16))(a2, 88, 8) + 64) = &unk_2881C6630;
  operator new();
}

void sub_2726598B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::unique_ptr<vp::vx::io::nodes::Far_End_Voice_Proc_Node,vp::Allocator_Delete<vp::vx::io::nodes::Far_End_Voice_Proc_Node>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = v2[7];
    if (v4)
    {
      _Block_release(v4);
      v2[7] = 0;
    }

    v2[8] = &unk_2881C6630;
    v5 = v2[10];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::destroy_value(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    _Block_release(*a2);
    *a2 = 0;
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::move_value(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  *a2 = v3;
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::copy_value(uint64_t a1, void *a2, void **a3)
{
  result = *a3;
  if (*a3)
  {
    result = _Block_copy(result);
  }

  *a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void sub_272659C94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7F10;
  std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::register_listener(std::function<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7F10;
  std::__function::__value_func<void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "far-end-voice proc I/O block is %p", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 32))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7F58;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7F58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1},std::allocator<void vp::vx::observe_downlink<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_input_block(vp::vx::data_flow::State<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>)::$_0)::{lambda(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)#1}>,void ()(unsigned int,vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7F58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "far-end-voice proc max I/O block size is %u", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 32))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7FA0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7FA0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_max_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7FA0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v10 = v7;
      v11 = *(a1 + 8);
      if (v11)
      {
        CA::StreamDescription::AsString(&__p, a3, v8, v9);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v16, "far-end-voice proc I/O format is %s", v12, p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = *&v16.__r_.__value_.__l.__data_;
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v16.__r_.__value_.__r.__words[1] + 7);
        *(&__p.__r_.__value_.__s + 23) = *(&v16.__r_.__value_.__s + 23);
        v15 = 1;
        (*(*v11 + 32))(v11, v6, &__p);
        if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7FE8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7FE8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Far_End_Voice_Proc_Node_Factory::set_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7FE8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory(vp::vx::IO_Mic_Ref_Sync_Node_Factory *this)
{
  vp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory(vp::vx::IO_Mic_Ref_Sync_Node_Factory *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B8038;
  *(this + 18) = &unk_2881B8068;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::IO_Mic_Ref_Sync_Node_Factory]", 36);
    v3 = v14;
    v4 = v14;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v14;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 30);
  vp::vx::data_flow::State<void>::~State(this + 24);
  vp::vx::data_flow::State<void>::~State(this + 18);
  vp::vx::data_flow::State<void>::~State(this + 12);
  vp::vx::data_flow::State<void>::~State(this + 6);
  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(this + 18) = &unk_2881C6630;
  v12 = *(this + 20);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

{
  vp::vx::IO_Mic_Ref_Sync_Node_Factory::~IO_Mic_Ref_Sync_Node_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Mic_Ref_Sync_Node_Factory::new_node(vp *a1, void x1_0, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (a1)
    {
      v7 = a1 + *(*a1 - 24);
    }

    else
    {
      v7 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v7, "vp::vx::IO_Mic_Ref_Sync_Node_Factory]", 36);
    v8 = __p[23];
    v9 = __p[23];
    v10 = *&__p[8];
    v12 = vp::get_log(v11);
    v6 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v9 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      v14 = *__p;
      if (v9 >= 0)
      {
        v14 = __p;
      }

      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v15;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%s%swill create new mic-ref-sync node", buf, 0x16u);
      LOBYTE(v9) = __p[23];
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  default_resource = std::pmr::get_default_resource(v6);
  *&__p[8] = 0;
  *&__p[16] = 0;
  *__p = default_resource;
  vp::vx::data_flow::State<void>::get_value(a1 + 24, __p);
  v17 = *vp::vx::data_flow::Value::view_storage(__p);
  vp::vx::data_flow::Value::~Value(__p);
  v19 = vp::get_log(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (a1)
    {
      v21 = a1 + *(*a1 - 24);
    }

    else
    {
      v21 = 0;
    }

    vp::vx::io::get_log_context_info(buf, v21, "vp::vx::IO_Mic_Ref_Sync_Node_Factory]", 36);
    v22 = buf[23];
    v23 = *&buf[8];
    v25 = vp::get_log(v24);
    v20 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if ((v22 & 0x80u) == 0)
      {
        v26 = v22;
      }

      else
      {
        v26 = v23;
      }

      if (buf[23] >= 0)
      {
        v27 = buf;
      }

      else
      {
        v27 = *buf;
      }

      *__p = 136315650;
      *&__p[4] = v27;
      if (v26)
      {
        v28 = " ";
      }

      else
      {
        v28 = "";
      }

      *&__p[12] = 2080;
      *&__p[14] = v28;
      *&__p[22] = 1024;
      *&__p[24] = v17;
      _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_DEFAULT, "%s%screating mic-ref-sync node with time delta of %d samples", __p, 0x1Cu);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v29 = std::pmr::get_default_resource(v20);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = v29;
  vp::vx::data_flow::State<void>::get_value(a1 + 12, buf);
  v30 = vp::vx::data_flow::Value::view_storage(buf);
  *__p = *v30;
  *&__p[16] = *(v30 + 16);
  v42 = *(v30 + 32);
  vp::vx::data_flow::Value::~Value(buf);
  *&v38 = 0;
  v37 = std::pmr::get_default_resource(v31);
  vp::vx::data_flow::State<void>::get_value(a1 + 18, &v37);
  v32 = vp::vx::data_flow::Value::view_storage(&v37);
  *buf = *v32;
  *&buf[16] = *(v32 + 16);
  v40 = *(v32 + 32);
  vp::vx::data_flow::Value::~Value(&v37);
  v34 = std::pmr::get_default_resource(v33);
  *&v38 = 0;
  v37 = v34;
  vp::vx::data_flow::State<void>::get_value(a1 + 6, &v37);
  vp::vx::data_flow::Value::view_storage(&v37);
  vp::vx::data_flow::Value::~Value(&v37);
  v36 = std::pmr::get_default_resource(v35);
  *&v38 = 0;
  v37 = v36;
  vp::vx::data_flow::State<void>::get_value(a1 + 30, &v37);
  vp::vx::data_flow::Value::view_storage(&v37);
  vp::vx::data_flow::Value::~Value(&v37);
  *&v37 = 0;
  *(&v37 + 1) = a2;
  v38 = xmmword_2727566D0;
  *((*(*a2 + 16))(a2, 144, 8) + 120) = &unk_2881C6630;
  operator new();
}

void sub_27265B180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t default_resource, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::io::nodes::Mic_Ref_Sync_Node,vp::Allocator_Delete<vp::vx::io::nodes::Mic_Ref_Sync_Node>>::reset[abi:ne200100](&a9, 0);
    v21 = __cxa_begin_catch(exception_object);
    a9 = 0;
    default_resource = std::pmr::get_default_resource(v21);
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    __cxa_end_catch();
    JUMPOUT(0x27265B02CLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<vp::vx::io::nodes::Mic_Ref_Sync_Node,vp::Allocator_Delete<vp::vx::io::nodes::Mic_Ref_Sync_Node>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 104), 0);
    std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 96), 0);
    *(v2 + 120) = &unk_2881C6630;
    v4 = *(v2 + 136);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::chrono::duration<long long,std::ratio<1l,1000l>>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<int>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void sub_27265B5C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "mic-ref-sync I/O block size is %u", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 24))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B8088;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8088;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8088;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v10 = v7;
      v11 = *(a1 + 8);
      if (v11)
      {
        CA::StreamDescription::AsString(&__p, a3, v8, v9);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v16, "mic-ref-sync microphone I/O format is %s", v12, p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = *&v16.__r_.__value_.__l.__data_;
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v16.__r_.__value_.__r.__words[1] + 7);
        *(&__p.__r_.__value_.__s + 23) = *(&v16.__r_.__value_.__s + 23);
        v15 = 1;
        (*(*v11 + 24))(v11, v6, &__p);
        if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B80D0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B80D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B80D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v10 = v7;
      v11 = *(a1 + 8);
      if (v11)
      {
        CA::StreamDescription::AsString(&__p, a3, v8, v9);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v16, "mic-ref-sync reference I/O format is %s", v12, p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = *&v16.__r_.__value_.__l.__data_;
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v16.__r_.__value_.__r.__words[1] + 7);
        *(&__p.__r_.__value_.__s + 23) = *(&v16.__r_.__value_.__s + 23);
        v15 = 1;
        (*(*v11 + 24))(v11, v6, &__p);
        if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B8118;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8118;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_format(vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8118;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,int const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<void ()(unsigned int,int const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<int>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,int const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8160;
  std::__function::__value_func<void ()(unsigned int,int const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<int>::register_listener(std::function<void ()(unsigned int,int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8160;
  std::__function::__value_func<void ()(unsigned int,int const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "mic-ref-sync time delta is %d samples", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 24))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B81A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B81A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1},std::allocator<void vp::vx::observe_uplink<int,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<int> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_mic_ref_time_delta(vp::vx::data_flow::State<int>)::$_0)::{lambda(unsigned int,int const&)#1}>,void ()(unsigned int,int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B81A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::chrono::duration<long long,std::ratio<1l,1000l>>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9570;
  std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>::register_listener(std::function<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9570;
  std::__function::__value_func<void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      v10 = *(a1 + 8);
      if (v10)
      {
        caulk::make_string(&v14, "mic-ref-sync reference audio ring buffer capacity is %lld milliseconds", v8, *a3);
        *__p = *&v14.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v14.__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        v13 = 1;
        (*(*v10 + 24))(v10, v6, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B81F0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B81F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1},std::allocator<void vp::vx::observe_uplink<std::chrono::duration<long long,std::ratio<1l,1000l>>,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>> &,vp::vx::IO_Mic_Ref_Sync_Node_Factory::set_ref_audio_ring_buffer_capacity(vp::vx::data_flow::State<std::chrono::duration<long long,std::ratio<1l,1000l>>>)::$_0)::{lambda(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)#1}>,void ()(unsigned int,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B81F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void virtual thunk tovp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer(vp::vx::IO_Node_Audio_Capturer *this)
{
  vp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer((this + *(*this - 24)));
}

void vp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer(vp::vx::IO_Node_Audio_Capturer *this)
{
  v18 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B8240;
  *(this + 14) = &unk_2881B82D8;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::IO_Node_Audio_Capturer]", 30);
    v3 = v13;
    v4 = v13;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v13;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = this + 72;
  std::vector<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = this + 40;
  std::vector<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture>>::__destroy_vector::operator()[abi:ne200100](__p);
  *this = off_2881B8358;
  *(this + 14) = off_2881B83F0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 14) = &unk_2881C6630;
  v11 = *(this + 16);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  vp::vx::IO_Node_Audio_Capturer::~IO_Node_Audio_Capturer(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t **std::vector<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7, v4);
        }
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    v9 = v5[3];
    v10 = (v5[2] - v4) >> 3;

    return std::allocator_traits<vp::Allocator<vp::Audio_Capture>>::deallocate[abi:ne200100](v9, v4, v10);
  }

  return result;
}

void vp::vx::IO_Node_Audio_Capturer::process(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  *buf = 0x34002E00000000;
  *&buf[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/IO_Node_Audio_Capturer_Factory.cpp";
  v44 = 0uLL;
  *&buf[16] = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v45);
  v12 = v45;
  *a6 = 0;
  *(a6 + 4) = 3407918;
  *(a6 + 8) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/IO_Node_Audio_Capturer_Factory.cpp";
  *(a6 + 24) = 0uLL;
  *(a6 + 40) = v12;
  *(a6 + 48) = 0;
  if (a3)
  {
    v13 = 0;
    v14 = (a2 + 16);
    do
    {
      v15 = *(a1 + 40);
      if (v13 < (*(a1 + 48) - v15) >> 3)
      {
        v16 = *(v15 + 8 * v13);
        if (v16)
        {
          v17 = vp::vx::detail::capture(v16, *(a1 + 104), *(v14 - 2), *v14, *(v14 - 1));
          if ((v17 & 1) == 0)
          {
            v18 = vp::get_log(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              vp::vx::io::get_log_context_info(&__p, a1 + *(*a1 - 24), "vp::vx::IO_Node_Audio_Capturer]", 30);
              v36 = v42;
              v34 = v41;
              log = vp::get_log(v19);
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                v20 = v34;
                if ((v36 & 0x80u) == 0)
                {
                  v20 = v36;
                }

                p_p = &__p;
                if ((v42 & 0x80u) != 0)
                {
                  p_p = __p;
                }

                *buf = 136315650;
                v22 = v20 == 0;
                v23 = " ";
                if (v22)
                {
                  v23 = "";
                }

                *&buf[4] = p_p;
                *&buf[12] = 2080;
                *&buf[14] = v23;
                *&buf[22] = 2048;
                *&v44 = v13;
                _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_ERROR, "%s%sfailed to capture data for input %lu", buf, 0x20u);
              }

              if (v42 < 0)
              {
                operator delete(__p);
              }
            }
          }
        }
      }

      ++v13;
      v14 += 6;
    }

    while (a3 != v13);
  }

  (*(**(a1 + 8) + 80))(buf);
  caulk::expected<void,vp::vx::io::Error>::operator=(a6, buf);
  if ((v46 & 1) == 0 && SHIBYTE(v44) < 0)
  {
    (*(*v45 + 24))(v45, *&buf[16], *(&v44 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  if (a5)
  {
    v24 = 0;
    v25 = (a4 + 16);
    do
    {
      v26 = *(a1 + 72);
      if (v24 < (*(a1 + 80) - v26) >> 3)
      {
        v27 = *(v26 + 8 * v24);
        if (v27)
        {
          v28 = vp::vx::detail::capture(v27, *(a1 + 104), *(v25 - 2), *v25, *(v25 - 1));
          if ((v28 & 1) == 0)
          {
            v29 = vp::get_log(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              vp::vx::io::get_log_context_info(&__p, a1 + *(*a1 - 24), "vp::vx::IO_Node_Audio_Capturer]", 30);
              v37 = v42;
              v35 = v41;
              loga = vp::get_log(v30);
              if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
              {
                v31 = v35;
                if ((v37 & 0x80u) == 0)
                {
                  v31 = v37;
                }

                if ((v42 & 0x80u) == 0)
                {
                  v32 = &__p;
                }

                else
                {
                  v32 = __p;
                }

                *buf = 136315650;
                v22 = v31 == 0;
                v33 = " ";
                if (v22)
                {
                  v33 = "";
                }

                *&buf[4] = v32;
                *&buf[12] = 2080;
                *&buf[14] = v33;
                *&buf[22] = 2048;
                *&v44 = v24;
                _os_log_impl(&dword_2724B4000, loga, OS_LOG_TYPE_ERROR, "%s%sfailed to capture data for output %lu", buf, 0x20u);
              }

              if (v42 < 0)
              {
                operator delete(__p);
              }
            }
          }
        }
      }

      ++v24;
      v25 += 6;
    }

    while (a5 != v24);
  }
}

void sub_27265D2A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::detail::capture(AudioBufferList *a1, int a2, uint64_t a3, const AudioTimeStamp *a4, double *a5)
{
  if (a2 == 1)
  {
    vp::Audio_Capture::write_async(v8, a1, a3, a4, a5);
    v5 = v8[4];
  }

  else if (!a2)
  {
    if (a5)
    {
      v6 = (*(*&a1->mNumberBuffers + 96))(a1, a4, a3, 1, *a5);
    }

    else
    {
      v6 = (*(*&a1->mNumberBuffers + 96))(a1, a4, a3, 1, -1);
    }

    v5 = v6 == 0;
  }

  return v5 & 1;
}

void vp::vx::IO_Node_Audio_Capturer_Factory::new_node_decorator(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v112 = *MEMORY[0x277D85DE8];
  *&__src[8] = 0;
  *&v109 = 0;
  *__src = std::pmr::get_default_resource(a1);
  vp::vx::data_flow::State<void>::get_value((a1 + 24), __src);
  v7 = *vp::vx::data_flow::Value::view_storage(__src);
  vp::vx::data_flow::Value::~Value(__src);
  if (v7 == 1)
  {
    v79 = a5;
    v96 = 0;
    v98 = 0uLL;
    default_resource = std::pmr::get_default_resource(v8);
    v9 = *a3;
    v110 = 0u;
    v111 = 0u;
    *__src = 0u;
    v109 = 0u;
    v95 = *(a1 + 56);
    v10 = localtime(&v95);
    strftime(__src, 0x40uLL, "%Y%m%d.%H%M%S", v10);
    v94.__val_ = 0;
    v94.__cat_ = std::system_category();
    std::__fs::filesystem::__create_directories((a1 + 64), &v94);
    v11 = 0;
    v107 = 0x100000000;
    do
    {
      v80 = v11;
      v84 = *&__src[v11 - 8];
      v12 = (*(*v9 + 48))(v9);
      if (v12)
      {
        v13 = 0;
        v14 = 32 * (v84 != 0);
        v15 = a1 + 120 + v14;
        v16 = "output";
        if (!v84)
        {
          v16 = "input";
        }

        v81 = v16;
        v85 = v12;
        do
        {
          *__p = a2;
          *&__p[4] = v13;
          boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::find(&v93, v15, __p);
          v17 = *(v15 + 8);
          v18 = *(v15 + 16);
          if (v17)
          {
            v19 = 1;
          }

          else
          {
            v19 = v18 == 0;
          }

          if (!v19)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (v93 != (v17 + 32 * v18))
          {
            if (*(a1 + 87) < 0)
            {
              std::string::__init_copy_ctor_external(&v92, *(a1 + 64), *(a1 + 72));
            }

            else
            {
              v92 = *(a1 + 64);
            }

            std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v92, "vp.");
            v20 = (&v107 + 7);
            do
            {
              v21 = v20->__r_.__value_.__s.__data_[1];
              v20 = (v20 + 1);
            }

            while (v21);
            std::string::append[abi:ne200100]<char const*,0>(&v92, __src, v20);
            std::string::append(&v92, ".", 1uLL);
            caulk::make_string(__p, "%03u", v22, *(a1 + 112));
            if (__p[23] >= 0)
            {
              v23 = __p;
            }

            else
            {
              v23 = *__p;
            }

            if (__p[23] >= 0)
            {
              v24 = __p[23];
            }

            else
            {
              v24 = *&__p[8];
            }

            std::string::append(&v92, v23, v24);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            std::string::append(&v92, ".", 1uLL);
            v25 = std::string::basic_string[abi:ne200100]<0>(&v99, "????");
            *__p = std::pmr::get_default_resource(v25);
            *&__p[8] = 0;
            *&__p[16] = 0;
            vp::vx::data_flow::State<void>::get_value((a1 + 88), __p);
            v26 = vp::vx::data_flow::Value::view_storage(__p);
            v27 = *(v26 + 16);
            *v89 = *v26;
            *&v90 = v27;
            *(v26 + 8) = 0;
            *(v26 + 16) = 0;
            *v26 = 0;
            vp::vx::data_flow::Value::~Value(__p);
            if (SHIBYTE(v100) < 0)
            {
              operator delete(v99);
            }

            if ((SBYTE7(v90) & 0x80u) == 0)
            {
              v28 = v89;
            }

            else
            {
              v28 = v89[0];
            }

            if ((SBYTE7(v90) & 0x80u) == 0)
            {
              v29 = BYTE7(v90);
            }

            else
            {
              v29 = v89[1];
            }

            std::string::append(&v92, v28, v29);
            if (SBYTE7(v90) < 0)
            {
              operator delete(v89[0]);
            }

            std::string::append(&v92, ".", 1uLL);
            v30 = *(v93 + 31);
            if (v30 >= 0)
            {
              v31 = (v93 + 2);
            }

            else
            {
              v31 = *(v93 + 1);
            }

            if (v30 >= 0)
            {
              v32 = *(v93 + 31);
            }

            else
            {
              v32 = *(v93 + 2);
            }

            std::string::append(&v92, v31, v32);
            std::string::append(&v92, ".caf", 4uLL);
            (*(*v9 + 56))(__p, v9, v13, v84);
            vp::Audio_Capture::create(&v91, &v92, __p, *(a1 + 52));
            if ((v105 & 1) == 0 && SHIBYTE(v103) < 0)
            {
              v33 = (*(*v104 + 24))(v104, *&__p[16], v103 & 0x7FFFFFFFFFFFFFFFLL, 1);
            }

            if (v91)
            {
              log = vp::get_log(v33);
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                log_context_info = vp::get_log_context_info(&v99, a1, "vp::vx::IO_Node_Audio_Capturer_Factory]", 38);
                v36 = HIBYTE(v100);
                v37 = v100;
                v38 = vp::get_log(log_context_info);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  if ((v36 & 0x80u) == 0)
                  {
                    v39 = v36;
                  }

                  else
                  {
                    v39 = v37;
                  }

                  v40 = &v99;
                  if (v100 < 0)
                  {
                    v40 = v99;
                  }

                  v19 = v39 == 0;
                  v41 = " ";
                  if (v19)
                  {
                    v41 = "";
                  }

                  v42 = &v92;
                  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v42 = v92.__r_.__value_.__r.__words[0];
                  }

                  *__p = 136316418;
                  *&__p[4] = v40;
                  *&__p[12] = 2080;
                  *&__p[14] = v41;
                  *&__p[22] = 2080;
                  *&__p[24] = v42;
                  LOWORD(v103) = 1024;
                  *(&v103 + 2) = a2;
                  HIWORD(v103) = 2080;
                  v104 = v81;
                  v105 = 1024;
                  v106 = v13;
                  _os_log_impl(&dword_2724B4000, v38, OS_LOG_TYPE_DEFAULT, "%s%scapture audio to %s for node %u %s terminal %u", __p, 0x36u);
                }

                if (SHIBYTE(v100) < 0)
                {
                  operator delete(v99);
                }
              }

              v43 = v96;
              if (!v96)
              {
                v89[0] = 0;
                v89[1] = a4;
                v90 = xmmword_2727566E0;
                v44 = (*(*a4 + 16))(a4, 136, 8);
                v45 = *a3;
                *a3 = 0;
                v100 = *(a3 + 8);
                v46 = *(a3 + 24);
                v99 = v45;
                v101 = v46;
                *(v44 + 112) = &unk_2881C6630;
                operator new();
              }

              while (1)
              {
                v60 = v43 + v14 + 40;
                v59 = *v60;
                v62 = (v43 + v14 + 48);
                v61 = *v62;
                if (v13 <= (*v62 - *v60) >> 3)
                {
                  break;
                }

                v47 = *(v43 + v14 + 56);
                if (v61 >= v47)
                {
                  v49 = v61 - v59;
                  v50 = v49 + 1;
                  if ((v49 + 1) >> 61)
                  {
                    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
                  }

                  v51 = v47 - v59;
                  if (v51 >> 2 > v50)
                  {
                    v50 = v51 >> 2;
                  }

                  if (v51 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v52 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v52 = v50;
                  }

                  v103 = v43 + v14 + 64;
                  if (v52)
                  {
                    v53 = std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::allocate[abi:ne200100](v43 + v14 + 64, v52);
                  }

                  else
                  {
                    v53 = 0;
                  }

                  v54 = (v53 + 8 * v49);
                  *__p = v53;
                  *&__p[8] = v54;
                  *&__p[24] = v53 + 8 * v52;
                  *v54 = 0;
                  *&__p[16] = v54 + 1;
                  v55 = *(v60 + 8);
                  v56 = (v54 + *v60 - v55);
                  std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::Audio_Capture>,vp::Audio_Capture*>(*v60, v55, v56);
                  v57 = *v60;
                  *v60 = v56;
                  v58 = *(v60 + 16);
                  v87 = *&__p[16];
                  *&__p[8] = v57;
                  *&__p[16] = v57;
                  *(v60 + 8) = v87;
                  *&__p[24] = v58;
                  *__p = v57;
                  std::__split_buffer<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture> &>::~__split_buffer(__p);
                  v48 = v87;
                  v43 = v96;
                }

                else
                {
                  *v61 = 0;
                  v48 = v61 + 1;
                }

                *v62 = v48;
              }

              v63 = *(v43 + v14 + 56);
              if (v61 >= v63)
              {
                v65 = v61 - v59;
                v66 = v65 + 1;
                if ((v65 + 1) >> 61)
                {
                  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
                }

                v67 = v63 - v59;
                if (v67 >> 2 > v66)
                {
                  v66 = v67 >> 2;
                }

                if (v67 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v68 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v68 = v66;
                }

                v103 = v60 + 24;
                if (v68)
                {
                  v69 = std::pmr::polymorphic_allocator<vp::services::System_Status::Media_Status_Domain::Camera_Capture_Attribution>::allocate[abi:ne200100](v60 + 24, v68);
                }

                else
                {
                  v69 = 0;
                }

                v70 = (v69 + 8 * v65);
                *__p = v69;
                *&__p[8] = v70;
                *&__p[24] = v69 + 8 * v68;
                *v70 = v91;
                v91 = 0;
                *&__p[16] = v70 + 1;
                v71 = *(v60 + 8);
                v72 = (v70 + *v60 - v71);
                std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::Audio_Capture>,vp::Audio_Capture*>(*v60, v71, v72);
                v73 = *v60;
                *v60 = v72;
                v74 = *(v60 + 16);
                v88 = *&__p[16];
                *&__p[8] = v73;
                *&__p[16] = v73;
                *(v60 + 8) = v88;
                *&__p[24] = v74;
                *__p = v73;
                std::__split_buffer<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture> &>::~__split_buffer(__p);
                v75 = v91;
                *v62 = v88;
                if (v75)
                {
                  (*(*v75 + 8))(v75);
                }
              }

              else
              {
                v64 = v91;
                v91 = 0;
                *v61 = v64;
                *v62 = v61 + 1;
              }
            }

            if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v92.__r_.__value_.__l.__data_);
            }
          }

          ++v13;
        }

        while (v13 != v85);
      }

      v11 = v80 + 4;
    }

    while (v80 != 4);
    v76 = v96;
    if (v96)
    {
      v96 = 0;
      v77 = default_resource;
      *v79 = v76;
      *(v79 + 8) = v77;
      *(v79 + 16) = v98;
      std::unique_ptr<vp::vx::IO_Node_Audio_Capturer,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer>>::reset[abi:ne200100](&v96, 0);
      return;
    }

    std::unique_ptr<vp::vx::IO_Node_Audio_Capturer,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer>>::reset[abi:ne200100](&v96, 0);
    a5 = v79;
  }

  v78 = *a3;
  *a3 = 0;
  *a5 = v78;
  *(a5 + 8) = *(a3 + 8);
  *(a5 + 24) = *(a3 + 24);
}

void sub_27265DE78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::unique_ptr<vp::vx::IO_Node_Audio_Capturer,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::find(_DWORD **a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v21 = v3;
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

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,true>,std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>(a1, &v21, v3 + 32 * v4, *a3, a3[1]);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
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

  v13 = (v10 + 32 * v11);
  v14 = *a1;
  if (*a1 != v13)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 >= *v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }

    if (*a3 == *v14)
    {
      v16 = a3[1];
      v17 = v14[1];
      v18 = v16 >= v17;
      v19 = v16 == v17;
      v20 = -1;
      if (v18)
      {
        v20 = 1;
      }

      if (v19)
      {
        v15 = 0;
      }

      else
      {
        v15 = v20;
      }
    }

    if (v15 < 0)
    {
      *a1 = v13;
    }
  }

  return result;
}

uint64_t *std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::Audio_Capture>,vp::Audio_Capture*>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *v5++ = 0;
      *a3++ = v6;
    }

    while (v5 != a2);
    do
    {
      result = *v4;
      *v4 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      ++v4;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<vp::Audio_Capture,vp::Allocator<vp::Audio_Capture> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<vp::Audio_Capture>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 3);
  }

  return a1;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,true>,std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>(void *result, void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = *a2;
  if (*a2 != a3)
  {
    v6 = (a3 - v5) >> 5;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = v6 >> 1;
      v8 = &v5[8 * (v6 >> 1)];
      if (*v8 >= a4)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (*v8 == a4)
      {
        v10 = v8[1];
        v11 = v10 == a5;
        v9 = v10 >= a5 ? 1 : -1;
        if (v11)
        {
          v9 = 0;
        }
      }

      if (v9 < 0)
      {
        v5 = v8 + 8;
        *a2 = v8 + 8;
        v7 = v6 + ~v7;
      }

      v6 = v7;
    }

    while (v7);
  }

  *result = v5;
  return result;
}

void vp::vx::IO_Node_Audio_Capturer_Factory::~IO_Node_Audio_Capturer_Factory(vp::vx::IO_Node_Audio_Capturer_Factory *this)
{
  *this = &unk_2881B8328;
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 19);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 15);
  vp::vx::data_flow::State<void>::~State(this + 22);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  vp::vx::data_flow::State<void>::~State(this + 6);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B8328;
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 19);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 15);
  vp::vx::data_flow::State<void>::~State(this + 22);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  vp::vx::data_flow::State<void>::~State(this + 6);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        if (v6)
        {
          v10 = "I/O node audio captures are enabled";
        }

        else
        {
          v10 = "I/O node audio captures are disabled";
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v10);
        v13 = 1;
        (*(*v9 + 16))(v9, v5, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B84D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B84D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Capturer_Factory::set_should_enable_audio_capturers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B84D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::IO_Node_Audio_Capturer_Factory::set_port_type_four_char_code(__n128 *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1->n128_u64[1];
  v3 = a1[1].n128_u64[0];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4[0] = &unk_2881B85C8;
  v4[1] = v2;
  v4[2] = v3;
  v4[3] = v4;
  std::__function::__value_func<void ()(unsigned int,std::string const&)>::__value_func[abi:ne200100](v5, v4);
  v6 = 0;
  operator new();
}

void sub_27265E760(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<void ()(unsigned int,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,std::string const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8580;
  std::__function::__value_func<void ()(unsigned int,std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(unsigned int,std::string const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8580;
  std::__function::__value_func<void ()(unsigned int,std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::operator()(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        LOBYTE(__p) = 0;
        v10 = 0;
        (*(*v7 + 16))(v7, v4, &__p);
        if (v10 == 1 && v9 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B85C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B85C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1},std::allocator<void vp::vx::observe_global<std::string>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::string> &)::{lambda(unsigned int,std::string const&)#1}>,void ()(unsigned int,std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B85C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

__n128 vp::vx::IO_Node_Audio_Capturer_Factory::add_audio_capturer(uint64_t a1, unsigned int a2, unsigned int a3, int a4, __n128 *a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = boost::container::flat_map<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<std::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_subscript((a1 + 32 * (a4 != 0) + 120), v9);
  v7 = v6;
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  result = *a5;
  v7[1].n128_u64[0] = a5[1].n128_u64[0];
  *v7 = result;
  a5[1].n128_u8[7] = 0;
  a5->n128_u8[0] = 0;
  return result;
}

unsigned int *boost::container::flat_map<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<std::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_subscript(const char *a1, unsigned int *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
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

  v6 = v3;
  if (v4)
  {
    v7 = *a2;
    v8 = a2[1];
    v6 = v3;
    v9 = *(a1 + 2);
    do
    {
      if (v9 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v9 >> 1;
      v11 = &v6[8 * (v9 >> 1)];
      if (*v11 >= v7)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (*v11 == v7)
      {
        v13 = v11[1];
        v14 = v13 == v8;
        v12 = v13 >= v8 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v15 = v11 + 8;
      v9 += ~v10;
      if (v12 < 0)
      {
        v6 = v15;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
  }

  v16 = v3 + 32 * v4;
  if (v6 == v16)
  {
    goto LABEL_36;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*a2 >= *v6)
  {
    v17 = 1;
  }

  else
  {
    v17 = -1;
  }

  if (*a2 == *v6)
  {
    v18 = a2[1];
    v19 = v6[1];
    v20 = v18 >= v19;
    v21 = v18 == v19;
    v17 = -1;
    if (v20)
    {
      v17 = 1;
    }

    if (v21)
    {
      v17 = 0;
    }
  }

  if (v17 < 0)
  {
LABEL_36:
    v22 = *a2;
    v53 = *a2;
    __p = 0uLL;
    v55 = 0;
    v23 = "this->priv_in_range_or_end(hint)";
    v24 = 879;
    v25 = "flat_tree.hpp";
    v26 = "insert_unique";
    if (v3 > v6 || v6 > v16)
    {
      goto LABEL_99;
    }

    v51 = 0;
    if (v6 == v16)
    {
      v32 = v16;
    }

    else
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v27 = -1;
      if (*v6 <= v22)
      {
        v27 = 1;
      }

      if (*v6 == v22)
      {
        v28 = v6[1];
        v29 = v28 == HIDWORD(v22);
        v30 = v28 > HIDWORD(v22);
        v31 = -1;
        if (!v30)
        {
          v31 = 1;
        }

        if (v29)
        {
          v27 = 0;
        }

        else
        {
          v27 = v31;
        }
      }

      v32 = v6;
      if ((v27 & 0x80) == 0)
      {
        v52 = v16;
        if ((boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_insert_unique_prepare(v6, &v52, &v53, &v51) & 1) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_64;
      }
    }

    v51 = v6;
    if (v32 != v3)
    {
      if (!v32)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      v33 = *(v32 - 32);
      if (v33 == v22)
      {
        v34 = *(v32 - 28);
        if (v34 >= HIDWORD(v22))
        {
          v35 = -1;
          if (v34 <= HIDWORD(v22))
          {
            v35 = 1;
          }

          if (v34 == HIDWORD(v22))
          {
            v35 = 0;
          }

          if (v35 < 0)
          {
            goto LABEL_61;
          }

          goto LABEL_84;
        }
      }

      else if (v33 >= v22)
      {
        v48 = -1;
        if (v33 <= v22)
        {
          v48 = 1;
        }

        if (v48 < 0)
        {
LABEL_61:
          v52 = v32 - 32;
          if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_insert_unique_prepare(v3, &v52, &v53, &v51))
          {
LABEL_85:
            if (!*(a1 + 1) && v51)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            v50 = v51;
LABEL_88:
            if (SHIBYTE(v55) < 0)
            {
              operator delete(__p);
            }

            v6 = v50;
            if (!v50)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            return v6 + 2;
          }

          goto LABEL_64;
        }

LABEL_84:
        v51 = (v32 - 32);
        goto LABEL_85;
      }
    }

LABEL_64:
    v36 = v51;
    v37 = *(a1 + 1);
    if (v37 > v51)
    {
      goto LABEL_96;
    }

    v38 = *(a1 + 2);
    if (!v37 && v38)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v39 = v37 + 32 * v38;
    if (v51 > v39)
    {
LABEL_96:
      v23 = "this->priv_in_range_or_end(position)";
      v24 = 1862;
      v25 = "vector.hpp";
      v26 = "emplace";
    }

    else
    {
      v40 = *(a1 + 3);
      if (v40 >= v38)
      {
        if (v40 == v38)
        {
          boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>(&v50, a1, v51, &v53);
        }

        else
        {
          if (v39 == v51)
          {
            *v39 = v53;
            v47 = __p;
            *(v39 + 24) = v55;
            *(v39 + 8) = v47;
            v55 = 0;
            __p = 0uLL;
            ++*(a1 + 2);
          }

          else
          {
            v42 = v39 - 32;
            v41 = *(v39 - 32);
            *(v39 + 8) = *(v39 - 24);
            *(v39 + 24) = *(v39 - 8);
            *(v39 - 24) = 0;
            *(v39 - 16) = 0;
            *(v39 - 8) = 0;
            *v39 = v41;
            ++*(a1 + 2);
            if ((v39 - 32) != v36)
            {
              v43 = (v39 - 32);
              do
              {
                v44 = *(v43 - 8);
                v43 -= 8;
                v45 = *(v42 - 28);
                *v42 = v44;
                *(v42 + 4) = v45;
                if (*(v42 + 31) < 0)
                {
                  operator delete(*(v42 + 8));
                }

                *(v42 + 8) = *(v42 - 24);
                *(v42 + 24) = *(v42 - 8);
                *(v42 - 1) = 0;
                *(v42 - 24) = 0;
                v42 = v43;
              }

              while (v43 != v36);
            }

            *v36 = v53;
            if (*(v36 + 31) < 0)
            {
              operator delete(*(v36 + 1));
            }

            v46 = __p;
            *(v36 + 3) = v55;
            *(v36 + 2) = v46;
            HIBYTE(v55) = 0;
            LOBYTE(__p) = 0;
          }

          v50 = v36;
        }

        goto LABEL_88;
      }

      v23 = "this->m_holder.capacity() >= this->m_holder.m_size";
      v24 = 2821;
      v25 = "vector.hpp";
      v26 = "priv_insert_forward_range";
    }

LABEL_99:
    __assert_rtn(v26, v25, v24, v23);
  }

  return v6 + 2;
}

void sub_27265F314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
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
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 32 * v9, 8);
  v16 = v15;
  v30[1] = a2;
  v30[2] = v9;
  v17 = *(a2 + 1);
  v18 = v17 + 32 * *(a2 + 2);
  v19 = v15;
  if (v17 != a3)
  {
    v20 = *(a2 + 1);
    v19 = v15;
    do
    {
      *v19 = *v20;
      v21 = *(v20 + 8);
      *(v19 + 24) = *(v20 + 24);
      *(v19 + 8) = v21;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 8) = 0;
      v20 += 32;
      v19 += 32;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  v22 = *(a4 + 8);
  *(v19 + 24) = *(a4 + 24);
  *(v19 + 8) = v22;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  if (v18 != a3)
  {
    v23 = v19 + 40;
    v24 = a3;
    do
    {
      *(v23 - 8) = *v24;
      v25 = *(v24 + 8);
      *(v23 + 16) = *(v24 + 24);
      *v23 = v25;
      v23 += 32;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 8) = 0;
      v24 += 32;
    }

    while (v24 != v18);
  }

  v30[0] = 0;
  if (v17)
  {
    v26 = *(a2 + 2);
    if (v26)
    {
      v27 = (v17 + 31);
      do
      {
        if (*v27 < 0)
        {
          operator delete(*(v27 - 23));
        }

        v27 += 32;
        --v26;
      }

      while (v26);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 32 * *(a2 + 3), 8);
  }

  v28 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v28;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::~scoped_array_deallocator(v30);
  *a1 = *(a2 + 1) + a3 - v14;
  return result;
}

void sub_27265F5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 32 * *(a1 + 16), 8);
  }

  return a1;
}

unint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v15 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>*,true>,std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>(&v16, &v15, *a2, *a3, a3[1]);
  v7 = v16;
  *a4 = v16;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*a3 >= *v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 255;
  }

  if (*a3 == *v7)
  {
    v9 = a3[1];
    v10 = v7[1];
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = 255;
    if (v11)
    {
      v13 = 1;
    }

    if (v12)
    {
      v8 = 0;
    }

    else
    {
      v8 = v13;
    }
  }

  return v8 >> 7;
}

void virtual thunk tovp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector(vp::vx::IO_Node_Audio_Injector *this)
{
  vp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector((this + *(*this - 24)));
}

void vp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector(vp::vx::IO_Node_Audio_Injector *this)
{
  v18 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B8618;
  *(this + 13) = &unk_2881B86B0;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::IO_Node_Audio_Injector]", 30);
    v3 = v13;
    v4 = v13;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v13;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = this + 72;
  std::vector<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>,vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = this + 40;
  std::vector<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>,vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::__destroy_vector::operator()[abi:ne200100](__p);
  *this = off_2881B8730;
  *(this + 13) = off_2881B87C8;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 13) = &unk_2881C6630;
  v11 = *(this + 15);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  vp::vx::IO_Node_Audio_Injector::~IO_Node_Audio_Injector(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t **std::vector<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>,vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = result;
    v4 = v1[1];
    v5 = v2;
    v6 = v1;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v6 = *v3;
      v5 = **v3;
    }

    v1[1] = v2;
    v7 = v6[3];
    v8 = (v6[2] - v5) >> 5;

    return std::allocator_traits<vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::deallocate[abi:ne200100](v7, v5, v8);
  }

  return result;
}

uint64_t std::__function::__value_func<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void vp::vx::IO_Node_Audio_Injector::process(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  *buf = 0x34002500000000;
  *&buf[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/IO_Node_Audio_Injector_Factory.cpp";
  *v55 = 0uLL;
  *&buf[16] = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v55[16]);
  v12 = *&v55[16];
  *a6 = 0;
  *(a6 + 4) = 3407909;
  *(a6 + 8) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/IO_Node_Audio_Injector_Factory.cpp";
  *(a6 + 24) = 0uLL;
  *(a6 + 40) = v12;
  *(a6 + 48) = 0;
  if (a3)
  {
    v13 = 0;
    v14 = (a2 + 16);
    v15 = 24;
    do
    {
      v16 = *(a1 + 40);
      if (v13 < (*(a1 + 48) - v16) >> 5)
      {
        v17 = *(v16 + v15);
        if (v17)
        {
          v18 = std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::operator()(v17, *(v14 - 2), *(v14 - 1), *v14);
          v19 = v18;
          if (v18)
          {
            v20 = vp::get_log(v18);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              vp::vx::io::get_log_context_info(&v51, a1 + *(*a1 - 24), "vp::vx::IO_Node_Audio_Injector]", 30);
              v42 = v53;
              v40 = v52;
              log = vp::get_log(v21);
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                v22 = v40;
                if (v42 >= 0)
                {
                  v22 = v42;
                }

                if ((v53 & 0x80u) == 0)
                {
                  v23 = &v51;
                }

                else
                {
                  v23 = v51;
                }

                v24 = v22 == 0;
                v25 = " ";
                if (v24)
                {
                  v25 = "";
                }

                v41 = v25;
                v43 = v23;
                caulk::string_from_4cc(&__p, v19);
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315906;
                *&buf[4] = v43;
                *&buf[12] = 2080;
                *&buf[14] = v41;
                *&buf[22] = 2048;
                *v55 = v13;
                *&v55[8] = 2080;
                *&v55[10] = p_p;
                _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_ERROR, "%s%sfailed to inject data for input %lu with status %s", buf, 0x2Au);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              if (v53 < 0)
              {
                operator delete(v51);
              }
            }
          }
        }
      }

      ++v13;
      v15 += 32;
      v14 += 6;
    }

    while (a3 != v13);
  }

  (*(**(a1 + 8) + 80))(buf);
  caulk::expected<void,vp::vx::io::Error>::operator=(a6, buf);
  if ((v56 & 1) == 0 && (v55[15] & 0x80000000) != 0)
  {
    (*(**&v55[16] + 24))(*&v55[16], *&buf[16], *&v55[8] & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  if (a5)
  {
    v27 = 0;
    v28 = (a4 + 16);
    v29 = 24;
    do
    {
      v30 = *(a1 + 72);
      if (v27 < (*(a1 + 80) - v30) >> 5)
      {
        v31 = *(v30 + v29);
        if (v31)
        {
          v32 = std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::operator()(v31, *(v28 - 2), *(v28 - 1), *v28);
          v33 = v32;
          if (v32)
          {
            v34 = vp::get_log(v32);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              vp::vx::io::get_log_context_info(&v51, a1 + *(*a1 - 24), "vp::vx::IO_Node_Audio_Injector]", 30);
              loga = v53;
              v44 = v52;
              v49 = vp::get_log(v35);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v36 = v44;
                if (loga >= 0)
                {
                  v36 = loga;
                }

                if ((v53 & 0x80u) == 0)
                {
                  v37 = &v51;
                }

                else
                {
                  v37 = v51;
                }

                v24 = v36 == 0;
                v38 = " ";
                if (v24)
                {
                  v38 = "";
                }

                v45 = v38;
                logb = v37;
                caulk::string_from_4cc(&__p, v33);
                v39 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v39 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315906;
                *&buf[4] = logb;
                *&buf[12] = 2080;
                *&buf[14] = v45;
                *&buf[22] = 2048;
                *v55 = v27;
                *&v55[8] = 2080;
                *&v55[10] = v39;
                _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_ERROR, "%s%sfailed to inject data for output %lu with status %s", buf, 0x2Au);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              if (v53 < 0)
              {
                operator delete(v51);
              }
            }
          }
        }
      }

      ++v27;
      v29 += 32;
      v28 += 6;
    }

    while (a5 != v27);
  }
}

void sub_27265FFA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a2;
  v6 = a3;
  v5 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v7, &v6, &v5);
}

void vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = a3;
  v70 = a2;
  v62 = a5;
  v107 = *MEMORY[0x277D85DE8];
  v8 = (*(**a3 + 48))(*a3, 0);
  MEMORY[0x28223BE20](v8);
  v63 = v9;
  v66 = (&v61 - 2 * v9);
  bzero(v66, v10);
  if (v8)
  {
    v11 = v66 + 1;
    v12 = v8;
    do
    {
      v13 = *v11;
      *(v11 - 1) = 0;
      *v11 = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v11 += 2;
      --v12;
    }

    while (v12);
  }

  v14 = (*(**v6 + 48))(*v6, 1);
  MEMORY[0x28223BE20](v14);
  v61 = v15;
  v65 = (&v61 - 2 * v15);
  bzero(v65, v16);
  if (v14)
  {
    v17 = v65 + 1;
    v18 = v14;
    do
    {
      v19 = *v17;
      *(v17 - 1) = 0;
      *v17 = 0;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v17 += 2;
      --v18;
    }

    while (v18);
  }

  LODWORD(v71) = 0;
  v20 = 0;
  v67 = v14;
  v68 = v8;
  v21 = v70;
  v73 = a1;
  *&v74 = v6;
  *&v72 = a4;
  v64 = v70;
  do
  {
    v69 = v20;
    v22 = *(vp::domains(void)::s_domains + v20);
    if (v22)
    {
      v23 = v67;
    }

    else
    {
      v23 = v68;
    }

    if (v23)
    {
      v24 = 0;
      v25 = v66;
      if (v22)
      {
        v25 = v65;
      }

      v26 = v25 + 1;
      while (1)
      {
        vp::vx::IO_Node_Audio_Injector_Factory::new_audio_player(buf, a1, v21, v24, v22, a4);
        v27 = *buf;
        if (*buf)
        {
          break;
        }

LABEL_62:
        if (v106)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v106);
        }

        ++v24;
        v26 += 2;
        if (v23 == v24)
        {
          goto LABEL_70;
        }
      }

      (*(**v6 + 56))(v75);
      if (v79 != 1)
      {
LABEL_59:
        if ((v79 & 1) == 0 && SHIBYTE(v77) < 0)
        {
          (*(*v78 + 24))(v78, v76, v77 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        goto LABEL_62;
      }

      v96 = (*(**v6 + 32))();
      v28 = vp::Audio_File::get_property<long long,(decltype(nullptr))0>((v27 + 24));
      if (v28 <= 0)
      {
        v30 = 0;
      }

      else
      {
        v30 = -1;
      }

      if (HIDWORD(v28))
      {
        v31 = v30;
      }

      else
      {
        v31 = v28;
      }

      v32 = v31 | 0x100000000;
      if (v29)
      {
        v33 = v32;
      }

      else
      {
        v33 = v28;
      }

      if ((v33 & 0x100000000) == 0)
      {
        v42 = v33;
LABEL_54:
        v6 = v74;
        if (!v42)
        {
          v48 = v106;
          if (v106)
          {
            atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          LODWORD(v71) = v71 + 1;
          v49 = *v26;
          *(v26 - 1) = v27;
          *v26 = v48;
          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }
        }

        goto LABEL_59;
      }

      vp::Audio_File::get_property<CA::StreamDescription,(decltype(nullptr))0>(&v94, (v27 + 24));
      if ((v95 & 1) == 0)
      {
        v42 = LODWORD(v94);
        goto LABEL_53;
      }

      v34 = *(v27 + 40);
      if (v34 <= 0.0)
      {
        v41 = 0;
      }

      else
      {
        *&v97[0] = 0;
        LODWORD(v82) = 8;
        Property = AudioUnitGetProperty(*(v27 + 32), 2u, 2u, 0, v97, &v82);
        v36 = *v97;
        if (Property)
        {
          *&v36 = Property;
        }

        v37 = v36;
        if (Property)
        {
          v37 = INFINITY;
        }

        v38 = *(v27 + 104) + v34 / v37;
        v39 = v94;
        v40 = fmod(v38, v33 / v94);
        *(v27 + 104) = v40;
        v41 = vcvtpd_u64_f64(v39 * v40);
      }

      v42 = AudioUnitUninitialize(*(v27 + 32));
      if (v42)
      {
        goto LABEL_53;
      }

      v42 = AudioUnitSetProperty(*(v27 + 32), 8u, 0, 0, v75, 0x28u);
      if (v42)
      {
        goto LABEL_53;
      }

      v42 = AudioUnitSetProperty(*(v27 + 32), 0xEu, 0, 0, &v96, 4u);
      if (v42)
      {
        goto LABEL_53;
      }

      *&v97[0] = 0;
      LODWORD(inData) = 8;
      vp::Audio_File::get_property(&v82, (v27 + 24), 0x6166696Cu, v97, &inData);
      if (BYTE4(v82) != 1)
      {
        v42 = LODWORD(v82);
        goto LABEL_53;
      }

      v43 = *&v97[0];
      inData = *&v97[0];
      v42 = AudioUnitSetProperty(*(v27 + 32), 0xCEEu, 0, 0, &inData, 8u);
      if (v42 || (v42 = AudioUnitInitialize(*(v27 + 32))) != 0)
      {
LABEL_52:
        v21 = v64;
LABEL_53:
        a1 = v73;
        a4 = v72;
        goto LABEL_54;
      }

      if (v41)
      {
        v102 = 0;
        v99 = 0uLL;
        v100 = 0uLL;
        v98 = 0uLL;
        memset(v97, 0, sizeof(v97));
        v101 = v43;
        *&v103 = v41;
        v44 = v33 - v41;
        *(&v103 + 1) = v44;
        vp::Audio_Unit::set_property<ScheduledAudioFileRegion>(&v82, *(v27 + 32), v97);
        if (BYTE4(v82))
        {
          v90 = 0xFFFFFFFFLL;
          v91 = 0;
          v93 = 0;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = v75[0] * v44 / v94;
          v87 = 0;
          v88 = 0;
          v86 = 0;
          v89 = v43;
          v92 = v33;
          vp::Audio_Unit::set_property<ScheduledAudioFileRegion>(&v80, *(v27 + 32), &v82);
          if (v81 != 1)
          {
            v42 = v80;
            goto LABEL_52;
          }

LABEL_50:
          *&v99 = 0;
          v98 = 0u;
          memset(v97, 0, sizeof(v97));
          *(&v99 + 1) = 1;
          v42 = AudioUnitSetProperty(*(v27 + 32), 0xCE5u, 0, 0, v97, 0x40u);
          if (!v42)
          {
            v46 = v98;
            v45 = v99;
            v47 = v97[1];
            *(v27 + 40) = v97[0];
            *(v27 + 56) = v47;
            *(v27 + 72) = v46;
            *(v27 + 88) = v45;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v103 = 0uLL;
        v99 = 0uLL;
        v100 = 0uLL;
        v98 = 0uLL;
        memset(v97, 0, sizeof(v97));
        v101 = v43;
        v102 = 0xFFFFFFFFLL;
        DWORD2(v103) = v33;
        vp::Audio_Unit::set_property<ScheduledAudioFileRegion>(&v82, *(v27 + 32), v97);
        if (BYTE4(v82) == 1)
        {
          goto LABEL_50;
        }
      }

      v42 = LODWORD(v82);
      goto LABEL_52;
    }

LABEL_70:
    v20 = v69 + 4;
  }

  while (v69 != 4);
  if (v71)
  {
    v75[0] = 0.0;
    *&v75[1] = a4;
    v76 = xmmword_2727566F0;
    v50 = (*(*a4 + 16))(a4, 128, 8);
    v51 = *v6;
    *v6 = 0;
    v82 = v51;
    v72 = *(v6 + 1);
    v83 = v72;
    *&v84 = v6[3];
    *(v50 + 104) = &unk_2881C6630;
    operator new();
  }

  v52 = *v6;
  *v6 = 0;
  v53 = v62;
  *v62 = v52;
  *(v53 + 1) = *(v6 + 1);
  v53[3] = v6[3];
  v54 = v63;
  v55 = (v65 - 1);
  v56 = 16 * v61;
  do
  {
    v57 = *&v55[v56];
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    v56 -= 16;
  }

  while (v56);
  v58 = (v66 - 1);
  v59 = 16 * v54;
  do
  {
    v60 = *&v58[v59];
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    v59 -= 16;
  }

  while (v59);
}

void sub_272660D24(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void vp::vx::IO_Node_Audio_Injector_Factory::new_audio_player(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  v84 = a6;
  v82 = a1;
  v107 = *MEMORY[0x277D85DE8];
  v7 = a2 + 32 * (a5 != 0);
  v87 = __PAIR64__(a4, a3);
  v8 = boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::find(&v105, v7 + 88, &v87);
  v10 = *(v7 + 96);
  v11 = *(v7 + 104);
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

  if (v105.__r_.__value_.__r.__words[0] == v10 + 32 * v11)
  {
    boost::container::throw_length_error("flat_map::at key not found", v9);
  }

  if (*(v105.__r_.__value_.__r.__words[0] + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, *(v105.__r_.__value_.__r.__words[0] + 8), *(v105.__r_.__value_.__r.__words[0] + 16));
  }

  else
  {
    v13 = *(v105.__r_.__value_.__r.__words[0] + 8);
    v95.__r_.__value_.__r.__words[2] = *(v105.__r_.__value_.__r.__words[0] + 24);
    *&v95.__r_.__value_.__l.__data_ = v13;
  }

  MEMORY[0x28223BE20](v8);
  v14 = v78;
  v15 = (a2 + 56);
  if (*(a2 + 79) < 0)
  {
    v15 = *v15;
  }

  v16 = (a2 + 32);
  if (*(a2 + 55) < 0)
  {
    v16 = *v16;
  }

  snprintf(v78, 0x20uLL, "vp.inject.%s.%s.", v15, v16);
  v17 = (a2 + 8);
  v18 = *(a2 + 31);
  v81 = &v79;
  if (v18 < 0)
  {
    v17 = *v17;
  }

  v19 = 0;
  v104[0] = v17;
  v104[1] = "/tmp/";
  v86 = xmmword_272756700;
  v83 = xmmword_272756710;
  v79 = v78;
LABEL_17:
  v20 = 0;
  v80 = v19;
  v94 = *(v104 + v19);
  v103[0] = v14;
  v103[1] = "vp.inject.";
  v103[2] = "iiii.000.";
LABEL_18:
  v21 = 0;
  v85 = v20;
  v22 = *(v103 + v20);
  v102[0] = ".wav";
  v102[1] = ".caf";
  while (1)
  {
    v23 = v102[v21];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v93, &v94);
    if (v22->__r_.__value_.__s.__data_[0] == 47)
    {
      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        *v93.__r_.__value_.__l.__data_ = 0;
        v93.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v93.__r_.__value_.__s.__data_[0] = 0;
        *(&v93.__r_.__value_.__s + 23) = 0;
      }
    }

    else if (std::__fs::filesystem::path::__filename(&v93).__size_)
    {
      std::string::push_back(&v93, 47);
    }

    v24 = (v22 - 1);
    do
    {
      v25 = v24->__r_.__value_.__s.__data_[1];
      v24 = (v24 + 1);
    }

    while (v25);
    std::string::append[abi:ne200100]<char const*,0>(&v93, v22, v24);
    if (*(a2 + 84) == 1)
    {
      caulk::make_string(&v105, "v%u.", v26, *(a2 + 80));
      v27 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v105 : v105.__r_.__value_.__r.__words[0];
      v28 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v105.__r_.__value_.__r.__words[2]) : v105.__r_.__value_.__l.__size_;
      std::string::append(&v93, v27, v28);
      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }
    }

    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v95;
    }

    else
    {
      v29 = v95.__r_.__value_.__r.__words[0];
    }

    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v95.__r_.__value_.__l.__size_;
    }

    std::string::append(&v93, v29, size);
    v31 = strlen(v23);
    std::string::append(&v93, v23, v31);
    std::__fs::filesystem::__status(&v93, 0);
    if (!v105.__r_.__value_.__s.__data_[0] || v105.__r_.__value_.__s.__data_[0] == 255)
    {
      v108.__data_ = (a2 + 152);
      v108.__size_ = &v93;
      boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::find(&v105, v108);
      v32 = *(a2 + 160);
      v33 = *(a2 + 168);
      if (!v32 && v33)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v34 = v32 + 40 * v33;
      v35 = v105.__r_.__value_.__r.__words[0];
      if (v105.__r_.__value_.__r.__words[0] != v34)
      {
        if (v32 > v105.__r_.__value_.__r.__words[0] || v105.__r_.__value_.__r.__words[0] >= v34)
        {
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        v36 = v105.__r_.__value_.__r.__words[0] + 40;
        while (v36 != v34)
        {
          v37 = v35 + 40;
          v36 = boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::operator=(v35, (v35 + 40)) + 80;
          v35 = v37;
        }

        std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(v34 - 40);
        --*(a2 + 168);
      }

      goto LABEL_120;
    }

    v109.__data_ = (a2 + 152);
    v109.__size_ = &v93;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::find(&v92, v109);
    v38 = *(a2 + 160);
    v39 = *(a2 + 168);
    if (!v38 && v39)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v92 == (v38 + 40 * v39))
    {
      v89 = 0;
      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v105, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
      }

      else
      {
        v105 = v93;
      }

      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v105;
      }

      else
      {
        v40 = v105.__r_.__value_.__r.__words[0];
      }

      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v105.__r_.__value_.__l.__size_;
      }

      v42 = MEMORY[0x2743CB370](0, v40, v41, 0, 0);
      v97[0] = v42;
      if (!v42)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
        v42 = v97[0];
      }

      ExtAudioFileOpenURL(v42, &v89);
      if (v97[0])
      {
        CFRelease(v97[0]);
      }

      v43 = v89;
      v89 = 0;
      LOBYTE(v88[0]) = 1;
      v105.__r_.__value_.__r.__words[0] = v43;
      v87 = 0;
      v105.__r_.__value_.__s.__data_[8] = 1;
      vp::Audio_File::~Audio_File(&v87);
      vp::Audio_File::~Audio_File(&v89);
      v87 = 0;
      v44 = v105.__r_.__value_.__r.__words[0];
      v105.__r_.__value_.__r.__words[0] = 0;
      v91 = v44;
      vp::Audio_File::~Audio_File(&v87);
      vp::Audio_File::~Audio_File(&v105);
      if (!v91 || ((*&v105.__r_.__value_.__l.__data_ = v86, LODWORD(v105.__r_.__value_.__r.__words[2]) = 0, v87 = 0, Next = AudioComponentFindNext(0, &v105), (v46 = AudioComponentInstanceNew(Next, &v87)) == 0) ? (v89 = v87, v87 = 0, v47 = 1) : (v47 = 0, LODWORD(v89) = v46), v90 = v47, vp::Audio_Unit::~Audio_Unit(&v87), v90 != 1))
      {
LABEL_116:
        vp::Audio_File::~Audio_File(&v91);
        v38 = *(a2 + 160);
        v39 = *(a2 + 168);
        if (v38)
        {
          goto LABEL_118;
        }

        goto LABEL_117;
      }

      v96 = v84;
      v87 = 0;
      v88[0] = v84;
      *&v88[1] = v83;
      v48 = (*(*v84 + 16))(v84, 112, 8);
      v99 = v48;
      v97[0] = &v99;
      v97[1] = &v96;
      v98 = 0;
      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v105, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
      }

      else
      {
        v105 = v93;
      }

      v49 = v91;
      v91 = 0;
      v50 = v89;
      v89 = 0;
      *(v48 + 16) = *(&v105.__r_.__value_.__l + 2);
      *(v48 + 24) = v49;
      *v48 = *&v105.__r_.__value_.__l.__data_;
      memset(&v105, 0, sizeof(v105));
      v100 = 0;
      v101 = 0;
      *(v48 + 32) = v50;
      *(v48 + 40) = 0u;
      *(v48 + 56) = 0u;
      *(v48 + 72) = 0u;
      *(v48 + 88) = 0;
      *(v48 + 96) = 1;
      *(v48 + 104) = 0;
      if (!v49)
      {
        _os_crash();
        __break(1u);
LABEL_145:
        _os_crash();
        __break(1u);
LABEL_146:
        v74 = 879;
        v75 = "insert_unique";
        v76 = "flat_tree.hpp";
        v77 = "this->priv_in_range_or_end(hint)";
LABEL_152:
        __assert_rtn(v75, v76, v74, v77);
      }

      if (!v50)
      {
        goto LABEL_145;
      }

      vp::Audio_Unit::~Audio_Unit(&v100);
      vp::Audio_File::~Audio_File(&v101);
      v51 = v99;
      v98 = 1;
      std::__exception_guard_exceptions<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player * std::pmr::polymorphic_allocator<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>::new_object[abi:ne200100]<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,std::__fs::filesystem::path &,vp::Audio_File,vp::Audio_Unit>(std::__fs::filesystem::path &,vp::Audio_File,vp::Audio_Unit &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v97);
      std::unique_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::reset[abi:ne200100](&v87, v51);
      v53 = v92;
      *&v105.__r_.__value_.__l.__data_ = *&v93.__r_.__value_.__l.__data_;
      v54 = v93.__r_.__value_.__r.__words[2];
      memset(&v93, 0, sizeof(v93));
      v105.__r_.__value_.__r.__words[2] = v54;
      *&v106 = v87;
      if (v87)
      {
        operator new();
      }

      v106 = 0uLL;
      v87 = 0;
      v55 = *(a2 + 160);
      if (v55 > v92)
      {
        goto LABEL_146;
      }

      v56 = *(a2 + 168);
      if (!v55 && v56)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v57 = &v55[40 * v56];
      if (v92 > v57)
      {
        goto LABEL_146;
      }

      v101 = 0;
      if (v92 != v57)
      {
        if (!v92)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        v52.__data_ = v92;
        if ((std::__fs::filesystem::operator<=>[abi:ne200100](&v105, v52) & 0x80) == 0)
        {
          v97[0] = v57;
          v110.__data_ = v97;
          v110.__size_ = &v105;
          if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::priv_insert_unique_prepare(v53, v110, &v101))
          {
            goto LABEL_110;
          }

LABEL_100:
          v60 = v101;
          v61 = *(a2 + 160);
          if (v61 > v101)
          {
            goto LABEL_149;
          }

          v62 = *(a2 + 168);
          if (!v61 && v62)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          v63 = v61 + 40 * v62;
          if (v101 > v63)
          {
LABEL_149:
            v74 = 1862;
            v75 = "emplace";
            v76 = "vector.hpp";
            v77 = "this->priv_in_range_or_end(position)";
            goto LABEL_152;
          }

          v64 = *(a2 + 176);
          if (v64 < v62)
          {
            v74 = 2821;
            v75 = "priv_insert_forward_range";
            v76 = "vector.hpp";
            v77 = "this->m_holder.capacity() >= this->m_holder.m_size";
            goto LABEL_152;
          }

          if (v64 == v62)
          {
            boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>*,boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>(&v100, (a2 + 152), v101, &v105);
            v60 = v100;
          }

          else if (v63 == v101)
          {
            v67 = *&v105.__r_.__value_.__l.__data_;
            *(v63 + 16) = *(&v105.__r_.__value_.__l + 2);
            *v63 = v67;
            memset(&v105, 0, sizeof(v105));
            *(v63 + 24) = v106;
            v106 = 0uLL;
            ++*(a2 + 168);
          }

          else
          {
            v65 = v63 - 40;
            *v63 = *(v63 - 40);
            *(v63 + 16) = *(v63 - 24);
            *(v63 - 40) = 0;
            *(v63 - 32) = 0;
            *(v63 + 24) = *(v63 - 16);
            *(v63 - 24) = 0;
            *(v63 - 16) = 0;
            *(v63 - 8) = 0;
            ++*(a2 + 168);
            if ((v63 - 40) != v60)
            {
              do
              {
                v66 = (v65 - 40);
                boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::operator=(v65, (v65 - 40));
                v65 = v66;
              }

              while (v66 != v60);
            }

            boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::operator=(v60, &v105);
          }

          goto LABEL_114;
        }

        v55 = *(a2 + 160);
      }

      v101 = v53;
      if (v53 == v55)
      {
        goto LABEL_100;
      }

      if (!v53)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      v58 = (v53 - 40);
      v52.__data_ = &v105;
      if ((std::__fs::filesystem::operator<=>[abi:ne200100](v58, v52) & 0x80) != 0)
      {
        goto LABEL_100;
      }

      v59.__data_ = v58;
      if ((std::__fs::filesystem::operator<=>[abi:ne200100](&v105, v59) & 0x80) != 0)
      {
        v97[0] = v58;
        v111.__data_ = v97;
        v111.__size_ = &v105;
        if (boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::priv_insert_unique_prepare(v55, v111, &v101))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v101 = v58;
      }

LABEL_110:
      v60 = v101;
      if (!*(a2 + 160) && v101)
      {
        __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
      }

LABEL_114:
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(&v105);
      v92 = v60;
      std::unique_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::reset[abi:ne200100](&v87, 0);
      if (v90)
      {
        vp::Audio_Unit::~Audio_Unit(&v89);
      }

      goto LABEL_116;
    }

    if (v38)
    {
      goto LABEL_118;
    }

LABEL_117:
    if (v39)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

LABEL_118:
    if (v92 != (v38 + 40 * v39))
    {
      v68 = *(v92 + 3);
      if (v68)
      {
        break;
      }
    }

LABEL_120:
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    if (++v21 == 2)
    {
      v20 = v85 + 8;
      if (v85 != 16)
      {
        goto LABEL_18;
      }

      v14 = v79;
      v19 = v80 + 8;
      if (v80 == 8)
      {
        v70 = 1;
        goto LABEL_134;
      }

      goto LABEL_17;
    }
  }

  v71 = *(v92 + 4);
  v72 = v82;
  *v82 = v68;
  v72[1] = v71;
  if (v71)
  {
    atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v70 = 0;
LABEL_134:
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
    if (v70)
    {
      goto LABEL_138;
    }
  }

  else
  {
    if ((v70 & 1) == 0)
    {
      return;
    }

LABEL_138:
    v73 = v82;
    *v82 = 0;
    v73[1] = 0;
  }
}

void sub_2726619A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(v3 - 160);
    std::unique_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::reset[abi:ne200100]((v2 + 80), 0);
    if (*(v2 + 120) == 1)
    {
      vp::Audio_Unit::~Audio_Unit((v2 + 112));
    }

    vp::Audio_File::~Audio_File((v2 + 128));
    if (*(v2 + 167) < 0)
    {
      operator delete(*(v2 + 144));
    }

    if (*(v2 + 199) < 0)
    {
      operator delete(*(v2 + 176));
    }

    __cxa_begin_catch(a1);
    v5 = *(v2 + 24);
    *v5 = 0;
    v5[1] = 0;
    __cxa_end_catch();
    JUMPOUT(0x272661764);
  }

  _Unwind_Resume(a1);
}

void sub_272661AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x272661AD0);
  }

  JUMPOUT(0x272661AD8);
}

void *std::unique_ptr<vp::vx::IO_Node_Audio_Injector,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>,std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>*>(void *result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    for (i = result + 3; ; i += 4)
    {
      v7 = *i;
      if (*i)
      {
        if (i - 3 == v7)
        {
          *(a3 + 24) = a3;
          (*(**i + 24))(*i, a3);
          goto LABEL_9;
        }

        *(a3 + 24) = v7;
        v8 = i;
      }

      else
      {
        v8 = (a3 + 24);
      }

      *v8 = 0;
LABEL_9:
      a3 += 32;
      v9 = i + 1;
      if (v9 == a2)
      {
        do
        {
          result = std::__function::__value_func<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__value_func[abi:ne200100](v5);
          v5 += 4;
        }

        while (v5 != a2);
        return result;
      }
    }
  }

  return result;
}

uint64_t std::__split_buffer<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>,vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<std::function<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

double std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::operator()(uint64_t a1, AudioBufferList **a2, uint64_t a3, UInt32 *a4)
{
  v4 = *a4;
  v5 = *(a1 + 8);
  AudioUnitRender(*(v5 + 32), 0, (v5 + 40), 0, *a4, *a2);
  result = *(v5 + 40) + v4;
  *(v5 + 40) = result;
  return result;
}

void std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B88A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B88A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::new_node_decorator(vp::vx::io::Object_ID<vp::vx::io::Node>,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,vp::Allocator<vp::vx::io::Node>)::$_0>,int ()(AudioBufferList *,AudioTimeStamp *,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B88A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t vp::Audio_Unit::set_property<ScheduledAudioFileRegion>(uint64_t a1, AudioUnit inUnit, void *inData)
{
  result = AudioUnitSetProperty(inUnit, 0xCEFu, 0, 0, inData, 0x70u);
  if (result)
  {
    v5 = 0;
    *a1 = result;
  }

  else
  {
    *a1 = 0;
    v5 = 1;
  }

  *(a1 + 4) = v5;
  return result;
}

uint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::find(uint64_t result, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  v3 = *(a2.__data_ + 2);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  size = a2.__size_;
  v6 = result;
  if (v3)
  {
    data = a2.__data_;
    do
    {
      if (v3 != 1 && !v2)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v2)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      a2.__data_ = size;
      result = std::__fs::filesystem::operator<=>[abi:ne200100](&v2[40 * (v3 >> 1)], a2);
      if ((result & 0x80u) == 0)
      {
        v3 >>= 1;
      }

      else
      {
        v2 += 40 * (v3 >> 1) + 40;
        v3 += ~(v3 >> 1);
      }
    }

    while (v3);
    v8 = *(data + 1);
    v3 = *(data + 2);
    *v6 = v2;
    if (!v8 && v3)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }
  }

  else
  {
    *result = v2;
    v8 = v2;
  }

  v9 = &v8[40 * v3];
  if (v2 != v9)
  {
    if (!v2)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    a2.__data_ = v2;
    result = std::__fs::filesystem::operator<=>[abi:ne200100](size, a2);
    if ((result & 0x80) != 0)
    {
      *v6 = v9;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>::operator()(uint64_t a1, uint64_t a2)
{
  vp::Audio_Unit::~Audio_Unit((a2 + 32));
  vp::Audio_File::~Audio_File((a2 + 24));
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  v4 = *(**a1 + 24);

  return v4();
}

uint64_t boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>*,boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>(void *a1, const char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x666666666666666)
  {
    goto LABEL_27;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x666666666666666)
  {
    v6 = 0x666666666666666;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x666666666666666)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 40 * v8, 8);
  v15 = v14;
  v28[1] = a2;
  v28[2] = v8;
  v16 = *(a2 + 1);
  v17 = (v16 + 40 * *(a2 + 2));
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      v20 = *v19;
      *(v18 + 16) = *(v19 + 16);
      *v18 = v20;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      *v19 = 0;
      *(v18 + 24) = *(v19 + 24);
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      v19 += 40;
      v18 += 40;
    }

    while (v19 != a3);
  }

  v21 = *a4;
  *(v18 + 16) = *(a4 + 2);
  *v18 = v21;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(v18 + 24) = *(a4 + 24);
  *(a4 + 3) = 0;
  *(a4 + 4) = 0;
  if (v17 != a3)
  {
    v22 = (v18 + 64);
    v23 = a3;
    do
    {
      v24 = *v23;
      *(v22 - 1) = *(v23 + 2);
      *(v22 - 24) = v24;
      *(v23 + 1) = 0;
      *(v23 + 2) = 0;
      *v23 = 0;
      *v22 = *(v23 + 24);
      v22 = (v22 + 40);
      *(v23 + 3) = 0;
      *(v23 + 4) = 0;
      v23 = (v23 + 40);
    }

    while (v23 != v17);
  }

  v28[0] = 0;
  if (v16)
  {
    for (i = *(a2 + 2); i; v16 = (v16 + 40))
    {
      --i;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(v16);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 40 * *(a2 + 3), 8);
  }

  v26 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v26;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::~scoped_array_deallocator(v28);
  *a1 = a3 + *(a2 + 1) - v13;
  return result;
}

void sub_2726623F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 40 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t std::__fs::filesystem::operator<=>[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  v3 = std::__fs::filesystem::path::__compare(a1, a2);
  if (v3 < 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,boost::container::dtl::select1st<std::__fs::filesystem::path>,std::less<std::__fs::filesystem::path>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>>::priv_insert_unique_prepare(const std::string_view::value_type *a1, std::__fs::filesystem::path::__string_view a2, const std::string_view::value_type **a3)
{
  size = a2.__size_;
  data = a2.__data_;
  v6 = a1;
  if (*a2.__data_ != a1)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((*a2.__data_ - a1) >> 3);
    do
    {
      if (v7 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      a2.__data_ = size;
      if ((std::__fs::filesystem::operator<=>[abi:ne200100](&v6[40 * (v7 >> 1)], a2) & 0x80u) == 0)
      {
        v7 >>= 1;
      }

      else
      {
        v6 += 40 * (v7 >> 1) + 40;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  *a3 = v6;
  if (v6 == *data)
  {
    return 1;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  a2.__data_ = v6;
  return (std::__fs::filesystem::operator<=>[abi:ne200100](size, a2) & 0x80u) != 0;
}

void std::__shared_ptr_pointer<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player *,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>,std::allocator<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__exception_guard_exceptions<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player * std::pmr::polymorphic_allocator<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>::new_object[abi:ne200100]<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player,std::__fs::filesystem::path &,vp::Audio_File,vp::Audio_Unit>(std::__fs::filesystem::path &,vp::Audio_File,vp::Audio_Unit &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 112, 8);
  }

  return a1;
}

uint64_t vp::vx::IO_Node_Audio_Injector_Factory::IO_Node_Audio_Injector_Factory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2881B8700;
  v5 = (a1 + 8);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(a1 + 84) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a3;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a3;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return a1;
}

__n128 vp::vx::IO_Node_Audio_Injector_Factory::add_audio_injector(uint64_t a1, unsigned int a2, unsigned int a3, int a4, __n128 *a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = boost::container::flat_map<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<std::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>>::priv_subscript((a1 + 32 * (a4 != 0) + 88), v9);
  v7 = v6;
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  result = *a5;
  v7[1].n128_u64[0] = a5[1].n128_u64[0];
  *v7 = result;
  a5[1].n128_u8[7] = 0;
  a5->n128_u8[0] = 0;
  return result;
}

void virtual thunk tovp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command(vp::vx::IO_Parameter_Setter_Command *this)
{
  vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command((this + *(*this - 24)));
}

void vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command(vp::vx::IO_Parameter_Setter_Command *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(this + 4, v2);
    *(this + 10) = 0;
  }

  vp::vx::data_flow::State<void>::~State(this + 4);
  *(this + 6) = &unk_2881C6630;
  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(uint64_t result, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  if (v3 && *(v3 + 8) != -1)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    operator new();
  }

  v4 = *(result + 40);
  if (v4)
  {
    vp::vx::data_flow::State<void>::unregister_listener((result + 16), v4);
    *(result + 40) = 0;
  }
}

void sub_272662B48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a2;
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 24);
      if (v8)
      {
        log = vp::get_log(v6);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            v10 = v5 + 48;
          }

          else
          {
            v10 = 0;
          }

          v11 = v21;
          vp::vx::io::get_log_context_info(v21, v10, "vp::vx::IO_Parameter_Setter_Command]", 35);
          v12 = v22;
          v13 = v22;
          v14 = v21[1];
          v16 = vp::get_log(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (v13 >= 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = v14;
            }

            if (v13 < 0)
            {
              v11 = v21[0];
            }

            if (v17)
            {
              v18 = " ";
            }

            else
            {
              v18 = "";
            }

            caulk::string_from_4cc(&__p, *(a1 + 16));
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315906;
            v24 = v11;
            v25 = 2080;
            *v26 = v18;
            *&v26[8] = 2080;
            v27 = p_p;
            LOWORD(v28) = 2048;
            *(&v28 + 2) = v4;
            _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%ssetting parameter %s to %f", buf, 0x2Au);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            LOBYTE(v13) = v22;
          }

          if ((v13 & 0x80) != 0)
          {
            operator delete(v21[0]);
          }
        }

        (*(*v8 + 32))(buf, v8, *(v5 + 8), v4);
        if ((v29 & 1) == 0 && SBYTE7(v28) < 0)
        {
          (*(**(&v28 + 1) + 24))(*(&v28 + 1), *&v26[2], v28 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_272662D8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B89F0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B89F0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Command::set_parameter_controller(std::weak_ptr<vp::vx::io::Parameter_Controller>)::$_0>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B89F0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t *vp::vx::IO_Parameter_Setter_Command::get_parameter_ids@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v3 = *(result + 2);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, &v3, &vars0, 1uLL);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Parameter_Setter_Command_Factory::~IO_Parameter_Setter_Command_Factory(vp::vx::IO_Parameter_Setter_Command_Factory *this)
{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Parameter_Setter_Command_Factory::~IO_Parameter_Setter_Command_Factory(vp::vx::IO_Parameter_Setter_Command_Factory *this)
{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Parameter_Setter_Command_Factory::new_node_command(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = (*(*a2 + 8))(a2);
  if (v7)
  {
    (*(*v7 + 16))(&v10);
    if (v10 != v11)
    {
      v14 = *v10;
      v8 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::at(a1 + 8, &v14);
      v15 = 0;
      v16 = a3;
      v17 = xmmword_272756720;
      v9 = (*(*a3 + 16))(a3, 72, 8);
      vp::vx::data_flow::State<void>::State(v18, v8);
      *(v9 + 48) = &unk_2881C6630;
      operator new();
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }
}

unsigned int *boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::at(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v15 = v2;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,true>,vp::vx::Graph_Parameter_ID>(&v14, &v15, v2 + 32 * v3, *a2);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v11 = (v8 + 32 * v9);
  v12 = v14;
  if (v14 != v11)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a2 < *v14)
    {
      v12 = v11;
    }
  }

  if (v12 == v11)
  {
    boost::container::throw_length_error("flat_map::at key not found", v7);
  }

  return v12 + 2;
}

void *caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>)>::operator()(void (**a1)(void, uint64_t *), uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  v6 = *(a2 + 1);
  v7 = a2[3];
  v2(a1 + 1, &v5);
  return std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](&v5);
}

vp::vx::IO_Parameter_Setter_Command **std::unique_ptr<vp::vx::IO_Parameter_Setter_Command,vp::Allocator_Delete<vp::vx::IO_Parameter_Setter_Command>>::reset[abi:ne200100](vp::vx::IO_Parameter_Setter_Command **result, vp::vx::IO_Parameter_Setter_Command *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Parameter_Setter_Command::~IO_Parameter_Setter_Command(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,true>,vp::vx::Graph_Parameter_ID>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 5;
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
      v7 = &v4[8 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 8;
        *a2 = v7 + 8;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

unsigned int *boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript(const char *a1, unsigned int a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
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

  v6 = v3;
  if (v4)
  {
    v6 = v3;
    v7 = *(a1 + 2);
    do
    {
      if (v7 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v8 = v7 >> 1;
      v9 = &v6[8 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v7 += ~(v7 >> 1);
      if (v11 >= a2)
      {
        v7 = v8;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v7);
  }

  v12 = v3 + 32 * v4;
  if (v6 == v12)
  {
    goto LABEL_18;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v6 > a2)
  {
LABEL_18:
    v33 = 0u;
    v34 = 0u;
    v31 = a2;
    v32 = 0;
    v35 = 0;
    v38 = a2;
    v39 = 0;
    v40 = 0u;
    if (v3 > v6 || v6 > v12)
    {
      v26 = "this->priv_in_range_or_end(hint)";
      v27 = 879;
      v28 = "flat_tree.hpp";
      v29 = "insert_unique";
      goto LABEL_58;
    }

    v36 = 0;
    if (v6 == v12)
    {
      v14 = v12;
    }

    else
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v14 = v6;
      if (*v6 <= a2)
      {
        v37 = v12;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_insert_unique_prepare(v6, &v37, &v38, &v36))
        {
          goto LABEL_46;
        }

        goto LABEL_31;
      }
    }

    v36 = v6;
    if (v14 == v3)
    {
      goto LABEL_31;
    }

    if (!v14)
    {
      __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
    }

    v16 = *(v14 - 32);
    v15 = (v14 - 32);
    v17 = v16 > a2;
    if (v16 < a2)
    {
LABEL_31:
      v6 = v36;
      v18 = *(a1 + 1);
      if (v18 > v36)
      {
        goto LABEL_55;
      }

      v19 = *(a1 + 2);
      if (!v18 && v19)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v20 = v18 + 32 * v19;
      if (v36 > v20)
      {
LABEL_55:
        v26 = "this->priv_in_range_or_end(position)";
        v27 = 1862;
        v28 = "vector.hpp";
        v29 = "emplace";
      }

      else
      {
        v21 = *(a1 + 3);
        if (v21 >= v19)
        {
          if (v21 == v19)
          {
            boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>(&v30, a1, v36, &v38);
            v6 = v30;
          }

          else if (v20 == v36)
          {
            *v20 = v38;
            *(v20 + 8) = v39;
            *(v20 + 16) = v40;
            v40 = 0uLL;
            *(a1 + 2) = v19 + 1;
          }

          else
          {
            v22 = v20 - 32;
            *v20 = *(v20 - 32);
            *(v20 + 8) = *(v20 - 24);
            *(v20 + 16) = *(v20 - 16);
            *(v20 - 16) = 0;
            *(v20 - 8) = 0;
            ++*(a1 + 2);
            if ((v20 - 32) != v6)
            {
              v23 = (v20 - 32);
              do
              {
                v24 = *(v23 - 8);
                v23 -= 8;
                *v22 = v24;
                vp::vx::data_flow::State<void>::~State((v22 + 8));
                *(v22 + 8) = *(v22 - 24);
                *(v22 + 16) = *(v22 - 16);
                *(v22 - 16) = 0;
                *(v22 - 8) = 0;
                v22 = v23;
              }

              while (v23 != v6);
            }

            *v6 = v38;
            vp::vx::data_flow::State<void>::~State(v6 + 2);
            v6[2] = v39;
            *(v6 + 1) = v40;
            v40 = 0uLL;
          }

          goto LABEL_48;
        }

        v26 = "this->m_holder.capacity() >= this->m_holder.m_size";
        v27 = 2821;
        v28 = "vector.hpp";
        v29 = "priv_insert_forward_range";
      }

LABEL_58:
      __assert_rtn(v29, v28, v27, v26);
    }

    if (v17)
    {
      v37 = v15;
      if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_insert_unique_prepare(v3, &v37, &v38, &v36))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v36 = v15;
    }

LABEL_46:
    v6 = v36;
    if (!*(a1 + 1) && v36)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }

LABEL_48:
    vp::vx::data_flow::State<void>::~State(&v39);
    vp::vx::data_flow::State<void>::~State(&v32);
    vp::vx::data_flow::State<void>::~State(&v34);
    if (!v6)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }
  }

  return v6 + 2;
}

void sub_272663B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
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
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 32 * v9, 8);
  v16 = v15;
  v27[1] = a2;
  v27[2] = v9;
  v17 = *(a2 + 1);
  v18 = v17 + 32 * *(a2 + 2);
  v19 = v15;
  if (v17 != a3)
  {
    v20 = *(a2 + 1);
    v19 = v15;
    do
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      *(v19 + 16) = *(v20 + 16);
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      v20 += 32;
      v19 += 32;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  *(v19 + 8) = *(a4 + 8);
  *(v19 + 16) = *(a4 + 16);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  if (v18 != a3)
  {
    v21 = (v19 + 48);
    v22 = a3;
    do
    {
      *(v21 - 4) = *v22;
      *(v21 - 2) = *(v22 + 8);
      *v21 = *(v22 + 16);
      v21 += 2;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      v22 += 32;
    }

    while (v22 != v18);
  }

  v27[0] = 0;
  if (v17)
  {
    v23 = *(a2 + 2);
    if (v23)
    {
      v24 = (v17 + 8);
      do
      {
        --v23;
        v24 = vp::vx::data_flow::State<void>::~State(v24) + 8;
      }

      while (v23);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 32 * *(a2 + 3), 8);
  }

  v25 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v25;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::~scoped_array_deallocator(v27);
  *a1 = *(a2 + 1) + a3 - v14;
  return result;
}

void sub_272663E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 32 * *(a1 + 16), 8);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,boost::container::dtl::select1st<vp::vx::Graph_Parameter_ID>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>*,true>,vp::vx::Graph_Parameter_ID>(&v10, &v9, *a2, *a3);
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

void virtual thunk tovp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate(vp::vx::IO_Parameter_Setter_Delegate *this)
{
  vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate((this + *(*this - 24)));
}

void vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate(vp::vx::IO_Parameter_Setter_Delegate *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(this + 4, v2);
    *(this + 10) = 0;
  }

  vp::vx::data_flow::State<void>::~State(this + 4);
  *(this + 7) = &unk_2881C6630;
  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

unsigned int *vp::vx::IO_Parameter_Setter_Delegate::process(unsigned int *result, int a2, uint64_t a3, __n128 a4, __n128 a5)
{
  if (!a2)
  {
    v5 = result;
    v6 = COERCE_FLOAT(atomic_load(result + 11));
    a4.n128_f32[0] = v6;
    a5.n128_u32[0] = result[12];
    if (*(result + 52) != 1 || a5.n128_f32[0] != v6)
    {
      result = (*(*a3 + 32))(v8, a3, result[2], a4, a5);
      if ((v11 & 1) == 0 && SHIBYTE(v9) < 0)
      {
        result = (*(*v10 + 24))(v10, v8[2], v9 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      *(v5 + 12) = v6;
      *(v5 + 52) = 1;
    }
  }

  return result;
}

void vp::vx::IO_Parameter_Setter_Delegate::notify(_DWORD *result, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v4 = result[10];
    if (v4)
    {
      vp::vx::data_flow::State<void>::unregister_listener(result + 4, v4);
      result[10] = 0;
    }
  }

  else if (!a2)
  {
    v3 = result[2];
    v5[0] = &unk_2881B8B50;
    v5[1] = result;
    v5[2] = v3;
    v5[3] = v5;
    std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](v6, v5);
    v7 = 0;
    operator new();
  }
}

void sub_272664258(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<vp::vx::IO_Parameter_Setter_Delegate::notify(vp::vx::io::Event,vp::vx::io::Node &)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Delegate::notify(vp::vx::io::Event,vp::vx::io::Node &)::$_0>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = v4 + 56;
    }

    else
    {
      v6 = 0;
    }

    v7 = v17;
    vp::vx::io::get_log_context_info(v17, v6, "vp::vx::IO_Parameter_Setter_Delegate]", 36);
    v8 = v18;
    v9 = v18;
    v10 = v17[1];
    v12 = vp::get_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v9 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      if (v9 < 0)
      {
        v7 = v17[0];
      }

      if (v13)
      {
        v14 = " ";
      }

      else
      {
        v14 = "";
      }

      caulk::string_from_4cc(&__p, *(a1 + 16));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v20 = v7;
      v21 = 2080;
      v22 = v14;
      v23 = 2080;
      v24 = p_p;
      v25 = 2048;
      v26 = v3;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%s%ssetting parameter %s to %f", buf, 0x2Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      LOBYTE(v9) = v18;
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(v17[0]);
    }
  }

  atomic_store(LODWORD(v3), (v4 + 44));
}

__n128 std::__function::__func<vp::vx::IO_Parameter_Setter_Delegate::notify(vp::vx::io::Event,vp::vx::io::Node &)::$_0,std::allocator<vp::vx::IO_Parameter_Setter_Delegate::notify(vp::vx::io::Event,vp::vx::io::Node &)::$_0>,void ()(float const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881B8B50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t *vp::vx::IO_Parameter_Setter_Delegate::get_parameter_ids@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v3 = *(result + 2);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, &v3, &vars0, 1uLL);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Parameter_Setter_Delegate_Factory::~IO_Parameter_Setter_Delegate_Factory(vp::vx::IO_Parameter_Setter_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(v1 + 1);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::IO_Parameter_Setter_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = (*(*a2 + 8))(a2);
  if (v7)
  {
    (*(*v7 + 16))(&v10);
    if (v10 != v11)
    {
      v18 = *v10;
      v8 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::at(a1 + 8, &v18);
      v14 = 0;
      v15 = a3;
      v16 = xmmword_272756600;
      v9 = (*(*a3 + 16))(a3, 80, 8);
      vp::vx::data_flow::State<void>::State(v17, v8);
      *(v9 + 56) = &unk_2881C6630;
      operator new();
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }
}

void *caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>)>::operator()(void (**a1)(void, uint64_t *), uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  v6 = *(a2 + 1);
  v7 = a2[3];
  v2(a1 + 1, &v5);
  return std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](&v5);
}

vp::vx::IO_Parameter_Setter_Delegate **std::unique_ptr<vp::vx::IO_Parameter_Setter_Delegate,vp::Allocator_Delete<vp::vx::IO_Parameter_Setter_Delegate>>::reset[abi:ne200100](vp::vx::IO_Parameter_Setter_Delegate **result, vp::vx::IO_Parameter_Setter_Delegate *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Parameter_Setter_Delegate::~IO_Parameter_Setter_Delegate(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void virtual thunk tovp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command(vp::vx::IO_Personal_Audio_Command *this)
{
  vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command((this + *(*this - 24)));
}

void vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command(vp::vx::IO_Personal_Audio_Command *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(this + 8);
  if (v2)
  {
    vp::vx::data_flow::State<void>::unregister_listener(this + 2, v2);
    *(this + 8) = 0;
  }

  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + 40, "vp::vx::IO_Personal_Audio_Command]", 33);
    v4 = v14;
    v5 = v14;
    v6 = __p[1];
    v8 = vp::get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      v10 = __p[0];
      if (v5 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v14;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 2);
  *(this + 5) = &unk_2881C6630;
  v12 = *(this + 7);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

{
  vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::IO_Personal_Audio_Command::set_node(uint64_t result, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v4 = *(result + 32);
  if (v4)
  {
    vp::vx::data_flow::State<void>::unregister_listener((result + 8), v4);
    *(result + 32) = 0;
  }
}

void sub_272664E6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::vx::IO_Personal_Audio_Settings>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::compare_value(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (**a2 != **a3)
  {
    return 0;
  }

  v3 = *(*a2 + 1);
  v4 = *(*a3 + 1);
  result = (v3 | v4) == 0;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return CFEqual(v3, v4) != 0;
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::destroy_value(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 8);
  if (v2)
  {
    CFRelease(v2);
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::move_value(uint64_t a1, uint64_t *a2, _BYTE **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *(v3 + 8) = *(v4 + 1);
  *(v4 + 1) = 0;
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::copy_value(uint64_t a1, void *a2, _BYTE **a3)
{
  v3 = *a2;
  v4 = *a3;
  **a2 = **a3;
  v5 = *(v4 + 1);
  if (v5)
  {
    result = CFRetain(*(v4 + 1));
  }

  *(v3 + 1) = v5;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::IO_Personal_Audio_Settings>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8D50;
  std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::IO_Personal_Audio_Settings>::register_listener(std::function<void ()(vp::vx::IO_Personal_Audio_Settings const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8D50;
  std::__function::__value_func<void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::operator()(void *a1, unsigned __int8 *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        log = vp::get_log(v6);
        v10 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v5)
          {
            v11 = v5 + 40;
          }

          else
          {
            v11 = 0;
          }

          vp::vx::io::get_log_context_info(&__p, v11, "vp::vx::IO_Personal_Audio_Command]", 33);
          v12 = v57;
          v13 = v57;
          v14 = v56;
          v16 = vp::get_log(v15);
          v10 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            if (v13 >= 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = v14;
            }

            p_p = __p;
            if (v13 >= 0)
            {
              p_p = &__p;
            }

            if (v17)
            {
              v19 = " ";
            }

            else
            {
              v19 = "";
            }

            v20 = *a2;
            *buf = 136315650;
            *&buf[4] = p_p;
            v59 = 2080;
            *v60 = v19;
            if (v20)
            {
              v21 = "enabled";
            }

            else
            {
              v21 = "disabled";
            }

            *&v60[8] = 2080;
            v61 = v21;
            _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%spersonal audio is %s", buf, 0x20u);
            LOBYTE(v13) = v57;
          }

          if ((v13 & 0x80) != 0)
          {
            operator delete(__p);
          }
        }

        v22 = *a2;
        if (v22 == 1 && *(a2 + 1))
        {
          v54 = *(a2 + 1);
          v52 = &v54;
          v53 = 8;
          v23 = vp::get_log(v10);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            if (v5)
            {
              v24 = v5 + 40;
            }

            else
            {
              v24 = 0;
            }

            vp::vx::io::get_log_context_info(&__p, v24, "vp::vx::IO_Personal_Audio_Command]", 33);
            v25 = v57;
            v26 = v57;
            v27 = v56;
            v29 = vp::get_log(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = __p;
              strcpy(buf, "'pahp'");
              std::string::basic_string[abi:ne200100]<0>(v50, buf);
              if (v26 >= 0)
              {
                v31 = v25;
              }

              else
              {
                v31 = v27;
              }

              v32 = " ";
              v33 = &__p;
              if (v26 < 0)
              {
                v33 = v30;
              }

              v34 = v31 == 0;
              v35 = v50[0];
              if (v34)
              {
                v32 = "";
              }

              *buf = 136315650;
              *&buf[4] = v33;
              v59 = 2080;
              *v60 = v32;
              if (v51 >= 0)
              {
                v35 = v50;
              }

              *&v60[8] = 2080;
              v61 = v35;
              _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEFAULT, "%s%ssetting property %s", buf, 0x20u);
              if (v51 < 0)
              {
                operator delete(v50[0]);
              }

              LOBYTE(v26) = v57;
            }

            if ((v26 & 0x80) != 0)
            {
              operator delete(__p);
            }
          }

          v36 = (*(*v8 + 16))(v8);
          v10 = (*(*v36 + 40))(buf);
          if ((v64 & 1) == 0 && SHIBYTE(v62) < 0)
          {
            v10 = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v63, *&v60[2], v62 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v22 = *a2;
        }

        LODWORD(v54) = v22 ^ 1;
        v52 = &v54;
        v53 = 4;
        v37 = vp::get_log(v10);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            v38 = v5 + 40;
          }

          else
          {
            v38 = 0;
          }

          vp::vx::io::get_log_context_info(&__p, v38, "vp::vx::IO_Personal_Audio_Command]", 33);
          v39 = v57;
          v40 = v57;
          v41 = v56;
          v43 = vp::get_log(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = __p;
            strcpy(buf, "'pahb'");
            std::string::basic_string[abi:ne200100]<0>(v50, buf);
            if (v40 >= 0)
            {
              v45 = v39;
            }

            else
            {
              v45 = v41;
            }

            v46 = " ";
            v47 = &__p;
            if (v40 < 0)
            {
              v47 = v44;
            }

            v34 = v45 == 0;
            v48 = v50[0];
            if (v34)
            {
              v46 = "";
            }

            *buf = 136315650;
            *&buf[4] = v47;
            v59 = 2080;
            *v60 = v46;
            if (v51 >= 0)
            {
              v48 = v50;
            }

            *&v60[8] = 2080;
            v61 = v48;
            _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_DEFAULT, "%s%ssetting property %s", buf, 0x20u);
            if (v51 < 0)
            {
              operator delete(v50[0]);
            }

            LOBYTE(v40) = v57;
          }

          if ((v40 & 0x80) != 0)
          {
            operator delete(__p);
          }
        }

        v49 = (*(*v8 + 16))(v8);
        (*(*v49 + 40))(buf);
        if ((v64 & 1) == 0 && SHIBYTE(v62) < 0)
        {
          (*(*v63 + 24))(v63, *&v60[2], v62 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_272665900(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B8D98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8D98;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0,std::allocator<vp::vx::IO_Personal_Audio_Command::set_node(std::shared_ptr<vp::vx::io::Node>)::$_0>,void ()(vp::vx::IO_Personal_Audio_Settings const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8D98;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t *vp::vx::IO_Personal_Audio_Command::get_property_ids@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = 0x7061687070616862;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &v4, 2uLL);
  }

  return result;
}

void sub_272665B5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::IO_Personal_Audio_Command::get_parameter_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void virtual thunk tovp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory(vp::vx::IO_Personal_Audio_Command_Factory *this)
{
  vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory(vp::vx::IO_Personal_Audio_Command_Factory *this)
{
  v19 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    if (this)
    {
      v3 = this + 32;
    }

    else
    {
      v3 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v3, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
    v4 = v14;
    v5 = v14;
    v6 = __p[1];
    v8 = vp::get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      v10 = __p[0];
      if (v5 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v14;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 2);
  *(this + 4) = &unk_2881C6630;
  v12 = *(this + 6);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

{
  vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::IO_Personal_Audio_Command_Factory::new_node_command(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *), void (*a5)(void, uint64_t *))
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  result = (*(*a2 + 24))(a2);
  if (result)
  {
    v7 = result;
    result = (*(*result + 8))(result, 1885431906, 0);
    if (result)
    {
      result = (*(*v7 + 8))(v7, 1885431920, 0);
      if (result)
      {
        v8 = 0;
        v9 = a3;
        v10 = xmmword_2727566C0;
        *((*(*a3 + 16))(a3, 64, 8) + 40) = &unk_2881C6630;
        operator new();
      }
    }
  }

  return result;
}

void sub_2726660B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

vp::vx::IO_Personal_Audio_Command **std::unique_ptr<vp::vx::IO_Personal_Audio_Command,vp::Allocator_Delete<vp::vx::IO_Personal_Audio_Command>>::reset[abi:ne200100](vp::vx::IO_Personal_Audio_Command **result, vp::vx::IO_Personal_Audio_Command *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::IO_Personal_Audio_Command::~IO_Personal_Audio_Command(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::Voice_Processor_State_Manager::create_state_for_darwin_notification(vp::vx::Voice_Processor_State_Manager *this, __n128 *a2, char *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v5 = mach_absolute_time();
  v14[0] = std::pmr::get_default_resource(v5);
  v14[1] = 0;
  v14[2] = &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v14);
  *storage = 0;
  storage[1] = v5;
  vp::vx::data_flow::State_Manager::create_state(&handler, a2 + 3, v14);
  LODWORD(v11) = handler;
  v12 = v16;
  v16 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&handler);
  vp::vx::data_flow::Value::~Value(v14);
  v9 = v11;
  v10 = v12;
  v12 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v11);
  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  vp::vx::data_flow::State<void>::State(&v8, &v9);
  v13 = 0;
  operator new();
}

void sub_27266740C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    std::unique_ptr<vp::darwin::Notification,vp::Allocator_Delete<vp::darwin::Notification>>::reset[abi:ne200100](&a32, 0);
    v38 = *(v36 - 144);
    if (v38)
    {
      std::__shared_weak_count::__release_weak(v38);
    }

    if (a12)
    {
      std::__shared_weak_count::__release_weak(a12);
    }

    os_unfair_recursive_lock_unlock();
    __cxa_begin_catch(exception_object);
    LOBYTE(a32) = 0;
    a36 = 0;
    __cxa_end_catch();
    JUMPOUT(0x2726670B4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2726674BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    _ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA_(v3, v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_2726674E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  __cxa_end_catch();
  if (v50)
  {
    dispatch_release(v50);
  }

  vp::darwin::Notification_Listener::~Notification_Listener((v51 - 224));
  if (a26)
  {
    vp::darwin::Notification_Listener::~Notification_Listener(&a23);
  }

  std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100](va);
  _ZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENUlRT_E_D2Ev(&a16);
  vp::vx::data_flow::State<void>::~State(&a29);
  _Unwind_Resume(a1);
}

void sub_272667558(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  if (a2)
  {
    vp::darwin::Notification_Listener::~Notification_Listener(va);
    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    if (a42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a42);
    }

    os_unfair_recursive_lock_unlock();
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2726670B4);
  }

  _Unwind_Resume(a1);
}

void sub_2726675DC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2726675E4);
  }

  __clang_call_terminate(a1);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EEclEOS18_OS19_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v6);
  }

  v7 = v4[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v7);
  }

  v8 = v4[2];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[3];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = v4[4];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[5];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v12 = vp::vx::data_flow::Value::view_storage(v12);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *v11;
  if (v14)
  {
    v12 = CFRetain(v14);
  }

  v15 = *v13;
  v16 = *(a1 + 8);
  log = vp::get_log(v12);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    if (v16)
    {
      v18 = v16 + 32;
    }

    else
    {
      v18 = 0;
    }

    vp::vx::io::get_log_context_info(__p, v18, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
    v19 = HIBYTE(v82);
    v20 = SHIBYTE(v82);
    v21 = *&__p[8];
    v23 = vp::get_log(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      if (v20 >= 0)
      {
        v24 = v19;
      }

      else
      {
        v24 = v21;
      }

      v25 = *__p;
      if (v20 >= 0)
      {
        v25 = __p;
      }

      if (v24)
      {
        v26 = " ";
      }

      else
      {
        v26 = "";
      }

      *buf = 136315394;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = v26;
      _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_INFO, "%s%spersonal audio notification(s) fired", buf, 0x16u);
      LOBYTE(v20) = HIBYTE(v82);
    }

    if ((v20 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  v27 = *(a1 + 16);
  if (v14)
  {
    CFRetain(v14);
  }

  cf = v14;
  v28 = (*(*v27 + 24))(v27, &cf);
  v29 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    v30 = vp::get_log(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      if (v16)
      {
        v31 = v16 + 32;
      }

      else
      {
        v31 = 0;
      }

      vp::vx::io::get_log_context_info(buf, v31, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
      v32 = v85;
      v33 = v85;
      v34 = *&buf[8];
      v36 = vp::get_log(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        if (v33 >= 0)
        {
          v37 = v32;
        }

        else
        {
          v37 = v34;
        }

        v38 = *buf;
        if (v33 >= 0)
        {
          v38 = buf;
        }

        if (v37)
        {
          v39 = " ";
        }

        else
        {
          v39 = "";
        }

        *__p = 136315650;
        *&__p[4] = v38;
        *&__p[12] = 2080;
        *&__p[14] = v39;
        if (v15)
        {
          v40 = "enabled";
        }

        else
        {
          v40 = "disabled";
        }

        v82 = 2080;
        v83 = v40;
        _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_INFO, "%s%spersonal audio is %s", __p, 0x20u);
        LOBYTE(v33) = v85;
      }

      if ((v33 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }

    v41 = *(a1 + 16);
    if (v14)
    {
      CFRetain(v14);
    }

    v79 = v14;
    (*(*v41 + 56))(__p, v41, &v79);
    v42 = *__p;
    *__p = 0;
    v43 = v79;
    if (v79)
    {
      CFRelease(v79);
    }

    v44 = vp::get_log(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      if (v16)
      {
        v45 = v16 + 32;
      }

      else
      {
        v45 = 0;
      }

      vp::vx::io::get_log_context_info(buf, v45, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
      v46 = v85;
      v47 = v85;
      v48 = *&buf[8];
      v50 = vp::get_log(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        if (v47 >= 0)
        {
          v51 = v46;
        }

        else
        {
          v51 = v48;
        }

        v52 = *buf;
        if (v47 >= 0)
        {
          v52 = buf;
        }

        if (v51)
        {
          v53 = " ";
        }

        else
        {
          v53 = "";
        }

        *__p = 136315650;
        *&__p[4] = v52;
        *&__p[12] = 2080;
        *&__p[14] = v53;
        if (v42)
        {
          v54 = "valid";
        }

        else
        {
          v54 = "invalid";
        }

        v82 = 2080;
        v83 = v54;
LABEL_114:
        _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_INFO, "%s%spersonal audio preset is %s", __p, 0x20u);
        LOBYTE(v47) = v85;
        goto LABEL_115;
      }

      goto LABEL_115;
    }
  }

  else
  {
    v55 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v15 &= v55;
    v56 = vp::get_log(v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      if (v16)
      {
        v57 = v16 + 32;
      }

      else
      {
        v57 = 0;
      }

      vp::vx::io::get_log_context_info(buf, v57, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
      v58 = v85;
      v59 = v85;
      v60 = *&buf[8];
      v62 = vp::get_log(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        if (v59 >= 0)
        {
          v63 = v58;
        }

        else
        {
          v63 = v60;
        }

        v64 = *buf;
        if (v59 >= 0)
        {
          v64 = buf;
        }

        if (v63)
        {
          v65 = " ";
        }

        else
        {
          v65 = "";
        }

        *__p = 136315650;
        *&__p[4] = v64;
        *&__p[12] = 2080;
        *&__p[14] = v65;
        if (v15)
        {
          v66 = "enabled";
        }

        else
        {
          v66 = "disabled";
        }

        v82 = 2080;
        v83 = v66;
        _os_log_impl(&dword_2724B4000, v62, OS_LOG_TYPE_INFO, "%s%spersonal audio is %s", __p, 0x20u);
        LOBYTE(v59) = v85;
      }

      if ((v59 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }

    v67 = (*(**(a1 + 16) + 48))(__p);
    v42 = *__p;
    v68 = vp::get_log(v67);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      if (v16)
      {
        v69 = v16 + 32;
      }

      else
      {
        v69 = 0;
      }

      vp::vx::io::get_log_context_info(buf, v69, "vp::vx::IO_Personal_Audio_Command_Factory]", 41);
      v70 = v85;
      v47 = v85;
      v71 = *&buf[8];
      v50 = vp::get_log(v72);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        if (v47 >= 0)
        {
          v73 = v70;
        }

        else
        {
          v73 = v71;
        }

        v74 = *buf;
        if (v47 >= 0)
        {
          v74 = buf;
        }

        if (v73)
        {
          v75 = " ";
        }

        else
        {
          v75 = "";
        }

        *__p = 136315650;
        *&__p[4] = v74;
        *&__p[12] = 2080;
        *&__p[14] = v75;
        if (v42)
        {
          v76 = "valid";
        }

        else
        {
          v76 = "invalid";
        }

        v82 = 2080;
        v83 = v76;
        goto LABEL_114;
      }

LABEL_115:
      if ((v47 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v77);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::IO_Personal_Audio_Settings>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v15;
  *(result + 8) = v42;
  return result;
}

void sub_272667CD4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::IO_Personal_Audio_Settings::~IO_Personal_Audio_Settings(vp::vx::IO_Personal_Audio_Settings *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<unsigned long long>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<unsigned long long>>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<unsigned long long>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::data_flow::Time_Stamped<unsigned long long>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EE7__cloneEPNS0_6__baseIS1D_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B8CA0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EED0Ev(void *a1)
{
  *a1 = &unk_2881B8CA0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_26IO_Personal_Audio_SettingsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS9_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__1JNS4_12Time_StampedIyEESL_SL_SL_N10applesauce2CF9StringRefEbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSL_SL_SL_SL_SO_bEEERNS4_13State_ManagerESQ_SX_EUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EED1Ev(void *a1)
{
  *a1 = &unk_2881B8CA0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENUlRT_E_D2Ev(uint64_t a1)
{
  vp::vx::data_flow::State<void>::~State((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  v6 = v4[1];
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  result[1] = v6;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE18destroy_deallocateEv(void *__p)
{
  if (*(__p + 32) == 1)
  {
    v2 = __p[3];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7destroyEv(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BA5A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  LODWORD(v2) = *(result + 32);
  *(a2 + 32) = v2;
  if (v2 == 1)
  {
    v3 = *(result + 24);
    *(a2 + 16) = *(result + 16);
    *(a2 + 24) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *(a2 + 16) = *(result + 16);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EED0Ev(uint64_t a1)
{
  *a1 = &unk_2881BA5A8;
  if (*(a1 + 32) == 1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS4_12Time_StampedIyEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNSA_36create_state_for_darwin_notificationEPKcEUlT_E0_JS7_EEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS7_EEERNS4_13State_ManagerESE_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EED1Ev(uint64_t a1)
{
  *a1 = &unk_2881BA5A8;
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  return a1;
}

void _ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA_(NSObject *a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA__block_invoke;
  block[3] = &__block_descriptor_tmp_8352;
  block[4] = a2;
  dispatch_async(a1, block);
}

vp::darwin::Notification_Listener *___ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    vp::darwin::Notification_Listener::~Notification_Listener(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void _ZNSt3__120__shared_ptr_pointerIPN2vp6darwin21Notification_ListenerEZZNS1_2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clIS3_EEDaS9_EUlS4_E_NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZZZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clINS_6darwin21Notification_ListenerEEEDaS4_ENKUlPS8_E_clESA__block_invoke;
  block[3] = &__block_descriptor_tmp_8352;
  block[4] = v3;
  dispatch_async(v2, block);
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_release(v4);
  }
}

void _ZNSt3__120__shared_ptr_pointerIPN2vp6darwin21Notification_ListenerEZZNS1_2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clIS3_EEDaS9_EUlS4_E_NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *this)
{
  this->__vftable = &unk_2881BA570;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZNSt3__120__shared_ptr_pointerIPN2vp6darwin21Notification_ListenerEZZNS1_2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcENKUlT_E_clIS3_EEDaS9_EUlS4_E_NS_9allocatorIS3_EEED1Ev(std::__shared_weak_count *this)
{
  this->__vftable = &unk_2881BA570;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEEclESE_(uint64_t a1, int *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, v4, "vp::vx::Voice_Processor_State_Manager]", 37);
    v7 = v22;
    v8 = v22;
    v9 = __p[1];
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v8 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = v9;
      }

      v12 = __p[0];
      if (v8 >= 0)
      {
        v12 = __p;
      }

      v13 = " ";
      if (!v11)
      {
        v13 = "";
      }

      v14 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315650;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      *&buf[22] = 2080;
      v24 = v14;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_INFO, "%s%snew Darwin notification %s", buf, 0x20u);
      LOBYTE(v8) = v22;
    }

    if ((v8 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = 0;
  state = notify_get_state(*a2, buf);
  if (state >= 0xB)
  {
    v16 = 0;
  }

  else
  {
    v16 = state;
  }

  if (state)
  {
    v17 = 0;
  }

  else
  {
    v17 = *buf & 0xFFFFFFFF00000000;
  }

  if (state)
  {
    v18 = v16;
  }

  else
  {
    v18 = *buf;
  }

  mach_absolute_time();
  v19 = mach_absolute_time();
  *buf = std::pmr::get_default_resource(v19);
  *&buf[8] = 0;
  *&buf[16] = &vp::vx::data_flow::Value::type_id<vp::vx::data_flow::Time_Stamped<unsigned long long>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(buf);
  *storage = v17 | v18;
  storage[1] = v19;
  vp::vx::data_flow::State<void>::set_value((a1 + 40), buf);
  vp::vx::data_flow::Value::~Value(buf);
}

void sub_272668690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEE7destroyB8ne200100Ev((a1 + 8));

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEE7destroyB8ne200100Ev(uint64_t a1)
{
  vp::vx::data_flow::State<void>::~State((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

int *_ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEE7__cloneEPNS0_6__baseISF_EE(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_2881BA528;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  return vp::vx::data_flow::State<void>::State((a2 + 40), (a1 + 40));
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEED0Ev(uint64_t a1)
{
  *a1 = &unk_2881BA528;
  vp::vx::data_flow::State<void>::~State((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager36create_state_for_darwin_notificationEPKcEUlRT_E_NS_9allocatorIS9_EEFvRNS2_6darwin18Notification_ProxyEEED1Ev(uint64_t a1)
{
  *a1 = &unk_2881BA528;
  vp::vx::data_flow::State<void>::~State((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS8_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__0JbNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSJ_jEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = (*vp::vx::data_flow::Value::view_storage(v3[2]) & 1) == 0 && (*v6 & 1) != 0 || (*v8 & 0xFFFFFFFE) == 6;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v10);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v9;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_33IO_Personal_Audio_Command_FactoryC1ERS8_RNS3_27Voice_Processor_State_OwnerENS_10shared_ptrINS2_8services14Personal_AudioEEEE3__0JbNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSJ_jEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B8C58;
  *(a2 + 8) = *(result + 8);
  return result;
}

void virtual thunk tovp::vx::IO_Port_Factory::~IO_Port_Factory(vp::vx::IO_Port_Factory *this)
{
  vp::vx::IO_Port_Factory::~IO_Port_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::IO_Port_Factory::~IO_Port_Factory((this + *(*this - 24)));
}

void vp::vx::IO_Port_Factory::~IO_Port_Factory(vp::vx::IO_Port_Factory *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B8DE8;
  *(this + 18) = &unk_2881B8E18;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::vx::get_log_context_info(__p, this);
    v4 = v14;
    v5 = v14;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v14;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 30);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 88);
  vp::vx::data_flow::State<void>::~State(this + 16);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 32);
  v11 = *(this + 3);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(this + 18) = &unk_2881C6630;
  v12 = *(this + 20);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

{
  vp::vx::IO_Port_Factory::~IO_Port_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::get_log_context_info(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "vp::vx::IO_Port_Factory]", 23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ":", 1);
  v14 = *(a2 + 8);
  if (HIDWORD(v14) == 0xFFFFFFFF)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *&v12 = &v15;
  v4 = (off_2881B8E48[HIDWORD(v14)])(&v12, &v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ":", 1);
  v6 = MEMORY[0x2743CBAF0](&v17, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "]", 1);
  if ((v24 & 0x10) != 0)
  {
    v8 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v8 = v20;
    }

    locale = v19[4].__locale_;
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v7 = 0;
      HIBYTE(v13) = 0;
      goto LABEL_15;
    }

    locale = v19[1].__locale_;
    v8 = v19[3].__locale_;
  }

  v7 = v8 - locale;
  if ((v8 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v8 - locale;
  if (v7)
  {
    memmove(&v12, locale, v7);
  }

LABEL_15:
  *(&v12 + v7) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  v16[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v10;
  v18 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v25);
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "vp::vx::IO_Wire_Factory]", 23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ":", 1);
  v4 = vp::detail::reflect_value_name<(vp::Domain)0,128ul>(*(a2 + 8));
  if (v5)
  {
    v6 = &v4[v5];
    v7 = v5;
    while (v7)
    {
      v8 = *--v6;
      --v7;
      if (v8 == 58)
      {
        v9 = v6 - v4 + 1;
        if (v5 < v9)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        goto LABEL_8;
      }
    }
  }

  v9 = 0;
LABEL_8:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, &v4[v9], v5 - v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ":", 1);
  v10 = MEMORY[0x2743CBAF0](&v19, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "]", 1);
  if ((v26 & 0x10) != 0)
  {
    v12 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v12 = v22;
    }

    locale = v21[4].__locale_;
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v11 = 0;
      HIBYTE(v17) = 0;
      goto LABEL_21;
    }

    locale = v21[1].__locale_;
    v12 = v21[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = v12 - locale;
  if (v11)
  {
    memmove(&v16, locale, v11);
  }

LABEL_21:
  *(&v16 + v11) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v16;
  *(a1 + 16) = v17;
  v18[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v14;
  v20 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v27);
}