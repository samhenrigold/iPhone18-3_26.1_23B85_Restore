__CFString *NSStringFromMemoryLevel(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_279D65D28[a1];
  }
}

uint64_t TSUFlushableObjectInfo::TSUFlushableObjectInfo(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 8) = [a2 reloadCost];
  }

  *(a1 + 12) = 1;
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 12) = [a2 flushCost];
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = 1;
  return a1;
}

void std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(a1, *a2);
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *(*a2 + 20);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3[4] + 20);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(uint64_t **a1, const TSUFlushableObjectInfo **a2)
{
  v3 = std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::find<TSUFlushableObjectInfo *>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::find<TSUFlushableObjectInfo *>(uint64_t a1, const TSUFlushableObjectInfo **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = TSUFlushableObjectInfo::compareFlushingOrder(*(v3 + 32), *a2);
    if (v6 != -1)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (v6 == -1));
  }

  while (v3);
  if (v5 == v2 || TSUFlushableObjectInfo::compareFlushingOrder(*a2, *(v5 + 32)) == -1)
  {
    return v2;
  }

  return v5;
}

uint64_t TSUFlushableObjectInfo::compareFlushingOrder(TSUFlushableObjectInfo *this, const TSUFlushableObjectInfo *a2)
{
  if (this == a2)
  {
    return 0;
  }

  var3 = this->var3;
  v3 = a2->var3;
  if (var3 > v3)
  {
    return -1;
  }

  if (var3 < v3)
  {
    return 1;
  }

  var1 = this->var1;
  v6 = 1.0;
  if (var1 == 1)
  {
    v7 = 1.5;
  }

  else
  {
    v7 = 1.0;
  }

  if (!var1)
  {
    v7 = 2.0;
  }

  if (!this->var2)
  {
    v7 = v7 * 1.5;
  }

  v8 = a2->var1;
  if (v8 == 1)
  {
    v6 = 1.5;
  }

  if (!v8)
  {
    v6 = 2.0;
  }

  if (!a2->var2)
  {
    v6 = v6 * 1.5;
  }

  v9 = v7 * this->var4[1];
  v10 = v6 * a2->var4[1];
  if (v9 < v10)
  {
    return -1;
  }

  if (v9 > v10)
  {
    return 1;
  }

  v11 = v7 * this->var4[0];
  v12 = v6 * a2->var4[0];
  if (v11 < v12)
  {
    return -1;
  }

  return v11 > v12;
}

uint64_t *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::find<TSUFlushableObjectInfo *>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::find<TSUFlushableObjectInfo *>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(*a2 + 20);
  v6 = v2;
  do
  {
    v7 = *(*(v3 + 32) + 20);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < *(*(v6 + 32) + 20))
  {
    return v2;
  }

  return v6;
}

void *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(uint64_t **a1, TSUFlushableObjectInfo **a2, void *a3)
{
  v3 = *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__find_equal<TSUFlushableObjectInfo *>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__find_equal<TSUFlushableObjectInfo *>(uint64_t a1, void *a2, TSUFlushableObjectInfo **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (TSUFlushableObjectInfo::compareFlushingOrder(*a3, v4[4]) != -1)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (TSUFlushableObjectInfo::compareFlushingOrder(v7[4], *a3) != -1)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t TSUSupportsTextInteraction(uint64_t a1, uint64_t a2)
{
  if (TSUSupportsTextInteraction_onceToken != -1)
  {
    TSUSupportsTextInteraction_cold_1();
  }

  return TSUSupportsTextInteraction_supportTextInteraction;
}

void *__TSUSupportsTextInteraction_block_invoke()
{
  v0 = objc_opt_class();
  v1 = TSUDynamicCast(v0, [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")]);
  if (v1)
  {
    result = [v1 BOOLValue];
  }

  else
  {
    result = ([objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")] ^ 1);
  }

  TSUSupportsTextInteraction_supportTextInteraction = result;
  return result;
}

void *TSUFindFirstResponderView(void *a1)
{
  v1 = a1;
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 isFirstResponder];
  if (!v1 || (v2 & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v1 subviews];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          ResponderView = TSUFindFirstResponderView(*(*(&v10 + 1) + 8 * i));
          if (ResponderView)
          {
            return ResponderView;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v1 = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

BOOL TSUPhoneUI()
{
  if (p_TSUIdiom_sIdiomInitialized == 1)
  {
    v0 = p_TSUIdiom_sIdiom;
  }

  else
  {
    v0 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
    p_TSUIdiom_sIdiom = v0;
    p_TSUIdiom_sIdiomInitialized = 1;
  }

  return v0 == 0;
}

BOOL TSUPadUI()
{
  if (p_TSUIdiom_sIdiomInitialized == 1)
  {
    v0 = p_TSUIdiom_sIdiom;
  }

  else
  {
    v0 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
    p_TSUIdiom_sIdiom = v0;
    p_TSUIdiom_sIdiomInitialized = 1;
  }

  return v0 == 1;
}

BOOL TSUPhoneUI568H()
{
  if (p_TSUIdiom_sIdiomInitialized == 1)
  {
    if (p_TSUIdiom_sIdiom)
    {
      return 0;
    }
  }

  else
  {
    p_TSUIdiom_sIdiom = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
    p_TSUIdiom_sIdiomInitialized = 1;
    if (p_TSUIdiom_sIdiom)
    {
      return 0;
    }
  }

  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  return v1 == 568.0;
}

BOOL TSUPhoneUI480H()
{
  if (p_TSUIdiom_sIdiomInitialized == 1)
  {
    if (p_TSUIdiom_sIdiom)
    {
      return 0;
    }
  }

  else
  {
    p_TSUIdiom_sIdiom = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
    p_TSUIdiom_sIdiomInitialized = 1;
    if (p_TSUIdiom_sIdiom)
    {
      return 0;
    }
  }

  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  return v1 == 480.0;
}

uint64_t TSUPadIsFirstGen()
{
  if ((TSUPadIsFirstGen_sIsFirstGenInitialized & 1) == 0)
  {
    size = 0;
    sysctlbyname("hw.machine", 0, &size, 0, 0);
    v0 = malloc_type_malloc(size, 0x88CA2CCAuLL);
    sysctlbyname("hw.machine", v0, &size, 0, 0);
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v0];
    free(v0);
    if ([v1 isEqualToString:{@"iPad1, 1"}])
    {
      TSUPadIsFirstGen_sIsFirstGen = 1;
    }

    TSUPadIsFirstGen_sIsFirstGenInitialized = 1;
  }

  return TSUPadIsFirstGen_sIsFirstGen;
}

double TSUStatusBarHeight()
{
  [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v1 = v0;
  v3 = v2;
  return fminf(v1, v3);
}

void TSUScreenScale()
{
  if (*&TSUScreenScale_screenScale < 0.0)
  {
    [objc_msgSend(MEMORY[0x277D759A0] mainScreen];
    TSUScreenScale_screenScale = v0;
  }
}

__CFString *NSStringFromUIGestureRecognizerState(unint64_t a1)
{
  if (a1 < 5)
  {
    return off_279D65D68[a1];
  }

  if (a1 == 5)
  {
    return @"UIGestureRecognizerStateFailed";
  }

  return @"#Unknown UIGestureRecognizerState#";
}

double TSUMaxTextureSize(uint64_t a1, uint64_t a2)
{
  if (TSUMaxTextureSize_s_maxTextureSizeOnce != -1)
  {
    TSUMaxTextureSize_cold_1();
  }

  return *&TSUMaxTextureSize_s_maxTextureSize;
}

uint64_t __TSUMaxTextureSize_block_invoke()
{
  result = TSUPadIsFirstGen();
  v1 = 4096.0;
  if (result)
  {
    v1 = 2048.0;
  }

  TSUMaxTextureSize_s_maxTextureSize = *&v1;
  return result;
}

void *TSUBuildIndexFromBuildVersion(void *a1)
{
  v16 = 0;
  result = [objc_msgSend(MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([0-9]+)([A-Za-z])([0-9]+)([A-Za-z])?" options:1 error:{&v16), "firstMatchInString:options:range:", a1, 0, 0, objc_msgSend(a1, "length")}];
  if (result)
  {
    v3 = result;
    v4 = [result rangeAtIndex:1];
    v6 = [objc_msgSend(a1 substringWithRange:{v4, v5), "intValue"}];
    v7 = [v3 rangeAtIndex:2];
    v9 = [objc_msgSend(objc_msgSend(a1 substringWithRange:{v7, v8), "uppercaseString"), "characterAtIndex:", 0}];
    v10 = [v3 rangeAtIndex:3];
    v12 = [objc_msgSend(a1 substringWithRange:{v10, v11), "intValue"}];
    v13 = [v3 rangeAtIndex:4];
    v15 = 0;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [objc_msgSend(objc_msgSend(a1 substringWithRange:{v13, v14), "uppercaseString"), "characterAtIndex:", 0}] - 64;
    }

    return (v15 | (32 * (((v9 << 14) + 0x7FFFFFFFFF00000) | (v6 << 19) | v12)));
  }

  return result;
}

void *TSUBuildIndexSetFromString(void *a1)
{
  v21 = 0;
  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([0-9A-Za-z]+)([- options:])? *" error:{1, &v21}];
  v3 = [a1 length];
  v20 = [MEMORY[0x277CCAB58] indexSet];
  if (!v3)
  {
    return v20;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [v2 firstMatchInString:a1 options:0 range:{v4, v3, v20}];
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v8 = [v6 rangeAtIndex:1];
    v10 = [a1 substringWithRange:{v8, v9}];
    v11 = [v7 rangeAtIndex:2];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([0 isEqualToString:@"-"])
      {
        goto LABEL_8;
      }
    }

    else
    {
      v13 = [a1 substringWithRange:{v11, v12}];
      if ([v13 isEqualToString:@"-"])
      {
LABEL_8:
        if (!v5)
        {
          v5 = v10;
        }

        goto LABEL_21;
      }

      if (v13 && ![v13 isEqualToString:{@", "}])
      {
        goto LABEL_21;
      }
    }

    if (v5)
    {
      v15 = TSUBuildIndexFromBuildVersion(v5);
      v16 = TSUBuildIndexFromBuildVersion(v10);
      v5 = 0;
      if (!v15 || !v16 || v16 < v15)
      {
        goto LABEL_21;
      }

      [v20 addIndexesInRange:{v15, v16 - v15 + 1}];
    }

    else
    {
      v14 = TSUBuildIndexFromBuildVersion(v10);
      if (v14)
      {
        [v20 addIndex:v14];
      }
    }

    v5 = 0;
LABEL_21:
    [v7 rangeAtIndex:0];
    v4 += v17;
    v3 -= v17;
  }

  while (v3);
  if (v5)
  {
    v18 = TSUBuildIndexFromBuildVersion(v5);
    if (v18)
    {
      [v20 addIndexesInRange:{v18, 0x7FFFFFFFFFFFFFFELL - v18}];
    }
  }

  return v20;
}

void *TSUProductBuildIndex()
{
  result = TSUProductBuildIndex_s_buildIndex;
  if (!TSUProductBuildIndex_s_buildIndex)
  {
    v1 = TSUProductBuildVersion();
    result = TSUBuildIndexFromBuildVersion(v1);
    TSUProductBuildIndex_s_buildIndex = result;
  }

  return result;
}

uint64_t TSUValidPlatformTags()
{
  result = TSUValidPlatformTags_validPlatforms;
  if (!TSUValidPlatformTags_validPlatforms)
  {
    TSUValidPlatformTags_validPlatforms = [MEMORY[0x277CBEB58] setWithObject:@"ios"];
    p_appendPlatformComponent(TSUValidPlatformTags_validPlatforms, @"-arm");
    v1 = TSUValidPlatformTags_validPlatforms;
    v2 = TSUScreenScale_screenScale;
    if (*&TSUScreenScale_screenScale < 0.0)
    {
      [objc_msgSend(MEMORY[0x277D759A0] mainScreen];
      TSUScreenScale_screenScale = v2;
    }

    if (*&v2 == 2.0)
    {
      v3 = @"@2x";
    }

    else
    {
      v3 = @"@1x";
    }

    p_appendPlatformComponent(v1, v3);
    [TSUValidPlatformTags_validPlatforms addObject:@"default"];
    v4 = TSUValidPlatformTags_validPlatforms;
    return TSUValidPlatformTags_validPlatforms;
  }

  return result;
}

uint64_t p_appendPlatformComponent(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a1);
        }

        [v4 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", *(*(&v10 + 1) + 8 * v8++), a2)}];
      }

      while (v6 != v8);
      v6 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [a1 unionSet:v4];
}

__CFString *TSUPlatformTag()
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v0 = TSUValidPlatformTags();
  v1 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v1)
  {
    return &stru_287DDF830;
  }

  v2 = v1;
  v3 = *v10;
  v4 = &stru_287DDF830;
  do
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v10 != v3)
      {
        objc_enumerationMutation(v0);
      }

      v6 = *(*(&v9 + 1) + 8 * i);
      if (([(__CFString *)v6 isEqualToString:@"default", v9]& 1) == 0)
      {
        v7 = [(__CFString *)v6 length];
        if (v7 > [(__CFString *)v4 length])
        {
          v4 = v6;
        }
      }
    }

    v2 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v2);
  return v4;
}

uint64_t TSUPlatformSpecificStringForBuildIndex(void *a1, uint64_t a2)
{
  v28 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:\\[(ios|ios-sim|ios-sim@1x|ios-sim@2x|ios-arm|ios@2x|mac|mac32|mac64|default)(?:\\:([^\\]]*))?\\])?([^\\[]*)" options:1 error:&v28];
  v5 = [a1 length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [v4 firstMatchInString:a1 options:0 range:{v7, v6}];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = [v8 rangeAtIndex:1];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0;
      }

      else
      {
        v12 = v10;
      }

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      v14 = [a1 substringWithRange:{v12, v13}];
      v15 = [v9 rangeAtIndex:2];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      v19 = [a1 substringWithRange:{v17, v18}];
      v20 = [v9 rangeAtIndex:3];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20;
      }

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      v24 = [a1 substringWithRange:{v22, v23}];
      if (![v14 length] || objc_msgSend(TSUValidPlatformTags(), "containsObject:", v14))
      {
        if (![v19 length])
        {
          return v24;
        }

        v25 = TSUBuildIndexSetFromString(v19);
        if (v25)
        {
          if ([v25 containsIndex:a2])
          {
            return v24;
          }
        }
      }

      [v9 rangeAtIndex:0];
      v7 += v26;
      v6 -= v26;
    }

    while (v6);
  }

  return 0;
}

uint64_t TSUPlatformSpecificString(void *a1)
{
  v2 = TSUProductBuildIndex();

  return TSUPlatformSpecificStringForBuildIndex(a1, v2);
}

NSUInteger NSIntersectionRangeInclusive(NSRange a1, NSRange range1)
{
  if (a1.location != range1.location + range1.length)
  {
    if (a1.location + a1.length == range1.location)
    {
      a1.location = range1.location;
    }

    else
    {
      a1.location = NSIntersectionRange(a1, range1).location;
    }
  }

  return a1.location;
}

unint64_t NSExpandedRange(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a4 + a5;
  if (a4 + a3 >= a1)
  {
    v6 = a4;
  }

  else
  {
    v6 = a1 - a3;
  }

  if (a1 + a2 + a3 < v5)
  {
    v5 = a1 + a2 + a3;
  }

  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

void *TSUCompareWithComparators(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(a3);
      }

      result = (*(*(*(&v8 + 1) + 8 * v7) + 16))();
      if (result)
      {
        break;
      }

      if (v5 == ++v7)
      {
        result = [a3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v5 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t SFUBundle(uint64_t a1, uint64_t a2)
{
  if (SFUBundle_onceToken != -1)
  {
    SFUBundle_cold_1();
  }

  return SFUBundle_sSFUBundle;
}

void *__SFUBundle_block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  SFUBundle_sSFUBundle = result;
  return result;
}

void *SFUMainBundle()
{
  result = SFUMainBundle_sMainBundle;
  if (!SFUMainBundle_sMainBundle)
  {
    result = [MEMORY[0x277CCA8D8] mainBundle];
    SFUMainBundle_sMainBundle = result;
  }

  return result;
}

uint64_t TSUHash(char *a1, uint64_t a2)
{
  for (result = 0xCBF29CE484222325; a2; --a2)
  {
    v4 = *a1++;
    result = 0x100000001B3 * (result ^ v4);
  }

  return result;
}

uint64_t TSUHashWithSeed(char *a1, uint64_t a2, uint64_t a3)
{
  for (; a2; --a2)
  {
    v3 = *a1++;
    a3 = 0x100000001B3 * (a3 ^ v3);
  }

  return a3;
}

void sub_26CB93B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSUMemoryUsed(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v37 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85F48];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 10;
  v2 = task_info(v1, 0x12u, task_info_out, &task_info_outCnt);
  if (!v2)
  {
    return *&task_info_out[3];
  }

  v3 = mach_error_string(v2);
  NSLog(@"Unable to get task information: %s", v3);
  return 0;
}

uint64_t TSUMemoryUsedVirtual(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v38 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85F48];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *task_info_out = 0u;
  v7 = 0u;
  task_info_outCnt = 10;
  v2 = task_info(v1, 0x12u, task_info_out, &task_info_outCnt);
  if (!v2)
  {
    return *&task_info_out[1];
  }

  v3 = mach_error_string(v2);
  NSLog(@"Unable to get task information: %s", v3);
  return 0;
}

vm_size_t TSUMemoryFree()
{
  v0 = MEMORY[0x26D6ABE20]();
  v7 = 0;
  host_info_outCnt = 15;
  host_page_size(v0, &v7);
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  *host_info_out = 0u;
  v1 = host_statistics(v0, 2, host_info_out, &host_info_outCnt);
  if (!v1)
  {
    return v7 * host_info_out[0];
  }

  v2 = mach_error_string(v1);
  NSLog(@"Unable to get information: %s", v2);
  return 0;
}

uint64_t processPointer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];
    v10 = a5;
    v11 = a2[5];
    v12 = a2[6];
    do
    {
      v13 = (a4 + 16 * v5);
      v14 = **v13;
      if (v14)
      {
        v15 = v13[1];
        v16 = v15 < 33 || v14 < v9;
        v17 = !v16 && v14 <= v11;
        if (v17 && v8 >= 1)
        {
          result = v15;
          v20 = v6;
          v21 = v7;
          v22 = v8;
          do
          {
            if (v14 == *v20 && v15 >= *v21)
            {
              *v12 += v15;
            }

            ++v21;
            ++v20;
            --v22;
          }

          while (v22);
        }
      }

      ++v5;
    }

    while (v5 != v10);
  }

  return result;
}

malloc_zone_t *TSULeaksOnCommonClasses()
{
  v12[7] = *MEMORY[0x277D85DE8];
  v9 = 0;
  result = malloc_default_zone();
  if (result)
  {
    v1 = result;
    if (result->introspect)
    {
      introspect = result->introspect;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      do
      {
        Class = objc_getClass((&TSULeaksOnCommonClasses_interestingNames)[v3]);
        *&v11[v3 * 8] = Class;
        if (Class)
        {
          if (v4 >= Class)
          {
            v7 = Class;
          }

          else
          {
            v7 = v4;
          }

          if (v4)
          {
            v4 = v7;
          }

          else
          {
            v4 = Class;
          }

          if (v5 <= Class)
          {
            v8 = Class;
          }

          else
          {
            v8 = v5;
          }

          if (v5)
          {
            v5 = v8;
          }

          else
          {
            v5 = Class;
          }

          Class = class_getInstanceSize(Class);
        }

        *&v10[v3 * 8] = Class;
        ++v3;
      }

      while (v3 != 18);
      v12[0] = &TSULeaksOnCommonClasses_interestingNames;
      v12[1] = v11;
      v12[2] = v10;
      v12[3] = 18;
      v12[4] = v4;
      v12[5] = v5;
      v12[6] = &v9;
      (introspect->enumerator)(*MEMORY[0x277D85F48], v12, 1, v1, localReader, processPointer);
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void TSUDateFormatterInit()
{
  if ((dateFormatterIsInitted & 1) == 0)
  {
    sDateFormatterCache = objc_alloc_init(MEMORY[0x277CBEB38]);
    sDateFormatterLocale = TSUCopyCurrentLocaleWithGregorianCalendar();
    dateFormatterIsInitted = 1;
  }
}

CFLocaleRef TSUCopyCurrentLocaleWithGregorianCalendar()
{
  v0 = CFLocaleCopyCurrent();
  v1 = *MEMORY[0x277CBEE88];
  Value = CFLocaleGetValue(v0, *MEMORY[0x277CBEE88]);
  v3 = *MEMORY[0x277CBEE80];
  v4 = CFStringCompare(Value, *MEMORY[0x277CBEE80], 0);
  v5 = *MEMORY[0x277CBECE8];
  v6 = MEMORY[0x26D6AAE40](v0);
  if (v4)
  {
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v5, v6);
    MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, ComponentsFromLocaleIdentifier);
    CFDictionarySetValue(MutableCopy, v1, v3);
    LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(v5, MutableCopy);
    v10 = CFLocaleCreate(v5, LocaleIdentifierFromComponents);
    CFRelease(v0);
    CFRelease(ComponentsFromLocaleIdentifier);
    CFRelease(MutableCopy);
    v0 = LocaleIdentifierFromComponents;
  }

  else
  {
    v10 = CFLocaleCreate(v5, v6);
  }

  CFRelease(v0);
  return v10;
}

void TSUDateFormatterShutdown()
{
  if (dateFormatterIsInitted == 1)
  {

    CFRelease(sDateFormatterLocale);
    dateFormatterIsInitted = 0;
  }
}

id TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(const __CFLocale *a1)
{
  v2 = a1;
  if (!a1)
  {
    v2 = CFLocaleCopyCurrent();
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = MEMORY[0x26D6AAE40](v2);
  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(v3, v4);
  Length = [(__CFString *)CanonicalLocaleIdentifierFromString rangeOfString:@"@"];
  if (Length == 0x7FFFFFFFFFFFFFFFLL)
  {
    Length = CFStringGetLength(CanonicalLocaleIdentifierFromString);
  }

  v7 = [(__CFString *)CanonicalLocaleIdentifierFromString substringToIndex:Length];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 pathForResource:v7 ofType:@"plist" inDirectory:@"DateTimeFormats"];
  CFRelease(CanonicalLocaleIdentifierFromString);
  if (!v9)
  {
    v10 = MEMORY[0x26D6AAE40](v2);
    v9 = [v8 pathForResource:objc_msgSend(MEMORY[0x277CCACA8] ofType:"stringWithFormat:" inDirectory:{@"fallback-%@", off_279D65DB8[TSUDateComponentOrderingForLocale(v10)]), @"plist", @"DateTimeFormats"}];
    if (!v9)
    {
      v11 = +[TSUAssertionHandler currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFDictionaryRef TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(CFLocaleRef)"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateFormatter.m"), 124, @"Unable to find path for plist containing date time formats!"}];
    }
  }

  v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];
  if (!a1)
  {
    CFRelease(v2);
  }

  return v13;
}

uint64_t TSUDateComponentOrderingForLocale(CFLocaleIdentifier localeIdentifier)
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = CFLocaleCreate(*MEMORY[0x277CBECE8], localeIdentifier);
  v3 = CFDateFormatterCreate(v1, v2, kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
  CFRelease(v2);
  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(v1, @"en_US");
  v5 = CFLocaleCreate(v1, CanonicalLocaleIdentifierFromString);
  CFRelease(CanonicalLocaleIdentifierFromString);
  v6 = CFDateFormatterCreate(v1, v5, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFRelease(v5);
  Format = CFDateFormatterGetFormat(v3);
  CFDateFormatterSetFormat(v6, Format);
  CFRelease(v3);
  v8 = *MEMORY[0x277CBEDF8];
  v9 = TSUGetGMTTimeZone();
  CFDateFormatterSetProperty(v6, v8, v9);
  *&v18.year = 0x402000007CFLL;
  v18.second = 0.0;
  AbsoluteTime = CFGregorianDateGetAbsoluteTime(v18, 0);
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v1, v6, AbsoluteTime);
  CFRelease(v6);
  v12 = [(__CFString *)StringWithAbsoluteTime rangeOfString:@"99"];
  v13 = [(__CFString *)StringWithAbsoluteTime rangeOfString:@"2"];
  v14 = [(__CFString *)StringWithAbsoluteTime rangeOfString:@"4"];
  CFRelease(StringWithAbsoluteTime);
  if (v13 >= v12)
  {
    if (v14 < v12)
    {
      return 1;
    }

    v16 = v14 > v13;
    v17 = 4;
  }

  else
  {
    if (v14 < v13)
    {
      return 0;
    }

    v16 = v14 > v12;
    v17 = 2;
  }

  if (v16)
  {
    return v17 + 1;
  }

  else
  {
    return v17;
  }
}

CFStringRef TSUDateFormatterCreateStringFromDateWithISO8601Format(const __CFDate *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
  v4 = CFDateFormatterCreate(v2, v3, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFRelease(v3);
  CFDateFormatterSetFormat(v4, @"yyyy-MM-dd'T'HH:mm:ssZZ");
  v5 = *MEMORY[0x277CBEDF8];
  v6 = TSUGetGMTTimeZone();
  CFDateFormatterSetProperty(v4, v5, v6);
  StringWithDate = CFDateFormatterCreateStringWithDate(v2, v4, a1);
  CFRelease(v4);
  return StringWithDate;
}

CFTimeZoneRef TSUGetGMTTimeZone()
{
  result = TSUGetGMTTimeZone_sGMTTimeZone;
  if (!TSUGetGMTTimeZone_sGMTTimeZone)
  {
    result = CFTimeZoneCreateWithTimeIntervalFromGMT(*MEMORY[0x277CBECE8], 0.0);
    TSUGetGMTTimeZone_sGMTTimeZone = result;
    if (!result)
    {
      v1 = +[TSUAssertionHandler currentHandler];
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFTimeZoneRef TSUGetGMTTimeZone(void)"];
      [v1 handleFailureInFunction:v2 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateFormatter.m"), 268, @"GMTTimeZone() couldn't create time zone"}];
      return TSUGetGMTTimeZone_sGMTTimeZone;
    }
  }

  return result;
}

CFDateRef TSUDateFormatterCreateDateFromStringWithISO8601Format(const __CFString *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
  v4 = CFDateFormatterCreate(v2, v3, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFRelease(v3);
  CFDateFormatterSetFormat(v4, @"yyyy-MM-dd'T'HH:mm:ssZZ");
  Length = CFStringGetLength(a1);
  v10.location = 0;
  v10.length = Length;
  v6 = CFDateFormatterCreateDateFromString(v2, v4, a1, &v10);
  CFRelease(v4);
  if (v10.location)
  {
    v7 = 0;
  }

  else
  {
    v7 = v10.length == Length;
  }

  v8 = v7;
  if ((v8 & (v6 != 0)) != 0)
  {
    result = v6;
  }

  else
  {
    result = 0;
  }

  if ((v8 & (v6 != 0)) == 0)
  {
    if (v6)
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

__CFString *TSUDateFormatterCopyFormatStringForDateAndTimeStyles(CFDateFormatterStyle a1, CFDateFormatterStyle a2)
{
  v4 = TSUCopyCurrentLocaleWithGregorianCalendar();
  v5 = CFDateFormatterCreate(0, v4, a1, kCFDateFormatterNoStyle);
  v6 = CFDateFormatterCreate(0, v4, kCFDateFormatterNoStyle, a2);
  CFRelease(v4);
  Mutable = CFStringCreateMutable(0, 200);
  Format = CFDateFormatterGetFormat(v5);
  v9 = CFDateFormatterGetFormat(v6);
  CFStringAppend(Mutable, Format);
  if (CFStringGetLength(Format) >= 1 && CFStringGetLength(v9) >= 1)
  {
    CFStringAppend(Mutable, @" ");
  }

  CFStringAppend(Mutable, v9);
  CFRelease(v5);
  CFRelease(v6);
  return Mutable;
}

const __CFString *TSUDateFormatterStringFromDateWithFormat(const __CFDate *a1, const __CFString *a2)
{
  v4 = sDateFormatterCache;
  objc_sync_enter(sDateFormatterCache);
  v5 = [sDateFormatterCache objectForKey:a2];
  if (!v5)
  {
    v5 = CFDateFormatterCreate(0, sDateFormatterLocale, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    v6 = TSUGetGMTTimeZone();
    CFDateFormatterSetProperty(v5, *MEMORY[0x277CBEDF8], v6);
    CFDateFormatterSetFormat(v5, a2);
    [sDateFormatterCache setObject:v5 forKey:a2];
    CFRelease(v5);
  }

  v7 = CFDateFormatterCreateStringWithDate(0, v5, a1);
  objc_sync_exit(v4);
  return v7;
}

CFStringRef TSUShortestCompleteDateTimeFormat()
{
  result = TSUShortestCompleteDateTimeFormat_sFormat;
  if (!TSUShortestCompleteDateTimeFormat_sFormat)
  {
    result = CFDateFormatterCreateDateFormatFromTemplate(0, @"yMdjms", 0, sDateFormatterLocale);
    TSUShortestCompleteDateTimeFormat_sFormat = result;
  }

  return result;
}

CFStringRef TSUShortestCompleteDateOnlyFormat()
{
  result = TSUShortestCompleteDateOnlyFormat_sFormat;
  if (!TSUShortestCompleteDateOnlyFormat_sFormat)
  {
    result = CFDateFormatterCreateDateFormatFromTemplate(0, @"yMd", 0, sDateFormatterLocale);
    TSUShortestCompleteDateOnlyFormat_sFormat = result;
  }

  return result;
}

uint64_t TSUDefaultDateTimeFormat()
{
  result = TSUDefaultDateTimeFormat_sFormat;
  if (!TSUDefaultDateTimeFormat_sFormat)
  {
    v1 = objc_opt_class();
    objc_sync_enter(v1);
    if (!TSUDefaultDateTimeFormat_sFormat)
    {
      v2 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
      __dmb(0xBu);
      TSUDefaultDateTimeFormat_sFormat = v2;
    }

    objc_sync_exit(v1);
    return TSUDefaultDateTimeFormat_sFormat;
  }

  return result;
}

uint64_t TSUGregorianUnitsPresentInFormatString(void *a1)
{
  v2 = [a1 rangeOfString:@"y"];
  v3 = [a1 rangeOfString:@"M"];
  v4 = 2;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 3;
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v2 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
  }

  if ([a1 rangeOfString:@"d"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 |= 4uLL;
  }

  if ([a1 rangeOfString:@"h" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a1, "rangeOfString:options:", @"k", 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 |= 8uLL;
  }

  if ([a1 rangeOfString:@"m"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 |= 0x10uLL;
  }

  if ([a1 rangeOfString:@"s"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v5;
  }

  else
  {
    return v5 | 0x20;
  }
}

CFDateRef TSUCreateDateWithGregorianUnitsSetToDefaultValue(uint64_t a1, void *a2)
{
  v4 = CFTimeZoneCopyDefault();
  v5 = MEMORY[0x26D6AACB0](a1);
  GregorianDate = CFAbsoluteTimeGetGregorianDate(v5, 0);
  v7 = HIDWORD(*&GregorianDate.year);
  v8 = *&GregorianDate.year >> 40;
  Current = CFAbsoluteTimeGetCurrent();
  v10 = *&CFAbsoluteTimeGetGregorianDate(Current, v4);
  v11 = TSUGregorianUnitsPresentInFormatString(a2);
  v12 = v11;
  if ((v11 & 7) != 0)
  {
    if (v11)
    {
      LODWORD(v10) = GregorianDate.year;
    }

    if ((v11 & 2) == 0)
    {
      LOBYTE(v7) = 1;
    }

    if ((v11 & 4) == 0)
    {
      LOBYTE(v8) = 1;
    }
  }

  else if (v11)
  {
    v8 = v10 >> 40;
    v7 = HIDWORD(v10);
  }

  else
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CFDateRef TSUCreateDateWithGregorianUnitsSetToDefaultValue(CFDateRef, CFStringRef)"}];
    [v10 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateFormatter.m"), 380, @"this line must not be reached"}];
    LODWORD(v10) = GregorianDate.year;
  }

  if (v12 >= 0x20)
  {
    v14.second = GregorianDate.second;
  }

  else
  {
    v14.second = 0.0;
  }

  v15 = *MEMORY[0x277CBECE8];
  *&v14.year = *&GregorianDate.year & ((v12 << 59) >> 63) & 0xFF00000000000000 | *&GregorianDate.year & ((v12 << 60) >> 63) & 0xFF000000000000 | (v8 << 40) | (v7 << 32) | v10;
  AbsoluteTime = CFGregorianDateGetAbsoluteTime(v14, 0);
  v17 = CFDateCreate(v15, AbsoluteTime);
  CFRelease(v4);
  return v17;
}

uint64_t TSUDateComponentOrderingForCurrentLocale()
{
  v0 = CFLocaleCopyCurrent();
  v1 = MEMORY[0x26D6AAE40]();
  v2 = TSUDateComponentOrderingForLocale(v1);
  CFRelease(v0);
  return v2;
}

uint64_t TSUDateComponentOrderingForNonCachedCurrentLocale()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = MEMORY[0x26D6AAE40]();
  v2 = TSUDateComponentOrderingForLocale(v1);
  CFRelease(v0);
  return v2;
}

id TSUCreateArrayOfDateFormatStringsForLocale(const __CFLocale *a1)
{
  v1 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(a1);
  v2 = [v1 objectForKey:TSUDateFormatterDateTimeFormatInfoAcceptedDateFormats];

  return v2;
}

id TSUCreateArrayOfTimeFormatStringsForLocale(const __CFLocale *a1)
{
  v1 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(a1);
  v2 = [v1 objectForKey:TSUDateFormatterDateTimeFormatInfoAcceptedTimeFormats];

  return v2;
}

__CFDate *TSUCreateDateFromStringWithPreferredFormat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = [[TSUDateParser alloc] initWithLocale:a2];
    v10 = [(TSUDateParser *)v9 newDateFromString:a1 preferredFormatString:a3 successfulFormatString:a4 tryAggressiveFormats:a5];
  }

  else
  {
    v11 = [+[TSUDateParserLibrary sharedDateParserLibrary](TSUDateParserLibrary "sharedDateParserLibrary")];
    v10 = [v11 newDateFromString:a1 preferredFormatString:a3 successfulFormatString:a4 tryAggressiveFormats:a5];
    [+[TSUDateParserLibrary sharedDateParserLibrary](TSUDateParserLibrary "sharedDateParserLibrary")];
  }

  return v10;
}

uint64_t TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(void *a1, double *a2, int *a3, int *a4, int a5)
{
  v62 = 0;
  v10 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v11 = TSUDurationFormatterTokensFromString(a1, &v62);
  v12 = v11;

  if (!v11 || ![v11 count])
  {
LABEL_45:

    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (v62 != 1)
  {
    if (a4)
    {
      *a4 = 1;
    }

    v21 = [v11 count];
    v22 = [@"-" isEqual:{objc_msgSend(v11, "objectAtIndex:", 0)}];
    LOBYTE(v23) = v22;
    v24 = 0.0;
    if (v21 <= v22)
    {
      goto LABEL_102;
    }

    v25 = 0;
    v26 = v22;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    while (1)
    {
      [objc_msgSend(objc_msgSend(v11 objectAtIndex:{v26), "first"), "doubleValue"}];
      v33 = v32;
      v34 = [v11 objectAtIndex:v26 + 1];
      v60 = 1;
      v35 = TSUDurationFormatterDurationUnitFromString(v34, &v60);
      if (a4 && !v25)
      {
        *a4 = v60;
      }

      if (v35 <= 7)
      {
        switch(v35)
        {
          case 1:
            v27 = v33;
            if (!a3)
            {
              goto LABEL_28;
            }

            break;
          case 2:
            v28 = v33;
            if (!a3)
            {
              goto LABEL_28;
            }

            break;
          case 4:
            v29 = v33;
            if (!a3)
            {
              goto LABEL_28;
            }

            break;
          default:
            goto LABEL_45;
        }

        goto LABEL_27;
      }

      if (v35 == 8)
      {
        break;
      }

      if (v35 == 16)
      {
        v31 = v33;
        if (!a3)
        {
          goto LABEL_28;
        }

LABEL_27:
        *a3 |= v35;
        goto LABEL_28;
      }

      if (v35 != 32)
      {
        goto LABEL_45;
      }

      v24 = v33;
      if (a3)
      {
        goto LABEL_27;
      }

LABEL_28:
      v26 += 2;
      v25 -= 2;
      if (v26 >= v21)
      {
        goto LABEL_103;
      }
    }

    v30 = v33;
    if (!a3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v13 = [v11 count];
  v58 = v13;
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v13;
    do
    {
      v18 = [v11 objectAtIndex:v14];
      objc_opt_class();
      v16 += objc_opt_isKindOfClass() & 1;
      v19 = [v18 isEqual:@"."];
      if (v17 == 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v15 |= v20;
      ++v14;
      --v17;
    }

    while (v17);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v36 = v16 - (v15 & 1);
  if (v36 > 5)
  {
    goto LABEL_45;
  }

  v38 = 5;
  if (a5 <= 7)
  {
    v39 = v58;
    if (a5 == 2)
    {
      v38 = 4;
    }

    else if (a5 == 4)
    {
      v38 = 3;
    }
  }

  else
  {
    v39 = v58;
    switch(a5)
    {
      case 8:
        v38 = 2;
        break;
      case 16:
        v38 = 1;
        break;
      case 32:
        v38 = 0;
        break;
    }
  }

  if (!a5 || v16 > v38 + (v15 & 1))
  {
    v40 = v36 - 1;
    if (v40 >= 5)
    {
      v41 = +[TSUAssertionHandler currentHandler];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(NSString *, NSTimeInterval *, TSUDurationUnits *, TSUDurationStyle *, TSUDurationUnits)"}];
      [v41 handleFailureInFunction:v42 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"), 554, @"Unexpected duration unit count!"}];
      a5 = 0;
    }

    else
    {
      a5 = dword_26CBEE9F8[v40];
    }
  }

  if (v39)
  {
    v43 = 0;
    v23 = 0;
    v27 = 0.0;
    v44 = @"-";
    v45 = 0x279D65000uLL;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v24 = 0.0;
    while (1)
    {
      v46 = [v11 objectAtIndex:v43];
      if (([(__CFString *)v44 isEqual:v46]& 1) != 0)
      {
        v23 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [objc_msgSend(v46 "first")];
          v61 = v47;
          if (v43 && [objc_msgSend(v11 objectAtIndex:{v43 - 1), "isEqual:", @"."}])
          {
            v48 = [v46 second];
            if ([(__CFString *)v48 length]<= 2)
            {
              if ([(__CFString *)v48 length]== 1)
              {
                v48 = [(__CFString *)v48 stringByAppendingString:@"00"];
              }

              if ([(__CFString *)v48 length]== 2)
              {
                v48 = [(__CFString *)v48 stringByAppendingString:@"0"];
              }

              TSUGetNumberValueAndTypeFromString(v48, 0, &v61, 0, 0, 0);
            }

            v24 = v61;
            if (!a3)
            {
              goto LABEL_99;
            }

            v49 = *a3 | 0x20;
            goto LABEL_83;
          }

          if (a5 <= 3)
          {
            if (a5 == 1)
            {
              v27 = v61;
              if (a3)
              {
                *a3 |= 1u;
              }

              a5 = 2;
              goto LABEL_99;
            }

            if (a5 == 2)
            {
              v28 = v61;
              if (a3)
              {
                *a3 |= 2u;
              }

              a5 = 4;
              goto LABEL_99;
            }

LABEL_98:
            v59 = +[TSUAssertionHandler currentHandler];
            v50 = v23;
            v51 = v44;
            v52 = a2;
            v53 = v45;
            v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(NSString *, NSTimeInterval *, TSUDurationUnits *, TSUDurationStyle *, TSUDurationUnits)"}];
            v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"];
            v56 = v54;
            v45 = v53;
            a2 = v52;
            v44 = v51;
            v23 = v50;
            [v59 handleFailureInFunction:v56 file:v55 lineNumber:604 description:@"Unexpected duration unit!"];
            goto LABEL_99;
          }

          if (a5 == 4)
          {
            v29 = v61;
            if (a3)
            {
              *a3 |= 4u;
            }

            a5 = 8;
            goto LABEL_99;
          }

          if (a5 == 8)
          {
            v30 = v61;
            if (a3)
            {
              *a3 |= 8u;
            }

            a5 = 16;
            goto LABEL_99;
          }

          if (a5 != 16)
          {
            goto LABEL_98;
          }

          v31 = v61;
          a5 = 0;
          if (a3)
          {
            v49 = *a3 | 0x10;
LABEL_83:
            *a3 = v49;
          }
        }
      }

LABEL_99:
      if (v39 == ++v43)
      {
        goto LABEL_103;
      }
    }
  }

  LOBYTE(v23) = 0;
  v24 = 0.0;
LABEL_102:
  v31 = 0.0;
  v30 = 0.0;
  v29 = 0.0;
  v28 = 0.0;
  v27 = 0.0;
LABEL_103:
  if (a2)
  {
    v57 = v24 / 1000.0 + v31 + v28 * 86400.0 + v27 * 604800.0 + v29 * 3600.0 + v30 * 60.0;
    *a2 = v57;
    if (v23)
    {
      *a2 = -v57;
    }
  }

  return 1;
}

uint64_t TSUDurationFormatterDurationUnitFromString(uint64_t a1, int *a2)
{
  SFTDurationFormatterInitializeStrings();
  if (([sWeekLongSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sWeekLongPluralString, "isEqualToString:", a1))
  {
    result = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  if (([sWeekMediumSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sWeekMediumPluralString, "isEqualToString:", a1))
  {
    result = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (![sWeekShortString isEqualToString:a1])
  {
    if (([sDayLongSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sDayLongPluralString, "isEqualToString:", a1))
    {
      v5 = 2;
      result = 2;
      if (a2)
      {
        goto LABEL_9;
      }

      return result;
    }

    if (([sDayMediumSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sDayMediumPluralString, "isEqualToString:", a1))
    {
      result = 2;
      if (!a2)
      {
        return result;
      }

      goto LABEL_8;
    }

    if ([sDayShortString isEqualToString:a1])
    {
      result = 2;
      if (!a2)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (([sHourLongSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sHourLongPluralString, "isEqualToString:", a1))
    {
      result = 4;
      if (!a2)
      {
        return result;
      }

      goto LABEL_4;
    }

    if (([sHourMediumSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sHourMediumPluralString, "isEqualToString:", a1))
    {
      result = 4;
      if (!a2)
      {
        return result;
      }

      goto LABEL_8;
    }

    if ([sHourShortString isEqualToString:a1])
    {
      result = 4;
      if (!a2)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (([sMinuteLongSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sMinuteLongPluralString, "isEqualToString:", a1))
    {
      result = 8;
      if (!a2)
      {
        return result;
      }

      goto LABEL_4;
    }

    if (([sMinuteMediumSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sMinuteMediumPluralString, "isEqualToString:", a1))
    {
      result = 8;
      if (!a2)
      {
        return result;
      }

      goto LABEL_8;
    }

    if ([sMinuteShortString isEqualToString:a1])
    {
      result = 8;
      if (!a2)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (([sSecondLongSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sSecondLongPluralString, "isEqualToString:", a1))
    {
      result = 16;
      if (!a2)
      {
        return result;
      }

      goto LABEL_4;
    }

    if (([sSecondMediumSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sSecondMediumPluralString, "isEqualToString:", a1))
    {
      result = 16;
      if (!a2)
      {
        return result;
      }

LABEL_8:
      v5 = 3;
      goto LABEL_9;
    }

    if ([sSecondShortString isEqualToString:a1])
    {
      result = 16;
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if (([sMillisecondLongSingularString isEqualToString:a1] & 1) != 0 || objc_msgSend(sMillisecondLongPluralString, "isEqualToString:", a1))
      {
        result = 32;
        if (!a2)
        {
          return result;
        }

LABEL_4:
        v5 = 2;
LABEL_9:
        *a2 = v5;
        return result;
      }

      result = [sMillisecondShortString isEqualToString:a1];
      if (!result)
      {
        return result;
      }

      result = 32;
      if (!a2)
      {
        return result;
      }
    }

LABEL_24:
    v5 = 1;
    goto LABEL_9;
  }

  v5 = 1;
  result = 1;
  if (a2)
  {
    goto LABEL_9;
  }

  return result;
}

void SFTDurationFormatterInitializeStrings()
{
  if ((sStringsInitialized & 1) == 0)
  {
    v0 = objc_opt_class();
    v1 = objc_sync_enter(v0);
    sWeekLongSingularString = [SFUBundle(v1 v2)];
    sWeekLongPluralString = [SFUBundle(sWeekLongSingularString v3)];
    sWeekMediumSingularString = [SFUBundle(sWeekLongPluralString v4)];
    sWeekMediumPluralString = [SFUBundle(sWeekMediumSingularString v5)];
    sWeekShortString = [SFUBundle(sWeekMediumPluralString v6)];
    sDayLongSingularString = [SFUBundle(sWeekShortString v7)];
    sDayLongPluralString = [SFUBundle(sDayLongSingularString v8)];
    sDayMediumSingularString = [SFUBundle(sDayLongPluralString v9)];
    sDayMediumPluralString = [SFUBundle(sDayMediumSingularString v10)];
    sDayShortString = [SFUBundle(sDayMediumPluralString v11)];
    sHourLongSingularString = [SFUBundle(sDayShortString v12)];
    sHourLongPluralString = [SFUBundle(sHourLongSingularString v13)];
    sHourMediumSingularString = [SFUBundle(sHourLongPluralString v14)];
    sHourMediumPluralString = [SFUBundle(sHourMediumSingularString v15)];
    sHourShortString = [SFUBundle(sHourMediumPluralString v16)];
    sMinuteLongSingularString = [SFUBundle(sHourShortString v17)];
    sMinuteLongPluralString = [SFUBundle(sMinuteLongSingularString v18)];
    sMinuteMediumSingularString = [SFUBundle(sMinuteLongPluralString v19)];
    sMinuteMediumPluralString = [SFUBundle(sMinuteMediumSingularString v20)];
    sMinuteShortString = [SFUBundle(sMinuteMediumPluralString v21)];
    sSecondLongSingularString = [SFUBundle(sMinuteShortString v22)];
    sSecondLongPluralString = [SFUBundle(sSecondLongSingularString v23)];
    sSecondMediumSingularString = [SFUBundle(sSecondLongPluralString v24)];
    sSecondMediumPluralString = [SFUBundle(sSecondMediumSingularString v25)];
    sSecondShortString = [SFUBundle(sSecondMediumPluralString v26)];
    sMillisecondLongSingularString = [SFUBundle(sSecondShortString v27)];
    sMillisecondLongPluralString = [SFUBundle(sMillisecondLongSingularString v28)];
    sMillisecondShortString = [SFUBundle(sMillisecondLongPluralString v29)];
    __dmb(0xBu);
    sStringsInitialized = 1;

    objc_sync_exit(v0);
  }
}

__CFString *TSUDurationSingularPluralFormatterUnitString(int a1, int a2, int a3, double a4)
{
  SFTDurationFormatterInitializeStrings();
  if (a4 == 1.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  result = &stru_287DDF830;
  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        switch(a2)
        {
          case 3:
            v10 = &sMinuteMediumSingularString;
            v11 = &sMinuteMediumPluralString;
            goto LABEL_46;
          case 2:
            v10 = &sMinuteLongSingularString;
            v11 = &sMinuteLongPluralString;
            goto LABEL_46;
          case 1:
            return sMinuteShortString;
        }

        break;
      case 16:
        switch(a2)
        {
          case 3:
            v10 = &sSecondMediumSingularString;
            v11 = &sSecondMediumPluralString;
            goto LABEL_46;
          case 2:
            v10 = &sSecondLongSingularString;
            v11 = &sSecondLongPluralString;
            goto LABEL_46;
          case 1:
            return sSecondShortString;
        }

        break;
      case 32:
        if (a2 != 3)
        {
          if (a2 == 2)
          {
            v10 = &sMillisecondLongSingularString;
            v11 = &sMillisecondLongPluralString;
            goto LABEL_46;
          }

          if (a2 != 1)
          {
            return result;
          }
        }

        return sMillisecondShortString;
      default:
        return result;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        if (a1 != 4)
        {
          return result;
        }

        switch(a2)
        {
          case 3:
            v10 = &sHourMediumSingularString;
            v11 = &sHourMediumPluralString;
            break;
          case 2:
            v10 = &sHourLongSingularString;
            v11 = &sHourLongPluralString;
            break;
          case 1:
            return sHourShortString;
          default:
            return result;
        }

        goto LABEL_46;
      }

      switch(a2)
      {
        case 3:
          v10 = &sDayMediumSingularString;
          v11 = &sDayMediumPluralString;
          break;
        case 2:
          v10 = &sDayLongSingularString;
          v11 = &sDayLongPluralString;
          break;
        case 1:
          return sDayShortString;
        default:
          return result;
      }

LABEL_46:
      if (v8)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      return *v12;
    }

    switch(a2)
    {
      case 3:
        v10 = &sWeekMediumSingularString;
        v11 = &sWeekMediumPluralString;
        goto LABEL_46;
      case 2:
        v10 = &sWeekLongSingularString;
        v11 = &sWeekLongPluralString;
        goto LABEL_46;
      case 1:
        return sWeekShortString;
    }
  }

  return result;
}

void *TSUDurationFormatterTokensFromString(void *a1, _BYTE *a2)
{
  TSUDurationFormatterInitializeConstantSets();
  v4 = [a1 stringByTrimmingCharactersInSet:sWhitespaceAndNewlineCharacterSet];
  v5 = [MEMORY[0x277CCAC80] scannerWithString:v4];
  [v5 setCharactersToBeSkipped:sEmptyCharacterSet];
  v22 = 0;
  if ([v5 isAtEnd])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_3;
  }

  v19 = a2;
  v6 = 0;
  v7 = 0;
  v20 = 0;
  v9 = 0;
  v10 = 0;
  v12 = -1;
  do
  {
    if (!v6)
    {
      v6 = [MEMORY[0x277CBEB18] array];
    }

    v13 = [v4 characterAtIndex:{objc_msgSend(v5, "scanLocation", v19)}];
    if ([sAlphabeticCharacterSet characterIsMember:v13])
    {
      if ((v9 | v7))
      {
        return 0;
      }

      v14 = [v6 count];
      result = 0;
      if ((v12 & 0xFFFFFFFD) == 1 || !v14)
      {
        return result;
      }

      [v5 scanCharactersFromSet:sAlphabeticCharacterSet intoString:&v22];
      [v6 addObject:v22];
      v12 = 1;
    }

    else
    {
      if (v9)
      {
        if (([sDecimalDigitCharacterSet characterIsMember:v13] & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (![sDecimalDigitAndSeperatorsCharacterSet characterIsMember:v13])
      {
LABEL_18:
        if (![sMinusSignCharacterSet characterIsMember:v13] || objc_msgSend(v6, "count"))
        {
          return 0;
        }

        [v5 scanCharactersFromSet:sMinusSignCharacterSet intoString:0];
        [v6 addObject:@"-"];
        v12 = 3;
        v20 = 1;
        goto LABEL_27;
      }

      if (!v12)
      {
        return 0;
      }

      v15 = &sDecimalDigitCharacterSet;
      if ((v9 & 1) == 0)
      {
        v15 = &sDecimalDigitAndSeperatorsCharacterSet;
      }

      [v5 scanCharactersFromSet:*v15 intoString:&v22];
      v21 = 0.0;
      if (!TSUGetNumberValueAndTypeFromString(v22, 0, &v21, 0, 0, 0))
      {
        return 0;
      }

      v10 |= trunc(v21) != v21;
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v6 addObject:{+[TSUPair pairWithFirst:second:](TSUPair, "pairWithFirst:second:", v16, v22)}];
      v12 = 0;
    }

LABEL_27:
    [v5 scanCharactersFromSet:sWhitespaceCharacterSet intoString:0];
    v17 = [v5 scanCharactersFromSet:sSeparatorPunctuationCharacterSet intoString:&v22];
    v18 = v17;
    if (v17)
    {
      if (([v6 count] == 0) | v7 & 1)
      {
        return 0;
      }

      [v6 addObject:v22];
      v7 = [(__CFString *)v22 isEqualToString:@"."];
      v9 |= v7 ^ 1;
      v12 = 2;
    }

    [v5 scanCharactersFromSet:sWhitespaceCharacterSet intoString:0];
  }

  while (![v5 isAtEnd]);
  a2 = v19;
  v8 = v20;
  if (v18)
  {
    return 0;
  }

LABEL_3:
  if (a2)
  {
    *a2 = (v7 | v9) & 1;
  }

  if (v9 & v10)
  {
    return 0;
  }

  if ((v9 | v7))
  {
    if (!(v9 & 1 | ((v7 & 1) == 0)))
    {
      return 0;
    }
  }

  else if ((v8 & 1) != ([v6 count] & 1))
  {
    return 0;
  }

  if ((v8 & 1) != 0 && [v6 count] < 2)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t TSUDurationFormatterMaxValuesForCompactStyleDurationWithMaxUnit(int a1, int a2)
{
  if (a1 == 32)
  {
    v2 = 0;
  }

  else
  {
    v2 = 5;
  }

  if (a1 == 16)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 8)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  if (a1 == 2)
  {
    v5 = 4;
  }

  if (a1 > 7)
  {
    v5 = v4;
  }

  return (v5 + a2);
}

void TSUDurationFormatterInitializeConstantSets()
{
  if ((sSetsInitialized & 1) == 0)
  {
    v0 = objc_opt_class();
    objc_sync_enter(v0);
    if ((sSetsInitialized & 1) == 0)
    {
      sEmptyCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:&stru_287DDF830];
      sSeparatorPunctuationCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@":."];
      sMinusSignCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-"];
      sAlphabeticCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
      sDecimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v1 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
      sDecimalDigitAndSeperatorsCharacterSet = v1;
      v2 = [MEMORY[0x277CBEAF8] currentLocale];
      [v1 addCharactersInString:{objc_msgSend(v2, "objectForKey:", *MEMORY[0x277CBE6A8])}];
      v3 = sDecimalDigitAndSeperatorsCharacterSet;
      v4 = [MEMORY[0x277CBEAF8] currentLocale];
      [v3 addCharactersInString:{objc_msgSend(v4, "objectForKey:", *MEMORY[0x277CBE6B8])}];
      sWhitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      sWhitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      sSpecialDurationFormatCharacters = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"wdhmsf"];
      __dmb(0xBu);
      sSetsInitialized = 1;
    }

    objc_sync_exit(v0);
  }
}

uint64_t TSUDurationFormatterStringFromTimeIntervalWithFormatAndRoundingAndSingularOption(void *a1, int a2, int a3, double a4)
{
  v90 = *MEMORY[0x277D85DE8];
  TSUDurationFormatterInitializeConstantSets();
  v6 = [a1 length];
  v7 = [MEMORY[0x277CCAB68] stringWithCapacity:v6];
  v9 = v7;
  if (a4 < 0.0)
  {
    [v7 appendString:@"-"];
    a4 = fabs(a4);
  }

  v83 = v9;
  if (!v6)
  {
    v31 = 0;
    v87 = 0;
    v11 = 0;
    v32 = 1;
    v37 = 2.22507386e-308;
    v35 = 2.22507386e-308;
    v34 = 2.22507386e-308;
    v36 = 2.22507386e-308;
    goto LABEL_62;
  }

  v86 = 0;
  v87 = 0;
  v10 = 0;
  v11 = 0;
  p_prots = &OBJC_PROTOCOL___NSSecureCoding.prots;
  do
  {
    v13 = [a1 characterAtIndex:v10];
    v14 = v13;
    v15 = v10 + 1;
    if (v10 + 1 >= v6)
    {
      if (v13 == 39)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v16 = [a1 characterAtIndex:v10 + 1];
      if (v14 == 39)
      {
        if (v16 == 39)
        {
          [v9 appendString:@"'"];
          v15 = v10 + 2;
          goto LABEL_52;
        }

        while (1)
        {
          v17 = [a1 characterAtIndex:v15];
          v18 = v17;
          if (v15 + 1 >= v6)
          {
            break;
          }

          v19 = [a1 characterAtIndex:v15 + 1];
          if (v18 != 39)
          {
            goto LABEL_14;
          }

          if (v19 != 39)
          {
            goto LABEL_45;
          }

          [v9 appendString:@"'"];
          v15 += 2;
LABEL_15:
          if (v15 >= v6)
          {
            goto LABEL_52;
          }
        }

        if (v17 == 39)
        {
LABEL_45:
          ++v15;
          goto LABEL_52;
        }

LABEL_14:
        [v9 appendFormat:@"%C", v18];
        ++v15;
        goto LABEL_15;
      }
    }

    if (![(__objc2_prot_list *)p_prots[230] characterIsMember:v14])
    {
      [v9 appendFormat:@"%C", v14];
      goto LABEL_52;
    }

    v85 = v11;
    v20 = v11 + 1;
    if (v11 + 1 >= 7)
    {
      v21 = +[TSUAssertionHandler currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRoundingAndSingularOption(NSTimeInterval, NSString *, BOOL, BOOL)"}];
      v9 = v83;
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"];
      v24 = v22;
      p_prots = (&OBJC_PROTOCOL___NSSecureCoding + 16);
      [v21 handleFailureInFunction:v24 file:v23 lineNumber:850 description:@"Too many placeholders in duration format string!"];
    }

    v25 = [v9 length];
    if (v15 >= v6)
    {
      goto LABEL_32;
    }

    v26 = v6 - v10;
    v27 = 1;
    while ([a1 characterAtIndex:v15] == v14)
    {
      ++v27;
      if (v6 == ++v15)
      {
        v15 = v6;
        v27 = v26;
        break;
      }
    }

    p_prots = (&OBJC_PROTOCOL___NSSecureCoding + 16);
    if (v27 > 3)
    {
      if (v27 != 4)
      {
        if (v27 == 5)
        {
          v28 = 2;
          goto LABEL_56;
        }

        if (v27 == 6)
        {
          v28 = 4;
LABEL_56:
          v87 = 1;
          goto LABEL_33;
        }
      }

LABEL_48:
      v28 = 3;
      goto LABEL_33;
    }

    switch(v27)
    {
      case 1:
LABEL_32:
        v28 = 0;
        break;
      case 2:
        v28 = 1;
        break;
      case 3:
        v28 = 2;
        break;
      default:
        goto LABEL_48;
    }

LABEL_33:
    v29 = 0;
    if (v14 > 108)
    {
      if (v14 == 109)
      {
        v29 = 8;
      }

      else if (v14 == 115)
      {
        v29 = 16;
      }

      else
      {
        v29 = v14 == 119;
      }
    }

    else
    {
      switch(v14)
      {
        case 'd':
          v29 = 2;
          break;
        case 'f':
          v29 = 32;
          break;
        case 'h':
          v29 = 4;
          break;
      }
    }

    v30 = &v89[v85];
    *v30 = v25;
    v86 |= v29;
    *(v30 + 2) = v29;
    *(v30 + 3) = v28;
    v11 = v20;
LABEL_52:
    v10 = v15;
  }

  while (v15 < v6);
  v31 = v86;
  v32 = (v86 & 1) == 0;
  if (v86)
  {
    v34 = floor(a4 / 604800.0);
    a4 = a4 + v34 * -604800.0;
    v33 = 1;
    if ((v86 & 2) == 0)
    {
      goto LABEL_66;
    }

LABEL_59:
    v35 = floor(a4 / 86400.0);
    a4 = a4 + v35 * -86400.0;
    if ((v86 & 4) != 0)
    {
      goto LABEL_60;
    }

LABEL_67:
    v36 = 2.22507386e-308;
  }

  else
  {
    v33 = 0;
    v34 = 2.22507386e-308;
    if ((v86 & 2) != 0)
    {
      goto LABEL_59;
    }

LABEL_66:
    v35 = 2.22507386e-308;
    if ((v86 & 4) == 0)
    {
      goto LABEL_67;
    }

LABEL_60:
    v36 = floor(a4 / 3600.0);
    a4 = a4 + v36 * -3600.0;
  }

  v39 = (v86 & 8) == 0;
  if ((v86 & 8) != 0)
  {
    v37 = floor(a4 / 60.0);
    a4 = a4 + v37 * -60.0;
  }

  else
  {
    v37 = 2.22507386e-308;
  }

  if ((v86 & 0x10) != 0)
  {
    v41 = trunc(a4);
    a4 = a4 - v41;
    if ((v86 & 0x20) != 0)
    {
      v40 = a4 * 1000.0;
    }

    else
    {
      v40 = 2.22507386e-308;
    }

    v38 = 16;
    if ((v86 & 0x20) != 0)
    {
      LODWORD(v6) = 32;
    }

    else
    {
      LODWORD(v6) = 16;
    }

    goto LABEL_86;
  }

  if ((v86 & 0x20) != 0)
  {
    v38 = v86 & 0x20;
    v40 = a4 * 1000.0;
    LODWORD(v6) = 32;
    v41 = 2.22507386e-308;
    goto LABEL_86;
  }

  if ((v86 & 8) != 0)
  {
    v39 = 0;
    v38 = 0;
    LODWORD(v6) = 8;
    goto LABEL_64;
  }

  if ((v86 & 2) != 0)
  {
    LODWORD(v6) = 2;
  }

  else
  {
    LODWORD(v6) = v33;
  }

  if ((v86 & 4) == 0)
  {
LABEL_62:
    v38 = 0;
    goto LABEL_63;
  }

  v38 = 0;
  LODWORD(v6) = 4;
LABEL_63:
  v39 = 1;
LABEL_64:
  v40 = 2.22507386e-308;
  v41 = 2.22507386e-308;
LABEL_86:
  if (!a2)
  {
    if (v6 <= 7)
    {
      switch(v6)
      {
        case 1:
          v34 = v34 + a4 / 604800.0;
          goto LABEL_125;
        case 2:
          v35 = v35 + a4 / 86400.0;
          goto LABEL_125;
        case 4:
          v36 = v36 + a4 / 3600.0;
          goto LABEL_125;
      }

      v49 = v31;
      v50 = +[TSUAssertionHandler currentHandler];
      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRoundingAndSingularOption(NSTimeInterval, NSString *, BOOL, BOOL)"}];
      v9 = v83;
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"];
      v46 = v50;
      v31 = v49;
      v47 = v51;
      v48 = 1024;
      goto LABEL_116;
    }

    if (v6 == 8)
    {
      v37 = v37 + a4 / 60.0;
      goto LABEL_125;
    }

    if (v6 == 16)
    {
      v41 = v41 + a4;
      goto LABEL_125;
    }

    goto LABEL_105;
  }

  if (v6 > 7)
  {
    if (v6 == 8)
    {
      if (round(a4 / 60.0) >= 1.0)
      {
        v37 = v37 + 1.0;
      }

      goto LABEL_125;
    }

    if (v6 == 16)
    {
      if (round(a4) >= 1.0)
      {
        v41 = v41 + 1.0;
      }

      goto LABEL_125;
    }

LABEL_105:
    v40 = round(v40);
    goto LABEL_125;
  }

  switch(v6)
  {
    case 1:
      if (round(a4 / 604800.0) >= 1.0)
      {
        v34 = v34 + 1.0;
      }

      break;
    case 2:
      if (round(a4 / 86400.0) >= 1.0)
      {
        v35 = v35 + 1.0;
      }

      break;
    case 4:
      if (round(a4 / 3600.0) >= 1.0)
      {
        v36 = v36 + 1.0;
      }

      break;
    default:
      v42 = v31;
      v43 = +[TSUAssertionHandler currentHandler];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRoundingAndSingularOption(NSTimeInterval, NSString *, BOOL, BOOL)"}];
      v9 = v83;
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"];
      v46 = v43;
      v31 = v42;
      v47 = v44;
      v48 = 1000;
LABEL_116:
      [v46 handleFailureInFunction:v47 file:v45 lineNumber:v48 description:@"Unknown minimum unit!"];
      break;
  }

LABEL_125:
  if (v32)
  {
    v52 = 2;
  }

  else
  {
    v52 = 1;
  }

  if ((v31 & 3) == 0)
  {
    v52 = 4;
  }

  if (v39)
  {
    v53 = v38;
  }

  else
  {
    v53 = 8;
  }

  if ((v31 & 7) != 0)
  {
    v54 = v52;
  }

  else
  {
    v54 = v53;
  }

  while (v54 != v6)
  {
    if (v6 <= 7)
    {
      switch(v6)
      {
        case 2:
          if (v35 < 7.0)
          {
            goto LABEL_155;
          }

          v34 = v34 + 1.0;
          LODWORD(v6) = 1;
          v35 = 0.0;
          break;
        case 4:
          if (v36 < 24.0)
          {
            goto LABEL_155;
          }

          v35 = v35 + 1.0;
          LODWORD(v6) = 2;
          v36 = 0.0;
          break;
        case 1:
          goto LABEL_155;
        default:
          v55 = +[TSUAssertionHandler currentHandler];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRoundingAndSingularOption(NSTimeInterval, NSString *, BOOL, BOOL)"}];
          v9 = v83;
          [v55 handleFailureInFunction:v56 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"), 1088, @"Unknown unit!"}];
          break;
      }
    }

    else if (v6 == 8)
    {
      if (v37 < 60.0)
      {
        break;
      }

      v36 = v36 + 1.0;
      LODWORD(v6) = 4;
      v37 = 0.0;
    }

    else if (v6 == 16)
    {
      if (v41 < 60.0)
      {
        break;
      }

      v37 = v37 + 1.0;
      LODWORD(v6) = 8;
      v41 = 0.0;
    }

    else
    {
      if (v40 < 1000.0)
      {
        break;
      }

      v41 = v41 + 1.0;
      LODWORD(v6) = 16;
      v40 = 0.0;
    }
  }

LABEL_155:
  if (v11)
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = v11;
    do
    {
      v61 = &v89[v57];
      v62 = *v61;
      v64 = *(v61 + 2);
      v63 = *(v61 + 3);
      if (v64 > 7)
      {
        switch(v64)
        {
          case 8:
            v65 = 0;
            v66 = v37;
            break;
          case 16:
            v65 = 0;
            v66 = v41;
            break;
          case 32:
            v65 = 1;
            v66 = v40;
            break;
          default:
            goto LABEL_168;
        }
      }

      else
      {
        switch(v64)
        {
          case 1:
            v65 = 0;
            v66 = v34;
            break;
          case 2:
            v65 = 0;
            v66 = v35;
            break;
          case 4:
            v65 = 0;
            v66 = v36;
            break;
          default:
LABEL_168:
            v67 = +[TSUAssertionHandler currentHandler];
            v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRoundingAndSingularOption(NSTimeInterval, NSString *, BOOL, BOOL)"}];
            v9 = v83;
            [v67 handleFailureInFunction:v68 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"), 1125, @"Unknown duration unit!"}];
            v65 = 0;
            v66 = 0.0;
            break;
        }
      }

      if ((v87 & (v66 == 0.0)) != 1 || !(v58 & 1 | (v57 + 1 != v60)))
      {
        v70 = 0;
        if (a2)
        {
          v71 = 0;
        }

        else
        {
          v71 = kTSUNumberFormatterDecimalPlacesAsManyAsNecessary;
        }

        if (v63 <= 1)
        {
          if (v63)
          {
            if (v63 != 1)
            {
              goto LABEL_195;
            }

            if (v65)
            {
              v75 = @"000";
            }

            else
            {
              v75 = @"00";
            }
          }

          else if (v65)
          {
            v75 = @"000";
          }

          else
          {
            v75 = @"0";
          }

          v8.n128_f64[0] = v66;
          v78 = TSUNumberFormatterStringFromDoubleWithFormat(v75, a2 ^ 1u, 0, v71, 0, 0, 0, v8);
        }

        else
        {
          switch(v63)
          {
            case 2:
              v76 = TSUDurationSingularPluralFormatterUnitString(v64, 1, a3, v66);
              v77.n128_f64[0] = v66;
              v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", TSUNumberFormatterStringFromDoubleWithFormat(@"0", a2 ^ 1u, 0, v71, 0, 0, 0, v77), v76];
              break;
            case 3:
              v72 = v66;
              v73 = v64;
              v74 = 2;
LABEL_189:
              v79 = TSUDurationSingularPluralFormatterUnitString(v73, v74, a3, v72);
              v80.n128_f64[0] = v66;
              v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", TSUNumberFormatterStringFromDoubleWithFormat(@"0", a2 ^ 1u, 0, v71, 0, 0, 0, v80), v79];
              break;
            case 4:
              v72 = v66;
              v73 = v64;
              v74 = 3;
              goto LABEL_189;
            default:
LABEL_195:
              [v9 insertString:v70 atIndex:v62 + v59];
              v69 = [(__CFString *)v70 length];
              ++v57;
              v58 = 1;
              goto LABEL_196;
          }
        }

        v70 = v78;
        goto LABEL_195;
      }

      v69 = -1;
      ++v57;
LABEL_196:
      v59 += v69;
    }

    while (v57 != v60);
  }

  if ((v87 & 1) == 0)
  {
    return v9;
  }

  v81 = [MEMORY[0x277CCA900] whitespaceCharacterSet];

  return [v9 stringByTrimmingCharactersInSet:v81];
}

uint64_t TSUDurationFormatterMinDurationUnitInUnits(char a1)
{
  v1 = a1 & 1;
  if ((a1 & 2) != 0)
  {
    v1 = 2;
  }

  if ((a1 & 4) != 0)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 8) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 0x10) != 0)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 0x20) != 0)
  {
    return 32;
  }

  else
  {
    return v4;
  }
}

uint64_t TSUDurationFormatterMaxDurationUnitInUnits(char a1)
{
  v1 = a1 & 0x20;
  if ((a1 & 0x10) != 0)
  {
    v1 = 16;
  }

  if ((a1 & 8) != 0)
  {
    v2 = 8;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 4) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (a1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t TSUDurationFormatterDurationUnitsInFormat(void *a1)
{
  v2 = 0;
  TSUDurationFormatterGetFormatInfo(a1, &v2, 0);
  return v2;
}

char *TSUDurationFormatterGetFormatInfo(void *a1, _DWORD *a2, int *a3)
{
  TSUDurationFormatterInitializeConstantSets();
  if (a2)
  {
    *a2 = 0;
  }

  result = [a1 length];
  if (result)
  {
    v7 = result;
    v8 = 0;
    do
    {
      result = [a1 characterAtIndex:v8];
      v9 = result;
      v10 = (v8 + 1);
      if (v8 + 1 >= v7)
      {
        if (result == 39)
        {
          goto LABEL_34;
        }

        result = [sSpecialDurationFormatCharacters characterIsMember:result];
        ++v8;
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        result = [a1 characterAtIndex:v8 + 1];
        if (v9 == 39)
        {
          if (result == 39)
          {
            v8 += 2;
          }

          else
          {
            do
            {
              result = [a1 characterAtIndex:v10];
              v11 = result;
              v8 = (v10 + 1);
              if (v10 + 1 >= v7)
              {
                if (result == 39)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                result = [a1 characterAtIndex:v10 + 1];
                if (v11 == 39)
                {
                  if (result != 39)
                  {
                    goto LABEL_50;
                  }

                  v8 = (v10 + 2);
                }
              }

              v10 = v8;
            }

            while (v8 < v7);
          }

          continue;
        }

        result = [sSpecialDurationFormatCharacters characterIsMember:v9];
        if ((result & 1) == 0)
        {
LABEL_34:
          ++v8;
          continue;
        }

        v12 = v7 - v8;
        v13 = 1;
        while (1)
        {
          result = [a1 characterAtIndex:v10];
          if (result != v9)
          {
            break;
          }

          ++v13;
          if (v7 == ++v10)
          {
            v10 = v7;
            v13 = v12;
            break;
          }
        }

        if ((v13 - 1) >= 2)
        {
          if (v13 == 3)
          {
            if (!a3)
            {
              goto LABEL_28;
            }

            v14 = 1;
          }

          else
          {
            if (!a3)
            {
              goto LABEL_28;
            }

            v14 = 2;
          }

          goto LABEL_27;
        }
      }

      if (a3)
      {
        v14 = 0;
LABEL_27:
        *a3 = v14;
      }

LABEL_28:
      v8 = v10;
      v15 = 0;
      if (v9 > 108)
      {
        switch(v9)
        {
          case 'm':
            v15 = 8;
            if (!a2)
            {
              continue;
            }

            goto LABEL_49;
          case 's':
            v15 = 16;
            if (!a2)
            {
              continue;
            }

LABEL_49:
            *a2 |= v15;
            continue;
          case 'w':
            v15 = 1;
            if (!a2)
            {
              continue;
            }

            goto LABEL_49;
        }
      }

      else
      {
        switch(v9)
        {
          case 'd':
            v15 = 2;
            if (!a2)
            {
              continue;
            }

            goto LABEL_49;
          case 'f':
            v15 = 32;
            break;
          case 'h':
            v15 = 4;
            if (!a2)
            {
              continue;
            }

            goto LABEL_49;
        }
      }

      if (a2)
      {
        goto LABEL_49;
      }

LABEL_50:
      ;
    }

    while (v8 < v7);
  }

  return result;
}

void *TSUDurationFormatterFormatFromDurationUnits(unsigned int a1, unsigned int a2, int a3)
{
  v6 = [MEMORY[0x277CCAB68] string];
  v7 = vand_s8(vshl_u16(vdup_n_s16(a1), 0xFFFBFFFCFFFDFFFELL), 0x1000100010001);
  v7.i16[0] = vaddv_s16(v7);
  v8 = v7.i32[0] + ((a1 >> 1) & 1) + (a1 & 1);
  if (v7.i16[0] + ((a1 >> 1) & 1) + (a1 & 1))
  {
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        if ((a1 & 4) == 0)
        {
          if ((a1 & 8) == 0)
          {
            if ((a1 & 0x10) == 0)
            {
              v9 = 0;
              goto LABEL_72;
            }

            v22 = 1;
            v20 = v8;
LABEL_58:
            if (a2 > 1)
            {
              if (a2 == 2)
              {
                v24 = @"ssss ";
                goto LABEL_69;
              }

              if (a2 == 3)
              {
                v24 = @"ssssss ";
                goto LABEL_69;
              }
            }

            else
            {
              if (!a2)
              {
                if ((v8 & 0xFFFE) != 0)
                {
                  v24 = @"ss:";
                }

                else
                {
                  v24 = @"s:";
                }

                goto LABEL_69;
              }

              if (a2 == 1)
              {
                v24 = @"sss ";
LABEL_69:
                [v6 appendString:v24];
              }
            }

            LOWORD(v8) = v20 - v22;
            goto LABEL_71;
          }

          v19 = 1;
          v17 = v8;
LABEL_44:
          if (a2 > 1)
          {
            if (a2 == 2)
            {
              v23 = @"mmmm ";
            }

            else
            {
              if (a2 != 3)
              {
                goto LABEL_56;
              }

              v23 = @"mmmmmm ";
            }
          }

          else if (a2)
          {
            if (a2 != 1)
            {
              goto LABEL_56;
            }

            v23 = @"mmm ";
          }

          else if ((v8 & 0xFFFE) != 0)
          {
            v23 = @"mm:";
          }

          else
          {
            v23 = @"m:";
          }

          [v6 appendString:v23];
LABEL_56:
          v20 = v17 - v19;
          if ((a1 & 0x10) != 0)
          {
            goto LABEL_57;
          }

          goto LABEL_30;
        }

        v16 = 1;
        v14 = v8;
LABEL_40:
        if (a2 <= 3)
        {
          [v6 appendString:off_279D65E78[a2]];
        }

        v17 = v14 - v16;
        if ((a1 & 8) != 0)
        {
          goto LABEL_43;
        }

        goto LABEL_24;
      }

      v13 = 1;
      v12 = v8;
      goto LABEL_35;
    }
  }

  else
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterFormatFromDurationUnits(TSUDurationUnits, TSUDurationStyle, BOOL)"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"), 1358, @"No units passed to TSUDurationFormatterFormatFromDurationUnits()!"}];
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (a2 <= 3)
  {
    [v6 appendString:off_279D65E38[a2]];
  }

  v12 = v8 - 1;
  if ((a1 & 2) != 0)
  {
    v13 = 1;
    goto LABEL_35;
  }

  v13 = 0;
  v14 = 0;
  if (v8 != 1 || a3 != 0)
  {
LABEL_35:
    if (a2 <= 3)
    {
      [v6 appendString:off_279D65E58[a2]];
    }

    v14 = v12 - v13;
    if ((a1 & 4) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_18;
  }

  if ((a1 & 4) != 0)
  {
LABEL_38:
    v16 = 1;
    goto LABEL_40;
  }

LABEL_18:
  v16 = 0;
  v17 = 0;
  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = a3 == 0;
  }

  if (!v18)
  {
    goto LABEL_40;
  }

  if ((a1 & 8) != 0)
  {
LABEL_43:
    v19 = 1;
    goto LABEL_44;
  }

LABEL_24:
  v19 = 0;
  v20 = 0;
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = a3 == 0;
  }

  if (!v21)
  {
    goto LABEL_44;
  }

  if ((a1 & 0x10) != 0)
  {
LABEL_57:
    v22 = 1;
    goto LABEL_58;
  }

LABEL_30:
  if (v20)
  {
    v22 = 0;
    goto LABEL_58;
  }

  v22 = 0;
  if (a3)
  {
    goto LABEL_58;
  }

  LOWORD(v8) = 0;
LABEL_71:
  v9 = 1;
LABEL_72:
  if ((v9 & (v8 != 0) | ((a1 & 0x20) >> 5)) == 1 && a2 <= 3)
  {
    [v6 appendString:off_279D65E98[a2]];
  }

  if ([v6 length])
  {
    [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
  }

  return v6;
}

uint64_t TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration(uint64_t result, int a2, double a3)
{
  if (a3 == 0.0)
  {
    return result;
  }

  v3 = fabs(a3);
  v4 = result;
  while (1)
  {
    v5 = v4 | result;
    if (v4 > 7)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        v6 = 2;
        v7 = 604800.0;
        break;
      case 2:
        v6 = 4;
        v7 = 86400.0;
        break;
      case 4:
        v6 = 8;
        v7 = 3600.0;
        break;
      default:
        goto LABEL_23;
    }

LABEL_14:
    v8 = floor(v3 / v7);
    v3 = v3 - v8 * v7;
    if (v8 == 0.0)
    {
      v9 = a2;
    }

    else
    {
      v9 = 1;
    }

    v10 = result & ~v4;
    if (v9)
    {
      result = v5;
    }

    else
    {
      result = v10;
    }

    v4 = v6;
    if (v3 <= 0.0)
    {
      return result;
    }
  }

  switch(v4)
  {
    case 8:
      v6 = 16;
      v7 = 60.0;
      goto LABEL_14;
    case 16:
      v7 = 1.0;
      v6 = 32;
      goto LABEL_14;
    case 32:
      return v5;
  }

LABEL_23:
  v11 = [TSUAssertionHandler currentHandler:v3];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUDurationUnits TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration(NSTimeInterval, TSUDurationUnits, BOOL)"}];
  [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"), 1521, @"Unknown duration unit!"}];
  return v5;
}

double TSUDurationFormatterSecondsInDurationUnit(char a1)
{
  if (a1)
  {
    return 604800.0;
  }

  if ((a1 & 2) != 0)
  {
    return 86400.0;
  }

  if ((a1 & 4) != 0)
  {
    return 3600.0;
  }

  if ((a1 & 8) != 0)
  {
    return 60.0;
  }

  result = 1.0;
  if ((a1 & 0x10) == 0)
  {
    if ((a1 & 0x20) != 0)
    {
      return 0.001;
    }

    else
    {
      v2 = +[TSUAssertionHandler currentHandler];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSUDurationFormatterSecondsInDurationUnit(TSUDurationUnits)"];
      [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDurationFormatter.m"), 1584, @"Unknown duration unit in TSUDurationFormatterSecondsInDurationUnit!"}];
      return -1.0;
    }
  }

  return result;
}

uint64_t TSURegisterLocaleChangeObserver(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [v2 addObserverForName:*MEMORY[0x277CBEEB0] object:0 queue:0 usingBlock:a1];
  v4 = [v2 addObserverForName:*MEMORY[0x277CBE620] object:0 queue:0 usingBlock:a1];
  return [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v4, 0}];
}

void *TSURemoveLocaleChangeObserver(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 removeObserver:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t TSUGetCurrentLocale()
{
  v0 = +[TSUSharedLocale sharedLocale];

  return [v0 currentLocale];
}

uint64_t TSUIsLocaleISO(const __CFLocale *a1)
{
  Value = CFLocaleGetValue(a1, *MEMORY[0x277CBEE98]);
  if ([Value isEqualToString:@"US"])
  {
    return 0;
  }

  else
  {
    return [Value isEqualToString:@"CA"] ^ 1;
  }
}

__CFString *TSUNumberFormatStringFromDouble(int a1, unsigned __int16 a2, unsigned __int16 a3, int a4, __CFString *a5, __CFString *a6, uint64_t a7, void *a8, double a9, double a10, void *a11, uint64_t a12, unsigned __int8 a13, char a14, unsigned __int16 a15, unsigned __int16 a16, unsigned __int8 a17, char a18, __int16 a19, unsigned __int8 a20, unsigned __int16 a21, unsigned __int8 a22, unsigned int a23)
{
  v28 = a9;
  if (__fpclassifyd(a9) == 3)
  {
    v28 = 0.0;
  }

  if ((a7 & 1) == 0)
  {
    a3 = TSUNumberOfDecimalPlacesInValue(v28);
    a2 = a3;
  }

  v30 = v28 * a10;
  if (a14)
  {
    v31 = @"#,##0";
    v29.n128_f64[0] = v30;
    v32 = 1;
    v33 = 2;
    v34 = 2;
    v35 = 1;
LABEL_7:
    v36 = 0;
    v37 = 0;
LABEL_8:

    return TSUNumberFormatterStringFromDoubleWithFormat(v31, v32, v33, v34, v35, v36, v37, v29);
  }

  if (((a15 ^ 1) & 1) == 0 && (a15 & 0x100) == 0)
  {

    return TSUNumberFormatterStringByUnescapingFormatString(a5);
  }

  if (BYTE1(a12) | a12 || (a16 & HIBYTE(a16) & 1) != 0 || a8)
  {
    v42 = trunc(v30);
    if ((a16 & HIBYTE(a16)) != 0)
    {
      v43 = v42;
    }

    else
    {
      v43 = v30;
    }

    v29.n128_f64[0] = v43;
    v44 = TSUNumberFormatterStringFromDoubleWithFormat(a5, a15 ^ 1u, a3, a2, a17, a6, a4 | a13, v29);
    if (BYTE1(a12) | a12)
    {
      v45 = fabs(v43);
      v46 = HIWORD(a12);
      if (v45 >= 1.0)
      {
        v47 = log10(v45) + 1;
      }

      else
      {
        v47 = 0;
      }

      v48 = a23;
      v49 = (a16 & HIBYTE(a16));
      if (v47 <= BYTE2(a12))
      {
        v50 = BYTE2(a12);
      }

      else
      {
        v50 = v47;
      }

      if ((a12 - v50) >= 1)
      {
        v51 = [(__CFString *)v44 mutableCopy];
        v52 = TSUNumberOfDecimalPlacesInValue(v30);
        v53 = [(__CFString *)v44 length];
        if (BYTE5(a12) == BYTE4(a12) && v52 == 0)
        {
          v55 = v53 + ~(v50 + HIWORD(a12)) + 1;
        }

        else
        {
          v55 = v53 + ~(v50 + HIWORD(a12));
        }

        v56 = &v52[-(BYTE5(a12) - BYTE4(a12))];
        if (v56 <= 0)
        {
          v57 = BYTE4(a12);
        }

        else
        {
          v57 = BYTE4(a12) - v56;
        }

        v58 = v55 + v57;
        if (v52 < BYTE5(a12))
        {
          v59 = v58;
        }

        else
        {
          v59 = v53 + ~(v50 + HIWORD(a12));
        }

        if (a17 && (v60 = TSUNumberFormatterGroupingSizeForLocale(0)) != 0)
        {
          v61 = vcvtpd_s64_f64(v50 / v60);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 - 1;
        }

        else
        {
          v62 = 0;
        }

        v63 = v59 - v62;
        if (v63 >= 0)
        {
          v64 = 0;
          do
          {
            if (v63 >= [v51 length])
            {
              break;
            }

            v65 = [v51 characterAtIndex:v63];
            if (v65 == 48)
            {
              ++v64;
            }

            if ((v65 - 58) <= 0xFFFFFFF6)
            {
              [v51 replaceCharactersInRange:v63 withString:{1, @" "}];
            }

            if (a12 - v50 <= v64)
            {
              break;
            }

            v66 = v63-- <= 0;
          }

          while (!v66);
        }

        v67 = BYTE1(a12) - BYTE3(a12);
        if (BYTE1(a12) <= BYTE3(a12))
        {
          goto LABEL_80;
        }

        if (v51)
        {
LABEL_75:
          v68 = [(__CFString *)v44 length];
          v69 = BYTE3(a12) - HIWORD(a12) + v68 + 1;
          if (v69 + v67 <= [(__CFString *)v44 length])
          {
            v70 = v68 + v67 + BYTE3(a12) - HIWORD(a12);
            do
            {
              if ([v51 characterAtIndex:v70] != 48)
              {
                break;
              }

              [v51 replaceCharactersInRange:v70 withString:{1, @" "}];
              v66 = v70-- <= v69;
            }

            while (!v66);
          }

LABEL_80:
          v39 = v44;
          v49 = (a16 & HIBYTE(a16));
          if (v51)
          {
            v71 = v51;
            v49 = (a16 & HIBYTE(a16));
            v39 = v71;
          }

          goto LABEL_82;
        }

LABEL_74:
        v51 = [(__CFString *)v44 mutableCopy];
        goto LABEL_75;
      }

      v67 = BYTE1(a12) - BYTE3(a12);
      v39 = v44;
      if (v67 >= 1)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v39 = 0;
      v48 = a23;
      v46 = HIWORD(a12);
      v49 = (a16 & HIBYTE(a16));
    }

LABEL_82:
    if (a8)
    {
      v95 = v44;
      if (v39)
      {
        v72 = v39;
      }

      else
      {
        v72 = v44;
      }

      v39 = [MEMORY[0x277CCAB68] string];
      v94 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v73 = [(__CFString *)v72 length];
      v74 = [a11 firstIndex];
      if (v73 - 1 < 0)
      {
        v78 = 0;
      }

      else
      {
        v75 = v74;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = v46;
        do
        {
          if (v75 == v77)
          {
            -[__CFString insertString:atIndex:](v39, "insertString:atIndex:", [a8 objectAtIndex:v78], 0);
            v75 = [a11 indexGreaterThanIndex:v75];
            ++v78;
          }

          v80 = [(__CFString *)v72 characterAtIndex:--v73];
          v81 = [(__CFString *)v95 characterAtIndex:v73];
          -[__CFString insertString:atIndex:](v39, "insertString:atIndex:", [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v80], 0);
          if (v76 >= v79)
          {
            v77 += [v94 characterIsMember:v81];
          }

          ++v76;
        }

        while (v73 > 0);
      }

      if (v78 >= [a8 count])
      {
        v48 = a23;
        v49 = (a16 & HIBYTE(a16));
        v44 = v95;
      }

      else
      {
        v48 = a23;
        v44 = v95;
        if ([a8 count] > v78)
        {
          v82 = v78;
          do
          {
            -[__CFString insertString:atIndex:](v39, "insertString:atIndex:", [a8 objectAtIndex:v82++], 0);
          }

          while (v82 < [a8 count]);
        }

        v49 = (a16 & HIBYTE(a16));
      }
    }

    if (!v49)
    {
      return v39;
    }

    if (v39)
    {
      v83 = v39;
    }

    else
    {
      v83 = v44;
    }

    v39 = [(__CFString *)v83 mutableCopy];
    v84 = fabs(v30);
    v40 = TSUNumberFormatFractionStringFromDouble(v48, v84 - floor(v84));
    v41 = MEMORY[0x277CCACA8];
    goto LABEL_106;
  }

  if (HIBYTE(a16) && (a16 & 1) == 0)
  {
    v39 = [TSUNumberFormatterStringByUnescapingFormatString(a5) mutableCopy];
    if (a6)
    {
      -[__CFString replaceOccurrencesOfString:withString:options:range:](v39, "replaceOccurrencesOfString:withString:options:range:", [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 164], +[TSUNumberFormatter currencySymbolForCurrencyCode:](TSUNumberFormatter, "currencySymbolForCurrencyCode:", a6), 0, 0, -[__CFString length](v39, "length"));
    }

    v40 = TSUNumberFormatFractionStringFromDouble(a23, v30);
    v41 = MEMORY[0x277CCACA8];
LABEL_106:
    -[__CFString replaceOccurrencesOfString:withString:options:range:](v39, "replaceOccurrencesOfString:withString:options:range:", [v41 stringWithFormat:@"%C", TSUCustomNumberFormatFractionReplacementCharacter], v40, 0, 0, -[__CFString length](v39, "length"));
    return v39;
  }

  if (a1 == 1)
  {
    if (a18)
    {
      v86 = [TSUNumberFormatter defaultFormatStringForValueType:0 negativeStyle:2];
      v87 = TSUNumberFormatStringFromDouble(0, a2, a3, 0, v86, a6, a7, 0, v30, a10, a11, a12, a13, 0, a15, a16, a17, 1, a19, a20, a21, a22, a23);

      v88 = [TSUNumberFormatter currencySymbolForCurrencyCode:a6];
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@\t%@", v88, v87];
    }

    goto LABEL_121;
  }

  if (a1 != 5)
  {
    if (a1 == 4)
    {

      return TSUNumberFormatFractionStringFromDouble(a23, v30);
    }

    if (!a1)
    {
      if (a19)
      {
        if ((a15 & 1) == 0)
        {
          v89 = fabs(v30);
          if (v89 > 1.0e12 || v89 < 0.0000001 && __fpclassifyd(v30) != 3)
          {
            v31 = @"0E0";
            v29.n128_f64[0] = v30;
            v32 = 1;
            v33 = 0;
            v34 = 5;
            v35 = 0;
            goto LABEL_7;
          }
        }
      }
    }

LABEL_121:
    if (HIBYTE(a19) && (a15 & 1) == 0 && __fpclassifyd(v30) == 3)
    {
      v37 = a4 | a13;
      v29.n128_f64[0] = v30;
      v31 = a5;
      v32 = 1;
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v33 = a3;
      v34 = a2;
      v37 = a4 | a13;
      v29.n128_f64[0] = v30;
      v31 = a5;
      v32 = a15 ^ 1u;
    }

    v35 = a17;
    v36 = a6;
    goto LABEL_8;
  }

  v39 = TSUNumberFormatBaseStringFromDouble(a20, a21, a22, v30);
  if (v39)
  {
    return v39;
  }

  HIDWORD(v90) = -3;
  LOBYTE(v90) = 1;
  v85 = [TSUNumberFormat numberFormatWithValueType:0 formatString:0 decimalPlaces:0 currencyCode:0 useAccountingStyle:0 negativeStyle:0 showThousandsSeparator:v90 fractionAccuracy:?];
  [(TSUNumberFormat *)v85 setUseScientificFormattingAutomatically:1];

  return [(TSUNumberFormat *)v85 stringFromDouble:v30];
}

uint64_t TSUNumberFormatFractionStringFromDouble(int a1, double a2)
{
  v2 = fabs(a2);
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  if (a1 <= 0xFFFFFFFC)
  {
    v5 = a1;
    v4 = a1;
  }

  else
  {
    v4 = *(&unk_26CBEEA40 + a1 + 3);
    v5 = 2;
  }

  v6 = 0;
  v7 = 0;
  v8 = floor(v3);
  v9 = v3 - v8;
  v10 = v4 + 1;
  v11 = 1.79769313e308;
  do
  {
    v12 = v9 * v5;
    v13 = vabdd_f64(v9, round(v12) / v5);
    v14 = llround(v12);
    if (v13 < v11)
    {
      v7 = v14;
      v6 = v5;
      v11 = v13;
    }

    ++v5;
  }

  while (v10 != v5);
  if (a1 >= 0xFFFFFFFD)
  {
    v15 = v6;
    if (v7)
    {
      v16 = v7;
      v17 = v6;
      do
      {
        v15 = v16;
        v16 = v17 % v16;
        v17 = v15;
      }

      while (v16);
    }

    if (v15 >= 2)
    {
      v7 /= v15;
      v6 /= v15;
    }
  }

  if (v7 == v6)
  {
    v7 = 0;
    v8 = v8 + 1.0;
  }

  v18 = MEMORY[0x277CCACA8];
  if (v8 == 0.0)
  {
    if (a2 < 0.0)
    {
      v7 = -v7;
    }

    if (v7)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%ld/%ld", v7, v6, v22];
    }

    else
    {

      return [v18 stringWithFormat:@"0"];
    }
  }

  else
  {
    if (a2 >= 0.0)
    {
      v19 = v8;
    }

    else
    {
      v19 = -v8;
    }

    if (v7)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f %ld/%ld", *&v19, v7, v6];
    }

    else
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f", *&v19, v21, v22];
    }
  }
}

void *TSUNumberFormatBaseStringFromDouble(uint64_t a1, unsigned int a2, int a3, double a4)
{
  if ((a1 - 1) >= 0x24)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUNumberFormatBaseStringFromDouble(double, UInt8, UInt16, BOOL)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormat.m"), 1797, @"Trying to format a baseFormat cell with an illegal base number"}];
  }

  if (fabs(a4) > 9.22337204e18)
  {
    return 0;
  }

  v11 = rint(a4);
  v12 = v11;
  if (v11 >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = -v12;
  }

  if (v11 < 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0;
  }

  if (v12 < 0 && (a3 & 1) == 0)
  {
    if (a1 > 0x10 || ((1 << a1) & 0x10104) == 0)
    {
      v15 = +[TSUAssertionHandler currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUNumberFormatBaseStringFromDouble(double, UInt8, UInt16, BOOL)"}];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormat.m"), 1817, @"Trying to display two's-complement for unsupported base %d", a1}];
    }

    if (v13 >= 0x80000001)
    {
      v17 = -32;
      v18 = 0x80000000;
      while (v17 != -50)
      {
        v19 = 2 * v18;
        --v17;
        v23 = v13 > (2 * v18);
        v18 *= 2;
        if (!v23)
        {
          v20 = -v17;
          goto LABEL_22;
        }
      }

      return 0;
    }

    v19 = 0x80000000;
    v20 = 32;
LABEL_22:
    v13 = 2 * v19 - v13;
    LODWORD(v21) = (log2(a1) * a2);
    if (v21 <= 32)
    {
      v21 = 32;
    }

    else
    {
      v21 = v21;
    }

    v22 = v20 >= v21;
    v23 = v20 < v21 && v19 <= 500000000000000;
    if (v23)
    {
      v24 = v20 + 1;
      do
      {
        v13 += 2 * v19;
        v22 = v24 >= v21;
        if (v24 >= v21)
        {
          break;
        }

        ++v24;
        v23 = v19 < 0xE35FA931A001;
        v19 *= 2;
      }

      while (v23);
    }

    if (!v22)
    {
      return 0;
    }
  }

  v10 = [MEMORY[0x277CCAB68] string];
  v25 = 1;
  do
  {
    if (a1 == 26)
    {
      v26 = v13 / v25 % 26 + 65;
    }

    else if (a1 == 1)
    {
      v26 = 49;
    }

    else
    {
      v27 = v13 / v25 % a1;
      if (v27 <= 9)
      {
        v28 = 48;
      }

      else
      {
        v28 = 55;
      }

      v26 = v28 + v27;
    }

    [v10 tsu_insertCharacter:v26 atIndex:0];
    v25 = (a1 == 1) + v25 * a1;
  }

  while (v25 && v13 / v25 > 0);
  if (a2)
  {
    v29 = (a2 - [v10 length]);
    if (v29 >= 1)
    {
      if (a1 == 26)
      {
        v30 = 65;
      }

      else
      {
        v30 = 48;
      }

      do
      {
        [v10 tsu_insertCharacter:v30 atIndex:0];
        --v29;
      }

      while (v29);
    }
  }

  if ((v12 & 0x8000000000000000) == 0 && (a3 & 1) == 0 && v13 >= 0x80000000 && [v10 characterAtIndex:0] != 48)
  {
    [v10 tsu_insertCharacter:48 atIndex:0];
  }

  if (v14)
  {
    [v10 tsu_insertCharacter:45 atIndex:0];
  }

  return v10;
}

void *TSUNumberFormatCustomNumberFormatTokensFromTSUCustomFormatData(uint64_t a1, int a2)
{
  if (a2 != 270)
  {
    if (a2 != 271)
    {
      return 0;
    }

    v2 = [MEMORY[0x277CBEB18] array];
    v3 = [MEMORY[0x277CCAB68] string];
    v4 = *(a1 + 8);
    v5 = [v4 length];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [v4 characterAtIndex:i];
        if (v8 == TSUCustomNumberFormatTextReplacementCharacter)
        {
          if ([v3 length])
          {
            [v2 addObject:v3];
          }

          [v2 addObject:{objc_msgSend(MEMORY[0x277CCAB68], "customNumberFormatTokenStringOfType:content:", 5, @"@"}];
          v3 = [MEMORY[0x277CCAB68] string];
        }

        else
        {
          [v3 appendFormat:@"%C", v8];
        }
      }
    }

    if ([v3 length])
    {
      v9 = v2;
      v10 = v3;
LABEL_180:
      [v9 addObject:v10];
      return v2;
    }

    return v2;
  }

  v11 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"+-, #@0123456789"}];
  v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#@0123456789"];
  v2 = [MEMORY[0x277CBEB18] array];
  v13 = *(a1 + 8);
  v14 = [v13 length];
  v15 = 0x277CCA000uLL;
  if (v14)
  {
    v16 = v14;
    v84 = v12;
    v86 = v11;
    v88 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = [v13 characterAtIndex:v17];
      v20 = v17 + 1;
      v21 = v17 + 1 < v16 && [v13 characterAtIndex:v17 + 1] == 39;
      if (v19 != 46)
      {
        break;
      }

      v18 = 1;
LABEL_50:
      v17 = v20;
      if (v20 >= v16)
      {
        goto LABEL_164;
      }
    }

    if (v19 == 39)
    {
      v22 = [MEMORY[0x277CCAB68] string];
      v23 = v22;
      if (v21)
      {
        [v22 appendString:@"'"];
        v17 += 2;
        goto LABEL_43;
      }

      ++v17;
      if (v20 >= v16)
      {
LABEL_43:
        if ([v23 length])
        {
          [v2 addObject:v23];
        }

LABEL_45:
        v20 = v17;
        goto LABEL_50;
      }

      while (1)
      {
        v31 = [v13 characterAtIndex:v20];
        v32 = v31;
        v17 = v20 + 1;
        if (v20 + 1 >= v16)
        {
          if (v31 == 39)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v33 = [v13 characterAtIndex:v20 + 1];
          if (v32 == 39)
          {
            if (v33 != 39)
            {
              goto LABEL_43;
            }

            [v23 appendString:@"'"];
            v17 = v20 + 2;
            goto LABEL_42;
          }
        }

        [v23 appendFormat:@"%C", v32];
LABEL_42:
        v20 = v17;
        if (v17 >= v16)
        {
          goto LABEL_43;
        }
      }
    }

    if (v19 == TSUCustomNumberFormatSpaceNarrowCharacter || v19 == TSUCustomNumberFormatSpaceNormalCharacter || v19 == TSUCustomNumberFormatSpaceWideCharacter || v19 == TSUCustomNumberFormatSpaceFlexibleCharacter)
    {
      v27 = MEMORY[0x277CCAB68];
      v28 = [*(v15 + 3240) stringWithFormat:@"%C", v19];
      v29 = v27;
      v30 = 4;
    }

    else
    {
      if (v19 == TSUCustomNumberFormatFractionReplacementCharacter)
      {
        v34 = MEMORY[0x277CCAB68];
        v28 = [*(v15 + 3240) stringWithFormat:@"%d", *(a1 + 48)];
        v29 = v34;
        v30 = 6;
        goto LABEL_48;
      }

      v36 = (v19 - 37);
      if (v36 <= 0x2F)
      {
        if (((1 << (v19 - 37)) & 0x814060000001) != 0)
        {
          [v2 addObject:{objc_msgSend(MEMORY[0x277CCAB68], "customNumberFormatTokenStringOfType:content:", 0, objc_msgSend(*(v15 + 3240), "stringWithFormat:", @"%C%C", v19, v19))}];
LABEL_55:
          v88 = 1;
          goto LABEL_50;
        }

        if (v36 == 32)
        {
          [v2 addObject:{objc_msgSend(MEMORY[0x277CCAB68], "customNumberFormatTokenStringOfType:content:", 0, objc_msgSend(*(v15 + 3240), "stringWithFormat:", @"%C", 69))}];
          if (v20 < v16)
          {
            while ([v86 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", v20)}])
            {
              if (v16 == ++v20)
              {
                return v2;
              }
            }
          }

          goto LABEL_55;
        }
      }

      if (v19 != 164)
      {
        if ([v86 characterIsMember:v19])
        {
          if ((v18 & 1) == 0)
          {
            if (v17 >= v16)
            {
              v83 = 0;
              v20 = v17;
              v43 = 0x277CBE000;
            }

            else
            {
              v42 = 0;
              v43 = 0x277CBE000uLL;
              while (1)
              {
                v44 = [v13 characterAtIndex:v17];
                if (![v86 characterIsMember:v44])
                {
                  break;
                }

                v42 += [v84 characterIsMember:v44];
                if (v16 == ++v17)
                {
                  v83 = v42;
                  v20 = v16;
                  goto LABEL_92;
                }
              }

              v83 = v42;
              v20 = v17;
            }

LABEL_92:
            v89 = [*(v43 + 2840) array];
            v47 = *(a1 + 51);
            v48 = *(a1 + 49);
            v81 = v48;
            if (!*(a1 + 49))
            {
              v48 = *(a1 + 51);
            }

            v82 = v48;
            v87 = *(a1 + 32);
            v49 = [v87 firstIndex];
            v50 = v49;
            v80 = v47;
            if (v47)
            {
              v85 = 0;
              v51 = 0;
              v52 = v49;
              v53 = v47;
              do
              {
                if (v87)
                {
                  v54 = v52 == 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v54 = 1;
                }

                v55 = !v54;
                v56 = v53;
                v57 = v52 - v51;
                if (v52 - v51 >= v56)
                {
                  v57 = v56;
                }

                v58 = v55 != 1 || v52 - v51 <= v56;
                if (v55 == 1)
                {
                  v59 = v57;
                }

                else
                {
                  v59 = v56;
                }

                [v89 insertObject:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:", v59, *(a1 + 56) & 1, @"0", 0}];
                if (v55)
                {
                  if (v58)
                  {
                    [v89 insertObject:objc_msgSend(*(a1 + 24) atIndex:{"objectAtIndex:", v85++), 0}];
                    v50 = [*(a1 + 32) indexGreaterThanIndex:v52];
                  }

                  else
                  {
                    v50 = v52;
                    v52 = v59 + v51;
                  }
                }

                else
                {
                  v50 = v52;
                  v52 = v51;
                }

                v53 = v56 - v59;
                v60 = v52;
                v51 = v52;
                v52 = v50;
              }

              while (v53 > 0);
            }

            else
            {
              v60 = 0;
              v85 = 0;
            }

            if (v81)
            {
              v61 = v81 - v80;
              v62 = v50;
              if (v81 - v80 >= 1)
              {
                do
                {
                  if (v87)
                  {
                    v63 = v62 == 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v63 = 1;
                  }

                  v64 = !v63;
                  v65 = v61;
                  v66 = v62 - v60;
                  if (v62 - v60 >= v65)
                  {
                    v66 = v65;
                  }

                  v67 = v64 != 1 || v62 - v60 <= v65;
                  if (v64 == 1)
                  {
                    v68 = v66;
                  }

                  else
                  {
                    v68 = v65;
                  }

                  [v89 insertObject:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:", v68, *(a1 + 56) & 1, @"?", 0}];
                  if (v64)
                  {
                    if (v67)
                    {
                      [v89 insertObject:objc_msgSend(*(a1 + 24) atIndex:{"objectAtIndex:", v85++), 0}];
                      v50 = [*(a1 + 32) indexGreaterThanIndex:v62];
                    }

                    else
                    {
                      v50 = v62;
                      v62 = v68 + v60;
                    }
                  }

                  else
                  {
                    v50 = v62;
                    v62 = v60;
                  }

                  v61 = v65 - v68;
                  v60 = v62;
                  v62 = v50;
                }

                while (v65 - v68 > 0);
              }
            }

            v69 = v83 - v82;
            if (v83 - v82 >= 1)
            {
              do
              {
                if (v87)
                {
                  v70 = v50 == 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = 1;
                }

                v71 = !v70;
                v72 = v69;
                v73 = v50 - v60;
                if (v50 - v60 >= v72)
                {
                  v73 = v72;
                }

                v74 = v71 != 1 || v50 - v60 <= v72;
                if (v71 == 1)
                {
                  v75 = v73;
                }

                else
                {
                  v75 = v72;
                }

                [v89 insertObject:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"customNumberFormatIntegerTokenRepresentedStringWithDigits:separator:digitString:", v75, *(a1 + 56) & 1, @"#", 0}];
                if (v71)
                {
                  if (v74)
                  {
                    [v89 insertObject:objc_msgSend(*(a1 + 24) atIndex:{"objectAtIndex:", v85++), 0}];
                    v76 = [*(a1 + 32) indexGreaterThanIndex:v50];
                  }

                  else
                  {
                    v76 = v50;
                    v50 = v75 + v60;
                  }
                }

                else
                {
                  v76 = v50;
                  v50 = v60;
                }

                v69 = v72 - v75;
                v60 = v50;
                v50 = v76;
              }

              while (v72 - v75 > 0);
            }

            [v2 addObjectsFromArray:v89];
            v18 = 0;
            v15 = 0x277CCA000;
            goto LABEL_50;
          }

          if (v17 >= v16)
          {
            v38 = 0;
            v37 = 0;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            while (1)
            {
              v39 = [v13 characterAtIndex:v17];
              if (![v86 characterIsMember:v39])
              {
                break;
              }

              v40 = [v84 characterIsMember:v39];
              v38 += v40;
              if (v39 == 48)
              {
                v41 = v40;
              }

              else
              {
                v41 = 0;
              }

              v37 += v41;
              if (v16 == ++v17)
              {
                v17 = v16;
                break;
              }
            }
          }

          v45 = *(a1 + 52);
          if (*(a1 + 50))
          {
            v46 = (v37 - v45);
          }

          else
          {
            v37 = *(a1 + 52);
            v46 = 0;
          }

          if (*(a1 + 52))
          {
            [v2 addObject:{objc_msgSend(*(v15 + 3240), "customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:", v45, @"0"}];
          }

          if (v46 >= 1)
          {
            [v2 addObject:{objc_msgSend(*(v15 + 3240), "customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:", v46, @"?"}];
          }

          if (v38 - v37 >= 1)
          {
            [v2 addObject:{objc_msgSend(*(v15 + 3240), "customNumberFormatDecimalTokenRepresentedStringWithDigits:digitString:")}];
          }

          v18 = 1;
          goto LABEL_45;
        }

        v35 = [MEMORY[0x277CCAB68] stringWithFormat:@"%C", v19];
LABEL_49:
        [v2 addObject:v35];
        goto LABEL_50;
      }

      v29 = MEMORY[0x277CCAB68];
      v28 = *(a1 + 16);
      v30 = 3;
    }

LABEL_48:
    v35 = [v29 customNumberFormatTokenStringOfType:v30 content:v28];
    goto LABEL_49;
  }

  v88 = 0;
LABEL_164:
  v77 = *(a1 + 40);
  if (v77 != 1.0 && (v88 & 1) == 0)
  {
    if (v77 == 100.0)
    {
      v78 = 37;
    }

    else if (v77 == 0.01)
    {
      v78 = 67;
    }

    else if (v77 == 0.001)
    {
      v78 = 75;
    }

    else if (v77 == 0.000001)
    {
      v78 = 77;
    }

    else if (v77 == 0.000000001)
    {
      v78 = 66;
    }

    else if (v77 == 1.0e-12)
    {
      v78 = 84;
    }

    else
    {
      v78 = 0;
    }

    v10 = [MEMORY[0x277CCAB68] customNumberFormatTokenStringOfType:0 content:{objc_msgSend(*(v15 + 3240), "stringWithFormat:", @"%C", v78)}];
    v9 = v2;
    goto LABEL_180;
  }

  return v2;
}

void *TSUNumberFormatStringApplyPrefixAndSuffix(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if ([a2 length])
    {
      if ([v5 rangeOfString:@"'"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [v5 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
      }

      if ([a1 length] && objc_msgSend(a1, "characterAtIndex:", 0) == 39)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@", v5];
        a1 = [a1 substringFromIndex:1];
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", v5];
      }

      a1 = [v6 stringByAppendingString:a1];
    }
  }

  if (!a3 || ![a3 length])
  {
    return a1;
  }

  if ([a3 rangeOfString:@"'"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    a3 = [a3 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
  }

  v7 = [a1 length];
  if (v7 && (v8 = v7 - 1, [a1 characterAtIndex:v7 - 1] == 39))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@'", a3];
    a1 = [a1 substringToIndex:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", a3];
  }

  return [a1 stringByAppendingString:v9];
}

unint64_t TSULocationInRanges(unint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = [a2 count];
  if (result)
  {
    v5 = result;
    v6 = [objc_msgSend(a2 objectAtIndex:{0), "rangeValue"}];
    if (a1 < v6 || a1 - v6 >= v7)
    {
      v8 = 1;
      do
      {
        v9 = v8;
        if (v5 == v8)
        {
          break;
        }

        v10 = [objc_msgSend(a2 objectAtIndex:{v8), "rangeValue"}];
        v8 = v9 + 1;
      }

      while (a1 < v10 || a1 - v10 >= v11);
      return v9 < v5;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const __CFCharacterSet *TSUSearchCharacterSetForSeparatorCharacter(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", ，"}];
  v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@".．"];
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"  "];
  if (CFCharacterSetIsCharacterMember(v3, a1))
  {
    return v3;
  }

  v3 = v2;
  if (CFCharacterSetIsCharacterMember(v2, a1))
  {
    return v3;
  }

  v3 = v4;
  if (CFCharacterSetIsCharacterMember(v4, a1))
  {
    return v3;
  }

  v6 = MEMORY[0x277CCA900];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", a1];

  return [v6 characterSetWithCharactersInString:v7];
}

BOOL TSUNumberOfDigitsInStringAllowsPreciseDoubleParsing(void *a1)
{
  v2 = [MEMORY[0x277CCAC80] scannerWithString:a1];
  [v2 setCharactersToBeSkipped:0];
  v3 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v4 = [v2 scanLocation];
    v5 = [a1 length];
    if (v4 >= v5)
    {
      break;
    }

    [v2 scanCharactersFromSet:objc_msgSend(MEMORY[0x277CCA900] intoString:{"decimalDigitCharacterSet"), &v8}];
    [v2 scanCharactersFromSet:objc_msgSend(objc_msgSend(MEMORY[0x277CCA900] intoString:{"decimalDigitCharacterSet"), "invertedSet"), &v7}];
    v3 += [v8 length];
  }

  while (v3 <= kTSUNumberFormatterMaxDigitsForPreciseDoubleParsing);
  return v4 >= v5;
}

uint64_t TSUNumberOfDecimalPlacesInNumericString(const __CFString *a1, CFLocaleRef locale)
{
  v4 = locale;
  if (!locale)
  {
    v4 = CFLocaleCopyCurrent();
  }

  Value = CFLocaleGetValue(v4, *MEMORY[0x277CBEEB8]);
  CharacterAtIndex = CFStringGetCharacterAtIndex(Value, 0);
  v7 = TSUSearchCharacterSetForSeparatorCharacter(CharacterAtIndex);
  v17.location = 0;
  v17.length = 0;
  v18.length = CFStringGetLength(a1);
  v18.location = 0;
  if (CFStringFindCharacterFromSet(a1, v7, v18, 4uLL, &v17))
  {
    v8 = v17.length == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v17.location == -1)
  {
    v10 = 0;
  }

  else
  {
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
    v12 = 0;
    v13 = v17.location + 1;
    do
    {
      v10 = v12;
      if (v13 >= CFStringGetLength(a1))
      {
        break;
      }

      v14 = CFStringGetCharacterAtIndex(a1, v13);
      IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v14);
      v12 = (v10 + 1);
      ++v13;
    }

    while (IsCharacterMember);
  }

  if (!locale)
  {
    CFRelease(v4);
  }

  return v10;
}

BOOL TSUIsGroupingSeparatorUsedInNumericString(const __CFString *a1, CFLocaleRef locale)
{
  v4 = locale;
  if (!locale)
  {
    v4 = CFLocaleCopyCurrent();
  }

  Value = CFLocaleGetValue(v4, *MEMORY[0x277CBEEC0]);
  CharacterAtIndex = CFStringGetCharacterAtIndex(Value, 0);
  v7 = TSUSearchCharacterSetForSeparatorCharacter(CharacterAtIndex);
  v18.location = 0;
  v18.length = 0;
  v19.length = CFStringGetLength(a1);
  v19.location = 0;
  if (CFStringFindCharacterFromSet(a1, v7, v19, 0, &v18))
  {
    v8 = v18.length == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 || v18.location == -1;
  if (v9 || (Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit), location = v18.location, v12 = v18.location - 1, v18.location < 1) || (v13 = Predefined, location > CFStringGetLength(a1)) || (v14 = CFStringGetCharacterAtIndex(a1, v12), !CFCharacterSetIsCharacterMember(v13, v14)) || location + 1 >= CFStringGetLength(a1))
  {
    v16 = 0;
    if (!locale)
    {
LABEL_17:
      CFRelease(v4);
    }
  }

  else
  {
    v15 = CFStringGetCharacterAtIndex(a1, location + 1);
    v16 = CFCharacterSetIsCharacterMember(v13, v15) != 0;
    if (!locale)
    {
      goto LABEL_17;
    }
  }

  return v16;
}

uint64_t TSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific(uint64_t a1, double a2)
{
  valuePtr = a2;
  v3 = MEMORY[0x277CBECE8];
  if (!TSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific_formatter)
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!TSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific_formatter)
    {
      v5 = *v3;
      CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(*v3, @"en_US");
      v7 = CFLocaleCreate(v5, CanonicalLocaleIdentifierFromString);
      CFRelease(CanonicalLocaleIdentifierFromString);
      v8 = CFNumberFormatterCreate(v5, v7, kCFNumberFormatterNoStyle);
      CFRelease(v7);
      CFNumberFormatterSetFormat(v8, @"#.##E+00");
      __dmb(0xBu);
      TSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific_formatter = v8;
    }

    objc_sync_exit(v4);
  }

  v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:a1];
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
  [gLockTSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific lock];
  CFNumberFormatterSetProperty(TSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific_formatter, *MEMORY[0x277CBEF58], v9);
  CFNumberFormatterSetProperty(TSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific_formatter, *MEMORY[0x277CBEF48], v9);
  CFNumberFormatterSetProperty(TSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific_formatter, *MEMORY[0x277CBEF68], v10);
  v11 = CFNumberFormatterCreateStringWithValue(*v3, TSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific_formatter, kCFNumberDoubleType, &valuePtr);
  [gLockTSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific unlock];

  v12 = [(__CFString *)v11 rangeOfString:@"."];
  v13 = [(__CFString *)v11 rangeOfString:@"E" options:1];
  v14 = 0;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL && v12 < v13)
  {
    v15 = v13 + ~v12;
    v16 = v12 - v13 + 1;
    v17 = v13 - 1;
    v14 = -1;
    while (v16 + v14 != -1)
    {
      v18 = [(__CFString *)v11 characterAtIndex:v17];
      ++v14;
      --v17;
      if (v18 != 48)
      {
        goto LABEL_13;
      }
    }

    v14 = v15;
  }

LABEL_13:

  return v14;
}

char *TSUNumberOfDecimalPlacesInValue(double a1)
{
  valuePtr = a1;
  if (floor(a1) == a1)
  {
    return 0;
  }

  v2 = TSUNumberOfDecimalPlacesInValue_formatter;
  v3 = MEMORY[0x277CBECE8];
  if (!TSUNumberOfDecimalPlacesInValue_formatter)
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!TSUNumberOfDecimalPlacesInValue_formatter)
    {
      v5 = *v3;
      CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(*v3, @"en_US");
      v7 = CFLocaleCreate(v5, CanonicalLocaleIdentifierFromString);
      CFRelease(CanonicalLocaleIdentifierFromString);
      v8 = CFNumberFormatterCreate(v5, v7, kCFNumberFormatterNoStyle);
      CFRelease(v7);
      CFNumberFormatterSetFormat(v8, @"0");
      v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
      CFNumberFormatterSetProperty(v8, *MEMORY[0x277CBEF58], v9);
      v10 = [MEMORY[0x277CCABB0] numberWithInt:0x7FFFFFFFLL];
      CFNumberFormatterSetProperty(v8, *MEMORY[0x277CBEF48], v10);
      __dmb(0xBu);
      TSUNumberOfDecimalPlacesInValue_formatter = v8;
    }

    objc_sync_exit(v4);
    v2 = TSUNumberOfDecimalPlacesInValue_formatter;
  }

  v11 = CFNumberFormatterCreateStringWithValue(*v3, v2, kCFNumberDoubleType, &valuePtr);
  v12 = [(__CFString *)v11 rangeOfString:@"."];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13 == 1)
  {
    v1 = [(__CFString *)v11 length]+ ~v12;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

char *TSUNumberOfDecimalPlacesNecessaryToDisplayFullPrecisionInScientificNotation(double a1)
{
  valuePtr = a1;
  v1 = *MEMORY[0x277CBECE8];
  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(*MEMORY[0x277CBECE8], @"en_US");
  v3 = CFLocaleCreate(v1, CanonicalLocaleIdentifierFromString);
  CFRelease(CanonicalLocaleIdentifierFromString);
  v4 = CFNumberFormatterCreate(v1, v3, kCFNumberFormatterNoStyle);
  CFRelease(v3);
  CFNumberFormatterSetFormat(v4, @"0");
  CFNumberFormatterSetProperty(v4, *MEMORY[0x277CBEF58], [MEMORY[0x277CCABB0] numberWithInt:0]);
  CFNumberFormatterSetProperty(v4, *MEMORY[0x277CBEF48], [MEMORY[0x277CCABB0] numberWithInt:0x7FFFFFFFLL]);
  v5 = CFNumberFormatterCreateStringWithValue(v1, v4, kCFNumberDoubleType, &valuePtr);
  CFRelease(v4);
  v6 = [objc_msgSend(MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"0.-", "invertedSet"}];
  v7 = [(__CFString *)v5 rangeOfCharacterFromSet:v6];
  v9 = v7 != 0x7FFFFFFFFFFFFFFFLL && v8 == 1;
  if (v9 && (v10 = v7, v7 != [(__CFString *)v5 length]- 1) && ((v11 = [(__CFString *)v5 rangeOfCharacterFromSet:v6 options:4 range:v10 + 1, [(__CFString *)v5 length]- (v10 + 1)], v11 != 0x7FFFFFFFFFFFFFFFLL) ? (v13 = v12 == 1) : (v13 = 0), v13))
  {
    v16 = v11 - v10;
    v19 = [(__CFString *)v5 rangeOfString:@"." options:0 range:v10, v11 - v10 + 1]!= 0x7FFFFFFFFFFFFFFFLL && v17 == 1;
    v14 = v16 - v19;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t TSUNumberFormatterGroupingSizeForLocale(const __CFLocale *a1)
{
  if (a1)
  {
    v1 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterDecimalStyle);
    v2 = CFNumberFormatterCopyProperty(v1, *MEMORY[0x277CBEF30]);
    CFRelease(v1);
    valuePtr = 0;
    CFNumberGetValue(v2, kCFNumberIntType, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    result = TSUNumberFormatterGroupingSizeForLocale_sCurrentLocaleGroupingSize;
    if (TSUNumberFormatterGroupingSizeForLocale_sCurrentLocaleGroupingSize == -1)
    {
      v4 = objc_opt_class();
      objc_sync_enter(v4);
      v5 = TSUGetCurrentLocale();
      v6 = TSUNumberFormatterGroupingSizeForLocale(v5);
      __dmb(0xBu);
      TSUNumberFormatterGroupingSizeForLocale_sCurrentLocaleGroupingSize = v6;
      objc_sync_exit(v4);
      return TSUNumberFormatterGroupingSizeForLocale_sCurrentLocaleGroupingSize;
    }
  }

  return result;
}

__CFString *TSUNumberFormatterStringFromDoubleWithFormat(__CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFString *a6, uint64_t a7, __n128 a8)
{
  v8 = a7;
  v9 = a5;
  v11 = a3;
  v12 = a2;
  v14 = a8.n128_f64[0];
  if (a6 && [(__CFString *)a6 length])
  {

    return TSUNumberFormatterStringFromDoubleWithFormatForCurrency(a1, v12, v11, a4, v9, a6, v8, v14);
  }

  else
  {

    return TSUNumberFormatterStringFromDoubleWithFormatForNumber(a1, v12, v11, a4, v9, v8, v14);
  }
}

__CFString *TSUNumberFormatterStringFromDoubleWithFormatForCurrency(__CFString *a1, int a2, unsigned int a3, unsigned int a4, int a5, __CFString *a6, int a7, double a8)
{
  valuePtr = a8;
  v11 = TSUGetCurrentLocale();
  v12 = MEMORY[0x277CBECE8];
  if (!TSUNumberFormatterStringFromDoubleWithFormatForCurrency_formatter)
  {
    v13 = objc_opt_class();
    objc_sync_enter(v13);
    if (!TSUNumberFormatterStringFromDoubleWithFormatForCurrency_formatter)
    {
      v14 = CFNumberFormatterCreate(*v12, v11, kCFNumberFormatterNoStyle);
      v15 = [MEMORY[0x277CCABB0] numberWithInt:6];
      CFNumberFormatterSetProperty(v14, *MEMORY[0x277CBEFD8], v15);
      v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
      CFNumberFormatterSetProperty(v14, *MEMORY[0x277CBEF68], v16);

      __dmb(0xBu);
      TSUNumberFormatterStringFromDoubleWithFormatForCurrency_formatter = v14;
    }

    objc_sync_exit(v13);
  }

  if (!TSUNumberFormatterStringFromDoubleWithFormatForCurrency_noMinusSignFormatter)
  {
    v17 = objc_opt_class();
    objc_sync_enter(v17);
    if (!TSUNumberFormatterStringFromDoubleWithFormatForCurrency_noMinusSignFormatter)
    {
      v18 = CFNumberFormatterCreate(*v12, v11, kCFNumberFormatterNoStyle);
      v19 = [MEMORY[0x277CCABB0] numberWithInt:6];
      CFNumberFormatterSetProperty(v18, *MEMORY[0x277CBEFD8], v19);
      v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
      CFNumberFormatterSetProperty(v18, *MEMORY[0x277CBEF68], v20);

      __dmb(0xBu);
      TSUNumberFormatterStringFromDoubleWithFormatForCurrency_noMinusSignFormatter = v18;
    }

    objc_sync_exit(v17);
  }

  [gLockTSUNumberFormatterStringFromDoubleWithFormat lock];
  v21 = TSUNumberFormatterStringFromDoubleWithFormatForCurrency_noMinusSignFormatter;
  if (a7)
  {
    v22 = TSUNumberFormatterStringFromDoubleWithFormatForCurrency_noMinusSignFormatter;
  }

  else
  {
    v22 = TSUNumberFormatterStringFromDoubleWithFormatForCurrency_formatter;
  }

  v23 = v22;
  if (sActiveCurrencyFormatter != v22)
  {
    sActiveCurrencyFormatter = 0;

    sActiveCurrencyFormat = 0;
    v23 = sActiveCurrencyFormatter;
  }

  if (!v23 || sActiveCurrencyCode != a6 && ([sActiveCurrencyCode isEqualToString:a6] & 1) == 0)
  {

    sActiveCurrencyFormat = 0;
    v24 = *MEMORY[0x277CBEEF8];
    if (a6)
    {
      CFNumberFormatterSetProperty(v22, v24, a6);
      if (CFStringCompare(a6, @"CHF", 0) == kCFCompareEqualTo)
      {
        v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
        CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEFD0], v25);
      }
    }

    else
    {
      CFNumberFormatterSetProperty(v22, v24, &stru_287DDF830);
      CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEF10], &stru_287DDF830);
    }

    sActiveCurrencyCode = [(__CFString *)a6 copy];
  }

  if (!sActiveCurrencyFormat || CFStringCompare(a1, sActiveCurrencyFormat, 0))
  {
    CFNumberFormatterSetFormat(v22, a1);

    sActiveCurrencyFormat = a1;
  }

  if (a2)
  {
    if (kTSUNumberFormatterDecimalPlacesAsManyAsNecessary == a4)
    {
      v26 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
      v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0x7FFFFFFFLL];
      CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEF58], v26);
      CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEF48], v27);
    }

    else
    {
      v28 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:a3];
      CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEF58], v28);

      v29 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:a4];
      CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEF48], v29);
    }
  }

  if (a7)
  {
    CFNumberFormatterSetProperty(v21, *MEMORY[0x277CBEF70], &stru_287DDF830);
  }

  v30 = MEMORY[0x277CBED10];
  if (a5)
  {
    v30 = MEMORY[0x277CBED28];
  }

  CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEFE8], *v30);
  v31 = CFNumberFormatterCreateStringWithValue(*v12, v22, kCFNumberDoubleType, &valuePtr);
  sActiveCurrencyFormatter = v22;
  [gLockTSUNumberFormatterStringFromDoubleWithFormat unlock];
  return v31;
}

__CFString *TSUNumberFormatterStringFromDoubleWithFormatForNumber(__CFString *a1, int a2, unsigned int a3, uint64_t a4, int a5, int a6, double a7)
{
  valuePtr = a7;
  v12 = TSUGetCurrentLocale();
  if (!TSUNumberFormatterStringFromDoubleWithFormatForNumber_formatter)
  {
    v13 = objc_opt_class();
    objc_sync_enter(v13);
    if (!TSUNumberFormatterStringFromDoubleWithFormatForNumber_formatter)
    {
      v14 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v12, kCFNumberFormatterNoStyle);
      v15 = [MEMORY[0x277CCABB0] numberWithInt:6];
      CFNumberFormatterSetProperty(v14, *MEMORY[0x277CBEFD8], v15);
      v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
      CFNumberFormatterSetProperty(v14, *MEMORY[0x277CBEF68], v16);

      __dmb(0xBu);
      TSUNumberFormatterStringFromDoubleWithFormatForNumber_formatter = v14;
    }

    objc_sync_exit(v13);
  }

  if (!TSUNumberFormatterStringFromDoubleWithFormatForNumber_noMinusSignFormatter)
  {
    v17 = objc_opt_class();
    objc_sync_enter(v17);
    if (!TSUNumberFormatterStringFromDoubleWithFormatForNumber_noMinusSignFormatter)
    {
      v18 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v12, kCFNumberFormatterNoStyle);
      v19 = [MEMORY[0x277CCABB0] numberWithInt:6];
      CFNumberFormatterSetProperty(v18, *MEMORY[0x277CBEFD8], v19);
      v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
      CFNumberFormatterSetProperty(v18, *MEMORY[0x277CBEF68], v20);

      __dmb(0xBu);
      TSUNumberFormatterStringFromDoubleWithFormatForNumber_noMinusSignFormatter = v18;
    }

    objc_sync_exit(v17);
  }

  [gLockTSUNumberFormatterStringFromDoubleWithFormat lock];
  v21 = TSUNumberFormatterStringFromDoubleWithFormatForNumber_noMinusSignFormatter;
  if (a6)
  {
    v22 = TSUNumberFormatterStringFromDoubleWithFormatForNumber_noMinusSignFormatter;
  }

  else
  {
    v22 = TSUNumberFormatterStringFromDoubleWithFormatForNumber_formatter;
  }

  if (sActiveFormatter != v22)
  {
    sActiveFormatter = 0;

    sActiveFormat = 0;
LABEL_14:
    CFNumberFormatterSetFormat(v22, a1);

    sActiveFormat = a1;
    goto LABEL_15;
  }

  if (!sActiveFormat || CFStringCompare(a1, sActiveFormat, 0))
  {
    goto LABEL_14;
  }

LABEL_15:
  if (a2)
  {
    if (kTSUNumberFormatterDecimalPlacesAsManyAsNecessary == a4)
    {
      v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
      v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0x7FFFFFFFLL];
      CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEF58], v23);
      CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEF48], v24);
    }

    else
    {
      v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:a3];
      CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEF58], v25);

      v26 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:a4];
      CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEF48], v26);
    }
  }

  if (a6)
  {
    CFNumberFormatterSetProperty(v21, *MEMORY[0x277CBEF70], &stru_287DDF830);
  }

  v27 = MEMORY[0x277CBED10];
  if (a5)
  {
    v27 = MEMORY[0x277CBED28];
  }

  CFNumberFormatterSetProperty(v22, *MEMORY[0x277CBEFE8], *v27);
  v28 = CFNumberFormatterCreateStringWithValue(*MEMORY[0x277CBECE8], v22, kCFNumberDoubleType, &valuePtr);
  sActiveFormatter = v22;
  [gLockTSUNumberFormatterStringFromDoubleWithFormat unlock];
  return v28;
}

void *TSUNumberFormatterStringFromStringWithCustomFormat(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 && a2)
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:a2];
    [v3 replaceOccurrencesOfString:objc_msgSend(MEMORY[0x277CCACA8] withString:"stringWithFormat:" options:@"%C" range:{TSUCustomNumberFormatTextReplacementCharacter), v2, 0, 0, objc_msgSend(v3, "length")}];
    return v3;
  }

  return v2;
}

uint64_t TSUDecimalSeparatorForCurrentLocale()
{
  result = TSUDecimalSeparatorForCurrentLocale_sDecimalSeparator;
  if (!TSUDecimalSeparatorForCurrentLocale_sDecimalSeparator)
  {
    v1 = CFLocaleCopyCurrent();
    TSUDecimalSeparatorForCurrentLocale_sDecimalSeparator = CFLocaleGetValue(v1, *MEMORY[0x277CBEEB8]);
    v2 = TSUDecimalSeparatorForCurrentLocale_sDecimalSeparator;
    CFRelease(v1);
    return TSUDecimalSeparatorForCurrentLocale_sDecimalSeparator;
  }

  return result;
}

CFTypeRef TSUDecimalSeparatorForNonCachedCurrentLocale()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = *MEMORY[0x277CBEEB8];

  return CFLocaleGetValue(v0, v1);
}

__CFString *TSUListSeparatorForCurrentLocale()
{
  result = TSUListSeparatorForCurrentLocale_sListSeparator;
  if (!TSUListSeparatorForCurrentLocale_sListSeparator)
  {
    v1 = CFLocaleCopyCurrent();
    Value = CFLocaleGetValue(v1, *MEMORY[0x277CBEEB8]);
    v3 = Value;
    CFRelease(v1);
    if ([Value isEqualToString:@"."])
    {
      result = @",";
    }

    else
    {
      result = @";";
    }

    TSUListSeparatorForCurrentLocale_sListSeparator = result;
  }

  return result;
}

void *TSUCurrencyCodesForLocale(const __CFLocale *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:{+[TSUNumberFormatter userVisibleCurrencyCodes](TSUNumberFormatter, "userVisibleCurrencyCodes")}];
  if (a1)
  {
    Value = CFLocaleGetValue(a1, *MEMORY[0x277CBEEA0]);
    if (Value)
    {
      v6 = Value;
      if (([v4 containsObject:Value] & 1) == 0)
      {
        [v4 insertObject:v6 atIndex:0];
      }
    }
  }

  if (a2 && ([v4 containsObject:a2] & 1) == 0)
  {
    [v4 insertObject:a2 atIndex:0];
  }

  return v4;
}

__CFArray *TSUCreateArrayOfDecimalFormattersForLocale(const __CFLocale *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], a1, kCFNumberFormatterDecimalStyle);
  v4 = *MEMORY[0x277CBEF20];
  CFNumberFormatterSetProperty(v3, *MEMORY[0x277CBEF20], @"xyzzyqghbv&q");
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v3);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"#, ##0;- #, ##0", @"#, ##0;(#, ##0)", @"#, ##0;( #, ##0)", 0}];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterNoStyle);
      CFNumberFormatterSetFormat(v9, [v5 objectAtIndex:i]);
      CFNumberFormatterSetProperty(v9, v4, @"xyzzyqghbv&q");
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
    }
  }

  return Mutable;
}

__CFArray *TSUCreateArrayOfCurrencyFormattersForCurrencyCode(const __CFLocale *a1, const __CFArray *a2, const void *a3)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v8 = Count;
    v9 = 0;
    v10 = *MEMORY[0x277CBEEF8];
    v11 = *MEMORY[0x277CBEF20];
    do
    {
      v12 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterNoStyle);
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
      CFNumberFormatterSetFormat(v12, ValueAtIndex);
      CFNumberFormatterSetProperty(v12, v10, a3);
      CFNumberFormatterSetProperty(v12, v11, @"xyzzyqghbv&q");
      CFArrayAppendValue(Mutable, v12);
      CFRelease(v12);
      ++v9;
    }

    while (v8 != v9);
  }

  return Mutable;
}

__CFArray *TSUCreateArrayOfCurrencyFormattersForLocale(const __CFLocale *a1, const __CFArray *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterCurrencyStyle);
  CFNumberFormatterSetProperty(v6, *MEMORY[0x277CBEF20], @"xyzzyqghbv&q");
  v7 = [-[__CFString positiveSubpatternOfNumberFormatPattern](CFNumberFormatterGetFormat(v6) "positiveSubpatternOfNumberFormatPattern")];
  CFArrayAppendValue(Mutable, v6);
  CFRelease(v6);
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@", v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;- ¤%@", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤", v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;- %@¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤ %@", v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤ %@;- ¤ %@", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ ¤", v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ ¤;- %@ ¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤-%@", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤ -%@", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤- %@", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤ - %@", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;(¤%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;( ¤%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;(¤%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;(¤ %@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;( ¤ %@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;(¤ %@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;( ¤%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;( ¤ %@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤(%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤( %@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤(%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤ (%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤(%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤ (%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤( %@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤(%@)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;(%@¤)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;( %@¤)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;(%@¤)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;(%@ ¤)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;( %@ ¤)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;(%@ ¤)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;( %@¤)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;( %@ ¤)", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;(%@)¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;( %@)¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;(%@)¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;(%@) ¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;( %@) ¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;(%@) ¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;( %@)¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;( %@) ¤", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤%@-", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤%@ -", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤ %@-", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"¤%@;¤ %@ -", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;%@¤-", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;%@¤ -", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;%@ ¤-", v7, v7)}];
  [v5 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@¤;%@ ¤ -", v7, v7)}];
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v9 = Count;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v12 = TSUCreateArrayOfCurrencyFormattersForCurrencyCode(a1, v5, ValueAtIndex);
      v14.length = CFArrayGetCount(v12);
      v14.location = 0;
      CFArrayAppendArray(Mutable, v12, v14);
      CFRelease(v12);
    }
  }

  return Mutable;
}

__CFArray *TSUCreateArrayOfPercentageFormattersForLocale(const __CFLocale *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterPercentStyle);
  v4 = *MEMORY[0x277CBEF20];
  CFNumberFormatterSetProperty(v3, *MEMORY[0x277CBEF20], @"xyzzyqghbv&q");
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v3);
  v5 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterNoStyle);
  CFNumberFormatterSetFormat(v5, @"#,##0 %");
  CFNumberFormatterSetProperty(v5, v4, @"xyzzyqghbv&q");
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v5);
  v6 = CFNumberFormatterCreate(0, a1, kCFNumberFormatterNoStyle);
  CFNumberFormatterSetFormat(v6, @"#,##0%");
  CFNumberFormatterSetProperty(v6, v4, @"xyzzyqghbv&q");
  CFArrayAppendValue(Mutable, v6);
  CFRelease(v6);
  return Mutable;
}

CFArrayRef TSUCreateArrayOfScientificFormattersForLocale(CFLocaleRef locale)
{
  values = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], locale, kCFNumberFormatterScientificStyle);
  v1 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
  CFRelease(values);
  return v1;
}

uint64_t TSUImprovedCFNumberFormatterGetValueFromString(__CFNumberFormatter *a1, CFStringRef theString, double *a3)
{
  v10.location = 0;
  v10.length = CFStringGetLength(theString);
  ValueFromString = CFNumberFormatterGetValueFromString(a1, theString, &v10, kCFNumberDoubleType, a3);
  if (a3 && ValueFromString)
  {
    if (v10.location || (length = v10.length, length != CFStringGetLength(theString)))
    {
      result = 0;
    }

    else
    {
      v8 = __fpclassifyd(*a3);
      result = 1;
      if (v8 != 3)
      {
        return result;
      }
    }

LABEL_10:
    *a3 = 0.0;
    return result;
  }

  result = 0;
  if (a3)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t TSUGetNumberValueAndTypeFromStringWithCurrencyCode(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, void *a6, uint64_t a7)
{
  if (a1)
  {
    if (a5)
    {
      *a5 = -999;
    }

    v13 = [TSUNumberFormatter formatterForLocale:a3];
    MutableCopy = CFStringCreateMutableCopy(0, 0, a1);
    CFStringTransform(MutableCopy, 0, *MEMORY[0x277CBF0A8], 0);
    v15 = [(__CFString *)MutableCopy newStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand];
    CFRelease(MutableCopy);
    if ([v13 decimalFromString:v15 value:a4 formatString:a6])
    {
      if (a5)
      {
        *a5 = 0;
      }

      goto LABEL_18;
    }

    if ([v13 currencyFromString:v15 additionalCurrencyCode:a2 value:a4 formatString:a6 currencyCode:a7])
    {
      v16 = 1;
      if (a5)
      {
        *a5 = 1;
      }

      goto LABEL_19;
    }

    if ([v13 percentageFromString:v15 value:a4 formatString:a6])
    {
      if (a5)
      {
        v17 = 2;
LABEL_17:
        *a5 = v17;
      }
    }

    else if ([v13 scientificFromString:v15 value:a4 formatString:a6])
    {
      if (a5)
      {
        v17 = 3;
        goto LABEL_17;
      }
    }

    else
    {
      if (![v13 fractionFromString:v15 value:a4])
      {
        v16 = 0;
        goto LABEL_19;
      }

      if (a5)
      {
        *a5 = 4;
      }

      if (a6)
      {
        *a6 = 0;
      }
    }

LABEL_18:
    v16 = 1;
LABEL_19:

    return v16;
  }

  return 0;
}

__CFString *TSUNumberFormatterStringFromValueType(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_279D65EB8[a1];
  }
}

__CFString *TSUNumberFormatterStringFromNegativeStyle(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279D65EE8[a1];
  }
}

__CFString *TSUNumberFormatterStringFromFractionAccuracy(uint64_t a1)
{
  if (a1 <= 0xFFFFFFFC)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"1/%d", a1];
  }

  else
  {
    return off_279D65F10[a1 + 3];
  }
}

void *TSUNumberFormatterStringByUnescapingFormatString(void *a1)
{
  v2 = [a1 length];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      v5 = [a1 characterAtIndex:v4];
      v6 = v5;
      v7 = v4 + 1;
      if (v4 + 1 >= v2)
      {
        if (v5 != 39)
        {
LABEL_16:
          [v3 appendFormat:@"%C", v6];
        }

        ++v4;
        goto LABEL_18;
      }

      v8 = [a1 characterAtIndex:v4 + 1];
      if (v6 != 39)
      {
        goto LABEL_16;
      }

      if (v8 != 39)
      {
        break;
      }

      [v3 appendString:@"'"];
      v4 += 2;
LABEL_18:
      if (v4 >= v2)
      {
        return v3;
      }
    }

    while (1)
    {
      v9 = [a1 characterAtIndex:v7];
      v10 = v9;
      v4 = v7 + 1;
      if (v7 + 1 >= v2)
      {
        if (v9 == 39)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = [a1 characterAtIndex:v7 + 1];
        if (v10 == 39)
        {
          if (v11 != 39)
          {
            goto LABEL_18;
          }

          [v3 appendString:@"'"];
          v4 = v7 + 2;
          goto LABEL_13;
        }
      }

      [v3 appendFormat:@"%C", v10];
LABEL_13:
      v7 = v4;
      if (v4 >= v2)
      {
        goto LABEL_18;
      }
    }
  }

  return v3;
}

__CFString *TSUNumberFormatterDisplayNSStringForFractionAccuracy(uint64_t a1, uint64_t a2)
{
  if (a1 > 3)
  {
    if (a1 <= 9)
    {
      if (a1 == 4)
      {
        v2 = @"Quarters";
        goto LABEL_24;
      }

      if (a1 == 8)
      {
        v2 = @"Eighths";
        goto LABEL_24;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xA:
          v2 = @"Tenths";
          goto LABEL_24;
        case 0x10:
          v2 = @"Sixteenths";
          goto LABEL_24;
        case 0x64:
          v2 = @"Hundredths";
          goto LABEL_24;
      }
    }

    return @"Unknown TSU fraction type";
  }

  if (a1 <= -2)
  {
    if (a1 == -3)
    {
      v2 = @"Up to 3 digits (445/553)";
      goto LABEL_24;
    }

    if (a1 == -2)
    {
      v2 = @"Up to 2 digits (23/24)";
      goto LABEL_24;
    }

    return @"Unknown TSU fraction type";
  }

  if (a1 == -1)
  {
    v2 = @"Up to 1 digit (7/8)";
    goto LABEL_24;
  }

  if (!a1)
  {
    v2 = @"Conflicting";
    goto LABEL_24;
  }

  if (a1 != 2)
  {
    return @"Unknown TSU fraction type";
  }

  v2 = @"Halves";
LABEL_24:
  v3 = SFUBundle(a1, a2);

  return [v3 localizedStringForKey:v2 value:&stru_287DDF830 table:@"TSUtility"];
}

uint64_t TSUDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

void *TSUSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

void *TSUProtocolCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  return 0;
}

void *TSUClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

CFTypeRef TSUCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

uint64_t TSUCheckedDynamicCast(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedDynamicCast(Class, id<NSObject>)"}];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCast.m"), 94, @"Unexpected object type in checked dynamic cast"}];
    return 0;
  }

  return v2;
}

uint64_t TSUCheckedStaticCast(uint64_t a1, uint64_t a2)
{
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedStaticCast(Class, id<NSObject>)"}];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCast.m"), 105, @"Unexpected object type in checked static cast.  This is a serious problem and could lead to a crash, or worse."}];
  }

  return a2;
}

void *TSUCheckedProtocolCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedProtocolCast(Protocol *, id<NSObject>)"}];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCast.m"), 116, @"Unexpected object type in checked protocol cast"}];
    return 0;
  }

  return v2;
}

void *TSUCheckedStaticProtocolCast(uint64_t a1, void *a2)
{
  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSUCheckedStaticProtocolCast(Protocol *, id<NSObject>)"}];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCast.m"), 127, @"Unexpected object type in checked protocol cast. This is a serious problem and could lead to a crash, or worse."}];
  }

  return a2;
}

__CFString *NSStringFromTSUError(int a1)
{
  v1 = @"Table has maximum number of cells";
  v2 = @"Table ID already used by another table registered with the calc engine";
  if (a1 != 1002)
  {
    v2 = 0;
  }

  if (a1 != 1001)
  {
    v1 = v2;
  }

  v3 = @"Table cell is undefined";
  if (a1 != 1000)
  {
    v3 = 0;
  }

  if (a1 == 4)
  {
    v3 = @"Function not implemented";
  }

  if (a1 <= 1000)
  {
    v1 = v3;
  }

  v4 = @"Not found";
  v5 = @"Argument out of bounds";
  if (a1 != 3)
  {
    v5 = 0;
  }

  if (a1 != 2)
  {
    v4 = v5;
  }

  v6 = @"Unspecified error";
  if (a1 != 1)
  {
    v6 = 0;
  }

  if (!a1)
  {
    v6 = @"No error";
  }

  if (a1 <= 1)
  {
    v4 = v6;
  }

  if (a1 <= 3)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

void TSULogErrorInMethod(const char *a1, objc_class *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = objc_opt_class();
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = NSStringFromClass(v14);
  v19 = NSStringFromSelector(a1);
  v16 = 45;
  if (v14 == a2)
  {
    v16 = 43;
  }

  v17 = [v15 initWithFormat:@"%c[%@ %@]", v16, v18, v19];
  TSULogErrorInLocation(v17, a3, a4, a5, &a9);
}

void TSULogErrorInLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a4 arguments:a5];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
  v9 = [v8 lastPathComponent];

  TSULogSink(@"Error", @"*** Error: %@ %@:%ld %@", a1, v9, a3, v10);
}

void TSULogErrorInFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a1];
  TSULogErrorInLocation(v12, a2, a3, a4, &a9);
}

void TSULogOnceFn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (TSULogOnceFn_onceToken != -1)
  {
    TSULogOnceFn_cold_1();
  }

  block[6] = &a9;
  v11 = [MEMORY[0x277CCACA8] tsu_stringWithFormat:a2 arguments:&a9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __TSULogOnceFn_block_invoke_2;
  block[3] = &unk_279D65F40;
  block[4] = a1;
  block[5] = v11;
  dispatch_sync(TSULogOnceFn_logOnceQueue, block);
}

dispatch_queue_t __TSULogOnceFn_block_invoke()
{
  TSULogOnceFn_tokens = objc_opt_new();
  result = dispatch_queue_create("TSULogOnce", 0);
  TSULogOnceFn_logOnceQueue = result;
  return result;
}

void *__TSULogOnceFn_block_invoke_2(uint64_t a1)
{
  result = [TSULogOnceFn_tokens containsObject:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    NSLog(@"%@", *(a1 + 40));
    v3 = TSULogOnceFn_tokens;
    v4 = *(a1 + 32);

    return [v3 addObject:v4];
  }

  return result;
}

void *TSUNormalizeRanges(void *a1)
{
  [a1 sortUsingFunction:compareRangeValues context:0];
  result = [a1 count];
  if (result >= 2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v3;
      v3 = v4;
      location = [objc_msgSend(a1 objectAtIndex:{v5), "rangeValue"}];
      length = v7;
LABEL_4:
      v9 = [objc_msgSend(a1 objectAtIndex:{v4), "rangeValue"}];
      for (i = v10; ; i = 0)
      {
        v13.location = location;
        v13.length = length;
        v15.location = v9;
        v15.length = i;
        if (!NSIntersectionRange(v13, v15).length)
        {
          break;
        }

        v14.location = location;
        v14.length = length;
        v16.location = v9;
        v16.length = i;
        v12 = NSUnionRange(v14, v16);
        location = v12.location;
        length = v12.length;
        [a1 replaceObjectAtIndex:v5 withObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", v12.location, v12.length)}];
        [a1 removeObjectAtIndex:v4];
        if ([a1 count] > v4)
        {
          goto LABEL_4;
        }
      }

      v4 = (v4 + 1);
      result = [a1 count];
    }

    while (result > v4);
  }

  return result;
}

uint64_t compareRangeValues(objc_object *a1, objc_object *a2, void *a3)
{
  v4 = [(objc_object *)a1 rangeValue];
  v5 = [(objc_object *)a2 rangeValue];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

void *TSUIntersectionLocations(void *a1, void *a2)
{
  v4 = [a1 count];
  v5 = [a2 count];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v8 = [a1 mutableCopy];
  v9 = [a2 mutableCopy];
  TSUNormalizeRanges(v8);
  TSUNormalizeRanges(v9);
  if (v4 && v5 && [v8 count])
  {
    do
    {
      if (![v9 count])
      {
        break;
      }

      v10 = [objc_msgSend(v8 objectAtIndex:{0), "rangeValue"}];
      v12 = v11;
      v13 = [objc_msgSend(v9 objectAtIndex:{0), "rangeValue"}];
      v15 = v14;
      v20.location = v10;
      v20.length = v12;
      v22.location = v13;
      v22.length = v15;
      if (NSIntersectionRange(v20, v22).length)
      {
        v16 = MEMORY[0x277CCAE60];
        v21.location = v10;
        v21.length = v12;
        v23.location = v13;
        v23.length = v15;
        v17 = NSIntersectionRange(v21, v23);
        [v7 addObject:{objc_msgSend(v16, "valueWithRange:", v17.location, v17.length)}];
      }

      v18 = v10 >= v13 ? v9 : v8;
      [v18 removeObjectAtIndex:0];
    }

    while ([v8 count]);
  }

  return v7;
}

void *TSUUnionLocations(void *a1, void *a2)
{
  v4 = [a1 count];
  v5 = [a2 count];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v8 = [a1 mutableCopy];
  v9 = [a2 mutableCopy];
  TSUNormalizeRanges(v8);
  TSUNormalizeRanges(v9);
LABEL_5:
  if ([v8 count] && objc_msgSend(v9, "count"))
  {
    v10 = [objc_msgSend(v8 objectAtIndex:{0), "rangeValue"}];
    v12 = v11;
    v13 = [objc_msgSend(v9 objectAtIndex:{0), "rangeValue"}];
    v15 = v13;
    v16 = v14;
    if (v10 >= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v10;
    }

    if (v10 >= v13)
    {
      length = v14;
    }

    else
    {
      length = v12;
    }

    while (1)
    {
      while (1)
      {
        if (![v8 count] || !objc_msgSend(v9, "count"))
        {
LABEL_24:
          [v7 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", v17, length)}];
          goto LABEL_5;
        }

        v26.location = v10;
        v26.length = v12;
        v30.location = v17;
        v30.length = length;
        location = NSIntersectionRange(v26, v30).location;
        v20 = location != 0;
        if (location)
        {
          v27.location = v10;
          v27.length = v12;
          v31.location = v17;
          v31.length = length;
          v21 = NSUnionRange(v27, v31);
          v17 = v21.location;
          length = v21.length;
          [v8 removeObjectAtIndex:0];
          if ([v8 count])
          {
            v10 = [objc_msgSend(v8 objectAtIndex:{0), "rangeValue"}];
            v12 = v22;
          }
        }

        v28.location = v15;
        v28.length = v16;
        v32.location = v17;
        v32.length = length;
        if (NSIntersectionRange(v28, v32).location)
        {
          break;
        }

LABEL_21:
        if (!v20)
        {
          goto LABEL_24;
        }
      }

      v29.location = v15;
      v29.length = v16;
      v33.location = v17;
      v33.length = length;
      v23 = NSUnionRange(v29, v33);
      v17 = v23.location;
      length = v23.length;
      [v9 removeObjectAtIndex:0];
      if (![v9 count])
      {
        v20 = 1;
        goto LABEL_21;
      }

      v15 = [objc_msgSend(v9 objectAtIndex:{0), "rangeValue"}];
      v16 = v24;
    }
  }

  [v7 addObjectsFromArray:v8];
  [v7 addObjectsFromArray:v9];

  return v7;
}

void *TSUComplementLocations(void *a1, void *a2)
{
  v4 = [a1 count];
  v5 = [a2 count];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v8 = [a1 mutableCopy];
  v9 = [a2 mutableCopy];
  TSUNormalizeRanges(v8);
  TSUNormalizeRanges(v9);
  v10 = [objc_msgSend(v8 objectAtIndex:{0), "rangeValue"}];
  if ([v8 count])
  {
    v11 = 0;
    do
    {
      if (![v9 count])
      {
        break;
      }

      v12 = [objc_msgSend(v8 objectAtIndex:{0), "rangeValue"}];
      v14 = v13;
      v15 = [objc_msgSend(v9 objectAtIndex:{0), "rangeValue"}];
      v20.length = v16;
      v19.location = v12;
      v19.length = v14;
      v20.location = v15;
      v17 = NSIntersectionRange(v19, v20);
      if (v17.location)
      {
        if (v17.location > v10)
        {
          v11 = v17.location - v10;
        }

        if (v11)
        {
          [v7 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", v10, v11)}];
        }

        if (v12 + v14 <= v17.location + v17.length)
        {
          goto LABEL_16;
        }

        [v9 removeObjectAtIndex:0];
        v11 = 0;
        v10 = v17.location + v17.length;
      }

      else
      {
        if (v15 > v12)
        {
          v11 = v12 + v14 - v10;
          [v7 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", v10, v11)}];
LABEL_16:
          [v8 removeObjectAtIndex:0];
          if ([v8 count])
          {
            v10 = [objc_msgSend(v8 objectAtIndex:{0), "rangeValue"}];
            v11 = 0;
          }

          continue;
        }

        [v9 removeObjectAtIndex:0];
      }
    }

    while ([v8 count]);
  }

  return v7;
}

NSUInteger TSUIntersectionRangeWithEdge(NSRange a1, NSRange a2, int a3)
{
  length = a2.length;
  location = a2.location;
  v6 = a1.length;
  v7 = a1.location;
  v8 = NSIntersectionRange(a1, a2);
  if (length)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 | location)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v8 == 0uLL)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8.location;
  }

  if (location + length == v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7 + v6 == location)
  {
    v14 = location;
  }

  else
  {
    v14 = v13;
  }

  if (a3)
  {
    return v14;
  }

  else
  {
    return v12;
  }
}

unint64_t TSUAdjustSelectionRangeForChangedRange(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  if (a5)
  {
    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [TSUAssertionHandler currentHandler:a3];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSRange TSUAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"}];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSURangeUtils.mm"), 280, @"Bad selectionRange passed to TSUAdjustSelectionRangeForChangedRange"}];
      if (a3 != 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_6;
    }

    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_6:
      v9 = +[TSUAssertionHandler currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSRange TSUAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"}];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSURangeUtils.mm"];
      v12 = @"Bad changingRange passed to TSUAdjustSelectionRangeForChangedRange";
      v13 = v9;
      v14 = v10;
      v15 = 281;
LABEL_7:
      [v13 handleFailureInFunction:v14 file:v11 lineNumber:v15 description:v12];
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (-a4 > a5)
    {
      v18 = +[TSUAssertionHandler currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSRange TSUAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"}];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSURangeUtils.mm"];
      v12 = @"Bad delta passed to TSUAdjustSelectionRangeForChangedRange";
      v13 = v18;
      v14 = v19;
      v15 = 285;
      goto LABEL_7;
    }

    v20 = a1 + a2;
    if (a1 + a2 >= a3)
    {
      v21 = a3 + a4;
      if (a3 + a4 >= a1)
      {
        if ((a3 != a1 || a4 != a2) && (a1 > a3 || v20 < v21) && a3 <= a1)
        {
          if (v21 >= v20)
          {
            if (-a2 > a5 && a1 >= a4 + a5 + a3)
            {
              return a4 + a5 + a3;
            }
          }

          else
          {
            if (a1 <= a3)
            {
              v22 = +[TSUAssertionHandler currentHandler];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSRange TSUAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"}];
              [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSURangeUtils.mm"), 326, @"expected selectionRange to start within changingRange"}];
            }

            if (a3 > v5 + a5)
            {
              return a3;
            }
          }
        }
      }

      else
      {
        return a1 + a5;
      }
    }
  }

  return v5;
}

NSUInteger TSUUnionRangesIgnoringInvalid(NSRange a1, NSRange a2)
{
  if (a1.location != TSUInvalidRange || a1.length != *algn_2804BAFE8)
  {
    if (a2.location != TSUInvalidRange || a2.length != *algn_2804BAFE8)
    {
      return NSUnionRange(a1, a2).location;
    }

    a2.location = a1.location;
  }

  return a2.location;
}

BOOL TSUCFUUIDEqual(const __CFUUID *a1, const __CFUUID *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1 && a2)
  {
    return 0;
  }

  if (a1 && !a2)
  {
    return 0;
  }

  v4 = CFUUIDGetUUIDBytes(a1);
  v5 = CFUUIDGetUUIDBytes(a2);
  if (((*&v5.byte0 ^ *&v4.byte0) & 0xFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  if (*&v4.byte0 == *&v5.byte0)
  {
    return *&v4.byte8 == *&v5.byte8;
  }

  return 0;
}

void TSUCopyCFStringIntoStdString(CFStringRef theString, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  TSUUTF8Converter<256>::TSUUTF8Converter(v3, theString);
  MEMORY[0x26D6AB860](a2, v5);
  if (v4)
  {
    free(v4);
  }
}

void sub_26CBA9E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (a42)
  {
    free(a42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSUUTF8Converter<256>::TSUUTF8Converter(uint64_t a1, CFStringRef theString)
{
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  *(a1 + 264) = CStringPtr;
  if (!CStringPtr)
  {
    maxBufLen = 0;
    Length = CFStringGetLength(theString);
    if (Length <= 62 && (v10.location = 0, v10.length = Length, CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, a1, 255, &maxBufLen) == Length))
    {
      *(a1 + maxBufLen) = 0;
      *(a1 + 264) = a1;
    }

    else if (!*(a1 + 264))
    {
      maxBufLen = 0;
      v11.location = 0;
      v11.length = Length;
      if (CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, 0, 0, &maxBufLen) == Length)
      {
        v6 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
        *(a1 + 256) = v6;
        if (v6)
        {
          usedBufLen = 0;
          v12.location = 0;
          v12.length = Length;
          CFStringGetBytes(theString, v12, 0x8000100u, 0, 0, v6, maxBufLen, &usedBufLen);
          if (usedBufLen == maxBufLen)
          {
            *(*(a1 + 256) + usedBufLen) = 0;
            *(a1 + 264) = *(a1 + 256);
          }
        }
      }
    }
  }

  return a1;
}

BOOL TSUHandleSqlite(unsigned int a1, void *a2, void *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v14 = a6 ? [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a6 arguments:&a9] : @"SQLite error";
    if (a1 != 101)
    {
      sqlite3_errmsg([a3 _sqliteDatabase]);
    }

    TSULogErrorInMethod(a4, a3, "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m", a5, @"%@: %s (%d)", a6, a7, a8, v14);
    if (a2)
    {
      if (!*a2)
      {
        v15 = 0;
        if (a1 > 265)
        {
          if (a1 == 266 || a1 == 522)
          {
            goto LABEL_19;
          }

          if (a1 != 778)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (a1 > 0x19)
          {
LABEL_21:
            *a2 = [MEMORY[0x277CCA9B8] tsuErrorWithCode:v15];
            return a1 == 0;
          }

          if (((1 << a1) & 0x27A0000) != 0)
          {
            v16 = +[TSUAssertionHandler currentHandler];
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUHandleSqlite(int, NSError **, TSUDatabase *, SEL, long, NSString *, ...)"}];
            [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 415, @"SQLite misused"}];
            v15 = 0;
            goto LABEL_21;
          }

          if (a1 != 13)
          {
            if (a1 != 14)
            {
              goto LABEL_21;
            }

LABEL_19:
            v15 = 1;
            goto LABEL_21;
          }
        }

        v15 = 2;
        goto LABEL_21;
      }
    }
  }

  return a1 == 0;
}

uint64_t TSUCFArrayShortDescription(const __CFArray *a1)
{
  v1 = [TSUDescription descriptionWithCFType:a1 format:@"; count=%ld", CFArrayGetCount(a1)];

  return [(TSUDescription *)v1 descriptionString];
}

uint64_t TSUCFArrayDescription(const __CFArray *a1)
{
  v2 = [TSUDescription descriptionWithCFType:a1 format:@"; count=%ld", CFArrayGetCount(a1)];
  if (CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    do
    {
      -[TSUDescription addField:format:](v2, "addField:format:", [MEMORY[0x277CCACA8] stringWithFormat:@"[%d]", v3], @"%@", CFArrayGetValueAtIndex(a1, v3));
      ++v3;
    }

    while (CFArrayGetCount(a1) > v3);
  }

  [(TSUDescription *)v2 setFieldOptionCommaSeparated];

  return [(TSUDescription *)v2 descriptionString];
}

uint64_t TSUCFDictionaryDescription(const __CFDictionary *a1)
{
  v2 = [TSUDescription descriptionWithCFType:a1 format:&stru_287DDF830];
  CFDictionaryApplyFunction(a1, CFDictionaryDescriptionApplierFunction, v2);

  return [(TSUDescription *)v2 descriptionString];
}

__CFString *TSUObjectReferenceDescription(void *a1)
{
  if (!a1)
  {
    return @"<nil>";
  }

  ClassName = object_getClassName(a1);
  v3 = strcmp(ClassName, "NSCFArray");
  v4 = MEMORY[0x277CCACA8];
  v5 = object_getClassName(a1);
  if (v3)
  {
    return [v4 stringWithFormat:@"(%s*)%p", v5, a1, v7];
  }

  else
  {
    return [v4 stringWithFormat:@"(%s*)%p; count=%ld", v5, a1, CFArrayGetCount(a1)];
  }
}

__CFString *TSUCGColorDescription(CGColor *a1)
{
  if (!a1)
  {
    return @"CGColor(NULL)";
  }

  ColorSpace = CGColorGetColorSpace(a1);
  NumberOfComponents = CGColorGetNumberOfComponents(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelRGB)
  {
    if (NumberOfComponents != 4)
    {
LABEL_10:
      v7 = CFCopyDescription(a1);
      v9 = v7;
      return v7;
    }

    Components = CGColorGetComponents(a1);
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"CGColor(%p) RGB (%g %g %g %g)", a1, *Components, *(Components + 1), *(Components + 2), *(Components + 3)];
  }

  else
  {
    if (Model || NumberOfComponents != 2)
    {
      goto LABEL_10;
    }

    v5 = CGColorGetComponents(a1);
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"CGColor(%p) Gray (%g %g)", a1, *v5, *(v5 + 1), v11, v12];
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  return v7;
}

void *TSUStringArrayFromBitFields(void *a1, unint64_t a2)
{
  v4 = [MEMORY[0x277CBEB18] array];
  if ([a1 count])
  {
    v5 = 0;
    do
    {
      v6 = [a1 objectAtIndex:v5];
      if ([v6 count])
      {
        if (((a2 >> v5) & 1) >= [v6 count])
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Bad Value: %lu>", (a2 >> v5) & 1];
        }

        else
        {
          v7 = [v6 objectAtIndex:(a2 >> v5) & 1];
        }

        v8 = v7;
        if ([v7 length])
        {
          [v4 addObject:v8];
        }
      }

      ++v5;
    }

    while (v5 < [a1 count]);
  }

  return v4;
}

BOOL TSUCGColorEqualToColorWithFloatTolerance(CGColor *a1, CGColor *a2)
{
  ColorSpace = CGColorGetColorSpace(a1);
  v5 = CGColorGetColorSpace(a2);
  if (CFEqual(ColorSpace, v5))
  {
    NumberOfComponents = CGColorGetNumberOfComponents(a1);
    Components = CGColorGetComponents(a1);
    v8 = CGColorGetComponents(a2);
    if (!NumberOfComponents)
    {
      return 1;
    }

    v9 = NumberOfComponents - 1;
    do
    {
      v10 = *Components++;
      v11 = v10;
      v12 = *v8++;
      v13 = vabdd_f64(v11, v12);
      v15 = v9-- != 0;
      v16 = v13 < 0.00999999978;
    }

    while (v13 < 0.00999999978 && v15);
    return v16;
  }

  else
  {

    return CGColorEqualToColor(a1, a2);
  }
}

uint64_t TSUDeviceRGBColorSpace(uint64_t a1, uint64_t a2)
{
  if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    TSUDeviceRGBColorSpace_cold_1();
  }

  return TSUDeviceRGBColorSpace_sDeviceRGBColorSpace;
}

CGColorSpaceRef __TSUDeviceRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  TSUDeviceRGBColorSpace_sDeviceRGBColorSpace = result;
  return result;
}

uint64_t TSUDeviceCMYKColorSpace(uint64_t a1, uint64_t a2)
{
  if (TSUDeviceCMYKColorSpace_sDeviceCMYKDispatchOnce != -1)
  {
    TSUDeviceCMYKColorSpace_cold_1();
  }

  return TSUDeviceCMYKColorSpace_sDeviceCMYKColorSpace;
}

CGColorSpaceRef __TSUDeviceCMYKColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceCMYK();
  TSUDeviceCMYKColorSpace_sDeviceCMYKColorSpace = result;
  return result;
}

uint64_t TSUDeviceGrayColorSpace(uint64_t a1, uint64_t a2)
{
  if (TSUDeviceGrayColorSpace_sDeviceGrayDispatchOnce != -1)
  {
    TSUDeviceGrayColorSpace_cold_1();
  }

  return TSUDeviceGrayColorSpace_sDeviceGrayColorSpace;
}

CGColorSpaceRef __TSUDeviceGrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceGray();
  TSUDeviceGrayColorSpace_sDeviceGrayColorSpace = result;
  return result;
}

uint64_t TSUGenericRGBColorSpace(uint64_t a1, uint64_t a2)
{
  if (TSUGenericRGBColorSpace_sGenericRGBDispatchOnce != -1)
  {
    TSUGenericRGBColorSpace_cold_1();
  }

  return TSUGenericRGBColorSpace_sGenericRGBColorSpace;
}

CGColorSpaceRef __TSUGenericRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF458]);
  TSUGenericRGBColorSpace_sGenericRGBColorSpace = result;
  return result;
}

uint64_t TSUGenericCMYKColorSpace(uint64_t a1, uint64_t a2)
{
  if (TSUGenericCMYKColorSpace_sGenericCMYKDispatchOnce != -1)
  {
    TSUGenericCMYKColorSpace_cold_1();
  }

  return TSUGenericCMYKColorSpace_sGenericCMYKColorSpace;
}

CGColorSpaceRef __TSUGenericCMYKColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF438]);
  TSUGenericCMYKColorSpace_sGenericCMYKColorSpace = result;
  return result;
}

uint64_t TSUGenericGrayColorSpace(uint64_t a1, uint64_t a2)
{
  if (TSUGenericGrayColorSpace_sGenericGrayDispatchOnce != -1)
  {
    TSUGenericGrayColorSpace_cold_1();
  }

  return TSUGenericGrayColorSpace_sGenericGrayColorSpace;
}

CGColorSpaceRef __TSUGenericGrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF440]);
  TSUGenericGrayColorSpace_sGenericGrayColorSpace = result;
  return result;
}

uint64_t TSUSRGBColorSpace(uint64_t a1, uint64_t a2)
{
  if (TSUSRGBColorSpace_sSRGBDispatchOnce != -1)
  {
    TSUSRGBColorSpace_cold_1();
  }

  return TSUSRGBColorSpace_sSRGBColorSpace;
}

CGColorSpaceRef __TSUSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  TSUSRGBColorSpace_sSRGBColorSpace = result;
  if (!result)
  {
    result = CGColorSpaceCreateDeviceRGB();
    TSUSRGBColorSpace_sSRGBColorSpace = result;
  }

  return result;
}

uint64_t TSUP3ColorSpace(uint64_t a1, uint64_t a2)
{
  if (TSUP3ColorSpace_sP3DispatchOnce != -1)
  {
    TSUP3ColorSpace_cold_1();
  }

  return TSUP3ColorSpace_sP3ColorSpace;
}

CGColorSpaceRef __TSUP3ColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
  TSUP3ColorSpace_sP3ColorSpace = result;
  if (!result)
  {
    result = CGColorSpaceCreateDeviceRGB();
    TSUP3ColorSpace_sP3ColorSpace = result;
  }

  return result;
}

CGImageRef TSUCGImageCreateCopyByApplyingGenericColorSpaceIfNeeded(CGImageRef image, const __CFDictionary *a2)
{
  if (!a2)
  {
    goto LABEL_18;
  }

  if (TSUCGImagePropertiesIncludeColorSpace(a2))
  {
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CD2E40]);
  if (!Value)
  {
    goto LABEL_18;
  }

  v5 = Value;
  if (CFStringCompare(Value, *MEMORY[0x277CD2E58], 0) == kCFCompareEqualTo)
  {
    if (TSUGenericRGBColorSpace_sGenericRGBDispatchOnce != -1)
    {
      TSUGenericRGBColorSpace_cold_1();
    }

    v6 = &TSUGenericRGBColorSpace_sGenericRGBColorSpace;
LABEL_16:
    if (*v6)
    {
      result = CGImageCreateCopyWithColorSpace(image, *v6);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_18;
  }

  if (CFStringCompare(v5, *MEMORY[0x277CD2E48], 0) == kCFCompareEqualTo)
  {
    if (TSUGenericCMYKColorSpace_sGenericCMYKDispatchOnce != -1)
    {
      TSUGenericCMYKColorSpace_cold_1();
    }

    v6 = &TSUGenericCMYKColorSpace_sGenericCMYKColorSpace;
    goto LABEL_16;
  }

  if (CFStringCompare(v5, *MEMORY[0x277CD2E50], 0) == kCFCompareEqualTo)
  {
    if (TSUGenericGrayColorSpace_sGenericGrayDispatchOnce != -1)
    {
      TSUGenericGrayColorSpace_cold_1();
    }

    v6 = &TSUGenericGrayColorSpace_sGenericGrayColorSpace;
    goto LABEL_16;
  }

LABEL_18:

  return CGImageRetain(image);
}

const __CFDictionary *TSUCGImagePropertiesIncludeColorSpace(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, *MEMORY[0x277CD3460]);
    if (result)
    {
      return (CFStringGetLength(result) > 0);
    }
  }

  return result;
}

CGColorRef TSUCGColorCreateWithUIColor(void *a1)
{
  v1 = [a1 CGColor];

  return CGColorCreateCopy(v1);
}

CGColorRef TSUCGColorCreateDeviceRGB(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    TSUDeviceRGBColorSpace_cold_1();
  }

  return CGColorCreate(TSUDeviceRGBColorSpace_sDeviceRGBColorSpace, components);
}

CGColorRef TSUCGColorCreateDeviceGray(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  components[2] = *MEMORY[0x277D85DE8];
  components[0] = a3;
  components[1] = a4;
  if (TSUDeviceGrayColorSpace_sDeviceGrayDispatchOnce != -1)
  {
    TSUDeviceGrayColorSpace_cold_1();
  }

  return CGColorCreate(TSUDeviceGrayColorSpace_sDeviceGrayColorSpace, components);
}

CGColorRef TSUCGColorCreateRandomRGB()
{
  v0 = TSURandom();
  v1 = TSURandom();
  v4 = TSURandom();

  return TSUCGColorCreateDeviceRGB(v2, v3, v0, v1, v4, 1.0);
}

CGPatternRef TSUCGPatternCreateWithImageAndTransform(CGImageRef image, __int128 *a2)
{
  if (!image)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGPatternRef TSUCGPatternCreateWithImageAndTransform(CGImageRef, const CGAffineTransform *)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColorUtils.m"), 227, @"can't create an image pattern without an image"}];
  }

  CGImageRetain(image);
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (a2)
  {
    v10 = a2[1];
    v15 = *a2;
    v16 = v10;
    v11 = a2[2];
  }

  else
  {
    v12 = *(MEMORY[0x277CBF2C0] + 16);
    v15 = *MEMORY[0x277CBF2C0];
    v16 = v12;
    v11 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v17 = v11;
  v18.size.height = Height;
  v18.size.width = Width;
  *&v14.a = v15;
  *&v14.c = v16;
  *&v14.tx = v11;
  v18.origin.x = v6;
  v18.origin.y = v7;
  return CGPatternCreate(image, v18, &v14, Width, v18.size.height, kCGPatternTilingConstantSpacing, 1, &TSUCGPatternCreateWithImageAndTransform_sCallbacks);
}

void TSUDrawImageAtOriginInContext(CGImage *a1, CGContext *a2)
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = v4;
  v9 = v5;
  v10 = Width;

  CGContextDrawImage(a2, *&v8, a1);
}

CGColorRef TSUCGColorCreatePatternWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = TSUCGPatternCreateWithImageAndTransform(a1, a2);
  Pattern = CGColorSpaceCreatePattern(0);
  v6[0] = 1.0;
  v4 = CGColorCreateWithPattern(Pattern, v2, v6);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v2);
  return v4;
}

CGColorRef TSUCreateCGColorFromHSBInColorSpace(CGColorSpace *a1, double a2, double a3, double a4, double a5)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[1] = a5;
  TSUHSBToRGB(&components, &v8, v9, a2, a3, a4);
  if (!a1)
  {
    if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
    {
      TSUDeviceRGBColorSpace_cold_1();
    }

    a1 = TSUDeviceRGBColorSpace_sDeviceRGBColorSpace;
  }

  return CGColorCreate(a1, &components);
}

double *TSUHSBToRGB(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

uint64_t TSUHSBFromCGColorRef(CGColorRef color, double *a2, double *a3, double *a4, CGFloat *a5)
{
  *a5 = 0.0;
  *a4 = 0.0;
  *a3 = 0.0;
  *a2 = 0.0;
  if (!color)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUHSBFromCGColorRef(CGColorRef, CGFloat *, CGFloat *, CGFloat *, CGFloat *)"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColorUtils.m"), 278, @"NULL color"}];
  }

  ColorSpace = CGColorGetColorSpace(color);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB || CGColorGetNumberOfComponents(color) != 4)
  {
    return 0;
  }

  *a5 = CGColorGetAlpha(color);
  Components = CGColorGetComponents(color);
  TSURGBToHSB(a2, a3, a4, *Components, Components[1], Components[2]);
  return 1;
}

double TSURGBToHSB(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

double TSUCMYKToRGB(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  *a1 = 1.0 - fmin(a7 + a4 * (1.0 - a7), 1.0);
  *a2 = 1.0 - fmin(a7 + a5 * (1.0 - a7), 1.0);
  result = 1.0 - fmin(a7 + a6 * (1.0 - a7), 1.0);
  *a3 = result;
  return result;
}

BOOL TSUColorIsBlack(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  Components = CGColorGetComponents(a1);
  v5 = 0.0;
  if (Model)
  {
    if (Model == kCGColorSpaceModelCMYK)
    {
      Components += 3;
      v5 = 1.0;
    }

    else
    {
      if (Model != kCGColorSpaceModelRGB || *Components != 0.0 || Components[1] != 0.0)
      {
        return 0;
      }

      Components += 2;
    }
  }

  return *Components == v5;
}

CGFloat TSUColorLightness(CGColor *a1)
{
  if (a1)
  {
    ColorSpace = CGColorGetColorSpace(a1);
    Model = CGColorSpaceGetModel(ColorSpace);
    switch(Model)
    {
      case kCGColorSpaceModelMonochrome:
        return *CGColorGetComponents(a1);
      case kCGColorSpaceModelCMYK:
        Components = CGColorGetComponents(a1);
        v9 = Components[3];
        v10 = 1.0 - fmin(v9 + *Components * (1.0 - v9), 1.0);
        v11 = 1.0 - fmin(v9 + Components[1] * (1.0 - v9), 1.0);
        v12 = 1.0 - fmin(v9 + Components[2] * (1.0 - v9), 1.0);
        v5 = fmax(fmax(v10, v11), v12) + fmin(fmin(v10, v11), v12);
        return v5 * 0.5;
      case kCGColorSpaceModelRGB:
        v4 = CGColorGetComponents(a1);
        v5 = fmax(fmax(*v4, v4[1]), v4[2]) + fmin(fmin(*v4, v4[1]), v4[2]);
        return v5 * 0.5;
    }

    NSLog(@"WARNING: Testing lightness of unsupported color model");
  }

  else
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGFloat TSUColorLightness(CGColorRef)"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColorUtils.m"), 467, @"Trying to get lightness of a nil color"}];
  }

  return 0.0;
}

CGFloat TSUColorAverageLightness(CGColor *a1)
{
  if (a1)
  {
    ColorSpace = CGColorGetColorSpace(a1);
    Model = CGColorSpaceGetModel(ColorSpace);
    switch(Model)
    {
      case kCGColorSpaceModelMonochrome:
        return *CGColorGetComponents(a1);
      case kCGColorSpaceModelCMYK:
        Components = CGColorGetComponents(a1);
        v9 = Components[3];
        v5 = 1.0 - fmin(v9 + Components[2] * (1.0 - v9), 1.0) + 1.0 - fmin(v9 + *Components * (1.0 - v9), 1.0) + 1.0 - fmin(v9 + Components[1] * (1.0 - v9), 1.0);
        return v5 / 3.0;
      case kCGColorSpaceModelRGB:
        v4 = CGColorGetComponents(a1);
        v5 = *v4 + v4[1] + v4[2];
        return v5 / 3.0;
    }

    NSLog(@"WARNING: Testing lightness of unsupported color model");
  }

  else
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGFloat TSUColorAverageLightness(CGColorRef)"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColorUtils.m"), 496, @"Trying to get lightness of a nil color"}];
  }

  return 0.0;
}

CGContext *TSUCreateRGBABitmapContext(uint64_t a1, uint64_t a2, double a3, CGFloat a4, CGFloat a5)
{
  v5 = a1;
  if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    TSUDeviceRGBColorSpace_cold_1();
  }

  v9 = CGBitmapContextCreate(0, (a3 * a5), (a4 * a5), 8uLL, (4 * (a3 * a5) + 31) & 0xFFFFFFFFFFFFFFE0, TSUDeviceRGBColorSpace_sDeviceRGBColorSpace, 0x2002u);
  CGAffineTransformMakeScale(&v11, a5, a5);
  CGContextConcatCTM(v9, &v11);
  if (v5)
  {
    CGContextTranslateCTM(v9, 0.0, a4);
    CGAffineTransformMakeScale(&v11, 1.0, -1.0);
    CGContextConcatCTM(v9, &v11);
  }

  return v9;
}

CGColorRef TSUCreateCheckerBoardColorWithTint(CGColor *a1, CGColor *a2, CGColor *a3, CGFloat a4, CGFloat a5)
{
  v10 = a4 + a4;
  v11 = a5 + a5;
  v12 = TSUCreateRGBABitmapContext(0, a2, a4 + a4, a5 + a5, 1.0);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  CGContextSetFillColorWithColor(v12, a1);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v10;
  v17.size.height = v11;
  CGContextFillRect(v13, v17);
  CGContextSetFillColorWithColor(v13, a2);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = a4;
  v18.size.height = a5;
  CGContextFillRect(v13, v18);
  v19.origin.x = a4;
  v19.origin.y = a5;
  v19.size.width = a4;
  v19.size.height = a5;
  CGContextFillRect(v13, v19);
  if (a3)
  {
    CGContextSetFillColorWithColor(v13, a3);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v10;
    v20.size.height = v11;
    CGContextFillRect(v13, v20);
  }

  Image = CGBitmapContextCreateImage(v13);
  CGContextRelease(v13);
  if (!Image)
  {
    return 0;
  }

  PatternWithImageAndTransform = TSUCGColorCreatePatternWithImageAndTransform(Image, 0);
  CGImageRelease(Image);
  return PatternWithImageAndTransform;
}

uint64_t TSUPatternColorFromGradient(CGGradient *a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v7 = TSUCreateRGBABitmapContext(1, a2, 1.0, a3, a4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v14.x = 0.0;
  v14.y = 0.0;
  v15.x = 0.0;
  v15.y = a3;
  CGContextDrawLinearGradient(v7, a1, v14, v15, 0);
  Image = CGBitmapContextCreateImage(v8);
  CGContextRelease(v8);
  v10 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:a4];
  CGImageRelease(Image);
  if (!v10)
  {
    return 0;
  }

  v11 = MEMORY[0x277D75348];

  return [v11 colorWithPatternImage:v10];
}

double TSUFractionalPart(double a1)
{
  v1 = a1 <= 0.0;
  v2 = -(-a1 - floor(-a1));
  result = a1 - floor(a1);
  if (v1)
  {
    return v2;
  }

  return result;
}

double TSUClamp(double a1, double a2, double a3)
{
  if (a1 >= a2)
  {
    a2 = a1;
    if (a1 > a3)
    {
      return a3;
    }
  }

  return a2;
}

void std::vector<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](uint64_t *result)
{
  v2 = *result;
  for (i = result[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  result[1] = v2;
}

uint64_t p_chunkIndexForCharacterIndex(unint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = (v2 - *a2) >> 4;
    v2 = *a2;
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7[2] + *v7 <= a1)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  return (v2 - *a2) >> 4;
}

void sub_26CBB3694(_Unwind_Exception *exception_object, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<TSUStringChunk>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSUStringChunk>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<TSUStringChunk>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_26CBB3E34(_Unwind_Exception *exception_object, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::shared_ptr<TSUStringChunk>>::insert(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = ((v6 - *a1) >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = v7 - v14;
    v18 = v17 >> 3;
    if (v17 >> 3 <= v15)
    {
      v18 = ((v6 - *a1) >> 4) + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v20 = v16 >> 4;
    v33 = a1;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSUStringChunk>>>(a1, v19);
    }

    v30 = 0;
    v31 = 16 * v20;
    v32 = (16 * v20);
    std::__split_buffer<std::shared_ptr<TSUStringChunk>>::emplace_back<std::shared_ptr<TSUStringChunk> const&>(&v30, a3);
    v22 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v23 = *a1;
    v24 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = (v24 - (v4 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v27;
    *(&v32 + 1) = v28;
    v30 = v27;
    v31 = v27;
    std::__split_buffer<std::shared_ptr<TSUStringChunk>>::~__split_buffer(&v30);
    return v22;
  }

  else if (a2 == v6)
  {
    v21 = a3[1];
    *v6 = *a3;
    v6[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 2;
  }

  else
  {
    std::vector<std::shared_ptr<TSUStringChunk>>::__move_range(a1, a2, v6, (a2 + 2));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 2;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v12 = *v10;
    v11 = v10[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v4[1];
    *v4 = v12;
    v4[1] = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return v4;
}

void sub_26CBB4014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::shared_ptr<TSUStringChunk>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_26CBB4514(_Unwind_Exception *exception_object, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::vector<std::shared_ptr<TSUStringChunk>>::erase(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void std::vector<std::shared_ptr<TSUStringChunk>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_26CBB46EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x26D6AB8A0](v1, 0x1000C401E2E008BLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<TSUStringChunk *,std::shared_ptr<TSUStringChunk>::__shared_ptr_default_delete<TSUStringChunk,TSUStringChunk>,std::allocator<TSUStringChunk>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6AB8A0);
}

uint64_t std::__shared_ptr_pointer<TSUStringChunk *,std::shared_ptr<TSUStringChunk>::__shared_ptr_default_delete<TSUStringChunk,TSUStringChunk>,std::allocator<TSUStringChunk>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x26D6AB8A0);
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TSUStringChunk>>>(uint64_t a1, unint64_t a2)
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
}

void **std::__split_buffer<std::shared_ptr<TSUStringChunk>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<TSUStringChunk>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *std::vector<std::shared_ptr<TSUStringChunk>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      v9 += 16;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *,std::shared_ptr<TSUStringChunk> *>(&v11, a2, v7, v6);
}