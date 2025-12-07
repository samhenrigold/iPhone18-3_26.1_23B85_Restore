void vp::vx::database::v1::syntax::Constraints::String::~String(vp::vx::database::v1::syntax::Constraints::String *this)
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

void vp::vx::database::v1::syntax::Constraints::Four_CC::parse_constraint(CFTypeRef *this@<X0>, _BYTE *a2@<X8>, uint64_t *a3@<X1>)
{
  v50 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[24] = 0;
  vp::xml::Node::children(v40, a3);
  v42[0] = v40;
  v42[1] = 0;
  v43 = 0;
  v44 = 0;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v38, v42, v5);
  while (1)
  {
    if (!v38)
    {
      goto LABEL_36;
    }

    if ((a2[24] & 1) == 0)
    {
      break;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v38, v6);
  }

  v7 = vp::xml::Node::content(v38, v39);
  v9 = &v7[v8];
  v10 = v7;
  if (v8)
  {
    while (*v10 == 48)
    {
      ++v10;
      if (!--v8)
      {
        v10 = v9;
        break;
      }
    }
  }

  if (v10 == v9 || *v10 - 48 >= 0xA)
  {
    if (v10 != v7)
    {
      v35 = 0x100000000;
LABEL_44:
      LODWORD(v46.__r_.__value_.__l.__data_) = v35;
      v46.__r_.__value_.__s.__data_[4] = BYTE4(v35);
      std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a2);
      vp::vx::database::v1::syntax::Constraint::Constraint<applesauce::CF::StringRef &,unsigned int &>(a2, this[1], &v46);
      a2[24] = 1;
      goto LABEL_36;
    }
  }

  else
  {
    v11 = 9;
    do
    {
      v12 = *v10;
      if ((*v10 - 58) < 0xF6u)
      {
        break;
      }

      ++v10;
      *(__p + v11) = (v12 - 48);
      v13 = v11-- != 0;
      v14 = v13;
    }

    while (v10 != v9 && v14);
    v15 = v11 + 1;
    v16 = (v11 + 1) << 32;
    v17 = *(__p + v11 + 1);
    if (v15 <= 7)
    {
      v18 = (__p + (v16 >> 30) + 4);
      v19 = &dword_27275AA34;
      do
      {
        v21 = *v18++;
        v20 = v21;
        v22 = *v19++;
        v17 += v22 * v20;
      }

      while (v18 < &v49);
    }

    v23 = v49 * *(&std::__itoa::__pow10_32 + ((0x900000000 - v16) >> 30));
    v24 = &v10[-((v23 & 0xFFFFFFFF00000000) != 0)];
    if (v24 == v9)
    {
      if (!__CFADD__(v17, v23))
      {
LABEL_43:
        v35 = (v17 + v23) | 0x100000000;
        goto LABEL_44;
      }
    }

    else
    {
      v25 = *v24 - 48;
      v26 = __CFADD__(v17, v23);
      if (v25 >= 0xA && !v26)
      {
        goto LABEL_43;
      }
    }
  }

  v27 = vp::xml::Node::content(v38, v39);
  v29 = v27;
  if (v28 != 4)
  {
    v30 = v28;
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string<std::string_view,0>(&__dst, v29, v30);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v46, "failed to convert ", &__dst);
    v32 = std::string::append(&v46, " to four character code", 0x18uLL);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v48 = v32->__r_.__value_.__r.__words[2];
    *__p = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x2743CB8B0](exception, __p);
  }

  v34 = bswap32(*v27);
  v37 = 1;
  v36 = v34;
  std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a2);
  vp::vx::database::v1::syntax::Constraint::Constraint<applesauce::CF::StringRef &,unsigned int &>(a2, this[1], &v36);
  a2[24] = 1;
LABEL_36:
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v44 == 1)
  {
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }
  }
}

void sub_2725F42D8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2725F42E0);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::database::v1::syntax::Constraint::Constraint<applesauce::CF::StringRef &,unsigned int &>(uint64_t a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  *(a1 + 8) = 2;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 16) = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void vp::vx::database::v1::syntax::Constraints::Four_CC::~Four_CC(vp::vx::database::v1::syntax::Constraints::Four_CC *this)
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

uint64_t (***vp::vx::database::v1::syntax::Constraints::constraint_parser(uint64_t (***a1)(), vp::vx::database::v1::syntax *this, char *a3))()
{
  v4 = vp::vx::database::v1::syntax::constexpr_hash(this, a3, a3);
  v5 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
  if (v4 <= 0x498395525390128)
  {
    if (v4 <= 0xBA40C0FA7EC1140CLL)
    {
      if (v4 > 0xA188FB989C5D61EELL)
      {
        v6 = 0xA954BFA7BD2E3717;
        v23 = a1 + 78;
        if (v4 != 0xB88743712476B40BLL)
        {
          v23 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
        }

        if (v4 == 0xAF698B64D2829150)
        {
          v24 = a1 + 48;
        }

        else
        {
          v24 = v23;
        }

        if (v4 == 0xA954BFA7BD2E3718)
        {
          v8 = a1 + 72;
        }

        else
        {
          v8 = v24;
        }

        v9 = 0xA188FB989C5D61EFLL;
        v10 = a1 + 23;
        v17 = 0xA2148DCD604AB5B0;
        v18 = a1 + 101;
        v19 = v4 == 0xA6F3B0A29050C694;
        v20 = a1 + 115;
      }

      else
      {
        v6 = 0x8A373B8A470C9FC0;
        v15 = a1 + 81;
        if (v4 != 0xA1292B0F929CB840)
        {
          v15 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
        }

        if (v4 == 0xA105070F8CF24955)
        {
          v16 = a1 + 30;
        }

        else
        {
          v16 = v15;
        }

        if (v4 == 0x8A373B8A470C9FC1)
        {
          v8 = a1 + 75;
        }

        else
        {
          v8 = v16;
        }

        v9 = 0x858A4692D4461309;
        v10 = a1 + 54;
        v17 = 0x8742FCB0F9A894E4;
        v18 = a1 + 93;
        v19 = v4 == 0x894C3A5A1CF75C56;
        v20 = a1 + 25;
      }
    }

    else
    {
      if (v4 > 0xDD8FEC1FD0C71E5FLL)
      {
        if (v4 > 0xE43C8B9FC8667D71)
        {
          v6 = 0xF776ACDBBFF73E8CLL;
          v13 = a1 + 35;
          if (v4 != 0xFD2BE7301BC80E57)
          {
            v13 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
          }

          if (v4 == 0xF776ACDBBFF73E8DLL)
          {
            v8 = a1 + 95;
          }

          else
          {
            v8 = v13;
          }

          v9 = 0xE43C8B9FC8667D72;
          v10 = a1 + 118;
          v11 = v4 == 0xE825CFA538F344A4;
          v12 = a1 + 106;
          goto LABEL_28;
        }

        v30 = 0xDD8FEC1FD0C71E60;
        v31 = a1 + 16;
        v32 = 0xDFDBA55A79F56227;
        v33 = a1 + 57;
        v34 = v4 == 0xE28680BB3A226F83;
        v35 = a1 + 121;
        goto LABEL_89;
      }

      v6 = 0xD090B43AF25CDA51;
      v21 = a1 + 91;
      if (v4 != 0xD1E7629FE14D09E0)
      {
        v21 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
      }

      if (v4 == 0xD0C082A69E373085)
      {
        v22 = a1 + 37;
      }

      else
      {
        v22 = v21;
      }

      if (v4 == 0xD090B43AF25CDA52)
      {
        v8 = a1 + 69;
      }

      else
      {
        v8 = v22;
      }

      v9 = 0xBA40C0FA7EC1140DLL;
      v10 = a1 + 20;
      v17 = 0xCF0341C82F47EF35;
      v18 = a1 + 87;
      v19 = v4 == 0xCF9FE0B824615421;
      v20 = a1 + 66;
    }

    goto LABEL_77;
  }

  if (v4 <= 0x5188CF25628C3D56)
  {
    if (v4 > 0x1872435F6E8C9902)
    {
      if (v4 > 0x23A8886125357B31)
      {
        v6 = 0x3FA3D4DB2C2A6CEFLL;
        v7 = a1 + 42;
        if (v4 != 0x4C04D8C1582AE129)
        {
          v7 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
        }

        if (v4 == 0x3FA3D4DB2C2A6CF0)
        {
          v8 = a1 + 97;
        }

        else
        {
          v8 = v7;
        }

        v9 = 0x23A8886125357B32;
        v10 = a1 + 103;
        v11 = v4 == 0x3ACA45B4BCE9CC5ELL;
        v12 = a1 + 109;
LABEL_28:
        if (v11)
        {
          v5 = v12;
        }

LABEL_81:
        if (v4 == v9)
        {
          v5 = v10;
        }

        if (v4 <= v6)
        {
          return v5;
        }

        else
        {
          return v8;
        }
      }

      v30 = 0x1872435F6E8C9903;
      v31 = a1 + 27;
      v32 = 0x1B11D2AEAA71A9FELL;
      v33 = a1 + 18;
      v34 = v4 == 0x1C6278F51A7C5FEELL;
      v35 = a1 + 45;
      goto LABEL_89;
    }

    v6 = 0xF6FE2AD4C8FEA89;
    v25 = a1 + 135;
    if (v4 != 0x1550918DFD1B8FE3)
    {
      v25 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
    }

    if (v4 == 0x14F74491BD896AB7)
    {
      v26 = a1 + 39;
    }

    else
    {
      v26 = v25;
    }

    if (v4 == 0xF6FE2AD4C8FEA8ALL)
    {
      v8 = a1 + 84;
    }

    else
    {
      v8 = v26;
    }

    v9 = 0x498395525390129;
    v10 = a1 + 33;
    v17 = 0xD0E0EEDDA40B0E0;
    v18 = a1 + 6;
    v19 = v4 == 0xF2B392A1FCFDB28;
    v20 = a1 + 14;
LABEL_77:
    if (v19)
    {
      v5 = v20;
    }

    if (v4 == v17)
    {
      v5 = v18;
    }

    goto LABEL_81;
  }

  if (v4 <= 0x6548E6967205FD3FLL)
  {
    v6 = 0x58DA21131A63A985;
    v27 = a1 + 126;
    if (v4 != 0x5AE60A0AA2A90ED3)
    {
      v27 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
    }

    if (v4 == 0x5A17D1B68B308519)
    {
      v28 = a1 + 60;
    }

    else
    {
      v28 = v27;
    }

    if (v4 == 0x58DA21131A63A986)
    {
      v8 = a1 + 12;
    }

    else
    {
      v8 = v28;
    }

    v9 = 0x5188CF25628C3D57;
    v10 = a1 + 51;
    v17 = 0x56E2179B430E85ACLL;
    v18 = a1 + 3;
    v19 = v4 == 0x56F706BB01EB9C7DLL;
    v20 = a1 + 123;
    goto LABEL_77;
  }

  if (v4 > 0x74E3CFF99397407ELL)
  {
    v6 = 0x7A5B0D7A15823FC2;
    v14 = a1 + 89;
    if (v4 != 0x7B69288D862CF616)
    {
      v14 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
    }

    if (v4 == 0x7A5B0D7A15823FC3)
    {
      v8 = a1 + 129;
    }

    else
    {
      v8 = v14;
    }

    v9 = 0x74E3CFF99397407FLL;
    v10 = a1 + 63;
    v11 = v4 == 0x772F3E59CBFD41C0;
    v12 = a1 + 9;
    goto LABEL_28;
  }

  v30 = 0x6548E6967205FD40;
  v31 = a1 + 112;
  v32 = 0x69B28E03A51D8C95;
  v33 = a1 + 132;
  v34 = v4 == 0x6DDA229FE0EB6F7FLL;
  v35 = a1 + 99;
LABEL_89:
  if (v34)
  {
    v5 = v35;
  }

  if (v4 == v32)
  {
    v5 = v33;
  }

  if (v4 == v30)
  {
    return v31;
  }

  else
  {
    return v5;
  }
}

void non-virtual thunk tovp::vx::database::v1::syntax::Constraints::~Constraints(vp::vx::database::v1::syntax::Constraints *this)
{
  vp::vx::database::v1::syntax::Constraints::~Constraints((this - 8));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::database::v1::syntax::Constraints::~Constraints((this - 8));
}

void vp::vx::database::v1::syntax::Constraints::~Constraints(vp::vx::database::v1::syntax::Constraints *this)
{
  *this = &unk_2881B64A0;
  *(this + 1) = &unk_2881B64D0;
  v2 = *(this + 136);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 133);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 130);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 127);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 124);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 122);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 119);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 116);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 113);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 110);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 107);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 104);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 102);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 100);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(this + 98);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(this + 96);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(this + 94);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(this + 92);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(this + 90);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(this + 88);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(this + 85);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(this + 82);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(this + 79);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(this + 76);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(this + 73);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(this + 70);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(this + 67);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(this + 64);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(this + 61);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(this + 58);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(this + 55);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(this + 52);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(this + 49);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(this + 46);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = *(this + 43);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *(this + 40);
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = *(this + 38);
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = *(this + 36);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(this + 34);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(this + 31);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(this + 28);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(this + 26);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(this + 24);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(this + 21);
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(this + 19);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(this + 17);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(this + 15);
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = *(this + 13);
  if (v49)
  {
    CFRelease(v49);
  }

  v50 = *(this + 10);
  if (v50)
  {
    CFRelease(v50);
  }

  v51 = *(this + 7);
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = *(this + 4);
  if (v52)
  {
    CFRelease(v52);
  }
}

{
  vp::vx::database::v1::syntax::Constraints::~Constraints(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::database::v1::syntax::Constraints::create_constraint(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 16);
  v6 = *a2;
  v7 = -v6;
  v8 = (a2 - v6);
  if (*v8 >= 5u && (v9 = v8[2]) != 0 && (v10 = a2 + v9 + *(a2 + v9), v11 = &v10[-*v10], *v11 >= 5u) && (v12 = *(v11 + 2)) != 0)
  {
    vp::vx::database::v1::runtime::String_Pool::intern(&v22, v5, &v10[v12 + 4 + *&v10[v12]], *&v10[v12 + *&v10[v12]]);
    v13 = v22;
    v19 = v22;
    v7 = -*a2;
  }

  else
  {
    v13 = 0;
    v19 = 0;
  }

  v14 = a2 + v7;
  v15 = *(a2 + v7);
  if (v15 <= 6)
  {
    LODWORD(v16) = 0;
LABEL_14:
    v18 = 0;
    v21 = 0;
    goto LABEL_15;
  }

  v16 = *(v14 + 3);
  if (*(v14 + 3))
  {
    LODWORD(v16) = *(a2 + v16);
  }

  v20 = v16;
  if (v15 < 9)
  {
    goto LABEL_14;
  }

  v17 = *(v14 + 4);
  if (!v17)
  {
    goto LABEL_14;
  }

  vp::vx::database::v1::fbs::CreatePropertyList(&v21, v5, (a2 + v17 + *(a2 + v17)));
  v13 = v19;
  LODWORD(v16) = v20;
  v18 = v21;
LABEL_15:
  *a3 = v13;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18;
  *(a3 + 24) = 1;
}

uint64_t vp::vx::database::v1::syntax::Constraints::Boolean::Boolean(uint64_t a1, const void *a2, char a3)
{
  *a1 = &unk_2881B5198;
  if (a2)
  {
    CFRetain(a2);
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  return a1;
}

void *vp::vx::database::v1::syntax::Constraints::Number::Number(void *a1, const void *a2)
{
  *a1 = &unk_2881B51C0;
  if (a2)
  {
    CFRetain(a2);
  }

  a1[1] = a2;
  return a1;
}

void *vp::vx::database::v1::syntax::Constraints::String::String(void *a1, CFTypeRef cf, uint64_t a3)
{
  *a1 = &unk_2881B51E8;
  if (cf)
  {
    CFRetain(cf);
  }

  a1[1] = cf;
  a1[2] = a3;
  return a1;
}

void *vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(void *a1, const void *a2)
{
  *a1 = &unk_2881B5210;
  if (a2)
  {
    CFRetain(a2);
  }

  a1[1] = a2;
  return a1;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<vp::vx::Chat_Flavor>(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

void std::vector<vp::vx::data_flow::State_Listener>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        vp::vx::data_flow::State_Listener::~State_Listener((v4 - 32));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::~__hash_table(uint64_t *a1)
{
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::pmr::polymorphic_allocator<std::__hash_node<applesauce::CF::StringRef,void *>>::destroy[abi:ne200100]<applesauce::CF::StringRef>(*(v2 + 16));
      std::allocator_traits<vp::Allocator<std::__hash_node<applesauce::CF::StringRef,void *>>>::deallocate[abi:ne200100](a1[4], v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<applesauce::CF::StringRef,void *> *> *>>::deallocate[abi:ne200100](a1[2], v4, a1[1]);
  }

  return a1;
}

void std::pmr::polymorphic_allocator<std::__hash_node<applesauce::CF::StringRef,void *>>::destroy[abi:ne200100]<applesauce::CF::StringRef>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void vp::vx::data_flow::State_Listener::~State_Listener(vp::vx::data_flow::State_Listener *this)
{
  if (*(this + 1))
  {
    v2 = *(this + 6);
    if (v2)
    {
      vp::vx::data_flow::State<void>::unregister_listener(this, v2);
      *(this + 6) = 0;
    }
  }

  vp::vx::data_flow::State<void>::~State(this);
}

void std::__shared_ptr_emplace<vp::vx::Control_Center_Manager_Impl>::__on_zero_shared(uint64_t a1)
{
  for (i = *(a1 + 472); i; i = *i)
  {
    v3 = *(a1 + 40);
    v4 = i[2];
    if (v4)
    {
      CFRetain(i[2]);
    }

    cf = v4;
    (*(*v3 + 56))(v3, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v10 = (a1 + 504);
  std::vector<vp::vx::data_flow::State_Listener>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::~__hash_table((a1 + 448));
  v5 = *(a1 + 440);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  vp::cf::Notification_Listener::~Notification_Listener((a1 + 400));
  vp::cf::Notification_Listener::~Notification_Listener((a1 + 368));
  std::recursive_mutex::~recursive_mutex((a1 + 304));
  vp::vx::data_flow::State<void>::~State((a1 + 280));
  vp::vx::data_flow::State<void>::~State((a1 + 256));
  vp::vx::data_flow::State<void>::~State((a1 + 232));
  vp::vx::data_flow::State<void>::~State((a1 + 208));
  vp::vx::data_flow::State<void>::~State((a1 + 184));
  vp::vx::data_flow::State<void>::~State((a1 + 160));
  vp::vx::data_flow::State<void>::~State((a1 + 136));
  vp::vx::data_flow::State<void>::~State((a1 + 112));
  vp::vx::data_flow::State<void>::~State((a1 + 88));
  vp::vx::data_flow::State<void>::~State((a1 + 64));
  v6 = *(a1 + 56);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void std::__shared_ptr_emplace<vp::vx::Control_Center_Manager_Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B5A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_app_bundle_id(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_app_bundle_id(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>,void ()(applesauce::CF::StringRef const&)>::operator()(vp *a1, CFTypeRef *a2)
{
  v2 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*a2)
  {
    a1 = CFRetain(*a2);
  }

  v4 = *(v2 + 1);
  log = vp::get_log(a1);
  if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  log_context_info = vp::get_log_context_info(v17, v4, "vp::vx::Control_Center_Manager]", 30);
  v7 = v18;
  v8 = v18;
  v9 = v17[1];
  v10 = vp::get_log(log_context_info);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v8 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    if (v8 >= 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = v17[0];
    }

    if (v11)
    {
      v13 = " ";
    }

    else
    {
      v13 = "";
    }

    if (v3)
    {
      applesauce::CF::convert_to<std::string,0>(__p, v3);
      if (v16 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315650;
      v20 = v12;
      v21 = 2080;
      v22 = v13;
      v23 = 2080;
      v24 = v14;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%s%sapplication bundle ID is %s", buf, 0x20u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136315650;
      v20 = v12;
      v21 = 2080;
      v22 = v13;
      v23 = 2080;
      v24 = "null";
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%s%sapplication bundle ID is %s", buf, 0x20u);
    }

    LOBYTE(v8) = v18;
  }

  if ((v8 & 0x80) != 0)
  {
    operator delete(v17[0]);
    if (!v3)
    {
      return;
    }
  }

  else
  {
LABEL_23:
    if (!v3)
    {
      return;
    }
  }

  CFRelease(v3);
}

void sub_2725F58D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_app_bundle_id(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_app_bundle_id(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5AD8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_bypass(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_bypass(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(BOOL const&)>::operator()(vp *a1, unsigned __int8 *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 1);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v3, "vp::vx::Control_Center_Manager]", 30);
    v6 = v15;
    v7 = v15;
    v8 = __p[1];
    v9 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v7 >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      v11 = __p[0];
      if (v7 >= 0)
      {
        v11 = __p;
      }

      if (v10)
      {
        v12 = " ";
      }

      else
      {
        v12 = "";
      }

      *buf = 136315650;
      v17 = v11;
      v18 = 2080;
      v19 = v12;
      if (v2)
      {
        v13 = "is";
      }

      else
      {
        v13 = "is not";
      }

      v20 = 2080;
      v21 = v13;
      _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEFAULT, "%s%svoice processing %s bypassed", buf, 0x20u);
      LOBYTE(v7) = v15;
    }

    if ((v7 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_bypass(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_bypass(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5B20;
  a2[1] = v2;
  return result;
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_media_handoff(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_media_handoff(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(BOOL const&)>::operator()(vp *a1, unsigned __int8 *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 1);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v3, "vp::vx::Control_Center_Manager]", 30);
    v6 = v15;
    v7 = v15;
    v8 = __p[1];
    v9 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v7 >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      v11 = __p[0];
      if (v7 >= 0)
      {
        v11 = __p;
      }

      if (v10)
      {
        v12 = " ";
      }

      else
      {
        v12 = "";
      }

      *buf = 136315650;
      v17 = v11;
      v18 = 2080;
      v19 = v12;
      if (v2)
      {
        v13 = "true";
      }

      else
      {
        v13 = "false";
      }

      v20 = 2080;
      v21 = v13;
      _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEFAULT, "%s%smedia handoff enabled: %s", buf, 0x20u);
      LOBYTE(v7) = v15;
    }

    if ((v7 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_media_handoff(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_media_handoff(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5B68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::compare_value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 16);
  if (v3 != *(*a3 + 16))
  {
    return 0;
  }

  v4 = *(*a2 + 8);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v6 = *(*a3 + 8);
  v10 = *(*a2 + 8);
  v8 = v6;
  v9 = v4 + 4 * v3;
  return boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v10, &v9, &v8);
}

BOOL boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(_DWORD **a1, void *a2, void *a3)
{
  while (1)
  {
    v3 = *a1;
    if (*a1 == *a2)
    {
      break;
    }

    if (!v3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (!*a3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v4 = *v3 == **a3;
    v5 = v4;
    if (!v4)
    {
      return v5;
    }

    *a1 = v3 + 1;
    if (!*a3)
    {
      __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
    }

    *a3 += 4;
  }

  return 1;
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::destroy_value(uint64_t a1, uint64_t a2)
{
  result = *a2;
  if (*(*a2 + 24))
  {
    return boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(result, result[1]);
  }

  return result;
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::move_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *(v3 + 8) = v3 + 32;
  *(v3 + 16) = xmmword_2727565D0;
  return boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(v3, v4);
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::copy_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *a2 + 32;
  *v3 = **a3;
  *(v3 + 8) = v5;
  *(v3 + 16) = xmmword_2727565D0;
  v6 = v4[1];
  v7 = v4[2];
  v11 = v6;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v10 = &v6[4 * v7];
  return boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(v3, &v11, &v10);
}

void sub_2725F616C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 40, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5BB0;
  std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5BB0;
  std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void sub_2725F6620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void *std::end[abi:ne200100]<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  if (!a2 && a3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  *result = a2 + 4 * a3;
  return result;
}

unsigned __int8 *_ZNSt3__19transformB8ne200100IN5boost9container12vec_iteratorIPN2vp2vx11Chat_FlavorELb1EEENS_20back_insert_iteratorIN8nlohmann10basic_jsonINS_3mapENS_6vectorENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbxydSH_NSA_14adl_serializerENSD_IhNSH_IhEEEEEEEEPDoFNS_17basic_string_viewIcSG_EES6_EEET0_T_SU_ST_T1_(unsigned int **a1, unsigned int **a2, unsigned __int8 *a3)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (v3)
    {
      vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(*v3);
      operator new();
    }

    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return a3;
}

char *vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::Chat_Flavor)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

char *vp::detail::reflect_value_name<(vp::vx::Chat_Flavor)0,128ul>(int a1)
{
  result = "vp::vx::Chat_Flavor::Standard]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Chat_Flavor::Wide_Spectrum]";
      break;
    case 2:
      result = "vp::vx::Chat_Flavor::Voice_Isolation]";
      break;
    case 3:
      result = "(vp::vx::Chat_Flavor)3]";
      break;
    case 4:
      result = "(vp::vx::Chat_Flavor)4]";
      break;
    case 5:
      result = "(vp::vx::Chat_Flavor)5]";
      break;
    case 6:
      result = "(vp::vx::Chat_Flavor)6]";
      break;
    case 7:
      result = "(vp::vx::Chat_Flavor)7]";
      break;
    case 8:
      result = "(vp::vx::Chat_Flavor)8]";
      break;
    case 9:
      result = "(vp::vx::Chat_Flavor)9]";
      break;
    case 10:
      result = "(vp::vx::Chat_Flavor)10]";
      break;
    case 11:
      result = "(vp::vx::Chat_Flavor)11]";
      break;
    case 12:
      result = "(vp::vx::Chat_Flavor)12]";
      break;
    case 13:
      result = "(vp::vx::Chat_Flavor)13]";
      break;
    case 14:
      result = "(vp::vx::Chat_Flavor)14]";
      break;
    case 15:
      result = "(vp::vx::Chat_Flavor)15]";
      break;
    case 16:
      result = "(vp::vx::Chat_Flavor)16]";
      break;
    case 17:
      result = "(vp::vx::Chat_Flavor)17]";
      break;
    case 18:
      result = "(vp::vx::Chat_Flavor)18]";
      break;
    case 19:
      result = "(vp::vx::Chat_Flavor)19]";
      break;
    case 20:
      result = "(vp::vx::Chat_Flavor)20]";
      break;
    case 21:
      result = "(vp::vx::Chat_Flavor)21]";
      break;
    case 22:
      result = "(vp::vx::Chat_Flavor)22]";
      break;
    case 23:
      result = "(vp::vx::Chat_Flavor)23]";
      break;
    case 24:
      result = "(vp::vx::Chat_Flavor)24]";
      break;
    case 25:
      result = "(vp::vx::Chat_Flavor)25]";
      break;
    case 26:
      result = "(vp::vx::Chat_Flavor)26]";
      break;
    case 27:
      result = "(vp::vx::Chat_Flavor)27]";
      break;
    case 28:
      result = "(vp::vx::Chat_Flavor)28]";
      break;
    case 29:
      result = "(vp::vx::Chat_Flavor)29]";
      break;
    case 30:
      result = "(vp::vx::Chat_Flavor)30]";
      break;
    case 31:
      result = "(vp::vx::Chat_Flavor)31]";
      break;
    case 32:
      result = "(vp::vx::Chat_Flavor)32]";
      break;
    case 33:
      result = "(vp::vx::Chat_Flavor)33]";
      break;
    case 34:
      result = "(vp::vx::Chat_Flavor)34]";
      break;
    case 35:
      result = "(vp::vx::Chat_Flavor)35]";
      break;
    case 36:
      result = "(vp::vx::Chat_Flavor)36]";
      break;
    case 37:
      result = "(vp::vx::Chat_Flavor)37]";
      break;
    case 38:
      result = "(vp::vx::Chat_Flavor)38]";
      break;
    case 39:
      result = "(vp::vx::Chat_Flavor)39]";
      break;
    case 40:
      result = "(vp::vx::Chat_Flavor)40]";
      break;
    case 41:
      result = "(vp::vx::Chat_Flavor)41]";
      break;
    case 42:
      result = "(vp::vx::Chat_Flavor)42]";
      break;
    case 43:
      result = "(vp::vx::Chat_Flavor)43]";
      break;
    case 44:
      result = "(vp::vx::Chat_Flavor)44]";
      break;
    case 45:
      result = "(vp::vx::Chat_Flavor)45]";
      break;
    case 46:
      result = "(vp::vx::Chat_Flavor)46]";
      break;
    case 47:
      result = "(vp::vx::Chat_Flavor)47]";
      break;
    case 48:
      result = "(vp::vx::Chat_Flavor)48]";
      break;
    case 49:
      result = "(vp::vx::Chat_Flavor)49]";
      break;
    case 50:
      result = "(vp::vx::Chat_Flavor)50]";
      break;
    case 51:
      result = "(vp::vx::Chat_Flavor)51]";
      break;
    case 52:
      result = "(vp::vx::Chat_Flavor)52]";
      break;
    case 53:
      result = "(vp::vx::Chat_Flavor)53]";
      break;
    case 54:
      result = "(vp::vx::Chat_Flavor)54]";
      break;
    case 55:
      result = "(vp::vx::Chat_Flavor)55]";
      break;
    case 56:
      result = "(vp::vx::Chat_Flavor)56]";
      break;
    case 57:
      result = "(vp::vx::Chat_Flavor)57]";
      break;
    case 58:
      result = "(vp::vx::Chat_Flavor)58]";
      break;
    case 59:
      result = "(vp::vx::Chat_Flavor)59]";
      break;
    case 60:
      result = "(vp::vx::Chat_Flavor)60]";
      break;
    case 61:
      result = "(vp::vx::Chat_Flavor)61]";
      break;
    case 62:
      result = "(vp::vx::Chat_Flavor)62]";
      break;
    case 63:
      result = "(vp::vx::Chat_Flavor)63]";
      break;
    case 64:
      result = "(vp::vx::Chat_Flavor)64]";
      break;
    case 65:
      result = "(vp::vx::Chat_Flavor)65]";
      break;
    case 66:
      result = "(vp::vx::Chat_Flavor)66]";
      break;
    case 67:
      result = "(vp::vx::Chat_Flavor)67]";
      break;
    case 68:
      result = "(vp::vx::Chat_Flavor)68]";
      break;
    case 69:
      result = "(vp::vx::Chat_Flavor)69]";
      break;
    case 70:
      result = "(vp::vx::Chat_Flavor)70]";
      break;
    case 71:
      result = "(vp::vx::Chat_Flavor)71]";
      break;
    case 72:
      result = "(vp::vx::Chat_Flavor)72]";
      break;
    case 73:
      result = "(vp::vx::Chat_Flavor)73]";
      break;
    case 74:
      result = "(vp::vx::Chat_Flavor)74]";
      break;
    case 75:
      result = "(vp::vx::Chat_Flavor)75]";
      break;
    case 76:
      result = "(vp::vx::Chat_Flavor)76]";
      break;
    case 77:
      result = "(vp::vx::Chat_Flavor)77]";
      break;
    case 78:
      result = "(vp::vx::Chat_Flavor)78]";
      break;
    case 79:
      result = "(vp::vx::Chat_Flavor)79]";
      break;
    case 80:
      result = "(vp::vx::Chat_Flavor)80]";
      break;
    case 81:
      result = "(vp::vx::Chat_Flavor)81]";
      break;
    case 82:
      result = "(vp::vx::Chat_Flavor)82]";
      break;
    case 83:
      result = "(vp::vx::Chat_Flavor)83]";
      break;
    case 84:
      result = "(vp::vx::Chat_Flavor)84]";
      break;
    case 85:
      result = "(vp::vx::Chat_Flavor)85]";
      break;
    case 86:
      result = "(vp::vx::Chat_Flavor)86]";
      break;
    case 87:
      result = "(vp::vx::Chat_Flavor)87]";
      break;
    case 88:
      result = "(vp::vx::Chat_Flavor)88]";
      break;
    case 89:
      result = "(vp::vx::Chat_Flavor)89]";
      break;
    case 90:
      result = "(vp::vx::Chat_Flavor)90]";
      break;
    case 91:
      result = "(vp::vx::Chat_Flavor)91]";
      break;
    case 92:
      result = "(vp::vx::Chat_Flavor)92]";
      break;
    case 93:
      result = "(vp::vx::Chat_Flavor)93]";
      break;
    case 94:
      result = "(vp::vx::Chat_Flavor)94]";
      break;
    case 95:
      result = "(vp::vx::Chat_Flavor)95]";
      break;
    case 96:
      result = "(vp::vx::Chat_Flavor)96]";
      break;
    case 97:
      result = "(vp::vx::Chat_Flavor)97]";
      break;
    case 98:
      result = "(vp::vx::Chat_Flavor)98]";
      break;
    case 99:
      result = "(vp::vx::Chat_Flavor)99]";
      break;
    case 100:
      result = "(vp::vx::Chat_Flavor)100]";
      break;
    case 101:
      result = "(vp::vx::Chat_Flavor)101]";
      break;
    case 102:
      result = "(vp::vx::Chat_Flavor)102]";
      break;
    case 103:
      result = "(vp::vx::Chat_Flavor)103]";
      break;
    case 104:
      result = "(vp::vx::Chat_Flavor)104]";
      break;
    case 105:
      result = "(vp::vx::Chat_Flavor)105]";
      break;
    case 106:
      result = "(vp::vx::Chat_Flavor)106]";
      break;
    case 107:
      result = "(vp::vx::Chat_Flavor)107]";
      break;
    case 108:
      result = "(vp::vx::Chat_Flavor)108]";
      break;
    case 109:
      result = "(vp::vx::Chat_Flavor)109]";
      break;
    case 110:
      result = "(vp::vx::Chat_Flavor)110]";
      break;
    case 111:
      result = "(vp::vx::Chat_Flavor)111]";
      break;
    case 112:
      result = "(vp::vx::Chat_Flavor)112]";
      break;
    case 113:
      result = "(vp::vx::Chat_Flavor)113]";
      break;
    case 114:
      result = "(vp::vx::Chat_Flavor)114]";
      break;
    case 115:
      result = "(vp::vx::Chat_Flavor)115]";
      break;
    case 116:
      result = "(vp::vx::Chat_Flavor)116]";
      break;
    case 117:
      result = "(vp::vx::Chat_Flavor)117]";
      break;
    case 118:
      result = "(vp::vx::Chat_Flavor)118]";
      break;
    case 119:
      result = "(vp::vx::Chat_Flavor)119]";
      break;
    case 120:
      result = "(vp::vx::Chat_Flavor)120]";
      break;
    case 121:
      result = "(vp::vx::Chat_Flavor)121]";
      break;
    case 122:
      result = "(vp::vx::Chat_Flavor)122]";
      break;
    case 123:
      result = "(vp::vx::Chat_Flavor)123]";
      break;
    case 124:
      result = "(vp::vx::Chat_Flavor)124]";
      break;
    case 125:
      result = "(vp::vx::Chat_Flavor)125]";
      break;
    case 126:
      result = "(vp::vx::Chat_Flavor)126]";
      break;
    case 127:
      result = "(vp::vx::Chat_Flavor)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Chat_Flavor)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_hidden_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_hidden_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0>,void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5BF8;
  a2[1] = v2;
  return result;
}

void sub_2725F71AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_supported_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_supported_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0>,void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5C40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
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

void std::__function::__func<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5C88;
  std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5C88;
  std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_ideal_mic_mode(vp::vx::data_flow::State<vp::vx::Chat_Flavor>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_ideal_mic_mode(vp::vx::data_flow::State<vp::vx::Chat_Flavor>)::$_0>,void ()(vp::vx::Chat_Flavor const&)>::operator()(vp *a1, int *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 1);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(v17, v3, "vp::vx::Control_Center_Manager]", 30);
    v6 = v18;
    if ((v18 & 0x80u) == 0)
    {
      v7 = v18;
    }

    else
    {
      v7 = v17[1];
    }

    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 >= 0)
      {
        v9 = v17;
      }

      else
      {
        v9 = v17[0];
      }

      v10 = vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(v2);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      v16 = v11;
      if (v11)
      {
        memmove(&__p, v10, v11);
      }

      *(&__p + v12) = 0;
      v13 = " ";
      if (!v7)
      {
        v13 = "";
      }

      *buf = 136315650;
      p_p = &__p;
      if (v16 < 0)
      {
        p_p = __p;
      }

      v20 = v9;
      v21 = 2080;
      v22 = v13;
      v23 = 2080;
      v24 = p_p;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEFAULT, "%s%sideal mic mode is %s", buf, 0x20u);
      if (v16 < 0)
      {
        operator delete(__p);
      }

      LOBYTE(v6) = v18;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(v17[0]);
    }
  }
}

void sub_2725F7828(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_ideal_mic_mode(vp::vx::data_flow::State<vp::vx::Chat_Flavor>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_ideal_mic_mode(vp::vx::data_flow::State<vp::vx::Chat_Flavor>)::$_0>,void ()(vp::vx::Chat_Flavor const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5CD0;
  a2[1] = v2;
  return result;
}

uint64_t std::vector<vp::vx::data_flow::State_Listener>::__emplace_back_slow_path<vp::vx::data_flow::State_Listener>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v7 + 24) = v8;
  v9 = 32 * v2 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = 32 * v2 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = *(v13 + 8);
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v15 = *(v13 + 6);
      *(v13 + 6) = 0;
      *(v14 + 24) = v15;
      v13 = (v13 + 32);
      v14 += 32;
    }

    while (v13 != v11);
    do
    {
      vp::vx::data_flow::State_Listener::~State_Listener(v10);
      v10 = (v16 + 32);
    }

    while (v10 != v11);
  }

  v17 = *a1;
  *a1 = v12;
  *(a1 + 1) = v9;
  if (v17)
  {
    operator delete(v17);
  }

  return v9;
}

int *vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::create_listener(uint64_t a1, int *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  vp::vx::data_flow::State<void>::State(v6, a2);
  vp::vx::data_flow::State<void>::State(a1, v6);
  *(a1 + 24) = 0;
  if (*(a1 + 8))
  {
    std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::__value_func[abi:ne200100](v7, a3);
    std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::__value_func[abi:ne200100](v8, v7);
    v9 = 0;
    operator new();
  }

  return vp::vx::data_flow::State<void>::~State(v6);
}

void sub_2725F7B38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::compare_value(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  v3 = *a2;
  v4 = *a3;
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**a2, *a3))
  {
    return 0;
  }

  v5 = v3[3];
  if (v5 != v4[3])
  {
    return 0;
  }

  v6 = v3[2];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v4[2];
  v11 = v6 + v5;
  v12 = v6;
  v10 = v8;
  return boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v12, &v11, &v10);
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 32))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((v2 + 8), *(v2 + 16));
  }

  if (*v2)
  {
    CFRelease(*v2);
  }
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::move_value(uint64_t a1, void **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *v4 = 0;
  return std::__tuple_leaf<1ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100]((v3 + 1), v4 + 1);
}

uint64_t std::__tuple_leaf<1ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100](uint64_t a1, void *a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 32;
  *(a1 + 16) = xmmword_2727565D0;
  boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(a1, a2);
  return a1;
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::copy_value(uint64_t a1, uint64_t *a2, CFTypeRef **a3)
{
  v3 = *a2;
  v4 = *a3;
  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](*a2, **a3);
  v3[1] = v4[1];
  v3[2] = v3 + 5;
  *(v3 + 3) = xmmword_2727565D0;
  v5 = v4[2];
  v6 = v4[3];
  v10 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = &v5[4 * v6];
  return boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(v3 + 8, &v10, &v9);
}

void sub_2725F7ED4(_Unwind_Exception *a1)
{
  if (*(v1 + 32))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v2, *(v1 + 16));
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::~__tuple_leaf(v1);
  _Unwind_Resume(a1);
}

void *std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

const void **std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::~__tuple_leaf(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 48, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5938;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5938;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EEclES12_(std::pmr *a1, uint64_t a2)
{
  if (*a2)
  {
    default_resource = std::pmr::get_default_resource(a1);
    v10 = &v12;
    v11 = xmmword_2727565D0;
    v4 = *(a2 + 16);
    std::end[abi:ne200100]<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(&v8, v4, *(a2 + 24));
    p_default_resource = &default_resource;
    v5 = v8;
    while (v4 != v5)
    {
      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v13 = *v4;
      std::back_insert_iterator<boost::container::small_vector<vp::services::Control_Center::Chat_Flavor,3ul,vp::Allocator<vp::services::Control_Center::Chat_Flavor>,void>>::operator=[abi:ne200100](&p_default_resource, &v13);
      ++v4;
    }

    v6 = *(a1 + 1);
    v7 = *a2;
    if (v7)
    {
      CFRetain(v7);
    }

    p_default_resource = v7;
    (*(*v6 + 80))(v6, &p_default_resource, v10, v11);
    if (p_default_resource)
    {
      CFRelease(p_default_resource);
    }

    if (*(&v11 + 1))
    {
      boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&default_resource, v10);
    }
  }
}

void sub_2725F8374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&a10, a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::back_insert_iterator<boost::container::small_vector<vp::services::Control_Center::Chat_Flavor,3ul,vp::Allocator<vp::services::Control_Center::Chat_Flavor>,void>>::operator=[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = (*(*a1 + 8) + 4 * v5);
  if (v5 == *(*a1 + 24))
  {
    boost::container::vector<vp::services::Control_Center::Chat_Flavor,boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>,vp::services::Control_Center::Chat_Flavor*,vp::services::Control_Center::Chat_Flavor>>(&v8, v4, v6, a2);
    boost::container::vec_iterator<vp::services::Control_Center::Chat_Flavor *,false>::operator*(v8);
  }

  else
  {
    *v6 = *a2;
    *(v4 + 16) = v5 + 1;
  }

  return a1;
}

void *boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

_DWORD *boost::container::vector<vp::services::Control_Center::Chat_Flavor,boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>,vp::services::Control_Center::Chat_Flavor*,vp::services::Control_Center::Chat_Flavor>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  if (v4 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x3FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  if (!(v4 >> 61))
  {
    if (v4 + 1 > 8 * v4 / 5)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = 8 * v4 / 5;
    }

    goto LABEL_16;
  }

  if (v4 >> 61 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * v4;
  }

  v12 = v4 + 1;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  v10 = v12 > v11 ? v4 + 1 : v11;
  if (v12 >> 62)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_16:
  result = (*(**a2 + 16))();
  v14 = result;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = result;
  if (v15)
  {
    v17 = result;
    if (v15 != a3)
    {
      result = memmove(result, *(a2 + 8), a3 - v15);
      v17 = v14 + a3 - v15;
    }
  }

  *v17 = *a4;
  if (a3)
  {
    v18 = &v15[4 * v16];
    if (v18 != a3)
    {
      result = memmove(v17 + 4, a3, v18 - a3);
    }
  }

  if (v15)
  {
    result = boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v19 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<vp::services::Control_Center::Chat_Flavor *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5A10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5A10;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5A10;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISD_EEvEEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_E0_JS9_SG_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SG_EEERNS4_13State_ManagerESO_S13_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EEclEOS1E_OS1F_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN10applesauce2CF9StringRefEN5boost9container12small_vectorIN2vp2vx11Chat_FlavorELm3ENS9_9AllocatorISB_EEvEEEEC2B8ne200100IJLm0ELm1EEJS5_SE_EJEJEJRKS5_RKSE_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSM_IJDpT2_EEEDpOT3_(&cf, *v6, v7);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = cf;
  cf = 0;
  std::__tuple_leaf<1ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100]((storage + 1), v11);
  if (v11[3])
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v11, v11[1]);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::~tuple(uint64_t a1)
{
  if (*(a1 + 32))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((a1 + 8), *(a1 + 16));
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN10applesauce2CF9StringRefEN5boost9container12small_vectorIN2vp2vx11Chat_FlavorELm3ENS9_9AllocatorISB_EEvEEEEC2B8ne200100IJLm0ELm1EEJS5_SE_EJEJEJRKS5_RKSE_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSM_IJDpT2_EEEDpOT3_(void *a1, const void *a2, void *a3)
{
  v5 = std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(a1, a2);
  v5[1] = *a3;
  v5[2] = v5 + 5;
  *(v5 + 3) = xmmword_2727565D0;
  v6 = a3[1];
  v7 = a3[2];
  v11 = v6;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v10 = &v6[4 * v7];
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(v5 + 8, &v11, &v10);
  return a1;
}

void sub_2725F89C4(_Unwind_Exception *a1)
{
  if (*(v1 + 32))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v2, *(v1 + 16));
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::~__tuple_leaf(v1);
  _Unwind_Resume(a1);
}

void *std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISD_EEvEEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_E0_JS9_SG_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SG_EEERNS4_13State_ManagerESO_S13_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EE7__cloneEPNS0_6__baseIS1J_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B59C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EEclES12_(std::pmr *a1, uint64_t a2)
{
  if (*a2)
  {
    default_resource = std::pmr::get_default_resource(a1);
    v10 = &v12;
    v11 = xmmword_2727565D0;
    v4 = *(a2 + 16);
    std::end[abi:ne200100]<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(&v8, v4, *(a2 + 24));
    p_default_resource = &default_resource;
    v5 = v8;
    while (v4 != v5)
    {
      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v13 = *v4;
      std::back_insert_iterator<boost::container::small_vector<vp::services::Control_Center::Chat_Flavor,3ul,vp::Allocator<vp::services::Control_Center::Chat_Flavor>,void>>::operator=[abi:ne200100](&p_default_resource, &v13);
      ++v4;
    }

    v6 = *(a1 + 1);
    v7 = *a2;
    if (v7)
    {
      CFRetain(v7);
    }

    p_default_resource = v7;
    (*(*v6 + 72))(v6, &p_default_resource, v10, v11);
    if (p_default_resource)
    {
      CFRelease(p_default_resource);
    }

    if (*(&v11 + 1))
    {
      boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&default_resource, v10);
    }
  }
}

void sub_2725F8BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&a10, a11);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5980;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5980;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5980;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISD_EEvEEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_E_JS9_SG_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SG_EEERNS4_13State_ManagerESO_S13_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EEclEOS1E_OS1F_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN10applesauce2CF9StringRefEN5boost9container12small_vectorIN2vp2vx11Chat_FlavorELm3ENS9_9AllocatorISB_EEvEEEEC2B8ne200100IJLm0ELm1EEJS5_SE_EJEJEJRKS5_RKSE_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSM_IJDpT2_EEEDpOT3_(&cf, *v6, v7);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = cf;
  cf = 0;
  std::__tuple_leaf<1ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100]((storage + 1), v11);
  if (v11[3])
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v11, v11[1]);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISD_EEvEEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_E_JS9_SG_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SG_EEERNS4_13State_ManagerESO_S13_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EE7__cloneEPNS0_6__baseIS1J_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B5888;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,BOOL>>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::compare_value(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  v3 = *a2;
  v4 = *a3;
  return applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**a2, *a3) == kCFCompareEqualTo && *(v3 + 8) == *(v4 + 8);
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::destroy_value(uint64_t a1, const void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    CFRelease(v2);
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::move_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *v4 = 0;
  *(v3 + 8) = *(v4 + 8);
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::copy_value(uint64_t a1, void **a2, CFTypeRef **a3)
{
  v3 = *a3;
  result = std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](*a2, **a3);
  *(result + 8) = *(v3 + 8);
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B57F8;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B57F8;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EEclESS_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    CFRetain(*a2);
    cf = v2;
    (*(*v4 + 64))(v4, &cf, v3);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EE7__cloneEPNS0_6__baseISW_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5840;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5840;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5840;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEbEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlRKT_bE_JS9_bEEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_bEEERNS4_13State_ManagerESH_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(&v11, *v6);
  v12 = *v8;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v9);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,BOOL>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v11;
  *(result + 8) = v12;
  return result;
}

const void **std::tuple<applesauce::CF::StringRef,BOOL>::~tuple(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEbEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlRKT_bE_JS9_bEEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_bEEERNS4_13State_ManagerESH_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B5748;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _ZZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS0_27Control_Center_Manager_Impl9configureERS1_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS0_11Chat_FlavorEN5boost9container12small_vectorISN_Lm3ENS_9AllocatorISN_EEvEEbbSN_EEEDaOS5_NS0_9data_flow16Call_ImmediatelyEDpRKNSW_5StateIT0_EEENUlRKNSt3__15tupleIJSM_SN_ST_bbSN_EEEE_D2Ev(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::compare_value(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  v3 = *a2;
  v4 = *a3;
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**a2, *a3))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 + 2) == *(v4 + 2);
  }

  if (!v5)
  {
    return 0;
  }

  v6 = v3[4];
  if (v6 != v4[4])
  {
    return 0;
  }

  v7 = v3[3];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = v4[3];
  v13 = v7 + v6;
  v14 = v7;
  v12 = v9;
  v10 = boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v14, &v13, &v12);
  result = 0;
  if (v10 && *(v3 + 56) == *(v4 + 56))
  {
    if (*(v3 + 57) == *(v4 + 57))
    {
      return *(v3 + 15) == *(v4 + 15);
    }

    return 0;
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 40))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((v2 + 16), *(v2 + 24));
  }

  if (*v2)
  {
    CFRelease(*v2);
  }
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::move_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *v4 = 0;
  *(v3 + 8) = *(v4 + 2);
  result = std::__tuple_leaf<2ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100](v3 + 16, v4 + 2);
  *(v3 + 56) = *(v4 + 56);
  *(v3 + 57) = *(v4 + 57);
  *(v3 + 60) = *(v4 + 15);
  return result;
}

uint64_t std::__tuple_leaf<2ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100](uint64_t a1, void *a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 32;
  *(a1 + 16) = xmmword_2727565D0;
  boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(a1, a2);
  return a1;
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::copy_value(uint64_t a1, void **a2, CFTypeRef **a3)
{
  v3 = *a2;
  v4 = *a3;
  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](*a2, **a3);
  *(v3 + 8) = *(v4 + 2);
  *(v3 + 16) = v4[2];
  *(v3 + 24) = v3 + 48;
  *(v3 + 32) = xmmword_2727565D0;
  v5 = v4[3];
  v6 = v4[4];
  v10 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = &v5[4 * v6];
  result = boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>((v3 + 16), &v10, &v9);
  *(v3 + 56) = *(v4 + 56);
  *(v3 + 57) = *(v4 + 57);
  *(v3 + 60) = *(v4 + 15);
  return result;
}

void sub_2725F9CF8(_Unwind_Exception *a1)
{
  if (*(v1 + 40))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v2, *(v1 + 24));
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::~__tuple_leaf(v1);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 64, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5688;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5688;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EEclES1A_(void *a1, uint64_t a2)
{
  if (*a2)
  {
    if (*(a2 + 57))
    {
      v4 = *(a2 + 60);
    }

    else if (*(a2 + 56))
    {
      v4 = 2;
    }

    else
    {
      v5 = *(a2 + 24);
      v6 = *(a2 + 32);
      if (!v5 && v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (v6)
      {
        v4 = *(a2 + 8);
        v7 = 4 * v6;
        v8 = *(a2 + 24);
        while (1)
        {
          if (!v8)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (*v8 == v4)
          {
            break;
          }

          ++v8;
          v7 -= 4;
          if (!v7)
          {
            if (*(a1[1] + 504) != 2)
            {
              goto LABEL_15;
            }

            v4 = *v5;
            break;
          }
        }
      }

      else
      {
LABEL_15:
        v4 = 0;
      }
    }

    v9 = a1[3];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = a1[2];
        if (v12)
        {
          v13 = *(v12 + 32);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 1174405120;
          block[2] = ___ZZN2vp2vx27Control_Center_Manager_Impl9configureERNS0_29Voice_Processor_State_ManagerEENKUlRKT_RKT0_RKT1_RKT2_T3_T4_E_clIN10applesauce2CF9StringRefENS0_11Chat_FlavorEN5boost9container12small_vectorISN_Lm3ENS_9AllocatorISN_EEvEEbbSN_EEDaS6_S9_SC_SF_SG_SH__block_invoke;
          block[3] = &__block_descriptor_tmp_58;
          v19 = v4;
          block[4] = v12;
          v18 = v11;
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(v13, block);
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    v14 = a1[4];
    v15 = *a2;
    if (v15)
    {
      CFRetain(v15);
    }

    cf = v15;
    (*(*v14 + 48))(v14, &cf, v4);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void ___ZZN2vp2vx27Control_Center_Manager_Impl9configureERNS0_29Voice_Processor_State_ManagerEENKUlRKT_RKT0_RKT1_RKT2_T3_T4_E_clIN10applesauce2CF9StringRefENS0_11Chat_FlavorEN5boost9container12small_vectorISN_Lm3ENS_9AllocatorISN_EEvEEbbSN_EEDaS6_S9_SC_SF_SG_SH__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = vp::vx::data_flow::State<void>::State(&__dst, (*(a1 + 32) + 256));
  default_resource = std::pmr::get_default_resource(v3);
  v25 = 0;
  v26 = 0;
  __p = default_resource;
  v20 = __dst;
  *buf = v22;
  *&buf[8] = &v20;
  *&buf[16] = &__p;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v22, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
  v5 = *vp::vx::data_flow::Value::view_storage(&__p);
  vp::vx::data_flow::Value::~Value(&__p);
  v6 = vp::vx::data_flow::State<void>::~State(&__dst);
  if (v2 != v5)
  {
    v7 = *(a1 + 32);
    log = vp::get_log(v6);
    v9 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      log_context_info = vp::get_log_context_info(&__p, v7, "vp::vx::Control_Center_Manager_Impl]", 35);
      v11 = SHIBYTE(v26);
      if (v26 >= 0)
      {
        v12 = HIBYTE(v26);
      }

      else
      {
        v12 = v25;
      }

      v13 = vp::get_log(log_context_info);
      v9 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v15 = vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(v2);
        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v17 = v16;
        if (v16 >= 0x17)
        {
          operator new();
        }

        v23 = v16;
        if (v16)
        {
          memmove(&__dst, v15, v16);
        }

        *(&__dst + v17) = 0;
        v18 = " ";
        if (!v12)
        {
          v18 = "";
        }

        *buf = 136315650;
        p_dst = &__dst;
        if (v23 < 0)
        {
          p_dst = __dst;
        }

        *&buf[4] = p_p;
        *&buf[12] = 2080;
        *&buf[14] = v18;
        *&buf[22] = 2080;
        v28 = p_dst;
        _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%s%sactive chat flavor is %s", buf, 0x20u);
        if (v23 < 0)
        {
          operator delete(__dst);
        }

        LOBYTE(v11) = HIBYTE(v26);
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    *buf = std::pmr::get_default_resource(v9);
    *&buf[8] = 0;
    *&buf[16] = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
    *vp::vx::data_flow::Value::allocate_storage(buf) = v2;
    vp::vx::data_flow::State<void>::set_value((v7 + 256), buf);
    vp::vx::data_flow::Value::~Value(buf);
  }
}

void sub_2725FA494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c63_ZTSNSt3__110shared_ptrIN2vp2vx27Control_Center_Manager_ImplEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_32c63_ZTSNSt3__110shared_ptrIN2vp2vx27Control_Center_Manager_ImplEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EE7destroyB8ne200100Ev((a1 + 8));

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EE7__cloneEPNS0_6__baseIS1E_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B56D0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EED0Ev(void *a1)
{
  *a1 = &unk_2881B56D0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EED1Ev(void *a1)
{
  *a1 = &unk_2881B56D0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISA_Lm3ENS2_9AllocatorISA_EEvEEbbSA_EEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JS9_SA_SG_bbSA_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SA_SG_bbSA_EEERNS4_13State_ManagerESO_S1B_EUlPPKNS4_5ValueEPS1J_E_NS_9allocatorIS1O_EEFvS1M_S1N_EEclEOS1M_OS1N_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(void)::s_type_id)
  {
    v10 = vp::vx::data_flow::Value::view_storage(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = v3[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v12 = vp::vx::data_flow::Value::view_storage(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v3[4];
  if (v13[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v14 = vp::vx::data_flow::Value::view_storage(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = vp::vx::data_flow::Value::view_storage(v3[5]);
  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(&cf, *v6);
  v21 = *v8;
  v22 = *v10;
  v23 = &v25;
  v24 = xmmword_2727565D0;
  v16 = v10[1];
  v17 = v10[2];
  v30 = v16;
  if (!v16 && v17)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v29 = &v16[4 * v17];
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(&v22, &v30, &v29);
  v26 = *v12;
  v27 = *v14;
  v28 = *v15;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v18);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = cf;
  cf = 0;
  *(storage + 8) = v21;
  std::__tuple_leaf<2ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100](storage + 16, &v22);
  *(storage + 56) = v26;
  *(storage + 57) = v27;
  *(storage + 60) = v28;
  if (*(&v24 + 1))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&v22, v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>::~tuple(uint64_t a1)
{
  if (*(a1 + 40))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((a1 + 16), *(a1 + 24));
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISA_Lm3ENS2_9AllocatorISA_EEvEEbbSA_EEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JS9_SA_SG_bbSA_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SA_SG_bbSA_EEERNS4_13State_ManagerESO_S1B_EUlPPKNS4_5ValueEPS1J_E_NS_9allocatorIS1O_EEFvS1M_S1N_EE7__cloneEPNS0_6__baseIS1R_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B55D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,unsigned int>>(void)::s_type_id;
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

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::compare_value(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  v3 = *a2;
  v4 = *a3;
  return applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**a2, *a3) == kCFCompareEqualTo && *(v3 + 2) == *(v4 + 2);
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::destroy_value(uint64_t a1, const void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    CFRelease(v2);
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::move_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *v4 = 0;
  *(v3 + 8) = *(v4 + 2);
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::copy_value(uint64_t a1, void **a2, CFTypeRef **a3)
{
  v3 = *a3;
  result = std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](*a2, **a3);
  *(result + 2) = *(v3 + 2);
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5518;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5518;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EEclESR_(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 8);
        if (v7)
        {
          v8 = *(v7 + 32);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 1174405120;
          block[2] = ___ZZN2vp2vx27Control_Center_Manager_Impl9configureERNS0_29Voice_Processor_State_ManagerEENKUlT_T0_E_clIN10applesauce2CF9StringRefEjEEDaS4_S5__block_invoke;
          block[3] = &__block_descriptor_tmp_41;
          block[4] = v7;
          v10 = v5;
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          CFRetain(v2);
          cf = v2;
          dispatch_async(v8, block);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    CFRelease(v2);
  }
}

void ___ZZN2vp2vx27Control_Center_Manager_Impl9configureERNS0_29Voice_Processor_State_ManagerEENKUlT_T0_E_clIN10applesauce2CF9StringRefEjEEDaS4_S5__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRetain(*(a1 + 48));
  }

  vp::vx::Control_Center_Manager_Impl::update_preferred_chat_flavor_value(v2, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v5)
  {
    CFRetain(v5);
  }

  vp::vx::Control_Center_Manager_Impl::update_automatic_mic_mode_is_enabled_value(v4, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void __destroy_helper_block_e8_32c63_ZTSNSt3__110shared_ptrIN2vp2vx27Control_Center_Manager_ImplEEE48c31_ZTSN10applesauce2CF9StringRefE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_e8_32c63_ZTSNSt3__110shared_ptrIN2vp2vx27Control_Center_Manager_ImplEEE48c31_ZTSN10applesauce2CF9StringRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 40);
  result[4] = *(a2 + 32);
  result[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    result = CFRetain(*(a2 + 48));
  }

  v2[6] = v4;
  return result;
}

void vp::vx::Control_Center_Manager_Impl::update_preferred_chat_flavor_value(uint64_t a1, const void *a2)
{
  if (a2)
  {
    CFRetain(a2);
    v4 = *(a1 + 16);
    CFRetain(a2);
  }

  else
  {
    v4 = *(a1 + 16);
  }

  cf[0] = a2;
  v5 = (*(*v4 + 24))(v4, cf);
  v6 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  cf[0] = std::pmr::get_default_resource(v6);
  cf[1] = 0;
  cf[2] = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(cf) = v5;
  vp::vx::data_flow::State<void>::set_value((a1 + 232), cf);
  vp::vx::data_flow::Value::~Value(cf);
}

void sub_2725FB318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void vp::vx::Control_Center_Manager_Impl::update_automatic_mic_mode_is_enabled_value(uint64_t a1, const void *a2)
{
  if (a2)
  {
    CFRetain(a2);
    v4 = *(a1 + 16);
    CFRetain(a2);
  }

  else
  {
    v4 = *(a1 + 16);
  }

  cf[0] = a2;
  v5 = (*(*v4 + 88))(v4, cf);
  v6 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  cf[0] = std::pmr::get_default_resource(v6);
  cf[1] = 0;
  cf[2] = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(cf) = v5;
  vp::vx::data_flow::State<void>::set_value((a1 + 136), cf);
  vp::vx::data_flow::Value::~Value(cf);
}

void sub_2725FB410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5560;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5560;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5560;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEjEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlT_T0_E_JS9_jEEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_jEEERNS4_13State_ManagerESH_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(&v11, *v6);
  v12 = *v8;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v9);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,unsigned int>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v11;
  *(result + 8) = v12;
  return result;
}

const void **std::tuple<applesauce::CF::StringRef,unsigned int>::~tuple(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEjEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlT_T0_E_JS9_jEEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_jEEERNS4_13State_ManagerESH_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B5468;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef>>(void)::s_type_id;
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

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef>>::destroy_value(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B52E8;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B52E8;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EEclESQ_(uint64_t a1, CFTypeRef *a2)
{
  cf[9] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    v28[0] = v3;
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *(a1 + 8);
        if (v7)
        {
          v8 = std::hash<applesauce::CF::StringRef>::operator()(v3);
          v9 = v8;
          v10 = *(v7 + 432);
          if (v10)
          {
            v11 = vcnt_s8(v10);
            v11.i16[0] = vaddlv_u8(v11);
            v12 = v11.u32[0];
            if (v11.u32[0] > 1uLL)
            {
              v2 = v8;
              if (v8 >= v10)
              {
                v2 = v8 % v10;
              }
            }

            else
            {
              v2 = (v10 - 1) & v8;
            }

            v13 = *(*(v7 + 424) + 8 * v2);
            if (v13)
            {
              for (i = *v13; i; i = *i)
              {
                v15 = i[1];
                if (v15 == v9)
                {
                  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(i[2], v28) == kCFCompareEqualTo)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  if (v12 > 1)
                  {
                    if (v15 >= v10)
                    {
                      v15 %= v10;
                    }
                  }

                  else
                  {
                    v15 &= v10 - 1;
                  }

                  if (v15 != v2)
                  {
                    break;
                  }
                }
              }
            }
          }

          v16 = (*(**(v7 + 456) + 16))(*(v7 + 456), 24, 8);
          *v16 = 0;
          v16[1] = v9;
          CFRetain(v3);
          v16[2] = v3;
          v17 = (*(v7 + 464) + 1);
          v18 = *(v7 + 472);
          if (!v10 || (v18 * v10) < v17)
          {
            v19 = 1;
            if (v10 >= 3)
            {
              v19 = (v10 & (v10 - 1)) != 0;
            }

            v20 = v19 | (2 * v10);
            v21 = vcvtps_u32_f32(v17 / v18);
            if (v20 <= v21)
            {
              v22 = v21;
            }

            else
            {
              v22 = v20;
            }

            std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::__rehash<true>(v7 + 424, v22);
            v10 = *(v7 + 432);
            if ((v10 & (v10 - 1)) != 0)
            {
              if (v9 >= v10)
              {
                v2 = v9 % v10;
              }

              else
              {
                v2 = v9;
              }
            }

            else
            {
              v2 = (v10 - 1) & v9;
            }
          }

          v23 = *(v7 + 424);
          v24 = *(v23 + 8 * v2);
          if (v24)
          {
            *v16 = *v24;
          }

          else
          {
            *v16 = *(v7 + 448);
            *(v7 + 448) = v16;
            *(v23 + 8 * v2) = v7 + 448;
            if (!*v16)
            {
LABEL_43:
              ++*(v7 + 464);
LABEL_44:
              CFRetain(v3);
              v28[1] = v3;
              (*(**(v7 + 16) + 32))(cf);
              v26 = cf[0];
              if (cf[0])
              {
                CFRetain(cf[0]);
              }

              v28[9] = v26;
              CFRetain(v3);
              v28[6] = v3;
              v28[7] = *v7;
              v27 = *(v7 + 8);
              v28[8] = v27;
              if (v27)
              {
                atomic_fetch_add_explicit((v27 + 16), 1uLL, memory_order_relaxed);
              }

              cf[8] = 0;
              operator new();
            }

            v25 = *(*v16 + 8);
            if ((v10 & (v10 - 1)) != 0)
            {
              if (v25 >= v10)
              {
                v25 %= v10;
              }
            }

            else
            {
              v25 &= v10 - 1;
            }

            v24 = (*(v7 + 424) + 8 * v25);
          }

          *v24 = v16;
          goto LABEL_43;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    CFRelease(v3);
  }
}

void sub_2725FC13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  std::pmr::polymorphic_allocator<std::__hash_node<applesauce::CF::StringRef,void *>>::destroy[abi:ne200100]<applesauce::CF::StringRef>(*(v10 + 16));
  std::allocator_traits<vp::Allocator<std::__hash_node<applesauce::CF::StringRef,void *>>>::deallocate[abi:ne200100](*(v11 + 456), v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  applesauce::CF::StringRef::~StringRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENUlT_E_D2Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t _ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENUlT_E0_D2Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEEclEOSC_(uint64_t a1, const __CFDictionary **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 16);
      if (v7)
      {
        (*(**(v7 + 16) + 40))(&v16);
        if (!v3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        cf[0] = 0;
        applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(&v15, v3, v16, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v8 = v15;
        if (v15)
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v15, (a1 + 8)) == kCFCompareEqualTo)
          {
            v9 = *(v7 + 32);
            cf[0] = MEMORY[0x277D85DD0];
            cf[1] = 1174405120;
            cf[2] = ___ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENKUlT_E0_clINS3_13DictionaryRefEEEDaS5__block_invoke;
            cf[3] = &__block_descriptor_tmp_33;
            cf[4] = v7;
            v13 = v6;
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v10 = *(a1 + 8);
            if (v10)
            {
              CFRetain(v10);
            }

            v14 = v10;
            dispatch_async(v9, cf);
            if (v14)
            {
              CFRelease(v14);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }
          }

          CFRelease(v8);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_2725FC4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::StringRef::~StringRef((v10 - 56));
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

void ___ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENKUlT_E0_clINS3_13DictionaryRefEEEDaS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRetain(*(a1 + 48));
  }

  vp::vx::Control_Center_Manager_Impl::update_automatic_mic_mode_is_enabled_value(v1, v2);
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_2725FC564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7destroyB8ne200100Ev((a1 + 8));

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

CFTypeRef *_ZNKSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7__cloneEPNS0_6__baseISD_EE(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B53F0;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v6 = v3[2];
  v5 = v3[3];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED0Ev(void *a1)
{
  *a1 = &unk_2881B53F0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED1Ev(void *a1)
{
  *a1 = &unk_2881B53F0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEEclEOSC_(uint64_t a1, const __CFDictionary **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 16);
      if (v7)
      {
        (*(**(v7 + 16) + 40))(&v16);
        if (!v3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        cf[0] = 0;
        applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(&v15, v3, v16, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v8 = v15;
        if (v15)
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v15, (a1 + 8)) == kCFCompareEqualTo)
          {
            v9 = *(v7 + 32);
            cf[0] = MEMORY[0x277D85DD0];
            cf[1] = 1174405120;
            cf[2] = ___ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENKUlT_E_clINS3_13DictionaryRefEEEDaS5__block_invoke;
            cf[3] = &__block_descriptor_tmp_6455;
            cf[4] = v7;
            v13 = v6;
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v10 = *(a1 + 8);
            if (v10)
            {
              CFRetain(v10);
            }

            v14 = v10;
            dispatch_async(v9, cf);
            if (v14)
            {
              CFRelease(v14);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }
          }

          CFRelease(v8);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_2725FC9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::StringRef::~StringRef((v10 - 56));
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

void ___ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENKUlT_E_clINS3_13DictionaryRefEEEDaS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRetain(*(a1 + 48));
  }

  vp::vx::Control_Center_Manager_Impl::update_preferred_chat_flavor_value(v1, v2);
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_2725FCA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7destroyB8ne200100Ev((a1 + 8));

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

CFTypeRef *_ZNKSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7__cloneEPNS0_6__baseISD_EE(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B5378;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v6 = v3[2];
  v5 = v3[3];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED0Ev(void *a1)
{
  *a1 = &unk_2881B5378;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED1Ev(void *a1)
{
  *a1 = &unk_2881B5378;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

unint64_t std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::__rehash<true>(unint64_t result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (*&v3 <= *&v4)
  {
    if (*&v3 >= *&v4)
    {
      return result;
    }

    result = vcvtps_u32_f32(*(v2 + 40) / *(v2 + 48));
    if (*&v4 < 3uLL || (v10 = vcnt_s8(v4), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v11 = 1 << -__clz(result - 1);
      if (result >= 2)
      {
        result = v11;
      }
    }

    if (*&v3 <= result)
    {
      v3 = result;
    }

    if (*&v3 >= *&v4)
    {
      return result;
    }

    if (!*&v3)
    {
      v15 = *v2;
      *v2 = 0;
      if (v15)
      {
        result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<applesauce::CF::StringRef,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v15, *(v2 + 8));
      }

      *(v2 + 8) = 0;
      return result;
    }
  }

  if (*&v3 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  result = (*(**(v2 + 16) + 16))(*(v2 + 16), 8 * *&v3, 8);
  v5 = *v2;
  *v2 = result;
  if (v5)
  {
    result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<applesauce::CF::StringRef,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v5, *(v2 + 8));
  }

  v6 = 0;
  *(v2 + 8) = v3;
  do
  {
    *(*v2 + 8 * v6++) = 0;
  }

  while (*&v3 != v6);
  v7 = *(v2 + 24);
  if (v7)
  {
    v8 = v7[1];
    v9 = vcnt_s8(v3);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    *(*v2 + 8 * v8) = v2 + 24;
    v12 = *v7;
    if (*v7)
    {
      do
      {
        v13 = v12[1];
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= *&v3)
          {
            v13 %= *&v3;
          }
        }

        else
        {
          v13 &= *&v3 - 1;
        }

        if (v13 != v8)
        {
          v14 = *v2;
          if (!*(*v2 + 8 * v13))
          {
            *(v14 + 8 * v13) = v7;
            goto LABEL_31;
          }

          *v7 = *v12;
          *v12 = **(v14 + 8 * v13);
          **(v14 + 8 * v13) = v12;
          v12 = v7;
        }

        v13 = v8;
LABEL_31:
        v7 = v12;
        v12 = *v12;
        v8 = v13;
      }

      while (v12);
    }
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EE7__cloneEPNS0_6__baseISU_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5330;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5330;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5330;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlT_E_JS9_EEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_EEERNS4_13State_ManagerESH_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(&v7, *v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v7;
  return result;
}

void sub_2725FD0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::tuple<applesauce::CF::StringRef>::~tuple(va);
  _Unwind_Resume(a1);
}

const void **std::tuple<applesauce::CF::StringRef>::~tuple(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlT_E_JS9_EEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_EEERNS4_13State_ManagerESH_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B5238;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t vp::decorators::CPU_Profiler::ProcessDownlinkAudio(vp::decorators::CPU_Profiler *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, int a6, const AudioTimeStamp *a7)
{
  v17 = a3;
  v18 = a2;
  v15 = a5;
  v16 = a4;
  v13 = 0;
  v14 = a6;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v10[7] = a7;
  v11 = 0uLL;
  v10[0] = &v13;
  v10[1] = this;
  v10[2] = &v18;
  v10[3] = &v17;
  v10[4] = &v16;
  v10[5] = &v15;
  v10[6] = &v14;
  vp::utility::CPU_Profiler::measure(&v11, caulk::function_ref<void ()(void)>::functor_invoker<vp::decorators::CPU_Profiler::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>, v10);
  result = v13;
  if (!v13)
  {
    v10[0] = *(this + 5);
    v19 = v11;
    vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::write(*(this + 5), &rep, v10, &v19.i64[1], v19.i64);
    return v13;
  }

  return result;
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::write(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = result[93];
  v11 = result[84];
  explicit = atomic_load_explicit(result + 92, memory_order_acquire);
  v13 = v10 - 1;
  v14 = v11 >= explicit;
  v15 = v11 - explicit;
  if (!v14)
  {
    v13 = -1;
  }

  if (v15 == v13)
  {
    vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(result);
  }

  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  v20 = result[94];
  v21 = result[93];
  v22 = result[84];
  v23 = v22 + v21 + 1;
  do
  {
    v23 -= v21;
  }

  while (v23 >= v21);
  if (v23 == atomic_load_explicit(result + 92, memory_order_acquire))
  {
    goto LABEL_23;
  }

  v24 = (v20 + 32 * v22);
  *v24 = v16;
  v24[1] = v17;
  v24[2] = v18;
  v24[3] = v19;
  atomic_store(v23, result + 84);
  v25 = result[93];
  v26 = result[84];
  v27 = atomic_load_explicit(result + 92, memory_order_acquire);
  if (v26 < v27)
  {
    v25 = 0;
  }

  if (v27 + ~v26 + v25 < result[81] >> 1)
  {
    v28 = result[82];
    if (v28)
    {
      v29 = *result;
      v30 = result[1];
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
      }

      if (*MEMORY[0x277D7F098])
      {
        v34 = v29;
        v31 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
        *(v31 + 16) = 0;
        *(v31 + 24) = v34;
        *v31 = &unk_2881B6220;
        *(v31 + 8) = 0;

        caulk::concurrent::messenger::enqueue(v28, v31);
        return;
      }

      __break(1u);
LABEL_23:
      v35 = 0;
      memset(v38, 0, sizeof(v38));
      v32 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v36 = 134217984;
      v37 = 0;
      _os_log_send_and_compose_impl(v33, &v35, v38, 80, &dword_2724B4000, v32, 16, "assertion failure: m_queue.push(std::forward_as_tuple(values...)) -> %llu", &v36);
      _os_crash_msg();
      __break(1u);
    }

    vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(result);
  }
}

void sub_2725FD544(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v12 = a1;
  v2 = *(a1 + 752);
  v3 = *(a1 + 744);
  explicit = atomic_load_explicit((a1 + 672), memory_order_acquire);
  v5 = *(a1 + 736);
  v6 = explicit - v5;
  if (explicit >= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7 + v6;
  if (v7 + v6)
  {
    v9 = v7 + explicit;
    v10 = &v2[4 * v5];
    v11 = v7 + explicit - v3;
    if (v7 + explicit <= v3)
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EyyyEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_yyyEE6Buffer5flushEvEUlRKT_E_EEvPS8_SI_SG_(v10, &v10[4 * v8], &v12);
      if (v9 == v3)
      {
        v11 = 0;
      }

      else
      {
        v11 = v9;
      }
    }

    else
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EyyyEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_yyyEE6Buffer5flushEvEUlRKT_E_EEvPS8_SI_SG_(v10, &v2[4 * v3], &v12);
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EyyyEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_yyyEE6Buffer5flushEvEUlRKT_E_EEvPS8_SI_SG_(v2, &v2[4 * (v5 - v3) + 4 * v8], &v12);
    }

    atomic_store(v11, (a1 + 736));
  }

  std::ostream::flush();

  std::mutex::unlock((a1 + 16));
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_2881B6248;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_2881B6248;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881B6248;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881B6248;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881B6248;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881B6248;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

std::chrono::duration<long long, std::ratio<1, 1000000>>::rep *_ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EyyyEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_yyyEE6Buffer5flushEvEUlRKT_E_EEvPS8_SI_SG_(std::chrono::duration<long long, std::ratio<1, 1000000>>::rep *result, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = MEMORY[0x277D82680];
    do
    {
      v7 = *a3;
      vp::utility::operator<<((*a3 + 80), *v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v7 + 80), ", ", 2);
      v8 = MEMORY[0x2743CBB70](v7 + 80, v5[1]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
      v9 = MEMORY[0x2743CBB70](v7 + 80, v5[2]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
      v10 = MEMORY[0x2743CBB70](v7 + 80, v5[3]);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v12, v6);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v12);
      std::ostream::put();
      result = std::ostream::flush();
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::decorators::CPU_Profiler::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v2 = **(*a1 + 16);
  v3 = **(*a1 + 24);
  v4 = **(*a1 + 32);
  v5 = **(*a1 + 40);
  v6 = **(*a1 + 48);
  v7 = *(*a1 + 56);
  v8 = *(*(*a1 + 8) + 8);
  result = (*(*v8 + 72))(v8, v2, v3, v4, v5, v6, v7);
  **v1 = result;
  return result;
}

uint64_t vp::decorators::CPU_Profiler::Process(vp::decorators::CPU_Profiler *this, const AudioBufferList *a2, const AudioTimeStamp *a3, AudioBufferList *a4, AudioTimeStamp *a5, unsigned int *a6, void *a7, unsigned int *a8, AudioStreamPacketDescription *a9)
{
  v20 = a8;
  v21 = a7;
  v19 = 0;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v16[0] = &v19;
  v16[1] = this;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = &v21;
  v16[8] = &v20;
  v16[9] = &a9;
  v17 = 0uLL;
  vp::utility::CPU_Profiler::measure(&v17, caulk::function_ref<void ()(void)>::functor_invoker<vp::decorators::CPU_Profiler::Process(AudioBufferList const&,AudioTimeStamp const&,AudioBufferList&,AudioTimeStamp&,unsigned int &,void *,unsigned int *,AudioStreamPacketDescription *)::$_0>, v16);
  result = v19;
  if (!v19)
  {
    v16[0] = *(this + 4);
    v22 = v17;
    vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::write(*(this + 3), &rep, v16, &v22.i64[1], v22.i64);
    return v19;
  }

  return result;
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::decorators::CPU_Profiler::Process(AudioBufferList const&,AudioTimeStamp const&,AudioBufferList&,AudioTimeStamp&,unsigned int &,void *,unsigned int *,AudioStreamPacketDescription *)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = **(*a1 + 56);
  v8 = **(*a1 + 64);
  v9 = **(*a1 + 72);
  v10 = *(*(*a1 + 8) + 8);
  result = (*(*v10 + 64))(v10, v2, v3, v4, v5, v6, v7, v8, v9);
  **v1 = result;
  return result;
}

uint64_t vp::decorators::CPU_Profiler::InitializeDownlinkProcessing(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), a2);
  *(a1 + 20) = a3;
  return result;
}

uint64_t vp::decorators::CPU_Profiler::InitializeHWInput(vp::decorators::CPU_Profiler *this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, uint64_t a4, uint64_t a5, uint64_t a6, const unsigned int *a7, const AudioStreamBasicDescription *a8, const AudioChannelLayout *a9, uint64_t a10, unsigned int a11, const unsigned int *a12)
{
  result = (*(**(this + 1) + 16))(*(this + 1), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  *(this + 4) = a10;
  return result;
}

void vp::decorators::CPU_Profiler::~CPU_Profiler(std::__shared_weak_count **this)
{
  vp::decorators::CPU_Profiler::~CPU_Profiler(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::decorators::CPU_Profiler]", 28);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
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
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[6];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[4];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[1];
  *this = &unk_2881C6738;
  this[1] = 0;
  if (v13)
  {
    (v13->~__shared_weak_count_0)(v13);
  }
}

void vp::decorators::CPU_Profiler::create_log(uint64_t *a1, const std::__fs::filesystem::path *a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::__create_directories(a2 + 2, 0);
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v15 = std::chrono::system_clock::to_time_t(&__t);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__src = 0u;
  v18 = 0u;
  v6 = localtime(&v15);
  v7 = strftime(__src, 0x80uLL, "vp.%Y%m%d.%H%M%S.", v6);
  if (a3)
  {
    v8 = 100;
  }

  else
  {
    v8 = 117;
  }

  v9 = __toupper(v8);
  snprintf(&__src[v7], 128 - v7, "%cL.CPU_Profile.csv", v9);
  memset(&v13, 0, sizeof(v13));
  v10 = (&__t.__d_.__rep_ + 7);
  do
  {
    v11 = v10->__r_.__value_.__s.__data_[1];
    v10 = (v10 + 1);
  }

  while (v11);
  std::string::append[abi:ne200100]<char const*,0>(&v13.__pn_, __src, v10);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &a2[2], &v13);
  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  std::ofstream::basic_ofstream(a1, p_p, 16);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_2725FE134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2725FE6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  if (a2)
  {
    std::locale::~locale(&a15);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x2743CBA00](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](a1 + 52);
  return a1;
}

void boost::alignment::detail::throw_exception<std::bad_alloc>()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82918] + 16;
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer>>::__on_zero_shared(uint64_t a1)
{
  vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(a1 + 24);
  v2 = *(a1 + 768);
  explicit = atomic_load_explicit((a1 + 696), memory_order_acquire);
  v4 = *(a1 + 760);
  v5 = v4 - explicit;
  if (v4 <= explicit)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  if (v6 != v5)
  {
    v7 = v6 + explicit;
    v8 = v7 >= v2;
    v9 = v7 - v2;
    if (!v9)
    {
      v7 = 0;
    }

    if (v9 == 0 || !v8)
    {
      v9 = v7;
    }

    atomic_store(v9, (a1 + 760));
  }

  v10 = *(a1 + 776);
  if (v10)
  {
    free(*(v10 - 8));
  }

  v11 = *(a1 + 688);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = MEMORY[0x277D82810];
  v13 = *MEMORY[0x277D82810];
  *(a1 + 104) = *MEMORY[0x277D82810];
  *(a1 + 104 + *(v13 - 24)) = *(v12 + 24);
  MEMORY[0x2743CBA00](a1 + 112);
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](a1 + 520);
  std::mutex::~mutex((a1 + 40));
  v14 = *(a1 + 32);
  if (v14)
  {

    std::__shared_weak_count::__release_weak(v14);
  }
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B61E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t a2, int a3)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x2743CB9F0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2725FEBB0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](v1);
  _Unwind_Resume(a1);
}

void vp::utility::CPU_Profiler::measure(int64x2_t *a1, void (*a2)(void), uint64_t a3)
{
  v10 = a2;
  v11 = a3;
  v9.__ptr_ = 0;
  thread_selfcounts();
  a2(&v11);
  thread_selfcounts();
  *a1 = vaddq_s64(vsubq_s64(v7, v8), *a1);
  if (v9.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v6, &v9);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v9);
  }
}

void sub_2725FEC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, std::exception_ptr a11)
{
  std::exception_ptr::~exception_ptr(&a10);
  std::exception_ptr::~exception_ptr((v11 - 40));
  _Unwind_Resume(a1);
}

void vp::vx::components::CPU_Profiler::configure(std::__shared_weak_count **this)
{
  v43 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__t, this, "vp::vx::components::CPU_Profiler]", 32);
    v4 = HIBYTE(v41);
    v5 = SHIBYTE(v41);
    v6 = v41;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      rep = __t.__d_.__rep_;
      if (v5 >= 0)
      {
        rep = &__t;
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
      v37 = rep;
      v38 = 2080;
      v39 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v41);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__t.__d_.__rep_);
    }
  }

  v11 = this[29];
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = std::__shared_weak_count::lock(v11);
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = this[28];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v13)
  {
    goto LABEL_29;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v14 = this[31];
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    v16 = v15;
    if (v15)
    {
      v17 = this[30];
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        v18 = this[33];
        if (v18)
        {
          v19 = std::__shared_weak_count::lock(v18);
          if (v19)
          {
            v20 = this[32];
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              (v20->__get_deleter)(&__t, v20, 5);
              v33 = __t.__d_.__rep_;
              v34 = v41;
              v41 = 0uLL;
              vp::vx::data_flow::State<void>::~State(&__t);
              v21 = this[1];
              v31[0] = 0;
              v31[1] = v21;
              v32 = xmmword_2727565F0;
              v22 = (v21->__on_zero_shared)(v21, 96, 8);
              v23 = v22;
              *&v24 = v17;
              *(&v24 + 1) = v16;
              atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v25 = *(this + 13);
              v26 = this[27];
              if (v26)
              {
                atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *v22 = &unk_2881B6040;
              *(v22 + 8) = v24;
              *(v22 + 24) = v25;
              *(v22 + 48) = 0;
              *(v22 + 56) = 0;
              *(v22 + 40) = 0;
              __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
              *(v23 + 64) = std::chrono::system_clock::to_time_t(&__t);
              *(v23 + 72) = 0;
              *(v23 + 80) = 0;
              *(v23 + 88) = 0;
              std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator_Factory>>::reset[abi:ne200100](v31, v23);
              v27 = v31[0];
              vp::vx::data_flow::State<void>::State(&v30, &v33);
              v29 = v27[1];
              v28 = v27[2];
              if (v28)
              {
                atomic_fetch_add_explicit(v28 + 2, 1uLL, memory_order_relaxed);
              }

              v35[0] = &unk_2881B6270;
              v35[1] = v29;
              v35[2] = v28;
              v35[3] = v35;
              std::__function::__value_func<void ()(unsigned int,BOOL const&)>::__value_func[abi:ne200100](buf, v35);
              v42 = 0;
              operator new();
            }
          }
        }

        _os_crash();
        __break(1u);
      }
    }
  }

  while (1)
  {
    _os_crash();
    __break(1u);
LABEL_29:
    _os_crash();
    __break(1u);
  }
}

void sub_2725FF150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void (***)(void));
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator_Factory>>::reset[abi:ne200100](va, 0);
  vp::vx::data_flow::State<void>::~State(va1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  _Unwind_Resume(a1);
}

void (****std::unique_ptr<vp::vx::io::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::io::Node_Decorator_Factory>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void (****std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator_Factory>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::components::CPU_Profiler::set_time(uint64_t this, uint64_t a2)
{
  *(this + 272) = a2;
  v2 = *(this + 280);
  if (v2)
  {
    *(v2 + 64) = a2;
  }

  return this;
}

void vp::vx::components::CPU_Profiler::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 264);
  *(a1 + 256) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::CPU_Profiler::set_state_observer(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 248);
  *(a1 + 240) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::CPU_Profiler::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 232);
  *(a1 + 224) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::CPU_Profiler::set_messenger(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 216);
  *(a1 + 208) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::CPU_Profiler::~CPU_Profiler(std::__shared_weak_count **this)
{
  vp::vx::components::CPU_Profiler::~CPU_Profiler(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::CPU_Profiler]", 32);
    v4 = v16;
    v5 = v16;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
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
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::io::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::io::Node_Decorator_Factory>>::reset[abi:ne200100](this + 35, 0);
  v11 = this[33];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[31];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = this[29];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = this[27];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  vp::Context::~Context((this + 2));
}

void virtual thunk tovp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator(vp::vx::components::CPU_Profiler::Node_Decorator *this)
{
  vp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator((this + *(*this - 24)));
}

void vp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator(vp::vx::components::CPU_Profiler::Node_Decorator *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B5F58;
  *(this + 7) = &unk_2881B5FF0;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::components::CPU_Profiler::Node_Decorator]", 48);
    v3 = v14;
    v4 = v14;
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
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v14;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(this + 6);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *this = off_2881B6070;
  *(this + 7) = off_2881B6108;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 7) = &unk_2881C6630;
  v12 = *(this + 9);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

{
  vp::vx::components::CPU_Profiler::Node_Decorator::~Node_Decorator(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::CPU_Profiler::Node_Decorator::process(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v16[0] = a4;
  v16[1] = a5;
  v15 = a6;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v14);
  v9 = v14;
  *a7 = 0;
  *(a7 + 4) = 3407919;
  *(a7 + 8) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/CPU_Profiler+Node_Decorator.cpp";
  *(a7 + 24) = 0uLL;
  *(a7 + 40) = v9;
  *(a7 + 48) = 0;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v11 = 0uLL;
  v13[0] = a7;
  v13[1] = a1;
  v13[2] = v17;
  v13[3] = v16;
  v13[4] = &v15;
  vp::utility::CPU_Profiler::measure(&v11, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::components::CPU_Profiler::Node_Decorator::process(std::span<vp::vx::io::Node_Process_Data const,18446744073709551615ul>,std::span<vp::vx::io::Node_Process_Data,18446744073709551615ul>,unsigned int)::$_0>, v13);
  if (*(a7 + 48) == 1)
  {
    v13[0] = v15;
    v10 = v11;
    vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::write(*(a1 + 40), &rep, v13, &v10.i64[1], v10.i64);
  }
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::components::CPU_Profiler::Node_Decorator::process(std::span<vp::vx::io::Node_Process_Data const,18446744073709551615ul>,std::span<vp::vx::io::Node_Process_Data,18446744073709551615ul>,unsigned int)::$_0>(uint64_t **a1)
{
  v1 = *a1;
  (*(**((*a1)[1] + 8) + 80))(v3);
  result = caulk::expected<void,vp::vx::io::Error>::operator=(*v1, v3);
  if ((v6 & 1) == 0 && SHIBYTE(v4) < 0)
  {
    return (*(*v5 + 24))(v5, v3[2], v4 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  return result;
}

__n128 vp::vx::components::CPU_Profiler::Node_Decorator_Factory::new_node_decorator@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    *&__src[8] = 0;
    *&v30 = 0;
    *__src = std::pmr::get_default_resource(a1);
    vp::vx::data_flow::State<void>::get_value((a1 + 40), __src);
    v8 = *vp::vx::data_flow::Value::view_storage(__src);
    vp::vx::data_flow::Value::~Value(__src);
    if (v8 == 1)
    {
      v9 = *a2 + *(**a2 - 24);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        v31 = 0u;
        v32 = 0u;
        *__src = 0u;
        v30 = 0u;
        v24 = *(a1 + 64);
        v12 = localtime(&v24);
        strftime(__src, 0x40uLL, "%Y%m%d.%H%M%S", v12);
        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v23 = *(a1 + 72);
        }

        std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v23, "vp.");
        v13 = (&v28 + 7);
        do
        {
          v14 = v13->__r_.__value_.__s.__data_[1];
          v13 = (v13 + 1);
        }

        while (v14);
        std::string::append[abi:ne200100]<char const*,0>(&v23, __src, v13);
        std::string::append(&v23, ".", 1uLL);
        vp::vx::io::Object::Log_Context::get_description(&__p, v10);
        if (v27 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v27 >= 0)
        {
          v16 = HIBYTE(v27);
        }

        else
        {
          v16 = v27;
        }

        std::string::append(&v23, p_p, v16);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p);
        }

        std::string::append(&v23, ".CPU_Profile.csv", 0x10uLL);
        v17 = (*(*a3 + 16))(a3, 80, 8);
        v18 = *a2;
        *a2 = 0;
        v27 = *(a2 + 1);
        v28 = a2[3];
        v19 = *(a1 + 24);
        v20 = *(a1 + 32);
        v25[0] = v19;
        v25[1] = v20;
        __p = v18;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          vp::vx::components::CPU_Profiler::Node_Decorator::Node_Decorator(v17, &__p, v25, &v23);
        }

        vp::vx::components::CPU_Profiler::Node_Decorator::Node_Decorator(v17, &__p, v25, &v23);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  v21 = *a2;
  *a2 = 0;
  *a4 = v21;
  result = *(a2 + 1);
  *(a4 + 8) = result;
  *(a4 + 24) = a2[3];
  return result;
}

void sub_2725FFCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator>>::reset[abi:ne200100](&a9, 0);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<vp::vx::components::CPU_Profiler::Node_Decorator,vp::Allocator_Delete<vp::vx::components::CPU_Profiler::Node_Decorator>>::reset[abi:ne200100](void *result, uint64_t a2)
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

void vp::vx::components::CPU_Profiler::Node_Decorator::Node_Decorator(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *MEMORY[0x277D85DE8];
  a1[7] = &unk_2881C6630;
  operator new();
}

void sub_2726000FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::components::CPU_Profiler::Node_Decorator_Factory::~Node_Decorator_Factory(void **this)
{
  *this = &unk_2881B6040;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B6040;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      if (*(a1 + 8))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B6270;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6270;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::CPU_Profiler::Node_Decorator_Factory::set_should_enable_cpu_profilers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6270;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::darwin::Notification_Listener::~Notification_Listener(vp::darwin::Notification_Listener *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v4 = *this;
    v3 = *(this + 1);
    os_unfair_recursive_lock_lock_with_options();
    v5 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::equal_to<int>,std::hash<int>,true>,vp::Allocator<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>>>::find<int>((v2 + 88), v3);
    if (v5)
    {
      v6 = v5[3];
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v7)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8 == 0;
      }

      if (!v9)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (v8)
      {
        v10 = *(v6 + 16);
        v11 = *(v6 + 24);
        do
        {
          if (v11 != 1 && !v10)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (!v10)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          v12 = v11 >> 1;
          v13 = &v10[10 * (v11 >> 1)];
          v15 = *v13;
          v14 = v13 + 10;
          v11 += ~(v11 >> 1);
          if (v15 >= v4)
          {
            v11 = v12;
          }

          else
          {
            v10 = v14;
          }
        }

        while (v11);
      }

      else
      {
        v10 = *(v6 + 16);
      }

      v16 = (v7 + 40 * v8);
      if (v10 != v16)
      {
        if (!v10)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        if (v4 >= *v10)
        {
          v17 = v10;
        }

        else
        {
          v17 = v7 + 40 * v8;
        }

        if (v17 != v16)
        {
          if (v7 > v17 || v17 >= v16)
          {
            __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
          }

          v19 = v17 + 40;
          while (v19 != v16)
          {
            v20 = v17 + 40;
            v19 = boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>::operator=(v17, v17 + 40) + 80;
            v17 = v20;
          }

          std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100]((v16 - 8));
          --*(v6 + 24);
        }
      }
    }

    os_unfair_recursive_lock_unlock();
    v21 = *(this + 2);
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  v22 = *(this + 2);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_2726006D8(void *a1)
{
  os_unfair_recursive_lock_unlock();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726005F0);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::equal_to<int>,std::hash<int>,true>,vp::Allocator<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>>>::find<int>(void *a1, int a2)
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

uint64_t boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 8;
  *a1 = *a2;
  v5 = a1 + 8;
  v7 = (a1 + 32);
  v6 = *(a1 + 32);
  *v7 = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v10 = *(a2 + 32);
  v9 = (a2 + 32);
  v8 = v10;
  if (v10)
  {
    if (v8 == v4)
    {
      *v7 = v5;
      (*(**v9 + 24))(*v9, v5);
      return a1;
    }

    *v7 = v8;
  }

  else
  {
    v9 = v7;
  }

  *v9 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<vp::darwin::Notification_Center,vp::Allocator<std::byte>>::__on_zero_shared(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = v3[4];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,void *>>>::deallocate[abi:ne200100](a1[19], v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = a1[15];
  a1[15] = 0;
  if (v6)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,void *> *> *>>::deallocate[abi:ne200100](a1[17], v6, a1[16]);
  }

  v7 = a1[11];
  if (v7)
  {
    do
    {
      v8 = *v7;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>((v7 + 2));
      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<vp::darwin::Notification>>,void *>>>::deallocate[abi:ne200100](a1[12], v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a1[8];
  a1[8] = 0;
  if (v9)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<vp::darwin::Notification>>,void *> *> *>>::deallocate[abi:ne200100](a1[10], v9, a1[9]);
  }

  v10 = a1[5];
  if (v10)
  {

    std::__shared_weak_count::__release_weak(v10);
  }
}

void std::__shared_ptr_emplace<vp::darwin::Notification_Center,vp::Allocator<std::byte>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B6320;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>*,boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>>(void *a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x666666666666666)
  {
    goto LABEL_28;
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
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v12 = *(a2 + 1);
  v13 = (*(**a2 + 16))(*a2, 40 * v8, 8);
  v14 = v13;
  v31[1] = a2;
  v31[2] = v8;
  v15 = *(a2 + 1);
  v16 = &v15[10 * *(a2 + 2)];
  v17 = v13;
  if (v15 != a3)
  {
    v18 = *(a2 + 1);
    v19 = v13;
    v20 = v18;
    v17 = v13;
    do
    {
      v21 = *v20;
      v20 += 10;
      *v17 = v21;
      v17 += 10;
      std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::__value_func[abi:ne200100]((v19 + 2), (v18 + 2));
      v18 = v20;
      v19 = v17;
    }

    while (v20 != a3);
  }

  *v17 = *a4;
  std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::__value_func[abi:ne200100]((v17 + 2), (a4 + 2));
  if (v16 != a3)
  {
    v22 = (v17 + 12);
    v23 = a3;
    v24 = a3;
    do
    {
      v25 = *v24;
      v24 += 10;
      *(v22 - 8) = v25;
      v22 = std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::__value_func[abi:ne200100](v22, (v23 + 2)) + 40;
      v23 = v24;
    }

    while (v24 != v16);
  }

  v31[0] = 0;
  if (v15)
  {
    v26 = *(a2 + 2);
    if (v26)
    {
      v27 = (v15 + 2);
      do
      {
        --v26;
        v27 = std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100](v27) + 40;
      }

      while (v26);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 40 * *(a2 + 3), 8);
  }

  v28 = *(a2 + 2) + 1;
  *(a2 + 1) = v14;
  *(a2 + 2) = v28;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>>::~scoped_array_deallocator(v31);
  *a1 = a3 + *(a2 + 1) - v12;
  return result;
}

void sub_272600EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 40 * *(a1 + 16), 8);
  }

  return a1;
}

void ___ZN2vp6darwin19Notification_Center19create_notificationEPKc_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        os_unfair_recursive_lock_lock_with_options();
        v8 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,std::equal_to<int>,std::hash<int>,true>,vp::Allocator<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>>>::find<int>((v7 + 88), a2);
        if (v8)
        {
          v9 = v8[3];
          v15 = *v9;
          v11 = *(v9 + 16);
          v10 = *(v9 + 24);
          if (v11)
          {
            v12 = 1;
          }

          else
          {
            v12 = v10 == 0;
          }

          if (!v12)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (v10)
          {
            v13 = v11 + 40 * v10;
            do
            {
              if (!v11)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              v14 = *(v11 + 32);
              if (!v14)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              (*(*v14 + 48))(v14, &v15);
              v11 += 40;
            }

            while (v11 != v13);
          }
        }

        os_unfair_recursive_lock_unlock();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void *std::unique_ptr<vp::darwin::Notification,vp::Allocator_Delete<vp::darwin::Notification>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,void>::~vector((v2 + 8));
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v5 = **a1;

  return std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<vp::darwin::Notification>>,void *>>>::deallocate[abi:ne200100](v5, a2);
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] + 8;
    do
    {
      --v2;
      v3 = std::__function::__value_func<void ()(vp::darwin::Notification_Proxy &)>::~__value_func[abi:ne200100](v3) + 40;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 40 * v4, 8);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::darwin::Notification *,vp::Allocator_Delete<vp::darwin::Notification>,std::allocator<vp::darwin::Notification>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(vp::darwin::Notification_Proxy &)>>>,void>::~vector((v2 + 8));
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::darwin::Notification *,vp::Allocator_Delete<vp::darwin::Notification>,std::allocator<vp::darwin::Notification>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void __destroy_helper_block_e8_32c56_ZTSNSt3__18weak_ptrIN2vp6darwin19Notification_CenterEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_32c56_ZTSNSt3__18weak_ptrIN2vp6darwin19Notification_CenterEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void vp::vx::database::v1::runtime::Data_Manager::serialize(const vp::vx::Configuration_Context *a1@<X1>, CFDictionaryRef *a2@<X8>)
{
  v291[2] = *MEMORY[0x277D85DE8];
  CFRetain(@"operation_mode");
  v4 = CFGetTypeID(@"operation_mode");
  if (v4 == CFStringGetTypeID())
  {
    v246 = @"operation_mode";
  }

  else
  {
    v246 = 0;
    CFRelease(@"operation_mode");
  }

  v5 = vp::detail::reflect_value_name<(vp::vx::Operation_Mode)0,128ul>(*a1);
  if (v6)
  {
    v7 = &v5[v6];
    v8 = v6;
    while (v8)
    {
      v9 = *--v7;
      --v8;
      if (v9 == 58)
      {
        v10 = v7 - v5 + 1;
        if (v6 < v10)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        goto LABEL_11;
      }
    }
  }

  v10 = 0;
LABEL_11:
  v11 = v6 - v10;
  if (v6 - v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  v250 = v6 - v10;
  if (v6 != v10)
  {
    memmove(&__dst, &v5[v10], v11);
  }

  v249[v11 - 8] = 0;
  if ((v250 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (p_dst)
  {
    if ((v250 & 0x80u) == 0)
    {
      v13 = v250;
    }

    else
    {
      v13 = *v249;
    }

    v245 = CFStringCreateWithBytes(0, p_dst, v13, 0x8000100u, 0);
    if (!v245)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((v250 & 0x80) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v245 = 0;
    if ((v250 & 0x80) != 0)
    {
LABEL_26:
      operator delete(__dst);
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(v251, v246, &v245);
  CFRetain(@"chat_flavor");
  v14 = CFGetTypeID(@"chat_flavor");
  if (v14 == CFStringGetTypeID())
  {
    v244 = @"chat_flavor";
  }

  else
  {
    v244 = 0;
    CFRelease(@"chat_flavor");
  }

  v15 = vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(*(a1 + 1));
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  v250 = v16;
  if (v16)
  {
    memmove(&__dst, v15, v16);
  }

  v249[v17 - 8] = 0;
  if ((v250 & 0x80u) == 0)
  {
    v18 = &__dst;
  }

  else
  {
    v18 = __dst;
  }

  if (v18)
  {
    if ((v250 & 0x80u) == 0)
    {
      v19 = v250;
    }

    else
    {
      v19 = *v249;
    }

    v243 = CFStringCreateWithBytes(0, v18, v19, 0x8000100u, 0);
    if (!v243)
    {
      v159 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v159, "Could not construct");
    }

    if ((v250 & 0x80) != 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v243 = 0;
    if ((v250 & 0x80) != 0)
    {
LABEL_45:
      operator delete(__dst);
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v252, v244, &v243);
  CFRetain(@"input_port_type");
  v20 = CFGetTypeID(@"input_port_type");
  if (v20 == CFStringGetTypeID())
  {
    v242 = @"input_port_type";
  }

  else
  {
    v242 = 0;
    CFRelease(@"input_port_type");
  }

  v21 = vp::reflect_value_name_tag<vp::vx::Input_Port_Type,128ul>(*(a1 + 2));
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  v250 = v22;
  if (v22)
  {
    memmove(&__dst, v21, v22);
  }

  v249[v23 - 8] = 0;
  if ((v250 & 0x80u) == 0)
  {
    v24 = &__dst;
  }

  else
  {
    v24 = __dst;
  }

  if (v24)
  {
    if ((v250 & 0x80u) == 0)
    {
      v25 = v250;
    }

    else
    {
      v25 = *v249;
    }

    v241 = CFStringCreateWithBytes(0, v24, v25, 0x8000100u, 0);
    if (!v241)
    {
      v160 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v160, "Could not construct");
    }

    if ((v250 & 0x80) != 0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v241 = 0;
    if ((v250 & 0x80) != 0)
    {
LABEL_64:
      operator delete(__dst);
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v253, v242, &v241);
  CFRetain(@"input_port_type_legacy");
  v26 = @"input_port_type_legacy";
  v27 = CFGetTypeID(@"input_port_type_legacy");
  if (v27 == CFStringGetTypeID())
  {
    v240 = @"input_port_type_legacy";
  }

  else
  {
    v240 = 0;
    CFRelease(@"input_port_type_legacy");
    v26 = 0;
  }

  LODWORD(__dst) = vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(*(a1 + 2));
  v239 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v239)
  {
    v138 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v138, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v254, v26, &v239);
  CFRetain(@"input_port_sub_type_legacy");
  v28 = @"input_port_sub_type_legacy";
  v29 = CFGetTypeID(@"input_port_sub_type_legacy");
  if (v29 == CFStringGetTypeID())
  {
    v238 = @"input_port_sub_type_legacy";
  }

  else
  {
    v238 = 0;
    CFRelease(@"input_port_sub_type_legacy");
    v28 = 0;
  }

  LODWORD(__dst) = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*(a1 + 3));
  v237 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v237)
  {
    v139 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v139, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v255, v28, &v237);
  CFRetain(@"input_hw_transport_type");
  v30 = @"input_hw_transport_type";
  v31 = CFGetTypeID(@"input_hw_transport_type");
  if (v31 == CFStringGetTypeID())
  {
    v236 = @"input_hw_transport_type";
  }

  else
  {
    v236 = 0;
    CFRelease(@"input_hw_transport_type");
    v30 = 0;
  }

  LODWORD(__dst) = *(a1 + 4);
  v235 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v235)
  {
    v140 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v140, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v256, v30, &v235);
  CFRetain(@"input_hw_bluetooth_device_category");
  v32 = @"input_hw_bluetooth_device_category";
  v33 = CFGetTypeID(@"input_hw_bluetooth_device_category");
  if (v33 == CFStringGetTypeID())
  {
    v234 = @"input_hw_bluetooth_device_category";
  }

  else
  {
    v234 = 0;
    CFRelease(@"input_hw_bluetooth_device_category");
    v32 = 0;
  }

  LODWORD(__dst) = *(a1 + 5);
  v233 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v233)
  {
    v141 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v141, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v257, v32, &v233);
  CFRetain(@"input_hw_data_source");
  v34 = @"input_hw_data_source";
  v35 = CFGetTypeID(@"input_hw_data_source");
  if (v35 == CFStringGetTypeID())
  {
    v232 = @"input_hw_data_source";
  }

  else
  {
    v232 = 0;
    CFRelease(@"input_hw_data_source");
    v34 = 0;
  }

  LODWORD(__dst) = *(a1 + 6);
  v231 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v231)
  {
    v142 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v142, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v258, v34, &v231);
  CFRetain(@"input_hw_model_uid");
  v36 = @"input_hw_model_uid";
  v37 = CFGetTypeID(@"input_hw_model_uid");
  if (v37 == CFStringGetTypeID())
  {
    v230 = @"input_hw_model_uid";
  }

  else
  {
    v230 = 0;
    CFRelease(@"input_hw_model_uid");
    v36 = 0;
  }

  v38 = *(a1 + 4);
  if (v38)
  {
    CFRetain(*(a1 + 4));
    v229 = v38;
    v228 = 0;
  }

  else
  {
    v228 = 0;
    CFRetain(@"(null)");
    v39 = CFGetTypeID(@"(null)");
    if (v39 == CFStringGetTypeID())
    {
      v229 = @"(null)";
    }

    else
    {
      v229 = 0;
      CFRelease(@"(null)");
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v259, v36, &v229);
  CFRetain(@"output_port_type");
  v40 = CFGetTypeID(@"output_port_type");
  if (v40 == CFStringGetTypeID())
  {
    v227 = @"output_port_type";
  }

  else
  {
    v227 = 0;
    CFRelease(@"output_port_type");
  }

  v41 = vp::reflect_value_name_tag<vp::vx::Output_Port_Type,128ul>(*(a1 + 10));
  if (v42 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    operator new();
  }

  v250 = v42;
  if (v42)
  {
    memmove(&__dst, v41, v42);
  }

  v249[v43 - 8] = 0;
  if ((v250 & 0x80u) == 0)
  {
    v44 = &__dst;
  }

  else
  {
    v44 = __dst;
  }

  if (v44)
  {
    if ((v250 & 0x80u) == 0)
    {
      v45 = v250;
    }

    else
    {
      v45 = *v249;
    }

    v226 = CFStringCreateWithBytes(0, v44, v45, 0x8000100u, 0);
    if (!v226)
    {
      v161 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v161, "Could not construct");
    }

    if ((v250 & 0x80) != 0)
    {
      goto LABEL_117;
    }
  }

  else
  {
    v226 = 0;
    if ((v250 & 0x80) != 0)
    {
LABEL_117:
      operator delete(__dst);
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v260, v227, &v226);
  CFRetain(@"output_port_type_legacy");
  v46 = @"output_port_type_legacy";
  v47 = CFGetTypeID(@"output_port_type_legacy");
  if (v47 == CFStringGetTypeID())
  {
    v225 = @"output_port_type_legacy";
  }

  else
  {
    v225 = 0;
    CFRelease(@"output_port_type_legacy");
    v46 = 0;
  }

  LODWORD(__dst) = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(*(a1 + 10));
  v224 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v224)
  {
    v143 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v143, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v261, v46, &v224);
  CFRetain(@"output_port_sub_type_legacy");
  v48 = @"output_port_sub_type_legacy";
  v49 = CFGetTypeID(@"output_port_sub_type_legacy");
  if (v49 == CFStringGetTypeID())
  {
    v223 = @"output_port_sub_type_legacy";
  }

  else
  {
    v223 = 0;
    CFRelease(@"output_port_sub_type_legacy");
    v48 = 0;
  }

  LODWORD(__dst) = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*(a1 + 11));
  v222 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v222)
  {
    v144 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v144, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v262, v48, &v222);
  CFRetain(@"output_port_endpoint_type_legacy");
  v50 = @"output_port_endpoint_type_legacy";
  v51 = CFGetTypeID(@"output_port_endpoint_type_legacy");
  if (v51 == CFStringGetTypeID())
  {
    v221 = @"output_port_endpoint_type_legacy";
  }

  else
  {
    v221 = 0;
    CFRelease(@"output_port_endpoint_type_legacy");
    v50 = 0;
  }

  LODWORD(__dst) = vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(*(a1 + 12));
  v220 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v220)
  {
    v145 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v145, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v263, v50, &v220);
  CFRetain(@"output_port_is_apple_bluetooth_product");
  v52 = @"output_port_is_apple_bluetooth_product";
  v53 = CFGetTypeID(@"output_port_is_apple_bluetooth_product");
  if (v53 == CFStringGetTypeID())
  {
    v219 = @"output_port_is_apple_bluetooth_product";
  }

  else
  {
    v219 = 0;
    CFRelease(@"output_port_is_apple_bluetooth_product");
    v52 = 0;
  }

  v54 = *MEMORY[0x277CBED28];
  v55 = *MEMORY[0x277CBED10];
  if (*(a1 + 52))
  {
    v56 = *MEMORY[0x277CBED28];
  }

  else
  {
    v56 = *MEMORY[0x277CBED10];
  }

  v218 = v56;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v264, v52, &v218);
  CFRetain(@"output_hw_transport_type");
  v57 = @"output_hw_transport_type";
  v58 = CFGetTypeID(@"output_hw_transport_type");
  if (v58 == CFStringGetTypeID())
  {
    v217 = @"output_hw_transport_type";
  }

  else
  {
    v217 = 0;
    CFRelease(@"output_hw_transport_type");
    v57 = 0;
  }

  LODWORD(__dst) = *(a1 + 14);
  v216 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v216)
  {
    v146 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v146, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v265, v57, &v216);
  CFRetain(@"output_hw_bluetooth_device_category");
  v59 = @"output_hw_bluetooth_device_category";
  v60 = CFGetTypeID(@"output_hw_bluetooth_device_category");
  if (v60 == CFStringGetTypeID())
  {
    v215 = @"output_hw_bluetooth_device_category";
  }

  else
  {
    v215 = 0;
    CFRelease(@"output_hw_bluetooth_device_category");
    v59 = 0;
  }

  LODWORD(__dst) = *(a1 + 15);
  v214 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v214)
  {
    v147 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v147, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v266, v59, &v214);
  CFRetain(@"output_hw_data_source");
  v61 = @"output_hw_data_source";
  v62 = CFGetTypeID(@"output_hw_data_source");
  if (v62 == CFStringGetTypeID())
  {
    v213 = @"output_hw_data_source";
  }

  else
  {
    v213 = 0;
    CFRelease(@"output_hw_data_source");
    v61 = 0;
  }

  LODWORD(__dst) = *(a1 + 16);
  v212 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v212)
  {
    v148 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v148, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v267, v61, &v212);
  CFRetain(@"output_hw_model_uid");
  v63 = @"output_hw_model_uid";
  v64 = CFGetTypeID(@"output_hw_model_uid");
  if (v64 == CFStringGetTypeID())
  {
    v211 = @"output_hw_model_uid";
  }

  else
  {
    v211 = 0;
    CFRelease(@"output_hw_model_uid");
    v63 = 0;
  }

  v65 = *(a1 + 9);
  if (v65)
  {
    CFRetain(*(a1 + 9));
    v209 = 0;
    v210 = v65;
  }

  else
  {
    v209 = 0;
    CFRetain(@"(null)");
    v66 = CFGetTypeID(@"(null)");
    if (v66 == CFStringGetTypeID())
    {
      v210 = @"(null)";
    }

    else
    {
      v210 = 0;
      CFRelease(@"(null)");
    }
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v268, v63, &v210);
  CFRetain(@"spatial_chat_is_enabled");
  v67 = @"spatial_chat_is_enabled";
  v68 = CFGetTypeID(@"spatial_chat_is_enabled");
  if (v68 == CFStringGetTypeID())
  {
    v208 = @"spatial_chat_is_enabled";
  }

  else
  {
    v208 = 0;
    CFRelease(@"spatial_chat_is_enabled");
    v67 = 0;
  }

  if (*(a1 + 80))
  {
    v69 = v54;
  }

  else
  {
    v69 = v55;
  }

  v207 = v69;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v269, v67, &v207);
  CFRetain(@"spatial_headtracking_is_enabled");
  v70 = @"spatial_headtracking_is_enabled";
  v71 = CFGetTypeID(@"spatial_headtracking_is_enabled");
  if (v71 == CFStringGetTypeID())
  {
    v206 = @"spatial_headtracking_is_enabled";
  }

  else
  {
    v206 = 0;
    CFRelease(@"spatial_headtracking_is_enabled");
    v70 = 0;
  }

  if (*(a1 + 81))
  {
    v72 = v54;
  }

  else
  {
    v72 = v55;
  }

  v205 = v72;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v270, v70, &v205);
  CFRetain(@"media_chat_is_enabled");
  v73 = @"media_chat_is_enabled";
  v74 = CFGetTypeID(@"media_chat_is_enabled");
  if (v74 == CFStringGetTypeID())
  {
    v204 = @"media_chat_is_enabled";
  }

  else
  {
    v204 = 0;
    CFRelease(@"media_chat_is_enabled");
    v73 = 0;
  }

  if (*(a1 + 82))
  {
    v75 = v54;
  }

  else
  {
    v75 = v55;
  }

  v203 = v75;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v271, v73, &v203);
  CFRetain(@"stereo_to_mono_mix_is_enabled");
  v76 = @"stereo_to_mono_mix_is_enabled";
  v77 = CFGetTypeID(@"stereo_to_mono_mix_is_enabled");
  if (v77 == CFStringGetTypeID())
  {
    v202 = @"stereo_to_mono_mix_is_enabled";
  }

  else
  {
    v202 = 0;
    CFRelease(@"stereo_to_mono_mix_is_enabled");
    v76 = 0;
  }

  if (*(a1 + 83))
  {
    v78 = v54;
  }

  else
  {
    v78 = v55;
  }

  v201 = v78;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v272, v76, &v201);
  CFRetain(@"voice_processing_is_bypassed");
  v79 = @"voice_processing_is_bypassed";
  v80 = CFGetTypeID(@"voice_processing_is_bypassed");
  if (v80 == CFStringGetTypeID())
  {
    v200 = @"voice_processing_is_bypassed";
  }

  else
  {
    v200 = 0;
    CFRelease(@"voice_processing_is_bypassed");
    v79 = 0;
  }

  if (*(a1 + 84))
  {
    v81 = v54;
  }

  else
  {
    v81 = v55;
  }

  v199 = v81;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v273, v79, &v199);
  CFRetain(@"voice_processing_is_disabled");
  v82 = @"voice_processing_is_disabled";
  v83 = CFGetTypeID(@"voice_processing_is_disabled");
  if (v83 == CFStringGetTypeID())
  {
    v198 = @"voice_processing_is_disabled";
  }

  else
  {
    v198 = 0;
    CFRelease(@"voice_processing_is_disabled");
    v82 = 0;
  }

  if (*(a1 + 85))
  {
    v84 = v54;
  }

  else
  {
    v84 = v55;
  }

  v197 = v84;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v274, v82, &v197);
  CFRetain(@"voice_processing_is_done_in_hardware");
  v85 = @"voice_processing_is_done_in_hardware";
  v86 = CFGetTypeID(@"voice_processing_is_done_in_hardware");
  if (v86 == CFStringGetTypeID())
  {
    v196 = @"voice_processing_is_done_in_hardware";
  }

  else
  {
    v196 = 0;
    CFRelease(@"voice_processing_is_done_in_hardware");
    v85 = 0;
  }

  if (*(a1 + 86))
  {
    v87 = v54;
  }

  else
  {
    v87 = v55;
  }

  v195 = v87;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v275, v85, &v195);
  CFRetain(@"spatial_mode");
  v88 = @"spatial_mode";
  v89 = CFGetTypeID(@"spatial_mode");
  if (v89 == CFStringGetTypeID())
  {
    v194 = @"spatial_mode";
  }

  else
  {
    v194 = 0;
    CFRelease(@"spatial_mode");
    v88 = 0;
  }

  LODWORD(__dst) = *(a1 + 22);
  v193 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v193)
  {
    v149 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v149, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v276, v88, &v193);
  CFRetain(@"hardware_mic_input_channel_count");
  v90 = @"hardware_mic_input_channel_count";
  v91 = CFGetTypeID(@"hardware_mic_input_channel_count");
  if (v91 == CFStringGetTypeID())
  {
    v192 = @"hardware_mic_input_channel_count";
  }

  else
  {
    v192 = 0;
    CFRelease(@"hardware_mic_input_channel_count");
    v90 = 0;
  }

  LODWORD(__dst) = *(a1 + 23);
  v191 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v191)
  {
    v150 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v150, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v277, v90, &v191);
  CFRetain(@"hardware_ref_input_channel_count");
  v92 = @"hardware_ref_input_channel_count";
  v93 = CFGetTypeID(@"hardware_ref_input_channel_count");
  if (v93 == CFStringGetTypeID())
  {
    v190 = @"hardware_ref_input_channel_count";
  }

  else
  {
    v190 = 0;
    CFRelease(@"hardware_ref_input_channel_count");
    v92 = 0;
  }

  LODWORD(__dst) = *(a1 + 24);
  v189 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v189)
  {
    v151 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v151, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v278, v92, &v189);
  CFRetain(@"client_nev_output_channel_count");
  v94 = @"client_nev_output_channel_count";
  v95 = CFGetTypeID(@"client_nev_output_channel_count");
  if (v95 == CFStringGetTypeID())
  {
    v188 = @"client_nev_output_channel_count";
  }

  else
  {
    v188 = 0;
    CFRelease(@"client_nev_output_channel_count");
    v94 = 0;
  }

  LODWORD(__dst) = *(a1 + 25);
  v187 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v187)
  {
    v152 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v152, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v279, v94, &v187);
  CFRetain(@"client_fev_input_channel_count");
  v96 = @"client_fev_input_channel_count";
  v97 = CFGetTypeID(@"client_fev_input_channel_count");
  if (v97 == CFStringGetTypeID())
  {
    v186 = @"client_fev_input_channel_count";
  }

  else
  {
    v186 = 0;
    CFRelease(@"client_fev_input_channel_count");
    v96 = 0;
  }

  LODWORD(__dst) = *(a1 + 26);
  v185 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v185)
  {
    v153 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v153, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v280, v96, &v185);
  CFRetain(@"hardware_mix_output_channel_count");
  v98 = @"hardware_mix_output_channel_count";
  v99 = CFGetTypeID(@"hardware_mix_output_channel_count");
  if (v99 == CFStringGetTypeID())
  {
    v184 = @"hardware_mix_output_channel_count";
  }

  else
  {
    v184 = 0;
    CFRelease(@"hardware_mix_output_channel_count");
    v98 = 0;
  }

  LODWORD(__dst) = *(a1 + 27);
  v183 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v183)
  {
    v154 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v154, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v281, v98, &v183);
  CFRetain(@"vocoder_type");
  v100 = @"vocoder_type";
  v101 = CFGetTypeID(@"vocoder_type");
  if (v101 == CFStringGetTypeID())
  {
    v182 = @"vocoder_type";
  }

  else
  {
    v182 = 0;
    CFRelease(@"vocoder_type");
    v100 = 0;
  }

  LODWORD(__dst) = *(a1 + 28);
  v181 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v181)
  {
    v155 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v155, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v282, v100, &v181);
  CFRetain(@"vocoder_sample_rate");
  v102 = @"vocoder_sample_rate";
  v103 = CFGetTypeID(@"vocoder_sample_rate");
  if (v103 == CFStringGetTypeID())
  {
    v180 = @"vocoder_sample_rate";
  }

  else
  {
    v180 = 0;
    CFRelease(@"vocoder_sample_rate");
    v102 = 0;
  }

  __dst = *(a1 + 15);
  v179 = CFNumberCreate(0, kCFNumberDoubleType, &__dst);
  if (!v179)
  {
    v156 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v156, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v283, v102, &v179);
  CFRetain(@"tap_stream_is_enabled");
  v104 = @"tap_stream_is_enabled";
  v105 = CFGetTypeID(@"tap_stream_is_enabled");
  if (v105 == CFStringGetTypeID())
  {
    v178 = @"tap_stream_is_enabled";
  }

  else
  {
    v178 = 0;
    CFRelease(@"tap_stream_is_enabled");
    v104 = 0;
  }

  if (*(a1 + 128))
  {
    v106 = v54;
  }

  else
  {
    v106 = v55;
  }

  v177 = v106;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v284, v104, &v177);
  CFRetain(@"media_playback_on_external_device_is_enabled");
  v107 = @"media_playback_on_external_device_is_enabled";
  v108 = CFGetTypeID(@"media_playback_on_external_device_is_enabled");
  if (v108 == CFStringGetTypeID())
  {
    v176 = @"media_playback_on_external_device_is_enabled";
  }

  else
  {
    v176 = 0;
    CFRelease(@"media_playback_on_external_device_is_enabled");
    v107 = 0;
  }

  if (*(a1 + 129))
  {
    v109 = v54;
  }

  else
  {
    v109 = v55;
  }

  v175 = v109;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v285, v107, &v175);
  CFRetain(@"other_audio_advanced_ducking_is_enabled");
  v110 = @"other_audio_advanced_ducking_is_enabled";
  v111 = CFGetTypeID(@"other_audio_advanced_ducking_is_enabled");
  if (v111 == CFStringGetTypeID())
  {
    v174 = @"other_audio_advanced_ducking_is_enabled";
  }

  else
  {
    v174 = 0;
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
    v110 = 0;
  }

  if (*(a1 + 130))
  {
    v112 = v54;
  }

  else
  {
    v112 = v55;
  }

  v173 = v112;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v286, v110, &v173);
  CFRetain(@"is_in_emergency_call");
  v113 = @"is_in_emergency_call";
  v114 = CFGetTypeID(@"is_in_emergency_call");
  if (v114 == CFStringGetTypeID())
  {
    v172 = @"is_in_emergency_call";
  }

  else
  {
    v172 = 0;
    CFRelease(@"is_in_emergency_call");
    v113 = 0;
  }

  if (*(a1 + 131))
  {
    v115 = v54;
  }

  else
  {
    v115 = v55;
  }

  v171 = v115;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v287, v113, &v171);
  CFRetain(@"virtual_audio_plugin_mode");
  v116 = @"virtual_audio_plugin_mode";
  v117 = CFGetTypeID(@"virtual_audio_plugin_mode");
  if (v117 == CFStringGetTypeID())
  {
    v170 = @"virtual_audio_plugin_mode";
  }

  else
  {
    v170 = 0;
    CFRelease(@"virtual_audio_plugin_mode");
    v116 = 0;
  }

  LODWORD(__dst) = *(a1 + 33);
  v169 = CFNumberCreate(0, kCFNumberIntType, &__dst);
  if (!v169)
  {
    v157 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v157, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v288, v116, &v169);
  CFRetain(@"offload_airpods_noise_suppression_is_enabled");
  v118 = @"offload_airpods_noise_suppression_is_enabled";
  v119 = CFGetTypeID(@"offload_airpods_noise_suppression_is_enabled");
  if (v119 == CFStringGetTypeID())
  {
    v168 = @"offload_airpods_noise_suppression_is_enabled";
  }

  else
  {
    v168 = 0;
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
    v118 = 0;
  }

  if (*(a1 + 136))
  {
    v120 = v54;
  }

  else
  {
    v120 = v55;
  }

  v167 = v120;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v289, v118, &v167);
  CFRetain(@"automatic_mic_mode_is_enabled");
  v121 = @"automatic_mic_mode_is_enabled";
  v122 = CFGetTypeID(@"automatic_mic_mode_is_enabled");
  if (v122 == CFStringGetTypeID())
  {
    v166 = @"automatic_mic_mode_is_enabled";
  }

  else
  {
    v166 = 0;
    CFRelease(@"automatic_mic_mode_is_enabled");
    v121 = 0;
  }

  if (*(a1 + 137))
  {
    v123 = v54;
  }

  else
  {
    v123 = v55;
  }

  v165 = v123;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(&v290, v121, &v165);
  CFRetain(@"airpods_offload_mode");
  v124 = CFGetTypeID(@"airpods_offload_mode");
  if (v124 == CFStringGetTypeID())
  {
    v164 = @"airpods_offload_mode";
  }

  else
  {
    v164 = 0;
    CFRelease(@"airpods_offload_mode");
  }

  v125 = vp::detail::reflect_value_name<(vp::vx::AirPods_Offload_Mode)0,128ul>(*(a1 + 35));
  if (v126)
  {
    v127 = &v125[v126];
    v128 = v126;
    while (v128)
    {
      v129 = *--v127;
      --v128;
      if (v129 == 58)
      {
        v130 = v127 - v125 + 1;
        if (v126 < v130)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        goto LABEL_282;
      }
    }
  }

  v130 = 0;
LABEL_282:
  v131 = v126 - v130;
  if (v126 - v130 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v131 >= 0x17)
  {
    operator new();
  }

  v250 = v126 - v130;
  if (v126 != v130)
  {
    memmove(&__dst, &v125[v130], v131);
  }

  v249[v131 - 8] = 0;
  if ((v250 & 0x80u) == 0)
  {
    v132 = &__dst;
  }

  else
  {
    v132 = __dst;
  }

  if (!v132)
  {
    cf = 0;
    if ((v250 & 0x80) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_297;
  }

  if ((v250 & 0x80u) == 0)
  {
    v133 = v250;
  }

  else
  {
    v133 = *v249;
  }

  cf = CFStringCreateWithBytes(0, v132, v133, 0x8000100u, 0);
  if (!cf)
  {
    v162 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v162, "Could not construct");
  }

  if ((v250 & 0x80) != 0)
  {
LABEL_297:
    operator delete(__dst);
  }

LABEL_298:
  v134 = v164;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(v291, v164, &cf);
  v247[0] = v251;
  v247[1] = 41;
  *a2 = applesauce::CF::details::make_CFDictionaryRef(v247);
  v135 = 656;
  do
  {
    v136 = *&v249[v135 + 8];
    if (v136)
    {
      CFRelease(v136);
    }

    v137 = *&v249[v135];
    if (v137)
    {
      CFRelease(v137);
    }

    v135 -= 16;
  }

  while (v135);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v134)
  {
    CFRelease(v134);
  }

  if (v165)
  {
    CFRelease(v165);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (v168)
  {
    CFRelease(v168);
  }

  if (v169)
  {
    CFRelease(v169);
  }

  if (v170)
  {
    CFRelease(v170);
  }

  if (v171)
  {
    CFRelease(v171);
  }

  if (v172)
  {
    CFRelease(v172);
  }

  if (v173)
  {
    CFRelease(v173);
  }

  if (v174)
  {
    CFRelease(v174);
  }

  if (v175)
  {
    CFRelease(v175);
  }

  if (v176)
  {
    CFRelease(v176);
  }

  if (v177)
  {
    CFRelease(v177);
  }

  if (v178)
  {
    CFRelease(v178);
  }

  if (v179)
  {
    CFRelease(v179);
  }

  if (v180)
  {
    CFRelease(v180);
  }

  if (v181)
  {
    CFRelease(v181);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (v184)
  {
    CFRelease(v184);
  }

  if (v185)
  {
    CFRelease(v185);
  }

  if (v186)
  {
    CFRelease(v186);
  }

  if (v187)
  {
    CFRelease(v187);
  }

  if (v188)
  {
    CFRelease(v188);
  }

  if (v189)
  {
    CFRelease(v189);
  }

  if (v190)
  {
    CFRelease(v190);
  }

  if (v191)
  {
    CFRelease(v191);
  }

  if (v192)
  {
    CFRelease(v192);
  }

  if (v193)
  {
    CFRelease(v193);
  }

  if (v194)
  {
    CFRelease(v194);
  }

  if (v195)
  {
    CFRelease(v195);
  }

  if (v196)
  {
    CFRelease(v196);
  }

  if (v197)
  {
    CFRelease(v197);
  }

  if (v198)
  {
    CFRelease(v198);
  }

  if (v199)
  {
    CFRelease(v199);
  }

  if (v200)
  {
    CFRelease(v200);
  }

  if (v201)
  {
    CFRelease(v201);
  }

  if (v202)
  {
    CFRelease(v202);
  }

  if (v203)
  {
    CFRelease(v203);
  }

  if (v204)
  {
    CFRelease(v204);
  }

  if (v205)
  {
    CFRelease(v205);
  }

  if (v206)
  {
    CFRelease(v206);
  }

  if (v207)
  {
    CFRelease(v207);
  }

  if (v208)
  {
    CFRelease(v208);
  }

  if (v210)
  {
    CFRelease(v210);
  }

  if (v209)
  {
    CFRelease(v209);
  }

  if (v211)
  {
    CFRelease(v211);
  }

  if (v212)
  {
    CFRelease(v212);
  }

  if (v213)
  {
    CFRelease(v213);
  }

  if (v214)
  {
    CFRelease(v214);
  }

  if (v215)
  {
    CFRelease(v215);
  }

  if (v216)
  {
    CFRelease(v216);
  }

  if (v217)
  {
    CFRelease(v217);
  }

  if (v218)
  {
    CFRelease(v218);
  }

  if (v219)
  {
    CFRelease(v219);
  }

  if (v220)
  {
    CFRelease(v220);
  }

  if (v221)
  {
    CFRelease(v221);
  }

  if (v222)
  {
    CFRelease(v222);
  }

  if (v223)
  {
    CFRelease(v223);
  }

  if (v224)
  {
    CFRelease(v224);
  }

  if (v225)
  {
    CFRelease(v225);
  }

  if (v226)
  {
    CFRelease(v226);
  }

  if (v227)
  {
    CFRelease(v227);
  }

  if (v229)
  {
    CFRelease(v229);
  }

  if (v228)
  {
    CFRelease(v228);
  }

  if (v230)
  {
    CFRelease(v230);
  }

  if (v231)
  {
    CFRelease(v231);
  }

  if (v232)
  {
    CFRelease(v232);
  }

  if (v233)
  {
    CFRelease(v233);
  }

  if (v234)
  {
    CFRelease(v234);
  }

  if (v235)
  {
    CFRelease(v235);
  }

  if (v236)
  {
    CFRelease(v236);
  }

  if (v237)
  {
    CFRelease(v237);
  }

  if (v238)
  {
    CFRelease(v238);
  }

  if (v239)
  {
    CFRelease(v239);
  }

  if (v240)
  {
    CFRelease(v240);
  }

  if (v241)
  {
    CFRelease(v241);
  }

  if (v242)
  {
    CFRelease(v242);
  }

  if (v243)
  {
    CFRelease(v243);
  }

  if (v244)
  {
    CFRelease(v244);
  }

  if (v245)
  {
    CFRelease(v245);
  }

  if (v246)
  {
    CFRelease(v246);
  }
}