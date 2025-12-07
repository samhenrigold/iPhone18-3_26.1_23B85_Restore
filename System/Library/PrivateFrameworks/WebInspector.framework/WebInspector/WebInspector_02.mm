void sub_273CDA4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CDAF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolDOMNode>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolDOMNode alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CDB1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CDB800(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDB91C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDBA28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDBB48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDBC70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDBD90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDC158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDC5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDD6DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDD7FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDDB14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDDCD4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE39C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE4BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE87C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE99C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDF0F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDF20C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE0694(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE27E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE29A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE312C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE324C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE3668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolDebuggerBreakpointAction>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolDebuggerBreakpointAction alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CE38B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CE3F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolDebuggerScope>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolDebuggerScope alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CE41DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CE4AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE5144(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE5304(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE6D30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE6F20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE76FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE781C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE7F38(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE8058(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE942C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE954C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE99C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE9AE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE9FEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEA10C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEA24C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEA36C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEAC1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEAD3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEB65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolPageFrameResourceTree>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolPageFrameResourceTree alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CEB8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CEBACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolPageFrameResource>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolPageFrameResource alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CEBD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CEC818(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEC938(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CECB28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CECD00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CECDD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CED014(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CED93C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEDA5C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEDB34(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEDD70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEE0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolRuntimePropertyPreview>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolRuntimePropertyPreview alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CEE340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CEE568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolRuntimeEntryPreview>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolRuntimeEntryPreview alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CEE7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CEEAA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEEC90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEED68(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEEFA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF1054(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF1174(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF24F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

id Inspector::toObjCArray<RWIProtocolRuntimeStructureDescription>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(&v15, *a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolRuntimeStructureDescription alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CF273C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void *std::__lower_bound_bisecting[abi:sn200100]<std::_ClassicAlgPolicy,std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,RWIProtocolCSSPseudoId> const*,WTF::ComparableStringView,std::__identity,RWIProtocolCSSPseudoId const* WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,RWIProtocolCSSPseudoId>[23]>::tryGet<WTF::String>(WTF::String const&)::{lambda(WTF::String&,std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,RWIProtocolCSSPseudoId> const* &)#1}>(void *a1, void *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v5 = &a1[3 * (v4 >> 1)];
      v6 = WTF::codePointCompare();
      if (v6 >= 0)
      {
        v4 >>= 1;
      }

      else
      {
        v4 += ~(v4 >> 1);
      }

      if (v6 < 0)
      {
        a1 = v5 + 3;
      }
    }

    while (v4);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void **a1)
{
  v2 = *a1;
  *a1 = 0;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t *a2, void *a3)
{
  *a3 = *(a1 + 16);
  result = *a2;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_5_1(void **a1)
{
  v2 = *a1;
  *a1 = 0;
}

unint64_t removeObjectFromArray(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5)
  {
    v6 = [v3 objectAtIndex:0];

    if (v6 == v4)
    {
      v9 = 0;
      v5 = 1;
LABEL_8:
      [v3 removeObjectAtIndex:v9];
    }

    else
    {
      v7 = 1;
      while (v5 != v7)
      {
        v8 = [v3 objectAtIndex:v7];

        ++v7;
        if (v8 == v4)
        {
          v9 = v7 - 1;
          v5 = v7 - 1 < v5;
          goto LABEL_8;
        }
      }

      v5 = 0;
    }
  }

  return v5;
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t convertRBSProcessState(void *a1)
{
  v1 = a1;
  if ([v1 taskState] == 4)
  {
    v2 = [v1 endowmentNamespaces];
    v3 = [v2 containsObject:*MEMORY[0x277D0AC90]];

    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_273CF8D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void logUnexpectedType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = RWIDefaultLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    logUnexpectedType_cold_1(v3, v4, v5);
  }
}

id processNameForPID()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(v0, buffer, 0x1000u))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    v2 = [v1 lastPathComponent];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isInternalInstall(uint64_t a1, uint64_t a2)
{
  if (isInternalInstall::onceToken != -1)
  {
    isInternalInstall_cold_1();
  }

  return isInternalInstall::isInternal;
}

uint64_t __isInternalInstall_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  isInternalInstall::isInternal = result;
  return result;
}

uint64_t isSimulatingCustomerInstall(uint64_t a1, uint64_t a2)
{
  if (isSimulatingCustomerInstall::onceToken != -1)
  {
    isSimulatingCustomerInstall_cold_1();
  }

  return isSimulatingCustomerInstall::simulateCustomerInstall;
}

uint64_t __isSimulatingCustomerInstall_block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"SimulateCustomerInstall", @"com.apple.WebInspector", 0);
  isSimulatingCustomerInstall::simulateCustomerInstall = result != 0;
  return result;
}

__CFData *protocolIconDataForBundleIdentifier(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v2 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:32.0 scale:{32.0, 2.0}];
  v3 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v1];
  v4 = [v3 prepareImageForDescriptor:v2];

  if (!v4)
  {
    v5 = [MEMORY[0x277D1B1A8] genericApplicationIcon];
    v4 = [v5 prepareImageForDescriptor:v2];

    if (!v4)
    {
      v9 = 0;
      goto LABEL_9;
    }
  }

  Mutable = CFDataCreateMutable(0, 0);
  v7 = [*MEMORY[0x277CE1E10] identifier];
  v8 = CGImageDestinationCreateWithData(Mutable, v7, 1uLL, 0);

  if (v8)
  {
    CGImageDestinationAddImage(v8, [v4 CGImage], 0);
    CGImageDestinationFinalize(v8);
    v9 = Mutable;
LABEL_8:
    CFRelease(v8);
    goto LABEL_9;
  }

  v9 = 0;
  v8 = Mutable;
  if (Mutable)
  {
    goto LABEL_8;
  }

LABEL_9:

LABEL_10:

  return v9;
}

void traceMessagePayloadIfKeyExists_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_273C9C000, a2, OS_LOG_TYPE_DEBUG, "payload: %{private}@", &v2, 0xCu);
}

_DWORD *Inspector::toJSONObjectArray(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*result == 1)
  {
    return WTF::JSONImpl::Value::operator delete();
  }

  --*result;
  return result;
}

void Inspector::ObjCInspectorCSSBackendDispatcher::~ObjCInspectorCSSBackendDispatcher(Inspector::ObjCInspectorCSSBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

void Inspector::ObjCInspectorDOMBackendDispatcher::~ObjCInspectorDOMBackendDispatcher(Inspector::ObjCInspectorDOMBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

void Inspector::ObjCInspectorDOMStorageBackendDispatcher::~ObjCInspectorDOMStorageBackendDispatcher(Inspector::ObjCInspectorDOMStorageBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

void Inspector::ObjCInspectorNetworkBackendDispatcher::~ObjCInspectorNetworkBackendDispatcher(Inspector::ObjCInspectorNetworkBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

void Inspector::ObjCInspectorPageBackendDispatcher::~ObjCInspectorPageBackendDispatcher(Inspector::ObjCInspectorPageBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::String::operator=(WTF::StringImpl **a1, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  if (*v3)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 12);
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v7 + 1;
  return 1;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::enable(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1_1(v2);
    if (v5)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  return Inspector::BackendDispatcher::sendPendingErrors(*v1);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(_DWORD **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

atomic_uint *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_3(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_1(v1);
    if (v4)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v4)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

atomic_uint *Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(atomic_uint **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v4)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t a1, WTF::StringImpl *this, uint64_t a3, void *a4)
{
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::JSONImpl::Value::operator delete();
      this = *a1;
    }

    else
    {
      --*result;
    }
  }

  *a1 = 0;
  if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(this, this);
  }

  *a4 = a3;
  return result;
}

WTF::StringImpl *WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  do
  {
    result = a1[1];
    a1[1] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

    a1 += 2;
  }

  while (a1 != a2);
  return result;
}

WTF::StringImpl *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(unsigned int a1, WTF::StringImpl **a2)
{
  v2 = a2;
  v3 = a1;
  do
  {
    result = *v2;
    if (*v2 != -1)
    {
      *v2 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  return result;
}

void Inspector::InspectorAgentBase::~InspectorAgentBase(Inspector::InspectorAgentBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_2882B1A20;
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }
}

void Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

void Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

void Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

void Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

void Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

WTF *Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(WTF **a1, void *a2)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return WTF::RefCounted<Inspector::BackendDispatcher>::deref(result, a2);
  }

  return result;
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  if (OUTLINED_FUNCTION_0_4(a1, a2, a3))
  {
    OUTLINED_FUNCTION_2_1();
    (*(v3 + 8))();
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v6)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](uint64_t a1)
{
  OUTLINED_FUNCTION_1_2(a1);
  if (v2)
  {
  }

  v3 = OUTLINED_FUNCTION_5();
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, v4);
  }

  return WTF::fastFree(v1, v4);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  if (OUTLINED_FUNCTION_0_4(a1, a2, a3))
  {
    OUTLINED_FUNCTION_2_1();
    (*(v3 + 8))();
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v6)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMStorageBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  if (OUTLINED_FUNCTION_0_4(a1, a2, a3))
  {
    OUTLINED_FUNCTION_2_1();
    (*(v3 + 8))();
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v6)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorNetworkBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  if (OUTLINED_FUNCTION_0_4(a1, a2, a3))
  {
    OUTLINED_FUNCTION_2_1();
    (*(v3 + 8))();
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v6)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorPageBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  if (OUTLINED_FUNCTION_0_4(a1, a2, a3))
  {
    OUTLINED_FUNCTION_2_1();
    (*(v3 + 8))();
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v6)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

void logUnexpectedType_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138478083;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_error_impl(&dword_273C9C000, log, OS_LOG_TYPE_ERROR, "Unexpected type: %{private}@, Expected type: %{private}@", &v3, 0x16u);
}

uint64_t *WTF::JSONImpl::Value::create@<X0>(uint64_t *__return_ptr a1@<X8>, WTF::JSONImpl::Value *this@<X0>)
{
  return MEMORY[0x2821231E0](a1, this);
}

{
  return MEMORY[0x2821231F0](a1, this);
}

uint64_t Inspector::BackendDispatcher::reportProtocolError()
{
  return MEMORY[0x282123240]();
}

{
  return MEMORY[0x282123248]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}