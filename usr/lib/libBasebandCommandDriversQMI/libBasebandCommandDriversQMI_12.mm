void sub_296F64B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F64C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC90E8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC90E0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC90D8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver25txPowerConfiguration_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_5(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC90D8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

uint64_t antenna::QMICommandDriver::getAccessoryType(antenna::QMICommandDriver *this, int a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v43[0] = 67109120;
    v43[1] = a2;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Telephony IOKIT value: 0x%x\n", v43, 8u);
    if ((a2 & 2) == 0)
    {
LABEL_3:
      v5 = 0;
      if ((a2 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_22:
      v14 = (this + 56);
      v13 = *(this + 7);
      if (v13)
      {
        while (1)
        {
          while (1)
          {
            v15 = v13;
            v16 = *(v13 + 7);
            if (v16 < 5)
            {
              break;
            }

            v13 = *v15;
            v14 = v15;
            if (!*v15)
            {
              goto LABEL_29;
            }
          }

          if (v16 == 4)
          {
            break;
          }

          v13 = v15[1];
          if (!v13)
          {
            v14 = v15 + 1;
            goto LABEL_29;
          }
        }

        v5 = *(v15 + 8) | v5;
        if ((a2 & 8) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v15 = (this + 56);
LABEL_29:
        v17 = operator new(0x28uLL);
        *(v17 + 28) = 4;
        *v17 = 0;
        v17[1] = 0;
        v17[2] = v15;
        *v14 = v17;
        v18 = **(this + 6);
        if (v18)
        {
          *(this + 6) = v18;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v17);
        ++*(this + 8);
        v5 = *(v17 + 8) | v5;
        if ((a2 & 8) != 0)
        {
          goto LABEL_34;
        }
      }

LABEL_5:
      if ((a2 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_46:
      v26 = (this + 56);
      v25 = *(this + 7);
      if (v25)
      {
        while (1)
        {
          while (1)
          {
            v27 = v25;
            v28 = *(v25 + 7);
            if (v28 < 0x11)
            {
              break;
            }

            v25 = *v27;
            v26 = v27;
            if (!*v27)
            {
              goto LABEL_53;
            }
          }

          if (v28 == 16)
          {
            break;
          }

          v25 = v27[1];
          if (!v25)
          {
            v26 = v27 + 1;
            goto LABEL_53;
          }
        }

        v5 = *(v27 + 8) | v5;
        if ((a2 & 0x20) != 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v27 = (this + 56);
LABEL_53:
        v29 = operator new(0x28uLL);
        *(v29 + 28) = 16;
        *v29 = 0;
        v29[1] = 0;
        v29[2] = v27;
        *v26 = v29;
        v30 = **(this + 6);
        if (v30)
        {
          *(this + 6) = v30;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v29);
        ++*(this + 8);
        v5 = *(v29 + 8) | v5;
        if ((a2 & 0x20) != 0)
        {
          goto LABEL_58;
        }
      }

LABEL_7:
      if (v5)
      {
        return v5;
      }

      goto LABEL_70;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = (this + 56);
  v7 = *(this + 7);
  if (v7)
  {
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = *(v7 + 7);
        if (v10 < 3)
        {
          break;
        }

        v7 = *v9;
        v8 = v9;
        if (!*v9)
        {
          goto LABEL_17;
        }
      }

      if (v10 == 2)
      {
        break;
      }

      v7 = v9[1];
      if (!v7)
      {
        v8 = v9 + 1;
        goto LABEL_17;
      }
    }

    v5 = *(v9 + 8);
    if ((a2 & 4) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = (this + 56);
LABEL_17:
    v11 = operator new(0x28uLL);
    *(v11 + 28) = 2;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v9;
    *v8 = v11;
    v12 = **(this + 6);
    if (v12)
    {
      *(this + 6) = v12;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v11);
    ++*(this + 8);
    v5 = *(v11 + 8);
    if ((a2 & 4) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_4:
  if ((a2 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_34:
  v20 = (this + 56);
  v19 = *(this + 7);
  if (v19)
  {
    while (1)
    {
      while (1)
      {
        v21 = v19;
        v22 = *(v19 + 7);
        if (v22 < 9)
        {
          break;
        }

        v19 = *v21;
        v20 = v21;
        if (!*v21)
        {
          goto LABEL_41;
        }
      }

      if (v22 == 8)
      {
        break;
      }

      v19 = v21[1];
      if (!v19)
      {
        v20 = v21 + 1;
        goto LABEL_41;
      }
    }

    v5 = *(v21 + 8) | v5;
    if ((a2 & 0x10) != 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v21 = (this + 56);
LABEL_41:
    v23 = operator new(0x28uLL);
    *(v23 + 28) = 8;
    *v23 = 0;
    v23[1] = 0;
    v23[2] = v21;
    *v20 = v23;
    v24 = **(this + 6);
    if (v24)
    {
      *(this + 6) = v24;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v23);
    ++*(this + 8);
    v5 = *(v23 + 8) | v5;
    if ((a2 & 0x10) != 0)
    {
      goto LABEL_46;
    }
  }

LABEL_6:
  if ((a2 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_58:
  v32 = (this + 56);
  v31 = *(this + 7);
  if (v31)
  {
    while (1)
    {
      while (1)
      {
        v33 = v31;
        v34 = *(v31 + 7);
        if (v34 < 0x21)
        {
          break;
        }

        v31 = *v33;
        v32 = v33;
        if (!*v33)
        {
          goto LABEL_65;
        }
      }

      if (v34 == 32)
      {
        break;
      }

      v31 = v33[1];
      if (!v31)
      {
        v32 = v33 + 1;
        goto LABEL_65;
      }
    }

    v5 = *(v33 + 8) | v5;
    if (!v5)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v33 = (this + 56);
LABEL_65:
    v35 = operator new(0x28uLL);
    *(v35 + 28) = 32;
    *v35 = 0;
    v35[1] = 0;
    v35[2] = v33;
    *v32 = v35;
    v36 = **(this + 6);
    if (v36)
    {
      *(this + 6) = v36;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v35);
    ++*(this + 8);
    v5 = *(v35 + 8) | v5;
    if (!v5)
    {
LABEL_70:
      v38 = (this + 56);
      v37 = *(this + 7);
      if (v37)
      {
        while (1)
        {
          while (1)
          {
            v39 = v37;
            v40 = *(v37 + 7);
            if (v40 < 2)
            {
              break;
            }

            v37 = *v39;
            v38 = v39;
            if (!*v39)
            {
              goto LABEL_77;
            }
          }

          if (v40)
          {
            break;
          }

          v37 = v39[1];
          if (!v37)
          {
            v38 = v39 + 1;
            goto LABEL_77;
          }
        }

        v41 = v39;
      }

      else
      {
        v39 = (this + 56);
LABEL_77:
        v41 = operator new(0x28uLL);
        *(v41 + 28) = 1;
        *v41 = 0;
        v41[1] = 0;
        v41[2] = v39;
        *v38 = v41;
        v42 = **(this + 6);
        if (v42)
        {
          *(this + 6) = v42;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v41);
        ++*(this + 8);
      }

      return *(v41 + 8);
    }
  }

  return v5;
}

void antenna::QMICommandDriver::e75AccessoryStatusRF_sync(antenna::QMICommandDriver *a1, xpc_object_t *a2, uint64_t a3)
{
  v85 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v68 = v5;
  v69 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v68);
  v63[0] = MEMORY[0x29EDCA5F8];
  v63[1] = 0x40000000;
  v6 = ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v64 = ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v65 = &__block_descriptor_tmp_65;
  v66 = a1;
  v67 = a2;
  v7 = *(&v68 + 1);
  v8 = v69;
  v9 = *(&v68 + 1);
  if (*(&v68 + 1) != v69)
  {
    v9 = *(&v68 + 1);
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v69)
      {
        goto LABEL_9;
      }
    }
  }

  if (v9 == v69)
  {
LABEL_9:
    v12 = operator new(0x10uLL);
    v12[8] = 1;
    *v12 = &unk_2A1E1B8B8;
    *(v12 + 5) = 0;
    v11 = v12 + 10;
    if (v8 >= *(&v69 + 1))
    {
      v14 = v8 - v7;
      v15 = (v8 - v7) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v69 + 1) - v7;
      if ((*(&v69 + 1) - v7) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = v12;
        v20 = v12 + 10;
        v21 = operator new(8 * v18);
        v12 = v19;
      }

      else
      {
        v20 = v12 + 10;
        v21 = 0;
      }

      v22 = &v21[8 * v15];
      *v22 = v12;
      v13 = v22 + 8;
      memcpy(v21, v7, v14);
      *(&v68 + 1) = v21;
      *&v69 = v13;
      *(&v69 + 1) = &v21[8 * v18];
      if (v7)
      {
        operator delete(v7);
      }

      v11 = v20;
    }

    else
    {
      *v8 = v12;
      v13 = v8 + 8;
    }

    *&v69 = v13;
    v6 = v64;
  }

  else
  {
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 10;
  }

  v6(v63, v11);
  v23 = *MEMORY[0x29EDC8FE8];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FE8]))
  {
    value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9020]);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v25 = xpc::dyn_cast_or_default();
    xpc_release(*buf);
    if (v25)
    {
      v26 = xpc_dictionary_get_value(*a2, v23);
      *buf = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v27 = xpc::dyn_cast_or_default();
      AccessoryType = antenna::QMICommandDriver::getAccessoryType(a1, v27);
      xpc_release(*buf);
      v29 = *(a1 + 5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *&buf[4] = AccessoryType;
        LOWORD(v77) = 1024;
        *(&v77 + 2) = AccessoryType;
        _os_log_debug_impl(&dword_296ECF000, v29, OS_LOG_TYPE_DEBUG, "#D accessoryType for RF: 0x%08x(%d)\n", buf, 0xEu);
      }

      v59[0] = MEMORY[0x29EDCA5F8];
      v59[1] = 0x40000000;
      v30 = ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_66;
      v60 = ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_66;
      v61 = &__block_descriptor_tmp_68_1;
      v62 = AccessoryType;
      v31 = *(&v68 + 1);
      v32 = v69;
      v33 = *(&v68 + 1);
      if (*(&v68 + 1) != v69)
      {
        v33 = *(&v68 + 1);
        while (*(*v33 + 8) != 16)
        {
          if (++v33 == v69)
          {
            goto LABEL_43;
          }
        }
      }

      if (v33 == v69)
      {
LABEL_43:
        v36 = operator new(0x10uLL);
        v36[8] = 16;
        *v36 = &unk_2A1E1B908;
        *(v36 + 3) = 0;
        v35 = v36 + 12;
        if (v32 >= *(&v69 + 1))
        {
          v38 = v32 - v31;
          v39 = (v32 - v31) >> 3;
          v40 = v39 + 1;
          if ((v39 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v41 = *(&v69 + 1) - v31;
          if ((*(&v69 + 1) - v31) >> 2 > v40)
          {
            v40 = v41 >> 2;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF8)
          {
            v42 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            if (v42 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v43 = v36;
            v44 = v36 + 12;
            v45 = operator new(8 * v42);
            v36 = v43;
          }

          else
          {
            v44 = v36 + 12;
            v45 = 0;
          }

          v46 = &v45[8 * v39];
          *v46 = v36;
          v37 = v46 + 8;
          memcpy(v45, v31, v38);
          *(&v68 + 1) = v45;
          *&v69 = v37;
          *(&v69 + 1) = &v45[8 * v42];
          if (v31)
          {
            operator delete(v31);
          }

          v35 = v44;
        }

        else
        {
          *v32 = v36;
          v37 = v32 + 8;
        }

        *&v69 = v37;
        v30 = v60;
      }

      else
      {
        if (!v34)
        {
          __cxa_bad_cast();
        }

        v35 = v34 + 12;
      }

      v30(v59, v35);
    }
  }

  qmi::MutableMessageBase::MutableMessageBase();
  v47 = *a3;
  if (*a3)
  {
    v47 = _Block_copy(v47);
  }

  v48 = *(a3 + 8);
  aBlock = v47;
  object = v48;
  if (v48)
  {
    dispatch_retain(v48);
  }

  v49 = *(a1 + 2);
  if (!v49 || (v50 = *(a1 + 1), (v51 = std::__shared_weak_count::lock(v49)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v52 = v51;
  p_shared_weak_owners = &v51->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v51->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v52);
  }

  *buf = MEMORY[0x29EDCA5F8];
  v77 = 1174405120;
  v78 = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm19AccessoryAttachment7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v79 = &__block_descriptor_tmp_139;
  v80 = a1;
  v81 = v50;
  v82 = v52;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v54 = object;
    v83 = _Block_copy(aBlock);
    v84 = object;
    if (!object)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v54 = object;
  v83 = 0;
  v84 = object;
  if (object)
  {
LABEL_70:
    dispatch_retain(v54);
  }

LABEL_71:
  v70 = a1 + 128;
  v71 = QMIServiceMsg::create();
  v72 = 25000;
  v73 = 0;
  v74 = 0;
  v75[0] = MEMORY[0x29EDCA5F8];
  v75[1] = 0x40000000;
  v75[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v75[3] = &unk_29EE5F878;
  v75[4] = buf;
  v74 = _Block_copy(v75);
  qmi::Client::send();
  if (v74)
  {
    _Block_release(v74);
  }

  if (v84)
  {
    dispatch_release(v84);
  }

  if (v83)
  {
    _Block_release(v83);
  }

  if (v82)
  {
    std::__shared_weak_count::__release_weak(v82);
  }

  std::__shared_weak_count::__release_weak(v52);
  if (v54)
  {
    dispatch_release(v54);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v58);
  qmi::MutableMessageBase::~MutableMessageBase(&v68);
}

void sub_296F65B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN7antenna16QMICommandDriver25e75AccessoryStatusRF_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  object[3] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x29EDC9020];
  value = xpc_dictionary_get_value(**(a1 + 40), *MEMORY[0x29EDC9020]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v7 = *(v4 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = xpc_dictionary_get_value(**(a1 + 40), v5);
    v11 = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v11 = xpc_null_create();
    }

    v9 = xpc::dyn_cast_or_default();
    v10 = "detached";
    if (v9)
    {
      v10 = "attached";
    }

    LODWORD(object[0]) = 136315138;
    *(object + 4) = v10;
    _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D accessory for RF: %s", object, 0xCu);
    xpc_release(v11);
  }
}

void sub_296F65D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::QMICommandDriver::e75AccessoryStatusARTD_sync(antenna::QMICommandDriver *a1, xpc_object_t *a2, uint64_t a3)
{
  v85 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v68 = v5;
  v69 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v68);
  v63[0] = MEMORY[0x29EDCA5F8];
  v63[1] = 0x40000000;
  v6 = ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v64 = ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v65 = &__block_descriptor_tmp_70;
  v66 = a1;
  v67 = a2;
  v7 = *(&v68 + 1);
  v8 = v69;
  v9 = *(&v68 + 1);
  if (*(&v68 + 1) != v69)
  {
    v9 = *(&v68 + 1);
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v69)
      {
        goto LABEL_9;
      }
    }
  }

  if (v9 == v69)
  {
LABEL_9:
    v12 = operator new(0x10uLL);
    v12[8] = 1;
    *v12 = &unk_2A1E1B988;
    *(v12 + 5) = 0;
    v11 = v12 + 10;
    if (v8 >= *(&v69 + 1))
    {
      v14 = v8 - v7;
      v15 = (v8 - v7) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v69 + 1) - v7;
      if ((*(&v69 + 1) - v7) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = v12;
        v20 = v12 + 10;
        v21 = operator new(8 * v18);
        v12 = v19;
      }

      else
      {
        v20 = v12 + 10;
        v21 = 0;
      }

      v22 = &v21[8 * v15];
      *v22 = v12;
      v13 = v22 + 8;
      memcpy(v21, v7, v14);
      *(&v68 + 1) = v21;
      *&v69 = v13;
      *(&v69 + 1) = &v21[8 * v18];
      if (v7)
      {
        operator delete(v7);
      }

      v11 = v20;
    }

    else
    {
      *v8 = v12;
      v13 = v8 + 8;
    }

    *&v69 = v13;
    v6 = v64;
  }

  else
  {
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 10;
  }

  v6(v63, v11);
  v23 = *MEMORY[0x29EDC8FE8];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FE8]))
  {
    value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9020]);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v25 = xpc::dyn_cast_or_default();
    xpc_release(*buf);
    if (v25)
    {
      v26 = xpc_dictionary_get_value(*a2, v23);
      *buf = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v27 = xpc::dyn_cast_or_default();
      AccessoryType = antenna::QMICommandDriver::getAccessoryType(a1, v27);
      xpc_release(*buf);
      v29 = *(a1 + 5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *&buf[4] = AccessoryType;
        LOWORD(v77) = 1024;
        *(&v77 + 2) = AccessoryType;
        _os_log_debug_impl(&dword_296ECF000, v29, OS_LOG_TYPE_DEBUG, "#D accessoryType for ARTD: 0x%08x(%d)\n", buf, 0xEu);
      }

      v59[0] = MEMORY[0x29EDCA5F8];
      v59[1] = 0x40000000;
      v30 = ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_71;
      v60 = ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_71;
      v61 = &__block_descriptor_tmp_73_1;
      v62 = AccessoryType;
      v31 = *(&v68 + 1);
      v32 = v69;
      v33 = *(&v68 + 1);
      if (*(&v68 + 1) != v69)
      {
        v33 = *(&v68 + 1);
        while (*(*v33 + 8) != 16)
        {
          if (++v33 == v69)
          {
            goto LABEL_43;
          }
        }
      }

      if (v33 == v69)
      {
LABEL_43:
        v36 = operator new(0x10uLL);
        v36[8] = 16;
        *v36 = &unk_2A1E1B9D8;
        *(v36 + 3) = 0;
        v35 = v36 + 12;
        if (v32 >= *(&v69 + 1))
        {
          v38 = v32 - v31;
          v39 = (v32 - v31) >> 3;
          v40 = v39 + 1;
          if ((v39 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v41 = *(&v69 + 1) - v31;
          if ((*(&v69 + 1) - v31) >> 2 > v40)
          {
            v40 = v41 >> 2;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF8)
          {
            v42 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            if (v42 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v43 = v36;
            v44 = v36 + 12;
            v45 = operator new(8 * v42);
            v36 = v43;
          }

          else
          {
            v44 = v36 + 12;
            v45 = 0;
          }

          v46 = &v45[8 * v39];
          *v46 = v36;
          v37 = v46 + 8;
          memcpy(v45, v31, v38);
          *(&v68 + 1) = v45;
          *&v69 = v37;
          *(&v69 + 1) = &v45[8 * v42];
          if (v31)
          {
            operator delete(v31);
          }

          v35 = v44;
        }

        else
        {
          *v32 = v36;
          v37 = v32 + 8;
        }

        *&v69 = v37;
        v30 = v60;
      }

      else
      {
        if (!v34)
        {
          __cxa_bad_cast();
        }

        v35 = v34 + 12;
      }

      v30(v59, v35);
    }
  }

  qmi::MutableMessageBase::MutableMessageBase();
  v47 = *a3;
  if (*a3)
  {
    v47 = _Block_copy(v47);
  }

  v48 = *(a3 + 8);
  aBlock = v47;
  object = v48;
  if (v48)
  {
    dispatch_retain(v48);
  }

  v49 = *(a1 + 2);
  if (!v49 || (v50 = *(a1 + 1), (v51 = std::__shared_weak_count::lock(v49)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v52 = v51;
  p_shared_weak_owners = &v51->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v51->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v52);
  }

  *buf = MEMORY[0x29EDCA5F8];
  v77 = 1174405120;
  v78 = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm23AccessoryAttachmentARTD7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v79 = &__block_descriptor_tmp_143_1;
  v80 = a1;
  v81 = v50;
  v82 = v52;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v54 = object;
    v83 = _Block_copy(aBlock);
    v84 = object;
    if (!object)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v54 = object;
  v83 = 0;
  v84 = object;
  if (object)
  {
LABEL_70:
    dispatch_retain(v54);
  }

LABEL_71:
  v70 = a1 + 128;
  v71 = QMIServiceMsg::create();
  v72 = 25000;
  v73 = 0;
  v74 = 0;
  v75[0] = MEMORY[0x29EDCA5F8];
  v75[1] = 0x40000000;
  v75[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v75[3] = &unk_29EE5F878;
  v75[4] = buf;
  v74 = _Block_copy(v75);
  qmi::Client::send();
  if (v74)
  {
    _Block_release(v74);
  }

  if (v84)
  {
    dispatch_release(v84);
  }

  if (v83)
  {
    _Block_release(v83);
  }

  if (v82)
  {
    std::__shared_weak_count::__release_weak(v82);
  }

  std::__shared_weak_count::__release_weak(v52);
  if (v54)
  {
    dispatch_release(v54);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v58);
  qmi::MutableMessageBase::~MutableMessageBase(&v68);
}

void sub_296F66538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN7antenna16QMICommandDriver27e75AccessoryStatusARTD_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  object[3] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x29EDC9020];
  value = xpc_dictionary_get_value(**(a1 + 40), *MEMORY[0x29EDC9020]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v7 = *(v4 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = xpc_dictionary_get_value(**(a1 + 40), v5);
    v11 = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v11 = xpc_null_create();
    }

    v9 = xpc::dyn_cast_or_default();
    v10 = "detached";
    if (v9)
    {
      v10 = "attached";
    }

    LODWORD(object[0]) = 136315138;
    *(object + 4) = v10;
    _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D accessory for ARTD: %s", object, 0xCu);
    xpc_release(v11);
  }
}

void sub_296F667A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::QMICommandDriver::antennaSwitch_sync(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v62 = v6;
  v63 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v62);
  v7 = "St3__111__lookaheadIcNS_12regex_traitsIcEEEE";
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9038]))
  {
    v58[0] = MEMORY[0x29EDCA5F8];
    v58[1] = 0x40000000;
    v8 = ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v59 = ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v60 = &__block_descriptor_tmp_75;
    v61 = a2;
    v9 = *(&v62 + 1);
    v10 = v63;
    v11 = *(&v62 + 1);
    if (*(&v62 + 1) != v63)
    {
      v11 = *(&v62 + 1);
      while (*(*v11 + 8) != 16)
      {
        if (++v11 == v63)
        {
          goto LABEL_10;
        }
      }
    }

    if (v11 == v63)
    {
LABEL_10:
      v14 = operator new(0x10uLL);
      v14[8] = 16;
      *v14 = &unk_2A1E1BA58;
      *(v14 + 5) = 0;
      v13 = v14 + 10;
      if (v10 >= *(&v63 + 1))
      {
        v16 = v10 - v9;
        v17 = (v10 - v9) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          goto LABEL_81;
        }

        v19 = *(&v63 + 1) - v9;
        if ((*(&v63 + 1) - v9) >> 2 > v18)
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

        v49 = v14 + 10;
        if (v20)
        {
          if (v20 >> 61)
          {
            goto LABEL_82;
          }

          v21 = v14;
          v22 = operator new(8 * v20);
          v14 = v21;
          v7 = "NSt3__111__lookaheadIcNS_12regex_traitsIcEEEE" + 1;
        }

        else
        {
          v22 = 0;
        }

        v23 = &v22[8 * v17];
        *v23 = v14;
        v15 = v23 + 8;
        memcpy(v22, v9, v16);
        *(&v62 + 1) = v22;
        *&v63 = v15;
        *(&v63 + 1) = &v22[8 * v20];
        if (v9)
        {
          operator delete(v9);
        }

        v13 = v49;
      }

      else
      {
        *v10 = v14;
        v15 = v10 + 8;
      }

      *&v63 = v15;
      v8 = v59;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_80;
      }

      v13 = v12 + 10;
    }

    v8(v58, v13);
  }

  if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9070]))
  {
    goto LABEL_53;
  }

  v54[0] = MEMORY[0x29EDCA5F8];
  v54[1] = *(v7 + 85);
  v24 = ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v55 = ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v56 = &__block_descriptor_tmp_77_0;
  v57 = a2;
  v25 = *(&v62 + 1);
  v26 = v63;
  v27 = *(&v62 + 1);
  if (*(&v62 + 1) != v63)
  {
    v27 = *(&v62 + 1);
    while (*(*v27 + 8) != 17)
    {
      if (++v27 == v63)
      {
        goto LABEL_36;
      }
    }
  }

  if (v27 == v63)
  {
LABEL_36:
    v30 = operator new(0x10uLL);
    v30[8] = 17;
    *v30 = &unk_2A1E1BAA8;
    *(v30 + 5) = 0;
    v29 = v30 + 10;
    if (v26 < *(&v63 + 1))
    {
      *v26 = v30;
      v31 = v26 + 8;
LABEL_51:
      *&v63 = v31;
      v24 = v55;
      goto LABEL_52;
    }

    v32 = v26 - v25;
    v33 = (v26 - v25) >> 3;
    v34 = v33 + 1;
    if (!((v33 + 1) >> 61))
    {
      v35 = *(&v63 + 1) - v25;
      if ((*(&v63 + 1) - v25) >> 2 > v34)
      {
        v34 = v35 >> 2;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      v50 = v30 + 10;
      if (!v36)
      {
        v39 = 0;
        goto LABEL_48;
      }

      if (!(v36 >> 61))
      {
        v37 = v7;
        v38 = v30;
        v39 = operator new(8 * v36);
        v30 = v38;
        v7 = v37;
LABEL_48:
        v40 = &v39[8 * v33];
        *v40 = v30;
        v31 = v40 + 8;
        memcpy(v39, v25, v32);
        *(&v62 + 1) = v39;
        *&v63 = v31;
        *(&v63 + 1) = &v39[8 * v36];
        if (v25)
        {
          operator delete(v25);
        }

        v29 = v50;
        goto LABEL_51;
      }

LABEL_82:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_81:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (!v28)
  {
LABEL_80:
    __cxa_bad_cast();
  }

  v29 = v28 + 10;
LABEL_52:
  v24(v54, v29);
LABEL_53:
  qmi::MutableMessageBase::MutableMessageBase();
  v41 = *a3;
  if (*a3)
  {
    v41 = _Block_copy(v41);
  }

  v42 = *(a3 + 8);
  aBlock = v41;
  object = v42;
  if (v42)
  {
    dispatch_retain(v42);
  }

  v43 = *(a1 + 16);
  if (!v43 || (v44 = *(a1 + 8), (v45 = std::__shared_weak_count::lock(v43)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v46 = v45;
  p_shared_weak_owners = &v45->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v46);
  }

  v69[0] = MEMORY[0x29EDCA5F8];
  v69[1] = 1174405120;
  v69[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm13AntennaConfig7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v69[3] = &__block_descriptor_tmp_147_0;
  v69[4] = a1;
  v69[5] = v44;
  v70 = v46;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v48 = object;
    v71 = _Block_copy(aBlock);
    v72 = object;
    if (!object)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v48 = object;
  v71 = 0;
  v72 = object;
  if (object)
  {
LABEL_63:
    dispatch_retain(v48);
  }

LABEL_64:
  v64 = a1 + 128;
  v65 = QMIServiceMsg::create();
  v66 = 25000;
  v67 = 0;
  v68 = 0;
  v73[0] = MEMORY[0x29EDCA5F8];
  v73[1] = *(v7 + 85);
  v73[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v73[3] = &unk_29EE5F878;
  v73[4] = v69;
  v68 = _Block_copy(v73);
  qmi::Client::send();
  if (v68)
  {
    _Block_release(v68);
  }

  if (v72)
  {
    dispatch_release(v72);
  }

  if (v71)
  {
    _Block_release(v71);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_weak(v70);
  }

  std::__shared_weak_count::__release_weak(v46);
  if (v48)
  {
    dispatch_release(v48);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v53);
  qmi::MutableMessageBase::~MutableMessageBase(&v62);
}

void sub_296F66E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  qmi::Client::SendProxy::~SendProxy(va);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v31 + 56);
  v34 = *(v32 - 152);
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  std::__shared_weak_count::__release_weak(v30);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a11);
  qmi::MutableMessageBase::~MutableMessageBase(&a13);
  qmi::MutableMessageBase::~MutableMessageBase(&a27);
  _Unwind_Resume(a1);
}

void sub_296F66ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9038]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver18antennaSwitch_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9070]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::wiredPortNotification_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v67 = *MEMORY[0x29EDCA608];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FC8]))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v49 = v6;
    v50 = v6;
    qmi::MutableMessageBase::MutableMessageBase(&v49);
    v45[0] = MEMORY[0x29EDCA5F8];
    v45[1] = 0x40000000;
    v7 = ___ZN7antenna16QMICommandDriver26wiredPortNotification_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v46 = ___ZN7antenna16QMICommandDriver26wiredPortNotification_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v47 = &__block_descriptor_tmp_79_0;
    v48 = a2;
    v8 = *(&v49 + 1);
    v9 = v50;
    v10 = *(&v49 + 1);
    if (*(&v49 + 1) != v50)
    {
      v10 = *(&v49 + 1);
      while (*(*v10 + 8) != 1)
      {
        if (++v10 == v50)
        {
          goto LABEL_13;
        }
      }
    }

    if (v10 == v50)
    {
LABEL_13:
      v16 = operator new(0x10uLL);
      v17 = v16;
      v16[4] = 1;
      *v16 = &unk_2A1E1BB28;
      if (v9 >= *(&v50 + 1))
      {
        v19 = v9 - v8;
        v20 = (v9 - v8) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v22 = *(&v50 + 1) - v8;
        if ((*(&v50 + 1) - v8) >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (v23 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = operator new(8 * v23);
        }

        else
        {
          v24 = 0;
        }

        v27 = &v24[8 * v20];
        *v27 = v17;
        v18 = v27 + 8;
        memcpy(v24, v8, v19);
        *(&v49 + 1) = v24;
        *&v50 = v18;
        *(&v50 + 1) = &v24[8 * v23];
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v9 = v16;
        v18 = v9 + 8;
      }

      v12 = v17 + 9;
      *&v50 = v18;
      v7 = v46;
    }

    else
    {
      if (!v11)
      {
        __cxa_bad_cast();
      }

      v12 = v11 + 9;
    }

    v7(v45, v12);
    qmi::MutableMessageBase::MutableMessageBase();
    v28 = *a3;
    if (*a3)
    {
      v28 = _Block_copy(v28);
    }

    v29 = *(a3 + 8);
    v42 = v28;
    v43 = v29;
    if (v29)
    {
      dispatch_retain(v29);
    }

    v30 = a1[2];
    if (!v30 || (v31 = a1[1], (v32 = std::__shared_weak_count::lock(v30)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v33 = v32;
    p_shared_weak_owners = &v32->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v33);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm21WiredPortNotification7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
    v57 = &__block_descriptor_tmp_151;
    aBlock = a1;
    object = v31;
    v60 = v33;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (v42)
    {
      v35 = v43;
      v61 = _Block_copy(v42);
      v62 = v43;
      if (!v43)
      {
LABEL_50:
        v51 = a1 + 16;
        v52 = QMIServiceMsg::create();
        v53 = 25000;
        v54 = 0;
        v55 = 0;
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v64 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
        v65 = &unk_29EE5F878;
        v66 = block;
        v55 = _Block_copy(&buf);
        qmi::Client::send();
        if (v55)
        {
          _Block_release(v55);
        }

        if (v62)
        {
          dispatch_release(v62);
        }

        if (v61)
        {
          _Block_release(v61);
        }

        if (v60)
        {
          std::__shared_weak_count::__release_weak(v60);
        }

        std::__shared_weak_count::__release_weak(v33);
        if (v35)
        {
          dispatch_release(v35);
        }

        if (v42)
        {
          _Block_release(v42);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v44);
        qmi::MutableMessageBase::~MutableMessageBase(&v49);
        return;
      }
    }

    else
    {
      v35 = v43;
      v61 = 0;
      v62 = v43;
      if (!v43)
      {
        goto LABEL_50;
      }
    }

    dispatch_retain(v35);
    goto LABEL_50;
  }

  v13 = a1[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v36 = MEMORY[0x29C269360](*a2);
    memset(block, 170, sizeof(block));
    v37 = strlen(v36);
    if (v37 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v38 = v37;
    if (v37 >= 0x17)
    {
      if ((v37 | 7) == 0x17)
      {
        v40 = 25;
      }

      else
      {
        v40 = (v37 | 7) + 1;
      }

      v39 = operator new(v40);
      block[1] = v38;
      block[2] = (v40 | 0x8000000000000000);
      block[0] = v39;
    }

    else
    {
      HIBYTE(block[2]) = v37;
      v39 = block;
      if (!v37)
      {
        goto LABEL_74;
      }
    }

    memcpy(v39, v36, v38);
LABEL_74:
    *(v38 + v39) = 0;
    free(v36);
    v41 = block;
    if (SHIBYTE(block[2]) < 0)
    {
      v41 = block[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v41;
    _os_log_error_impl(&dword_296ECF000, v13, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", &buf, 0xCu);
    if (SHIBYTE(block[2]) < 0)
    {
      operator delete(block[0]);
    }
  }

  v14 = xpc_null_create();
  if (*a3)
  {
    v15 = _Block_copy(*a3);
  }

  else
  {
    v15 = 0;
  }

  v25 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v57 = &__block_descriptor_tmp_118;
  if (!v15)
  {
    LOBYTE(v60) = 0;
    aBlock = 0;
    object = v14;
    if (v14)
    {
      goto LABEL_27;
    }

LABEL_29:
    object = xpc_null_create();
    goto LABEL_30;
  }

  v26 = _Block_copy(v15);
  LOBYTE(v60) = 0;
  aBlock = v26;
  object = v14;
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_27:
  xpc_retain(v14);
LABEL_30:
  dispatch_async(v25, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v14);
}

void sub_296F6766C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F67710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver26wiredPortNotification_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _BYTE *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FC8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::speakerState_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v68 = *MEMORY[0x29EDCA608];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FD0]))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v6;
    v51 = v6;
    qmi::MutableMessageBase::MutableMessageBase(&v50);
    v46[0] = MEMORY[0x29EDCA5F8];
    v46[1] = 0x40000000;
    v7 = ___ZN7antenna16QMICommandDriver17speakerState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v47 = ___ZN7antenna16QMICommandDriver17speakerState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v48 = &__block_descriptor_tmp_81;
    v49 = a2;
    v8 = *(&v50 + 1);
    v9 = v51;
    v10 = *(&v50 + 1);
    if (*(&v50 + 1) != v51)
    {
      v10 = *(&v50 + 1);
      while (*(*v10 + 8) != 1)
      {
        if (++v10 == v51)
        {
          goto LABEL_13;
        }
      }
    }

    if (v10 == v51)
    {
LABEL_13:
      v16 = operator new(0x10uLL);
      v16[8] = 1;
      *v16 = &unk_2A1E1BBA8;
      *(v16 + 5) = 0;
      v12 = v16 + 10;
      if (v9 >= *(&v51 + 1))
      {
        v18 = v9 - v8;
        v19 = (v9 - v8) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v21 = *(&v51 + 1) - v8;
        if ((*(&v51 + 1) - v8) >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (v22 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v23 = v16;
          v24 = v16 + 10;
          v25 = operator new(8 * v22);
          v16 = v23;
        }

        else
        {
          v24 = v16 + 10;
          v25 = 0;
        }

        v28 = &v25[8 * v19];
        *v28 = v16;
        v17 = v28 + 8;
        memcpy(v25, v8, v18);
        *(&v50 + 1) = v25;
        *&v51 = v17;
        *(&v51 + 1) = &v25[8 * v22];
        if (v8)
        {
          operator delete(v8);
        }

        v12 = v24;
      }

      else
      {
        *v9 = v16;
        v17 = v9 + 8;
      }

      *&v51 = v17;
      v7 = v47;
    }

    else
    {
      if (!v11)
      {
        __cxa_bad_cast();
      }

      v12 = v11 + 10;
    }

    v7(v46, v12);
    qmi::MutableMessageBase::MutableMessageBase();
    v29 = *a3;
    if (*a3)
    {
      v29 = _Block_copy(v29);
    }

    v30 = *(a3 + 8);
    v43 = v29;
    v44 = v30;
    if (v30)
    {
      dispatch_retain(v30);
    }

    v31 = a1[2];
    if (!v31 || (v32 = a1[1], (v33 = std::__shared_weak_count::lock(v31)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v34 = v33;
    p_shared_weak_owners = &v33->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v34);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm12TxPwrSpeaker7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
    v58 = &__block_descriptor_tmp_155;
    aBlock = a1;
    object = v32;
    v61 = v34;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (v43)
    {
      v36 = v44;
      v62 = _Block_copy(v43);
      v63 = v44;
      if (!v44)
      {
LABEL_51:
        v52 = a1 + 16;
        v53 = QMIServiceMsg::create();
        v54 = 25000;
        v55 = 0;
        v56 = 0;
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v65 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
        v66 = &unk_29EE5F878;
        v67 = block;
        v56 = _Block_copy(&buf);
        qmi::Client::send();
        if (v56)
        {
          _Block_release(v56);
        }

        if (v63)
        {
          dispatch_release(v63);
        }

        if (v62)
        {
          _Block_release(v62);
        }

        if (v61)
        {
          std::__shared_weak_count::__release_weak(v61);
        }

        std::__shared_weak_count::__release_weak(v34);
        if (v36)
        {
          dispatch_release(v36);
        }

        if (v43)
        {
          _Block_release(v43);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v45);
        qmi::MutableMessageBase::~MutableMessageBase(&v50);
        return;
      }
    }

    else
    {
      v36 = v44;
      v62 = 0;
      v63 = v44;
      if (!v44)
      {
        goto LABEL_51;
      }
    }

    dispatch_retain(v36);
    goto LABEL_51;
  }

  v13 = a1[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v37 = MEMORY[0x29C269360](*a2);
    memset(block, 170, sizeof(block));
    v38 = strlen(v37);
    if (v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v39 = v38;
    if (v38 >= 0x17)
    {
      if ((v38 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v38 | 7) + 1;
      }

      v40 = operator new(v41);
      block[1] = v39;
      block[2] = (v41 | 0x8000000000000000);
      block[0] = v40;
    }

    else
    {
      HIBYTE(block[2]) = v38;
      v40 = block;
      if (!v38)
      {
        goto LABEL_75;
      }
    }

    memcpy(v40, v37, v39);
LABEL_75:
    *(v39 + v40) = 0;
    free(v37);
    v42 = block;
    if (SHIBYTE(block[2]) < 0)
    {
      v42 = block[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v42;
    _os_log_error_impl(&dword_296ECF000, v13, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", &buf, 0xCu);
    if (SHIBYTE(block[2]) < 0)
    {
      operator delete(block[0]);
    }
  }

  v14 = xpc_null_create();
  if (*a3)
  {
    v15 = _Block_copy(*a3);
  }

  else
  {
    v15 = 0;
  }

  v26 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v58 = &__block_descriptor_tmp_118;
  if (!v15)
  {
    LOBYTE(v61) = 0;
    aBlock = 0;
    object = v14;
    if (v14)
    {
      goto LABEL_27;
    }

LABEL_29:
    object = xpc_null_create();
    goto LABEL_30;
  }

  v27 = _Block_copy(v15);
  LOBYTE(v61) = 0;
  aBlock = v27;
  object = v14;
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_27:
  xpc_retain(v14);
LABEL_30:
  dispatch_async(v26, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v14);
}

void sub_296F67E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F67ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver17speakerState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FD0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::handDetectionState_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v67 = *MEMORY[0x29EDCA608];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9028]))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v49 = v6;
    v50 = v6;
    qmi::MutableMessageBase::MutableMessageBase(&v49);
    v45[0] = MEMORY[0x29EDCA5F8];
    v45[1] = 0x40000000;
    v7 = ___ZN7antenna16QMICommandDriver23handDetectionState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v46 = ___ZN7antenna16QMICommandDriver23handDetectionState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v47 = &__block_descriptor_tmp_83;
    v48 = a2;
    v8 = *(&v49 + 1);
    v9 = v50;
    v10 = *(&v49 + 1);
    if (*(&v49 + 1) != v50)
    {
      v10 = *(&v49 + 1);
      while (*(*v10 + 8) != 1)
      {
        if (++v10 == v50)
        {
          goto LABEL_13;
        }
      }
    }

    if (v10 == v50)
    {
LABEL_13:
      v16 = operator new(0x10uLL);
      v17 = v16;
      v16[4] = 1;
      *v16 = &unk_2A1E1BC28;
      if (v9 >= *(&v50 + 1))
      {
        v19 = v9 - v8;
        v20 = (v9 - v8) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v22 = *(&v50 + 1) - v8;
        if ((*(&v50 + 1) - v8) >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (v23 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = operator new(8 * v23);
        }

        else
        {
          v24 = 0;
        }

        v27 = &v24[8 * v20];
        *v27 = v17;
        v18 = v27 + 8;
        memcpy(v24, v8, v19);
        *(&v49 + 1) = v24;
        *&v50 = v18;
        *(&v50 + 1) = &v24[8 * v23];
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v9 = v16;
        v18 = v9 + 8;
      }

      v12 = v17 + 9;
      *&v50 = v18;
      v7 = v46;
    }

    else
    {
      if (!v11)
      {
        __cxa_bad_cast();
      }

      v12 = v11 + 9;
    }

    v7(v45, v12);
    qmi::MutableMessageBase::MutableMessageBase();
    v28 = *a3;
    if (*a3)
    {
      v28 = _Block_copy(v28);
    }

    v29 = *(a3 + 8);
    v42 = v28;
    v43 = v29;
    if (v29)
    {
      dispatch_retain(v29);
    }

    v30 = a1[2];
    if (!v30 || (v31 = a1[1], (v32 = std::__shared_weak_count::lock(v30)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v33 = v32;
    p_shared_weak_owners = &v32->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v33);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm18TxPwrHandDetection7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
    v57 = &__block_descriptor_tmp_159;
    aBlock = a1;
    object = v31;
    v60 = v33;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (v42)
    {
      v35 = v43;
      v61 = _Block_copy(v42);
      v62 = v43;
      if (!v43)
      {
LABEL_50:
        v51 = a1 + 16;
        v52 = QMIServiceMsg::create();
        v53 = 25000;
        v54 = 0;
        v55 = 0;
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v64 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
        v65 = &unk_29EE5F878;
        v66 = block;
        v55 = _Block_copy(&buf);
        qmi::Client::send();
        if (v55)
        {
          _Block_release(v55);
        }

        if (v62)
        {
          dispatch_release(v62);
        }

        if (v61)
        {
          _Block_release(v61);
        }

        if (v60)
        {
          std::__shared_weak_count::__release_weak(v60);
        }

        std::__shared_weak_count::__release_weak(v33);
        if (v35)
        {
          dispatch_release(v35);
        }

        if (v42)
        {
          _Block_release(v42);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v44);
        qmi::MutableMessageBase::~MutableMessageBase(&v49);
        return;
      }
    }

    else
    {
      v35 = v43;
      v61 = 0;
      v62 = v43;
      if (!v43)
      {
        goto LABEL_50;
      }
    }

    dispatch_retain(v35);
    goto LABEL_50;
  }

  v13 = a1[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v36 = MEMORY[0x29C269360](*a2);
    memset(block, 170, sizeof(block));
    v37 = strlen(v36);
    if (v37 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v38 = v37;
    if (v37 >= 0x17)
    {
      if ((v37 | 7) == 0x17)
      {
        v40 = 25;
      }

      else
      {
        v40 = (v37 | 7) + 1;
      }

      v39 = operator new(v40);
      block[1] = v38;
      block[2] = (v40 | 0x8000000000000000);
      block[0] = v39;
    }

    else
    {
      HIBYTE(block[2]) = v37;
      v39 = block;
      if (!v37)
      {
        goto LABEL_74;
      }
    }

    memcpy(v39, v36, v38);
LABEL_74:
    *(v38 + v39) = 0;
    free(v36);
    v41 = block;
    if (SHIBYTE(block[2]) < 0)
    {
      v41 = block[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v41;
    _os_log_error_impl(&dword_296ECF000, v13, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", &buf, 0xCu);
    if (SHIBYTE(block[2]) < 0)
    {
      operator delete(block[0]);
    }
  }

  v14 = xpc_null_create();
  if (*a3)
  {
    v15 = _Block_copy(*a3);
  }

  else
  {
    v15 = 0;
  }

  v25 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v57 = &__block_descriptor_tmp_118;
  if (!v15)
  {
    LOBYTE(v60) = 0;
    aBlock = 0;
    object = v14;
    if (v14)
    {
      goto LABEL_27;
    }

LABEL_29:
    object = xpc_null_create();
    goto LABEL_30;
  }

  v26 = _Block_copy(v15);
  LOBYTE(v60) = 0;
  aBlock = v26;
  object = v14;
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_27:
  xpc_retain(v14);
LABEL_30:
  dispatch_async(v25, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v14);
}

void sub_296F685D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F6867C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver23handDetectionState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _BYTE *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9028]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::powerSourceState_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v68 = *MEMORY[0x29EDCA608];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FF0]))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v6;
    v51 = v6;
    qmi::MutableMessageBase::MutableMessageBase(&v50);
    v46[0] = MEMORY[0x29EDCA5F8];
    v46[1] = 0x40000000;
    v7 = ___ZN7antenna16QMICommandDriver21powerSourceState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v47 = ___ZN7antenna16QMICommandDriver21powerSourceState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v48 = &__block_descriptor_tmp_85;
    v49 = a2;
    v8 = *(&v50 + 1);
    v9 = v51;
    v10 = *(&v50 + 1);
    if (*(&v50 + 1) != v51)
    {
      v10 = *(&v50 + 1);
      while (*(*v10 + 8) != 1)
      {
        if (++v10 == v51)
        {
          goto LABEL_13;
        }
      }
    }

    if (v10 == v51)
    {
LABEL_13:
      v16 = operator new(0x10uLL);
      v16[8] = 1;
      *v16 = &unk_2A1E1BCA8;
      *(v16 + 3) = 0;
      v12 = v16 + 12;
      if (v9 >= *(&v51 + 1))
      {
        v18 = v9 - v8;
        v19 = (v9 - v8) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v21 = *(&v51 + 1) - v8;
        if ((*(&v51 + 1) - v8) >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (v22 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v23 = v16;
          v24 = v16 + 12;
          v25 = operator new(8 * v22);
          v16 = v23;
        }

        else
        {
          v24 = v16 + 12;
          v25 = 0;
        }

        v28 = &v25[8 * v19];
        *v28 = v16;
        v17 = v28 + 8;
        memcpy(v25, v8, v18);
        *(&v50 + 1) = v25;
        *&v51 = v17;
        *(&v51 + 1) = &v25[8 * v22];
        if (v8)
        {
          operator delete(v8);
        }

        v12 = v24;
      }

      else
      {
        *v9 = v16;
        v17 = v9 + 8;
      }

      *&v51 = v17;
      v7 = v47;
    }

    else
    {
      if (!v11)
      {
        __cxa_bad_cast();
      }

      v12 = v11 + 12;
    }

    v7(v46, v12);
    qmi::MutableMessageBase::MutableMessageBase();
    v29 = *a3;
    if (*a3)
    {
      v29 = _Block_copy(v29);
    }

    v30 = *(a3 + 8);
    v43 = v29;
    v44 = v30;
    if (v30)
    {
      dispatch_retain(v30);
    }

    v31 = a1[2];
    if (!v31 || (v32 = a1[1], (v33 = std::__shared_weak_count::lock(v31)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v34 = v33;
    p_shared_weak_owners = &v33->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v34);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm16PowerSourceState7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
    v58 = &__block_descriptor_tmp_163_1;
    aBlock = a1;
    object = v32;
    v61 = v34;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (v43)
    {
      v36 = v44;
      v62 = _Block_copy(v43);
      v63 = v44;
      if (!v44)
      {
LABEL_51:
        v52 = a1 + 16;
        v53 = QMIServiceMsg::create();
        v54 = 25000;
        v55 = 0;
        v56 = 0;
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v65 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
        v66 = &unk_29EE5F878;
        v67 = block;
        v56 = _Block_copy(&buf);
        qmi::Client::send();
        if (v56)
        {
          _Block_release(v56);
        }

        if (v63)
        {
          dispatch_release(v63);
        }

        if (v62)
        {
          _Block_release(v62);
        }

        if (v61)
        {
          std::__shared_weak_count::__release_weak(v61);
        }

        std::__shared_weak_count::__release_weak(v34);
        if (v36)
        {
          dispatch_release(v36);
        }

        if (v43)
        {
          _Block_release(v43);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v45);
        qmi::MutableMessageBase::~MutableMessageBase(&v50);
        return;
      }
    }

    else
    {
      v36 = v44;
      v62 = 0;
      v63 = v44;
      if (!v44)
      {
        goto LABEL_51;
      }
    }

    dispatch_retain(v36);
    goto LABEL_51;
  }

  v13 = a1[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v37 = MEMORY[0x29C269360](*a2);
    memset(block, 170, sizeof(block));
    v38 = strlen(v37);
    if (v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v39 = v38;
    if (v38 >= 0x17)
    {
      if ((v38 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v38 | 7) + 1;
      }

      v40 = operator new(v41);
      block[1] = v39;
      block[2] = (v41 | 0x8000000000000000);
      block[0] = v40;
    }

    else
    {
      HIBYTE(block[2]) = v38;
      v40 = block;
      if (!v38)
      {
        goto LABEL_75;
      }
    }

    memcpy(v40, v37, v39);
LABEL_75:
    *(v39 + v40) = 0;
    free(v37);
    v42 = block;
    if (SHIBYTE(block[2]) < 0)
    {
      v42 = block[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v42;
    _os_log_error_impl(&dword_296ECF000, v13, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", &buf, 0xCu);
    if (SHIBYTE(block[2]) < 0)
    {
      operator delete(block[0]);
    }
  }

  v14 = xpc_null_create();
  if (*a3)
  {
    v15 = _Block_copy(*a3);
  }

  else
  {
    v15 = 0;
  }

  v26 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v58 = &__block_descriptor_tmp_118;
  if (!v15)
  {
    LOBYTE(v61) = 0;
    aBlock = 0;
    object = v14;
    if (v14)
    {
      goto LABEL_27;
    }

LABEL_29:
    object = xpc_null_create();
    goto LABEL_30;
  }

  v27 = _Block_copy(v15);
  LOBYTE(v61) = 0;
  aBlock = v27;
  object = v14;
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_27:
  xpc_retain(v14);
LABEL_30:
  dispatch_async(v26, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v14);
}

void sub_296F68D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F68E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver21powerSourceState_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _DWORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FF0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::deviceMaterial_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v103 = v6;
  v104 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v103);
  v99[0] = MEMORY[0x29EDCA5F8];
  v99[1] = 0x40000000;
  v7 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v100 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v101 = &__block_descriptor_tmp_87;
  v102 = a2;
  v8 = *(&v103 + 1);
  v9 = v104;
  v10 = *(&v103 + 1);
  v83 = a3;
  if (*(&v103 + 1) != v104)
  {
    v10 = *(&v103 + 1);
    while (*(*v10 + 8) != 16)
    {
      if (++v10 == v104)
      {
        goto LABEL_9;
      }
    }
  }

  if (v10 == v104)
  {
LABEL_9:
    v13 = operator new(0x10uLL);
    v13[8] = 16;
    *v13 = &unk_2A1E1BD28;
    *(v13 + 5) = 0;
    v12 = v13 + 10;
    if (v9 >= *(&v104 + 1))
    {
      v15 = v9 - v8;
      v16 = (v9 - v8) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        goto LABEL_125;
      }

      v18 = *(&v104 + 1) - v8;
      if ((*(&v104 + 1) - v8) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          goto LABEL_126;
        }

        v20 = v13;
        v21 = v13 + 10;
        v22 = operator new(8 * v19);
        v13 = v20;
      }

      else
      {
        v21 = v13 + 10;
        v22 = 0;
      }

      v23 = &v22[8 * v16];
      *v23 = v13;
      v14 = v23 + 8;
      memcpy(v22, v8, v15);
      *(&v103 + 1) = v22;
      *&v104 = v14;
      *(&v104 + 1) = &v22[8 * v19];
      if (v8)
      {
        operator delete(v8);
      }

      v12 = v21;
    }

    else
    {
      *v9 = v13;
      v14 = v9 + 8;
    }

    *&v104 = v14;
    v7 = v100;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_124;
    }

    v12 = v11 + 10;
  }

  v7(v99, v12);
  v95[0] = MEMORY[0x29EDCA5F8];
  v95[1] = 0x40000000;
  v24 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v96 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v97 = &__block_descriptor_tmp_89;
  v98 = a2;
  v25 = *(&v103 + 1);
  v26 = v104;
  v27 = *(&v103 + 1);
  if (*(&v103 + 1) != v104)
  {
    v27 = *(&v103 + 1);
    while (*(*v27 + 8) != 17)
    {
      if (++v27 == v104)
      {
        goto LABEL_33;
      }
    }
  }

  if (v27 == v104)
  {
LABEL_33:
    v30 = operator new(0x10uLL);
    v30[8] = 17;
    *v30 = &unk_2A1E1BD78;
    *(v30 + 5) = 0;
    v29 = v30 + 10;
    if (v26 >= *(&v104 + 1))
    {
      v32 = v26 - v25;
      v33 = (v26 - v25) >> 3;
      v34 = v33 + 1;
      if ((v33 + 1) >> 61)
      {
        goto LABEL_125;
      }

      v35 = *(&v104 + 1) - v25;
      if ((*(&v104 + 1) - v25) >> 2 > v34)
      {
        v34 = v35 >> 2;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (v36 >> 61)
        {
          goto LABEL_126;
        }

        v37 = v30;
        v38 = v30 + 10;
        v39 = operator new(8 * v36);
        v30 = v37;
      }

      else
      {
        v38 = v30 + 10;
        v39 = 0;
      }

      v40 = &v39[8 * v33];
      *v40 = v30;
      v31 = v40 + 8;
      memcpy(v39, v25, v32);
      *(&v103 + 1) = v39;
      *&v104 = v31;
      *(&v104 + 1) = &v39[8 * v36];
      if (v25)
      {
        operator delete(v25);
      }

      v29 = v38;
    }

    else
    {
      *v26 = v30;
      v31 = v26 + 8;
    }

    *&v104 = v31;
    v24 = v96;
  }

  else
  {
    if (!v28)
    {
      goto LABEL_124;
    }

    v29 = v28 + 10;
  }

  v24(v95, v29);
  v91[0] = MEMORY[0x29EDCA5F8];
  v91[1] = 0x40000000;
  v41 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3;
  v92 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3;
  v93 = &__block_descriptor_tmp_91_0;
  v94 = a2;
  v42 = *(&v103 + 1);
  v43 = v104;
  v44 = *(&v103 + 1);
  if (*(&v103 + 1) != v104)
  {
    v44 = *(&v103 + 1);
    while (*(*v44 + 8) != 18)
    {
      if (++v44 == v104)
      {
        goto LABEL_57;
      }
    }
  }

  if (v44 == v104)
  {
LABEL_57:
    v47 = operator new(0x10uLL);
    v47[8] = 18;
    *v47 = &unk_2A1E1BDC8;
    *(v47 + 5) = 0;
    v46 = v47 + 10;
    if (v43 >= *(&v104 + 1))
    {
      v49 = v43 - v42;
      v50 = (v43 - v42) >> 3;
      v51 = v50 + 1;
      if ((v50 + 1) >> 61)
      {
        goto LABEL_125;
      }

      v52 = *(&v104 + 1) - v42;
      if ((*(&v104 + 1) - v42) >> 2 > v51)
      {
        v51 = v52 >> 2;
      }

      if (v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        v53 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        if (v53 >> 61)
        {
          goto LABEL_126;
        }

        v54 = v47;
        v55 = v47 + 10;
        v56 = operator new(8 * v53);
        v47 = v54;
      }

      else
      {
        v55 = v47 + 10;
        v56 = 0;
      }

      v57 = &v56[8 * v50];
      *v57 = v47;
      v48 = v57 + 8;
      memcpy(v56, v42, v49);
      *(&v103 + 1) = v56;
      *&v104 = v48;
      *(&v104 + 1) = &v56[8 * v53];
      if (v42)
      {
        operator delete(v42);
      }

      v46 = v55;
    }

    else
    {
      *v43 = v47;
      v48 = v43 + 8;
    }

    *&v104 = v48;
    v41 = v92;
  }

  else
  {
    if (!v45)
    {
      goto LABEL_124;
    }

    v46 = v45 + 10;
  }

  v41(v91, v46);
  v87[0] = MEMORY[0x29EDCA5F8];
  v87[1] = 0x40000000;
  v58 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4;
  v88 = ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4;
  v89 = &__block_descriptor_tmp_93_1;
  v90 = a2;
  v59 = *(&v103 + 1);
  v60 = v104;
  v61 = *(&v103 + 1);
  if (*(&v103 + 1) != v104)
  {
    v61 = *(&v103 + 1);
    while (*(*v61 + 8) != 19)
    {
      if (++v61 == v104)
      {
        goto LABEL_81;
      }
    }
  }

  if (v61 != v104)
  {
    if (v62)
    {
      v63 = v62 + 10;
      goto LABEL_97;
    }

LABEL_124:
    __cxa_bad_cast();
  }

LABEL_81:
  v64 = operator new(0x10uLL);
  v64[8] = 19;
  *v64 = &unk_2A1E1BE18;
  *(v64 + 5) = 0;
  v63 = v64 + 10;
  if (v60 >= *(&v104 + 1))
  {
    v66 = v60 - v59;
    v67 = (v60 - v59) >> 3;
    v68 = v67 + 1;
    if (!((v67 + 1) >> 61))
    {
      v69 = *(&v104 + 1) - v59;
      if ((*(&v104 + 1) - v59) >> 2 > v68)
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

      if (!v70)
      {
        v72 = v64 + 10;
        v73 = 0;
        goto LABEL_93;
      }

      if (!(v70 >> 61))
      {
        v71 = v64;
        v72 = v64 + 10;
        v73 = operator new(8 * v70);
        v64 = v71;
LABEL_93:
        v74 = &v73[8 * v67];
        *v74 = v64;
        v65 = v74 + 8;
        memcpy(v73, v59, v66);
        *(&v103 + 1) = v73;
        *&v104 = v65;
        *(&v104 + 1) = &v73[8 * v70];
        if (v59)
        {
          operator delete(v59);
        }

        v63 = v72;
        goto LABEL_96;
      }

LABEL_126:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_125:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  *v60 = v64;
  v65 = v60 + 8;
LABEL_96:
  *&v104 = v65;
  v58 = v88;
LABEL_97:
  v58(v87, v63);
  qmi::MutableMessageBase::MutableMessageBase();
  v75 = *v83;
  if (*v83)
  {
    v75 = _Block_copy(v75);
  }

  v76 = *(v83 + 8);
  aBlock = v75;
  object = v76;
  if (v76)
  {
    dispatch_retain(v76);
  }

  v77 = *(a1 + 16);
  if (!v77 || (v78 = *(a1 + 8), (v79 = std::__shared_weak_count::lock(v77)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v80 = v79;
  p_shared_weak_owners = &v79->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v79->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v79->__on_zero_shared)(v79);
    std::__shared_weak_count::__release_weak(v80);
  }

  v110[0] = MEMORY[0x29EDCA5F8];
  v110[1] = 1174405120;
  v110[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm14DeviceMaterial7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v110[3] = &__block_descriptor_tmp_167_0;
  v110[4] = a1;
  v110[5] = v78;
  v111 = v80;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v82 = object;
    v112 = _Block_copy(aBlock);
    v113 = object;
    if (!object)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  v82 = object;
  v112 = 0;
  v113 = object;
  if (object)
  {
LABEL_107:
    dispatch_retain(v82);
  }

LABEL_108:
  v105 = a1 + 128;
  v106 = QMIServiceMsg::create();
  v107 = 25000;
  v108 = 0;
  v109 = 0;
  v114[0] = MEMORY[0x29EDCA5F8];
  v114[1] = 0x40000000;
  v114[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v114[3] = &unk_29EE5F878;
  v114[4] = v110;
  v109 = _Block_copy(v114);
  qmi::Client::send();
  if (v109)
  {
    _Block_release(v109);
  }

  if (v113)
  {
    dispatch_release(v113);
  }

  if (v112)
  {
    _Block_release(v112);
  }

  if (v111)
  {
    std::__shared_weak_count::__release_weak(v111);
  }

  std::__shared_weak_count::__release_weak(v80);
  if (v82)
  {
    dispatch_release(v82);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v86);
  qmi::MutableMessageBase::~MutableMessageBase(&v103);
}

void sub_296F69888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  qmi::Client::SendProxy::~SendProxy(va);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v41 + 56);
  v44 = *(v42 - 168);
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  std::__shared_weak_count::__release_weak(v40);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a11);
  qmi::MutableMessageBase::~MutableMessageBase(&a13);
  qmi::MutableMessageBase::~MutableMessageBase(&a37);
  _Unwind_Resume(a1);
}

void sub_296F698E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9000]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FD8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FC0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver19deviceMaterial_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4(uint64_t a1, _WORD *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC8FB8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::sendSensorID(uint64_t a1, int a2, uint64_t a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN7antenna16QMICommandDriver12sendSensorIDEjN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_96_0;
  v7[4] = a1;
  v10 = a2;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN7antenna16QMICommandDriver12sendSensorIDEjN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v3;
  v37 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v36);
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 0x40000000;
  v4 = ___ZN7antenna16QMICommandDriver12sendSensorIDEjN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_2;
  v33 = ___ZN7antenna16QMICommandDriver12sendSensorIDEjN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_2;
  v34 = &__block_descriptor_tmp_95;
  v35 = *(a1 + 56);
  v5 = *(&v36 + 1);
  v6 = v37;
  v7 = *(&v36 + 1);
  if (*(&v36 + 1) != v37)
  {
    v7 = *(&v36 + 1);
    while (*(*v7 + 8) != 16)
    {
      if (++v7 == v37)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v37)
  {
LABEL_9:
    v10 = operator new(0x10uLL);
    v10[8] = 16;
    *v10 = &unk_2A1E1BE98;
    *(v10 + 3) = 0;
    v9 = v10 + 12;
    if (v6 >= *(&v37 + 1))
    {
      v12 = v6 - v5;
      v13 = (v6 - v5) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v15 = *(&v37 + 1) - v5;
      if ((*(&v37 + 1) - v5) >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v17 = v10;
        v18 = v10 + 12;
        v19 = operator new(8 * v16);
        v10 = v17;
      }

      else
      {
        v18 = v10 + 12;
        v19 = 0;
      }

      v20 = &v19[8 * v13];
      *v20 = v10;
      v11 = v20 + 8;
      memcpy(v19, v5, v12);
      *(&v36 + 1) = v19;
      *&v37 = v11;
      *(&v37 + 1) = &v19[8 * v16];
      if (v5)
      {
        operator delete(v5);
      }

      v9 = v18;
    }

    else
    {
      *v6 = v10;
      v11 = v6 + 8;
    }

    *&v37 = v11;
    v4 = v33;
  }

  else
  {
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 12;
  }

  v4(v32, v9);
  qmi::MutableMessageBase::MutableMessageBase();
  v21 = *(a1 + 40);
  if (v21)
  {
    v21 = _Block_copy(v21);
  }

  v22 = *(a1 + 48);
  aBlock = v21;
  object = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  v23 = *(v2 + 16);
  if (!v23 || (v24 = *(v2 + 8), (v25 = std::__shared_weak_count::lock(v23)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v26 = v25;
  p_shared_weak_owners = &v25->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v26);
  }

  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 1174405120;
  v43[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm10SensorInfo7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v43[3] = &__block_descriptor_tmp_171_0;
  v43[4] = v2;
  v43[5] = v24;
  v44 = v26;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v28 = object;
    v45 = _Block_copy(aBlock);
    v46 = object;
    if (!object)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v28 = object;
  v45 = 0;
  v46 = object;
  if (object)
  {
LABEL_35:
    dispatch_retain(v28);
  }

LABEL_36:
  v38 = v2 + 128;
  v39 = QMIServiceMsg::create();
  v40 = 25000;
  v41 = 0;
  v42 = 0;
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 0x40000000;
  v47[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v47[3] = &unk_29EE5F878;
  v47[4] = v43;
  v42 = _Block_copy(v47);
  qmi::Client::send();
  if (v42)
  {
    _Block_release(v42);
  }

  if (v46)
  {
    dispatch_release(v46);
  }

  if (v45)
  {
    _Block_release(v45);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  std::__shared_weak_count::__release_weak(v26);
  if (v28)
  {
    dispatch_release(v28);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v31);
  qmi::MutableMessageBase::~MutableMessageBase(&v36);
}

void sub_296F6A058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  qmi::Client::SendProxy::~SendProxy(&a25);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v37 + 56);
  if (a36)
  {
    std::__shared_weak_count::__release_weak(a36);
  }

  std::__shared_weak_count::__release_weak(v36);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a12);
  qmi::MutableMessageBase::~MutableMessageBase(&a21);
  _Unwind_Resume(a1);
}

void sub_296F6A0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c59_ZTSN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c59_ZTSN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void antenna::QMICommandDriver::stewieSARWaitTime(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_296ECF000, v1, OS_LOG_TYPE_ERROR, "Not implemented stewie SAR wait time in this product", v2, 2u);
  }
}

void antenna::QMICommandDriver::getNVItems(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9[0]) = 0;
    _os_log_error_impl(&dword_296ECF000, v3, OS_LOG_TYPE_ERROR, "Not supported", v9, 2u);
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  if (*(a2 + 8))
  {
    v5 = _Block_copy(v4);
    v6 = v5;
    v7 = *(a2 + 8);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN7antenna7NVItemsEEEclIJbS2_EEEvDpT__block_invoke;
    v9[3] = &__block_descriptor_tmp_172_1;
    if (v5)
    {
      v8 = _Block_copy(v5);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v12 = 1;
    v11 = 0;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

atomic_ullong *std::shared_ptr<antenna::QMICommandDriver>::shared_ptr[abi:ne200100]<antenna::QMICommandDriver,std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E1B388;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296F6A428(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver*)#1}::operator() const(antenna::QMICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<antenna::QMICommandDriver *,std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver *)#1},std::allocator<antenna::QMICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<antenna::QMICommandDriver *,std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver *)#1},std::allocator<antenna::QMICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver*)#1}::operator() const(antenna::QMICommandDriver*)::{lambda(void *)#1}::__invoke(antenna::QMICommandDriver *a1)
{
  if (a1)
  {
    antenna::QMICommandDriver::~QMICommandDriver(a1);

    operator delete(v1);
  }
}

void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E1B3D0;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7antenna13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7antenna13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>(antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,dispatch_queue_s::default_delete<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  memset(&__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*v2, *MEMORY[0x29EDC8FA8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object);
  v5 = strlen(*MEMORY[0x29EDC9078]);
  v6 = v5;
  v7 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v5 != -1)
    {
      p_s1 = &__s1;
      size = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
      goto LABEL_9;
    }

LABEL_192:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v5 == -1)
  {
    goto LABEL_192;
  }

  size = __s1.__r_.__value_.__l.__size_;
  p_s1 = __s1.__r_.__value_.__r.__words[0];
LABEL_9:
  if (size >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = size;
  }

  if (!memcmp(p_s1, *MEMORY[0x29EDC9078], v10) && size == v6)
  {
    v17 = *(v2 + 16);
    if (v17)
    {
      v18 = _Block_copy(v17);
      v19 = *(v2 + 24);
      object = v18;
      v74 = v19;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = 0;
      v19 = *(v2 + 24);
      object = 0;
      v74 = v19;
      if (!v19)
      {
LABEL_26:
        antenna::QMICommandDriver::txPowerCappingEnable_sync(v3, v2, &object);
        if (v19)
        {
          dispatch_release(v19);
        }

        if (v18)
        {
          goto LABEL_164;
        }

        goto LABEL_182;
      }
    }

    dispatch_retain(v19);
    goto LABEL_26;
  }

  v12 = *MEMORY[0x29EDC90F0];
  v13 = strlen(*MEMORY[0x29EDC90F0]);
  v14 = v13;
  if ((v7 & 0x80000000) == 0)
  {
    if (v13 != -1)
    {
      v15 = v7;
      if (v7 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v7;
      }

      if (memcmp(&__s1, v12, v16))
      {
        goto LABEL_43;
      }

LABEL_35:
      if (v15 != v14)
      {
        goto LABEL_43;
      }

      v21 = *(v2 + 16);
      if (v21)
      {
        v18 = _Block_copy(v21);
        v22 = *(v2 + 24);
        object = v18;
        v74 = v22;
        if (!v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v18 = 0;
        v22 = *(v2 + 24);
        object = 0;
        v74 = v22;
        if (!v22)
        {
LABEL_39:
          antenna::QMICommandDriver::transmitIndicationRegister_sync(v3, &object);
          if (v22)
          {
            dispatch_release(v22);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }
      }

      dispatch_retain(v22);
      goto LABEL_39;
    }

LABEL_193:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 == -1)
  {
    goto LABEL_193;
  }

  v15 = __s1.__r_.__value_.__l.__size_;
  if (__s1.__r_.__value_.__l.__size_ >= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = __s1.__r_.__value_.__l.__size_;
  }

  if (!memcmp(__s1.__r_.__value_.__l.__data_, v12, v20))
  {
    goto LABEL_35;
  }

LABEL_43:
  v23 = *MEMORY[0x29EDC90C0];
  v24 = strlen(*MEMORY[0x29EDC90C0]);
  v25 = v24;
  if ((v7 & 0x80000000) == 0)
  {
    if (v24 != -1)
    {
      v26 = v7;
      if (v7 >= v24)
      {
        v27 = v24;
      }

      else
      {
        v27 = v7;
      }

      if (memcmp(&__s1, v23, v27))
      {
        goto LABEL_65;
      }

LABEL_57:
      if (v26 != v25)
      {
        goto LABEL_65;
      }

      v29 = *(v2 + 16);
      if (v29)
      {
        v18 = _Block_copy(v29);
        v30 = *(v2 + 24);
        object = v18;
        v74 = v30;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v18 = 0;
        v30 = *(v2 + 24);
        object = 0;
        v74 = v30;
        if (!v30)
        {
LABEL_61:
          antenna::QMICommandDriver::transmitIndicationEnable_sync(v3, v2, &object);
          if (v30)
          {
            dispatch_release(v30);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }
      }

      dispatch_retain(v30);
      goto LABEL_61;
    }

LABEL_194:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v24 == -1)
  {
    goto LABEL_194;
  }

  v26 = __s1.__r_.__value_.__l.__size_;
  if (__s1.__r_.__value_.__l.__size_ >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = __s1.__r_.__value_.__l.__size_;
  }

  if (!memcmp(__s1.__r_.__value_.__l.__data_, v23, v28))
  {
    goto LABEL_57;
  }

LABEL_65:
  v31 = *MEMORY[0x29EDC9018];
  v32 = strlen(*MEMORY[0x29EDC9018]);
  v33 = v32;
  if ((v7 & 0x80000000) == 0)
  {
    if (v32 != -1)
    {
      v34 = v7;
      if (v7 >= v32)
      {
        v35 = v32;
      }

      else
      {
        v35 = v7;
      }

      if (memcmp(&__s1, v31, v35))
      {
        goto LABEL_87;
      }

LABEL_79:
      if (v34 != v33)
      {
        goto LABEL_87;
      }

      v37 = *(v2 + 16);
      if (v37)
      {
        v18 = _Block_copy(v37);
        v38 = *(v2 + 24);
        object = v18;
        v74 = v38;
        if (!v38)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v18 = 0;
        v38 = *(v2 + 24);
        object = 0;
        v74 = v38;
        if (!v38)
        {
LABEL_83:
          antenna::QMICommandDriver::txPowerCapping_sync(v3, v2, &object);
          if (v38)
          {
            dispatch_release(v38);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }
      }

      dispatch_retain(v38);
      goto LABEL_83;
    }

LABEL_195:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v32 == -1)
  {
    goto LABEL_195;
  }

  v34 = __s1.__r_.__value_.__l.__size_;
  if (__s1.__r_.__value_.__l.__size_ >= v32)
  {
    v36 = v32;
  }

  else
  {
    v36 = __s1.__r_.__value_.__l.__size_;
  }

  if (!memcmp(__s1.__r_.__value_.__l.__data_, v31, v36))
  {
    goto LABEL_79;
  }

LABEL_87:
  v39 = *MEMORY[0x29EDC9080];
  v40 = strlen(*MEMORY[0x29EDC9080]);
  v41 = v40;
  if ((v7 & 0x80000000) != 0)
  {
    if (v40 != -1)
    {
      v42 = __s1.__r_.__value_.__l.__size_;
      if (__s1.__r_.__value_.__l.__size_ >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = __s1.__r_.__value_.__l.__size_;
      }

      if (memcmp(__s1.__r_.__value_.__l.__data_, v39, v44))
      {
        goto LABEL_104;
      }

      goto LABEL_101;
    }

LABEL_196:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v40 == -1)
  {
    goto LABEL_196;
  }

  v42 = v7;
  if (v7 >= v40)
  {
    v43 = v40;
  }

  else
  {
    v43 = v7;
  }

  if (memcmp(&__s1, v39, v43))
  {
    goto LABEL_104;
  }

LABEL_101:
  if (v42 == v41)
  {
    v45 = *(v2 + 16);
    if (v45)
    {
      v18 = _Block_copy(v45);
    }

    else
    {
      v18 = 0;
    }

    v56 = *(v2 + 24);
    object = v18;
    v74 = v56;
    if (v56)
    {
      dispatch_retain(v56);
    }

    antenna::QMICommandDriver::txPowerConfiguration_sync(v3, v2, &object);
    if (v56)
    {
      dispatch_release(v56);
    }

    if (v18)
    {
      goto LABEL_164;
    }

    goto LABEL_182;
  }

LABEL_104:
  v46 = strlen(*MEMORY[0x29EDC90B8]);
  v47 = v46;
  if ((v7 & 0x80000000) == 0)
  {
    if (v46 != -1)
    {
      v48 = &__s1;
      v49 = v7;
      goto LABEL_111;
    }

LABEL_197:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v46 == -1)
  {
    goto LABEL_197;
  }

  v49 = __s1.__r_.__value_.__l.__size_;
  v48 = __s1.__r_.__value_.__r.__words[0];
LABEL_111:
  if (v49 >= v47)
  {
    v50 = v47;
  }

  else
  {
    v50 = v49;
  }

  if (memcmp(v48, *MEMORY[0x29EDC90B8], v50) || v49 != v47)
  {
    v52 = strlen(*MEMORY[0x29EDC90C8]);
    v53 = v52;
    if ((v7 & 0x80000000) != 0)
    {
      if (v52 != -1)
      {
        v55 = __s1.__r_.__value_.__l.__size_;
        v54 = __s1.__r_.__value_.__r.__words[0];
LABEL_130:
        if (v55 >= v53)
        {
          v57 = v53;
        }

        else
        {
          v57 = v55;
        }

        if (!memcmp(v54, *MEMORY[0x29EDC90C8], v57) && v55 == v53)
        {
          v58 = *(v2 + 16);
          if (v58)
          {
            v18 = _Block_copy(v58);
          }

          else
          {
            v18 = 0;
          }

          v68 = *(v2 + 24);
          object = v18;
          v74 = v68;
          if (v68)
          {
            dispatch_retain(v68);
          }

          antenna::QMICommandDriver::e75AccessoryStatusARTD_sync(v3, v2, &object);
          if (v68)
          {
            dispatch_release(v68);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }

        v59 = strlen(*MEMORY[0x29EDC8FF8]);
        v60 = v59;
        if ((v7 & 0x80000000) != 0)
        {
          if (v59 != -1)
          {
            v62 = __s1.__r_.__value_.__l.__size_;
            v61 = __s1.__r_.__value_.__r.__words[0];
LABEL_149:
            if (v62 >= v60)
            {
              v64 = v60;
            }

            else
            {
              v64 = v62;
            }

            if (!memcmp(v61, *MEMORY[0x29EDC8FF8], v64) && v62 == v60)
            {
              dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
              antenna::QMICommandDriver::antennaSwitch_sync(v3, v2, &object);
LABEL_181:
              dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&object);
              goto LABEL_182;
            }

            v65 = strlen(*MEMORY[0x29EDC9098]);
            v66 = v65;
            if ((v7 & 0x80000000) != 0)
            {
              if (v65 != -1)
              {
                v7 = __s1.__r_.__value_.__l.__size_;
                v67 = __s1.__r_.__value_.__r.__words[0];
LABEL_167:
                if (v7 >= v66)
                {
                  v69 = v66;
                }

                else
                {
                  v69 = v7;
                }

                if (!memcmp(v67, *MEMORY[0x29EDC9098], v69) && v7 == v66)
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::wiredPortNotification_sync(v3, v2, &object);
                }

                else if (!std::string::compare(&__s1, *MEMORY[0x29EDC8FE0]))
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::speakerState_sync(v3, v2, &object);
                }

                else if (!std::string::compare(&__s1, *MEMORY[0x29EDC9068]))
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::handDetectionState_sync(v3, v2, &object);
                }

                else if (!std::string::compare(&__s1, *MEMORY[0x29EDC9048]))
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::powerSourceState_sync(v3, v2, &object);
                }

                else
                {
                  if (std::string::compare(&__s1, *MEMORY[0x29EDC9010]))
                  {
                    goto LABEL_182;
                  }

                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::QMICommandDriver::deviceMaterial_sync(v3, v2, &object);
                }

                goto LABEL_181;
              }
            }

            else if (v65 != -1)
            {
              v67 = &__s1;
              goto LABEL_167;
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else if (v59 != -1)
        {
          v61 = &__s1;
          v62 = v7;
          goto LABEL_149;
        }

        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else if (v52 != -1)
    {
      v54 = &__s1;
      v55 = v7;
      goto LABEL_130;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v51 = *(v2 + 16);
  if (v51)
  {
    v18 = _Block_copy(v51);
  }

  else
  {
    v18 = 0;
  }

  v63 = *(v2 + 24);
  object = v18;
  v74 = v63;
  if (v63)
  {
    dispatch_retain(v63);
  }

  antenna::QMICommandDriver::e75AccessoryStatusRF_sync(v3, v2, &object);
  if (v63)
  {
    dispatch_release(v63);
  }

  if (v18)
  {
LABEL_164:
    _Block_release(v18);
  }

LABEL_182:
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  v70 = *(v2 + 24);
  if (v70)
  {
    dispatch_release(v70);
  }

  v71 = *(v2 + 16);
  if (v71)
  {
    _Block_release(v71);
  }

  xpc_release(*v2);
  operator delete(v2);
  v72 = a1[2];
  if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v72->__on_zero_shared)(v72);
    std::__shared_weak_count::__release_weak(v72);
  }

  operator delete(a1);
}

void sub_296F6AFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&object);
  if (a21 < 0)
  {
    operator delete(__p);
    std::unique_ptr<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](&a11);
    std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*v2);
    operator delete(v2);
  }

  return a1;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitEnable>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitEnable>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B428;
  return result;
}

char *qmi::MutableMessageBase::createTLV<bsp::tlv::abm::SvcType>(void *a1)
{
  v2 = operator new(0x10uLL);
  v3 = v2;
  v2[4] = 16;
  *v2 = &unk_2A1E1B478;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(8 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v9];
    *v14 = v3;
    v6 = v14 + 8;
    memcpy(v13, v7, v8);
    a1[1] = v13;
    a1[2] = v6;
    a1[3] = &v13[8 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 8;
  }

  a1[2] = v6;
  return v3 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SvcType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SvcType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B478;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm18TxPwr_Limit_Enable7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm18TxPwr_Limit_Enable7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6B5DC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE56c59_ZTSN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE56c59_ZTSN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm18TxPwr_Limit_Enable7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  cast_message_type<qmi::ResponseBase const&>::cast(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_296F6B8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm20TxPwrLimitIndication10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F6B9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm16TransmitStateInd10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F6BAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c56_ZTSN8dispatch5blockIU13block_pointerFvbN3xpc6objectEEEE40c17_ZTSN3xpc6objectE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c56_ZTSN8dispatch5blockIU13block_pointerFvbN3xpc6objectEEEE40c17_ZTSN3xpc6objectE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::NotificationEnable>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::NotificationEnable>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B528;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm25TxPwr_Notification_Enable7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm25TxPwr_Notification_Enable7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6BF7C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm25TxPwr_Notification_Enable7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TransmitEnable>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TransmitEnable>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B5A8;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm22TransmitStateIndConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F6C2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm14TxPwr_Stop_Cap7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm14TxPwr_Stop_Cap7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6C590(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm14TxPwr_Stop_Cap7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PhoneBackoffLevel>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PhoneBackoffLevel>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B628;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AntennaFreeSpaceConfigLevel>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AntennaFreeSpaceConfigLevel>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1B678;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm15TxPwr_Start_Cap7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm15TxPwr_Start_Cap7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6CB0C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm15TxPwr_Start_Cap7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TechType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TechType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B6F8;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::CLTMPercentile>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::CLTMPercentile>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B748;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::CLTMDutyCycle>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::CLTMDutyCycle>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B798;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitTimeout>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitTimeout>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B7E8;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitTimeoutPhone>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::LimitTimeoutPhone>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B838;
  *(result + 5) = *(a1 + 10);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm13TxPwrConfigV37RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm13TxPwrConfigV37RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6D23C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm13TxPwrConfigV37RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryStatus>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryStatus>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B8B8;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B908;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm19AccessoryAttachment7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm19AccessoryAttachment7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6D7C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm19AccessoryAttachment7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryStatusARTD>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryStatusARTD>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B988;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryTypeARTD>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryTypeARTD>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1B9D8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm23AccessoryAttachmentARTD7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm23AccessoryAttachmentARTD7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6DD54(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm23AccessoryAttachmentARTD7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TxAntennaConfigInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TxAntennaConfigInfo>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BA58;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ARTDConfigInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ARTDConfigInfo>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BAA8;
  *(result + 5) = *(a1 + 10);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm13AntennaConfig7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm13AntennaConfig7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6E2E0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm13AntennaConfig7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::WiredPortStatus>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::WiredPortStatus>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1BB28;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm21WiredPortNotification7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm21WiredPortNotification7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6E7D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm21WiredPortNotification7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SpeakerState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SpeakerState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BBA8;
  *(result + 5) = *(a1 + 10);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm12TxPwrSpeaker7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm12TxPwrSpeaker7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6ECD8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm12TxPwrSpeaker7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::HandState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::HandState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1BC28;
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm18TxPwrHandDetection7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm18TxPwrHandDetection7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6F1D0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm18TxPwrHandDetection7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PowerSourceState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PowerSourceState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BCA8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm16PowerSourceState7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm16PowerSourceState7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6F6D0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm16PowerSourceState7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BottomEnclosure>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BottomEnclosure>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BD28;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TopEnclosure>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TopEnclosure>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BD78;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::FCMType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::FCMType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BDC8;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BCMType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BCMType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BE18;
  *(result + 5) = *(a1 + 10);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm14DeviceMaterial7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm14DeviceMaterial7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F6FD74(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm14DeviceMaterial7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SensorID>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SensorID>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BE98;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm10SensorInfo7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v20 = 0;
  v4 = a1[6];
  if (v4)
  {
    v20 = std::__shared_weak_count::lock(v4);
    if (!v20)
    {
      return;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v22 = v8, v23 = 2080, v24 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm10SensorInfo7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20, a2);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_296F70274(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm10SensorInfo7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void *__copy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvbN7antenna7NVItemsEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvbN7antenna7NVItemsEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t coex::QMICommandDriver::create@<X0>(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC0uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  coex::QMICommandDriver::QMICommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<coex::QMICommandDriver>::shared_ptr[abi:ne200100]<coex::QMICommandDriver,std::shared_ptr<coex::QMICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::QMICommandDriver>(coex::QMICommandDriver*)::{lambda(coex::QMICommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return (*(**a2 + 48))(*a2);
}

void sub_296F705E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::QMICommandDriver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  coex::CommandDriver::CommandDriver();
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  *(a1 + 136) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v4 = (a1 + 184);
  *a1 = &unk_2A1E1BF30;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  if ((atomic_load_explicit(&qword_2A18A5978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5978))
  {
    _MergedGlobals_3 = 0;
    __cxa_guard_release(&qword_2A18A5978);
  }

  if ((atomic_load_explicit(&qword_2A18A5980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5980))
  {
    v9 = *MEMORY[0x29EDC8788];
    qword_2A18A5990 = *MEMORY[0x29EDC8790];
    unk_2A18A5998 = v9;
    qword_2A18A59A0 = *MEMORY[0x29EDC8840];
    __cxa_guard_release(&qword_2A18A5980);
  }

  if ((atomic_load_explicit(&qword_2A18A5988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5988))
  {
    qword_2A18A59A8 = *MEMORY[0x29EDB8EF8];
    unk_2A18A59B0 = qword_2A18A59A8;
    qword_2A18A59B8 = qword_2A18A59A8;
    __cxa_guard_release(&qword_2A18A5988);
  }

  v5 = _MergedGlobals_3;
  if (!_MergedGlobals_3)
  {
    v5 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], &qword_2A18A5990, &qword_2A18A59A8, 3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = _MergedGlobals_3;
    _MergedGlobals_3 = v5;
    if (v6)
    {
      CFRelease(v6);
LABEL_13:
      v5 = _MergedGlobals_3;
      if (!_MergedGlobals_3)
      {
        goto LABEL_15;
      }
    }
  }

  CFRetain(v5);
LABEL_15:
  v7 = *v4;
  *v4 = v5;
  if (v7)
  {
    CFRelease(v7);
  }

  return a1;
}

void sub_296F7083C(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v4);
  qmi::Client::~Client(v3);
  coex::CommandDriver::~CommandDriver(v1);
  _Unwind_Resume(a1);
}

void coex::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E1CB00;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
    this[11] = &unk_2A1E1CB48;
    v2 = this[13];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    this[11] = &unk_2A1E1CB48;
    v2 = this[13];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
    if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 24))(v2);
    }
  }

LABEL_8:
  this[8] = &unk_2A1E1CBB8;
  v3 = this[10];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  v4 = this[7];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x29C268320](this + 5);
  v5 = this[4];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = this[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void coex::QMICommandDriver::~QMICommandDriver(coex::QMICommandDriver *this)
{
  *this = &unk_2A1E1BF30;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v5, 2u);
  }

  v3 = *(this + 23);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    CFRelease(v4);
  }

  qmi::Client::~Client((this + 136));
  coex::CommandDriver::~CommandDriver(this);
}

{
  coex::QMICommandDriver::~QMICommandDriver(this);

  operator delete(v1);
}

void coex::QMICommandDriver::init(coex::QMICommandDriver *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_20_1;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4coex13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_447;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v54 = 0xAAAAAAAAAAAAAAAALL;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v54, *(v1 + 48));
  if (!v54)
  {
    Name = coex::CommandDriver::getName(v1);
    v23 = strlen(Name);
    if (v23 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v24 = v23;
    if (v23 >= 0x17)
    {
      if ((v23 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v23 | 7) + 1;
      }

      p_dst = operator new(v36);
      v52 = v24;
      v53 = v36 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v53) = v23;
      p_dst = &__dst;
      if (!v23)
      {
        LOBYTE(__dst) = 0;
        v26 = *(v1 + 24);
        v43 = v26;
        if (!v26)
        {
LABEL_44:
          v49 = 4;
          strcpy(v48, "coex");
          v27 = *(v1 + 16);
          if (!v27 || (v28 = *(v1 + 8), (v29 = std::__shared_weak_count::lock(v27)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v30 = v29;
          atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v41 = 0;
            v42 = 0;
            v31 = std::__shared_weak_count::lock(v29);
            if (v31)
            {
LABEL_48:
              atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v41 = v28;
              v42 = v31;
LABEL_49:
              std::__shared_weak_count::__release_weak(v30);
              if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v31->__on_zero_shared)(v31);
                std::__shared_weak_count::__release_weak(v31);
              }

              qmi::Client::createWithQueue();
              v32 = v58;
              v58 = 0uLL;
              v33 = *(v1 + 160);
              *(v1 + 152) = v32;
              if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v33->__on_zero_shared)(v33);
                std::__shared_weak_count::__release_weak(v33);
              }

              qmi::Client::~Client(buf);
              if (v42)
              {
                std::__shared_weak_count::__release_weak(v42);
              }

              if (v49 < 0)
              {
                operator delete(v48[0]);
                v14 = v43;
                if (!v43)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v14 = v43;
                if (!v43)
                {
                  goto LABEL_29;
                }
              }

LABEL_28:
              dispatch_release(v14);
              goto LABEL_29;
            }
          }

          else
          {
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v30);
            v41 = 0;
            v42 = 0;
            v31 = std::__shared_weak_count::lock(v30);
            if (v31)
            {
              goto LABEL_48;
            }
          }

          v41 = 0;
          v42 = v31;
          goto LABEL_49;
        }

LABEL_43:
        dispatch_retain(v26);
        goto LABEL_44;
      }
    }

    memmove(p_dst, Name, v24);
    *(p_dst + v24) = 0;
    v26 = *(v1 + 24);
    v43 = v26;
    if (!v26)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v2 = coex::CommandDriver::getName(v1);
  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v3 | 7) + 1;
    }

    v5 = operator new(v35);
    v52 = v4;
    v53 = v35 | 0x8000000000000000;
    __dst = v5;
LABEL_73:
    memmove(v5, v2, v4);
    *(v5 + v4) = 0;
    v6 = *(v1 + 24);
    v50 = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIBYTE(v53) = v3;
  v5 = &__dst;
  if (v3)
  {
    goto LABEL_73;
  }

  LOBYTE(__dst) = 0;
  v6 = *(v1 + 24);
  v50 = v6;
  if (v6)
  {
LABEL_6:
    dispatch_retain(v6);
  }

LABEL_7:
  v49 = 4;
  strcpy(v48, "coex");
  v7 = *(v1 + 16);
  if (!v7 || (v8 = *(v1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
    v46 = 0;
    v47 = 0;
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_76:
    v46 = 0;
    v47 = v11;
    goto LABEL_12;
  }

  v46 = 0;
  v47 = 0;
  v11 = std::__shared_weak_count::lock(v9);
  if (!v11)
  {
    goto LABEL_76;
  }

LABEL_11:
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v46 = v8;
  v47 = v11;
LABEL_12:
  std::__shared_weak_count::__release_weak(v10);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v44 = v54;
  v45 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v12 = v58;
  v58 = 0uLL;
  v13 = *(v1 + 160);
  *(v1 + 152) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  qmi::Client::~Client(buf);
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  v14 = v50;
  if (v50)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__dst);
  }

  v15 = *(v1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296ECF000, v15, OS_LOG_TYPE_DEBUG, "#D initializing", buf, 2u);
  }

  v40[25] = MEMORY[0x29EDCA5F8];
  v40[26] = 0x40000000;
  v40[27] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_4;
  v40[28] = &__block_descriptor_tmp_6;
  v40[29] = v1;
  qmi::Client::setHandler();
  v40[20] = MEMORY[0x29EDCA5F8];
  v40[21] = 0x40000000;
  v40[22] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_6;
  v40[23] = &__block_descriptor_tmp_7;
  v40[24] = v1;
  qmi::Client::setHandler();
  v40[15] = MEMORY[0x29EDCA5F8];
  v40[16] = 0x40000000;
  v40[17] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_8;
  v40[18] = &__block_descriptor_tmp_10_1;
  v40[19] = v1;
  qmi::Client::setHandler();
  v40[10] = MEMORY[0x29EDCA5F8];
  v40[11] = 0x40000000;
  v40[12] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_11;
  v40[13] = &__block_descriptor_tmp_13_2;
  v40[14] = v1;
  qmi::Client::setHandler();
  v40[5] = MEMORY[0x29EDCA5F8];
  v40[6] = 0x40000000;
  v40[7] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_2;
  v40[8] = &__block_descriptor_tmp_14_3;
  v40[9] = v1;
  qmi::Client::setHandler();
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v40[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_3;
  v40[3] = &__block_descriptor_tmp_16_1;
  v40[4] = v1;
  *buf = MEMORY[0x29EDCA5F8];
  v57 = 0x40000000;
  *&v58 = ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm9BLERStats10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v58 + 1) = &unk_29EE5FF80;
  v59 = v40;
  qmi::Client::setIndHandler();
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 0x40000000;
  v39[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_4;
  v39[3] = &__block_descriptor_tmp_17_0;
  v39[4] = v1;
  *buf = MEMORY[0x29EDCA5F8];
  v57 = 0x40000000;
  *&v58 = ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm9WWANState10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v58 + 1) = &unk_29EE5FFA8;
  v59 = v39;
  qmi::Client::setIndHandler();
  v38[0] = MEMORY[0x29EDCA5F8];
  v38[1] = 0x40000000;
  v38[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_5;
  v38[3] = &__block_descriptor_tmp_18_0;
  v38[4] = v1;
  *buf = MEMORY[0x29EDCA5F8];
  v57 = 0x40000000;
  *&v58 = ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm13ConditionFail10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v58 + 1) = &unk_29EE5FFD0;
  v59 = v38;
  qmi::Client::setIndHandler();
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 0x40000000;
  v37[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_6;
  v37[3] = &__block_descriptor_tmp_19_1;
  v37[4] = v1;
  *buf = MEMORY[0x29EDCA5F8];
  v57 = 0x40000000;
  *&v58 = ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm16ConditionSuccess10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v58 + 1) = &unk_29EE5FFF8;
  v59 = v37;
  qmi::Client::setIndHandler();
  v16 = *(v1 + 16);
  if (!v16 || (v17 = *(v1 + 8), (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v19 = v18;
  atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v19);
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      goto LABEL_37;
    }

LABEL_61:
    *buf = 0;
    v57 = 0;
    goto LABEL_62;
  }

  v20 = std::__shared_weak_count::lock(v18);
  if (!v20)
  {
    goto LABEL_61;
  }

LABEL_37:
  v21 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *buf = v17;
  v57 = v20;
  std::__shared_weak_count::__release_weak(v19);
  if (atomic_fetch_add(v21 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_63;
  }

  (*(*v21 + 16))(v21);
  v19 = v21;
LABEL_62:
  std::__shared_weak_count::__release_weak(v19);
LABEL_63:
  qmi::Client::setClientHandle();
  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  qmi::Client::start((v1 + 136));
  v34 = v55;
  if (v55)
  {
    if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }
  }
}

void sub_296F71774(_Unwind_Exception *a1)
{
  v3 = *(v1 - 248);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    if ((*(v1 - 177) & 0x80000000) == 0)
    {
LABEL_3:
      v4 = *(v1 - 240);
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 - 177) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 - 200));
  v4 = *(v1 - 240);
  if (!v4)
  {
LABEL_8:
    if (*(v1 - 145) < 0)
    {
      operator delete(*(v1 - 168));
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 144);
      _Unwind_Resume(a1);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 144);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v4);
  goto LABEL_8;
}