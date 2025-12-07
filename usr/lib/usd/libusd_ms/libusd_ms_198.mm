uint64_t sub_29B16704C(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  sub_29B0C04A4((a1 + 24), (a2 + 24));
  std::string::basic_string((a1 + 40), (a2 + 40));
  return a1;
}

uint64_t sub_29B167148(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB645B8(a1);
  }

  return a1;
}

void sub_29B167194(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B166E08(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*,pxrInternal__aapl__pxrReserved__::HioGlslfxConfig::Attribute*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B167388(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B167388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AB68728(a1, v9, v8, v5);
  return sub_29B16740C(a4, v6);
}

BOOL std::map<std::string,std::vector<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::string>>,std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9 = a3;
  v8 = a1;
  v7 = sub_29B167558();
  result = sub_29B167588(&v10, &v9);
  if (result)
  {
    sub_29B0BCCB0(&v6, v7);
    sub_29B0E9B98(&v10);
    sub_29B1675B8(a1, v6, v4);
  }

  return result;
}

void std::__tree_key_value_types<std::__value_type<std::string,std::vector<std::string>>>::__get_key[abi:ne200100]<std::pair<std::string const,std::vector<std::string>> const,0>()
{
  ;
}

{
    ;
  }
}

void *std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__find_equal<std::string>(uint64_t a1, void *a2, uint64_t a3, void *a4, const void **a5)
{
  v37 = a2;
  v36 = a1;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v31 = sub_29B0BCC78();
  sub_29B0BCCB0(&v32, v31);
  v24 = 1;
  if (!sub_29B0BAF80(&v37, &v32))
  {
    sub_29B088388();
    v23 = v5;
    v22 = v33;
    v6 = sub_29B0BB0C8(&v37);
    v24 = sub_29B167C0C(v23, v22, v6);
  }

  if (v24)
  {
    v30 = v37;
    v28 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v29, v28);
    v21 = 1;
    if (!sub_29B0BAF80(&v30, &v29))
    {
      sub_29B088388();
      v20 = v7;
      v8 = sub_29B0BCD54(&v30);
      v9 = sub_29B0BB0C8(v8);
      v21 = sub_29B167C5C(v20, v9, v33);
    }

    if (!v21)
    {
      std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__find_equal<std::string>();
    }

    if (*v37)
    {
      *v35 = v30;
      return v30 + 1;
    }

    else
    {
      *v35 = v37;
      return *v35;
    }
  }

  else
  {
    sub_29B088388();
    v19 = v10;
    v11 = sub_29B0BB0C8(&v37);
    if (sub_29B167C5C(v19, v11, v33))
    {
      v26[1] = v37;
      sub_29B0BE6D8(v37, 1);
      v27 = v12;
      v25 = sub_29B0BCC78();
      sub_29B0BCCB0(v26, v25);
      v18 = 1;
      if (!sub_29B0BAF80(&v27, v26))
      {
        sub_29B088388();
        v17 = v13;
        v16 = v33;
        v14 = sub_29B0BB0C8(&v27);
        v18 = sub_29B167C0C(v17, v16, v14);
      }

      if (!v18)
      {
        std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__find_equal<std::string>();
      }

      if (*(sub_29B0BCBCC(&v37) + 8))
      {
        *v35 = v27;
        return *v35;
      }

      else
      {
        *v35 = v37;
        return v37 + 1;
      }
    }

    else
    {
      *v35 = v37;
      *v34 = v37;
      return v34;
    }
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::pair<std::string const,std::vector<std::string>> const&>()
{
  sub_29B088388();
  sub_29B167E14(v3, 1uLL);
}

{
    ;
  }
}

void *std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__find_equal<std::string>(uint64_t a1, uint64_t a2, const void **a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if (!sub_29B167C0C(v4, a3, (v9 + 4)))
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if (!sub_29B167C5C(v5, (v9 + 4), a3))
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

void *sub_29B167EF8(uint64_t a1, unint64_t a2)
{
  v3 = 80 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B167F84(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void *sub_29B168090(void *a1, void *a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0CBDC8(a1 + 1, a2 + 1);
  sub_29B0CBDC8(a1 + 4, a2 + 4);
  sub_29B0CBDC8(a1 + 7, a2 + 7);
  sub_29B0C0374(a1 + 10, a2 + 10);
  sub_29B0B8190(a1 + 11, a2 + 11);
  return a1;
}

uint64_t sub_29B16812C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A2071690;
  *(a1 + 8) = *(a2 + 8);
  std::string::basic_string((a1 + 16), (a2 + 16));
  result = a1;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t sub_29B1681A4(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

void sub_29B1681E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B15CA94((a1 + 24), (a2 + 24));
}

void sub_29B1682B0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B0CBDC8((a1 + 24), (a2 + 24));
  sub_29B0CBDC8((a1 + 48), (a2 + 48));
  sub_29B0B7D60((a1 + 72), (a2 + 72));
}

void sub_29B168330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29B15C838((a10 + 48));
  sub_29B15CA34((a10 + 24));
  _Unwind_Resume(a1);
}

void sub_29B1683B8(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, a2);
  *a1 = &unk_2A205F368;
  sub_29B0C1C90((a1 + 24), a2 + 3);
}

uint64_t sub_29B16847C(uint64_t result, uint64_t a2)
{
  *result = &unk_2A2060CE8;
  *(result + 8) = *(a2 + 8);
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B168518(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B168570(a1, a2);
  result = a1;
  *a1 = &unk_2A2060328;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B168570(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B1685C8(a1, a2);
  result = a1;
  *a1 = &unk_2A205FB38;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B1685C8(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B168620(a1, a2);
  result = a1;
  *a1 = &unk_2A20608A8;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B168620(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B168678(a1, a2);
  result = a1;
  *a1 = &unk_2A205FF00;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B168678(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, a2);
  result = a1;
  *a1 = &unk_2A205F6D0;
  return result;
}

uint64_t sub_29B1686D0(uint64_t a1)
{
  sub_29B168718((a1 + 64));
  sub_29B0882A0(a1 + 48);
  sub_29A57F434(a1);
  return a1;
}

void **sub_29B168748(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A5C6BD8(v3);
  return a1;
}

void sub_29B168850(uint64_t a1, uint64_t a2)
{
  sub_29A58CB08(a1, a2);
  *(a1 + 32) = *(a2 + 32);
  sub_29B0ECEDC((a1 + 48), (a2 + 48));
  sub_29B1688EC((a1 + 64), (a2 + 64));
}

void sub_29B1688C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29B0882A0(a10 + 48);
  sub_29A57F434(a10);
  _Unwind_Resume(a1);
}

void sub_29B168924(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*,pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*,pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B168AF0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*,pxrInternal__aapl__pxrReserved__::UsdPrimCompositionQueryArc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B168B48(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B168B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A5C75D0(a1, v9, v8, v5);
  return sub_29B168BCC(a4, v6);
}

void *sub_29B168CB0(void *a1, const void *a2)
{
  memcpy(a1, a2, 0x30uLL);
  sub_29B0ECEDC(a1 + 6, a2 + 6);
  return a1;
}

uint64_t sub_29B168D00(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A5C6BD8(a1);
  }

  return a1;
}

void **sub_29B168E3C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A559EF0(v3);
  return a1;
}

void sub_29B168F24(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>,void,0>();
}

void std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A379A04(a1, v8);
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1690F0(v7);
}

void *std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::UsdStageLoadRules::Rule>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B161784(&v6, a1, a4);
  v7 = sub_29B169148(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B169148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A55A464(a1, v9, v8, v5);
  return sub_29B1691CC(a4, v6);
}

_DWORD *sub_29B1692B0(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  result = a1;
  a1[2] = a2[2];
  return result;
}

uint64_t sub_29B1692F4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A559EF0(a1);
  }

  return a1;
}

void **sub_29B1693E8(void **a1)
{
  sub_29B0B81C8((a1 + 32));
  sub_29B0B81C8((a1 + 29));
  sub_29B169484((a1 + 24));
  sub_29B15D028(a1 + 21);
  sub_29B15D224(a1 + 16);
  sub_29B15D458(a1 + 12);
  sub_29B15D654((a1 + 9));
  sub_29B0B81C8((a1 + 6));
  sub_29B0B81C8((a1 + 3));
  sub_29B0B81C8(a1);
  return a1;
}

void sub_29B1695A4(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_29B1695FC((result + 1), v1);
  }
}

void sub_29B1695FC(uint64_t a1, void *a2)
{
  sub_29B088388();
  v4 = v2;
  sub_29B088388();
  sub_29B169658(v4, a2, *v3);
}

void sub_29B1696C8(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B169870(uint64_t a1, int a2)
{
  *(v2 - 24) = a1;
  *(v2 - 28) = a2;
  sub_29B0B81C8(*(v2 - 40));
  _Unwind_Resume(*(v2 - 24));
}

void sub_29B169A30(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 - 24) = a1;
  *(v10 - 28) = a2;
  sub_29B1694E4(a10);
  _Unwind_Resume(*(v10 - 24));
}

BOOL std::unordered_set<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::insert<std::__hash_const_iterator<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  v6 = a3;
  result = sub_29B0BC5E4(&v7, &v6);
  if (result)
  {
    v4 = sub_29B16A658();
    sub_29B16A5B4(a1, v4);
  }

  return result;
}

void sub_29B169BB8(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a2);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>,void,0>();
}

void std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void *sub_29B169D3C(void *a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  sub_29B169D80(a1 + 1, a3);
  return a1;
}

void *sub_29B169DB8(void *a1, void *a2)
{
  *a1 = *a2;
  sub_29B088388();
  v3 = v2;
  result = a1;
  *v3 = 0;
  return result;
}

size_t *std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__rehash<true>(uint64_t a1, size_t a2)
{
  v13[1] = a1;
  v13[0] = a2;
  if (a2 == 1)
  {
    v13[0] = 2;
  }

  else if ((v13[0] & (v13[0] - 1)) != 0)
  {
    v13[0] = std::__next_prime(v13[0]);
  }

  result = sub_29B169F9C(a1);
  v12 = result;
  if (v13[0] > result)
  {
    std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__do_rehash<true>();
  }

  if (v13[0] < v12)
  {
    if (sub_29B16A228(v12))
    {
      v8 = *sub_29B16A2F8(a1);
      v3 = sub_29B16A310(a1);
      v4 = sub_29B16A2E0(v8 / *v3);
      prime = sub_29B16A274(v4);
    }

    else
    {
      v7 = *sub_29B16A2F8(a1);
      v5 = sub_29B16A310(a1);
      v6 = sub_29B16A2E0(v7 / *v5);
      prime = std::__next_prime(v6);
    }

    v11 = prime;
    result = sub_29B0E1A40(v13, &v11);
    v13[0] = *result;
    if (v13[0] < v12)
    {
      std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__do_rehash<true>();
    }
  }

  return result;
}

void std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__do_rehash<true>(void *a1, unint64_t a2)
{
  sub_29B0BD304(a1);
  sub_29B088388();
  if (a2)
  {
    sub_29B16A384(v2, a2);
  }

  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> **,0>();
}

BOOL sub_29B16A228(unint64_t a1)
{
  v2 = 0;
  if (a1 > 2)
  {
    return (a1 & (a1 - 1)) == 0;
  }

  return v2;
}

uint64_t sub_29B16A274(unint64_t a1)
{
  if (a1 >= 2)
  {
    return 1 << (64 - sub_29B16A598(a1 - 1));
  }

  else
  {
    return a1;
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,void *> *> **,0>(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29B1695FC((result + 1), v2);
  }
}

unint64_t sub_29B16A3B4(unint64_t a1, unint64_t a2)
{
  if ((a2 & (a2 - 1)) == 0)
  {
    return a1 & (a2 - 1);
  }

  if (a1 >= a2)
  {
    return a1 % a2;
  }

  else
  {
    return a1;
  }
}

void *sub_29B16A4C0(uint64_t a1, unint64_t a2)
{
  v3 = 8 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B16A530(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void pxrInternal__aapl__pxrReserved__::TfHash::operator()<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B16ACB8(v2);
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>();
}

void std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__construct_node_hash<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>()
{
  sub_29B088388();
  sub_29B16B400(v4, 1uLL);
}

{
    ;
  }
}

uint64_t sub_29B16AD48(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AsDerived()
{
  ;
}

{
  ;
}

{
    ;
  }
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::_AppendImpl()
{
  ;
}

{
    ;
  }
}

pxrInternal__aapl__pxrReserved__::Tf_HashState *pxrInternal__aapl__pxrReserved__::Tf_HashState::_Append<unsigned long>(pxrInternal__aapl__pxrReserved__::Tf_HashState *result, unint64_t a2)
{
  if (*(result + 8))
  {
    pxrInternal__aapl__pxrReserved__::Tf_HashState::_Combine(result);
  }

  *result = a2;
  *(result + 8) = 1;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfHashAppend<pxrInternal__aapl__pxrReserved__::Tf_HashState>(uint64_t a1, uint64_t a2)
{
  sub_29B0EB9FC(a2);
  sub_29B16B288(a2);
  pxrInternal__aapl__pxrReserved__::Tf_HashStateAPI<pxrInternal__aapl__pxrReserved__::Tf_HashState>::AppendContiguous<char>();
}

{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::Get();
}

void pxrInternal__aapl__pxrReserved__::Tf_HashState::_GetCode(pxrInternal__aapl__pxrReserved__::Tf_HashState *this)
{
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_SwapByteOrder(this);
}

{
    ;
  }
}

void *sub_29B16B528(uint64_t a1, unint64_t a2)
{
  v3 = 56 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B16B5BC(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void *sub_29B16B668(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29B0884A0(a1, a2);
  result = a1;
  a1[1] = a3;
  return result;
}

uint64_t sub_29B16B7B0(uint64_t a1, uint64_t a2)
{
  sub_29B0B8190(a1, a2);
  sub_29B0B8190((a1 + 24), (a2 + 24));
  sub_29B0B8190((a1 + 48), (a2 + 48));
  sub_29B0B8190((a1 + 72), (a2 + 72));
  sub_29B0CBDC8((a1 + 96), (a2 + 96));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 122) = *(a2 + 122);
  sub_29B15D330(a1 + 128, a2 + 128);
  sub_29B0CBDC8((a1 + 168), (a2 + 168));
  sub_29B16B8B0(a1 + 192, a2 + 192);
  sub_29B0B8190((a1 + 232), (a2 + 232));
  sub_29B0B8190((a1 + 256), (a2 + 256));
  return a1;
}

uint64_t sub_29B16B958(uint64_t a1, uint64_t a2)
{
  sub_29B16BA3C(a1, a2);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  if (*sub_29B16A2F8(a1))
  {
    sub_29B0C0DA8();
    v7 = v2;
    v6 = sub_29B0C0F48(*(a1 + 16));
    v3 = sub_29B169F9C(a1);
    v4 = sub_29B16A3B4(v6, v3);
    *sub_29B0DB30C(a1, v4) = v7;
    *(a2 + 16) = 0;
    *sub_29B16A2F8(a2) = 0;
  }

  return a1;
}

uint64_t *sub_29B16BA74(uint64_t *a1, uint64_t *a2)
{
  *a1 = sub_29B0BCBE4(a2);
  v2 = sub_29B0BD304(a2);
  sub_29B169D80(a1 + 1, v2);
  return a1;
}

void sub_29B16BBE4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pxrInternal__aapl__pxrReserved__::PcpErrorRelocationBase *a12)
{
  *(v12 - 24) = a1;
  *(v12 - 28) = a2;
  sub_29A1DCEA8(a12 + 28);
  sub_29A1DCEA8(a12 + 26);
  pxrInternal__aapl__pxrReserved__::PcpErrorRelocationBase::~PcpErrorRelocationBase(a12);
  _Unwind_Resume(*(v12 - 24));
}

void sub_29B16BCB0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A204EBC8;
  *(a1 + 8) = *(a2 + 8);
  sub_29B12F784((a1 + 16), (a2 + 16));
}

uint64_t sub_29B16BD1C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B156AA0((a1 + 4), (a2 + 4));
  std::string::basic_string((a1 + 24), (a2 + 24));
  return a1;
}

_DWORD *sub_29B16BDA4(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_29B156B44(a1 + 1, a2 + 1);
  sub_29B0C0434((a1 + 6), a2 + 6);
  return a1;
}

_DWORD *sub_29B16BE04(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  sub_29B0B975C(a1 + 2, a2 + 2);
  result = a1;
  a1[4] = a2[4];
  return result;
}

_DWORD *sub_29B16BE5C(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0B82B8(a1 + 2, a2 + 2);
  result = a1;
  a1[4] = a2[4];
  return result;
}

void sub_29B16BEB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 8), (a2 + 8));
  sub_29B15D8B0((a1 + 32), (a2 + 32));
}

_DWORD *sub_29B16BF3C(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_29B0C0434((a1 + 2), a2 + 2);
  sub_29B0CBDC8(a1 + 4, a2 + 4);
  return a1;
}

void sub_29B16BFF4(uint64_t **result)
{
  if (**result)
  {
    sub_29B16C078(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B15FE80(*result);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B16C078(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B16C0C4(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B16C0C4(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0111A4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16C2C8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B16C320(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16C320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B16C3A4(a1, v9, v8, v5);
  return sub_29B16C3E0(a4, v6);
}

uint64_t sub_29B16C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B16C564(v17, v11);
  v8 = sub_29B16C3E0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B16C594(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B16BFF4(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A044EF0(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16C734(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16C78C(&v6, a1, a4);
  v7 = sub_29B16C7CC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16C7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A218960(a1, v9, v8, v5);
  return sub_29B16C89C(a4, v6);
}

void *sub_29B16C850(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 56 * a3;
  return result;
}

uint64_t sub_29B16C9A4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A2177C4(a1);
  }

  return a1;
}

void *sub_29B16C9F0(void *a1, uint64_t a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, (a2 + 24));
  sub_29B0C0434((a1 + 6), (a2 + 48));
  return a1;
}

void **sub_29B16CAE0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A10C99C(v3);
  return a1;
}

void sub_29B16CBB4(uint64_t **result)
{
  if (**result)
  {
    sub_29B16CC38(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B15FE80(*result);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B16CC38(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B16CC84(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B16CC84(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0111A4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16CE88(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B16CEE0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B16CF64(a1, v9, v8, v5);
  return sub_29B16CFA0(a4, v6);
}

uint64_t sub_29B16D06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B16D124(v17, v11);
  v8 = sub_29B16CFA0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B16D154(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B16CBB4(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16D2F4(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B16D34C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A218464(a1, v9, v8, v5);
  return sub_29B16D3D0(a4, v6);
}

uint64_t sub_29B16D4B4(uint64_t a1, uint64_t a2)
{
  sub_29B0B975C(a1, a2);
  std::string::basic_string((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t sub_29B16D528(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A21859C(a1);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern*,pxrInternal__aapl__pxrReserved__::SdfPathPattern*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathPattern*,pxrInternal__aapl__pxrReserved__::SdfPathPattern*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16D6C8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathPattern*,pxrInternal__aapl__pxrReserved__::SdfPathPattern*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B16D720(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16D720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A218624(a1, v9, v8, v5);
  return sub_29B16D7A4(a4, v6);
}

void sub_29B16D9B0(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16DB7C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B16DBD4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16DBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A2186D0(a1, v9, v8, v5);
  return sub_29B16DC58(a4, v6);
}

uint64_t sub_29B16DD3C(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t sub_29B16DD88(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A10C99C(a1);
  }

  return a1;
}

void sub_29B16DDD4(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10C514(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B16DFA0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1668EC(&v6, a1, a4);
  v7 = sub_29B16DFF8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A2187DC(a1, v9, v8, v5);
  return sub_29B16E07C(a4, v6);
}

uint64_t sub_29B16E128(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A2176E4(a1);
  }

  return a1;
}

uint64_t sub_29B16E174(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A218CE8(a1);
  }

  return a1;
}

void *sub_29B16E1C0(void *a1, uint64_t a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, (a2 + 24));
  sub_29B0CBDC8(a1 + 6, (a2 + 48));
  sub_29B0C0434((a1 + 9), (a2 + 72));
  return a1;
}

__n128 sub_29B16E30C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

__n128 sub_29B16E338(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t *sub_29B16E4AC(unint64_t *result, unint64_t a2, int a3)
{
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(a2, result);
  }

  else
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_29B16E528(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  sub_29B16E35C((a1 + 120), 0);
  v4 = sub_29B16E608((a2 + 120), 0, 0);
  if (v4)
  {
    sub_29B16E394((a1 + 120), v4);
  }

  return a1;
}

unint64_t sub_29B16E640(atomic_ullong *a1, unint64_t a2, int a3)
{
  switch(a3)
  {
    case 2:
    case 1:
      return atomic_exchange_explicit(a1, a2, memory_order_acquire);
    case 3:
      return atomic_exchange_explicit(a1, a2, memory_order_release);
    case 4:
    case 5:
      return atomic_exchange(a1, a2);
  }

  return __swp(a2, a1);
}

void *sub_29B16E7A8(void *a1, void *a2)
{
  memcpy(a1, a2, 0xA0uLL);
  sub_29B0CBDC8(a1 + 20, a2 + 20);
  result = a1;
  a1[23] = a2[23];
  return result;
}

uint64_t sub_29B16E93C(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29A5B0668(a1, v1);
  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9 = a3;
  v8 = a1;
  v7 = sub_29B167558();
  result = sub_29B167588(&v10, &v9);
  if (result)
  {
    sub_29B0BCCB0(&v6, v7);
    sub_29B0E9B98(&v10);
    sub_29B16EBE8(a1, v6, v4);
  }

  return result;
}

uint64_t sub_29B16EB20()
{
  v1 = sub_29B0BCD1C();
  sub_29B0BCCB0(&v2, v1);
  return v2;
}

void sub_29B16EB5C(void *a1)
{
  *a1 = 0;
  sub_29B0BC15C(a1 + 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>,void,0>();
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const,0>()
{
  ;
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v37 = a2;
  v36 = a1;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v31 = sub_29B0BCC78();
  sub_29B0BCCB0(&v32, v31);
  v24 = 1;
  if (!sub_29B0BAF80(&v37, &v32))
  {
    sub_29B088388();
    v23 = v5;
    v22 = v33;
    v6 = sub_29B0BB0C8(&v37);
    v24 = sub_29A662CCC(v23, v22, v6);
  }

  if (v24)
  {
    v30 = v37;
    v28 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v29, v28);
    v21 = 1;
    if (!sub_29B0BAF80(&v30, &v29))
    {
      sub_29B088388();
      v20 = v7;
      v8 = sub_29B0BCD54(&v30);
      v9 = sub_29B0BB0C8(v8);
      v21 = sub_29A662CCC(v20, v9, v33);
    }

    if ((v21 & 1) == 0)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v37)
    {
      *v35 = v30;
      return v30 + 1;
    }

    else
    {
      *v35 = v37;
      return *v35;
    }
  }

  else
  {
    sub_29B088388();
    v19 = v10;
    v11 = sub_29B0BB0C8(&v37);
    if (sub_29A662CCC(v19, v11, v33))
    {
      v26[1] = v37;
      sub_29B0BE6D8(v37, 1);
      v27 = v12;
      v25 = sub_29B0BCC78();
      sub_29B0BCCB0(v26, v25);
      v18 = 1;
      if (!sub_29B0BAF80(&v27, v26))
      {
        sub_29B088388();
        v17 = v13;
        v16 = v33;
        v14 = sub_29B0BB0C8(&v27);
        v18 = sub_29A662CCC(v17, v16, v14);
      }

      if ((v18 & 1) == 0)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v37) + 8))
      {
        *v35 = v27;
        return *v35;
      }

      else
      {
        *v35 = v37;
        return v37 + 1;
      }
    }

    else
    {
      *v35 = v37;
      *v34 = v37;
      return v34;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>()
{
  sub_29B088388();
  sub_29B16F544(v3, 1uLL);
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if ((sub_29A662CCC(v4, a3, v9 + 4) & 1) == 0)
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if ((sub_29A662CCC(v5, v9 + 4, a3) & 1) == 0)
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B0EB9FC(a2);
  v11 = *v3;
  sub_29B0EB9FC(a3);
  v10 = *v4;
  v9 = 0;
  if (v11 < 0x80u)
  {
    v9 = v10 < 0x80u;
  }

  v7 = 0;
  if (v11 >= 0x40u)
  {
    v7 = v10 >= 0x40u;
  }

  v6 = 0;
  if (v9)
  {
    v6 = 0;
    if ((v11 & 0xDF) != (v10 & 0xDF))
    {
      v6 = v7;
    }
  }

  if (v6)
  {
    v14 = ((v11 + 5) & 0x1F) < ((v10 + 5) & 0x1F);
  }

  else
  {
    v14 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a1, a2, a3) & 1;
  }

  return v14 & 1;
}

void *sub_29B16F628(uint64_t a1, unint64_t a2)
{
  v3 = 56 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B16F69C(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B16F7A4(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A94BD9C((a1 + 1), v2);
  }
}

uint64_t sub_29B16F800(uint64_t a1)
{
  sub_29B15DA4C((a1 + 96));
  sub_29A1043FC(a1 + 24);
  sub_29B15DE4C(a1);
  return a1;
}

void *sub_29B16F8F0(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B15DD24((a1 + 3), (a2 + 3));
  sub_29B0CBDC8(a1 + 12, a2 + 12);
  return a1;
}

void **sub_29B16F950(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B06EE78(v3);
  return a1;
}

void sub_29B16F9F0(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdxPickHit>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdxPickHit*,pxrInternal__aapl__pxrReserved__::HdxPickHit*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B16FB30(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B16FC54(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdxPickHit>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdxPickHit*,pxrInternal__aapl__pxrReserved__::HdxPickHit*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16FD0C(&v6, a1, a4);
  v7 = sub_29B16FD4C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B16FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B16FE1C(a1, v9, v8, v5);
  return sub_29B16FF10(a4, v6);
}

void *sub_29B16FDD0(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 80 * a3;
  return result;
}

uint64_t sub_29B16FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdxPickHit>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdxPickHit,pxrInternal__aapl__pxrReserved__::HdxPickHit&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B16FF88(v7);
  return v5;
}

uint64_t sub_29B170048(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B06EE78(a1);
  }

  return a1;
}

void sub_29B1701D4(uint64_t **result)
{
  if (**result)
  {
    sub_29B170258(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B0DD278(*result);
    sub_29B1702A4(v3, v2, v1);
  }
}

void sub_29B170258(uint64_t *a1)
{
  sub_29B0DAD68(a1);
  sub_29B1702DC(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1702DC(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4d,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4d,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1703C4(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B17042C(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4d>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4d*,pxrInternal__aapl__pxrReserved__::GfVec4d*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfVec4d*,pxrInternal__aapl__pxrReserved__::GfVec4d*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1705F8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfVec4d*,pxrInternal__aapl__pxrReserved__::GfVec4d*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B170650(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B170650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B1706D4(a1, v9, v8, v5);
  return sub_29B170710(a4, v6);
}

uint64_t sub_29B1707DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B170894(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1708E0(v17, v11);
  v8 = sub_29B170710(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B170910(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 32;
  sub_29B170994(a3, a1, v5);
  v4 = &v6[32 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B170994(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 32 * (a3 - 1) + 32);
  }

  return a1;
}

uint64_t sub_29B1709F8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1701D4(a1);
  }

  return a1;
}

void sub_29B170A74(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29AB876CC(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B170C40(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16FD0C(&v6, a1, a4);
  v7 = sub_29B170C98(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B170C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29AC9469C(a1, v9, v8, v5);
  return sub_29B170D1C(a4, v6);
}

uint64_t sub_29B170DC8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AC943DC(a1);
  }

  return a1;
}

uint64_t *sub_29B170E14(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B170E5C(v3);
  return a1;
}

void sub_29B170E5C(uint64_t **result)
{
  if (**result)
  {
    sub_29B170EE0(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B170F64(*result);
    sub_29B170F2C(v3, v2, v1);
  }
}

void sub_29B170EE0(uint64_t *a1)
{
  sub_29B170F8C(a1);
  sub_29B170FB4(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B170FB4(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfBBox3d,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfBBox3d,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B17109C(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B171108(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfBBox3d>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::GfBBox3d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfBBox3d*,pxrInternal__aapl__pxrReserved__::GfBBox3d*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29AEC832C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::GfBBox3d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfBBox3d*,pxrInternal__aapl__pxrReserved__::GfBBox3d*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1712D4(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::GfBBox3d>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfBBox3d*,pxrInternal__aapl__pxrReserved__::GfBBox3d*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B17134C(&v6, a1, a4);
  v7 = sub_29B17138C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17138C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B17145C(a1, v9, v8, v5);
  return sub_29B171498(a4, v6);
}

void *sub_29B171410(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 312 * a3;
  return result;
}

uint64_t sub_29B171564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B17161C(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B171668(v17, v11);
  v8 = sub_29B171498(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B171698(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 312;
  sub_29B171724(a3, a1, v5);
  v4 = &v6[312 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B171724(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 312 * (a3 - 1) + 306);
  }

  return a1;
}

uint64_t sub_29B1717E8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B170E5C(a1);
  }

  return a1;
}

uint64_t sub_29B171894(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29ABF3348(a1, v1);
  return a1;
}

void **sub_29B171954(void **a1)
{
  sub_29B171990(a1 + 1);
  sub_29A424A8C(a1);
  return a1;
}

void **sub_29B1719C0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29ABF3254(v3);
  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9 = a3;
  v8 = a1;
  v7 = sub_29B167558();
  result = sub_29B167588(&v10, &v9);
  if (result)
  {
    sub_29B0BCCB0(&v6, v7);
    sub_29B0E9B98(&v10);
    sub_29B171AD8(a1, v6, v4);
  }

  return result;
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>> const,0>()
{
  ;
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v37 = a2;
  v36 = a1;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v31 = sub_29B0BCC78();
  sub_29B0BCCB0(&v32, v31);
  v24 = 1;
  if (!sub_29B0BAF80(&v37, &v32))
  {
    sub_29B088388();
    v23 = v5;
    v22 = v33;
    v6 = sub_29B0BB0C8(&v37);
    v24 = sub_29B17212C(v23, v22, v6);
  }

  if (v24)
  {
    v30 = v37;
    v28 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v29, v28);
    v21 = 1;
    if (!sub_29B0BAF80(&v30, &v29))
    {
      sub_29B088388();
      v20 = v7;
      v8 = sub_29B0BCD54(&v30);
      v9 = sub_29B0BB0C8(v8);
      v21 = sub_29B17217C(v20, v9, v33);
    }

    if (!v21)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v37)
    {
      *v35 = v30;
      return v30 + 1;
    }

    else
    {
      *v35 = v37;
      return *v35;
    }
  }

  else
  {
    sub_29B088388();
    v19 = v10;
    v11 = sub_29B0BB0C8(&v37);
    if (sub_29B17217C(v19, v11, v33))
    {
      v26[1] = v37;
      sub_29B0BE6D8(v37, 1);
      v27 = v12;
      v25 = sub_29B0BCC78();
      sub_29B0BCCB0(v26, v25);
      v18 = 1;
      if (!sub_29B0BAF80(&v27, v26))
      {
        sub_29B088388();
        v17 = v13;
        v16 = v33;
        v14 = sub_29B0BB0C8(&v27);
        v18 = sub_29B17212C(v17, v16, v14);
      }

      if (!v18)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v37) + 8))
      {
        *v35 = v27;
        return *v35;
      }

      else
      {
        *v35 = v37;
        return v37 + 1;
      }
    }

    else
    {
      *v35 = v37;
      *v34 = v37;
      return v34;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>> const&>()
{
  sub_29B088388();
  sub_29B172334(v3, 1uLL);
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if (!sub_29B17212C(v4, a3, (v9 + 4)))
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if (!sub_29B17217C(v5, (v9 + 4), a3))
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

void *sub_29B172418(uint64_t a1, unint64_t a2)
{
  v3 = a1 << 6;
  if (!sub_29B0886D8(a2))
  {
    sub_29B172488(v3);
  }

  return sub_29B0BD424(v3, a2);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1726B0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B172708(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B172708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29ABF30DC(a1, v9, v8, v5);
  return sub_29B17278C(a4, v6);
}

uint64_t sub_29B1728BC(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABF3254(a1);
  }

  return a1;
}

void sub_29B17293C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29ABF32DC((a1 + 1), v2);
  }
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9 = a3;
  v8 = a1;
  v7 = sub_29B167558();
  result = sub_29B167588(&v10, &v9);
  if (result)
  {
    sub_29B0BCCB0(&v6, v7);
    sub_29B0E9B98(&v10);
    sub_29B172A28(a1, v6, v4);
  }

  return result;
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v37 = a2;
  v36 = a1;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v31 = sub_29B0BCC78();
  sub_29B0BCCB0(&v32, v31);
  v24 = 1;
  if (!sub_29B0BAF80(&v37, &v32))
  {
    sub_29B088388();
    v23 = v5;
    v22 = v33;
    v6 = sub_29B0BB0C8(&v37);
    v24 = sub_29B17212C(v23, v22, v6);
  }

  if (v24)
  {
    v30 = v37;
    v28 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v29, v28);
    v21 = 1;
    if (!sub_29B0BAF80(&v30, &v29))
    {
      sub_29B088388();
      v20 = v7;
      v8 = sub_29B0BCD54(&v30);
      v9 = sub_29B0BB0C8(v8);
      v21 = sub_29B17217C(v20, v9, v33);
    }

    if (!v21)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v37)
    {
      *v35 = v30;
      return v30 + 1;
    }

    else
    {
      *v35 = v37;
      return *v35;
    }
  }

  else
  {
    sub_29B088388();
    v19 = v10;
    v11 = sub_29B0BB0C8(&v37);
    if (sub_29B17217C(v19, v11, v33))
    {
      v26[1] = v37;
      sub_29B0BE6D8(v37, 1);
      v27 = v12;
      v25 = sub_29B0BCC78();
      sub_29B0BCCB0(v26, v25);
      v18 = 1;
      if (!sub_29B0BAF80(&v27, v26))
      {
        sub_29B088388();
        v17 = v13;
        v16 = v33;
        v14 = sub_29B0BB0C8(&v27);
        v18 = sub_29B17212C(v17, v16, v14);
      }

      if (!v18)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v37) + 8))
      {
        *v35 = v27;
        return *v35;
      }

      else
      {
        *v35 = v37;
        return v37 + 1;
      }
    }

    else
    {
      *v35 = v37;
      *v34 = v37;
      return v34;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>()
{
  sub_29B088388();
  sub_29B16F544(v3, 1uLL);
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if (!sub_29B17212C(v4, a3, (v9 + 4)))
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if (!sub_29B17217C(v5, (v9 + 4), a3))
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

uint64_t sub_29B173208(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29ABED2CC(a1, v1);
  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9 = a3;
  v8 = a1;
  v7 = sub_29B167558();
  result = sub_29B167588(&v10, &v9);
  if (result)
  {
    sub_29B0BCCB0(&v6, v7);
    sub_29B0E9B98(&v10);
    sub_29B173310(a1, v6, v4);
  }

  return result;
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork> const,0>()
{
  ;
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v37 = a2;
  v36 = a1;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v31 = sub_29B0BCC78();
  sub_29B0BCCB0(&v32, v31);
  v24 = 1;
  if (!sub_29B0BAF80(&v37, &v32))
  {
    sub_29B088388();
    v23 = v5;
    v22 = v33;
    v6 = sub_29B0BB0C8(&v37);
    v24 = sub_29B17212C(v23, v22, v6);
  }

  if (v24)
  {
    v30 = v37;
    v28 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v29, v28);
    v21 = 1;
    if (!sub_29B0BAF80(&v30, &v29))
    {
      sub_29B088388();
      v20 = v7;
      v8 = sub_29B0BCD54(&v30);
      v9 = sub_29B0BB0C8(v8);
      v21 = sub_29B17217C(v20, v9, v33);
    }

    if (!v21)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v37)
    {
      *v35 = v30;
      return v30 + 1;
    }

    else
    {
      *v35 = v37;
      return *v35;
    }
  }

  else
  {
    sub_29B088388();
    v19 = v10;
    v11 = sub_29B0BB0C8(&v37);
    if (sub_29B17217C(v19, v11, v33))
    {
      v26[1] = v37;
      sub_29B0BE6D8(v37, 1);
      v27 = v12;
      v25 = sub_29B0BCC78();
      sub_29B0BCCB0(v26, v25);
      v18 = 1;
      if (!sub_29B0BAF80(&v27, v26))
      {
        sub_29B088388();
        v17 = v13;
        v16 = v33;
        v14 = sub_29B0BB0C8(&v27);
        v18 = sub_29B17212C(v17, v16, v14);
      }

      if (!v18)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v37) + 8))
      {
        *v35 = v27;
        return *v35;
      }

      else
      {
        *v35 = v37;
        return v37 + 1;
      }
    }

    else
    {
      *v35 = v37;
      *v34 = v37;
      return v34;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork> const&>()
{
  sub_29B088388();
  sub_29B173AD4(v3, 1uLL);
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if (!sub_29B17212C(v4, a3, (v9 + 4)))
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if (!sub_29B17217C(v5, (v9 + 4), a3))
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

void *sub_29B173BB8(uint64_t a1, unint64_t a2)
{
  v3 = 112 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B173C4C(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void **sub_29B173D54(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29ABED178(v3);
  return a1;
}

void sub_29B173DF4(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialNode>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialNode>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialNode>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialNode>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialNode>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialNode*,pxrInternal__aapl__pxrReserved__::HdMaterialNode*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10E7C8(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialNode>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialNode*,pxrInternal__aapl__pxrReserved__::HdMaterialNode*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B173FC0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialNode>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialNode*,pxrInternal__aapl__pxrReserved__::HdMaterialNode*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B174018(&v6, a1, a4);
  v7 = sub_29B174058(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B174058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29ABECF0C(a1, v9, v8, v5);
  return sub_29B174128(a4, v6);
}

void *sub_29B1740DC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 40 * a3;
  return result;
}

void sub_29B174270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A424A8C((a10 + 8));
  sub_29A1DCEA8(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1742F8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABED178(a1);
  }

  return a1;
}

void **sub_29B174344(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29ABECE84(v3);
  return a1;
}

void sub_29B1743BC(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*,pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*,pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B174588(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*,pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B1745E0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1745E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29ABECCE0(a1, v9, v8, v5);
  return sub_29B174664(a4, v6);
}

uint64_t sub_29B1747BC(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABECE84(a1);
  }

  return a1;
}

BOOL std::unordered_map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>>>::insert<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  v6 = a3;
  result = sub_29B167588(&v7, &v6);
  if (result)
  {
    sub_29B174F64(&v7);
    sub_29B174EC0(a1, v4);
  }

  return result;
}

size_t *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__rehash<true>(uint64_t a1, size_t a2)
{
  v13[1] = a1;
  v13[0] = a2;
  if (a2 == 1)
  {
    v13[0] = 2;
  }

  else if ((v13[0] & (v13[0] - 1)) != 0)
  {
    v13[0] = std::__next_prime(v13[0]);
  }

  result = sub_29B169F9C(a1);
  v12 = result;
  if (v13[0] > result)
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__do_rehash<true>();
  }

  if (v13[0] < v12)
  {
    if (sub_29B16A228(v12))
    {
      v8 = *sub_29B16A2F8(a1);
      v3 = sub_29B16A310(a1);
      v4 = sub_29B16A2E0(v8 / *v3);
      prime = sub_29B16A274(v4);
    }

    else
    {
      v7 = *sub_29B16A2F8(a1);
      v5 = sub_29B16A310(a1);
      v6 = sub_29B16A2E0(v7 / *v5);
      prime = std::__next_prime(v6);
    }

    v11 = prime;
    result = sub_29B0E1A40(v13, &v11);
    v13[0] = *result;
    if (v13[0] < v12)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__do_rehash<true>();
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__do_rehash<true>(void *a1, unint64_t a2)
{
  sub_29B0BD304(a1);
  sub_29B088388();
  if (a2)
  {
    sub_29B174E14(v2, a2);
  }

  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> **,0>();
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *> **,0>(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29B1695FC((result + 1), v2);
  }
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__construct_node_hash<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>()
{
  sub_29B088388();
  sub_29B17586C(v4, 1uLL);
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfToken::Hash(pxrInternal__aapl__pxrReserved__::TfToken *this)
{
  pxrInternal__aapl__pxrReserved__::TfHash::operator()<pxrInternal__aapl__pxrReserved__::TfToken const&>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfHash::operator()<pxrInternal__aapl__pxrReserved__::TfToken const&>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B16ACB8(v2);
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfToken const&>();
}

void *sub_29B175950(uint64_t a1, unint64_t a2)
{
  v3 = 40 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B1759C4(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B175A94(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29AC1E628((a1 + 1), v2);
  }
}

void sub_29B175AF0()
{
  sub_29B0C0DA8();
  sub_29B0BC338(v0);
  sub_29B088388();
}

uint64_t *sub_29B175B24(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B175B6C(v3);
  return a1;
}

void sub_29B175B6C(uint64_t **result)
{
  if (**result)
  {
    sub_29B175BF0(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B0DE1B0(*result);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B175BF0(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B175C3C(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B175C3C(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B175CEC(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B175EB8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B175F10(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B175F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B175F94(a1, v9, v8, v5);
  return sub_29B175FD0(a4, v6);
}

uint64_t sub_29B17609C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B176154(v17, v11);
  v8 = sub_29B175FD0(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B176184(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B175B6C(a1);
  }

  return a1;
}

uint64_t *sub_29B1761D0(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B176218(v3);
  return a1;
}

void sub_29B176218(uint64_t **result)
{
  if (**result)
  {
    sub_29B17629C(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B176320(*result);
    sub_29B1762E8(v3, v2, v1);
  }
}

void sub_29B17629C(uint64_t *a1)
{
  sub_29B16F998(a1);
  sub_29B176348(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B176348(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B176430(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B17649C(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29AB876CC(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B176668(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16FD0C(&v6, a1, a4);
  v7 = sub_29B1766C0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1766C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B176744(a1, v9, v8, v5);
  return sub_29B176780(a4, v6);
}

uint64_t sub_29B17684C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B176904(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B176950(v17, v11);
  v8 = sub_29B176780(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B176980(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 80;
  sub_29B176A0C(a3, a1, v5);
  v4 = &v6[80 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B176A0C(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 80 * (a3 - 1) + 80);
  }

  return a1;
}

uint64_t sub_29B176A74(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B176218(a1);
  }

  return a1;
}

void **sub_29B176AC0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A38A7B4(v3);
  return a1;
}

void sub_29B176B64(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B176D30(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B176D88(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B176D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B176E0C(a1, v9, v8, v5);
  return sub_29B176F00(a4, v6);
}

uint64_t sub_29B176E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B176F78(v7);
  return v5;
}

uint64_t sub_29B176FDC(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A38A7B4(a1);
  }

  return a1;
}

void **sub_29B177028(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A84BDF8(v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery>::_DecRef(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (!*(a1 + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(a1, *(a1 + 32));
    }

    if (sub_29B0BB8EC(*(a1 + 24), 1, 3) == 1)
    {
      sub_29B0BB924(2u);
      pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(*(a1 + 24));
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_29B177200(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdSkelBinding*,pxrInternal__aapl__pxrReserved__::UsdSkelBinding*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B177340(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B17745C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelBinding>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdSkelBinding*,pxrInternal__aapl__pxrReserved__::UsdSkelBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B177514(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B177514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A84C234(a1, v9, v8, v5);
  return sub_29B177598(a4, v6);
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B17767C(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B1776F0(a1, a2);
  sub_29B0B7F5C(a1 + 24, a2 + 24);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29B177728(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  sub_29B168570(a1, a2);
  result = a1;
  *a1 = &unk_2A2063448;
  return result;
}

uint64_t sub_29B177780(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A84BDF8(a1);
  }

  return a1;
}

void **sub_29B1777CC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A48140C(v3);
  return a1;
}

void sub_29B1778A0(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite*,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B1779E0(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B177B04(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite*,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16C78C(&v6, a1, a4);
  v7 = sub_29B177BBC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B177BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B177C40(a1, v9, v8, v5);
  return sub_29B177D34(a4, v6);
}

uint64_t sub_29B177C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B177DAC(v7);
  return v5;
}

void sub_29B177E48(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_29B0B9178((a1 + 16), (a2 + 16));
}

uint64_t sub_29B177ED8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B177F2C(a1);
  }

  return a1;
}

BOOL sub_29B177F2C(uint64_t *a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, *a1[2]);
  sub_29B0DF4A4(v4, *a1[1]);
  return sub_29B177F98(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B177F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B17800C(v7);
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite,0>();
  }

  return result;
}

uint64_t sub_29B1780E0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A48140C(a1);
  }

  return a1;
}

void **sub_29B17812C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A4814F0(v3);
  return a1;
}

void sub_29B1781A4(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite*,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B1782E4(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B178408(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite*,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0E135C(&v6, a1, a4);
  v7 = sub_29B1784C0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1784C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B178544(a1, v9, v8, v5);
  return sub_29B178638(a4, v6);
}

uint64_t sub_29B178544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite,pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B1786B0(v7);
  return v5;
}

void *sub_29B17874C(void *a1, void *a2)
{
  *a1 = *a2;
  sub_29B0B975C(a1 + 2, a2 + 2);
  sub_29B0B975C(a1 + 4, a2 + 4);
  return a1;
}

uint64_t sub_29B1787AC(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A4814F0(a1);
  }

  return a1;
}

void **sub_29B1787F8(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A1DEB80(v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<200ul,8ul,1ul>::GetLocalStorage()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSmallVectorBase::_DataUnion<40ul,8ul,3ul>::GetLocalStorage()
{
  ;
}

{
    ;
  }
}

void *sub_29B178DB0(void *a1)
{
  sub_29B178DEC((a1 + 1));
  sub_29A424A8C(a1);
  return a1;
}

uint64_t sub_29B178E1C(uint64_t a1)
{
  sub_29A3D65BC(a1 + 16);
  sub_29A3D65BC(a1);
  return a1;
}

void sub_29B178E58(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>,void,0>();
}

void std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A4478EC(a1, v8);
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B179024(v7);
}

void *std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B17909C(&v6, a1, a4);
  v7 = sub_29B1790DC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1790DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B1791AC(a1, v9, v8, v5);
  return sub_29B1792A0(a4, v6);
}

void *sub_29B179160(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 232 * a3;
  return result;
}

uint64_t sub_29B1791AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::SdfChangeList>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B179318(v7);
  return v5;
}

uint64_t sub_29B179410(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A1DEB80(a1);
  }

  return a1;
}

void sub_29B179568(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 - 24) = a1;
  *(v10 - 28) = a2;
  sub_29B17948C(a10);
  _Unwind_Resume(*(v10 - 24));
}

BOOL std::unordered_set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::insert<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *>>(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v6 = a3;
  result = sub_29B0BC5E4(&v7, &v6);
  if (result)
  {
    v4 = sub_29B16A658();
    sub_29B179C48(a1, v4);
  }

  return result;
}

void sub_29B179668(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a2);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>,void,0>();
}

void std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

size_t *std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__rehash<true>(uint64_t a1, size_t a2)
{
  v13[1] = a1;
  v13[0] = a2;
  if (a2 == 1)
  {
    v13[0] = 2;
  }

  else if ((v13[0] & (v13[0] - 1)) != 0)
  {
    v13[0] = std::__next_prime(v13[0]);
  }

  result = sub_29B169F9C(a1);
  v12 = result;
  if (v13[0] > result)
  {
    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__do_rehash<true>();
  }

  if (v13[0] < v12)
  {
    if (sub_29B16A228(v12))
    {
      v8 = *sub_29B16A2F8(a1);
      v3 = sub_29B16A310(a1);
      v4 = sub_29B16A2E0(v8 / *v3);
      prime = sub_29B16A274(v4);
    }

    else
    {
      v7 = *sub_29B16A2F8(a1);
      v5 = sub_29B16A310(a1);
      v6 = sub_29B16A2E0(v7 / *v5);
      prime = std::__next_prime(v6);
    }

    v11 = prime;
    result = sub_29B0E1A40(v13, &v11);
    v13[0] = *result;
    if (v13[0] < v12)
    {
      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__do_rehash<true>();
    }
  }

  return result;
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__do_rehash<true>(void *a1, unint64_t a2)
{
  sub_29B0BD304(a1);
  sub_29B088388();
  if (a2)
  {
    sub_29B179B9C(v2, a2);
  }

  std::unique_ptr<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> **,0>();
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *> **,0>(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29B1695FC((result + 1), v2);
  }
}

void pxrInternal__aapl__pxrReserved__::TfHash::operator()<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B16ACB8(v2);
  pxrInternal__aapl__pxrReserved__::Tf_HashImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::__construct_node_hash<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  sub_29B088388();
  sub_29B17A330(v4, 1uLL);
}

{
    ;
  }
}

void *sub_29B17A414(uint64_t a1, unint64_t a2)
{
  v3 = 32 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B17A484(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B17A554(void **a1, void *a2)
{
  __p = *a1;
  *a1 = a2;
  if (__p)
  {
    sub_29A0ECBB4((a1 + 1), __p);
  }
}

void **sub_29B17A5B0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A23F9D4(v3);
  return a1;
}

void sub_29B17A628(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,void,0>();
}

void std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B17A7F4(v7);
}

void *std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__construct_at_end<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B17A84C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17A84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A23FBEC(a1, v9, v8, v5);
  return sub_29B17A8D0(a4, v6);
}

uint64_t sub_29B17A97C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A23F9D4(a1);
  }

  return a1;
}

uint64_t sub_29B17AA28(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29A447324(a1, v1);
  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::SdfPath,int,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9 = a3;
  v8 = a1;
  v7 = sub_29B167558();
  result = sub_29B167588(&v10, &v9);
  if (result)
  {
    sub_29B0BCCB0(&v6, v7);
    sub_29B17ACC4(&v10);
    sub_29B17AC70(a1, v6, v4);
  }

  return result;
}

void sub_29B17ABE4(void *a1)
{
  *a1 = 0;
  sub_29B0BC15C(a1 + 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>,void,0>();
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int> const,0>()
{
  ;
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v23 = a2;
  v22 = a1;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v17 = sub_29B0BCC78();
  sub_29B0BCCB0(&v18, v17);
  if (!sub_29B0BAF80(&v23, &v18))
  {
    sub_29B088388();
    v13 = v5;
    v12 = v19;
    v6 = sub_29B0BAFE8(&v23);
    sub_29B17B2F0(v13, v12, v6);
  }

  v16 = v23;
  v14 = sub_29B0BCD1C();
  sub_29B0BCCB0(&v15, v14);
  if (!sub_29B0BAF80(&v16, &v15))
  {
    sub_29B088388();
    v11 = v7;
    v8 = sub_29B0BCD54(&v16);
    v9 = sub_29B0BAFE8(v8);
    sub_29B17B340(v11, v9, v19);
  }

  if (*v23)
  {
    *v21 = v16;
    return v16 + 1;
  }

  else
  {
    *v21 = v23;
    return *v21;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int> const&>()
{
  sub_29B088388();
  sub_29B17B544(v3, 1uLL);
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,pxrInternal__aapl__pxrReserved__::SdfPath::FastLessThan,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  if (v6)
  {
    sub_29B088388();
    sub_29B17B2F0(v3, a3, v6 + 28);
  }

  sub_29B0BC18C();
  *a2 = v4;
  return *a2;
}

void *sub_29B17B628(uint64_t a1, unint64_t a2)
{
  v3 = 40 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B17B69C(v3);
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B17B76C(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29B17B7C8((result + 1), v2);
  }
}

void sub_29B17B7C8(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    sub_29B166294(a2 + 28);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,int>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,int>,void,0>();
  }

  if (a2)
  {
    sub_29B0BC444(*result, a2, 1);
  }
}

void **sub_29B17B88C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A217894(v3);
  return a1;
}

void sub_29B17B904(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10E7C8(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B17BAD0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B174018(&v6, a1, a4);
  v7 = sub_29B17BB28(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17BB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A218A0C(a1, v9, v8, v5);
  return sub_29B17BBAC(a4, v6);
}

std::string *sub_29B17BC90(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  sub_29B0C04A4(a1[1].__r_.__value_.__r.__words, a2[1].__r_.__value_.__r.__words);
  return a1;
}

uint64_t sub_29B17BD04(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A217894(a1);
  }

  return a1;
}

uint64_t *sub_29B17BD50(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B17BD98(v3);
  return a1;
}

void sub_29B17BD98(uint64_t **result)
{
  if (**result)
  {
    sub_29B17BE1C(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B17BE68(*result);
    sub_29B0BC444(v3, v2, v1);
  }
}

void sub_29B17BE1C(uint64_t *a1)
{
  sub_29B173D9C(a1);
  sub_29B17BE90(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B17BE90(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo,0>();
  }

  *(result + 8) = a2;
  return result;
}

uint64_t *sub_29B17BFFC(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B17C044(v3);
  return a1;
}

void sub_29B17C044(uint64_t **result)
{
  if (**result)
  {
    sub_29B17C0C8(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B0DECEC(*result);
    sub_29B169658(v3, v2, v1);
  }
}

void sub_29B17C0C8(uint64_t *a1)
{
  sub_29B0DB240(a1);
  sub_29B17C114(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B17C114(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<unsigned long>>::destroy[abi:ne200100]<unsigned long,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<unsigned long>>::destroy[abi:ne200100]<unsigned long,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B17C1C4(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B17C304(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B17C428(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B174018(&v6, a1, a4);
  v7 = sub_29B17C4E0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17C4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B17C564(a1, v9, v8, v5);
  return sub_29B17C658(a4, v6);
}

uint64_t sub_29B17C564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B17C6D0(v7);
  return v5;
}

void sub_29B17C7E8(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<unsigned long>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<unsigned long>,void,0>();
}

void std::allocator_traits<std::allocator<unsigned long>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<unsigned long>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A00C968(a1, v8);
    std::vector<unsigned long>::__construct_at_end<unsigned long *,unsigned long *>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B17C9B4(v7);
}

void *std::vector<unsigned long>::__construct_at_end<unsigned long *,unsigned long *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B17CA0C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17CA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B17CA90(a1, v9, v8, v5);
  return sub_29B17CACC(a4, v6);
}

uint64_t sub_29B17CB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B17CC50(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B17CC9C(v17, v11);
  v8 = sub_29B17CACC(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B17CCCC(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 8;
  sub_29B17CD50(a3, a1, v5);
  v4 = &v6[8 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B17CD50(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 8 * (a3 - 1) + 8);
  }

  return a1;
}

uint64_t sub_29B17CDB4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B17C044(a1);
  }

  return a1;
}

uint64_t sub_29B17CE00(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B17BD98(a1);
  }

  return a1;
}

void sub_29B17CE4C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  std::string::basic_string((a1 + 24), (a2 + 24));
  sub_29B15E0A8((a1 + 48), (a2 + 48));
}

uint64_t sub_29B17CEDC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B0C0434(a1 + 24, (a2 + 24));
  sub_29B0CBDC8((a1 + 48), (a2 + 48));
  return a1;
}

void ***sub_29B17CF44(void ***a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B17CF8C(v3);
  return a1;
}

void sub_29B17CF8C(void ****result)
{
  if (**result)
  {
    sub_29A102A5C(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B0DD278(*result);
    sub_29B1702A4(v3, v2, v1);
  }
}

void sub_29B17D040(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B17D180(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B17D29C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B17D354(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B17D3D8(a1, v9, v8, v5);
  return sub_29B17D4CC(a4, v6);
}

uint64_t sub_29B17D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B17D544(v7);
  return v5;
}

std::string *sub_29B17D5E0(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  result = a1;
  a1[1].__r_.__value_.__r.__words[0] = a2[1].__r_.__value_.__r.__words[0];
  return result;
}

uint64_t sub_29B17D624(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B17CF8C(a1);
  }

  return a1;
}

void ***sub_29B17D670(void ***a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A108138(v3);
  return a1;
}

void sub_29B17D714(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10C514(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B17D8E0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1668EC(&v6, a1, a4);
  v7 = sub_29B17D938(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B17D938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A10C564(a1, v9, v8, v5);
  return sub_29B17D9BC(a4, v6);
}

uint64_t sub_29B17DA68(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A108138(a1);
  }

  return a1;
}

void sub_29B18240C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B18247C(__dst, v4);
}

void sub_29B18247C(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfBBox3d::operator==();
}

BOOL sub_29B18250C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18257C(__dst, v5);
}

BOOL sub_29B18257C(const void *a1, const void *a2)
{
  *&__dst[17] = a1;
  *&__dst[16] = a2;
  memcpy(__dst, a1, 0x80uLL);
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(__dst, v4);
}

BOOL static pxrInternal__aapl__pxrReserved__.pxr_half.half.== infix(_:_:)(__int16 a1, __int16 a2, const pxrInternal__aapl__pxrReserved__::pxr_half::half *a3)
{
  v5[5] = a1;
  v5[1] = a2;
  v5[0] = a1;
  v4 = a2;
  return Overlay::__operatorEqualsEquals(v5, &v4, a3);
}

void sub_29B182B98(uint64_t a1, uint64_t a2)
{
  LODWORD(v3) = *a1;
  WORD2(v3) = *(a1 + 4);
  LODWORD(v2) = *a2;
  WORD2(v2) = *(a2 + 4);
  sub_29B182BF4(v3, v2);
}

void sub_29B182D90(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B182DF8(__dst, v4);
}

void sub_29B182DF8(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfRange3d::operator==();
}

void sub_29B182E80(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  v5 = *(a2 + 2);
  sub_29B182ED4(&v2, &v4);
}

void sub_29B1830D0(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B183138(__dst, v4);
}

void sub_29B183138(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfDualQuatd::operator==();
}

void sub_29B18328C(_OWORD *a1, _OWORD *a2)
{
  v2[0] = *a1;
  v2[1] = a1[1];
  v3[0] = *a2;
  v3[1] = a2[1];
  sub_29B1832E0(v2, v3);
}

void sub_29B1837EC(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B183854(__dst, v4);
}

void sub_29B183854(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfRay::operator==();
}

void sub_29B183F8C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B183FF4(__dst, v4);
}

void sub_29B183FF4(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfLine::operator==();
}

void sub_29B184148(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B1841B0(__dst, v4);
}

void sub_29B1841B0(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfLineSeg::operator==();
}

void sub_29B184238(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  sub_29B1842A0(__dst, v4);
}

void sub_29B1842A0(const void *a1, const void *a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v3, a2, sizeof(v3));
  pxrInternal__aapl__pxrReserved__::GfLineSeg2d::operator==();
}

BOOL sub_29B184364(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v10[8] = a1;
  v10[9] = a2;
  v10[10] = a3;
  v10[11] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a7;
  v10[7] = a8;
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v9[3] = a8;
  return pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator==(v10, v9);
}

BOOL sub_29B184430(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v10[8] = a1;
  v10[9] = a2;
  v10[10] = a3;
  v10[11] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a7;
  v10[7] = a8;
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v9[3] = a8;
  return pxrInternal__aapl__pxrReserved__::GfMatrix2f::operator==(v10, v9);
}

BOOL sub_29B1844B8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B184520(__dst, v5);
}

BOOL sub_29B184520(const void *a1, const void *a2)
{
  v7 = a1;
  v6 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator==(__dst, v4);
}

BOOL sub_29B1845A8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B184610(__dst, v5);
}

BOOL sub_29B184610(const void *a1, const void *a2)
{
  *&__dst[10] = a1;
  *&__dst[9] = a2;
  memcpy(__dst, a1, 0x48uLL);
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator==(__dst, v4);
}

BOOL sub_29B184698(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B184700(__dst, v5);
}

BOOL sub_29B184700(const void *a1, const void *a2)
{
  v7 = a1;
  v6 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator==(__dst, v4);
}

BOOL sub_29B184980(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B1849F0(__dst, v5);
}

BOOL sub_29B1849F0(const void *a1, const void *a2)
{
  *&__dst[18] = a1;
  *&__dst[17] = a2;
  memcpy(__dst, a1, 0x88uLL);
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::GfTransform::operator==(__dst, v4);
}

BOOL sub_29B184BCC(const char *a1, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6)
{
  v8[12] = a1;
  v8[13] = a2;
  v8[14] = a3;
  v8[9] = a4;
  v8[10] = a5;
  v8[11] = a6;
  v8[6] = a1;
  v8[7] = a2;
  v8[8] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return pxrInternal__aapl__pxrReserved__::TraceStaticKeyData::operator==(v8, v7);
}

uint64_t sub_29B184CFC(const pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v9, a1);
  sub_29B0C0374(&v8, &v9);
  sub_29AE997DC(&v9);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v7, a2);
  sub_29B0C0374(&v6, &v7);
  sub_29AE997DC(&v7);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(&v8, &v6, v2);
  sub_29AE997DC(&v6);
  sub_29AE997DC(&v8);
  return v4;
}

BOOL static pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator<UnsafeMutablePointer<std.__1.map<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue, std.__1.less<Void>, std.__1.allocator<std.__1.pair<__cxxConst<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>>, pxrInternal__aapl__pxrReserved__.VtValue>>>>, std.__1.__map_iterator<std.__1.__tree_iterator<std.__1.__value_type<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue>, UnsafeMutablePointer<std.__1.__tree_node<std.__1.__value_type<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue>, UnsafeMutablePointer<Void>>>, CLong>>>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[8] = a1;
  v6[9] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return Overlay::__operatorEqualsEquals(v6, v5);
}

BOOL static pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator<UnsafePointer<std.__1.map<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue, std.__1.less<Void>, std.__1.allocator<std.__1.pair<__cxxConst<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>>, pxrInternal__aapl__pxrReserved__.VtValue>>>>, std.__1.__map_const_iterator<std.__1.__tree_const_iterator<std.__1.__value_type<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue>, UnsafeMutablePointer<std.__1.__tree_node<std.__1.__value_type<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>, pxrInternal__aapl__pxrReserved__.VtValue>, UnsafeMutablePointer<Void>>>, CLong>>>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[8] = a1;
  v6[9] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return Overlay::__operatorEqualsEquals(v6, v5);
}

uint64_t sub_29B185048(__int128 *a1, __int128 *a2)
{
  sub_29B199628(v8, a1);
  sub_29B1996D4(v7, v8);
  sub_29A1D18FC(v8);
  sub_29B199628(v6, a2);
  sub_29B1996D4(v5, v6);
  sub_29A1D18FC(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29A1D18FC(v5);
  sub_29A1D18FC(v7);
  return v3;
}

void sub_29B185A10(uint64_t a1, uint64_t a2)
{
  sub_29B16DD04(&v6, a1);
  sub_29B198C7C(v5, &v6);
  sub_29B130DF8(&v6);
  sub_29B16DD04(&v4, a2);
  sub_29B198C7C(v3, &v4);
  sub_29B130DF8(&v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void sub_29B185ADC(uint64_t a1, uint64_t a2)
{
  sub_29B16D47C(v6, a1);
  sub_29B198AC8(v5, v6);
  sub_29A396050(v6);
  sub_29B16D47C(v4, a2);
  sub_29B198AC8(v3, v4);
  sub_29A396050(v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void sub_29B185C7C(const std::string *a1, const std::string *a2)
{
  sub_29B17BC58(&v6, a1);
  sub_29B1988FC(v5, &v6);
  sub_29A1855F0(&v6);
  sub_29B17BC58(&v4, a2);
  sub_29B1988FC(v3, &v4);
  sub_29A1855F0(&v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

BOOL sub_29B185EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[6] = a1;
  v8[7] = a2;
  v8[8] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return pxrInternal__aapl__pxrReserved__::SdfTupleDimensions::operator==(v8, v7);
}

BOOL sub_29B185F48(void *a1, void *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(v4, &v3);
}

BOOL sub_29B186350(double a1, double a2, double a3, double a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==(v6, v5);
}

BOOL static pxrInternal__aapl__pxrReserved__.PcpNodeReverseIterator.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  *&v12 = a7;
  *(&v12 + 1) = a8;
  v10[4] = v13;
  v10[5] = v14;
  v10[2] = v11;
  v10[3] = v12;
  v10[0] = v13;
  v10[1] = v14;
  v9[0] = v11;
  v9[1] = v12;
  return Overlay::__operatorEqualsEquals(v10, v9);
}

BOOL static pxrInternal__aapl__pxrReserved__.PcpPrimReverseIterator.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  *&v12 = a7;
  *(&v12 + 1) = a8;
  v10[4] = v13;
  v10[5] = v14;
  v10[2] = v11;
  v10[3] = v12;
  v10[0] = v13;
  v10[1] = v14;
  v9[0] = v11;
  v9[1] = v12;
  return Overlay::__operatorEqualsEquals(v10, v9);
}

BOOL static pxrInternal__aapl__pxrReserved__.PcpPropertyReverseIterator.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  *&v12 = a7;
  *(&v12 + 1) = a8;
  v10[4] = v13;
  v10[5] = v14;
  v10[2] = v11;
  v10[3] = v12;
  v10[0] = v13;
  v10[1] = v14;
  v9[0] = v11;
  v9[1] = v12;
  return Overlay::__operatorEqualsEquals(v10, v9);
}

void sub_29B1875A4(uint64_t a1, uint64_t a2)
{
  sub_29B0E8918(v6, a1);
  sub_29B0E89BC(v5, v6);
  sub_29A5B8A54(v6);
  sub_29B0E8918(v4, a2);
  sub_29B0E89BC(v3, v4);
  sub_29A5B8A54(v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void sub_29B1876D0(uint64_t a1, uint64_t a2)
{
  sub_29B0E8918(v6, a1);
  sub_29B0E89BC(v5, v6);
  sub_29A5AAB1C(v6);
  sub_29B0E8918(v4, a2);
  sub_29B0E89BC(v3, v4);
  sub_29A5AAB1C(v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void sub_29B187CAC(const pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a1, const pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v6, a1);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v5, v6);
  sub_29A7A079C(v6);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v4, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v3, v4);
  sub_29A7A079C(v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

BOOL sub_29B1885C8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B188630(__dst, v5);
}

BOOL sub_29B188630(const void *a1, const void *a2)
{
  v7 = a1;
  v6 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::CameraUtilFraming::operator==(__dst, v4);
}

BOOL sub_29B1888BC(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B188924(__dst, v5);
}

BOOL sub_29B188924(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B1889B4(uint64_t a1, uint64_t a2)
{
  sub_29B195168(v8, a1);
  sub_29B195214(v7, v8);
  sub_29B130DF8(v8);
  sub_29B195168(v6, a2);
  sub_29B195214(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B188AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v6 = v8;
  *&v7 = a3;
  *(&v7 + 1) = a4;
  v5 = v7;
  return pxrInternal__aapl__pxrReserved__::operator==(&v6, &v5);
}

BOOL sub_29B188B54(const std::string *a1, const std::string *a2)
{
  sub_29B194EE4(v8, a1);
  sub_29B194F90(v7, v8);
  sub_29B130DF8(v8);
  sub_29B194EE4(v6, a2);
  sub_29B194F90(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B188C28(uint64_t a1, uint64_t a2)
{
  sub_29B194CF8(v8, a1);
  sub_29B194DA4(v7, v8);
  sub_29B130DF8(v8);
  sub_29B194CF8(v6, a2);
  sub_29B194DA4(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B188D04(int a1, int a2)
{
  v4 = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(&v4, &v3);
}

BOOL sub_29B188D68(uint64_t a1, uint64_t a2)
{
  sub_29B194A74(v8, a1);
  sub_29B194B20(v7, v8);
  sub_29B130DF8(v8);
  sub_29B194A74(v6, a2);
  sub_29B194B20(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B1890B8(const std::string *a1, const std::string *a2)
{
  sub_29B193C24(v8, a1);
  sub_29B193CD0(v7, v8);
  sub_29B130DF8(v8);
  sub_29B193C24(v6, a2);
  sub_29B193CD0(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B18918C(uint64_t a1, uint64_t a2)
{
  sub_29B193728(v8, a1);
  sub_29B1937D4(v7, v8);
  sub_29B130DF8(v8);
  sub_29B193728(v6, a2);
  sub_29B1937D4(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B189260(uint64_t a1, uint64_t a2)
{
  sub_29B193204(v8, a1);
  sub_29B1932B0(v7, v8);
  sub_29A0D2850(v8);
  sub_29B193204(v6, a2);
  sub_29B1932B0(v5, v6);
  sub_29A0D2850(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29A0D2850(v5);
  sub_29A0D2850(v7);
  return v3;
}

BOOL sub_29B189334(__int128 *a1, __int128 *a2)
{
  sub_29B193018(v8, a1);
  sub_29B1930C4(v7, v8);
  sub_29AB8B508(v8);
  sub_29B193018(v6, a2);
  sub_29B1930C4(v5, v6);
  sub_29AB8B508(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AB8B508(v5);
  sub_29AB8B508(v7);
  return v3;
}

BOOL sub_29B1894DC(const std::string *a1, const std::string *a2)
{
  sub_29B19295C(v8, a1);
  sub_29B192A08(v7, v8);
  sub_29A0D2850(v8);
  sub_29B19295C(v6, a2);
  sub_29B192A08(v5, v6);
  sub_29A0D2850(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29A0D2850(v5);
  sub_29A0D2850(v7);
  return v3;
}

BOOL sub_29B1895F8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v11 = a1;
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v7 = a1;
  v8 = a2;
  v5 = a3;
  v6 = a4;
  return pxrInternal__aapl__pxrReserved__::operator==(&v7, &v5);
}

BOOL sub_29B18968C(uint64_t a1, uint64_t a2)
{
  sub_29B14E53C(v8, a1);
  sub_29B14E5E8(v7, v8);
  sub_29A4B291C(v8);
  sub_29B14E53C(v6, a2);
  sub_29B14E5E8(v5, v6);
  sub_29A4B291C(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29A4B291C(v5);
  sub_29A4B291C(v7);
  return v3;
}

BOOL sub_29B189760(uint64_t a1, uint64_t a2)
{
  sub_29B14E208(v8, a1);
  sub_29B14E2B4(v7, v8);
  sub_29B14E1A8(v8);
  sub_29B14E208(v6, a2);
  sub_29B14E2B4(v5, v6);
  sub_29B14E1A8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B14E1A8(v5);
  sub_29B14E1A8(v7);
  return v3;
}

BOOL sub_29B18983C(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(&v4, &v3);
}

BOOL sub_29B18997C(int a1, int a2)
{
  v4 = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(&v4, &v3);
}

BOOL sub_29B189AFC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v11 = a1;
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v7 = a1;
  v8 = a2;
  v5 = a3;
  v6 = a4;
  return pxrInternal__aapl__pxrReserved__::operator==(&v7, &v5);
}

BOOL sub_29B189C40(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = *a1;
  BYTE2(v4) = *(a1 + 2);
  HIDWORD(v4) = *(a1 + 4);
  LOWORD(v3) = *a2;
  BYTE2(v3) = *(a2 + 2);
  HIDWORD(v3) = *(a2 + 4);
  return sub_29B189CAC(v4, v3);
}

BOOL sub_29B189CAC(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[0] = a1;
  v4[1] = a2;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(v4, &v3);
}

BOOL sub_29B189CFC(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B189D64(__dst, v5);
}

BOOL sub_29B189D64(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B189E94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *v12 = a1;
  *&v12[8] = a2;
  *&v12[16] = a3;
  *&v12[24] = a4;
  v10[0] = *v12;
  *(v10 + 12) = *&v12[12];
  *v11 = a5;
  *&v11[8] = a6;
  *&v11[16] = a7;
  *&v11[24] = a8;
  v9[0] = *v11;
  *(v9 + 12) = *&v11[12];
  return pxrInternal__aapl__pxrReserved__::operator==(v10, v9);
}

BOOL sub_29B189F14(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B189F7C(__dst, v5);
}

BOOL sub_29B189F7C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B18A03C(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(v4, &v3);
}

BOOL sub_29B18A3C8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18A430(__dst, v5);
}

BOOL sub_29B18A430(const void *a1, const void *a2)
{
  v7 = a1;
  v6 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::HdSamplerParameters::operator==(__dst, v4);
}

BOOL sub_29B18B2FC(_DWORD *a1, _DWORD *a2)
{
  sub_29B149664(v8, a1);
  sub_29B149708(v7, v8);
  sub_29AEC4154(v8);
  sub_29B149664(v6, a2);
  sub_29B149708(v5, v6);
  sub_29AEC4154(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AEC4154(v5);
  sub_29AEC4154(v7);
  return v4;
}

BOOL sub_29B18B490(const void *a1, const void *a2)
{
  sub_29B148F1C(v8, a1);
  sub_29B148FC0(v7, v8);
  sub_29AEFE3B8(v8);
  sub_29B148F1C(v6, a2);
  sub_29B148FC0(v5, v6);
  sub_29AEFE3B8(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AEFE3B8(v5);
  sub_29AEFE3B8(v7);
  return v4;
}

BOOL sub_29B18B618(uint64_t *a1, uint64_t *a2)
{
  sub_29B1489CC(v8, a1);
  sub_29B148A78(v7, v8);
  sub_29AECB604(v8);
  sub_29B1489CC(v6, a2);
  sub_29B148A78(v5, v6);
  sub_29AECB604(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AECB604(v5);
  sub_29AECB604(v7);
  return v3;
}

BOOL sub_29B18B6D0(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18B738(__dst, v5);
}

BOOL sub_29B18B738(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B18B8CC(__int16 a1, __int16 a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(v4, &v3);
}

BOOL sub_29B18B92C(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = *a1;
  BYTE4(v4) = *(a1 + 4);
  LODWORD(v3) = *a2;
  BYTE4(v3) = *(a2 + 4);
  return sub_29B18B978(v4, v3);
}

BOOL sub_29B18B978(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v5 = a1;
  v6 = BYTE4(a1);
  v3 = a2;
  v4 = BYTE4(a2);
  return pxrInternal__aapl__pxrReserved__::operator==(&v5, &v3);
}

BOOL sub_29B18B9F4(_DWORD *a1, _DWORD *a2)
{
  sub_29B12E128(v8, a1);
  sub_29B12E1CC(v7, v8);
  sub_29AEE2740(v8);
  sub_29B12E128(v6, a2);
  sub_29B12E1CC(v5, v6);
  sub_29AEE2740(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AEE2740(v5);
  sub_29AEE2740(v7);
  return v4;
}

BOOL sub_29B18BB94(_DWORD *a1, _DWORD *a2)
{
  sub_29B1470AC(v8, a1);
  sub_29B147150(v7, v8);
  sub_29B147054(v8);
  sub_29B1470AC(v6, a2);
  sub_29B147150(v5, v6);
  sub_29B147054(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B147054(v5);
  sub_29B147054(v7);
  return v4;
}

BOOL sub_29B18BD14(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18BD7C(__dst, v5);
}

BOOL sub_29B18BD7C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B18BDF0(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18BE58(__dst, v5);
}

BOOL sub_29B18BE58(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B18BFBC(uint64_t a1, uint64_t a2)
{
  sub_29B145C5C(v8, a1);
  sub_29B145D00(v7, v8);
  sub_29B0C51A0(v8);
  sub_29B145C5C(v6, a2);
  sub_29B145D00(v5, v6);
  sub_29B0C51A0(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B0C51A0(v5);
  sub_29B0C51A0(v7);
  return v4;
}

void *sub_29B18D5E0(void *a1, void *a2)
{
  sub_29B085B60(a1);
  sub_29B18D5A8(a1, a2);
  sub_29B085B60(a2);
  return a1;
}

uint64_t sub_29B18D620(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 216))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 16) & 0xFE) != 0)
      {
        v3 = (*(a1 + 16) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B18D744(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 27;
  if (a2 > 0xFE)
  {
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[25] = 0;
    result[24] = 0;
    result[26] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdImagingGLRenderParams(uint64_t a1)
{
  v5 = qword_2A14FD158;
  if (!qword_2A14FD158)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD158);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *sub_29B18DA3C(pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2)
{
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(a1);
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *sub_29B18DAB8(pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2)
{
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(a1);
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(a1, a2);
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStTextureIdentifier(uint64_t a1)
{
  v5 = qword_2A14FD160;
  if (!qword_2A14FD160)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD160);
      return v2;
    }
  }

  return v5;
}

__n128 *sub_29B18DCB4(__n128 *a1, __n128 *a2)
{
  sub_29ADD2F38(a1);
  sub_29B18DC7C(a1, a2);
  sub_29ADD2F38(a2);
  return a1;
}

uint64_t sub_29B18DCF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 72))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 48) & 0xFE) != 0)
      {
        v3 = (*(a1 + 48) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B18DE18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0xFE)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 48) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBindingRequest(uint64_t a1)
{
  v5 = qword_2A14FD168;
  if (!qword_2A14FD168)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD168);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdSceneIndexPrimView.const_iterator(uint64_t a1)
{
  v5 = qword_2A14FD170;
  if (!qword_2A14FD170)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD170);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdSceneIndexPrimView(uint64_t a1)
{
  v5 = qword_2A14FD178;
  if (!qword_2A14FD178)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD178);
      return v2;
    }
  }

  return v5;
}

void *sub_29B18E5C0(void *a1, void *a2)
{
  sub_29AC43430(a1);
  sub_29B18E588(a1, a2);
  sub_29AC43430(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNetwork2(uint64_t a1)
{
  v5 = qword_2A14FD180;
  if (!qword_2A14FD180)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD180);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B18E77C(uint64_t a1, uint64_t a2)
{
  sub_29AC433D8(a1);
  sub_29B18E744(a1, a2);
  sub_29AC433D8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialConnection2(uint64_t a1)
{
  v5 = qword_2A14FD188;
  if (!qword_2A14FD188)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD188);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B18E948(uint64_t a1, uint64_t a2)
{
  sub_29ACC9478(a1);
  sub_29B18E910(a1, a2);
  sub_29ACC9478(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNode(uint64_t a1)
{
  v5 = qword_2A14FD190;
  if (!qword_2A14FD190)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD190);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B18EB04(uint64_t a1, uint64_t a2)
{
  sub_29ACC94DC(a1);
  sub_29B18EACC(a1, a2);
  sub_29ACC94DC(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialRelationship(uint64_t a1)
{
  v5 = qword_2A14FD198;
  if (!qword_2A14FD198)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD198);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B18EC8C(uint64_t a1, uint64_t a2)
{
  sub_29B18EBF4(a1);
  sub_29B18EC54(a1, a2);
  return a1;
}

uint64_t sub_29B18ED08(uint64_t a1, uint64_t a2)
{
  sub_29B18EBF4(a1);
  sub_29B18EC54(a1, a2);
  sub_29B18EBF4(a2);
  return a1;
}

uint64_t sub_29B18ED50(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[80])
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*a1 & 0xFE) != 0)
      {
        v3 = (*a1 + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B18EE74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0xFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDataSourceLocatorSet.IntersectionIterator(uint64_t a1)
{
  v5 = qword_2A14FD1A0;
  if (!qword_2A14FD1A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1A0);
      return v2;
    }
  }

  return v5;
}

void *sub_29B18F160(void *a1, void *a2)
{
  sub_29B12EA40(a1);
  sub_29B12EB3C(a1, a2);
  sub_29B12EA40(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdExtComputationOutputDescriptor(uint64_t a1)
{
  v5 = qword_2A14FD1A8;
  if (!qword_2A14FD1A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1A8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B18F354(uint64_t a1, uint64_t a2)
{
  sub_29ACC6B28(a1);
  sub_29B18F31C(a1, a2);
  sub_29ACC6B28(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdExtComputationInputDescriptor(uint64_t a1)
{
  v5 = qword_2A14FD1B0;
  if (!qword_2A14FD1B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1B0);
      return v2;
    }
  }

  return v5;
}

__n128 *sub_29B18F548(__n128 *a1, __n128 *a2)
{
  sub_29ACC1490(a1);
  sub_29B18F510(a1, a2);
  sub_29ACC1490(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdExtComputationPrimvarDescriptor(uint64_t a1)
{
  v5 = qword_2A14FD1B8;
  if (!qword_2A14FD1B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1B8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B18F77C(uint64_t a1, uint64_t a2)
{
  sub_29B18F638(a1);
  sub_29B18F744(a1, a2);
  sub_29B18F638(a2);
  return a1;
}

uint64_t sub_29B18F7BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 320))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 8) & 0xFE) != 0)
      {
        v3 = (*(a1 + 8) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B18F8E0(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 40;
  if (a2 > 0xFE)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdModelDrawMode(uint64_t a1)
{
  v5 = qword_2A14FD1C0;
  if (!qword_2A14FD1C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1C0);
      return v2;
    }
  }

  return v5;
}

void *sub_29B18FD10(void *a1, void *a2)
{
  sub_29B18FBDC(a1);
  sub_29B18FCD8(a1, a2);
  sub_29B18FBDC(a2);
  return a1;
}

uint64_t sub_29B18FD50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 32))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B18FE98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPrimvarDescriptor(uint64_t a1)
{
  v5 = qword_2A14FD1C8;
  if (!qword_2A14FD1C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1C8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B190110(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 12))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B190260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 > 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDisplayStyle(uint64_t a1)
{
  v5 = qword_2A14FD1D0;
  if (!qword_2A14FD1D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1D0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdVec4f_2_10_10_10_REV(uint64_t a1)
{
  v5 = qword_2A14FD1D8;
  if (!qword_2A14FD1D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1D8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B190570(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 36))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 24) & 0xFE) != 0)
      {
        v3 = (*(a1 + 24) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B190694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0xFE)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 24) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdSamplerParameters(uint64_t a1)
{
  v5 = qword_2A14FD1E0;
  if (!qword_2A14FD1E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1E0);
      return v2;
    }
  }

  return v5;
}

__n128 sub_29B190918(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  return result;
}

uint64_t sub_29B19092C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 20))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 16) & 0xFE) != 0)
      {
        v3 = (*(a1 + 16) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B190A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 16) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderBufferDescriptor(uint64_t a1)
{
  v5 = qword_2A14FD1E8;
  if (!qword_2A14FD1E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1E8);
      return v2;
    }
  }

  return v5;
}

void *sub_29B190DF8(void *a1, uint64_t a2)
{
  sub_29AB8FA10(a1);
  sub_29B190DC0(a1, a2);
  sub_29AB8FA10(a2);
  return a1;
}

uint64_t sub_29B190E38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 352))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 48) & 0xFE) != 0)
      {
        v3 = (*(a1 + 48) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B190F5C(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 44;
  if (a2 > 0xFE)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiGraphicsPipelineDesc(uint64_t a1)
{
  v5 = qword_2A14FD1F0;
  if (!qword_2A14FD1F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1F0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiGraphicsShaderConstantsDesc(uint64_t a1)
{
  v5 = qword_2A14FD1F8;
  if (!qword_2A14FD1F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1F8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiDepthStencilState(uint64_t a1)
{
  v5 = qword_2A14FD200;
  if (!qword_2A14FD200)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD200);
      return v2;
    }
  }

  return v5;
}

__n128 sub_29B191380(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t sub_29B191394(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 28))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B191474(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3)
    {
      *(result + 28) = 1;
    }
  }

  else if (a3)
  {
    *(result + 28) = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiStencilState(uint64_t a1)
{
  v5 = qword_2A14FD208;
  if (!qword_2A14FD208)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD208);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B1916F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 16) & 0xFE) != 0)
      {
        v3 = (*(a1 + 16) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B191818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiRasterizationState(uint64_t a1)
{
  v5 = qword_2A14FD210;
  if (!qword_2A14FD210)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD210);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMultiSampleState(uint64_t a1)
{
  v5 = qword_2A14FD218;
  if (!qword_2A14FD218)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD218);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B191C88(uint64_t a1, uint64_t a2)
{
  sub_29B191B44(a1);
  sub_29B191C50(a1, a2);
  sub_29B191B44(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiVertexBufferDesc(uint64_t a1)
{
  v5 = qword_2A14FD220;
  if (!qword_2A14FD220)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD220);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiVertexAttributeDesc(uint64_t a1)
{
  v5 = qword_2A14FD228;
  if (!qword_2A14FD228)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD228);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComputeCmdsDesc(uint64_t a1)
{
  v5 = qword_2A14FD230;
  if (!qword_2A14FD230)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD230);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B191FEC(uint64_t a1, uint64_t a2)
{
  sub_29B191EA8(a1);
  sub_29B191FB4(a1, a2);
  sub_29B191EA8(a2);
  return a1;
}

uint64_t sub_29B19202C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 368))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 360) & 0xFE) != 0)
      {
        v3 = (*(a1 + 360) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B192150(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 46;
  if (a2 > 0xFE)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[45] = 0;
    result[44] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 360) = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionDesc(uint64_t a1)
{
  v5 = qword_2A14FD238;
  if (!qword_2A14FD238)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD238);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B19244C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v8 = ((a2 + 1) >> 8) + 1;
    v9 = 1;
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v9 = v2;
    }

    if (v9 == 1)
    {
      v7 = a1[1];
    }

    else
    {
      v7 = v9 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v7)
    {
      v6 = (*a1 | ((v7 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v4 = *a1;
      v5 = -1;
      if ((v4 & 0xFFFFFFFE) != 0)
      {
        v5 = v4 & 1 | ((v4 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v6 = v5;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

_BYTE *sub_29B1925E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionFragmentDesc(uint64_t a1)
{
  v5 = qword_2A14FD240;
  if (!qword_2A14FD240)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD240);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionComputeDesc(uint64_t a1)
{
  v5 = qword_2A14FD248;
  if (!qword_2A14FD248)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD248);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B192994(std::string *a1, const std::string *a2)
{
  sub_29A0D2850(a1);
  sub_29B19295C(a1, a2);
  return a1;
}

uint64_t sub_29B192A40(uint64_t a1, uint64_t a2)
{
  sub_29A0D2850(a1);
  sub_29B192A08(a1, a2);
  sub_29A0D2850(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc.Member(uint64_t a1)
{
  v5 = qword_2A14FD250;
  if (!qword_2A14FD250)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD250);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B192C44(uint64_t a1, uint64_t a2)
{
  sub_29ADC20F8(a1);
  sub_29B192C0C(a1, a2);
  sub_29ADC20F8(a2);
  return a1;
}

uint64_t sub_29B192C84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 104))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B192D64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    if (a3)
    {
      *(result + 104) = 1;
    }
  }

  else if (a3)
  {
    *(result + 104) = 0;
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc(uint64_t a1)
{
  v5 = qword_2A14FD258;
  if (!qword_2A14FD258)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD258);
      return v2;
    }
  }

  return v5;
}

char *sub_29B193050(char *a1, __int128 *a2)
{
  sub_29AB8B508(a1);
  sub_29B193018(a1, a2);
  return a1;
}

uint64_t sub_29B1930FC(uint64_t a1, uint64_t a2)
{
  sub_29AB8B508(a1);
  sub_29B1930C4(a1, a2);
  sub_29AB8B508(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamDesc(uint64_t a1)
{
  v5 = qword_2A14FD260;
  if (!qword_2A14FD260)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD260);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B19323C(uint64_t a1, uint64_t a2)
{
  sub_29A0D2850(a1);
  sub_29B193204(a1, a2);
  return a1;
}

uint64_t sub_29B1932E8(uint64_t a1, uint64_t a2)
{
  sub_29A0D2850(a1);
  sub_29B1932B0(a1, a2);
  sub_29A0D2850(a2);
  return a1;
}

uint64_t sub_29B193328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 64))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 60);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B193470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 60) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionBufferDesc(uint64_t a1)
{
  v5 = qword_2A14FD268;
  if (!qword_2A14FD268)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD268);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B193760(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B193728(a1, a2);
  return a1;
}

std::string *sub_29B19380C(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B1937D4(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t sub_29B19384C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 48) & 0xFE) != 0)
      {
        v3 = (*(a1 + 48) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B193970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTextureDesc(uint64_t a1)
{
  v5 = qword_2A14FD270;
  if (!qword_2A14FD270)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD270);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B193C5C(std::string *a1, const std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B193C24(a1, a2);
  return a1;
}

std::string *sub_29B193D08(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B193CD0(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t sub_29B193D48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 64))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 52);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B193E90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 52) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSamplerDesc(uint64_t a1)
{
  v5 = qword_2A14FD278;
  if (!qword_2A14FD278)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD278);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B194244(uint64_t a1, uint64_t a2)
{
  sub_29ADE69D4(a1);
  sub_29B19420C(a1, a2);
  sub_29ADE69D4(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiResourceBindingsDesc(uint64_t a1)
{
  v5 = qword_2A14FD280;
  if (!qword_2A14FD280)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD280);
      return v2;
    }
  }

  return v5;
}

void *sub_29B194448(void *a1, void *a2)
{
  sub_29ABA9C7C(a1);
  sub_29B194410(a1, a2);
  sub_29ABA9C7C(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureBindDesc(uint64_t a1)
{
  v5 = qword_2A14FD288;
  if (!qword_2A14FD288)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD288);
      return v2;
    }
  }

  return v5;
}

void *sub_29B19464C(void *a1, void *a2)
{
  sub_29ADEB844(a1);
  sub_29B194614(a1, a2);
  sub_29ADEB844(a2);
  return a1;
}

uint64_t sub_29B19468C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 88))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 84) & 0xFE) != 0)
      {
        v3 = (*(a1 + 84) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B1947B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    if (a3 > 0xFE)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 84) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBufferBindDesc(uint64_t a1)
{
  v5 = qword_2A14FD290;
  if (!qword_2A14FD290)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD290);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B194AAC(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B194A74(a1, a2);
  return a1;
}

std::string *sub_29B194B58(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B194B20(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComputePipelineDesc(uint64_t a1)
{
  v5 = qword_2A14FD298;
  if (!qword_2A14FD298)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD298);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComputeShaderConstantsDesc(uint64_t a1)
{
  v5 = qword_2A14FD2A0;
  if (!qword_2A14FD2A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2A0);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B194D30(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B194CF8(a1, a2);
  return a1;
}

std::string *sub_29B194DDC(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B194DA4(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureViewDesc(uint64_t a1)
{
  v5 = qword_2A14FD2A8;
  if (!qword_2A14FD2A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2A8);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B194F1C(std::string *a1, const std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B194EE4(a1, a2);
  return a1;
}

std::string *sub_29B194FC8(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B194F90(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureDesc(uint64_t a1)
{
  v5 = qword_2A14FD2B0;
  if (!qword_2A14FD2B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2B0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComponentMapping(uint64_t a1)
{
  v5 = qword_2A14FD2B8;
  if (!qword_2A14FD2B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2B8);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B1951A0(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B195168(a1, a2);
  return a1;
}

std::string *sub_29B19524C(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B195214(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBufferDesc(uint64_t a1)
{
  v5 = qword_2A14FD2C0;
  if (!qword_2A14FD2C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2C0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsTimeCodeRange.const_iterator(uint64_t a1)
{
  v5 = qword_2A14FD2C8;
  if (!qword_2A14FD2C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2C8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B1954E8(uint64_t a1, uint64_t a2)
{
  sub_29A887EB0(a1);
  sub_29B1954B0(a1, a2);
  sub_29A887EB0(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsDependencyInfo(uint64_t a1)
{
  v5 = qword_2A14FD2D0;
  if (!qword_2A14FD2D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2D0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelSkeletonQuery(uint64_t a1)
{
  v5 = qword_2A14FD2D8;
  if (!qword_2A14FD2D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2D8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B19584C(uint64_t a1, uint64_t a2)
{
  sub_29A87AF04(a1);
  sub_29B195814(a1, a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelInbetweenShape(uint64_t a1)
{
  v5 = qword_2A14FD2E0;
  if (!qword_2A14FD2E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2E0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelTopology(uint64_t a1)
{
  v5 = qword_2A14FD2E8;
  if (!qword_2A14FD2E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2E8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelAnimQuery(uint64_t a1)
{
  v5 = qword_2A14FD2F0;
  if (!qword_2A14FD2F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2F0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelAnimMapper(uint64_t a1)
{
  v5 = qword_2A14FD2F8;
  if (!qword_2A14FD2F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2F8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B19607C(uint64_t a1, uint64_t a2)
{
  sub_29A7D85CC(a1);
  sub_29B195814(a1, a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeOutput(uint64_t a1)
{
  v5 = qword_2A14FD300;
  if (!qword_2A14FD300)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD300);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B1961D8(uint64_t a1, uint64_t a2)
{
  sub_29A7CCF50(a1);
  sub_29B195814(a1, a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeInput(uint64_t a1)
{
  v5 = qword_2A14FD308;
  if (!qword_2A14FD308)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD308);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectionSourceInfo(uint64_t a1)
{
  v5 = qword_2A14FD310;
  if (!qword_2A14FD310)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD310);
      return v2;
    }
  }

  return v5;
}

void **sub_29B1965A8(void **a1, const pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(a1);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(a1, a2);
  return a1;
}

void **sub_29B196624(void **a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(a1);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(a1, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdZipFile.Iterator(uint64_t a1)
{
  v5 = qword_2A14FD318;
  if (!qword_2A14FD318)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD318);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::UsdZipFile *sub_29B19671C(pxrInternal__aapl__pxrReserved__::UsdZipFile *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(a1);
  sub_29B12F07C(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdZipFile *sub_29B196788(pxrInternal__aapl__pxrReserved__::UsdZipFile *a1, pxrInternal__aapl__pxrReserved__::UsdZipFile *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(a1);
  sub_29B12F07C(a1, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdZipFile(uint64_t a1)
{
  v5 = qword_2A14FD320;
  if (!qword_2A14FD320)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD320);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B1968A0(uint64_t a1, uint64_t a2)
{
  sub_29A58BBB4(a1);
  sub_29B0ECF14(a1, a2);
  return a1;
}

uint64_t sub_29B19690C(uint64_t a1, uint64_t a2)
{
  sub_29A58BBB4(a1);
  sub_29B0ED130(a1, a2);
  sub_29A58BBB4(a2);
  return a1;
}

uint64_t sub_29B19694C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 32))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 28);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B196A94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 28) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimRange.iterator(uint64_t a1)
{
  v5 = qword_2A14FD328;
  if (!qword_2A14FD328)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD328);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B196E50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*a1))
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B196F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdEditTarget(uint64_t a1)
{
  v5 = qword_2A14FD330;
  if (!qword_2A14FD330)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD330);
      return v2;
    }
  }

  return v5;
}

void **sub_29B19732C(void **a1, void **a2)
{
  sub_29A559EA8(a1);
  sub_29B1972F4(a1, a2);
  sub_29A559EA8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpInstanceKey(uint64_t a1)
{
  v5 = qword_2A14FD338;
  if (!qword_2A14FD338)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD338);
      return v2;
    }
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *sub_29B197484(pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *a1, void *a2)
{
  sub_29A464E40(a1);
  sub_29B19744C(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *sub_29B197530(pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *a1, pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *a2)
{
  sub_29A464E40(a1);
  sub_29B1974F8(a1, a2);
  sub_29A464E40(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpExpressionVariables(uint64_t a1)
{
  v5 = qword_2A14FD340;
  if (!qword_2A14FD340)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD340);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpPropertyReverseIterator(uint64_t a1)
{
  v5 = qword_2A14FD348;
  if (!qword_2A14FD348)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD348);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpPrimReverseIterator(uint64_t a1)
{
  v5 = qword_2A14FD350;
  if (!qword_2A14FD350)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD350);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNodeReverseIterator(uint64_t a1)
{
  v5 = qword_2A14FD358;
  if (!qword_2A14FD358)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD358);
      return v2;
    }
  }

  return v5;
}

_DWORD *sub_29B197850(_DWORD *a1, _DWORD *a2)
{
  sub_29A4334C0(a1);
  sub_29B197818(a1, a2);
  return a1;
}

_DWORD *sub_29B197904(_DWORD *a1, _DWORD *a2)
{
  sub_29A4334C0(a1);
  sub_29B1978CC(a1, a2);
  sub_29A4334C0(a2);
  return a1;
}

uint64_t sub_29B19794C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 72))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 52) & 0xFE) != 0)
      {
        v3 = (*(a1 + 52) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B197A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0xFE)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 52) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpDependency(uint64_t a1)
{
  v5 = qword_2A14FD360;
  if (!qword_2A14FD360)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD360);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNodeRef_ChildrenReverseIterator(uint64_t a1)
{
  v5 = qword_2A14FD368;
  if (!qword_2A14FD368)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD368);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNodeRef_ChildrenIterator(uint64_t a1)
{
  v5 = qword_2A14FD370;
  if (!qword_2A14FD370)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD370);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B197E74(uint64_t a1, uint64_t a2)
{
  sub_29A476E94(a1);
  sub_29B113450(a1, a2);
  return a1;
}

uint64_t sub_29B197F28(uint64_t a1, uint64_t a2)
{
  sub_29A476E94(a1);
  sub_29B197EF0(a1, a2);
  sub_29A476E94(a2);
  return a1;
}

uint64_t sub_29B197F70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 36) & 0xFE) != 0)
      {
        v3 = (*(a1 + 36) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B198094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 36) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpMapFunction(uint64_t a1)
{
  v5 = qword_2A14FD378;
  if (!qword_2A14FD378)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD378);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariableExpression.EmptyList(uint64_t a1)
{
  v5 = qword_2A14FD380;
  if (!qword_2A14FD380)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD380);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariableExpression(uint64_t a1)
{
  v5 = qword_2A14FD388;
  if (!qword_2A14FD388)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD388);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B19863C(uint64_t a1, uint64_t a2)
{
  sub_29B1985A4(a1);
  sub_29B198604(a1, a2);
  return a1;
}

uint64_t sub_29B1986E8(uint64_t a1, uint64_t a2)
{
  sub_29B1985A4(a1);
  sub_29B1986B0(a1, a2);
  sub_29B1985A4(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfCopySpecsValueEdit(uint64_t a1)
{
  v5 = qword_2A14FD390;
  if (!qword_2A14FD390)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD390);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfTupleDimensions(uint64_t a1)
{
  v5 = qword_2A14FD398;
  if (!qword_2A14FD398)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD398);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B198888(std::string *a1, const std::string *a2)
{
  sub_29A1855F0(a1);
  sub_29B17BC58(a1, a2);
  return a1;
}

uint64_t sub_29B198934(uint64_t a1, uint64_t a2)
{
  sub_29A1855F0(a1);
  sub_29B1988FC(a1, a2);
  sub_29A1855F0(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg(uint64_t a1)
{
  v5 = qword_2A14FD3A0;
  if (!qword_2A14FD3A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3A0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B198A54(uint64_t a1, uint64_t a2)
{
  sub_29A396050(a1);
  sub_29B16D47C(a1, a2);
  return a1;
}

_DWORD *sub_29B198B00(_DWORD *a1, uint64_t a2)
{
  sub_29A396050(a1);
  sub_29B198AC8(a1, a2);
  sub_29A396050(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression.ExpressionReference(uint64_t a1)
{
  v5 = qword_2A14FD3A8;
  if (!qword_2A14FD3A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3A8);
      return v2;
    }
  }

  return v5;
}

std::string *sub_29B198C08(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B16DD04(a1, a2);
  return a1;
}

std::string *sub_29B198CB4(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B198C7C(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern.Component(uint64_t a1)
{
  v5 = qword_2A14FD3B0;
  if (!qword_2A14FD3B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3B0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B198E80(uint64_t a1, uint64_t a2)
{
  sub_29A396444(a1);
  sub_29B198E48(a1, a2);
  sub_29A396444(a2);
  return a1;
}

uint64_t sub_29B198EC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 64))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}