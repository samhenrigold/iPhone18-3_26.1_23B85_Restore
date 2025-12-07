void sub_23C4AA240(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v11 = *MEMORY[0x277D85DE8];
  if (qword_27E1F74F0)
  {
    if (dword_27E1F74F8)
    {
      v3 = qword_27E1F74F0 + *(*qword_27E1F74F0 - 24);
      if ((*(v3 + 32) & 5) == 0)
      {
        (*(**(v3 + 40) + 32))(&v9);
        if (v10 >= dword_27E1F74F8)
        {
          sub_23C4AA520(qword_27E1F74F0, "<< Rest of the status file truncated>>\n", 39);
          v4 = qword_27E1F74F0;
          if (!qword_27E1F74F0 || qword_27E1F74F0 == MEMORY[0x277D82670])
          {
            goto LABEL_11;
          }

          (*(*qword_27E1F74F0 + 8))(qword_27E1F74F0);
          qword_27E1F74F0 = 0;
          sub_23C4AA7CC();
          if (byte_27E1F678F < 0)
          {
            *qword_27E1F6778 = 0;
            qword_27E1F6780 = 0;
          }

          else
          {
            LOBYTE(qword_27E1F6778) = 0;
            byte_27E1F678F = 0;
          }
        }
      }
    }

    v4 = qword_27E1F74F0;
LABEL_11:
    if (v4)
    {
      __s = 0;
      vasprintf(&__s, a2, va);
      v5 = qword_27E1F74F0;
      v6 = strlen(__s);
      sub_23C4AA520(qword_27E1F74F0, __s, v6);
      std::ios_base::getloc((v5 + *(*v5 - 24)));
      v7 = std::locale::use_facet(&v9, MEMORY[0x277D82680]);
      (v7->__vftable[2].~facet_0)(v7, 10);
      std::locale::~locale(&v9);
      std::ostream::put();
      std::ostream::flush();
      std::ostream::flush();
      free(__s);
    }
  }
}

void sub_23C4AA478(void ***a1)
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

void *sub_23C4AA520(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EED4F80](v19, a1);
  if (v19[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = a2 + a3;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v10;
      if (!v7)
      {
LABEL_28:
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
      goto LABEL_28;
    }

    v12 = *(v6 + 3);
    v13 = v12 <= a3;
    v14 = v12 - a3;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
    {
      goto LABEL_28;
    }

    if (v15 >= 1)
    {
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C496CE8();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      v21 = v15;
      memset(&__b, v10, v15);
      *(&__b.__locale_ + v15) = 0;
      if (v21 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v17 = (*(*v7 + 96))(v7, p_b, v15);
      if (v21 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v17 != v15)
      {
        goto LABEL_28;
      }
    }

    if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x23EED4F90](v19);
  return a1;
}

void sub_23C4AA7CC()
{
  if ((atomic_load_explicit(&qword_27E1F6790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F6790))
  {
    qword_27E1F6778 = 0;
    qword_27E1F6780 = 0;
    unk_27E1F6788 = 0;
    __cxa_atexit(MEMORY[0x277D82640], &qword_27E1F6778, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F6790);
  }
}

uint64_t *sub_23C4AA84C(const void **a1, __int128 **a2)
{
  v2 = qword_27E1F6700;
  if (!qword_27E1F6700)
  {
LABEL_26:
    operator new();
  }

  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = *(v2 + 32);
      v7 = v2 + 32;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = *(v7 + 8);
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_26;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_26;
    }
  }
}

std::string *sub_23C4AA9EC(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = this->__r_.__value_.__r.__words[0];
  if (v2 >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v6 = MEMORY[0x277D85DE0];
  if (size)
  {
    v7 = (v4 + size);
    do
    {
      v8 = v4->__r_.__value_.__s.__data_[0];
      if ((v8 & 0x80000000) != 0)
      {
        if (!__maskrune(v8, 0x4000uLL))
        {
          goto LABEL_15;
        }
      }

      else if ((*(v6 + 4 * v8 + 60) & 0x4000) == 0)
      {
        goto LABEL_15;
      }

      v4 = (v4 + 1);
      --size;
    }

    while (size);
    v4 = v7;
LABEL_15:
    LOBYTE(v2) = *(&this->__r_.__value_.__s + 23);
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((v2 & 0x80u) == 0)
  {
    v9 = this;
  }

  else
  {
    v9 = v3;
  }

  std::string::erase(this, 0, v4 - v9);
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this + v10;
  if (v11 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_;
  }

  if (v11 >= 0)
  {
    v14 = this;
  }

  else
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  while (v13 != v14)
  {
    v16 = *--v13;
    v15 = v16;
    if ((v16 & 0x80000000) != 0)
    {
      if (!__maskrune(v15, 0x4000uLL))
      {
LABEL_30:
        v14 = (v13 + 1);
        break;
      }
    }

    else if ((*(v6 + 4 * v15 + 60) & 0x4000) == 0)
    {
      goto LABEL_30;
    }
  }

  v17 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v18 = v17;
  v19 = this + v17;
  if (v18 >= 0)
  {
    v20 = this;
  }

  else
  {
    v19 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    v20 = this->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(this, v14 - v20, v19 - v14);
}

void MTLCompilerDelete_0(uint64_t a1)
{
  v2 = qword_27E1F6770;
  if (qword_27E1F6770)
  {
    (*(qword_27E1F6770 + 8))();
    dlclose(*v2);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 0;
    MEMORY[0x23EED50C0](v2, 0x80C40D6874129);
  }

  qword_27E1F6770 = 0;
  if (qword_27E1F74F0)
  {
    v3 = qword_27E1F74F0 == MEMORY[0x277D82670];
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_9:
    if (a1)
    {
      goto LABEL_10;
    }

    return;
  }

  (*(*qword_27E1F74F0 + 8))();
  qword_27E1F74F0 = 0;
  sub_23C4AA7CC();
  if ((byte_27E1F678F & 0x80000000) == 0)
  {
    LOBYTE(qword_27E1F6778) = 0;
    byte_27E1F678F = 0;
    goto LABEL_9;
  }

  *qword_27E1F6778 = 0;
  qword_27E1F6780 = 0;
  if (a1)
  {
LABEL_10:
    v4 = *(a1 + 64);
    if (v4)
    {
      for (i = 304; i != 328; i += 8)
      {
        v6 = *(v4 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        *(v4 + i) = 0;
      }

      v7 = *(v4 + 328);
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      *(v4 + 328) = 0;
      v8 = *(v4 + 336);
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      *(v4 + 336) = 0;
      v9 = *(v4 + 344);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(v4 + 344) = 0;
      v10 = *(v4 + 408);
      if (v10)
      {
        MEMORY[0x23EED50A0](v10, 0x1000C8052888210);
      }

      if (*(v4 + 407) < 0)
      {
        operator delete(*(v4 + 384));
      }

      if (*(v4 + 383) < 0)
      {
        operator delete(*(v4 + 360));
      }

      if (*(v4 + 303) < 0)
      {
        operator delete(*(v4 + 280));
      }

      v11 = *(v4 + 128);
      if (v11 != (v4 + 152))
      {
        free(v11);
      }

      if (*(v4 + 120) == 1)
      {
        MEMORY[0x23EED44C0](v4 + 104);
        *(v4 + 120) = 0;
      }

      if (*(v4 + 96) == 1)
      {
        MEMORY[0x23EED44C0](v4 + 80);
        *(v4 + 96) = 0;
      }

      if (*(v4 + 72) == 1)
      {
        MEMORY[0x23EED44C0](v4 + 56);
        *(v4 + 72) = 0;
      }

      llvm::AGX::AGXCompiler::~AGXCompiler((v4 + 48));
      if (*(v4 + 31) < 0)
      {
        operator delete(*(v4 + 8));
      }

      MEMORY[0x23EED50C0](v4, 0x10F2C40B38FBF86);
    }

    JUMPOUT(0x23EED50C0);
  }
}

uint64_t sub_23C4AAE3C(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, llvm::Module *a5, int *a6, void *a7, void *a8, unsigned int a9)
{
  v10 = a5;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v209 = *MEMORY[0x277D85DE8];
  v19 = a2;
  do
  {
    v20 = a2 + ((*v19 >> 6) & 0x3FFFFFC);
    v21 = *v19;
    switch(*v19)
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
        *a6 = v21;
        ++v18;
        v17 = 2;
        break;
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
        *a6 = v21;
        ++v18;
        v17 = 1;
        break;
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x3Bu:
        v16 = (v19 + 1);
        goto LABEL_6;
      case 0x2Eu:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x3Au:
      case 0x44u:
        goto LABEL_6;
      case 0x30u:
        v15 = v19 + 1;
        goto LABEL_6;
      case 0x31u:
        v14 = v19 + 1;
        goto LABEL_6;
      case 0x38u:
        v12 = v19 + 1;
        goto LABEL_6;
      case 0x39u:
        v11 = v19 + 1;
        goto LABEL_6;
      case 0x3Du:
        v13 = v19 + 1;
LABEL_6:
        ++v18;
        break;
      default:
        break;
    }

    v19 = v20;
  }

  while (v21 != 68);
  v171 = v12;
  v172 = v11;
  v176 = v13;
  v22 = 0;
  if ((v18 - 2) >= 8)
  {
    v23 = 0;
  }

  else
  {
    v23 = v17;
  }

  if (a5)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23 == 1;
  }

  v25 = !v24;
  v26 = a1[8];
  if (!v24)
  {
    v22 = (***(v26 + 32))(*(v26 + 32));
  }

  *(v26 + 353) = v22;
  if (!os_variant_has_internal_diagnostics())
  {
    v31 = 0;
    goto LABEL_36;
  }

  llvm::EnableStatistics(1);
  v27 = xpc_dictionary_create(0, 0, 0);
  llvm::ResetStatistics(v27);
  if (v25)
  {
    v28 = 3;
  }

  else
  {
    v28 = 1;
  }

  xpc_dictionary_set_uint64(v27, "instruction_selector", v28);
  xpc_dictionary_set_uint64(v27, "api", a9);
  v29 = *a6 - 1;
  if (v29 < 6)
  {
    v30 = qword_23C532AD0[v29];
LABEL_34:
    xpc_dictionary_set_uint64(v27, "shader_kind", v30);
    goto LABEL_35;
  }

  if (v23 == 1)
  {
    v30 = 1;
    goto LABEL_34;
  }

LABEL_35:
  analytics_send_event();
  v31 = xpc_copy(v27);
  xpc_release(v27);
  llvm::enableTimePasses(v32);
LABEL_36:
  llvm::NamedRegionTimer::NamedRegionTimer();
  v33 = v23 - 1;
  if (v33 > 1)
  {
    v36 = 0;
  }

  else
  {
    MEMORY[0x23EED3D40](v186);
    if (!v10)
    {
      if (a4)
      {
        if (!qword_27E1F6770)
        {
          operator new();
        }

        v10 = (*(qword_27E1F6770 + 16))(v186, a3);
      }

      else
      {
        v10 = 0;
      }
    }

    v181 = v15;
    v37 = v14;
    v38 = *a6;
    v39 = a1[8];
    if (!*(v39 + 328))
    {
      sub_23C4AE0F4(v39);
    }

    v36 = 0;
    switch(v38)
    {
      case 1:
        operator new();
      case 2:
        v202[0].__locale_ = v16;
        v202[1].__locale_ = 0;
        v203[0] = v16;
        operator new();
      case 3:
        v44 = sub_23C5207F0(v39, v10, v16, v171, v172);
        if (!v44)
        {
          goto LABEL_276;
        }

        v48 = (v44 + *(*v44 - 24));
        goto LABEL_87;
      case 4:
        v202[0].__locale_ = v16;
        v202[1].__locale_ = v16;
        v203[0] = 0;
        v40 = (*(**(v39 + 32) + 64))(*(v39 + 32), v39, v10, v202, v181, 2, 0);
        goto LABEL_86;
      case 5:
        *__p = v16;
        *&__p[8] = v16;
        *&__p[16] = 0;
        v202[0].__locale_ = "air.kernel";
        LOWORD(v204) = 259;
        NamedMetadata = llvm::Module::getNamedMetadata(v10, v202);
        v46 = *(v39 + 32);
        v47 = *v46;
        if (NamedMetadata)
        {
          v40 = (*(v47 + 56))(v46, v39, v10, __p, v181, v37);
        }

        else
        {
          v40 = (*(v47 + 64))(v46, v39, v10, __p, v181, 3, v37);
        }

        goto LABEL_86;
      case 6:
        v40 = (*(**(v39 + 32) + 48))(*(v39 + 32), v39, v10, v16);
        goto LABEL_86;
      case 7:
        operator new();
      case 8:
        operator new();
      case 9:
        operator new();
      case 10:
        operator new();
      case 11:
        operator new();
      case 14:
        operator new();
      case 15:
        sub_23C52388C(v39, v186);
      case 16:
        sub_23C5239D0(v39, v186);
      case 17:
        v40 = (*(**(v39 + 32) + 104))(*(v39 + 32), v39, v186);
        goto LABEL_86;
      case 18:
        v40 = (*(**(v39 + 32) + 96))(*(v39 + 32), v39, v186);
        goto LABEL_86;
      case 19:
        operator new();
      case 20:
        v40 = (*(**(v39 + 32) + 40))(*(v39 + 32), v39, v186);
        goto LABEL_86;
      case 21:
      case 22:
        v40 = (*(**(v39 + 32) + 32))(*(v39 + 32), a1[8], v186, 3, 1, 0, v34, v35, "Driver Framework", 16, 1, v171);
        goto LABEL_86;
      case 23:
        v40 = (*(**(v39 + 32) + 32))(*(v39 + 32), a1[8], v186, 8, 0, 0, v34, v35, "Driver Framework", 16, 1, v171);
        goto LABEL_86;
      case 24:
        v40 = (*(**(v39 + 32) + 32))(*(v39 + 32), v39, v186, 0, 0, 1, v34, v35, "Driver Framework", 16, 1, v171);
        goto LABEL_86;
      case 25:
      case 27:
        v41 = v38 == 27;
        v42 = a1[8];
        v43 = 1;
        goto LABEL_51;
      case 26:
      case 28:
        v41 = v38 == 28;
        v42 = a1[8];
        v43 = 0;
LABEL_51:
        sub_23C508918(v42, v186, v43, v41);
      case 29:
      case 30:
      case 31:
        operator new();
      case 33:
        sub_23C5220DC(v39, v186, v176);
      case 34:
        sub_23C522E9C(v39, v186, v176);
      case 35:
        sub_23C5233CC(v39, v186);
      case 36:
        sub_23C5226F4(v39, v186, v176);
      case 37:
        sub_23C5237A0(v39, v186);
      case 38:
        sub_23C523644(v39, v186);
      case 39:
        operator new();
      case 63:
        sub_23C523B14(v39, v186);
      case 64:
        v40 = (*(**(v39 + 32) + 80))(*(v39 + 32), v39, v186);
        goto LABEL_86;
      case 65:
        sub_23C523C48(v39, v186);
      case 66:
        v40 = (*(**(v39 + 32) + 88))(*(v39 + 32), v39, v186);
LABEL_86:
        v48 = v40;
        if (v40)
        {
LABEL_87:
          v36 = (*(*v48 + 40))(v48);
          if (v36)
          {
            a1[7] = *(v48 + 49);
            v49 = *(v48 + 46);
            v50 = *(v48 + 47);
            *(v48 + 870) = 1;
            sub_23C4B0AD0((v48 + 200), v50 - v49, 4uLL);
            sub_23C4B0AD0((v48 + 200), v50 - v49, 4uLL);
            v51 = v50 - v49;
            if (v50 == v49)
            {
              v52 = &unk_23C532B00;
            }

            else
            {
              v52 = v49;
            }

            if (v50 != v49)
            {
              v53 = v51 >> 2;
              v54 = v52 - 4;
              do
              {
                v55 = v53 - 1;
                v56 = *&v54[4 * v53];
                sub_23C4B08D8((v48 + 200), 4uLL);
                sub_23C4B0A6C((v48 + 200), v48[208] - v48[212] + v48[210] - v56 + 4);
                v53 = v55;
              }

              while (v55);
            }

            *(v48 + 870) = 0;
            v57 = sub_23C4B0A6C((v48 + 200), v51 >> 2);
            LODWORD(v202[0].__locale_) = 0;
            v58 = (*(**(v48 + 43) + 360))();
            *(v48 + 870) = 1;
            v59 = v48[210];
            v60 = v48[208] - v48[212];
            sub_23C4B0A04(v48 + 100, 4, v58);
            sub_23C4B0A04(v48 + 100, 6, LODWORD(v202[0].__locale_));
            v61 = sub_23C4B03D4((v48 + 200), v60 + v59);
            *(v48 + 870) = 1;
            v62 = v48[208];
            v63 = v48[212];
            v64 = v48[210];
            if (v57)
            {
              sub_23C4B08D8((v48 + 200), 4uLL);
              sub_23C4B0A04(v48 + 100, 8, (v48[208] - v48[212] + v48[210] - v57 + 4));
            }

            if (v61)
            {
              sub_23C4B08D8((v48 + 200), 4uLL);
              sub_23C4B0A04(v48 + 100, 6, (v48[208] - v48[212] + v48[210] - v61 + 4));
            }

            sub_23C4B0328(v48 + 100, 4, *(v48 + 45));
            v65 = sub_23C4B03D4((v48 + 200), v62 - v63 + v64);
            sub_23C4B1AD8((v48 + 200), v65);
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v66 = *(v48 + 64);
            v67 = *(v48 + 59);
            *__p = *(v48 + 58);
            *&__p[8] = v66;
            v68 = *(v48 + 65);
            *&__p[16] = v67;
            v193 = v68;
            v69 = *(v48 + 66);
            v194 = *(v48 + 60);
            v195 = v69;
            v70 = *(v48 + 68);
            v71 = *(v48 + 63);
            *&v200 = *(v48 + 62);
            *(&v200 + 1) = v70;
            v72 = *(v48 + 69);
            *&v199 = v71;
            *(&v199 + 1) = v72;
            v73 = *(v48 + 94);
            *(&v197 + 1) = (v48[184] - v73 + v48[186]);
            if (DWORD2(v197))
            {
              *&v197 = v73;
            }

            v74 = *(v48 + 118);
            *(&v198 + 1) = (v48[232] - v74 + v48[234]);
            if (DWORD2(v198))
            {
              *&v198 = v74;
            }

            v75 = *(v48 + 106);
            *(&v196 + 1) = (v48[208] - v75 + v48[210]);
            if (DWORD2(v196))
            {
              *&v196 = v75;
            }

            v76 = *(v48 + 50);
            if (*(v76 + 303) < 0)
            {
              sub_23C49F988(__dst, *(v76 + 280), *(v76 + 288));
            }

            else
            {
              v77 = v76 + 280;
              *__dst = *v77;
              v191 = *(v77 + 16);
            }

            v79 = HIBYTE(v191);
            v80 = __dst;
            if (v191 < 0)
            {
              v80 = __dst[0];
              v79 = __dst[1];
            }

            *&v201 = v80;
            *(&v201 + 1) = v79;
            v81 = (*(*v48 + 24))(v48);
            if (sub_23C4B00BC(v81))
            {
              if (MGGetBoolAnswer())
              {
                v82 = sub_23C4A2690("AGC_DUMP_FAKE_MACHO");
                if (v82)
                {
                  if (*v82 != 48 && atoi(v82))
                  {
                    v182 = v36;
                    v83 = (*(*v48 + 24))(v48);
                    v84 = snprintf(__str, 0x80uLL, "Fake-MachO for %s shader %u", v83, v48[174]);
                    sub_23C4AA240(v84, "------ Start %s -------\n", __str);
                    v86 = qword_27E1F74F0;
                    if ((atomic_load_explicit(&qword_27E1F68A8, memory_order_acquire) & 1) == 0)
                    {
                      v85 = __cxa_guard_acquire(&qword_27E1F68A8);
                      if (v85)
                      {
                        sub_23C49F8D0(qword_27E1F67D0, "binary");
                        sub_23C49F8D0(&qword_27E1F67D0[3], "backend_metadata");
                        sub_23C49F8D0(&qword_27E1F67D0[6], "target_backend_metadata");
                        sub_23C49F8D0(&qword_27E1F67D0[9], "statistics_metadata");
                        sub_23C49F8D0(&qword_27E1F67D0[12], "translator_metadata");
                        sub_23C49F8D0(&qword_27E1F67D0[15], "target_translator_metadata");
                        sub_23C49F8D0(&qword_27E1F67D0[18], "backend_telemetry_data");
                        sub_23C49F8D0(&qword_27E1F67D0[21], "backend_counter_data");
                        sub_23C49F8D0(&qword_27E1F67D0[24], "remarks");
                        __cxa_atexit(sub_23C4B1B48, qword_27E1F67D0, &dword_23C496000);
                        __cxa_guard_release(&qword_27E1F68A8);
                      }
                    }

                    v87 = 0;
                    v179 = v86 + 1;
                    v173 = *(MEMORY[0x277D82818] + 72);
                    v174 = *(MEMORY[0x277D82818] + 64);
                    v175 = *MEMORY[0x277D82818];
                    v170 = v33;
                    v177 = v86;
                    do
                    {
                      v88 = &__p[16 * v87];
                      v89 = v88[1];
                      if (v89)
                      {
                        v90 = sub_23C4AA520(v86, ".segment ", 9);
                        v91 = &qword_27E1F67D0[3 * v87];
                        v92 = *(v91 + 23);
                        v93 = v92 >= 0 ? &qword_27E1F67D0[3 * v87] : *v91;
                        v94 = v92 >= 0 ? *(v91 + 23) : v91[1];
                        v95 = sub_23C4AA520(v90, v93, v94);
                        v96 = sub_23C4AA520(v95, ", size ", 7);
                        *(v179 + *(*v86 - 24)) = *(v179 + *(*v86 - 24)) & 0xFFFFFFB5 | 2;
                        v97 = MEMORY[0x23EED4FB0](v96, v89);
                        std::ios_base::getloc((v97 + *(*v97 - 24)));
                        v98 = std::locale::use_facet(v202, MEMORY[0x277D82680]);
                        (v98->__vftable[2].~facet_0)(v98, 10);
                        std::locale::~locale(v202);
                        std::ostream::put();
                        std::ostream::flush();
                        *&v188 = v86;
                        v99 = *v88;
                        v85 = sub_23C4AE1DC(&v188);
                        if (v85)
                        {
                          sub_23C4B0E40(v202);
                          v100 = v188;
                          sub_23C4AA520(v188, "{", 1);
                          std::ios_base::getloc((v100 + *(*v100 - 24)));
                          v101 = std::locale::use_facet(v189, MEMORY[0x277D82680]);
                          (v101->__vftable[2].~facet_0)(v101, 10);
                          std::locale::~locale(v189);
                          std::ostream::put();
                          std::ostream::flush();
                          for (i = 0; i != v89; ++i)
                          {
                            if ((i & 0x1F) == 0)
                            {
                              sub_23C4AA520(v100, "\t", 1);
                            }

                            sub_23C4AA520(v100, &unk_23C53F34D, 0);
                            v103 = *v100;
                            v104 = *v100;
                            *(v100 + *(*v100 - 24) + 24) = 2;
                            v105 = (v100 + *(v104 - 24));
                            if (v105[1].__fmtflags_ == -1)
                            {
                              std::ios_base::getloc(v105);
                              v106 = std::locale::use_facet(v189, MEMORY[0x277D82680]);
                              (v106->__vftable[2].~facet_0)(v106, 32);
                              std::locale::~locale(v189);
                              v103 = *v100;
                            }

                            v105[1].__fmtflags_ = 48;
                            *(v100 + *(v103 - 24) + 8) = *(v100 + *(v103 - 24) + 8) & 0xFFFFFFB5 | 8;
                            v107 = MEMORY[0x23EED4FA0](v100, *(v99 + i));
                            sub_23C4AA520(v107, " ", 1);
                            if ((i & 0x1F) == 0x1F)
                            {
                              std::ios_base::getloc((v100 + *(*v100 - 24)));
                              v108 = std::locale::use_facet(v189, MEMORY[0x277D82680]);
                              (v108->__vftable[2].~facet_0)(v108, 10);
                              std::locale::~locale(v189);
                              std::ostream::put();
                              std::ostream::flush();
                            }
                          }

                          std::ios_base::getloc((v100 + *(*v100 - 24)));
                          v109 = MEMORY[0x277D82680];
                          v110 = std::locale::use_facet(v189, MEMORY[0x277D82680]);
                          (v110->__vftable[2].~facet_0)(v110, 10);
                          std::locale::~locale(v189);
                          std::ostream::put();
                          std::ostream::flush();
                          sub_23C4AA520(v100, "}", 1);
                          std::ios_base::getloc((v100 + *(*v100 - 24)));
                          v111 = std::locale::use_facet(v189, v109);
                          (v111->__vftable[2].~facet_0)(v111, 10);
                          std::locale::~locale(v189);
                          std::ostream::put();
                          std::ostream::flush();
                          std::ostream::flush();
                          v202[0].__locale_ = v175;
                          *(&v202[0].__locale_ + *(v175 - 3)) = v174;
                          v203[0] = v173;
                          v203[1] = (MEMORY[0x277D82878] + 16);
                          if (v206 < 0)
                          {
                            operator delete(v205);
                          }

                          v203[1] = (MEMORY[0x277D82868] + 16);
                          std::locale::~locale(&v204);
                          std::iostream::~basic_iostream();
                          v85 = MEMORY[0x23EED5050](&v207);
                          v33 = v170;
                          v86 = v177;
                        }
                      }

                      ++v87;
                    }

                    while (v87 != 9);
                    sub_23C4AA240(v85, "------ End %s -------\n", __str);
                    v36 = v182;
                  }
                }
              }
            }

            v112 = 40;
            for (j = 8; j != 152; j += 16)
            {
              v112 += (*&__p[j] + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            a1[1] = v112;
            v114 = malloc_type_calloc(1uLL, v112, 0x848854F2uLL);
            v115 = 0;
            *a1 = v114;
            v116 = (v114 + 10);
            do
            {
              v117 = *&__p[v115 + 8];
              *v114 = v117;
              if (v117)
              {
                memcpy(v116, *&__p[v115], v117);
              }

              v116 += (v117 + 7) & 0xFFFFFFFFFFFFFFF8;
              v115 += 16;
              ++v114;
            }

            while (v115 != 144);
            if (SHIBYTE(v191) < 0)
            {
              operator delete(__dst[0]);
            }

            goto LABEL_151;
          }

          v78 = (v48 + 102);
          if (*(v48 + 431) < 0)
          {
            if (!*(v48 + 52))
            {
LABEL_151:
              (*(*v48 + 16))(v48);
              goto LABEL_152;
            }

            v78 = *v78;
          }

          else if (!*(v48 + 431))
          {
            goto LABEL_151;
          }

          a1[2] = strdup(v78);
          goto LABEL_151;
        }

LABEL_276:
        v36 = 0;
LABEL_152:
        llvm::LLVMContext::~LLVMContext(v186);
        break;
      default:
        goto LABEL_152;
    }
  }

  if (v187)
  {
    llvm::Timer::stopTimer(v187);
  }

  if (v33 > 1)
  {
    return 0;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    llvm::GetStatistics(v202, has_internal_diagnostics);
    locale = v202[0].__locale_;
    v120 = v202[1].__locale_;
    while (locale != v120)
    {
      if (!*locale)
      {
        goto LABEL_183;
      }

      sub_23C4A7590(__p, *locale, *(locale + 1));
      if ((__p[23] & 0x80000000) != 0)
      {
        if (*&__p[8] == 19)
        {
          v125 = **__p != 0x49747361466D754ELL || *(*__p + 8) != 0x756C6961466C6573 || *(*__p + 11) != 0x736572756C696146;
          operator delete(*__p);
          if (!v125)
          {
LABEL_181:
            xpc_dictionary_set_uint64(v31, "stat_numfastiselfailures", *(locale + 4));
          }
        }

        else
        {
          operator delete(*__p);
        }
      }

      else if (__p[23] == 19)
      {
        v121 = *__p == 0x49747361466D754ELL && *&__p[8] == 0x756C6961466C6573;
        if (v121 && *&__p[11] == 0x736572756C696146)
        {
          goto LABEL_181;
        }
      }

LABEL_183:
      if (!*locale)
      {
        goto LABEL_208;
      }

      sub_23C4A7590(__p, *locale, *(locale + 1));
      if ((__p[23] & 0x80000000) != 0)
      {
        if (*&__p[8] == 18)
        {
          v130 = **__p != 0x49747361466D754ELL || *(*__p + 8) != 0x65636375536C6573 || *(*__p + 16) != 29555;
          operator delete(*__p);
          if (!v130)
          {
LABEL_206:
            xpc_dictionary_set_uint64(v31, "stat_numfastiselsuccesses", *(locale + 4));
          }
        }

        else
        {
          operator delete(*__p);
        }
      }

      else if (__p[23] == 18)
      {
        v126 = *__p == 0x49747361466D754ELL && *&__p[8] == 0x65636375536C6573;
        if (v126 && *&__p[16] == 29555)
        {
          goto LABEL_206;
        }
      }

LABEL_208:
      if (*locale)
      {
        sub_23C4A7590(__p, *locale, *(locale + 1));
        if ((__p[23] & 0x80000000) != 0)
        {
          if (*&__p[8] != 17)
          {
            operator delete(*__p);
            goto LABEL_233;
          }

          v135 = **__p != 0x74636E75466D754ELL || *(*__p + 8) != 0x65736552736E6F69 || *(*__p + 16) != 116;
          operator delete(*__p);
          if (v135)
          {
            goto LABEL_233;
          }
        }

        else
        {
          if (__p[23] != 17)
          {
            goto LABEL_233;
          }

          v131 = *__p == 0x74636E75466D754ELL && *&__p[8] == 0x65736552736E6F69;
          if (!v131 || __p[16] != 116)
          {
            goto LABEL_233;
          }
        }

        xpc_dictionary_set_uint64(v31, "stat_numfunctionsreset", *(locale + 4));
      }

LABEL_233:
      locale = (locale + 24);
    }

    NamedTimer = llvm::getNamedTimer();
    if (NamedTimer)
    {
      v137 = NamedTimer;
      xpc_dictionary_set_uint64(v31, "time_total", ((*(NamedTimer + 8) + *(NamedTimer + 16)) * 1000000.0));
      llvm::Timer::clear(v137);
    }

    v138 = llvm::getNamedTimer();
    if (v138)
    {
      v139 = v138;
      xpc_dictionary_set_uint64(v31, "time_dagsel_dagcombining1", ((*(v138 + 8) + *(v138 + 16)) * 1000000.0));
      llvm::Timer::clear(v139);
    }

    v140 = llvm::getNamedTimer();
    if (v140)
    {
      v141 = v140;
      xpc_dictionary_set_uint64(v31, "time_dagisel_typelegalization", ((*(v140 + 8) + *(v140 + 16)) * 1000000.0));
      llvm::Timer::clear(v141);
    }

    v142 = llvm::getNamedTimer();
    v36 = v36;
    if (v142)
    {
      v143 = v142;
      xpc_dictionary_set_uint64(v31, "time_dagisel_dagcombiningafterlegalizetypes", ((*(v142 + 8) + *(v142 + 16)) * 1000000.0));
      llvm::Timer::clear(v143);
    }

    v144 = llvm::getNamedTimer();
    if (v144)
    {
      v145 = v144;
      xpc_dictionary_set_uint64(v31, "time_dagisel_vectorlegalization", ((*(v144 + 8) + *(v144 + 16)) * 1000000.0));
      llvm::Timer::clear(v145);
    }

    v146 = llvm::getNamedTimer();
    if (v146)
    {
      v147 = v146;
      xpc_dictionary_set_uint64(v31, "time_dagisel_typelegalization2", ((*(v146 + 8) + *(v146 + 16)) * 1000000.0));
      llvm::Timer::clear(v147);
    }

    v148 = llvm::getNamedTimer();
    if (v148)
    {
      v149 = v148;
      xpc_dictionary_set_uint64(v31, "time_dagisel_dagcombiningafterlegalizevectors", ((*(v148 + 8) + *(v148 + 16)) * 1000000.0));
      llvm::Timer::clear(v149);
    }

    v150 = llvm::getNamedTimer();
    if (v150)
    {
      v151 = v150;
      xpc_dictionary_set_uint64(v31, "time_dagisel_legalization", ((*(v150 + 8) + *(v150 + 16)) * 1000000.0));
      llvm::Timer::clear(v151);
    }

    v152 = llvm::getNamedTimer();
    if (v152)
    {
      v153 = v152;
      xpc_dictionary_set_uint64(v31, "time_dagisel_dagcombining2", ((*(v152 + 8) + *(v152 + 16)) * 1000000.0));
      llvm::Timer::clear(v153);
    }

    v154 = llvm::getNamedTimer();
    if (v154)
    {
      v155 = v154;
      xpc_dictionary_set_uint64(v31, "time_dagisel_instructionselection", ((*(v154 + 8) + *(v154 + 16)) * 1000000.0));
      llvm::Timer::clear(v155);
    }

    v156 = llvm::getNamedTimer();
    if (v156)
    {
      v157 = v156;
      xpc_dictionary_set_uint64(v31, "time_dagisel_instructionscheduling", ((*(v156 + 8) + *(v156 + 16)) * 1000000.0));
      llvm::Timer::clear(v157);
    }

    v158 = llvm::getNamedTimer();
    if (v158)
    {
      v159 = v158;
      xpc_dictionary_set_uint64(v31, "time_dagisel_instructioncreation", ((*(v158 + 8) + *(v158 + 16)) * 1000000.0));
      llvm::Timer::clear(v159);
    }

    if (xpc_dictionary_get_uint64(v31, "instruction_selector") == 2)
    {
      v160 = llvm::getNamedTimer();
      if (v160)
      {
        v161 = v160;
        xpc_dictionary_set_uint64(v31, "time_gisel_irtranslator", ((*(v160 + 8) + *(v160 + 16)) * 1000000.0));
        llvm::Timer::clear(v161);
      }

      v162 = llvm::getNamedTimer();
      if (v162)
      {
        v163 = v162;
        xpc_dictionary_set_uint64(v31, "time_gisel_legalizer", ((*(v162 + 8) + *(v162 + 16)) * 1000000.0));
        llvm::Timer::clear(v163);
      }

      v164 = llvm::getNamedTimer();
      if (v164)
      {
        v165 = v164;
        xpc_dictionary_set_uint64(v31, "time_gisel_regbankallocator", ((*(v164 + 8) + *(v164 + 16)) * 1000000.0));
        llvm::Timer::clear(v165);
      }

      v166 = llvm::getNamedTimer();
      if (v166)
      {
        v167 = v166;
        xpc_dictionary_set_uint64(v31, "time_gisel_instructionselector", ((*(v166 + 8) + *(v166 + 16)) * 1000000.0));
        llvm::Timer::clear(v167);
      }
    }

    v168 = MEMORY[0x23EED5420](v31);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *__p = 136315138;
      *&__p[4] = v168;
      _os_log_impl(&dword_23C496000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Compilation stats+times: %s\n", __p, 0xCu);
    }

    free(v168);
    analytics_send_event();
    if (v202[0].__locale_)
    {
      v202[1] = v202[0];
      operator delete(v202[0].__locale_);
    }
  }

  if (v31)
  {
    xpc_release(v31);
  }

  *a7 = *a1;
  *a8 = a1[1];
  return v36;
}

uint64_t GLCompilerLogBuildRequest(uint64_t a1, const void *a2, const char *a3, const void *a4, const char *a5, int a6, uint64_t a7)
{
  v11 = a6;
  result = sub_23C4D59E0(a2, a3, a7, "state", &v11);
  if (result)
  {
    return sub_23C4D59E0(a4, a5, a7, "bitcode", 0);
  }

  return result;
}

void GLCompilerReleaseReply(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t MTLCompilerCreate(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  v7 = a1 + 12;
  sub_23C4A7590(__dst, (a1 + 12), v5);
  sub_23C4A7590(__p, (v7 + v5), v6);
  v8 = (v5 + v6 + 12);
  memset(&v11, 0, sizeof(v11));
  if (a2 > v8)
  {
    std::string::append(&v11, (a1 + v8), a2 - v8);
  }

  v9 = sub_23C4A7640(&v11, v4, 2u, __p, __dst);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(__dst[0]);
  }

  return v9;
}

uint64_t MTLCompilerBuildRequestWithOptions(void *a1, _DWORD *a2, uint64_t a3, char a4, llvm::Module *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, char **a12)
{
  *a9 = 0;
  *a11 = 0;
  v18 = mach_absolute_time();
  v27 = 0;
  v19 = sub_23C4AAE3C(a1, a2, 0, 0, a5, &v27, a6, a7, 1u);
  if ((a4 & 2) != 0)
  {
    *a11 = 32;
    v20 = mach_absolute_time();
    v21 = sub_23C4D9834(v20 - v18);
    v22 = v21 - a1[7];
    a1[5] = v21;
    a1[6] = v22;
    *a10 = a1 + 4;
  }

  if (v19)
  {
    result = 0;
    *a12 = 0;
  }

  else
  {
    v26 = a1[2];
    v25 = (a1 + 2);
    v24 = v26;
    if (!v26)
    {
      v24 = sub_23C4ADA88(v25, v27);
    }

    *a12 = v24;
    sub_23C4AA240(v24, "** Compilation failed with error: %s **", v24);
    return 1;
  }

  return result;
}

char *sub_23C4ADA88(char **a1, int a2)
{
  sub_23C49F8D0(&v7, "Internal error during ");
  if ((a2 - 3) <= 3)
  {
    std::string::append(&v7, off_278BBF0C8[a2 - 3]);
  }

  std::string::append(&v7, "function compilation");
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v7.__r_.__value_.__r.__words[0];
    v4 = strdup(v7.__r_.__value_.__l.__data_);
    *a1 = v4;
    operator delete(v5);
  }

  else
  {
    v4 = strdup(&v7);
    *a1 = v4;
  }

  return v4;
}

uint64_t MTLCompilerBuildRequestWithSerializedBitcode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, char **a13)
{
  *a11 = 0;
  *a9 = 0;
  *a7 = 0;
  *a12 = 0;
  *a10 = 0;
  *a8 = 0;
  *a13 = sub_23C4ADA88(&v14, 0);
  return 1;
}

uint64_t MTLCompilerBuildRequest(void *a1, _DWORD *a2, uint64_t a3, llvm::Module *a4, void *a5, void *a6, char **a7)
{
  v13 = 0;
  if (sub_23C4AAE3C(a1, a2, 0, 0, a4, &v13, a5, a6, 1u))
  {
    result = 0;
    *a7 = 0;
  }

  else
  {
    v12 = a1[2];
    v11 = (a1 + 2);
    v10 = v12;
    if (!v12)
    {
      v10 = sub_23C4ADA88(v11, v13);
    }

    *a7 = v10;
    sub_23C4AA240(v10, "** Compilation failed with error: %s **", v10);
    return 1;
  }

  return result;
}

void MTLCompilerReleaseReply(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t AIRNTEmitPipelineImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char **a15)
{
  if (a15)
  {
    *a15 = strdup("[AGX] Plugin interface not implemented: AIRNTEmitPipelineImage");
  }

  return 0;
}

uint64_t sub_23C4ADCAC(void *a1, _DWORD *a2)
{
  *a2 = *(a1[43] + 840);
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    *a2 = result;
    return result != *(a1[43] + 840);
  }

  return result;
}

uint64_t sub_23C4ADD34(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C496CE8();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

BOOL sub_23C4ADDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_23C4AE1DC(&qword_27E1F74F0))
  {
    operator new();
  }

  (*(*a2 + 16))(a2, a3);
  result = sub_23C4AE1DC(&qword_27E1F74F0);
  if (result)
  {
    operator new();
  }

  return result;
}

BOOL sub_23C4AE1DC(char **a1)
{
  v5[17] = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    if (dword_27E1F74F8)
    {
      v2 = &(*a1)[*(**a1 - 24)];
      if ((v2[32] & 5) == 0)
      {
        (*(**(v2 + 5) + 32))(v5);
        if (v5[16] >= dword_27E1F74F8)
        {
          sub_23C4AA520(*a1, "<< Rest of the status file truncated>>\n", 39);
          v3 = *a1;
          if (*a1)
          {
            if (v3 != MEMORY[0x277D82670])
            {
              (*(*v3 + 8))(v3);
              *a1 = 0;
              if ((atomic_load_explicit(&qword_27E1F67C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F67C8))
              {
                qword_27E1F67B0 = 0;
                qword_27E1F67B8 = 0;
                unk_27E1F67C0 = 0;
                __cxa_atexit(MEMORY[0x277D82640], &qword_27E1F67B0, &dword_23C496000);
                __cxa_guard_release(&qword_27E1F67C8);
              }

              if (byte_27E1F67C7 < 0)
              {
                *qword_27E1F67B0 = 0;
                qword_27E1F67B8 = 0;
              }

              else
              {
                LOBYTE(qword_27E1F67B0) = 0;
                byte_27E1F67C7 = 0;
              }
            }
          }
        }
      }
    }
  }

  return *a1 != 0;
}

uint64_t sub_23C4AE3A4(uint64_t a1, llvm *a2)
{
  if (*(a1 + 48))
  {
    v4 = 4;
  }

  else
  {
    v4 = 8;
  }

  if ((**(a1 + 56) & v4) != 0)
  {
    v28 = v2;
    v29 = v3;
    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    v18 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v17 = MEMORY[0x277D821F8] + 16;
    v25 = v26;
    sub_23C4AE584(&v17);
    if (llvm::verifyModule())
    {
      v6 = *MEMORY[0x277D85DF8];
      if (*(a1 + 48))
      {
        v7 = "before";
      }

      else
      {
        v7 = "after";
      }

      sub_23C4AE5DC(__p, a1 + 32);
      if (v16 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = v25;
      if (*(v25 + 23) < 0)
      {
        v9 = *v25;
      }

      fprintf(v6, "AGC: %s:%d:%s: *** Module verification failed %s pass '%s' : %s\n", "agc_llvm_object.cpp", 235, "runOnModule", v7, v8, v9);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a1 + 48))
      {
        v10 = "before";
      }

      else
      {
        v10 = "after";
      }

      v11 = sub_23C4AE5DC(__p, a1 + 32);
      if (v16 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v13 = v25;
      if (*(v25 + 23) < 0)
      {
        v13 = *v25;
      }

      sub_23C4AA240(v11, "Module verification failed %s pass '%s' : %s", v10, v12, v13);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    llvm::raw_ostream::~raw_ostream(&v17);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  return 0;
}

uint64_t sub_23C4AE584(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return MEMORY[0x2821F1EA8](this, 0, 0, 0);
}

void *sub_23C4AE5DC(void *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *a2;
  if (*a2)
  {
    v4 = *(a2 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23C496CE8();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(__dst + 23) = v4;
    if (v4)
    {
      __dst = memmove(__dst, v3, v4);
    }

    *(v2 + v4) = 0;
  }

  else
  {
    *__dst = 0;
    __dst[1] = 0;
    __dst[2] = 0;
  }

  return __dst;
}

void sub_23C4AE6B8()
{
  MEMORY[0x23EED3B80]();

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4AE6F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if ((**(a1 + 56) & v2) != 0)
  {
    memset(&__str, 0, sizeof(__str));
    v29 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 1;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v28 = MEMORY[0x277D821F8] + 16;
    p_str = &__str;
    sub_23C4AE584(&v28);
    llvm::Module::print();
    if (v32 != v30)
    {
      llvm::raw_ostream::flush_nonempty(&v28);
    }

    v4 = *(a1 + 56);
    v5 = (v4 + 8);
    v6 = *(v4 + 31);
    v7 = v6;
    v8 = *(v4 + 16);
    if ((v6 & 0x80u) == 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v9 == size)
    {
      if (v7 >= 0)
      {
        v11 = v5;
      }

      else
      {
        v11 = v5->__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &__str;
      }

      else
      {
        v12 = __str.__r_.__value_.__r.__words[0];
      }

      v13 = memcmp(v11, v12, v9) != 0;
    }

    else
    {
      v13 = 1;
    }

    std::string::operator=(v5, &__str);
    memset(&v27, 0, sizeof(v27));
    MEMORY[0x23EED4E90](&v27, "------ ");
    if (*(a1 + 48))
    {
      v14 = "Before ";
    }

    else
    {
      v14 = "After ";
    }

    std::string::append(&v27, v14);
    std::string::append(&v27, *(a1 + 32), *(a1 + 40));
    if (v13)
    {
      v15 = std::string::append(&v27, " ------");
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v27;
      }

      else
      {
        v16 = v27.__r_.__value_.__r.__words[0];
      }

      sub_23C4AA240(v15, "%s", v16);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &__str;
      }

      else
      {
        v18 = __str.__r_.__value_.__r.__words[0];
      }

      sub_23C4AA240(v17, "%s", v18);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v27.__r_.__value_.__l.__size_;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C496CE8();
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      v26 = v20;
      if (v20)
      {
        v19 = memset(&__b, 45, v20);
      }

      *(&__b + v20) = 0;
      p_b = &__b;
      if (v26 < 0)
      {
        p_b = __b;
      }

      sub_23C4AA240(v19, "%s", p_b);
      if (v26 < 0)
      {
        operator delete(__b);
      }
    }

    else
    {
      std::string::append(&v27, " (No change)");
      v21 = std::string::append(&v27, " ------");
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v27;
      }

      else
      {
        v22 = v27.__r_.__value_.__r.__words[0];
      }

      sub_23C4AA240(v21, "%s", v22);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    llvm::raw_ostream::~raw_ostream(&v28);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_23C4AEA28()
{
  MEMORY[0x23EED3B80]();

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4AEA64(uint64_t result)
{
  if (!*(result + 336))
  {
    sub_23C4AE0F4(result);
  }

  return result;
}

uint64_t sub_23C4AEAD4(uint64_t result)
{
  if (!*(result + 344))
  {
    sub_23C4AE0F4(result);
  }

  return result;
}

uint64_t sub_23C4AEB44(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      if (*(a1 + 383) >= 0)
      {
        v5 = *(a1 + 383);
      }

      else
      {
        v5 = *(a1 + 368);
      }

      sub_23C4ADD34(__p, v5 + 15);
      if (v18 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if (v5)
      {
        if (*(a1 + 383) >= 0)
        {
          v7 = (a1 + 360);
        }

        else
        {
          v7 = *(a1 + 360);
        }

        memmove(v6, v7, v5);
      }

      strcpy(v6 + v5, "/ei_rt.metallib");
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }
    }

    else
    {
      v11 = *(*(a1 + 32) + 32);
      if (*(a1 + 383) >= 0)
      {
        v12 = *(a1 + 383);
      }

      else
      {
        v12 = *(a1 + 368);
      }

      v13 = strlen(*(*(a1 + 32) + 32));
      v14 = __p;
      sub_23C4ADD34(__p, v12 + v13);
      if (v18 < 0)
      {
        v14 = __p[0];
      }

      if (v12)
      {
        if (*(a1 + 383) >= 0)
        {
          v15 = (a1 + 360);
        }

        else
        {
          v15 = *(a1 + 360);
        }

        memmove(v14, v15, v12);
      }

      if (v13)
      {
        memmove(v14 + v12, v11, v13);
      }

      *(v14 + v12 + v13) = 0;
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }
    }

    v16 = sub_23C4AED10(v8, a2);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    return v16;
  }

  else
  {
    v9 = (a1 + 384);
    if (*(a1 + 407) < 0)
    {
      v9 = *v9;
    }

    return sub_23C4AED10(v9, a2);
  }
}

uint64_t sub_23C4AED10(uint64_t a1, uint64_t a2)
{
  CompilerHelper = createCompilerHelper();
  v5 = (**CompilerHelper)(CompilerHelper, a1);
  if (v5)
  {
    v6 = v5;
    v7 = (*(*v5 + 24))(v5, a2);
    (*(*v6 + 8))(v6);
  }

  else
  {
    v7 = 0;
  }

  deleteCompilerHelper();
  return v7;
}

uint64_t sub_23C4AEDDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = a2 + 24;
  for (i = *(a2 + 32); i != v8; i = *(i + 8))
  {
    if (i)
    {
      v10 = (i - 56);
    }

    else
    {
      v10 = 0;
    }

    if (llvm::GlobalValue::isDeclaration(v10))
    {
      if ((*(v10 + 34) & 0x80) != 0)
      {
        sub_23C4AF1B0(v10, 3);
      }
    }
  }

  v11 = *(*(a1 + 400) + 32);
  v12 = *(v11 + 8);
  if (v12)
  {
    v13 = strlen(*(v11 + 8));
  }

  else
  {
    v13 = 0;
  }

  sub_23C4AF090(a2, v12, v13);
  v15 = *(*(a1 + 400) + 32);
  if (*(v15 + 16))
  {
    strlen(*(v15 + 16));
  }

  llvm::Module::setDataLayout();
  v30 = a2;
  v32 = 0;
  v16 = llvm::Linker::linkModules();
  sub_23C4AF0E8(v31);
  sub_23C4AF168(&v30);
  if ((v16 & 1) == 0)
  {
    v17 = *(a1 + 320);
    v18 = *(v17 + 32);
    v19 = v17 + 24;
    if (a3)
    {
      if (v18 != v17 + 24)
      {
        do
        {
          v20 = *(v18 + 8);
          if (v18)
          {
            v21 = v18 - 56;
          }

          else
          {
            v21 = 0;
          }

          if (v21 != a4 && !*(v18 - 48))
          {
            llvm::Function::eraseFromParent((v18 - 56));
          }

          v18 = v20;
        }

        while (v20 != v19);
      }
    }

    else
    {
      if (v18 == v17 + 24)
      {
        v25 = 0;
      }

      else
      {
        v22 = 1;
        do
        {
          v23 = *(v18 + 8);
          if (v18)
          {
            v24 = v18 - 56;
          }

          else
          {
            v24 = 0;
          }

          if (v24 != a4)
          {
            if (*(v18 - 48))
            {
              if ((*(v18 - 23) & 0x20) == 0 && (llvm::GlobalValue::isDeclaration((v18 - 56)) & 1) == 0)
              {
                *(v18 - 24) = *(v18 - 24) & 0xFFFFBFC0 | 0x4007;
                llvm::Function::addFnAttr();
                ++v22;
              }
            }

            else
            {
              llvm::Function::eraseFromParent((v18 - 56));
            }
          }

          v18 = v23;
        }

        while (v23 != v19);
        v17 = *(a1 + 320);
        v25 = v22 > 1;
      }

      v26 = *(v17 + 16);
      v27 = v17 + 8;
      if (v26 != v17 + 8)
      {
        do
        {
          v28 = *(v26 + 8);
          if (v26)
          {
            v29 = (v26 - 56);
          }

          else
          {
            v29 = 0;
          }

          if ((llvm::GlobalValue::isDeclaration(v29) & 1) == 0)
          {
            if (*(v26 - 48))
            {
              *(v26 - 24) = *(v26 - 24) & 0xFFFFBFC0 | 0x4007;
            }

            else
            {
              llvm::GlobalVariable::eraseFromParent((v26 - 56));
            }
          }

          v26 = v28;
        }

        while (v28 != v27);
      }

      if (v25)
      {
        llvm::legacy::PassManager::run(*(*(a1 + 400) + 320), *(a1 + 320));
      }
    }
  }

  return v16 ^ 1u;
}

double sub_23C4AF090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  sub_23C4AE5DC(&__dst, v7);
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  result = *&__dst;
  *(a1 + 216) = __dst;
  *(a1 + 232) = v6;
  return result;
}

uint64_t sub_23C4AF0E8(uint64_t a1)
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

uint64_t *sub_23C4AF168(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x23EED4710]();
    MEMORY[0x23EED50C0](v3, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

uint64_t sub_23C4AF1B0(uint64_t result, char a2)
{
  v2 = *(result + 32);
  *(result + 32) = v2 & 0xFFFFFFF0 | a2 & 0xF;
  if ((v2 & 0x30) != 0)
  {
    v3 = result;
    result = llvm::GlobalValue::hasExternalWeakLinkage(result);
    if ((result & 1) == 0)
    {
      *(v3 + 32) |= 0x4000u;
    }
  }

  return result;
}

uint64_t sub_23C4AF200(uint64_t a1, const UInt8 *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2[23];
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  v4 = CFStringCreateWithBytes(0, a2, v3, 0x8000100u, 1u);
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.AGXCompilerCore-S2A8");
  v6 = CFBundleCopyResourceURL(BundleWithIdentifier, v4, @"ds", 0);
  v7 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);
  CFStringGetCString(v7, buffer, 1024, 0x600u);
  CFRelease(v4);
  CFRelease(v6);
  CFRelease(v7);
  v39[6] = 0;
  v8 = MEMORY[0x277D82858] + 24;
  v9 = MEMORY[0x277D82858] + 64;
  v39[0] = MEMORY[0x277D82858] + 64;
  v10 = MEMORY[0x277D82808];
  v11 = *(MEMORY[0x277D82808] + 16);
  v37[0] = *(MEMORY[0x277D82808] + 8);
  *(v37 + *(v37[0] - 24)) = v11;
  v37[1] = 0;
  v12 = (v37 + *(v37[0] - 24));
  std::ios_base::init(v12, v38);
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v37[0] = v8;
  v39[0] = v9;
  MEMORY[0x23EED4F20](v38);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v37 + *(v37[0] - 24)), *&v38[*(v37[0] - 24) + 16] | 4);
  }

  v13 = v37 + *(v37[0] - 24);
  if ((v13[32] & 5) != 0)
  {
    v14 = MEMORY[0x277D82670];
    v15 = sub_23C4AA520(MEMORY[0x277D82670], "readBitcode", 11);
    sub_23C4AA520(v15, "(): unable to open file: ", 25);
    v16 = strlen(buffer);
    sub_23C4AA520(v14, buffer, v16);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v17 = std::locale::use_facet(v26, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(v26);
    std::ostream::put();
    std::ostream::flush();
    v18 = 0;
    goto LABEL_26;
  }

  v19 = *(v13 + 5);
  if (v19)
  {
    v20 = v19[3];
    v21 = v19[4];
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    if ((*(*v19 + 72))(v19) != -1)
    {
      v20 = v19[3];
      v21 = v19[4];
LABEL_12:
      if (v20 == v21)
      {
        (*(*v19 + 72))(v19);
      }

      operator new();
    }
  }

  MEMORY[0] = 186106078;
  MEMORY[0x14] = -557825214;
  v29 = 0;
  *v27 = 0u;
  v28 = 0u;
  *&v26[0].__locale_ = 0u;
  *v30 = 0u;
  *__p = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v35[0] = &v36;
  v35[1] = 0x400000000;
  strlen(buffer);
  v22 = llvm::parseIR();
  v18 = v25;
  v25 = 0;
  if (!v18)
  {
    v23 = llvm::errs(v22);
    llvm::SMDiagnostic::print(v26, "readBitcode", v23);
  }

  sub_23C4AF168(&v25);
  sub_23C4AF874(v35);
  v10 = MEMORY[0x277D82808];
  if (v33)
  {
    *(&v33 + 1) = v33;
    operator delete(v33);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v30[0]);
  }

  if (SBYTE7(v28) < 0)
  {
    operator delete(v27[0]);
  }

  operator delete(0);
LABEL_26:
  v37[0] = *v10;
  *(v37 + *(v37[0] - 24)) = v10[3];
  MEMORY[0x23EED4F30](v38);
  std::istream::~istream();
  MEMORY[0x23EED5050](v39);
  return v18;
}

uint64_t sub_23C4AF874(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t sub_23C4AF8FC(uint64_t a1, std::string *a2, uint64_t *a3, char a4, int a5, int a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = (*(a2->__r_.__value_.__r.__words[0] + 24))(a2);
  sub_23C49F8D0(&__p, v9);
  llvm::AGX::CompileRequest::CompileRequest();
  if (v28 < 0)
  {
    operator delete(__p);
  }

  (*(a2->__r_.__value_.__r.__words[0] + 56))(a2, v29);
  if (sub_23C4AE1DC(&qword_27E1F74F0))
  {
    v10 = (*(a2->__r_.__value_.__r.__words[0] + 24))(a2);
    if (sub_23C4B00BC(v10))
    {
      llvm::AGX::CompileRequest::setLoggingStream();
    }
  }

  if (a5 == 1)
  {
    v11 = a1 + 80;
    v12 = a2 + 17;
    v13 = a1;
    v14 = a1 + 80;
    v15 = 1;
    goto LABEL_10;
  }

  if (a5 == 2)
  {
    v11 = a1 + 104;
    v12 = a2 + 17;
    v13 = a1;
    v14 = a1 + 104;
    v15 = 2;
LABEL_10:
    v16 = 1;
    goto LABEL_12;
  }

  v11 = a1 + 56;
  v12 = a2 + 17;
  v13 = a1;
  v14 = a1 + 56;
  v15 = 3;
  v16 = 0;
LABEL_12:
  sub_23C4B0B80(v13, v14, v15, v16, v12);
  if (*(v11 + 16) == 1)
  {
    v19 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v18 = MEMORY[0x277D821F8] + 16;
    v26 = a1 + 280;
    sub_23C4AE584(&v18);
    operator new();
  }

  llvm::AGX::CompileRequest::~CompileRequest(v29);
  return 0;
}

uint64_t sub_23C4B00BC(const char *a1)
{
  result = sub_23C4AE1DC(&qword_27E1F74F0);
  if (result)
  {
    if (!strcmp(a1, "compute") || !strcmp(a1, "vertex") || !strcmp(a1, "Vertex") || !strcmp(a1, "fragment") || !strcmp(a1, "compute-program") || !strcmp(a1, "tile") || !strcmp(a1, "post-tessellation-vertex-sw") || !strcmp(a1, "post-tessellation-vertex-hw"))
    {
      return 1;
    }

    else
    {
      result = MGGetBoolAnswer();
      if (result)
      {

        return sub_23C4B114C();
      }
    }
  }

  return result;
}

void *sub_23C4B01BC(void *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[1];
  if (result[2] < (v5 + a3 - __src))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + v5), __src, v4);
    v5 = v3[1];
  }

  v3[1] = v5 + v4;
  return result;
}

uint64_t sub_23C4B023C(uint64_t *a1, void *a2, size_t a3)
{
  sub_23C4B0AD0(a1, a3 + 1, 4uLL);
  sub_23C4B090C(a1, 1uLL);
  sub_23C4B0B08(a1, a2, a3);
  sub_23C4B0A6C(a1, a3);
  return (*(a1 + 8) - *(a1 + 12) + *(a1 + 10));
}

uint64_t *sub_23C4B02B4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    sub_23C4B08D8(result, 4uLL);
    v6 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10) - v3 + 4);

    return sub_23C4B0A04(v5, a2, v6);
  }

  return result;
}

uint64_t *sub_23C4B0328(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a3 || *(result + 80) == 1)
  {
    sub_23C4B08D8(result, 8uLL);
    v6 = v5[6];
    if ((v6 - v5[7]) <= 7)
    {
      sub_23C4B05B4(v5, 8uLL);
      v6 = v5[6];
    }

    *(v6 - 8) = a3;
    v7 = v6 - 8;
    v5[6] = v7;
    v8 = *(v5 + 8) - v7 + *(v5 + 10);

    return sub_23C4B0980(v5, a2, v8);
  }

  return result;
}

uint64_t sub_23C4B03D4(uint64_t a1, __int16 a2)
{
  sub_23C4B08D8(a1, 4uLL);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if ((v4 - v5) <= 3)
  {
    sub_23C4B05B4(a1, 4uLL);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
  }

  *(v4 - 4) = 0;
  v6 = v4 - 4;
  *(a1 + 48) = v6;
  v7 = *(a1 + 32) - v6 + *(a1 + 40);
  if ((*(a1 + 68) + 2) <= 4u)
  {
    v8 = 4;
  }

  else
  {
    v8 = (*(a1 + 68) + 2);
  }

  *(a1 + 68) = v8;
  if (v6 - v5 < v8)
  {
    sub_23C4B05B4(a1, v8);
    v6 = *(a1 + 48);
  }

  *(a1 + 48) = v6 - v8;
  bzero((v6 - v8), v8);
  v9 = v7 - a2;
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11[1] = v9;
  *v11 = *(a1 + 68);
  v12 = *(a1 + 64);
  v13 = (v10 - 8 * v12);
  if (v12)
  {
    v14 = (v10 - 8 * v12);
    do
    {
      *(v11 + v14[2]) = v7 - *v14;
      v14 += 4;
    }

    while (v14 < v10);
  }

  *(a1 + 56) = v13;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  LODWORD(v17) = v16 - v11 + v15;
  if (*(a1 + 81) == 1 && v15 < v13)
  {
    v19 = *v11;
    v20 = v15 + v16;
    v21 = *(a1 + 40);
    while (1)
    {
      v17 = *v21;
      if (v19 == *(v20 - v17) && !memcmp((v20 - v17), v11, v19))
      {
        break;
      }

      if (++v21 >= v13)
      {
        LODWORD(v17) = v16 - v11 + v15;
        goto LABEL_21;
      }
    }

    v11 = (v11 + (v16 - v11 + v15 - v7));
    *(a1 + 48) = v11;
  }

LABEL_21:
  if (v17 == v16 + v15 - v11)
  {
    if ((v11 - v13) <= 3)
    {
      sub_23C4B05B4(a1, 4uLL);
      v13 = *(a1 + 56);
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
    }

    *v13 = v17;
    *(a1 + 56) = v13 + 4;
  }

  *(v15 + v16 - v7) = v17 - v7;
  *(a1 + 70) = 0;
  return v7;
}

uint64_t sub_23C4B05B4(uint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = v3 - a1[6] + v4;
  v6 = a1[7] - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = a1[2];
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (a1[3] + v3 + v7 - 1) & -a1[3];
  a1[4] = v8;
  v9 = *a1;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_284F28AA0;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_284F28AA0;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + a1[4] - v5;
  a1[5] = result;
  a1[6] = v11;
  a1[7] = result + v6;
  return result;
}

char *sub_23C4B07B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*a1 + 16))(a1, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*a1 + 24))(a1, a2, a3);
  return v12;
}

void sub_23C4B0884(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x23EED50A0);
  }
}

uint64_t *sub_23C4B08D8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 72) < a2)
  {
    *(a1 + 72) = a2;
  }

  return sub_23C4B090C(a1, (a2 - 1) & -(*(a1 + 32) - *(a1 + 48) + *(a1 + 40)));
}

uint64_t *sub_23C4B090C(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[6];
  if (v4 - result[7] >= a2)
  {
    result[6] = v4 - a2;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = sub_23C4B05B4(result, a2);
    v3[6] -= a2;
  }

  v5 = 0;
  do
  {
    *(v3[6] + v5++) = 0;
  }

  while (a2 != v5);
  return result;
}

uint64_t *sub_23C4B0980(uint64_t *result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  v6 = result[7];
  if ((result[6] - v6) <= 7)
  {
    result = sub_23C4B05B4(result, 8uLL);
    v6 = v5[7];
  }

  *v6 = a3 | (a2 << 32);
  v5[7] += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return result;
}

uint64_t *sub_23C4B0A04(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = sub_23C4B0A6C(result, a3);

    return sub_23C4B0980(v4, a2, v5);
  }

  return result;
}

uint64_t sub_23C4B0A6C(uint64_t a1, int a2)
{
  sub_23C4B08D8(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    sub_23C4B05B4(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t *sub_23C4B0AD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 72) < a3)
  {
    *(a1 + 72) = a3;
  }

  return sub_23C4B090C(a1, (a3 - 1) & (-a2 - (*(a1 + 32) - *(a1 + 48) + *(a1 + 40))));
}

uint64_t *sub_23C4B0B08(uint64_t *result, void *__src, size_t __n)
{
  if (__n)
  {
    v5 = result;
    v6 = result[6];
    if (v6 - result[7] < __n)
    {
      sub_23C4B05B4(result, __n);
      v6 = v5[6];
    }

    v5[6] = v6 - __n;

    return memcpy((v6 - __n), __src, __n);
  }

  return result;
}

uint64_t sub_23C4B0B80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    v7 = result;
    llvm::AGX::AGXCompiler::createCompilePlan();
    LOBYTE(v24) = 1;
    if (llvm::AGX::AGXCompilePlan::isValid(v25))
    {
      llvm::AGX::AGXCompilePlan::AGXCompilePlan();
      if (*(a2 + 16) == 1)
      {
        MEMORY[0x23EED44C0](a2);
        *(a2 + 16) = 0;
      }

      llvm::AGX::AGXCompilePlan::AGXCompilePlan();
      *(a2 + 16) = 1;
      MEMORY[0x23EED44C0](v16);
    }

    else
    {
      llvm::AGX::AGXCompiler::getLastDiagnostics(&v22, (v7 + 48));
      sub_23C4B0E40(v16);
      sub_23C4AA520(&v17, "Create Plan failed:\n", 20);
      v8 = v22;
      v9 = v23;
      while (v8 != v9)
      {
        v8 += 8;
        v10 = llvm::AGX::operator<<();
        sub_23C4AA520(v10, "\n", 1);
      }

      std::stringbuf::str();
      if ((v15 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if ((v15 & 0x80u) == 0)
      {
        v12 = v15;
      }

      else
      {
        v12 = __p[1];
      }

      std::string::append(a5, v11, v12);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v16[0] = *MEMORY[0x277D82818];
      v13 = *(MEMORY[0x277D82818] + 72);
      *(v16 + *(v16[0] - 3)) = *(MEMORY[0x277D82818] + 64);
      v17 = v13;
      v18 = MEMORY[0x277D82878] + 16;
      if (v20 < 0)
      {
        operator delete(v19[7].__locale_);
      }

      v18 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v19);
      std::iostream::~basic_iostream();
      MEMORY[0x23EED5050](&v21);
      v16[0] = &v22;
      sub_23C4AA478(v16);
    }

    return MEMORY[0x23EED44C0](v25);
  }

  return result;
}

uint64_t sub_23C4B0E40(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 24;
  v3 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v10 = v6[5];
  v11 = v6[4];
  *(a1 + 16) = v11;
  *(v4 + *(v11 - 24)) = v10;
  v12 = v6[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v6[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v13 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v13;
  MEMORY[0x23EED5010](a1 + 32);
  *(a1 + 88) = 0;
  v14 = a1 + 88;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 112) = a1 + 88;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v15 = *(a1 + 111);
  if (v15 < 0)
  {
    v15 = *(a1 + 96);
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = v14;
  *(a1 + 80) = v14 + v15;
  return a1;
}

const char *sub_23C4B114C()
{
  result = sub_23C4A2690("AGC_STATUS_LOG_DRIVER_SHADERS");
  if (result)
  {
    if (*result == 48)
    {
      return 0;
    }

    else
    {
      return (atoi(result) != 0);
    }
  }

  return result;
}

uint64_t sub_23C4B1190(uint64_t a1, uint64_t a2, llvm::Type *a3)
{
  v6 = (*(**(a2 + 32) + 8))(*(a2 + 32), a3);
  sub_23C504C2C(a1, a3);
  *(a1 + 344) = v6;
  *a1 = &unk_284F129B8;
  *(a1 + 352) = mach_absolute_time();
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = a2;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 584) = llvm::IntegerType::get();
  *(a1 + 592) = a1 + 608;
  *(a1 + 600) = 0x800000000;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 720) = xmmword_23C532550;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 776) = 1;
  *(a1 + 784) = 256;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 816) = xmmword_23C532550;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 872) = 1;
  *(a1 + 880) = 256;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 912) = xmmword_23C532550;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 968) = 1;
  *(a1 + 976) = 256;
  *(a1 + 984) = 0;
  *(a1 + 328) = a1 + 592;
  return a1;
}

uint64_t sub_23C4B130C(uint64_t a1)
{
  *a1 = &unk_284F129B8;
  v2 = *(a1 + 400);
  *(v2 + 136) = 0;
  if (*(v2 + 303) < 0)
  {
    **(v2 + 280) = 0;
    *(v2 + 288) = 0;
  }

  else
  {
    *(v2 + 280) = 0;
    *(v2 + 303) = 0;
  }

  MEMORY[0x23EED4E90](v2 + 8, &unk_23C53F34D);
  v3 = *(a1 + 344);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  if (*(a1 + 320))
  {
    v4 = MEMORY[0x23EED4710]();
    MEMORY[0x23EED50C0](v4, 0x10B2C407FF26C1CLL);
  }

  sub_23C4B1460((a1 + 896));
  sub_23C4B1460((a1 + 800));
  sub_23C4B1460((a1 + 704));
  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  v5 = *(a1 + 592);
  if (v5 != (a1 + 608))
  {
    free(v5);
  }

  v6 = *(a1 + 432);
  if (v6)
  {
    *(a1 + 440) = v6;
    operator delete(v6);
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  v7 = *(a1 + 368);
  if (v7)
  {
    *(a1 + 376) = v7;
    operator delete(v7);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((a1 + 136));
  llvm::IRBuilderFolder::~IRBuilderFolder((a1 + 128));
  v8 = *(a1 + 8);
  if (v8 != (a1 + 24))
  {
    free(v8);
  }

  return a1;
}

void *sub_23C4B1460(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    sub_23C4B1570(*(v2 + 8));
    MEMORY[0x23EED50C0](v2, 0x1060C40C2B13FB5);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*a1)
    {
      (*(**a1 + 24))(*a1);
    }

    else
    {
      MEMORY[0x23EED50A0](v3, 0x1000C8077774924);
    }
  }

  a1[5] = 0;
  if (*(a1 + 8) == 1 && *a1)
  {
    (*(**a1 + 8))(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

void sub_23C4B1570(void *a1)
{
  if (a1)
  {
    sub_23C4B1570(*a1);
    sub_23C4B1570(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_23C4B15BC(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = 0;
    v15 = a2 + 1;
    v6 = *(a1 + 432);
    v7 = *(a1 + 440);
    do
    {
      if (v7 == v6)
      {
        v7 = v6;
      }

      else
      {
        v8 = 0;
        v10 = 1;
        do
        {
          v9 = &v15[v5];
          v11 = v9 + *v9 + *(v9 + *v9 - *(v9 + *v9) + 4);
          sub_23C49F8D0(&v16, &v11[*v11 + 4]);
          if (!std::string::compare(&v16, *(*(a1 + 432) + 16 * v8)))
          {
            sub_23C4B1830(1uLL);
          }

          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }

          v8 = v10;
          v6 = *(a1 + 432);
          v7 = *(a1 + 440);
          ++v10;
        }

        while (v8 < (v7 - v6) >> 4);
        v4 = *a2;
      }

      ++v5;
    }

    while (v5 < v4);
  }

  *a3 = sub_23C4B17AC(a1 + 704, &unk_27E1F7578, 0);
  return 0;
}

uint64_t sub_23C4B17AC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  sub_23C4B0AD0(a1, 4 * a3, 4uLL);
  sub_23C4B0AD0(a1, v6, 4uLL);
  sub_23C4B0B08(a1, a2, v6);
  *(a1 + 70) = 0;

  return sub_23C4B0A6C(a1, v3);
}

void sub_23C4B1830(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_23C496CE8();
}

uint64_t sub_23C4B1878(uint64_t a1)
{
  v2 = (*(*a1 + 24))(a1);
  v3 = strlen(v2);
  v4 = sub_23C4B023C((a1 + 704), v2, v3);
  if ((*(*a1 + 48))(a1))
  {
    v5 = sub_23C4B1A58(a1 + 704, *(*(a1 + 400) + 128), *(*(a1 + 400) + 136));
  }

  else
  {
    v5 = 0;
  }

  v15 = 0;
  v6 = *(a1 + 560);
  if (v6)
  {
    v7 = (v6 - *v6);
    if (*v7 >= 5u && (v8 = v7[2]) != 0)
    {
      v9 = (v6 + v8 + *(v6 + v8));
    }

    else
    {
      v9 = 0;
    }

    v10 = (v9 - *v9);
    if (*v10 >= 0x39u && (v11 = v10[28]) != 0)
    {
      v12 = (v9 + v11 + *(v9 + v11));
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_23C4B15BC(a1, v12, &v15);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 774) = 1;
  sub_23C4B02B4((a1 + 704), 8, v4);
  if ((*(*a1 + 48))(a1))
  {
    sub_23C4B02B4((a1 + 704), 4, v5);
  }

  if (v13)
  {
    sub_23C4B02B4((a1 + 704), 14, v15);
  }

  sub_23C4B0A04((a1 + 704), 16, *(a1 + 456));
  return a1 + 704;
}

uint64_t sub_23C4B1A58(uint64_t a1, void *a2, size_t a3)
{
  *(a1 + 70) = 1;
  sub_23C4B0AD0(a1, a3, 4uLL);
  sub_23C4B0AD0(a1, a3, 1uLL);
  sub_23C4B0B08(a1, a2, a3);
  *(a1 + 70) = 0;

  return sub_23C4B0A6C(a1, a3);
}

uint64_t sub_23C4B1AD8(uint64_t a1, int a2)
{
  *(a1 + 56) = *(a1 + 40);
  sub_23C4B0AD0(a1, 4, *(a1 + 72));
  sub_23C4B08D8(a1, 4uLL);
  result = sub_23C4B0A6C(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40) - a2 + 4);
  *(a1 + 71) = 1;
  return result;
}

uint64_t sub_23C4B1B48(uint64_t a1)
{
  for (i = 0; i != -216; i -= 24)
  {
    if (*(a1 + i + 215) < 0)
    {
      operator delete(*(a1 + i + 192));
    }
  }

  return a1;
}

BOOL sub_23C4B1B90(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == -17958193)
  {
    v3 = a2;
    v5 = a2[4];
    if (v5)
    {
      v40 = 0;
      v6 = 0;
      v35 = a2 + 1;
      v7 = a2 + 8;
      v36 = a2[4];
      do
      {
        if (*v7 == 2)
        {
          v38 = v6;
          v14 = v7[3];
          if (v14)
          {
            v15 = &v35[v7[4]];
            v16 = (a2 + v7[2]);
            do
            {
              if ((~*(v16 + 4) & 0xE) == 0 && *(v16 + 5) == v40)
              {
                v17 = *(v16 + 1);
                v18 = &v15[*v16];
                v20 = *(a1 + 440);
                v19 = *(a1 + 448);
                v39 = v17;
                if (v20 >= v19)
                {
                  v22 = v7;
                  v23 = v15;
                  v24 = *(a1 + 432);
                  v25 = v20 - v24;
                  v26 = (v20 - v24) >> 4;
                  v27 = v26 + 1;
                  if ((v26 + 1) >> 60)
                  {
                    sub_23C496CE8();
                  }

                  v28 = v19 - v24;
                  if (v28 >> 3 > v27)
                  {
                    v27 = v28 >> 3;
                  }

                  if (v28 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v29 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v29 = v27;
                  }

                  if (v29)
                  {
                    if (!(v29 >> 60))
                    {
                      operator new();
                    }

                    sub_23C496CE8();
                  }

                  v30 = 16 * v26;
                  *v30 = v18;
                  *(v30 + 8) = v17;
                  v21 = 16 * v26 + 16;
                  memcpy(0, v24, v25);
                  *(a1 + 432) = 0;
                  *(a1 + 440) = v21;
                  *(a1 + 448) = 0;
                  if (v24)
                  {
                    operator delete(v24);
                  }

                  v15 = v23;
                  v7 = v22;
                }

                else
                {
                  *v20 = v18;
                  *(v20 + 8) = v17;
                  v21 = v20 + 16;
                }

                *(a1 + 440) = v21;
                v41 = v18;
                v42 = strlen(v18);
                if (v42 == 8 && *v18 == 0x6E69616D2E636761)
                {
                  *(a1 + 456) = v39;
                }

                v31 = (*(*a1 + 24))(a1);
                if (sub_23C4B00BC(v31))
                {
                  if (llvm::StringRef::find() == -1)
                  {
                    v32 = (*(*a1 + 32))(a1);
                    if (v32 <= 3)
                    {
                      sub_23C4AA240(v32, "Non-Inlined function %s", v18);
                    }
                  }
                }
              }

              v16 += 4;
              --v14;
            }

            while (v14);
          }

          v3 = a2;
          v5 = v36;
          v6 = v38;
        }

        else if (*v7 == 25)
        {
          v8 = v7[16];
          if (v8)
          {
            v9 = 0;
            v10 = v7 + 18;
            v11 = 1;
            while (1)
            {
              if (!strncmp(v10 + 16, "__TEXT", 0x10uLL))
              {
                *(a1 + 464) = v3 + v10[12];
                *(a1 + 512) = *(v10 + 5);
                ++v9;
                v40 = v11;
              }

              else
              {
                if (!strncmp(v10 + 16, "__GPU_METADATA", 0x10uLL))
                {
                  v12 = (v3 + v10[12]);
                  *(a1 + 472) = v12;
                  *(a1 + 520) = *(v10 + 5);
                  *(a1 + 560) = v12 + *v12;
                }

                else if (!strncmp(v10 + 16, "__GPU_METADATA_2", 0x10uLL))
                {
                  *(a1 + 480) = v3 + v10[12];
                  *(a1 + 528) = *(v10 + 5);
                }

                else if (!strncmp(v10 + 16, "__GPU_VIDMALIST", 0x10uLL))
                {
                  v13 = (v3 + v10[12]);
                  *(a1 + 488) = v13;
                  *(a1 + 536) = *(v10 + 5);
                  *(a1 + 568) = v13 + *v13;
                }

                else
                {
                  if (strncmp(v10 + 16, "__GPU_STATS", 0x10uLL))
                  {
                    goto LABEL_22;
                  }

                  if (!strncmp(v10, "__counters", 0x10uLL))
                  {
                    *(a1 + 496) = v3 + v10[12];
                    *(a1 + 544) = *(v10 + 5);
                    ++v9;
                  }

                  if (strncmp(v10, "__telemetry", 0x10uLL))
                  {
                    goto LABEL_22;
                  }

                  *(a1 + 504) = v3 + v10[12];
                  *(a1 + 552) = *(v10 + 5);
                }

                ++v9;
              }

LABEL_22:
              if (v11 < v8)
              {
                v10 += 20;
                ++v11;
                if (v9 < 6)
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        v7 = (v7 + v7[1]);
        ++v6;
      }

      while (v6 != v5);
    }

    v33 = (*(*a1 + 24))(a1);
    if (sub_23C4B00BC(v33))
    {
      (*(**(a1 + 344) + 352))(*(a1 + 344), *(a1 + 464), *(a1 + 512), a1);
    }

    LODWORD(v41) = 0;
    (*(*a1 + 88))(a1, &v41);
    v2 = -17958193;
  }

  return v2 == -17958193;
}

void sub_23C4B20A8(uint64_t a1, const char *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 24))(a1);
  if (sub_23C4B00BC(v4))
  {
    v5 = (*(*a1 + 24))(a1);
    snprintf(__str, 0x80uLL, "%s shader %u (%s)", v5, *(a1 + 696), a2);
    __p[0] = 0;
    __p[1] = 0;
    v32 = 0;
    v23 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v22 = MEMORY[0x277D821F8] + 16;
    v30 = __p;
    sub_23C4AE584(&v22);
    v6 = llvm::Module::print();
    v7 = *(a1 + 320);
    v8 = v7 + 24;
    v9 = *(v7 + 32);
    if (v9 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        if (v9)
        {
          v11 = v9 - 56;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11 + 72;
        for (i = *(v11 + 80); i != v12; i = *(i + 8))
        {
          if (i)
          {
            v14 = i - 24;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14 + 40;
          v16 = *(v14 + 48);
          if (v16 == v15)
          {
            v17 = 0;
          }

          else
          {
            v17 = 0;
            do
            {
              ++v17;
              v16 = *(v16 + 8);
            }

            while (v16 != v15);
          }

          v10 += v17;
        }

        v9 = *(v9 + 8);
      }

      while (v9 != v8);
    }

    sub_23C4AA240(v6, "------ Start LLVM IR %s -------\n", __str);
    if (v32 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    sub_23C4AA240(v18, "%s\n", v19);
    sub_23C4AA240(v20, "; %u instructions", v10);
    sub_23C4AA240(v21, "------ End LLVM IR %s -------\n", __str);
    llvm::raw_ostream::~raw_ostream(&v22);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23C4B22E0(uint64_t a1, llvm::ValueAsMetadata *a2)
{
  v15[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 9) & 0x3FF0) == 0x6A0)
  {
    llvm::Module::getOrInsertNamedMetadata();
    v13 = v15;
    v14 = 0x800000000;
    v3 = llvm::ValueAsMetadata::get();
    sub_23C49B500(&v13, v3);
    v4 = *(a1 + 592);
    v5 = *(a1 + 600);
    v6 = v14;
    if (v5 + v14 > HIDWORD(v14))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v5)
    {
      v7 = v13 + 8 * v14;
      v8 = 8 * v5;
      do
      {
        v9 = *v4++;
        *v7++ = v9;
        v8 -= 8;
      }

      while (v8);
    }

    LODWORD(v14) = v6 + v5;
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    if (v13 != v15)
    {
      free(v13);
    }
  }

  else
  {
    llvm::Module::getOrInsertNamedMetadata();
    v10 = *(a1 + 600);
    if (v10)
    {
      v11 = *(a1 + 592);
      v12 = 8 * v10;
      do
      {
        v11 += 8;
        llvm::NamedMDNode::addOperand();
        v12 -= 8;
      }

      while (v12);
    }
  }
}

unsigned __int8 *sub_23C4B245C(uint64_t a1, llvm::Type **a2, llvm::UndefValue *a3, _BOOL8 a4, int a5)
{
  v5 = a2;
  v6 = *a2;
  if (*a2 == a3)
  {
    return v5;
  }

  if (a5)
  {
    if (v6 == *(a1 + 280) || v6 == *(a1 + 288))
    {
      v10 = llvm::UndefValue::get();
      v12 = 0;
      if (v6 == *(a1 + 280))
      {
        v13 = 8;
      }

      else
      {
        v13 = 16;
      }

      do
      {
        v14 = *(a1 + 344);
        v40 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (a1 + 8));
        v42 = *(a1 + 104);
        v39 = 257;
        v15 = llvm::ConstantInt::get();
        v16 = sub_23C5057E8(a1 + 8, v5, v15, v38);
        v17 = (*(*v14 + 88))(v14, &v40, v16, v13, a4, 32);
        if (v41)
        {
          llvm::MetadataTracking::untrack();
        }

        v39 = 257;
        v18 = llvm::ConstantInt::get();
        v10 = sub_23C505AA8(a1 + 8, v10, v17, v18, v38);
        ++v12;
      }

      while (v12 != 4);
    }

    else if (v6 == *(a1 + 264))
    {
      v33 = *(a1 + 272);
      v39 = 257;
      v10 = sub_23C4B284C(a1 + 8, a2, v33, v38);
    }

    else
    {
      v10 = a2;
    }

    if (*(a1 + 280) == a3)
    {
      v26 = 8;
    }

    else
    {
      if (*(a1 + 288) != a3)
      {
        v19 = *(a1 + 264);
        if (v19 != a3)
        {
          return v10;
        }

        v39 = 257;
        return sub_23C49FEB4(a1 + 8, v10, v19, v38);
      }

      v26 = 16;
    }

    v5 = llvm::UndefValue::get();
    for (i = 0; i != 4; ++i)
    {
      v28 = *(a1 + 344);
      v35 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (a1 + 8));
      v37 = *(a1 + 104);
      v39 = 257;
      v29 = llvm::ConstantInt::get();
      v30 = sub_23C5057E8(a1 + 8, v10, v29, v38);
      v31 = (*(*v28 + 80))(v28, &v35, v30, v26, a4, 1);
      if (v36)
      {
        llvm::MetadataTracking::untrack();
      }

      v39 = 257;
      v32 = llvm::ConstantInt::get();
      v5 = sub_23C505AA8(a1 + 8, v5, v31, v32, v38);
    }

    return v5;
  }

  if ((*(v6 + 2) & 0xFE) == 0x12)
  {
    v11 = *(**(v6 + 2) + 8);
  }

  else
  {
    v11 = *(v6 + 2);
  }

  if (v11 == 13)
  {
    ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
    v21 = llvm::Type::getScalarSizeInBits(a3);
    if (ScalarSizeInBits <= v21)
    {
      v39 = 257;
      v23 = a1 + 8;
      if (a4)
      {
        v24 = 40;
      }

      else
      {
        v24 = 39;
      }

      v22 = v5;
    }

    else
    {
      v22 = sub_23C5066D8(a1, v5, v21, a4);
      v39 = 257;
      v23 = a1 + 8;
      v24 = 38;
    }

    return sub_23C49ACF8(v23, v24, v22, a3, v38);
  }

  sub_23C4AA240(a1, "Warning (Undefined behavior): integer drawbuffer format, but shader is writing floating point");

  return llvm::UndefValue::get();
}

uint64_t sub_23C4B284C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 46, a2, a3, a4);
}

uint64_t sub_23C4B28B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a2;
  if (a4 == 2)
  {
    v11 = *(a1 + 192);
    v22 = 257;
    v12 = sub_23C49ACF8(a1 + 8, 49, a2, v11, v21);
    v13 = *(a1 + 344);
    v15 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
    v17 = *(a1 + 104);
    v4 = (*(*v13 + 104))(v13, &v15, 6, *(a1 + 184), v12, 0, 0);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else if (a4 == 1)
  {
    v7 = *(a1 + 288);
    v22 = 257;
    v8 = sub_23C49ACF8(a1 + 8, 38, a2, v7, v21);
    v9 = *(a1 + 344);
    v18 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 8));
    v20 = *(a1 + 104);
    v10 = (*(*v9 + 96))(v9, &v18, 6, *(a1 + 184), v8, 0, 0);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v22 = 257;
    return sub_23C49ACF8(a1 + 8, 49, v10, a3, v21);
  }

  return v4;
}

uint64_t sub_23C4B2A60(uint64_t a1)
{
  llvm::Module::getOrInsertNamedMetadata();
  llvm::MDString::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  return llvm::NamedMDNode::addOperand();
}

uint64_t sub_23C4B2B20(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 0;
  result = (*(*a1 + 88))(a1, &v2);
  if (result)
  {
    llvm::Module::getOrInsertNamedMetadata();
    v3 = llvm::MDString::get();
    llvm::ConstantInt::get();
    v4 = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    return llvm::NamedMDNode::addOperand();
  }

  return result;
}

uint64_t sub_23C4B2C10(uint64_t a1, uint64_t a2)
{
  *(a2 + 70) = 1;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 32);
  sub_23C4B2DFC(a2, 4, (0x404040503020004uLL >> (8 * (*a1 & 7u))) & 7);
  sub_23C4B2DFC(a2, 6, (0x404040503020004uLL >> (*a1 & 0x38)) & 7);
  sub_23C4B2DFC(a2, 8, (0x404040503020004uLL >> ((*a1 >> 3) & 0x38)) & 7);
  v7 = (*a1 >> 9) & 3;
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

  sub_23C4B2DFC(a2, 10, v8);
  v9 = (*a1 >> 11) & 3;
  if (v9 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 1;
  }

  sub_23C4B2DFC(a2, 12, v10);
  v11 = (*a1 >> 13) & 3;
  if (v11 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 == 1;
  }

  sub_23C4B2DFC(a2, 14, v12);
  v13 = ((*a1 >> 16) & 0xFLL) - 1;
  if (v13 > 7)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = dword_23C532B04[v13];
  }

  v15 = v6 - v5;
  sub_23C4B2DFC(a2, 18, v14);
  _H0 = *(a1 + 3);
  __asm { FCVT            S0, H0 }

  sub_23C4B2E64(a2, 22, _S0);
  _H0 = *(a1 + 5);
  __asm { FCVT            S0, H0 }

  sub_23C4B2E64(a2, 24, _S0);
  v24 = *(a1 + 7) & 3;
  if (v24 == 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v24 == 1;
  }

  sub_23C4B2DFC(a2, 26, v25);
  sub_23C4B2DFC(a2, 16, (*a1 & 0x8000) == 0);
  sub_23C4B2DFC(a2, 20, ((*a1 >> 20) & 0xFu) + 1);

  return sub_23C4B03D4(a2, v15 + v4);
}

uint64_t *sub_23C4B2DFC(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = sub_23C4B2F14(result, a3);

    return sub_23C4B0980(v4, a2, v5);
  }

  return result;
}

uint64_t *sub_23C4B2E64(uint64_t *result, uint64_t a2, float a3)
{
  v5 = result;
  if (a3 != 0.0 || *(result + 80) == 1)
  {
    sub_23C4B08D8(result, 4uLL);
    v6 = v5[6];
    if ((v6 - v5[7]) <= 3)
    {
      sub_23C4B05B4(v5, 4uLL);
      v6 = v5[6];
    }

    *(v6 - 4) = a3;
    v7 = v6 - 4;
    v5[6] = v7;
    v8 = *(v5 + 8) - v7 + *(v5 + 10);

    return sub_23C4B0980(v5, a2, v8);
  }

  return result;
}

uint64_t sub_23C4B2F14(uint64_t a1, char a2)
{
  sub_23C4B08D8(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    sub_23C4B05B4(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

void sub_23C4B2F7C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F128D8;
  sub_23C4A25DC(a1 + 6, 0, a3, a4);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C4B2FE4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F128D8;
  sub_23C4A25DC(a1 + 6, 0, a3, a4);
  return a1;
}

void sub_23C4B39C8(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v7 = (*(*a4 + 24))(a4);
  v8 = snprintf(__str, 0x80uLL, "%s shader %u (driver disassembler)", v7, a4[174]);
  sub_23C4AA240(v8, "------ Start USC %s -------\n", __str);
  memset(&__p, 0, sizeof(__p));
  if (a3 >= 2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 1;
    do
    {
      if (v13)
      {
        sub_23C49F8D0(&v31, "\t[Inst ");
        std::to_string(&v34, v11);
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v34;
        }

        else
        {
          v14 = v34.__r_.__value_.__r.__words[0];
        }

        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v34.__r_.__value_.__l.__size_;
        }

        v16 = std::string::append(&v31, v14, size);
        v17 = v16->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        sub_23C49F8D0(v29, ", offset ");
        if ((v30 & 0x80u) == 0)
        {
          v18 = v29;
        }

        else
        {
          v18 = v29[0];
        }

        if ((v30 & 0x80u) == 0)
        {
          v19 = v30;
        }

        else
        {
          v19 = v29[1];
        }

        v20 = std::string::append(&v35, v18, v19);
        v21 = v20->__r_.__value_.__r.__words[0];
        v36[0] = v20->__r_.__value_.__l.__size_;
        *(v36 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
        v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p.__r_.__value_.__r.__words[0] = v21;
        __p.__r_.__value_.__l.__size_ = v36[0];
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v36 + 7);
        *(&__p.__r_.__value_.__s + 23) = v22;
        if (v30 < 0)
        {
          operator delete(v29[0]);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        sprintf(&v34, " 0x%04x", v12 - 1);
        sub_23C49F8D0(&v31, "]");
        v23 = std::string::insert(&v31, 0, &v34);
        v24 = v23->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v35;
        }

        else
        {
          v25 = v35.__r_.__value_.__r.__words[0];
        }

        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v26 = v35.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v25, v26);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        ++v11;
      }

      sprintf(&v35, " 0x%04x", *(a2 + 2 * v10));
      v9 = std::string::append(&__p, &v35);
      if ((*(a2 + 2 * v10) & 0x100) != 0)
      {
        v13 = 0;
      }

      else
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        sub_23C4AA240(v9, "%s", p_p);
        v9 = MEMORY[0x23EED4E90](&__p, &unk_23C53F34D);
        v13 = 1;
      }

      v10 = v12;
    }

    while (a3 >> 1 > v12++);
  }

  sub_23C4AA240(v9, "\n------- End USC %s --------\n", __str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_23C4B3D20(uint64_t result, uint64_t a2)
{
  if (*(result + 2064) == 1)
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();

    return llvm::Function::addFnAttr();
  }

  return result;
}

uint64_t sub_23C4B3E24(uint64_t a1, uint64_t a2)
{
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

uint64_t sub_23C4B3EB0(uint64_t a1, uint64_t a2)
{
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

uint64_t sub_23C4B3F1C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  sub_23C497620(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 1568);
  if (v6)
  {
    v7 = strlen(*(a1 + 1568));
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_23C49B938(a1, v6, v7, *(a1 + 144), *(a1 + 184), *(a1 + 184));
  v15[0] = llvm::ConstantInt::get();
  v15[1] = llvm::ConstantInt::get();
  v11 = 257;
  sub_23C497A7C((a1 + 8), *(v8 + 24), v8, v15, 2, v10);
  return 0;
}

llvm::Instruction *sub_23C4B4064(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::FixedVectorType::get();
  v7 = *(a1 + 1720);
  if (v7)
  {
    v8 = strlen(*(a1 + 1720));
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 144);
  v10 = llvm::PointerType::get();
  v11 = sub_23C49B938(a1, v7, v8, v9, v10, *(a1 + 192));
  v18[0] = a3;
  v18[1] = llvm::ConstantInt::get();
  v14 = 257;
  return sub_23C497A7C((a1 + 8), *(v11 + 24), v11, v18, 2, v13);
}

llvm::Instruction *sub_23C4B41BC(uint64_t a1, uint64_t a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  sub_23C497620(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 1392);
  if (v6)
  {
    v7 = strlen(*(a1 + 1392));
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_23C49B938(a1, v6, v7, *(a1 + 192), *(a1 + 184), *(a1 + 184));
  v15[0] = llvm::ConstantInt::get();
  v15[1] = llvm::ConstantInt::get();
  v11 = 257;
  return sub_23C497A7C((a1 + 8), *(v8 + 24), v8, v15, 2, v10);
}

llvm::Instruction *sub_23C4B42F4(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, unsigned __int16 a5)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  sub_23C497620(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 1408);
  if (v8)
  {
    v9 = strlen(*(a1 + 1408));
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_23C49B858(a1, v8, v9, *(a1 + 144), *(a1 + 184), *(a1 + 192), *(a1 + 184));
  v17[0] = llvm::ConstantInt::get();
  v17[1] = a4;
  v17[2] = llvm::ConstantInt::get();
  v13 = 257;
  return sub_23C497A7C((a1 + 8), *(v10 + 24), v10, v17, 3, v12);
}

llvm::Instruction *sub_23C4B4434(uint64_t a1, uint64_t a2, llvm::Value **a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  sub_23C497620(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *(a1 + 1200);
  if (v9)
  {
    v10 = strlen(*(a1 + 1200));
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_23C49B938(a1, v9, v10, *(a1 + 160), *(a1 + 280), *(a1 + 192));
  v12 = llvm::UndefValue::get();
  v13 = *(a1 + 176);
  v25 = 257;
  v15 = sub_23C49B1E4(a1 + 8, a3, v13, 0, v24, v14);
  v30 = 257;
  v16 = llvm::ConstantInt::get();
  v29[0] = sub_23C505AA8(a1 + 8, v12, v15, v16, v29);
  v29[1] = llvm::ConstantInt::get();
  v25 = 257;
  v17 = sub_23C497A7C((a1 + 8), *(v11 + 24), v11, v29, 2, v24);
  v23 = sub_23C505300(a1, v17, a5);
  v18 = 2048;
  if (*(a1 + 160) == a5)
  {
    v18 = 2040;
  }

  v19 = *(a1 + v18);
  if (v19)
  {
    v20 = strlen(*(a1 + v18));
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_23C49EB10(a1, v19, v20, a5, a5);
  v25 = 257;
  return sub_23C497A7C((a1 + 8), *(v21 + 24), v21, &v23, 1, v24);
}

unsigned __int8 *sub_23C4B4630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, llvm::Value *a5)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30 = a3;
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  sub_23C497620(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *a3;
  v10 = 2032;
  if (v9 == *(a1 + 160))
  {
    v10 = 2024;
  }

  v11 = *(a1 + v10);
  if (v11)
  {
    v12 = strlen(*(a1 + v10));
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_23C49EB10(a1, v11, v12, v9, v9);
  v26 = 257;
  v14 = sub_23C497A7C((a1 + 8), *(v13 + 24), v13, &v30, 1, v25);
  if (*(a5 + 8) >= 7u)
  {
    v16 = *(a1 + 2016);
    if (v16)
    {
      v17 = strlen(*(a1 + 2016));
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_23C49B938(a1, v16, v17, *(a1 + 184), *(a1 + 160), *(a1 + 184));
    v31[0] = sub_23C504E2C(a1, v14, 1);
    v31[1] = llvm::ConstantInt::get();
    v26 = 257;
    v19 = sub_23C497A7C((a1 + 8), *(v18 + 24), v18, v31, 2, v25);
    v20 = *(a1 + 176);
    v24[16] = 257;
    v22 = sub_23C49B1E4(a1 + 8, v19, v20, 0, v24, v21);
    v26 = 257;
    return sub_23C49B1E4(a1 + 8, v22, a5, 0, v25, v23);
  }

  else if (*(a1 + 160) == a5)
  {
    v26 = 257;
    return sub_23C4B284C(a1 + 8, v14, a5, v25);
  }

  else
  {
    v26 = 257;
    return sub_23C49FEB4(a1 + 8, v14, a5, v25);
  }
}

uint64_t *sub_23C4B4870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 2016);
  if (v6)
  {
    v7 = strlen(*(a1 + 2016));
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_23C49B938(a1, v6, v7, *(a1 + 184), *(a1 + 160), *(a1 + 184));
  v18[0] = a3;
  v18[1] = llvm::ConstantInt::get();
  v14 = 257;
  v9 = sub_23C497A7C((a1 + 8), *(v8 + 24), v8, v18, 2, v13);
  v10 = *(a1 + 152);
  v14 = 257;
  v11 = sub_23C49ACF8(a1 + 8, 49, v9, v10, v13);
  return sub_23C504E2C(a1, v11, 1);
}

unsigned __int8 *sub_23C4B49BC(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  v37 = *a2;
  v38 = *(a2 + 16);
  if (v38)
  {
    llvm::MetadataTracking::track();
  }

  v39 = *(a2 + 24);
  sub_23C497620(a1, &v37);
  if (v38)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = sub_23C504E2C(a1, a3, 1);
  v40 = v10;
  if (a4 == 16)
  {
    v11 = a5 == 0;
    v12 = 2008;
    v13 = 2000;
  }

  else
  {
    if (a4 != 8)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v11 = a5 == 0;
    v12 = 1992;
    v13 = 1984;
  }

  if (!v11)
  {
    v12 = v13;
  }

  v14 = *(a1 + v12);
  if (v14)
  {
    v15 = strlen(*(a1 + v12));
    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
LABEL_15:
  v16 = sub_23C49EB10(a1, v14, v15, *(a1 + 184), *(a1 + 160));
  v17 = v16;
  v18 = 184;
  if (a4 == 8)
  {
    v18 = 176;
  }

  v19 = *(a1 + v18);
  if ((*(*v10 + 8) & 0xFE) == 0x12 && (v20 = *(*v10 + 32), v20 != 1))
  {
    llvm::FixedVectorType::get();
    v26 = llvm::UndefValue::get();
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v36 = 257;
        v28 = llvm::ConstantInt::get();
        v32 = sub_23C5057E8(a1 + 8, v10, v28, v35);
        v34 = 257;
        v29 = sub_23C497A7C((a1 + 8), *(v17 + 24), v17, &v32, 1, v33);
        v36 = 257;
        v30 = llvm::ConstantInt::get();
        v26 = sub_23C505AA8(a1 + 8, v26, v29, v30, v35);
      }
    }

    v25 = llvm::FixedVectorType::get();
    v36 = 257;
    v23 = a1 + 8;
    v24 = v35;
    v21 = v26;
  }

  else
  {
    v36 = 257;
    v21 = sub_23C497A7C((a1 + 8), *(v16 + 24), v16, &v40, 1, v35);
    v34 = 257;
    v23 = a1 + 8;
    v24 = v33;
    v25 = v19;
  }

  return sub_23C49B1E4(v23, v21, v25, 0, v24, v22);
}

llvm::Instruction *sub_23C4B4C24(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  sub_23C497620(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v21 = sub_23C504E2C(a1, a3, 1);
  if (a4 > 1)
  {
    v9 = *(a1 + 1992);
    if (v9)
    {
      v10 = strlen(*(a1 + 1992));
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_23C49EB10(a1, v9, v10, *(a1 + 184), *(a1 + 160));
    v17 = 257;
    v12 = sub_23C497A7C((a1 + 8), *(v11 + 24), v11, &v21, 1, v16);
    v13 = *(a1 + 2056);
    if (v13)
    {
      v14 = strlen(*(a1 + 2056));
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_23C49B938(a1, v13, v14, *(a1 + 192), *(a1 + 184), *(a1 + 184));
    v22[0] = llvm::ConstantInt::get();
    v22[1] = v12;
    v17 = 257;
    return sub_23C497A7C((a1 + 8), *(v15 + 24), v15, v22, 2, v16);
  }

  else
  {
    llvm::ConstantFP::get();
    llvm::IRBuilderBase::CreateFCmpHelper();
    llvm::ConstantInt::get();
    llvm::ConstantInt::get();
    v17 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }
}

llvm::Instruction *sub_23C4B4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned __int16 a6)
{
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::ConstantInt::get();
  llvm::ConstantInt::get();
  v14 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v8 = *(a1 + 1376);
  if (v8)
  {
    v9 = strlen(*(a1 + 1376));
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_23C49EB10(a1, v8, v9, *(a1 + 144), *(a1 + 184));
  v14 = 257;
  return sub_23C497A7C((a1 + 8), *(v10 + 24), v10, &Select, 1, v13);
}

void sub_23C4B4FC0(void *a1)
{
  sub_23C4B4FF8(a1);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C4B4FF8(void *a1)
{
  *a1 = &unk_284F12E98;
  v2 = a1[99];
  a1[99] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MEMORY[0x23EED3B70](a1 + 44);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((a1 + 17));
  llvm::IRBuilderFolder::~IRBuilderFolder((a1 + 16));
  v3 = a1[1];
  if (v3 != a1 + 3)
  {
    free(v3);
  }

  return a1;
}

uint64_t sub_23C4B50B4(uint64_t *a1)
{
  v128 = *MEMORY[0x277D85DE8];
  if (!sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128)))
  {
    return 0;
  }

  v2 = sub_23C503B2C(a1);
  v3 = sub_23C511A84(a1);
  v4 = *(a1 + *(*a1 - 24) + 560);
  v5 = (v4 - *v4);
  v6 = *v5;
  if (v6 >= 9)
  {
    if (v5[4])
    {
      v7 = (v4 + v5[4] + *(v4 + v5[4]));
    }

    else
    {
      v7 = 0;
    }

LABEL_9:
    v9 = v5[2];
    if (v5[2])
    {
      v9 = (v9 + v4 + *(v9 + v4));
    }

    goto LABEL_11;
  }

  v7 = 0;
  v9 = 0;
  if (v6 >= 5)
  {
    goto LABEL_9;
  }

LABEL_11:
  v10 = (v9 - *v9);
  v11 = *v10;
  v103 = v2;
  v104 = v3;
  if (v11 < 0x25)
  {
    goto LABEL_21;
  }

  if (v10[18] && *(v9 + v10[18]))
  {
    goto LABEL_17;
  }

  if (v11 < 0x27)
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  if (!v10[19] || !*(v9 + v10[19]))
  {
    if (v11 >= 0x29)
    {
      v13 = v10[20];
      if (v13)
      {
        v12 = *(v9 + v13) != 0;
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

LABEL_17:
  v12 = 1;
LABEL_22:
  v102 = v12;
  (*(*a1 + 368))(a1, v7);
  if (*(a1 + 970))
  {
    sub_23C4B1830(*(a1 + 970));
  }

  v14 = *v7;
  v15 = *(v7 - v14 + 8);
  if (*(v7 - v14 + 8))
  {
    v14 = *(v7 + v15);
    v16 = v7 + v15 + v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = v14;
  }

  v17 = *(v7 + v15 + v14);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 4 * v17;
    while (1)
    {
      v22 = *&v16[v18 + 4];
      v23 = &v16[v18 + v22];
      v24 = *(v23 + 1);
      v25 = v22 - v24;
      v26 = &v16[v18 + v22 - v24];
      v27 = *(v26 + 2);
      if (v27 < 5)
      {
        v32 = v20;
      }

      else
      {
        v28 = -v24;
        v29 = *(v26 + 4);
        if (!v29 || v16[v18 + 4 + v22 + v29] != 1 || (v27 < 7 || (v30 = *&v16[v18 + 10 + v25]) == 0 ? (v31 = 0) : (v31 = *&v16[v18 + 4 + v22 + v30]), *(4 * v31) != -1))
        {
          v32 = v20;
LABEL_39:
          if (*&v16[v22 + 8 + v18 + v28] && v16[v18 + 4 + v22 + *&v16[v22 + 8 + v18 + v28]] == 5)
          {
            v19 += 2;
          }

          goto LABEL_42;
        }

        v32 = (v20 + 1);
        *(4 * v31) = v20;
        v33 = *(v23 + 1);
        if (*&v16[v18 + 4 + v22 - v33] >= 5u)
        {
          v28 = -v33;
          goto LABEL_39;
        }
      }

LABEL_42:
      v18 += 4;
      v20 = v32;
      if (v21 == v18)
      {
        goto LABEL_47;
      }
    }
  }

  v19 = 0;
LABEL_47:
  v34 = *a1;
  v35 = *(*(a1 + *(*a1 - 24) + 344) + 1686);
  v119 = 0;
  v120 = 0u;
  v121 = v123;
  v122 = 0x800000000;
  v123[64] = 0x1FFFFFFFFLL;
  v124 = v35;
  v126 = 0;
  memset(v125, 0, 74);
  v127 = 1;
  if ((*(a1[477] + 60) & 4) != 0)
  {
    v125[73] = 1;
  }

  v100 = v19;
  v36 = *(a1 + 970);
  if (v36)
  {
    v37 = 0;
    for (i = 0; i < v36; ++i)
    {
      v39 = a1[484] + v37;
      v40 = *(4 * *(v39 + 16));
      if (v40 != -1)
      {
        *(v39 + 16) = v40;
        sub_23C52B5AC(&v119, v39);
        v36 = *(a1 + 970);
      }

      v37 += 64;
    }

    v34 = *a1;
  }

  sub_23C52B97C(&v119, *(a1 + *(v34 - 24) + 344));
  v41 = *a1;
  sub_23C52BC50(&v119, *(*(a1 + *(*a1 - 24) + 344) + 1634), 0);
  sub_23C52BCD4(&v119, a1 + *(v41 - 24) + 704);
  v42 = *a1;
  v43 = *(*a1 - 24);
  v101 = v122;
  if (v122)
  {
    sub_23C52BEB8(v121, &v121[4 * v122], 126 - 2 * __clz(v122), 1);
    __p[0] = 0;
    LOBYTE(__p[1]) = 0;
    v106 = xmmword_23C532550;
    v107 = 0u;
    v108 = 0u;
    v109 = 0;
    v110 = 1;
    v111 = 256;
    v112 = 0;
    if (v122)
    {
      v99 = v43;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      do
      {
        v47 = SHIBYTE(v121[v44 + 2]);
        if (v47 >= 0)
        {
          v48 = &v121[v44 + 1] + 8;
        }

        else
        {
          v48 = *(&v121[v44 + 1] + 1);
        }

        if (v47 >= 0)
        {
          v49 = HIBYTE(v121[v44 + 2]);
        }

        else
        {
          v49 = *&v121[v44 + 2];
        }

        v50 = sub_23C4B023C(__p, v48, v49);
        v51 = v46;
        v52 = v46 >> 2;
        if (((v46 >> 2) + 1) >> 62)
        {
          sub_23C496CE8();
        }

        if (v46 >> 2 != -1)
        {
          if (!(((v46 >> 2) + 1) >> 62))
          {
            operator new();
          }

          sub_23C496CE8();
        }

        *(4 * v52) = v50;
        v46 = 4 * v52 + 4;
        memcpy(0, 0, v51);
        ++v45;
        v44 += 4;
      }

      while (v45 < v122);
      if (v122)
      {
        BYTE6(v109) = 1;
        sub_23C4B0AD0(__p, v46, 4uLL);
        sub_23C4B0AD0(__p, v46, 4uLL);
        if (4 * v52 == -4)
        {
          v53 = &unk_23C534F22;
        }

        else
        {
          v53 = 0;
        }

        if (4 * v52 != -4)
        {
          v54 = v46 >> 2;
          v55 = v53 - 4;
          do
          {
            v56 = v54 - 1;
            v57 = *&v55[4 * v54];
            sub_23C4B08D8(__p, 4uLL);
            sub_23C4B0A6C(__p, v107 - v108 + DWORD2(v107) - v57 + 4);
            v54 = v56;
          }

          while (v56);
        }

        BYTE6(v109) = 0;
        v58 = sub_23C4B0A6C(__p, (4 * v52 + 4) >> 2);
        BYTE6(v109) = 1;
        v59 = WORD4(v107);
        v60 = v107 - v108;
        if (v58)
        {
          v61 = v58;
          sub_23C4B08D8(__p, 4uLL);
          sub_23C4B0A04(__p, 4, (v107 - v108 + DWORD2(v107) - v61 + 4));
        }

        v62 = sub_23C4B03D4(__p, v60 + v59);
        sub_23C4B1AD8(__p, v62);
      }

      v43 = v99;
    }

    v65 = a1 + v43;
    v66 = sub_23C4B1A58((v65 + 704), v108, (v107 - v108 + DWORD2(v107)));
    sub_23C4B1460(__p);
    __p[0] = 0;
    LOBYTE(__p[1]) = 0;
    v106 = xmmword_23C532550;
    v107 = 0u;
    v108 = 0u;
    v109 = 0;
    v110 = 1;
    v111 = 256;
    v112 = 0;
    if (v122)
    {
      sub_23C4B1830(1uLL);
    }

    v67 = sub_23C4B1A58((v65 + 704), 0, 0);
    sub_23C4B1460(__p);
    v42 = *a1;
    v63 = v66;
    v64 = v67;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v68 = sub_23C4B17AC(a1 + *(v42 - 24) + 704, &unk_27E1F7578, 0);
  if (v120 == v119)
  {
    v69 = &unk_27E1F74FC;
  }

  else
  {
    v69 = v119;
  }

  v70 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v69, (v120 - v119) >> 2);
  v71 = a1 + *(*a1 - 24);
  v71[774] = 1;
  v72 = *(v71 + 186);
  v73 = *(v71 + 184) - *(v71 + 188);
  if (v101)
  {
    sub_23C4B02B4(v71 + 88, 4, v63);
    sub_23C4B02B4(v71 + 88, 6, v64);
    sub_23C4B2DFC(v71 + 88, 22, *(a1 + 37));
  }

  sub_23C4B02B4(v71 + 88, 8, v68);
  sub_23C4B02B4(v71 + 88, 10, v70);
  sub_23C4B2DFC(v71 + 88, 12, v125[72]);
  sub_23C4B2DFC(v71 + 88, 14, *(a1 + 3853));
  sub_23C4B2DFC(v71 + 88, 16, *(a1 + 3852));
  sub_23C4B2DFC(v71 + 88, 20, v102 & a1[298]);
  sub_23C4B2DFC(v71 + 88, 18, v102);
  v74 = sub_23C4B03D4((v71 + 704), v73 + v72);
  v75 = a1 + *(*a1 - 24);
  v75[774] = 1;
  v76 = *(v75 + 186);
  v77 = *(v75 + 184) - *(v75 + 188);
  sub_23C4B5F88(v75 + 88, v103);
  sub_23C4B5FF0(v75 + 88, v104);
  if (v74)
  {
    sub_23C4B08D8((v75 + 704), 4uLL);
    sub_23C4B0A04(v75 + 88, 14, (*(v75 + 184) - *(v75 + 188) + *(v75 + 186) - v74 + 4));
  }

  v78 = a1 + *(*a1 - 24);
  v79 = sub_23C4B03D4((v75 + 704), v77 + v76);
  sub_23C4B1AD8((v78 + 704), v79);
  v80 = (a1 + *(*a1 - 24));
  v81 = (v80[23].__r_.__value_.__l.__size_ + *(v80[23].__r_.__value_.__l.__size_ - *v80[23].__r_.__value_.__l.__size_ + 4));
  v82 = (v81 + *v81 + *(v81 + *v81 - *(v81 + *v81) + 8));
  if (*(v82 + *v82) > 0x20)
  {
    v8 = 0;
  }

  else
  {
    v83 = *(*(v80[16].__r_.__value_.__r.__words[2] + 32) + 44);
    if (v126 + v100 <= v83)
    {
      v8 = 1;
    }

    else
    {
      std::to_string(&v114, v126 + v100);
      v84 = std::string::insert(&v114, 0, "Number of varying components(");
      v85 = v84->__r_.__value_.__r.__words[2];
      *&v115.__r_.__value_.__l.__data_ = *&v84->__r_.__value_.__l.__data_;
      v115.__r_.__value_.__r.__words[2] = v85;
      v84->__r_.__value_.__l.__size_ = 0;
      v84->__r_.__value_.__r.__words[2] = 0;
      v84->__r_.__value_.__r.__words[0] = 0;
      v86 = std::string::append(&v115, ") ");
      v87 = v86->__r_.__value_.__r.__words[2];
      *&v116.__r_.__value_.__l.__data_ = *&v86->__r_.__value_.__l.__data_;
      v116.__r_.__value_.__r.__words[2] = v87;
      v86->__r_.__value_.__l.__size_ = 0;
      v86->__r_.__value_.__r.__words[2] = 0;
      v86->__r_.__value_.__r.__words[0] = 0;
      v88 = std::string::append(&v116, "exceeds the limit (");
      v89 = v88->__r_.__value_.__r.__words[2];
      *&v117.__r_.__value_.__l.__data_ = *&v88->__r_.__value_.__l.__data_;
      v117.__r_.__value_.__r.__words[2] = v89;
      v88->__r_.__value_.__l.__size_ = 0;
      v88->__r_.__value_.__r.__words[2] = 0;
      v88->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v113, v83);
      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = &v113;
      }

      else
      {
        v90 = v113.__r_.__value_.__r.__words[0];
      }

      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v113.__r_.__value_.__l.__size_;
      }

      v92 = std::string::append(&v117, v90, size);
      v93 = v92->__r_.__value_.__r.__words[2];
      *&v118.__r_.__value_.__l.__data_ = *&v92->__r_.__value_.__l.__data_;
      v118.__r_.__value_.__r.__words[2] = v93;
      v92->__r_.__value_.__l.__size_ = 0;
      v92->__r_.__value_.__r.__words[2] = 0;
      v92->__r_.__value_.__r.__words[0] = 0;
      v94 = std::string::append(&v118, ")");
      v95 = v94->__r_.__value_.__r.__words[2];
      *__p = *&v94->__r_.__value_.__l.__data_;
      *&v106 = v95;
      v94->__r_.__value_.__l.__size_ = 0;
      v94->__r_.__value_.__r.__words[2] = 0;
      v94->__r_.__value_.__r.__words[0] = 0;
      if ((SBYTE7(v106) & 0x80u) == 0)
      {
        v96 = __p;
      }

      else
      {
        v96 = __p[0];
      }

      if ((SBYTE7(v106) & 0x80u) == 0)
      {
        v97 = BYTE7(v106);
      }

      else
      {
        v97 = __p[1];
      }

      std::string::append(v80 + 17, v96, v97);
      if (SBYTE7(v106) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v117.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v115.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v114.__r_.__value_.__l.__data_);
      }

      v8 = 0;
    }
  }

  __p[0] = v125;
  sub_23C4B6058(__p);
  sub_23C4B60E4(&v121);
  if (v119)
  {
    *&v120 = v119;
    operator delete(v119);
  }

  return v8;
}

uint64_t sub_23C4B5EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  sub_23C4B0AD0(a1, 4 * a3, 4uLL);
  sub_23C4B0AD0(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      v10 = *(v7 + 4 * v8);
      sub_23C4B08D8(a1, 4uLL);
      sub_23C4B0A6C(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40) - v10 + 4);
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return sub_23C4B0A6C(a1, a3);
}

uint64_t *sub_23C4B5F88(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    sub_23C4B08D8(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return sub_23C4B0A04(v3, 4, v4);
  }

  return result;
}

uint64_t *sub_23C4B5FF0(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    sub_23C4B08D8(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return sub_23C4B0A04(v3, 8, v4);
  }

  return result;
}

void sub_23C4B6058(void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 5;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_23C4B60E4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 64 * v3 - 40;
    v5 = -64 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 64;
      v5 += 64;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void sub_23C4B6174(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 3816);
  sub_23C49F8D0(v40, "AGCFragmentContextStateAGP");
  sub_23C49F8D0(&v44, "AGCFragmentContextState");
  sub_23C49F8D0(&v43, "fragmentState");
  sub_23C49F8D0(&v86, "AGCFragmentState");
  sub_23C49F8D0(&v65, "GL and Metal state:");
  sub_23C49F8D0(v63, "alphaToCoverage");
  sub_23C4B7004(&v66, v63, *v4 & 1);
  sub_23C49F8D0(v61, "alphaToOne");
  sub_23C4B7004(&v67, v61, (*v4 >> 1) & 1);
  sub_23C49F8D0(v59, "sampleCoverage");
  sub_23C4B7004(&v68, v59, (*v4 >> 2) & 1);
  sub_23C49F8D0(&v69, "GL specific state:");
  sub_23C49F8D0(v57, "depthStencilWriteDisabled");
  sub_23C4B7004(&v70, v57, (*v4 >> 4) & 1);
  sub_23C49F8D0(v55, "logicOp");
  sub_23C4B7004(&v71, v55, (*v4 >> 5) & 1);
  sub_23C49F8D0(v53, "logicOpState");
  sub_23C4B705C(&v72, v53, off_278BBF0E8[(*v4 >> 6) & 0x1F]);
  sub_23C49F8D0(&v52, "alphaTest");
  sub_23C4B7004(&v73, &v52.__r_.__value_.__l.__data_, (*v4 >> 11) & 1);
  sub_23C49F8D0(v50, "alphaTestFunc");
  sub_23C4B705C(&v74, v50, off_278BBF170[*v4 >> 12]);
  sub_23C49F8D0(&v49, "smoothPoints");
  sub_23C4B7004(&v75, &v49.__r_.__value_.__l.__data_, HIWORD(*v4) & 1);
  sub_23C49F8D0(&v48, "pointSpriteEnabled");
  sub_23C4B7004(&v76, &v48.__r_.__value_.__l.__data_, (*v4 >> 17) & 1);
  sub_23C49F8D0(&v47, "outputPointSize");
  sub_23C4B7004(&v77, &v47.__r_.__value_.__l.__data_, (*v4 >> 18) & 1);
  sub_23C49F8D0(&v46, "shaderDebugEnable");
  sub_23C4B7004(&v78, &v46.__r_.__value_.__l.__data_, (*v4 >> 19) & 1);
  sub_23C49F8D0(&__p, "unused");
  sub_23C4B7004(&v79, &__p.__r_.__value_.__l.__data_, *v4 >> 20);
  sub_23C4B70B4(&v42, &v86, &v65, 15);
  v5 = 45;
  do
  {
    if (v65.__r_.__value_.__s.__data_[v5 * 8 - 1] < 0)
    {
      operator delete(v63[v5]);
    }

    v5 -= 3;
  }

  while (v5 * 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v86, &v43.__r_.__value_.__l.__data_, &v42);
  sub_23C49F8D0(v53, "colorMaskState");
  sub_23C49F8D0(v63, "AGCColorMaskState");
  sub_23C49F8D0(v61, "redEnableBits");
  sub_23C4B7424(&v65, v61, *(v4 + 8));
  sub_23C49F8D0(v59, "greenEnableBits");
  sub_23C4B7424(&v66, v59, *(v4 + 9));
  sub_23C49F8D0(v57, "blueEnableBits");
  sub_23C4B7424(&v67, v57, *(v4 + 10));
  sub_23C49F8D0(v55, "alphaEnableBits");
  sub_23C4B7424(&v68, v55, *(v4 + 11));
  sub_23C4B70B4(&v52, v63, &v65, 4);
  for (i = 0; i != -12; i -= 3)
  {
    if (SHIBYTE(v68.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v68.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  sub_23C4B733C(&v87, v53, &v52);
  sub_23C4B70B4(&v65, &v44, &v86, 2);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v87.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v86 + j * 8 + 24));
    }
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&v86, "mutableBuffers");
  sub_23C4B7424(&v66, &v86.__r_.__value_.__l.__data_, *(v4 + 2));
  sub_23C49F8D0(v63, "genCompilerStatistics");
  sub_23C4B7004(&v67, v63, v4[15] & 1);
  sub_23C49F8D0(v61, "genTelemetryStatistics");
  sub_23C4B7004(&v68, v61, (v4[15] >> 1) & 1);
  sub_23C49F8D0(v59, "fragmentOnly");
  sub_23C4B7004(&v69, v59, (v4[15] >> 2) & 1);
  sub_23C49F8D0(v57, "openglMode");
  sub_23C4B7004(&v70, v57, (v4[15] >> 3) & 1);
  sub_23C49F8D0(v55, "customBorderColor");
  sub_23C4B7004(&v71, v55, (v4[15] >> 4) & 1);
  sub_23C49F8D0(v53, "disableTextureRWBoundsCheck");
  sub_23C4B7004(&v72, v53, (v4[15] >> 5) & 1);
  sub_23C49F8D0(&v52, "debugInstrumentationEnabled");
  sub_23C4B7004(&v73, &v52.__r_.__value_.__l.__data_, (v4[15] >> 6) & 1);
  sub_23C49F8D0(v50, "unused");
  sub_23C4B7004(&v74, v50, v4[15] >> 7);
  sub_23C4B7610(&v49, v4 + 6);
  v8 = std::string::insert(&v49, 0, "blendState[0]: ");
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v48, v4 + 7);
  v10 = std::string::insert(&v48, 0, "blendState[1]: ");
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v47, v4 + 8);
  v12 = std::string::insert(&v47, 0, "blendState[2]: ");
  v13 = v12->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v46, v4 + 9);
  v14 = std::string::insert(&v46, 0, "blendState[3]: ");
  v15 = v14->__r_.__value_.__r.__words[2];
  *&v78.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
  v78.__r_.__value_.__r.__words[2] = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&__p, v4 + 10);
  v16 = std::string::insert(&__p, 0, "blendState[4]: ");
  v17 = v16->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v44, v4 + 11);
  v18 = std::string::insert(&v44, 0, "blendState[5]: ");
  v19 = v18->__r_.__value_.__r.__words[2];
  v80 = *&v18->__r_.__value_.__l.__data_;
  v81 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v43, v4 + 12);
  v20 = std::string::insert(&v43, 0, "blendState[6]: ");
  v21 = v20->__r_.__value_.__r.__words[2];
  v82 = *&v20->__r_.__value_.__l.__data_;
  v83 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v42, v4 + 13);
  v22 = std::string::insert(&v42, 0, "blendState[7]: ");
  v23 = v22->__r_.__value_.__r.__words[2];
  v84 = *&v22->__r_.__value_.__l.__data_;
  v85 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B70B4(&v29, v40, &v65, 18);
  v24 = 54;
  do
  {
    if (v65.__r_.__value_.__s.__data_[v24 * 8 - 1] < 0)
    {
      operator delete(v63[v24]);
    }

    v24 -= 3;
  }

  while (v24 * 8);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v25 = *(a1 + 2960);
  sub_23C49F8D0(v63, "AGCDrawBufferState");
  sub_23C49F8D0(v61, "enabledBits");
  sub_23C4B7424(&v86, v61, *(v25 + 32));
  sub_23C49F8D0(v59, "sampleCount");
  sub_23C4B7004(&v87, v59, (*(v25 + 32) >> 8) & 0xF);
  sub_23C49F8D0(v57, "colorSampleCount");
  sub_23C4B7004(&v88, v57, *(v25 + 32) >> 12);
  sub_23C49F8D0(v55, "outputPartitionSize");
  sub_23C4B7004(&v89, v55, *(v25 + 34));
  sub_23C49F8D0(v53, "LIBSpilling");
  sub_23C4B7004(&v90, v53, HIBYTE(*(v25 + 32)) & 1);
  sub_23C49F8D0(&v52, "unused");
  sub_23C4B7004(&v91, &v52.__r_.__value_.__l.__data_, *(v25 + 32) >> 25);
  sub_23C49F8D0(v50, "encoded : ");
  sub_23C49F8D0(&v49, "encoded[0]");
  sub_23C4B787C(&v48, v25);
  sub_23C4B733C(&v65, &v49.__r_.__value_.__l.__data_, &v48);
  sub_23C49F8D0(&v47, "encoded[1]");
  sub_23C4B787C(&v46, (v25 + 4));
  sub_23C4B733C(&v66, &v47.__r_.__value_.__l.__data_, &v46);
  sub_23C49F8D0(&__p, "encoded[2]");
  sub_23C4B787C(&v44, (v25 + 8));
  sub_23C4B733C(&v67, &__p.__r_.__value_.__l.__data_, &v44);
  sub_23C49F8D0(&v43, "encoded[3]");
  sub_23C4B787C(&v42, (v25 + 12));
  sub_23C4B733C(&v68, &v43.__r_.__value_.__l.__data_, &v42);
  sub_23C49F8D0(v40, "encoded[4]");
  sub_23C4B787C(&v39, (v25 + 16));
  sub_23C4B733C(&v69, v40, &v39);
  sub_23C49F8D0(v37, "encoded[5]");
  sub_23C4B787C(&v36, (v25 + 20));
  sub_23C4B733C(&v70, v37, &v36);
  sub_23C49F8D0(v34, "encoded[6]");
  sub_23C4B787C(&v33, (v25 + 24));
  sub_23C4B733C(&v71, v34, &v33);
  sub_23C49F8D0(v31, "encoded[7]");
  sub_23C4B787C(&v30, (v25 + 28));
  sub_23C4B733C(&v72, v31, &v30);
  sub_23C4B70B4(&v92, v50, &v65, 8);
  sub_23C4B70B4(&v28, v63, &v86, 7);
  for (k = 0; k != -21; k -= 3)
  {
    if (SHIBYTE(v92.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v92.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  for (m = 0; m != -24; m -= 3)
  {
    if (SHIBYTE(v72.__r_.__value_.__r.__words[m + 2]) < 0)
    {
      operator delete(*(&v72.__r_.__value_.__l.__data_ + m * 8));
    }
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  sub_23C4B7AC8(a2, &v29.__r_.__value_.__l.__data_, &v28.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_23C4B7004(std::string *a1, const void **a2, unsigned int __val)
{
  std::to_string(&v5, __val);
  sub_23C4B733C(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_23C4B705C(std::string *a1, const void **a2, char *__s)
{
  sub_23C49F8D0(__p, __s);
  sub_23C4B733C(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23C4B70B4(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_23C49F988(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v27 = *(a2 + 16);
  }

  sub_23C4B7B84(&v28, __dst, 0);
  sub_23C49F8D0(v21, "{");
  sub_23C4B7B84(&__p, v21, 0);
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v24;
  }

  v9 = std::string::append(&v28, p_p, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0]);
  }

  if (a4)
  {
    for (i = 24 * a4; i; i -= 24)
    {
      if (*(a3 + 23) < 0)
      {
        sub_23C49F988(&v28, *a3, *(a3 + 8));
      }

      else
      {
        v28 = *a3;
      }

      v12 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_23C49F988(&v20, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
      }

      else
      {
        v20 = v28;
      }

      sub_23C4B7B84(&__p, &v20, 1);
      if ((v25 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v25 & 0x80u) == 0)
      {
        v14 = v25;
      }

      else
      {
        v14 = v24;
      }

      std::string::append(&v29, v13, v14);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        if (v12 < 0)
        {
LABEL_39:
          operator delete(v28.__r_.__value_.__l.__data_);
        }
      }

      else if (v12 < 0)
      {
        goto LABEL_39;
      }

      a3 += 24;
    }
  }

  sub_23C49F8D0(v18, "}");
  sub_23C4B7B84(&v28, v18, 0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v29;
  }

  else
  {
    v15 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v28, 0, v15, size);
  *a1 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_23C4B733C(std::string *a1, const void **a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v13;
  sub_23C4ADD34(&v13, v6 + 3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 2112032;
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = std::string::append(&v13, v10, v11);
  *a1 = *v12;
  v12->__r_.__value_.__r.__words[0] = 0;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_23C4B7424(std::string *a1, const void **a2, uint64_t a3)
{
  sub_23C4B0E40(v11);
  v6 = sub_23C4AA520(&v12, "0x", 2);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EED4FC0](v6, a3);
  std::stringbuf::str();
  sub_23C4B733C(a1, a2, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v7;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED5050](&v16);
}

void sub_23C4B7610(std::string *a1, unsigned int *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v20, "AGCBlendState");
  sub_23C49F8D0(v18, "enabled");
  if (*a2)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  sub_23C4B705C(&v22, v18, v4);
  sub_23C49F8D0(v16, "src");
  sub_23C4B705C(&v23, v16, off_278BBF1B8[(*a2 >> 1) & 0x1F]);
  sub_23C49F8D0(v14, "dst");
  sub_23C4B705C(&v24, v14, off_278BBF1B8[(*a2 >> 6) & 0x1F]);
  sub_23C49F8D0(v12, "srcA");
  sub_23C4B705C(&v25, v12, off_278BBF1B8[*a2 >> 11]);
  sub_23C49F8D0(v10, "dstA");
  sub_23C4B705C(&v26, v10, off_278BBF1B8[*(a2 + 1) & 0x1F]);
  sub_23C49F8D0(v8, "equation");
  sub_23C4B705C(&v27, v8, off_278BBF258[(*a2 >> 21) & 7]);
  sub_23C49F8D0(__p, "equationA");
  sub_23C4B705C(&v28, __p, off_278BBF258[*(a2 + 3) & 7]);
  sub_23C4B70B4(a1, v20, &v22, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v28.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v28.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_23C4B787C(std::string *a1, _DWORD *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v19, "AGCDrawBuffer");
  sub_23C49F8D0(v17, "pbeSourceFormat");
  sub_23C4B705C(&v21, v17, off_278BBF290[*a2 & 0x1F]);
  sub_23C49F8D0(v15, "numWrittenComponents");
  sub_23C4B7004(&v22, v15, *a2 >> 5);
  sub_23C49F8D0(v13, "gammaCorrection");
  sub_23C4B7004(&v23, v13, (*a2 >> 8) & 1);
  sub_23C49F8D0(v11, "colorSpaceConversion");
  sub_23C4B705C(&v24, v11, off_278BBF348[(*a2 >> 9) & 7]);
  sub_23C49F8D0(v9, "preEmitSwizzle");
  sub_23C4B705C(&v25, v9, off_278BBF370[(*a2 >> 12) & 7]);
  sub_23C49F8D0(v7, "outputPartitionOffset");
  sub_23C4B7004(&v26, v7, (*a2 >> 15));
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v27, __p, *a2 >> 23);
  sub_23C4B70B4(a1, v19, &v21, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v27.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v27.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }
}

char *sub_23C4B7AC8(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = sub_23C4ADD34(a1, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void sub_23C4B7B84(void ***a1, std::string::value_type *a2, int a3)
{
  sub_23C49F8D0(&v14, &unk_23C53F34D);
  if (a3)
  {
    std::string::append(&v14, "  ");
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23C49F988(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v6 = a2[23];
  if (v6 < 0)
  {
    v7 = a2;
    a2 = *a2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *a2;
    std::string::push_back(&__p, *a2);
    if (v8 == 10)
    {
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v9, size);
    }

    ++a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  sub_23C4ADD34(a1, v11 + 1);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v11)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, p_p, v11);
  }

  *(a1 + v11) = 10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_23C4B7CF8(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F13140;
  v1[551] = &unk_284F13368;
  v1[304] = &unk_284F132F0;
  sub_23C4B60E4((v1 + 484));
  sub_23C4B7DD0(v1, off_284F133D0);
  sub_23C4B130C((v1 + 551));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4B7DD0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[7];
  a1[304] = a2[8];
  v5 = a1[475];
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 473));
  }

  v7 = a1[472];
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 470));
  }

  v8 = a1[469];
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 467));
  }

  v9 = a1[466];
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 464));
  }

  v10 = a1[463];
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 461));
  }

  v11 = a1[460];
  if (v11 != -8192 && v11 != -4096 && v11)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 458));
  }

  v12 = a1[456];
  if (v12 != -8192 && v12 != -4096 && v12)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 454));
  }

  v13 = a1[453];
  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 451));
  }

  v14 = a1[450];
  if (v14 != -8192 && v14 != -4096 && v14)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 448));
  }

  v15 = a1[447];
  if (v15 != -8192 && v15 != -4096 && v15)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 445));
  }

  v16 = a1[444];
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 442));
  }

  for (i = 0; i != -32; i -= 4)
  {
    v18 = a1[i + 440];
    if (v18 != -8192 && v18 != -4096 && v18 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[i + 438]);
    }
  }

  for (j = 0; j != -32; j -= 4)
  {
    v21 = a1[j + 408];
    if (v21 != -8192 && v21 != -4096 && v21 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[j + 406]);
    }
  }

  return sub_23C4FF150(a1, a2 + 2);
}

uint64_t sub_23C4B81B0(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F13140;
  v1[551] = &unk_284F13368;
  v1[304] = &unk_284F132F0;
  sub_23C4B60E4((v1 + 484));
  sub_23C4B7DD0(v1, off_284F133D0);

  return sub_23C4B130C((v1 + 551));
}

void sub_23C4B8270(void *a1)
{
  v1 = a1 - 304;
  *(a1 - 304) = &unk_284F13140;
  v2 = a1 + 247;
  a1[247] = &unk_284F13368;
  *a1 = &unk_284F132F0;
  sub_23C4B60E4((a1 + 180));
  sub_23C4B7DD0(v1, off_284F133D0);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4B832C(void *a1)
{
  v1 = a1 - 304;
  *(a1 - 304) = &unk_284F13140;
  v2 = a1 + 247;
  a1[247] = &unk_284F13368;
  *a1 = &unk_284F132F0;
  sub_23C4B60E4((a1 + 180));
  sub_23C4B7DD0(v1, off_284F133D0);

  return sub_23C4B130C(v2);
}

uint64_t sub_23C4B83E4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + *(*a1 - 24) + 320);
  v3 = v2 + 24;
  v4 = *(v2 + 32);
  if (v4 == v2 + 24)
  {
    v6 = 0;
    v30 = 0;
    v29 = 0;
    goto LABEL_62;
  }

  v43 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = v4 - 56;
    if (!v4)
    {
      v7 = 0;
    }

    v8 = v7 + 72;
    v9 = *(v7 + 80);
    if (v9 == v7 + 72)
    {
      v11 = 0;
    }

    else
    {
      do
      {
        v10 = v9 - 24;
        if (!v9)
        {
          v10 = 0;
        }

        v11 = *(v10 + 48);
        if (v11 != v10 + 40)
        {
          break;
        }

        v9 = *(v9 + 8);
      }

      while (v9 != v8);
    }

    while (v9 != v8)
    {
      if (v11)
      {
        v12 = v11 - 24;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v12 + 16);
      if (v11 && v13 == 61)
      {
        v14 = **(v11 - 56);
        v15 = *(v14 + 8);
        if ((v15 & 0xFE) == 0x12)
        {
          v15 = *(**(v14 + 16) + 8);
        }

        v16 = v15 >> 8;
        if (v16 == 1)
        {
          v5 = 1;
        }

        else if (v16 == 3)
        {
          v6 = 1;
        }
      }

      else if (v11)
      {
        if (v13 == 84)
        {
          v17 = *(v12 - 32);
          if (v17)
          {
            if (!*(v17 + 16) && *(v17 + 24) == *(v12 + 72))
            {
              Name = llvm::Value::getName(v17);
              v45 = v18;
              v19 = sub_23C4B88A0(v12);
              v20 = v12 - 32 * (*(v12 + 20) & 0x7FFFFFF);
              v21 = ((v19 - v20) & 0x1FFFFFFFE0) == 0 || *(**v20 + 8) != 15;
              if (v45 >= 0xA)
              {
                v23 = *Name == 0x6D6F74612E726961 && *(Name + 8) == 25449;
                if (v23 && llvm::StringRef::find() == -1 && !v21)
                {
                  v24 = **(v12 - 32 * (*(v12 + 20) & 0x7FFFFFF));
                  v25 = *(v24 + 8);
                  if ((v25 & 0xFE) == 0x12)
                  {
                    v25 = *(**(v24 + 16) + 8);
                  }

                  v26 = v25 >> 8;
                  if (v26 == 1)
                  {
                    LOBYTE(v43) = 1;
                    v5 = 1;
                  }

                  else if (v26 == 3)
                  {
                    LOBYTE(v43) = 1;
                    v6 = 1;
                  }
                }
              }

              sub_23C4B8970();
              Key = llvm::StringMapImpl::FindKey();
              if (Key != -1 && Key != dword_27E1F7458)
              {
                BYTE4(v43) |= *(*(qword_27E1F7450 + 8 * Key) + 8) == 3;
              }
            }
          }
        }
      }

      v11 = *(v11 + 8);
      v22 = v9 - 24;
      if (!v9)
      {
        v22 = 0;
      }

      while (v11 == v22 + 40)
      {
        v9 = *(v9 + 8);
        if (v9 == v8)
        {
          break;
        }

        v22 = v9 - 24;
        if (!v9)
        {
          v22 = 0;
        }

        v11 = *(v22 + 48);
      }
    }

    v4 = *(v4 + 8);
  }

  while (v4 != v3);
  if (v5)
  {
    v1 = a1;
    v28 = (a1 + *(*a1 - 24));
    v29 = v43;
    v30 = BYTE4(v43);
    if ((*(v28[14].__r_.__value_.__l.__size_ + 1664) & 1) == 0 && (*(a1 + 37) & 1) == 0)
    {
      v31 = "buffer writes not supported in fragment shaders";
LABEL_89:
      std::string::append(v28 + 17, v31);
      return 0;
    }

    goto LABEL_63;
  }

  v1 = a1;
  v29 = v43;
  v30 = BYTE4(v43);
  if ((v6 & 1) == 0)
  {
LABEL_62:
    if ((v30 & 1) == 0)
    {
      goto LABEL_82;
    }
  }

LABEL_63:
  if (v6)
  {
    v28 = (v1 + *(*v1 - 24));
    if ((*(v28[14].__r_.__value_.__l.__size_ + 1666) & 1) == 0)
    {
      v31 = "threadgroup memory not supported in fragment shaders";
      goto LABEL_89;
    }
  }

  if (v30)
  {
    v28 = (v1 + *(*v1 - 24));
    if ((*(v28[14].__r_.__value_.__l.__size_ + 1665) & 1) == 0)
    {
      v31 = "Texture writes not supported in fragment shaders";
      goto LABEL_89;
    }
  }

  if ((v29 & 1) != 0 && *(v1 + 2952) <= 0)
  {
    *(v1 + 2952) = 1;
  }

  *(v1 + 4400) = 2;
  Operand = llvm::NamedMDNode::getOperand(*(v1 + 48));
  v33 = *(Operand + 8);
  if (Operand - 8 * v33 + 24 != Operand)
  {
    v34 = Operand;
    v35 = 24 - 8 * v33;
    while (1)
    {
      v36 = *(v34 + v35);
      if (!*v36)
      {
        String = llvm::MDString::getString(v36);
        if (v38 == 20)
        {
          v39 = *String == 0x72665F796C726165 && *(String + 8) == 0x745F746E656D6761;
          if (v39 && *(String + 16) == 1937011557)
          {
            break;
          }
        }
      }

      v35 += 8;
      if (!v35)
      {
        goto LABEL_82;
      }
    }

    *(v1 + 4400) = 1;
  }

LABEL_82:
  if (*(v1 + 4400) == 2)
  {
    if ((*(v1 + 3843) & 1) == 0)
    {
      *(v1 + 3843) = 1;
      *(v1 + 3848) = 1;
    }

    *(v1 + 3844) = 0;
  }

  return 1;
}

uint64_t sub_23C4B88A0(llvm::CallBase *this)
{
  v2 = *(this + 16);
  if (v2 == 84)
  {
    NumSubclassExtraOperandsDynamic = 0;
  }

  else if (v2 == 39)
  {
    NumSubclassExtraOperandsDynamic = llvm::CallBase::getNumSubclassExtraOperandsDynamic(this);
  }

  else
  {
    NumSubclassExtraOperandsDynamic = 2;
  }

  if ((*(this + 5) & 0x80000000) == 0)
  {
    Descriptor = 0;
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  Descriptor = llvm::User::getDescriptor(this);
  if ((*(this + 5) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v11 = llvm::User::getDescriptor(this);
  v5 = v11 + v12;
LABEL_10:
  if (((v5 - Descriptor) & 0xFFFFFFFF0) != 0)
  {
    v6 = *(llvm::User::getDescriptor(this) + 8);
    v7 = llvm::User::getDescriptor(this);
    v9 = (*(v7 + v8 - 4) - v6);
  }

  else
  {
    v9 = 0;
  }

  return this + -32 * v9 + -32 * NumSubclassExtraOperandsDynamic - 32;
}

void sub_23C4B8970()
{
  if ((atomic_load_explicit(&qword_27E1F7470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7470))
  {
    qword_27E1F7450 = 0;
    *&dword_27E1F7458 = 0;
    qword_27E1F7460 = 0x3000000000;
    __cxa_atexit(sub_23C4B89F4, &qword_27E1F7450, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7470);
  }
}

uint64_t sub_23C4B89F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(v8, (*v8 + 49));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

llvm::ValueAsMetadata *sub_23C4B8A70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v13 = 0;
  sub_23C4B8B1C(a2, a3, &v13, &v12, &v11);
  v7 = sub_23C504F18(a1 + *(*a1 - 24), a2, &v14);
  v8 = v13;
  *(a4 + 8) = v12;
  *(a4 + 12) = v7;
  *a4 = 2;
  *(a4 + 4) = v8;
  v9 = v8 != 0;
  *(a4 + 16) = v9;
  result = sub_23C50B2E8(a1, 8u, v9, 2);
  *(a4 + 24) = result;
  return result;
}

uint64_t sub_23C4B8B1C(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t *a5)
{
  sub_23C4B8D20();
  sub_23C4B8DA4();
  result = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 16));
  *a5 = result;
  a5[1] = v11;
  if ((*(a1 + 8) & 0xFE) == 0x12)
  {
    v12 = *(**(a1 + 16) + 8);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = v12 > 6;
  if (v12 <= 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = 3;
  }

  *a4 = v14;
  *a3 = v13;
  v15 = *(a2 + 8);
  if (v15 < 4)
  {
    goto LABEL_38;
  }

  v16 = 2;
  for (i = 3; i < v15; ++i)
  {
    String = llvm::MDString::getString(*(a2 - 8 * v15 + 8 * i));
    v20 = v19;
    Key = llvm::StringMapImpl::FindKey();
    if (Key != -1 && Key != dword_27E1F7530)
    {
      result = sub_23C4B8E28(String, v20);
      *a3 = *(*result + 8);
      goto LABEL_30;
    }

    result = llvm::StringMapImpl::FindKey();
    if (result != -1 && result != dword_27E1F7558)
    {
      result = sub_23C4B8F30(String, v20);
      *a4 = *(*result + 8);
      goto LABEL_30;
    }

    if (v20 == 12)
    {
      if (*String == 0x5F6772612E726961 && *(String + 2) == 1701667182)
      {
LABEL_37:
        i = v16 + 2;
      }
    }

    else if (v20 == 17)
    {
      v24 = *String == 0x5F6772612E726961 && String[1] == 0x6D616E5F65707974;
      if (v24 && *(String + 16) == 101)
      {
        goto LABEL_37;
      }
    }

LABEL_30:
    v16 = i;
    v15 = *(a2 + 8);
  }

  v13 = *a3;
LABEL_38:
  if (v13 == 1 && *a4 != 3)
  {
    *a4 = 3;
  }

  return result;
}

void sub_23C4B8D20()
{
  if ((atomic_load_explicit(&qword_27E1F7548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7548))
  {
    qword_27E1F7528 = 0;
    *&dword_27E1F7530 = 0;
    qword_27E1F7538 = 0x1000000000;
    __cxa_atexit(sub_23C4B90B4, &qword_27E1F7528, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7548);
  }
}

void sub_23C4B8DA4()
{
  if ((atomic_load_explicit(&qword_27E1F7570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7570))
  {
    qword_27E1F7550 = 0;
    *&dword_27E1F7558 = 0;
    qword_27E1F7560 = 0x1000000000;
    __cxa_atexit(sub_23C4B9038, &qword_27E1F7550, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7570);
  }
}

uint64_t *sub_23C4B8E28(const void *a1, size_t a2)
{
  i = (qword_27E1F7528 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7538) = qword_27E1F7538 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *i = v9;
  ++dword_27E1F7534;
    ;
  }

  return i;
}

uint64_t *sub_23C4B8F30(const void *a1, size_t a2)
{
  i = (qword_27E1F7550 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7560) = qword_27E1F7560 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *i = v9;
  ++dword_27E1F755C;
    ;
  }

  return i;
}

uint64_t sub_23C4B9038(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(v8, (*v8 + 17));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4B90B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(v8, (*v8 + 17));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

llvm::ValueAsMetadata *sub_23C4B9130@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_23C504F18(a1 + *(*a1 - 24), a2, &v7);
  *a3 = 0x100000001;
  *(a3 + 8) = 3;
  *(a3 + 12) = v5;
  *(a3 + 16) = 0;
  result = sub_23C50B2E8(a1, 7u, 0, 1);
  *(a3 + 24) = result;
  return result;
}

void sub_23C4B91A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19[0] = a3;
  v19[1] = a4;
  v7 = sub_23C504F18(a1 + *(*a1 - 24), a2, v10);
  v8 = *(a1 + 3880);
  v10[0] = 1;
  v10[1] = v7;
  v11 = 0x300000001;
  v12 = v8;
  v15 = 0;
  v16 = v7 == 1;
  v17 = 0;
  if (v7 == 1)
  {
    v9 = 5;
  }

  else
  {
    v9 = 2;
  }

  v18 = v9;
  sub_23C4AE5DC(&__p, v19);
  sub_23C4B92A4(a1 + 3872, v10);
  *a5 = 0x100000001;
  *(a5 + 8) = 3;
  *(a5 + 12) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = sub_23C50B2E8(a1, 1u, v8, 1);
  if (v14 < 0)
  {
    operator delete(__p);
  }
}

__n128 sub_23C4B92A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_23C4B932C(a1, a2);
  v4 = v3;
  v5 = *a1 + (*(a1 + 8) << 6);
  v6 = *v3;
  *(v5 + 16) = *(v3 + 16);
  *v5 = v6;
  if (*(v3 + 47) < 0)
  {
    sub_23C49F988((v5 + 24), *(v3 + 24), *(v3 + 32));
  }

  else
  {
    v7 = *(v3 + 24);
    *(v5 + 40) = *(v3 + 40);
    *(v5 + 24) = v7;
  }

  result = v4[3];
  *(v5 + 48) = result;
  ++*(a1 + 8);
  return result;
}

unint64_t sub_23C4B932C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + (v2 << 6) <= a2)
    {
      sub_23C4B9398(a1, v2 + 1);
    }

    sub_23C4B9398(a1, v2 + 1);
  }

  return a2;
}

void sub_23C4B9484(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_23C4B8B1C(a2, a3, &v24 + 1, &v24, v23);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v7 = *(a2 + 32);
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_23C504F18(a1 + *(*a1 - 24), a2, v16);
  v9 = v8;
  v10 = *(a1 + 3880);
  v12 = v24;
  v11 = HIDWORD(v24);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = HIDWORD(v24);
  v16[3] = v24;
  v16[4] = v10;
  v19 = 0;
  v20 = v8 == 1;
  v21 = 0;
  if (HIDWORD(v24) == 2)
  {
    v14 = v8 == 1;
    v13 = 3;
    v15 = 6;
LABEL_12:
    if (v14)
    {
      v13 = v15;
    }

    goto LABEL_14;
  }

  if (HIDWORD(v24) == 1)
  {
    v14 = v8 == 1;
    v13 = 2;
    v15 = 5;
    goto LABEL_12;
  }

  if (HIDWORD(v24))
  {
    goto LABEL_15;
  }

  if (v8 == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

LABEL_14:
  v22 = v13;
LABEL_15:
  sub_23C4AE5DC(&__p, v23);
  sub_23C4B92A4(a1 + 3872, v16);
  *a4 = v7;
  *(a4 + 4) = v11;
  *(a4 + 8) = v12;
  *(a4 + 12) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = sub_23C50B2E8(a1, 1u, v10, v7);
  if (v18 < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_23C4B9640(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_23C510044(a1, a2, a3);
  if (*(a1 + 4400) == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 344);
    if ((v5[1667] & 1) == 0)
    {
      v8 = *(v4 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v4 + 8));
      v10 = *(v4 + 104);
      v6 = llvm::ConstantInt::get();
      (*(*v5 + 424))(v5, &v8, v6);
      if (v9)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    *(a1 + 3532) = 1;
  }

  return 1;
}

void sub_23C4B974C(uint64_t *a1)
{
  *a1 = &unk_284F13140;
  v2 = a1 + 551;
  a1[551] = &unk_284F13368;
  a1[304] = &unk_284F132F0;
  sub_23C4B60E4((a1 + 484));
  sub_23C4B7DD0(a1, off_284F133D0);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4B9810(uint64_t *a1)
{
  *a1 = &unk_284F13140;
  v2 = a1 + 551;
  a1[551] = &unk_284F13368;
  a1[304] = &unk_284F132F0;
  sub_23C4B60E4((a1 + 484));
  sub_23C4B7DD0(a1, off_284F133D0);
  sub_23C4B130C(v2);
  return a1;
}

llvm::Instruction *sub_23C4B9914(uint64_t a1)
{
  v2 = *(a1 + 344);
  v3 = *(v2 + 888);
  if (v3)
  {
    v4 = strlen(*(v2 + 888));
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_23C4A0414(a1, v3, v4, *(a1 + 144));
  v8 = 257;
  return sub_23C497A7C((a1 + 8), **(*v5 + 16), v5, 0, 0, v7);
}

uint64_t sub_23C4B9A70(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v6 = **a2;
  v7 = *(v6 + 8);
  v8 = v7 & 0xFE;
  if (*(*(a1 + 344) + 1649))
  {
    goto LABEL_6;
  }

  v9 = *(v6 + 8);
  if (v8 == 18)
  {
    v9 = *(**(v6 + 16) + 8);
  }

  if ((v9 & 0xFFFFFF00) != 0x100)
  {
LABEL_6:
    if (v8 == 18)
    {
      v7 = *(**(v6 + 16) + 8);
    }

    v10 = v7 & 0xFFFFFF00;
    v11 = *(a1 + 704);
    if (v10 == 256)
    {
      if (v11)
      {
        *(v11 + 9) = 1;
      }
    }

    else if (v11)
    {
      *(v11 + 8) = 1;
    }
  }

  else
  {
    *(a1 + 720) = 0;
  }

  if ((atomic_load_explicit(&qword_27E1F69F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F69F0))
  {
    qword_27E1F69D0 = 0;
    *&dword_27E1F69D8 = 0;
    qword_27E1F69E0 = 0x1000000000;
    __cxa_atexit(sub_23C4BAAB8, &qword_27E1F69D0, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F69F0);
  }

  if (!dword_27E1F69DC)
  {
    v12 = 0;
    v13 = 1;
    memset(&v151, 0, sizeof(v151));
    v14 = ".s";
    v134 = *".xchg.i32";
    qmemcpy(v133, ".load.i3.store.i.cmpxchg.weak.i3", sizeof(v133));
    do
    {
      v135 = v13;
      sub_23C49F8D0(&__str, off_278BBF500[v12]);
      v15 = 0;
      do
      {
        v136 = v15;
        v16 = &(&off_278BBF490)[2 * v15];
        v17 = 1;
        do
        {
          std::string::operator=(&v151, &__str);
          std::string::append(&v151, *v16);
          v18 = v17 & 1;
          if (v17)
          {
            v19 = ".u";
          }

          else
          {
            v19 = v14;
          }

          if (v17)
          {
            v20 = 12;
          }

          else
          {
            v20 = 8;
          }

          std::string::append(&v151, v19);
          std::string::append(&v151, ".i32");
          v21 = v14;
          v22 = *(v16 + v20);
          if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v151;
          }

          else
          {
            v23 = v151.__r_.__value_.__r.__words[0];
          }

          if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v151.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v151.__r_.__value_.__l.__size_;
          }

          v17 = 0;
          v25 = *sub_23C4BA9B4(v23, size);
          *(v25 + 8) = 0;
          *(v25 + 12) = v22;
          v14 = v21;
        }

        while (v18);
        v15 = v136 + 1;
      }

      while (v136 != 6);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = __str.__r_.__value_.__l.__size_;
      }

      sub_23C4ADD34(&v149, v26 + 9);
      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v149;
      }

      else
      {
        v27 = v149.__r_.__value_.__r.__words[0];
      }

      if (v26)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v27, p_str, v26);
      }

      v29 = v27 + v26;
      *v29 = v134;
      *(v29 + 4) = 50;
      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__data_);
      }

      v151 = v149;
      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v151;
      }

      else
      {
        v30 = v151.__r_.__value_.__r.__words[0];
      }

      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = SHIBYTE(v151.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v31 = v151.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BA9B4(v30, v31) + 8) = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = __str.__r_.__value_.__l.__size_;
      }

      sub_23C4ADD34(&v149, v32 + 17);
      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v149;
      }

      else
      {
        v33 = v149.__r_.__value_.__r.__words[0];
      }

      if (v32)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &__str;
        }

        else
        {
          v34 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v33, v34, v32);
      }

      v35 = v33 + v32;
      *v35 = v133[1];
      *(v35 + 8) = 50;
      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__data_);
      }

      v151 = v149;
      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v151;
      }

      else
      {
        v36 = v151.__r_.__value_.__r.__words[0];
      }

      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = SHIBYTE(v151.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v151.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BA9B4(v36, v37) + 8) = 0xD00000001;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = __str.__r_.__value_.__l.__size_;
      }

      sub_23C4ADD34(&v149, v38 + 10);
      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v149;
      }

      else
      {
        v39 = v149.__r_.__value_.__r.__words[0];
      }

      if (v38)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &__str;
        }

        else
        {
          v40 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v39, v40, v38);
      }

      *(v39->__r_.__value_.__r.__words + v38) = *(&v133[0] + 1);
      strcpy(&v39->__r_.__value_.__s.__data_[v38 + 8], "32");
      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__data_);
      }

      v151 = v149;
      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v151;
      }

      else
      {
        v41 = v151.__r_.__value_.__r.__words[0];
      }

      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = SHIBYTE(v151.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v151.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BA9B4(v41, v42) + 8) = 0xD00000003;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = __str.__r_.__value_.__l.__size_;
      }

      sub_23C4ADD34(&v149, v43 + 9);
      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v149;
      }

      else
      {
        v44 = v149.__r_.__value_.__r.__words[0];
      }

      if (v43)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &__str;
        }

        else
        {
          v45 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v44, v45, v43);
      }

      v46 = v44 + v43;
      *v46 = *&v133[0];
      *(v46 + 4) = 50;
      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__data_);
      }

      v151 = v149;
      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v151;
      }

      else
      {
        v47 = v151.__r_.__value_.__r.__words[0];
      }

      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = SHIBYTE(v151.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = v151.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BA9B4(v47, v48) + 8) = 0xD00000002;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v13 = 0;
      v12 = 1;
    }

    while ((v135 & 1) != 0);
    if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v151.__r_.__value_.__l.__data_);
    }
  }

  Key = llvm::StringMapImpl::FindKey();
  v50 = 0;
  v51 = Key;
  if (Key == -1)
  {
    v51 = dword_27E1F69D8;
  }

  v52 = *(qword_27E1F69D0 + 8 * v51);
  v53 = *(v52 + 8);
  if (v53 <= 1)
  {
    if (v53)
    {
      if (v53 == 1)
      {
        v55 = *a2;
        v54 = a2[1];
        v152 = 257;
        sub_23C497C88((a1 + 8), **(*v54 + 16), v54, 0, &v151);
        v56 = a2[4];
        v57 = v56 + 3;
        if (*(v56 + 8) >= 0x41u)
        {
          v57 = *v57;
        }

        v58 = a2[2];
        v59 = *v57;
        v60 = v59 - 2;
        v61 = v59 + 2;
        if (v60 >= 4)
        {
          v62 = 2;
        }

        else
        {
          v62 = v61;
        }

        v63 = a2[5];
        v132 = a2;
        v136 = v54;
        v135 = v62;
        v64 = *(a1 + 344);
        v143 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v144, (a1 + 8));
        v145 = *(a1 + 104);
        (*(*v64 + 64))(v64, &v143, v55, v63);
        if (v144)
        {
          llvm::MetadataTracking::untrack();
        }

        Module = llvm::BasicBlock::getModule(*(a1 + 56));
        DataLayout = llvm::Module::getDataLayout(Module);
        v151.__r_.__value_.__r.__words[0] = (sub_23C49BBFC(DataLayout, *v58) + 7) >> 3;
        LODWORD(v151.__r_.__value_.__r.__words[1]) = v67 == 1;
        llvm::TypeSize::operator unsigned long long();
        v68 = llvm::User::operator new(0x40);
        llvm::AtomicCmpXchgInst::AtomicCmpXchgInst();
        v152 = 257;
        (*(**(a1 + 88) + 16))(*(a1 + 88), v68, &v151, *(a1 + 56), *(a1 + 64));
        v69 = *(a1 + 16);
        if (v69)
        {
          v70 = *(a1 + 8);
          v71 = v70 + 16 * v69;
          do
          {
            llvm::Instruction::setMetadata();
            v70 += 16;
          }

          while (v70 != v71);
        }

        v72 = v132[6];
        if (v72 && *(v72 + 16) == 16)
        {
          v73 = *(v72 + 8);
          if (v73 > 0x40)
          {
            v74 = llvm::APInt::countLeadingZerosSlowCase((v72 + 3)) == v73;
          }

          else
          {
            v74 = v72[3] == 0;
          }

          v128 = v74;
          *(v68 + 18) = *(v68 + 18) & 0xFFFE | v128 ^ 1;
        }

        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        v152 = 257;
        v50 = sub_23C49B32C(a1 + 8, v68, &__str, 1, &v151);
        sub_23C4BA8C0((a1 + 8), v50, v136, 0);
      }

      return v50;
    }

    v92 = *a2;
    v93 = a2[2];
    v94 = a2[3];
    v95 = v93 + 3;
    if (*(v93 + 8) >= 0x41u)
    {
      v95 = *v95;
    }

    v96 = a2[1];
    v97 = *v95;
    v98 = v97 - 2;
    v99 = v97 + 2;
    if (v98 >= 4)
    {
      v100 = 2;
    }

    else
    {
      v100 = v99;
    }

    v101 = v94 + 3;
    if (*(v94 + 8) >= 0x41u)
    {
      v101 = *v101;
    }

    v102 = (*v101 - 1) < 2;
    v103 = *(a1 + 344);
    v146 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v147, (a1 + 8));
    v148 = *(a1 + 104);
    v104 = (*(*v103 + 64))(v103, &v146, v92, v94);
    if (v147)
    {
      llvm::MetadataTracking::untrack();
    }

    v105 = sub_23C4BA720((a1 + 8), *(v52 + 12), v104, v96, v100, v102);
    v50 = v105;
    v106 = a2[4];
LABEL_179:
    sub_23C4BA850(v105, v106);
    return v50;
  }

  if (v53 != 2)
  {
    if (v53 != 3)
    {
      return v50;
    }

    v75 = *a2;
    v76 = a2[2];
    v77 = a2[3];
    v78 = v76 + 3;
    if (*(v76 + 8) >= 0x41u)
    {
      v78 = *v78;
    }

    v79 = *v78;
    v80 = v79 - 2;
    v81 = v79 + 2;
    if (v80 >= 4)
    {
      v82 = 2;
    }

    else
    {
      v82 = v81;
    }

    v83 = v77 + 3;
    if (*(v77 + 8) >= 0x41u)
    {
      v83 = *v83;
    }

    v84 = a2[1];
    v85 = (*v83 - 1) < 2;
    v86 = *(*v75 + 8);
    if ((v86 & 0xFE) == 0x12)
    {
      v86 = *(**(*v75 + 16) + 8);
    }

    if ((v86 & 0xFFFFFF00) == 0x300)
    {
      v87 = sub_23C4BA8C0((a1 + 8), a2[1], *a2, 0);
      v88 = a2[4];
      if (v88 && *(v88 + 16) == 16)
      {
        v89 = v87;
        v90 = *(v88 + 8);
        if (v90 > 0x40)
        {
          v91 = llvm::APInt::countLeadingZerosSlowCase((v88 + 3)) == v90;
        }

        else
        {
          v91 = v88[3] == 0;
        }

        v130 = v91;
        v50 = 0;
        *(v89 + 18) = *(v89 + 18) & 0xFFFE | v130 ^ 1;
        return v50;
      }
    }

    else
    {
      v122 = *(a1 + 344);
      v137 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v138, (a1 + 8));
      v139 = *(a1 + 104);
      v123 = (*(*v122 + 64))(v122, &v137, v75, v77);
      if (v138)
      {
        llvm::MetadataTracking::untrack();
      }

      v124 = sub_23C4BA720((a1 + 8), 0, v123, v84, v82, v85);
      sub_23C4BA850(v124, a2[4]);
    }

    return 0;
  }

  v107 = a2[1];
  v108 = a2[2];
  v109 = *a2;
  v110 = v107 + 3;
  if (*(v107 + 8) >= 0x41u)
  {
    v110 = *v110;
  }

  v111 = *v110;
  v112 = v111 - 2;
  v113 = v111 + 2;
  if (v112 >= 4)
  {
    v114 = 2;
  }

  else
  {
    v114 = v113;
  }

  v115 = v108 + 3;
  if (*(v108 + 8) >= 0x41u)
  {
    v115 = *v115;
  }

  v116 = (*v115 - 1) < 2;
  v117 = *v109;
  v118 = *(*v109 + 8);
  if ((v118 & 0xFE) == 0x12)
  {
    v118 = *(**(v117 + 16) + 8);
  }

  if ((v118 & 0xFFFFFF00) != 0x300)
  {
    v125 = *(a1 + 344);
    v140 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v141, (a1 + 8));
    v142 = *(a1 + 104);
    v126 = (*(*v125 + 64))(v125, &v140, v109, v108);
    if (v141)
    {
      llvm::MetadataTracking::untrack();
    }

    v127 = llvm::ConstantInt::get();
    v105 = sub_23C4BA720((a1 + 8), 1, v126, v127, v114, v116);
    v50 = v105;
    v106 = a2[3];
    goto LABEL_179;
  }

  v152 = 257;
  v50 = sub_23C497C88((a1 + 8), **(v117 + 16), v109, 0, &v151);
  v119 = a2[3];
  if (v119 && *(v119 + 16) == 16)
  {
    v120 = *(v119 + 8);
    if (v120 > 0x40)
    {
      v121 = llvm::APInt::countLeadingZerosSlowCase((v119 + 3)) == v120;
    }

    else
    {
      v121 = v119[3] == 0;
    }

    v131 = v121;
    *(v50 + 18) = *(v50 + 18) & 0xFFFE | v131 ^ 1;
  }

  return v50;
}

uint64_t sub_23C4BA720(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  Module = llvm::BasicBlock::getModule(a1[6]);
  DataLayout = llvm::Module::getDataLayout(Module);
  v16 = (sub_23C49BBFC(DataLayout, *a4) + 7) >> 3;
  v17 = v10 == 1;
  llvm::TypeSize::operator unsigned long long();
  v11 = llvm::User::operator new(0x40);
  llvm::AtomicRMWInst::AtomicRMWInst();
  v18 = 257;
  (*(*a1[10] + 16))(a1[10], v11, &v16, a1[6], a1[7]);
  v12 = *(a1 + 2);
  if (v12)
  {
    v13 = *a1;
    v14 = v13 + 16 * v12;
    do
    {
      llvm::Instruction::setMetadata();
      v13 += 16;
    }

    while (v13 != v14);
  }

  return v11;
}

uint64_t sub_23C4BA850(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) == 16)
  {
    v3 = *(a2 + 32);
    if (v3 > 0x40)
    {
      v4 = llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) == v3;
    }

    else
    {
      v4 = *(a2 + 24) == 0;
    }

    v5 = v4;
    *(a1 + 18) = *(a1 + 18) & 0xFFFE | v5 ^ 1;
  }

  return a1;
}

uint64_t sub_23C4BA8C0(unsigned int **a1, llvm::Type **a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, *a2);
  }

  v8 = llvm::User::operator new(0x40);
  llvm::StoreInst::StoreInst();
  v14 = 257;
  (*(*a1[10] + 16))(a1[10], v8, v13, a1[6], a1[7]);
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = *a1;
    v11 = v10 + 16 * v9;
    do
    {
      llvm::Instruction::setMetadata();
      v10 += 16;
    }

    while (v10 != v11);
  }

  return v8;
}

uint64_t *sub_23C4BA9B4(const void *a1, size_t a2)
{
  i = (qword_27E1F69D0 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F69E0) = qword_27E1F69E0 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  v9[1] = 0;
  *i = v9;
  ++dword_27E1F69DC;
    ;
  }

  return i;
}

uint64_t sub_23C4BAAB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(v8, (*v8 + 17));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4BAB34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 4)
  {
    v10 = bswap64(*(a3 + a4 - 5) | (*(a3 + a4 - 1) << 32));
    v11 = v10 >= 0x7634663136000000;
    v12 = v10 > 0x7634663136000000;
    v13 = !v11;
    v14 = v12 - v13;
    v5 = (a1 + 8);
    v15 = *(a1 + 280);
    v37 = 257;
    v7 = sub_23C49ACF8(a1 + 8, 49, a2, v15, v36);
    if (v14)
    {
      v9 = 160;
    }

    else
    {
      v9 = 152;
    }

    if (v14)
    {
      v8 = 32;
    }

    else
    {
      v8 = 16;
    }
  }

  else
  {
    v5 = (a1 + 8);
    v6 = *(a1 + 280);
    v37 = 257;
    v7 = sub_23C49ACF8(a1 + 8, 49, a2, v6, v36);
    v8 = 32;
    v9 = 160;
  }

  v16 = llvm::UndefValue::get();
  v17 = *(a1 + 344);
  v33 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v34, v5);
  v35 = *(a1 + 104);
  v37 = 257;
  v18 = llvm::ConstantInt::get();
  v19 = sub_23C5057E8(a1 + 8, v7, v18, v36);
  v20 = (*(*v17 + 88))(v17, &v33, v19, 8, 0, v8);
  if (v34)
  {
    llvm::MetadataTracking::untrack();
  }

  v37 = 257;
  v21 = llvm::ConstantInt::get();
  v22 = sub_23C505AA8(a1 + 8, v16, v20, v21, v36);
  for (i = 0; i != 3; ++i)
  {
    v37 = 257;
    v24 = llvm::ConstantInt::get();
    v25 = sub_23C5057E8(a1 + 8, v7, v24, v36);
    v26 = *(a1 + 344);
    v30 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v31, v5);
    v32 = *(a1 + 104);
    v27 = (*(*v26 + 144))(v26, &v30, v25, 0, *(a1 + v9));
    if (v31)
    {
      llvm::MetadataTracking::untrack();
    }

    v37 = 257;
    v28 = llvm::ConstantInt::get();
    result = sub_23C505AA8(a1 + 8, v22, v27, v28, v36);
    v22 = result;
  }

  return result;
}

uint64_t sub_23C4BADFC(uint64_t a1, llvm::Type *a2)
{
  v4 = llvm::UndefValue::get();
  v26 = 257;
  v5 = llvm::ConstantInt::get();
  v6 = sub_23C5057E8(a1 + 8, a2, v5, v25);
  v7 = *(a1 + 344);
  v22 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v23, (a1 + 8));
  v24 = *(a1 + 104);
  v8 = (*(*v7 + 80))(v7, &v22, v6, 8, 0, 1);
  v26 = 257;
  v9 = llvm::ConstantInt::get();
  v10 = sub_23C505AA8(a1 + 8, v4, v8, v9, v25);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  for (i = 0; i != 3; ++i)
  {
    v26 = 257;
    v12 = llvm::ConstantInt::get();
    v13 = sub_23C5057E8(a1 + 8, a2, v12, v25);
    v14 = *(a1 + 344);
    v19 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (a1 + 8));
    v21 = *(a1 + 104);
    v15 = (*(*v14 + 136))(v14, &v19, v13, 0, *(a1 + 176));
    if (v20)
    {
      llvm::MetadataTracking::untrack();
    }

    v26 = 257;
    v16 = llvm::ConstantInt::get();
    v10 = sub_23C505AA8(a1 + 8, v10, v15, v16, v25);
  }

  v17 = *(a1 + 192);
  v26 = 257;
  return sub_23C49ACF8(a1 + 8, 49, v10, v17, v25);
}

uint64_t *sub_23C4BB01C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = a3[1];
  if (v5 == 16)
  {
    v10 = *(a1 + 232);
    v21 = 257;
    v11 = sub_23C49ACF8(a1 + 8, 49, a2, v10, v20);
    v12 = *(a1 + 344);
    v14 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
    v16 = *(a1 + 104);
    v9 = (*(*v12 + 88))(v12, &v14, v11, 16, a3[3], 32);
    if (v15)
    {
LABEL_4:
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    if (v5 != 8)
    {
      return 0;
    }

    v6 = *(a1 + 280);
    v21 = 257;
    v7 = sub_23C49ACF8(a1 + 8, 49, a2, v6, v20);
    v8 = *(a1 + 344);
    v17 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
    v19 = *(a1 + 104);
    v9 = (*(*v8 + 88))(v8, &v17, v7, 8, a3[3], 32);
    if (v18)
    {
      goto LABEL_4;
    }
  }

  if (*a3 == 16)
  {
    return sub_23C505300(a1, v9, *(a1 + 152));
  }

  return v9;
}

uint64_t sub_23C4BB1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 1);
  if (v6 == 16)
  {
    v11 = *(a1 + 344);
    v14 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
    v16 = *(a1 + 104);
    v8 = (*(*v11 + 80))(v11, &v14, a2, 16, *(a3 + 3), 1);
    if (!v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v6 == 8)
  {
    v7 = *(a1 + 344);
    v17 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
    v19 = *(a1 + 104);
    v8 = (*(*v7 + 80))(v7, &v17, a2, 8, *(a3 + 3), 1);
    if (!v18)
    {
LABEL_5:
      v9 = *(a1 + 192);
      v13 = 257;
      return sub_23C49ACF8(a1 + 8, 49, v8, v9, v12);
    }

LABEL_4:
    llvm::MetadataTracking::untrack();
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_23C4BB320(void *a1, llvm::Type *a2)
{
  v4 = *a2;
  llvm::ConstantFP::get();
  sub_23C4BB410(a1, a2);
  v10 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v5 = a1[24];
  v10 = 257;
  v6 = sub_23C4BB4D4((a1 + 1), a2, v5, v9);
  v8[16] = 257;
  sub_23C49EF30((a1 + 1), v6, v4, v8);
  v10 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Instruction *sub_23C4BB410(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.fabs");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BB4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 42, a2, a3, a4);
}

uint64_t sub_23C4BB538(uint64_t a1, llvm::Value *a2)
{
  v15 = a2;
  v4 = *(a1 + 344);
  v5 = *(v4 + 1160);
  if (v5)
  {
    v6 = strlen(*(v4 + 1160));
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_23C49EB10(a1, v5, v6, *(a1 + 192), *(a1 + 160));
  sub_23C4BB410(a1, a2);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  v14 = 257;
  v8 = sub_23C497A7C((a1 + 8), **(*v7 + 16), v7, &v15, 1, v13);
  v9 = *(a1 + 160);
  v12 = 257;
  sub_23C49EF30(a1 + 8, v8, v9, v11);
  v14 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4BB654(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_23C4BB410(a1, a3);
  llvm::ConstantFP::get();
  v21 = 257;
  FCmpHelper = llvm::IRBuilderBase::CreateFCmpHelper();
  v7 = *(a1 + 192);
  v21 = 257;
  v8 = sub_23C4BB4D4(a1 + 8, a3, v7, v20);
  v9 = llvm::ConstantInt::get();
  v21 = 257;
  v10 = sub_23C49A8E0(a1 + 8, v8, v9, v20);
  v11 = llvm::ConstantInt::get();
  v19 = 257;
  v12 = sub_23C497D84((a1 + 8), 32, v10, v11, &v18);
  v21 = 257;
  v13 = sub_23C49A8E0(a1 + 8, v12, FCmpHelper, v20);
  llvm::ConstantFP::get();
  v21 = 257;
  v14 = llvm::IRBuilderBase::CreateFCmpHelper();
  v21 = 257;
  sub_23C49A8E0(a1 + 8, v14, v13, v20);
  v15 = sub_23C4BB410(a1, a2);
  v16 = sub_23C4BB80C(a1, v15, a3);
  v21 = 257;
  sub_23C4BB8E4(a1 + 8, v16, v20);
  v19 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Instruction *sub_23C4BB80C(uint64_t a1, void *a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 152);
  if (*a2 == v6)
  {
    v8 = "llvm.agx.powr.f16";
LABEL_6:
    v7 = sub_23C49B938(a1, v8, 17, v6, v6, v6);
    goto LABEL_7;
  }

  v6 = *(a1 + 160);
  if (*a2 == v6)
  {
    v8 = "llvm.agx.powr.f32";
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v11[0] = a2;
  v11[1] = a3;
  v10[16] = 257;
  return sub_23C497A7C((a1 + 8), *(v7 + 24), v7, v11, 2, v10);
}

uint64_t sub_23C4BB8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || *(a2 + 16) > 0x14u)
  {
    v5 = llvm::UnaryOperator::Create();
    sub_23C497F98(a1, v5, *(a1 + 96));
LABEL_9:
    sub_23C49B15C(a1, v5, a3);
    return v5;
  }

  v5 = (*(**(a1 + 72) + 200))(*(a1 + 72));
  if (v5)
  {
    v6 = *(v5 + 16) >= 0x1Cu;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t sub_23C4BB9A8(uint64_t a1, uint64_t a2)
{
  v7 = 257;
  v3 = sub_23C4BB8E4(a1 + 8, a2, v6);
  v4 = sub_23C4BBA04(a1, v3);
  v7 = 257;
  return sub_23C4BB8E4(a1 + 8, v4, v6);
}

llvm::Instruction *sub_23C4BBA04(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.floor");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BBAC8(uint64_t a1, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v5 = llvm::ConstantFP::get();
  v16 = 257;
  v6 = sub_23C49EA2C(a1 + 8, a2, a2, v15);
  v14 = 257;
  v7 = sub_23C4A0EC4(a1 + 8, v4, v6, v13);
  v8 = sub_23C4BBBDC(a1, v7);
  v16 = 257;
  v9 = sub_23C4A0BD4(a1 + 8, v4, v8, v15);
  v16 = 257;
  v10 = sub_23C4BBCA0(a1 + 8, a2, v9, v15);
  v11 = (*(*a1 + 24))(a1, v10);
  v14 = 257;
  return sub_23C49EA2C(a1 + 8, v5, v11, v13);
}

llvm::Instruction *sub_23C4BBBDC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.sqrt");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BBCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = sub_23C49EBEC(a1, 21, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    sub_23C497F98(a1, v7, *(a1 + 96));
    sub_23C49B15C(a1, v7, a4);
  }

  return v7;
}

uint64_t sub_23C4BBD84(uint64_t a1, llvm::ConstantFP **a2)
{
  llvm::ConstantFP::get();
  v4 = llvm::ConstantFP::get();
  v5 = llvm::ConstantFP::get();
  v18 = 257;
  v6 = sub_23C49EA2C(a1 + 8, a2, a2, v17);
  v16 = 257;
  v7 = sub_23C4A0EC4(a1 + 8, v4, v6, v15);
  v8 = sub_23C4BBBDC(a1, v7);
  v18 = 257;
  v9 = sub_23C4A0BD4(a1 + 8, v4, a2, v17);
  v18 = 257;
  v10 = sub_23C4BBCA0(a1 + 8, v4, v8, v17);
  v18 = 257;
  sub_23C49EA2C(a1 + 8, v10, v9, v17);
  v18 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v18 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v18 = 257;
  v12 = sub_23C4BBCA0(a1 + 8, v4, Select, v17);
  v13 = (*(*a1 + 24))(a1, v12);
  v16 = 257;
  return sub_23C49EA2C(a1 + 8, v5, v13, v15);
}

void sub_23C4BBF30(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v6 = 1120;
  if (*a2 == *(a1 + 160))
  {
    v6 = 1112;
  }

  v5 = *(a1 + 344);
  v7 = *(v5 + v6);
  if (v7)
  {
    v8 = strlen(*(v5 + v6));
  }

  else
  {
    v8 = 0;
  }

  sub_23C49EB10(a1, v7, v8, v4, v4);
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  sub_23C4BB410(a1, a2);
  llvm::BasicBlock::splitBasicBlock();
  operator new();
}

uint64_t sub_23C4BC31C(unsigned int **a1, llvm::BasicBlock *a2, unsigned int a3)
{
  v4 = llvm::User::operator new(0x40);
  llvm::BranchInst::BranchInst();
  v7 = 257;
  return sub_23C49B15C(a1, v4, v6);
}

uint64_t sub_23C4BC384(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x40);
  MEMORY[0x23EED3B30](v8, a3, a4, a2, 0);
  v11 = 257;
  return sub_23C49B15C(a1, v8, v10);
}

llvm::User *sub_23C4BC404(uint64_t *a1, llvm::Type *a2, int a3, uint64_t a4)
{
  v7 = llvm::User::operator new(0x40);
  *(llvm::Instruction::Instruction() + 60) = a3;
  llvm::Value::setName();
  llvm::User::allocHungoffUses(v7);
  if (sub_23C497EEC(v7))
  {
    sub_23C497F98(a1, v7, *(a1 + 24));
  }

  (*(*a1[10] + 16))(a1[10], v7, a4, a1[6], a1[7]);
  v8 = *(a1 + 2);
  if (v8)
  {
    v9 = *a1;
    v10 = v9 + 16 * v8;
    do
    {
      llvm::Instruction::setMetadata();
      v9 += 16;
    }

    while (v9 != v10);
  }

  return v7;
}

llvm::PHINode *sub_23C4BC510(llvm::PHINode *this, uint64_t a2, uint64_t a3)
{
  v5 = this;
  v6 = *(this + 5);
  if ((v6 & 0x7FFFFFF) == *(this + 15))
  {
    this = llvm::PHINode::growOperands(this);
    v6 = *(v5 + 5);
  }

  v7 = (v6 + 1) & 0x7FFFFFF;
  *(v5 + 5) = v6 & 0xF8000000 | (v6 + 1) & 0x7FFFFFF;
  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(v5 - 1);
  }

  else
  {
    v8 = v5 - 32 * v7;
  }

  v9 = &v8[32 * (v7 - 1)];
  if (*v9)
  {
    v10 = *(v9 + 1);
    **(v9 + 2) = v10;
    if (v10)
    {
      *(v10 + 16) = *(v9 + 2);
    }
  }

  *v9 = a2;
  if (a2)
  {
    v13 = *(a2 + 8);
    v12 = (a2 + 8);
    v11 = v13;
    *(v9 + 1) = v13;
    if (v13)
    {
      *(v11 + 16) = v9 + 8;
    }

    *(v9 + 2) = v12;
    *v12 = v9;
  }

  v14 = *(v5 + 5);
  v15 = v14 & 0x7FFFFFF;
  if ((v14 & 0x40000000) != 0)
  {
    v16 = *(v5 - 1);
  }

  else
  {
    v16 = v5 - 32 * v15;
  }

  *&v16[32 * *(v5 + 15) + 8 * (v15 - 1)] = a3;
  return this;
}

void sub_23C4BC5F4(void *a1)
{
  sub_23C4BC62C(a1);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C4BC62C(void *a1)
{
  *a1 = &unk_284F13BE8;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((a1 + 61));
  llvm::IRBuilderFolder::~IRBuilderFolder((a1 + 60));
  v2 = a1[45];
  if (v2 != a1 + 47)
  {
    free(v2);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((a1 + 17));
  llvm::IRBuilderFolder::~IRBuilderFolder((a1 + 16));
  v3 = a1[1];
  if (v3 != a1 + 3)
  {
    free(v3);
  }

  return a1;
}

llvm::Instruction *sub_23C4BC6B8(uint64_t a1, uint64_t *a2, std::string::size_type a3, std::string::size_type a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  sub_23C49F8D0(&v25, "llvm.fma.");
  v9 = *(v8 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    std::to_string(&v26, *(v8 + 32));
    v10 = std::string::insert(&v26, 0, "v");
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    v23 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v23 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v23 >= 0)
    {
      v13 = HIBYTE(v23);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&v25, v12, v13);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v9 = *(v8 + 8);
  }

  v14 = v9 & 0xFE;
  v15 = v8;
  if (v14 == 18)
  {
    v15 = **(v8 + 16);
  }

  if (v15 == *(a1 + 160))
  {
    v16 = "f32";
  }

  else
  {
    v16 = "f16";
  }

  std::string::append(&v25, v16);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v25;
  }

  else
  {
    v17 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v19 = sub_23C49B858(a1, v17, size, v8, v8, v8, v8);
  v26.__r_.__value_.__r.__words[0] = a2;
  v26.__r_.__value_.__l.__size_ = a3;
  v26.__r_.__value_.__r.__words[2] = a4;
  v24 = 257;
  v20 = sub_23C497A7C((a1 + 8), *(v19 + 24), v19, &v26, 3, __p);
  llvm::Instruction::setHasAllowReassoc(v20);
  llvm::Instruction::setHasApproxFunc(v20);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return v20;
}