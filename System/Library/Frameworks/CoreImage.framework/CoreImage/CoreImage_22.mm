uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 >= v5)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v7;
      *a3 = v5;
      v9 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v9;
      v10 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v10;
        v11 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      *result = v7;
      *a3 = v6;
      v8 = *(result + 8);
      *(result + 8) = *(a3 + 8);
LABEL_9:
      *(a3 + 8) = v8;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v8 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v5 = *a3;
    if (*a3 < v6)
    {
      *a2 = v5;
      *a3 = v6;
      *(a2 + 8) = *(a3 + 8);
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 2);
    *(a4 + 2) = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v14;
      v15 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v15;
        v16 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v16;
      }
    }
  }

  v17 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v17;
    v18 = *(a4 + 2);
    *(a4 + 2) = *(a5 + 2);
    *(a5 + 2) = v18;
    v19 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v19;
      v20 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 2);
      *(a4 + 2) = v20;
      v21 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v21;
        v22 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v22;
        v23 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v23;
          v24 = *(result + 8);
          *(result + 8) = *(a2 + 8);
          *(a2 + 8) = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *(a1 + 16);
      v6 = *a1;
      v7 = *(a2 - 16);
      if (v5 >= *a1)
      {
        if (v7 < v5)
        {
          *(a1 + 16) = v7;
          *(a2 - 16) = v5;
          v18 = *(a1 + 24);
          *(a1 + 24) = *(a2 - 8);
          *(a2 - 8) = v18;
          v19 = *(a1 + 16);
          v20 = *a1;
          if (v19 < *a1)
          {
            *a1 = v19;
            *(a1 + 16) = v20;
            v21 = *(a1 + 8);
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 24) = v21;
          }
        }

        return 1;
      }

      if (v7 >= v5)
      {
        *a1 = v5;
        *(a1 + 16) = v6;
        v8 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 24) = v8;
        v28 = *(a2 - 16);
        if (v28 >= v6)
        {
          return 1;
        }

        *(a1 + 16) = v28;
        *(a2 - 16) = v6;
        *(a1 + 24) = *(a2 - 8);
        goto LABEL_14;
      }

      *a1 = v7;
      *(a2 - 16) = v6;
LABEL_13:
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 8);
LABEL_14:
      *(a2 - 8) = v8;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,0>(a1, a1 + 16, a1 + 32, (a1 + 48), (a2 - 16));
        return 1;
      }

      goto LABEL_15;
    }

    v14 = *(a1 + 16);
    v15 = *a1;
    v16 = *(a1 + 32);
    if (v14 >= *a1)
    {
      if (v16 < v14)
      {
        *(a1 + 16) = v16;
        *(a1 + 32) = v14;
        v25 = *(a1 + 24);
        v26 = *(a1 + 40);
        *(a1 + 24) = v26;
        *(a1 + 40) = v25;
        if (v16 < v15)
        {
          *a1 = v16;
          *(a1 + 16) = v15;
          v27 = *(a1 + 8);
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (v16 < v14)
      {
        *a1 = v16;
        *(a1 + 32) = v15;
        v17 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
LABEL_48:
        *(a1 + 40) = v17;
        v14 = v15;
LABEL_50:
        v38 = *(a2 - 16);
        if (v38 < v14)
        {
          *(a1 + 32) = v38;
          *(a2 - 16) = v14;
          v39 = *(a1 + 40);
          *(a1 + 40) = *(a2 - 8);
          *(a2 - 8) = v39;
          v40 = *(a1 + 32);
          v41 = *(a1 + 16);
          if (v40 < v41)
          {
            *(a1 + 16) = v40;
            *(a1 + 32) = v41;
            v42 = *(a1 + 24);
            v43 = *(a1 + 40);
            *(a1 + 24) = v43;
            *(a1 + 40) = v42;
            v44 = *a1;
            if (v40 < *a1)
            {
              *a1 = v40;
              *(a1 + 16) = v44;
              v45 = *(a1 + 8);
              *(a1 + 8) = v43;
              *(a1 + 24) = v45;
            }
          }
        }

        return 1;
      }

      *a1 = v14;
      *(a1 + 16) = v15;
      v17 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v17;
      if (v16 < v15)
      {
        *(a1 + 16) = v16;
        *(a1 + 32) = v15;
        *(a1 + 24) = *(a1 + 40);
        goto LABEL_48;
      }
    }

    v14 = v16;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 16);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 16) = v4;
      goto LABEL_13;
    }

    return 1;
  }

LABEL_15:
  v9 = (a1 + 32);
  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = *a1;
  if (v11 >= *a1)
  {
    if (v10 < v11)
    {
      *(a1 + 16) = v10;
      *(a1 + 32) = v11;
      v22 = *(a1 + 24);
      v23 = *(a1 + 40);
      *(a1 + 24) = v23;
      *(a1 + 40) = v22;
      if (v10 < v12)
      {
        *a1 = v10;
        *(a1 + 16) = v12;
        v24 = *(a1 + 8);
        *(a1 + 8) = v23;
        *(a1 + 24) = v24;
      }
    }
  }

  else
  {
    if (v10 >= v11)
    {
      *a1 = v11;
      *(a1 + 16) = v12;
      v13 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v13;
      if (v10 >= v12)
      {
        goto LABEL_35;
      }

      *(a1 + 16) = v10;
      *(a1 + 32) = v12;
      *(a1 + 24) = *(a1 + 40);
    }

    else
    {
      *a1 = v10;
      *(a1 + 32) = v12;
      v13 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 40);
    }

    *(a1 + 40) = v13;
  }

LABEL_35:
  v29 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    v32 = *v29;
    v33 = *v9;
    if (*v29 < *v9)
    {
      v34 = *(v29 + 8);
      v35 = v30;
      while (1)
      {
        v36 = a1 + v35;
        *(v36 + 48) = v33;
        *(v36 + 56) = *(a1 + v35 + 40);
        if (v35 == -32)
        {
          break;
        }

        v33 = *(v36 + 16);
        v35 -= 16;
        if (v32 >= v33)
        {
          v37 = a1 + v35 + 48;
          goto LABEL_43;
        }
      }

      v37 = a1;
LABEL_43:
      *v37 = v32;
      *(v37 + 8) = v34;
      if (++v31 == 8)
      {
        return v29 + 16 == a2;
      }
    }

    v9 = v29;
    v30 += 16;
    v29 += 16;
    if (v29 == a2)
    {
      return 1;
    }
  }
}

char *std::vector<std::pair<CGRect,unsigned long>>::__assign_with_size[abi:nn200100]<std::pair<CGRect,unsigned long>*,std::pair<CGRect,unsigned long>*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<CGRect,unsigned long>>::__vallocate[abi:nn200100](a1, v11);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v12 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      v19 = v5[1];
      *result = *v5;
      *(result + 1) = v19;
      *(result + 4) = *(v5 + 4);
      v5 = (v5 + 40);
      result += 40;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        v14 = v5[1];
        *result = *v5;
        *(result + 1) = v14;
        *(result + 4) = *(v5 + 4);
        v5 = (v5 + 40);
        result += 40;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v13 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v13;
        v18 = v13[1];
        *(v16 + 4) = *(v13 + 4);
        *v16 = v17;
        *(v16 + 1) = v18;
        v13 = (v13 + 40);
        v16 += 40;
        v15 += 40;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::vector<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::clear[abi:nn200100](void *result)
{
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v5 = *--v3;
    v4 = v5;
    *v3 = 0;
    if (v5)
    {
      CI::Object::unref(v4);
    }
  }

  result[1] = v2;
}

uint64_t std::__split_buffer<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::__destruct_at_end[abi:nn200100](uint64_t result, void *a2)
{
  v2 = *(result + 16);
  while (v2 != a2)
  {
    v6 = *--v2;
    v5 = v6;
    *(result + 16) = v2;
    *v2 = 0;
    if (v6)
    {
      CI::Object::unref(v5);
      v2 = *(result + 16);
    }
  }
}

void **std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
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

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::__emplace_unique_key_args<CI::ProgramNode *,std::piecewise_construct_t const&,std::tuple<CI::ProgramNode * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t CI::roiKey::roiKey(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

void CI::TextureManager::TextureManager(CI::TextureManager *this, int a2)
{
  *this = &unk_1F103D010;
  *(this + 2) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = this + 32;
  *(this + 5) = this + 32;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = this + 64;
  *(this + 9) = this + 64;
  *(this + 10) = 0;
  *(this + 11) = dispatch_group_create();
  *(this + 12) = dispatch_queue_create("CI::complete_intermediate", 0);
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("CI::TextureManager", v3);
  *(this + 16) = 0;
  *(this + 15) = 0;
  *(this + 13) = v4;
  *(this + 14) = this + 120;
  operator new();
}

void CI::TextureManager::~TextureManager(dispatch_queue_t *this)
{
  *this = &unk_1F103D010;
  dispatch_sync(this[13], &__block_literal_global_96);
  v2 = this[7];
  if (v2)
  {
    CFRelease(v2);
  }

  this[7] = 0;
  v3 = this[17];
  if (v3)
  {
    std::__list_imp<CI::attached_surface_t *>::clear(this[17]);
    MEMORY[0x19EAF5590](v3, 0x1020C4062D53EE8);
  }

  this[17] = 0;
  dispatch_release(this[13]);
  dispatch_release(this[11]);
  dispatch_release(this[12]);
  std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::destroy((this + 18), this[19]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 14), this[15]);
  std::__list_imp<CI::attached_surface_t *>::clear(this + 8);
  std::__list_imp<CI::attached_surface_t *>::clear(this + 4);
}

IOSurfaceRef CI::TextureManager::get_empty_surface(CI::TextureManager *this)
{
  result = *(this + 7);
  if (!result)
  {
    result = CreateSurface(1, 1uLL, 0x10uLL, 1111970369, 1);
    *(this + 7) = result;
    if (!result)
    {
      x_log("TextureManager::TextureManager() failed to create empty surface\n");
      return *(this + 7);
    }
  }

  return result;
}

void CI::TextureManager::mark_usage(CI::TextureManager *this, void *a2)
{
  v2 = a2;
  std::list<CI::attached_surface_t *>::remove(this + 4, &v2);
  operator new();
}

void CI::TextureManager::append_to_lru(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI14TextureManager13append_to_lruEPvPNS_13source_info_tE_block_invoke;
  block[3] = &__block_descriptor_tmp_4_7;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
}

void ___ZN2CI14TextureManager13append_to_lruEPvPNS_13source_info_tE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 48) + 16);
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        CFRetain(v2);
      }

      else if (v3 == 4)
      {
        RetainSurfaceFromCache(v2);
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        CGImageRetain(v2);
      }
    }

    else
    {
      CI::Object::ref(v2);
    }
  }

  operator new();
}

void CI::TextureManager::remove_lru(CI::TextureManager *this, void *a2)
{
  v4 = this + 32;
    ;
  }

  if (i != v4)
  {
    v6 = *(this + 15);
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = (this + 120);
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != (this + 120) && v7[4] <= a2)
    {
      v11 = v7[5];
      v12 = v11[5];
      if (!v12)
      {
        v17 = ci_logger_render(i, a2);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          CI::TextureManager::remove_lru(v17);
        }

        abort();
      }

      v13 = v12 - 1;
      v11[5] = v13;
      if (!v13)
      {
        v15 = *i;
        v14 = *(i + 1);
        *(v15 + 8) = v14;
        *v14 = v15;
        --*(this + 6);
        operator delete(i);
        std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(this + 14, v7);
        operator delete(v7);
        v18 = *v11;
        (**this)(this, &v18);
        v18 = 0uLL;
        if (a2)
        {
          v16 = v11[4];
          if (v16 > 1)
          {
            if (v16 == 2)
            {
              CFRelease(a2);
            }

            else if (v16 == 4)
            {
              ReturnSurfaceToCache(a2);
            }
          }

          else if (v16)
          {
            if (v16 == 1)
            {
              CGImageRelease(a2);
            }
          }

          else
          {
            CI::Object::unref(a2);
          }
        }

        free(v11);
      }
    }

    else
    {
LABEL_14:

      x_log("TextureManager::remove_lru() did not find an info struct!\n");
    }
  }
}

void CI::TextureManager::remove_all(CI::TextureManager *this)
{
  v1 = *(this + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI14TextureManager10remove_allEv_block_invoke;
  block[3] = &__block_descriptor_tmp_6_7;
  block[4] = this;
  dispatch_sync(v1, block);
}

void ___ZN2CI14TextureManager10remove_allEv_block_invoke(uint64_t a1)
{
    ;
  }
}

uint64_t CI::TextureManager::_lookup_texture(CI::TextureManager *this, void *a2)
{
  v2 = *(this + 15);
  if (!v2)
  {
    return 0;
  }

  v3 = (this + 120);
  do
  {
    v4 = v2[4];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = v2[v6];
  }

  while (v2);
  if (v3 == (this + 120) || v3[4] > a2)
  {
    return 0;
  }

  v7 = v3[5];
  if (v7)
  {
    CI::TextureManager::mark_usage(this, a2);
  }

  return v7;
}

uint64_t CI::TextureManager::lookup_texture(CI::TextureManager *this, void *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(this + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI14TextureManager14lookup_textureEPv_block_invoke;
  block[3] = &unk_1E75C88A8;
  block[4] = &v6;
  block[5] = this;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZN2CI14TextureManager14lookup_textureEPv_block_invoke(uint64_t a1)
{
  result = CI::TextureManager::_lookup_texture(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void *CI::TextureManager::_find_match_for_surface(CI::TextureManager *this, IOSurfaceRef buffer, CGSize a3)
{
  v4 = *(this + 17);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5 != v4)
    {
      height = a3.height;
      width = a3.width;
      do
      {
        v9 = *(v5 + 16);
        v17 = v9;
        if (v9[8] <= 1uLL)
        {
          ID = IOSurfaceGetID(buffer);
          v11 = (**v9)(v9);
          if (IOSurfaceGetID(v11) == ID)
          {
            v12 = (*(*v9 + 32))(v9);
            if (width == *(v12 + 16) && height == *(v12 + 24))
            {
              v16 = (**v9)(v9);
              CFGetRetainCount(v16);
              std::list<CI::attached_surface_t *>::remove(*(this + 17), &v17);
              operator new();
            }
          }
        }

        v5 = *(v5 + 8);
      }

      while (v5 != v4);
    }
  }

  ++*(this + 3);
  if (CI_LOG_TEXTURE_CACHE())
  {
    v14 = *(this + 17);
    if (v14)
    {
      v14 = *(v14 + 16);
    }

    x_log("TextureCache Missed: context:%u count:%lu hits:%zu misses:%zu\n\n", *(this + 2), v14, *(this + 2), *(this + 3));
  }

  return 0;
}

uint64_t CI::TextureManager::_release_intermediate(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  (*(*a2 + 24))(v4, a2);
  (**a1)(a1, v4);
  v4[0] = 0;
  v4[1] = 0;
  std::list<CI::attached_surface_t *>::remove(*(a1 + 136), &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 48))(v5);
  }

  return result;
}

void CI::TextureManager::purge_intermediates(CI::TextureManager *this)
{
  v1 = *(this + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI14TextureManager19purge_intermediatesEm_block_invoke;
  block[3] = &__block_descriptor_tmp_10_3;
  block[4] = this;
  dispatch_sync(v1, block);
}

uint64_t ___ZN2CI14TextureManager19purge_intermediatesEm_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 136);
  for (i = *(v1 + 8); i != v1; i = *(i + 8))
  {
    result = (*(**(i + 16) + 16))(*(i + 16));
  }

  return result;
}

uint64_t CI::TextureManager::add_intermediate_for_node(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 0;
  v8 = 0;
  v9 = &v8;
  v7[0] = 0;
  v7[1] = v7;
  v10 = 0x2000000000;
  v11 = 0;
  v7[2] = 0x2000000000;
  v7[3] = a3;
  if (a3 && *a2)
  {
    v4 = *(a1 + 104);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN2CI14TextureManager25add_intermediate_for_nodeERKNS_6roiKeyEPNS_14intermediate_tE_block_invoke;
    v6[3] = &unk_1E75C88F0;
    v6[6] = a1;
    v6[7] = a2;
    v6[4] = v7;
    v6[5] = &v8;
    dispatch_sync(v4, v6);
    v3 = v9[3];
  }

  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  return v3;
}

void ___ZN2CI14TextureManager25add_intermediate_for_nodeERKNS_6roiKeyEPNS_14intermediate_tE_block_invoke(void *a1)
{
  v2 = a1[6];
  *&v5 = a1[7];
  v3 = std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(v2 + 144, v5, &std::piecewise_construct, &v5);
  v4 = *(a1[4] + 8);
  LODWORD(v5) = *(a1[7] + 8);
  *(&v5 + 1) = *(v4 + 24);
  std::__tree<std::__value_type<int const,CI::TextureManager::tmIntermediate_t *>,std::__map_value_compare<int const,std::__value_type<int const,CI::TextureManager::tmIntermediate_t *>,std::less<int const>,true>,std::allocator<std::__value_type<int const,CI::TextureManager::tmIntermediate_t *>>>::__emplace_multi<std::pair<int const,CI::TextureManager::tmIntermediate_t *>>((v3 + 5), &v5);
}

uint64_t CI::TextureManager::get_intermediate_for_node(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK2CI14TextureManager25get_intermediate_for_nodeERKNS_6roiKeyE_block_invoke;
  block[3] = &unk_1E75C8918;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

unint64_t ___ZNK2CI14TextureManager25get_intermediate_for_nodeERKNS_6roiKeyE_block_invoke(unint64_t result)
{
  v1 = *(result + 40);
  v4 = *(v1 + 152);
  v2 = v1 + 152;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    v6 = *(result + 48);
    result = *v6;
    v7 = v2;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= result;
      v10 = v8 < result;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != v2 && result >= *(v7 + 32))
    {
      v13 = *(v7 + 48);
      v11 = v7 + 48;
      v12 = v13;
      if (v13)
      {
        v14 = *(v6 + 8);
        v15 = v11;
        do
        {
          if (*(v12 + 32) >= v14)
          {
            v15 = v12;
          }

          v12 = *(v12 + 8 * (*(v12 + 32) < v14));
        }

        while (v12);
        if (v15 != v11 && v14 >= *(v15 + 32))
        {
          v16.origin.x = CI::Node::roi(result, v14);
          result = CGRectIsInfinite(v16);
          *(*(*(v5 + 32) + 8) + 24) = *(v15 + 40);
        }
      }
    }
  }

  return result;
}

void CI::TextureManager::complete_intermediate(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI14TextureManager21complete_intermediateENS_4TypeEPNS_14intermediate_tE_block_invoke;
    block[3] = &__block_descriptor_tmp_13_4;
    block[4] = a1;
    block[5] = a3;
    v5 = a2;
    dispatch_sync(v3, block);
  }
}

uint64_t ___ZN2CI14TextureManager21complete_intermediateENS_4TypeEPNS_14intermediate_tE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  --*(v2 + 64);
  v4 = (**v2)(v2);
  ReturnSurfaceToCache(v4);
  result = (*(**(a1 + 40) + 16))(*(a1 + 40));
  if (!result)
  {
    if ((*(**(a1 + 40) + 64))(*(a1 + 40)))
    {
      v6 = (***(a1 + 40))(*(a1 + 40));
      ReturnSurfaceToCache(v6);
    }

    v7 = *(a1 + 40);
    if (*(a1 + 48) == 60)
    {
      v8 = *(*v3 + 16);

      return v8(v3, v7);
    }

    else
    {

      return CI::TextureManager::_release_intermediate(v3, v7);
    }
  }

  return result;
}

uint64_t CI::TextureManager::releaseDeepIntermediate(CI::TextureManager *this)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v2 = *(this + 13);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN2CI14TextureManager23releaseDeepIntermediateEv_block_invoke;
  v7[3] = &unk_1E75C8960;
  v7[5] = &v8;
  v7[6] = this;
  v7[4] = &v12;
  dispatch_sync(v2, v7);
  v3 = v13[3];
  if (v3)
  {
    v4 = *(this + 13);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI14TextureManager21complete_intermediateENS_4TypeEPNS_14intermediate_tE_block_invoke;
    block[3] = &__block_descriptor_tmp_13_4;
    block[4] = this;
    block[5] = v3;
    v17 = 60;
    dispatch_sync(v4, block);
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void ___ZN2CI14TextureManager23releaseDeepIntermediateEv_block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = v1[18];
  if (v2 == v1 + 19)
  {
    return;
  }

  while (1)
  {
    v4 = v2[5];
    if (v4 != v2 + 6)
    {
      break;
    }

LABEL_26:
    v18 = v2[1];
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = v2[2];
        v8 = *v19 == v2;
        v2 = v19;
      }

      while (!v8);
    }

    v2 = v19;
    if (v19 == v1 + 19)
    {
      return;
    }
  }

  while (1)
  {
    if ((*(*v4[5] + 16))(v4[5]) >= 2)
    {
      v5 = (*(*v2[4] + 16))(v2[4]);
      if ((CI::is_image_type(v5) & 1) == 0)
      {
        break;
      }
    }

LABEL_20:
    v16 = v4[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v4[2];
        v8 = *v17 == v4;
        v4 = v17;
      }

      while (!v8);
    }

    v4 = v17;
    if (v17 == v2 + 6)
    {
      goto LABEL_26;
    }
  }

  v6 = v2[4];
  v7 = v1 + 8;
  while (1)
  {
    v7 = v7[1];
    if (v7 == v1 + 8)
    {
      break;
    }

    v8 = v6 == v7[2] && *(v4 + 8) == *(v7 + 6);
    if (v8)
    {
      goto LABEL_20;
    }
  }

  v9 = CI::Node::rois(v6);
  memset(v26, 0, sizeof(v26));
  std::vector<CI::SerialRectArray::roiData>::__init_with_size[abi:nn200100]<CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*>(v26, *v9, v9[1], 0xEEEEEEEEEEEEEEEFLL * ((v9[1] - *v9) >> 3));
  v10 = (v26[0] + 120 * *(v4 + 8));
  v11 = v10[12];
  v12 = v10[13];
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      v15 = *v11++;
      v14 = v15;
      if (v13 <= v15)
      {
        v13 = v14;
      }
    }

    while (v11 != v12);
    if (v13)
    {
      v27 = v26;
      std::vector<CI::SerialRectArray::roiData>::__destroy_vector::operator()[abi:nn200100](&v27);
      goto LABEL_20;
    }
  }

  *(*(a1[4] + 8) + 24) = v4[5];
  v20 = v10[5] - v10[4];
  if (!v20)
  {
    goto LABEL_39;
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 4);
  v22 = v21 <= 1 ? 1 : v21;
  do
  {
    v23 = *(*(a1[4] + 8) + 24);
    v24 = (**v23)(v23);
    *(*(a1[5] + 8) + 24) = IOSurfaceGetAllocSize(v24);
    v27 = v4;
    v25 = (*(*v1 + 24))(v1, &v27, v2 + 5);
    --v22;
  }

  while (v22);
  if ((v25 & 1) == 0)
  {
LABEL_39:
    x_log("releaseDeepIntermediate did not release.\n");
  }

  v27 = v26;
  std::vector<CI::SerialRectArray::roiData>::__destroy_vector::operator()[abi:nn200100](&v27);
}

BOOL CI::TextureManager::_release_intermediate_for_node(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v5 = (**(*a2)[5])((*a2)[5]);
  if (v5)
  {
    ReturnSurfaceToCache(v5);
  }

  v6 = (*a2)[5];
  --v6[8];
  v7 = (*(*v6 + 16))(v6);
  if (v7 == 1)
  {
    v8 = *a2;
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(a3, v8);
    operator delete(v8);
  }

  return v7 == 1;
}

uint64_t CI::TextureManager::release_intermediate_for_node(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 104);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN2CI14TextureManager29release_intermediate_for_nodeERKNS_6roiKeyEb_block_invoke;
  v6[3] = &unk_1E75C8988;
  v6[6] = v2;
  v6[7] = a2;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t *___ZN2CI14TextureManager29release_intermediate_for_nodeERKNS_6roiKeyEb_block_invoke(uint64_t *result)
{
  v1 = result[5];
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = result[6];
    v4 = (v1 + 152);
    do
    {
      v5 = v2[4];
      v6 = v5 >= v3;
      v7 = v5 < v3;
      if (v6)
      {
        v4 = v2;
      }

      v2 = v2[v7];
    }

    while (v2);
    if (v4 != (v1 + 152) && v3 >= v4[4])
    {
      v8 = v4[6];
      if (v8)
      {
        v9 = *(result[7] + 8);
        v10 = v4 + 6;
        do
        {
          if (*(v8 + 32) >= v9)
          {
            v10 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 32) < v9));
        }

        while (v8);
        if (v10 != v4 + 6 && v9 >= *(v10 + 8))
        {
          *(*(result[4] + 8) + 24) = v10[5];
          v11 = *(*(result[4] + 8) + 24);
          (*(*v11 + 16))(v11);
          v12 = v10;
          result = (*(*v1 + 24))(v1, &v12, v4 + 5);
        }
      }

      if (!v4[7])
      {
        return std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::erase((v1 + 144), v4);
      }
    }
  }

  return result;
}

void CI::TextureManager::add_to_pending(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2CI14TextureManager14add_to_pendingERKNS_6roiKeyE_block_invoke;
  v3[3] = &__block_descriptor_tmp_18_3;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void CI::TextureManager::remove_from_pending(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2CI14TextureManager19remove_from_pendingERKNS_6roiKeyE_block_invoke;
  v3[3] = &__block_descriptor_tmp_19_5;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void ___ZN2CI14TextureManager19remove_from_pendingERKNS_6roiKeyE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 8;
  v4 = v2[9];
  if (v4 != v2 + 8)
  {
    v5 = *(a1 + 40);
    v6 = *v5;
    v7 = *(v5 + 2);
    while (v6 != *(v4 + 16) || v7 != *(v4 + 24))
    {
      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        goto LABEL_8;
      }
    }

    v3 = v4;
  }

LABEL_8:
  v9 = *v3;
  v8 = v3[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  --v2[10];
  operator delete(v3);
}

uint64_t *std::vector<CI::SerialRectArray::roiData>::__init_with_size[abi:nn200100]<CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CI::SerialRectArray::roiData>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<void *,CI::source_info_t *>,std::__map_value_compare<void *,std::__value_type<void *,CI::source_info_t *>,std::less<void *>,true>,std::allocator<std::__value_type<void *,CI::source_info_t *>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(a1, a2);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

CI::TextureSampler *CI::TextureSampler::TextureSampler(CI::TextureSampler *this, CI::Node *a2, int a3)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F103D100;
  atomic_fetch_add(&dword_1ED7C47D8[59], 1u);
  *this = &unk_1F103D0A0;
  *(this + 2) = &unk_1F103D0D8;
  if (a2)
  {
    v5 = CI::Object::ref(a2);
  }

  else
  {
    v5 = 0;
  }

  *(this + 3) = v5;
  *(this + 8) = a3;
  *(this + 5) = 0x3FF0000000000000;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0x3FF0000000000000;
  *(this + 9) = 0;
  *(this + 10) = 0;
  CI::set_sampler_modes_for_texture(v5, this + 30, this + 31);
  return this;
}

uint64_t CI::set_sampler_modes_for_texture(uint64_t result, int *a2, int *a3)
{
  if (result)
  {
    v5 = result;
    result = (*(*result + 16))(result);
    if (result > 53)
    {
      if (result == 54)
      {
        *a2 = *(v5 + 104) ^ 1;
        v6 = *(v5 + 100);
        goto LABEL_12;
      }

      if (result == 56)
      {
        *a2 = 1;
        v6 = *(v5 + 84);
        goto LABEL_12;
      }
    }

    else
    {
      if (result == 35)
      {
        *a2 = *(v5 + 152) ^ 1;
        v6 = *(v5 + 148);
        goto LABEL_12;
      }

      if (result == 52)
      {
        *a2 = *(v5 + 192) ^ 1;
        v6 = *(v5 + 188);
LABEL_12:
        *a3 = v6;
        return result;
      }
    }

    v6 = 1;
    *a2 = 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t CI::TextureSampler::TextureSampler(uint64_t a1, CI::Object *this, int a3, __int128 *a4, __int128 *a5, int a6, int a7)
{
  *a1 = &unk_1F103C4D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = &unk_1F103D100;
  atomic_fetch_add(&dword_1ED7C47D8[59], 1u);
  *a1 = &unk_1F103D0A0;
  *(a1 + 16) = &unk_1F103D0D8;
  if (this)
  {
    v13 = CI::Object::ref(this);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 24) = v13;
  *(a1 + 32) = a3;
  v14 = *a4;
  v15 = a4[1];
  *(a1 + 72) = a4[2];
  *(a1 + 56) = v15;
  *(a1 + 40) = v14;
  v16 = *a5;
  *(a1 + 104) = a5[1];
  *(a1 + 88) = v16;
  CI::set_sampler_modes_for_texture(v13, (a1 + 120), (a1 + 124));
  if (a6 != -1)
  {
    *(a1 + 120) = a6;
  }

  if (a7 != -1)
  {
    *(a1 + 124) = a7;
  }

  return a1;
}

void CI::TextureSampler::~TextureSampler(CI::TextureSampler *this)
{
  *this = &unk_1F103D0A0;
  *(this + 2) = &unk_1F103D0D8;
  v2 = *(this + 3);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 2) = &unk_1F103D100;
  *(this + 3) = 0;
  atomic_fetch_add(&dword_1ED7C47D8[59], 0xFFFFFFFF);
}

{
  CI::TextureSampler::~TextureSampler(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::TextureSampler::~TextureSampler(CI::TextureSampler *this)
{
  CI::TextureSampler::~TextureSampler((this - 16));
}

{
  CI::TextureSampler::~TextureSampler((this - 16));

  JUMPOUT(0x19EAF5590);
}

float64_t CI::TextureSampler::transform@<D0>(float64x2_t *__return_ptr a1@<X8>, CI::TextureSampler *this@<X0>, const CI::Context *a3@<X1>, const CGRect *a4@<X2>)
{
  if (CGRectIsEmpty(*a4))
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    (*(*a3 + 600))(a3, a4);
    if ((*(**(this + 3) + 16))(*(this + 3)) == 60 && *(*(this + 3) + 149) == 1)
    {
      MidY = CGRectGetMidY(*a4);
      v11 = *a1;
      v10 = a1[1];
      v12 = vmlaq_f64(vnegq_f64(v10), 0, *a1);
      *a1 = vaddq_f64(*a1, vmulq_f64(v10, 0));
      a1[1] = v12;
      a1[2] = vaddq_f64(a1[2], vmlaq_f64(vmulq_n_f64(v10, MidY + MidY), 0, v11));
    }

    *&result = *&CI::Affine::operator*(this + 5, a1, v14);
    if (v14 != a1)
    {
      v13 = v14[1];
      *a1 = v14[0];
      a1[1] = v13;
      result = v15.f64[0];
      a1[2] = v15;
    }
  }

  return result;
}

size_t CI::TextureSampler::print(CI::TextureSampler *this, __sFILE *__stream)
{
  v4 = *(this + 3);
  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
    v6 = *(this + 3);
    if (v5 == 54)
    {
      v7 = v6[12];
    }

    else
    {
      v7 = 0;
    }

    v8 = (*(*v6 + 16))(v6);
    v9 = *(this + 3);
    if (v8 == 52)
    {
      v7 = v9[12];
    }

    v10 = (*(*v9 + 16))(v9);
    v11 = *(this + 3);
    if (v10 == 35)
    {
      v7 = *(v11 + 48);
    }

    fprintf(__stream, "node%d", *(v11 + 36));
    fprintf(__stream, " child:%d", *(this + 8));
    if (v7)
    {
      CI::name_for_format(v7);
      fprintf(__stream, " %s");
    }
  }

  else
  {
    fwrite("nil", 3uLL, 1uLL, __stream);
    fprintf(__stream, " child:%d");
  }

  v12 = "edge_unknown";
  v14 = *(this + 30);
  v13 = *(this + 31);
  if (v13 == 1)
  {
    v12 = "edge_clamp";
  }

  if (!v13)
  {
    v12 = "edge_black";
  }

  if ((v14 + 1) > 2)
  {
    v15 = "unknown";
  }

  else
  {
    v15 = off_1E75C89E8[v14 + 1];
  }

  fprintf(__stream, " %s %s", v12, v15);
  fwrite(" transform:", 0xBuLL, 1uLL, __stream);
  if (CI::Affine::isIdentity((this + 40)))
  {
    fwrite("identity", 8uLL, 1uLL, __stream);
  }

  else
  {
    fprintf(__stream, "[%g %g %g %g %g %g]", *(this + 5), *(this + 6), *(this + 7), *(this + 8), *(this + 9), *(this + 10));
  }

  fwrite(" extent:", 8uLL, 1uLL, __stream);
  v17 = *(this + 11);
  v18 = *(this + 12);
  v19 = *(this + 13);
  v20 = *(this + 14);

  return CI::fprintf(__stream, v16, *&v17);
}

void *CI::InstanceCounted<(CI::Type)68>::~InstanceCounted(void *result)
{
  *result = &unk_1F103D100;
  atomic_fetch_add(&dword_1ED7C47D8[59], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)68>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103D100;
  atomic_fetch_add(&dword_1ED7C47D8[59], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::Vector::Vector(uint64_t this, float a2)
{
  *this = &unk_1F103C4D0;
  *(this + 8) = 1;
  *(this + 16) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 1u);
  *this = &unk_1F103D128;
  *(this + 16) = &unk_1F103D160;
  *(this + 96) = 0;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = 0u;
  *(this + 76) = 0u;
  *(this + 24) = 1;
  *(this + 28) = a2;
  return this;
}

__n64 CI::Vector::Vector(CI::Vector *this, __n64 result, float a3)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 6) = 2;
  *(this + 7) = result.n64_u32[0];
  *(this + 8) = a3;
  result.n64_f32[1] = a3;
  *(this + 12) = result;
  return result;
}

__n64 CI::Vector::Vector(CI::Vector *this, __n64 result, float a3, float a4)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 3;
  *(this + 7) = result.n64_u32[0];
  *(this + 8) = a3;
  *(this + 9) = a4;
  result.n64_f32[1] = a3;
  *(this + 26) = a4;
  *(this + 12) = result;
  return result;
}

__n128 CI::Vector::Vector(CI::Vector *this, __n128 result, float a3, float a4, float a5)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 4;
  *(this + 7) = result.n128_u32[0];
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 10) = a5;
  result.n128_f32[1] = a3;
  result.n128_u64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  *(this + 6) = result;
  return result;
}

CI::Vector *CI::Vector::Vector(CI::Vector *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 12) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 4;
  IsInfinite = CGRectIsInfinite(a2);
  v4.f64[0] = width;
  v4.f64[1] = height;
  v5.f64[0] = x;
  v5.f64[1] = y;
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v4);
  *(this + 28) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(IsInfinite)), 0x1FuLL)), xmmword_19CF2DE80, v6);
  *(this + 6) = v6;
  return this;
}

CI::Vector *CI::Vector::Vector(CI::Vector *this, CGAffineTransform *a2)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 12) = 0;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 40) = 0u;
  *(this + 6) = 9;
  b = a2->b;
  *&v4 = a2->a;
  d = a2->d;
  *&v6 = a2->c;
  *(this + 7) = v4;
  *(this + 8) = v6;
  ty = a2->ty;
  *&v8 = a2->tx;
  *&b = b;
  *(this + 9) = v8;
  *(this + 10) = LODWORD(b);
  *&d = d;
  *&ty = ty;
  *(this + 11) = LODWORD(d);
  *(this + 12) = LODWORD(ty);
  *(this + 7) = 0x3F80000000000000;
  *&v11 = __PAIR64__(v6, v4);
  *(&v11 + 1) = __PAIR64__(LODWORD(b), v8);
  v12 = __PAIR64__(LODWORD(ty), LODWORD(d));
  LODWORD(v13) = 1065353216;
  HIDWORD(v13) = mat3::type(&v11);
  v9 = v12;
  *(this + 6) = v11;
  *(this + 7) = v9;
  *(this + 16) = v13;
  return this;
}

uint64_t CI::Vector::Vector(uint64_t a1, double *a2, double a3, double a4, double a5, double a6)
{
  *a1 = &unk_1F103C4D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 1u);
  *a1 = &unk_1F103D128;
  *(a1 + 16) = &unk_1F103D160;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 13;
  v11 = a2[1];
  *&v12 = *a2;
  v13 = a2[3];
  *&v14 = a2[2];
  *(a1 + 28) = v12;
  *(a1 + 32) = v14;
  v15 = a2[5];
  *&v16 = a2[4];
  *&v11 = v11;
  *(a1 + 36) = v16;
  *(a1 + 40) = LODWORD(v11);
  *&v13 = v13;
  *&v15 = v15;
  *(a1 + 44) = LODWORD(v13);
  *(a1 + 48) = LODWORD(v15);
  *(a1 + 56) = 0x3F80000000000000;
  *&v21 = __PAIR64__(v14, v12);
  *(&v21 + 1) = __PAIR64__(LODWORD(v11), v16);
  v22 = __PAIR64__(LODWORD(v15), LODWORD(v13));
  LODWORD(v23) = 1065353216;
  HIDWORD(v23) = mat3::type(&v21);
  v17 = v22;
  *(a1 + 96) = v21;
  *(a1 + 112) = v17;
  *(a1 + 128) = v23;
  v18 = a3;
  *&v17 = a4;
  *(a1 + 64) = v18;
  *(a1 + 68) = v17;
  v19 = a5;
  *&v17 = a6;
  *(a1 + 72) = v19;
  *(a1 + 76) = v17;
  return a1;
}

float CI::Vector::Vector(CI::Vector *this, double *a2, unsigned int a3)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 12) = 0;
  v3 = 0uLL;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (a3 >= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = a3;
  }

  *(this + 56) = 0uLL;
  *(this + 72) = 0uLL;
  *(this + 22) = 0;
  *(this + 6) = v4;
  if (!a2)
  {
    CI::Vector::Vector();
  }

  if (a3)
  {
    v5 = (this + 28);
    do
    {
      v6 = *a2++;
      *&v3 = v6;
      *v5++ = v3;
      --v4;
    }

    while (v4);
  }

  return *&v3;
}

double CI::Vector::clone(CI::Vector *this, const CI::Vector *a2)
{
  v3 = *(a2 + 6);
  *(this + 6) = v3;
  memcpy(this + 28, a2 + 28, 4 * v3);
  v4 = *(this + 15);
  v5 = *(this + 44);
  v8 = *(this + 28);
  v9 = v5;
  LODWORD(v10) = v4;
  HIDWORD(v10) = mat3::type(&v8);
  result = *&v8;
  v7 = v9;
  *(this + 6) = v8;
  *(this + 7) = v7;
  *(this + 16) = v10;
  return result;
}

float *CI::Vector::copy_to(float *this, float *__dst)
{
  v2 = *(this + 6);
  if (v2 != 9)
  {
    return memcpy(__dst, this + 7, 4 * v2);
  }

  *__dst = this[7];
  __dst[1] = this[8];
  __dst[2] = this[9];
  __dst[3] = 0.0;
  __dst[4] = this[10];
  __dst[5] = this[11];
  __dst[6] = this[12];
  __dst[7] = 0.0;
  __dst[8] = this[13];
  __dst[9] = this[14];
  __dst[10] = this[15];
  __dst[11] = 0.0;
  return this;
}

uint64_t CI::Vector::copy_to(CI::Vector *this, unsigned __int16 *a2)
{
  v3 = *(this + 6);
  if (v3 == 9)
  {
    *&src.height = xmmword_19CF2DEA0;
    src.rowBytes = 4;
    dest.data = a2;
    *&dest.height = xmmword_19CF2DEA0;
    dest.rowBytes = 2;
    src.data = this + 28;
    vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    a2[3] = 0;
    dest.rowBytes = 2;
    src.data = this + 40;
    *&src.height = xmmword_19CF2DEA0;
    src.rowBytes = 4;
    dest.data = a2 + 4;
    *&dest.height = xmmword_19CF2DEA0;
    vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    a2[7] = 0;
    dest.rowBytes = 2;
    src.data = this + 52;
    *&src.height = xmmword_19CF2DEA0;
    src.rowBytes = 4;
    dest.data = a2 + 8;
    *&dest.height = xmmword_19CF2DEA0;
    result = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    a2[11] = 0;
  }

  else
  {
    src.data = this + 28;
    src.height = v3;
    *&src.width = xmmword_19CF23040;
    dest.data = a2;
    dest.height = v3;
    *&dest.width = xmmword_19CF2DE90;
    return vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
  }

  return result;
}

double CI::Vector::affine@<D0>(double *__return_ptr a1@<X8>, CI::Vector *this@<X0>)
{
  result = *(this + 7);
  v3 = *(this + 10);
  v4 = *(this + 8);
  v5 = *(this + 11);
  v6 = *(this + 9);
  v7 = *(this + 12);
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return result;
}

CFStringRef CI::Vector::description(CI::Vector *this)
{
  v1 = *(this + 6);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g %g %g]", this, *(this + 7), *(this + 8), *(this + 9));
    }

    if (v1 != 4)
    {
      if (v1 == 9)
      {
        return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g %g %g %g %g %g %g %g %g]", this, *(this + 7), *(this + 8), *(this + 9), *(this + 10), *(this + 11), *(this + 12), *(this + 13), *(this + 14), *(this + 15));
      }

      return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%d values]", this, v1);
    }

    return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g %g %g %g]", this, *(this + 7), *(this + 8), *(this + 9), *(this + 10));
  }

  else
  {
    if (!v1)
    {
      return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[]", this);
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g %g]", this, *(this + 7), *(this + 8));
      }

      return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%d values]", this, v1);
    }

    return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g]", this, *(this + 7));
  }
}

size_t CI::Vector::print(CI::Vector *this, __sFILE *__stream)
{
  v3 = *(this + 6);
  if (v3)
  {
    if (v3 == 1)
    {
      return fprintf(__stream, "%g", *(this + 7));
    }

    else
    {
      if (v3 >= 1)
      {
        v6 = 0;
        do
        {
          v7 = *(this + v6 + 7);
          if (v7 == 0.0)
          {
            v8 = 0.0;
          }

          else
          {
            v8 = v7;
          }

          if (v6)
          {
            v9 = 32;
          }

          else
          {
            v9 = 91;
          }

          fprintf(__stream, "%c%g", v9, v8);
          ++v6;
        }

        while (v6 < *(this + 6));
      }

      return fputc(93, __stream);
    }
  }

  else
  {

    return fwrite("[]", 2uLL, 1uLL, __stream);
  }
}

void CI::Vector::~Vector(CI::Vector *this)
{
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 0xFFFFFFFF);
}

{
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::Vector::~Vector(CI::Vector *this)
{
  *this = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 0xFFFFFFFF);
}

{
  *this = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t mat3::type(mat3 *this)
{
  if (mat3::is_identity(this))
  {
    return 2;
  }

  if (*(this + 1) == 0.0 && *(this + 3) == 0.0 && *(this + 6) == 0.0 && *(this + 7) == 0.0)
  {
    return *(this + 8) == 1.0;
  }

  return 0;
}

long double pow_10(long double __x, long double __y)
{
  result = 1.0;
  if (v2 >= 1)
  {
    if (v2 < 0x21)
    {
      v4 = v2;
    }

    else
    {
      do
      {
        result = result * 1.0e32;
        v4 = v2 - 32;
        v5 = v2 > 0x40;
        v2 -= 32;
      }

      while (v5);
    }

    v6 = v4 - 1;
    v7 = &pow_10_up;
    return result * v7[v6];
  }

  if ((v2 & 0x80000000) != 0)
  {
    if (v2 > 0xFFFFFFDF)
    {
      v8 = v2;
    }

    else
    {
      do
      {
        result = result * 1.0e-32;
        v8 = v2 + 32;
        v9 = __CFADD__(v2, 64);
        v2 += 32;
      }

      while (!v9);
    }

    v6 = ~v8;
    v7 = &pow_10_down;
    return result * v7[v6];
  }

  return result;
}

_BYTE *x_dtostr_(_BYTE *a1, unint64_t a2, char a3, double a4, double a5)
{
  v5 = a4;
  if (a5 <= 0.0)
  {
    v6 = 0.000001;
  }

  else
  {
    v6 = a5;
  }

  if (a2 < 8)
  {
    return 0;
  }

  if (a4 >= 0.0)
  {
    v11 = a1;
  }

  else
  {
    *a1 = 45;
    v11 = (a1 + 1);
    v5 = -a4;
  }

  v12 = __fpclassifyd(v5);
  switch(v12)
  {
    case 5:
      *v11 = 48;
      return (v11 + 1);
    case 2:
      v13 = 6712905;
      goto LABEL_14;
    case 1:
      v13 = 5136718;
LABEL_14:
      *v11 = v13;
      return (v11 + 3);
  }

  __e = 0;
  if (v5 <= 0.0)
  {
    __e = 0;
    goto LABEL_24;
  }

  if (v5 >= 0.01 && v5 <= 100.0)
  {
    v17 = 0;
    v21 = v5;
    v19 = v6;
  }

  else
  {
    frexp(v5, &__e);
    v16 = __e * 0.301029996;
    v17 = llround(v16);
    v18 = pow_10(v16, 0.301029996);
    v19 = v6 * v18;
    v21 = v5 * pow_10(v18, v20);
  }

  for (i = v21 + v6 * 0.5; i >= 10.0; i = v21 + v6 * 0.5)
  {
    ++v17;
    v21 = v21 * 0.1;
    v19 = v19 * 10.0;
  }

  if (i < 1.0)
  {
    do
    {
      --v17;
      v21 = v21 * 10.0;
      v19 = v19 * 0.1;
    }

    while (v21 + v6 * 0.5 < 1.0);
  }

  __e = v17;
  if (v17 >= 0)
  {
    v23 = v17;
  }

  else
  {
    v23 = -v17;
  }

  if (v23 > 3)
  {
    v19 = v6;
    v5 = v21;
    goto LABEL_36;
  }

  __e = 0;
  if (v19 >= v6)
  {
LABEL_24:
    v19 = v6;
  }

LABEL_36:
  v24 = &a1[a2];
  v25 = v5 + v19 * 0.5;
  v26 = floor(v25);
  if (v26 > v19)
  {
    v27 = 1;
    v28 = v26;
    result = v11;
    while (result != v24)
    {
      v29 = v27;
      v30 = v28 * 0.1 + 0.05;
      v28 = floor(v30);
      *result++ = ((v30 - v28) * 10.0) + 48;
      ++v27;
      if (v28 <= v19)
      {
        if (result <= v11)
        {
          v11 = result;
          goto LABEL_46;
        }

        if (&result[-v11] >= 2)
        {
          v31 = -1;
          do
          {
            v32 = result[v31];
            result[v31] = *v11;
            *v11++ = v32;
            v29 -= 2;
            --v31;
          }

          while (v29 > 1);
        }

        goto LABEL_47;
      }
    }

    return 0;
  }

LABEL_46:
  *v11 = 48;
  result = (v11 + 1);
LABEL_47:
  v33 = v25 - v26;
  if (v33 > v19)
  {
    if (result != v24)
    {
      *result++ = 46;
      while (result != v24)
      {
        v34 = v33 * 10.0;
        *result++ = vcvtmd_s64_f64(v34) + 48;
        v33 = v34 - floor(v34);
        v19 = v19 * 10.0;
        if (v33 <= v19)
        {
          goto LABEL_56;
        }
      }
    }

    return 0;
  }

  v35 = __e;
  if (!(__e | a3 & 1))
  {
    if (v24 - result < 2)
    {
      return 0;
    }

    *result = 12334;
    result += 2;
LABEL_56:
    v35 = __e;
  }

  if (!v35)
  {
    goto LABEL_68;
  }

  if (v24 - result < 3)
  {
    return 0;
  }

  *result = 101;
  v36 = result + 1;
  v37 = __e;
  if (__e < 0)
  {
    v36 = result + 2;
    result[1] = 45;
    v37 = -__e;
    __e = -__e;
  }

  result = v36;
  if (v37 >= 1)
  {
    result = v36;
    while (result != v24)
    {
      *result++ = (v37 % 0xAu) | 0x30;
      v38 = __e;
      v37 = __e / 10;
      __e /= 10;
      if (v38 <= 9)
      {
        goto LABEL_65;
      }
    }

    return 0;
  }

LABEL_65:
  v39 = result - v36;
  if (result - v36 >= 2)
  {
    v40 = -1;
    do
    {
      v41 = result[v40];
      result[v40] = *v36;
      *v36++ = v41;
      v39 -= 2;
      --v40;
    }

    while (v39 > 1);
  }

LABEL_68:
  if (result == v24)
  {
    return 0;
  }

  *result = 0;
  return result;
}

void *x_stream_init(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

BOOL x_stream_grow(char **a1, unint64_t a2)
{
  v3 = a1[2];
  v4 = *a1;
  v6 = v3 - v4;
  v5 = v6 == 0;
  v7 = 2 * v6;
  if (v5)
  {
    v7 = 1024;
  }

  do
  {
    v8 = v7;
    v9 = &v4[v7] - a1[1];
    v7 *= 2;
  }

  while (v9 < a2);
  v10 = malloc_type_realloc(v4, v8, 0xDE079451uLL);
  if (v10)
  {
    v11 = &v10[a1[1] - *a1];
    *a1 = v10;
    a1[1] = v11;
    a1[2] = &v10[v8];
  }

  return v10 != 0;
}

char *x_stream_get(char **a1)
{
  v2 = a1[1];
  if (v2 + 1 < a1[2])
  {
    goto LABEL_4;
  }

  if (x_stream_grow(a1, 1uLL))
  {
    v2 = a1[1];
LABEL_4:
    *v2 = 0;
    return *a1;
  }

  return 0;
}

void x_stream_free(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t x_stream_printf(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = __s;
  v47 = *MEMORY[0x1E69E9840];
  v45 = &a9;
  v11 = strchr(__s, 37);
  if (v11)
  {
    v12 = v11;
    do
    {
      v13 = v12 - v9;
      if (v12 <= v9)
      {
        goto LABEL_8;
      }

      v14 = *(a1 + 8);
      if (v14 + v13 >= *(a1 + 16))
      {
        if (!x_stream_grow(a1, v12 - v9))
        {
          goto LABEL_8;
        }

        v14 = *(a1 + 8);
      }

      memcpy(v14, v9, v12 - v9);
      *(a1 + 8) += v13;
LABEL_8:
      v15 = v12[1];
      if (v15 == 46)
      {
        v15 = v12[2];
        if ((v15 - 48) > 9)
        {
          v16 = 0;
          ++v12;
        }

        else
        {
          v16 = 0;
          ++v12;
          do
          {
            v16 = v15 + 10 * v16 - 48;
            v15 = v12[2];
            ++v12;
          }

          while ((v15 - 48) < 0xA);
        }

        v18 = __exp10(-v16);
        if (v18 >= 1.0 || v18 <= 0.0)
        {
          v17 = 0.000001;
        }

        else
        {
          v17 = v18;
        }
      }

      else
      {
        v17 = 0.000001;
      }

      if (v15 > 101)
      {
        if (v15 > 116)
        {
          switch(v15)
          {
            case 'u':
              ++v45;
              snprintf(__str, 0x100uLL, "%u");
              break;
            case 'w':
              v38 = v45++;
              v39 = *v38;
              if (v39 < 1)
              {
                goto LABEL_72;
              }

              if (v39 >= 0x100)
              {
                v24 = 256;
              }

              else
              {
                v24 = v39;
              }

              __memset_chk();
LABEL_66:
              v27 = *(a1 + 8);
              if (v27 + v24 < *(a1 + 16))
              {
                goto LABEL_69;
              }

              if (x_stream_grow(a1, v24))
              {
                v27 = *(a1 + 8);
LABEL_69:
                v28 = __str;
LABEL_70:
                memcpy(v27, v28, v24);
LABEL_71:
                *(a1 + 8) += v24;
                goto LABEL_72;
              }

              goto LABEL_72;
            case 'x':
              ++v45;
              snprintf(__str, 0x100uLL, "%x");
              break;
            default:
              goto LABEL_72;
          }

LABEL_65:
          v24 = strlen(__str);
          goto LABEL_66;
        }

        if ((v15 - 102) < 2)
        {
          v32 = v45++;
          v31 = *v32;
LABEL_51:
          if (!x_dtostr_(__str, 0x100uLL, 0, v31, v17))
          {
            goto LABEL_72;
          }

          goto LABEL_65;
        }

        if (v15 == 108)
        {
          v35 = v12[2];
          if (v35 > 0x74)
          {
            if (v35 == 117)
            {
              ++v45;
              snprintf(__str, 0x100uLL, "%lu");
            }

            else
            {
              if (v35 != 120)
              {
                goto LABEL_72;
              }

              ++v45;
              snprintf(__str, 0x100uLL, "%lx");
            }

            goto LABEL_89;
          }

          if (v35 == 100)
          {
            ++v45;
            snprintf(__str, 0x100uLL, "%ld");
LABEL_89:
            v24 = strlen(__str);
            v40 = *(a1 + 8);
            if (v40 + v24 >= *(a1 + 16))
            {
              if (!x_stream_grow(a1, v24))
              {
                ++v12;
                goto LABEL_72;
              }

              v40 = *(a1 + 8);
            }

            memcpy(v40, __str, v24);
            ++v12;
            goto LABEL_71;
          }

          if (v35 == 108)
          {
            v36 = v12[3];
            if (v36 == 88)
            {
              ++v45;
              snprintf(__str, 0x100uLL, "%016llX");
              goto LABEL_95;
            }

            if (v36 == 120)
            {
              ++v45;
              snprintf(__str, 0x100uLL, "%016llx");
LABEL_95:
              v24 = strlen(__str);
              v41 = *(a1 + 8);
              if (v41 + v24 >= *(a1 + 16))
              {
                if (!x_stream_grow(a1, v24))
                {
                  v12 += 2;
                  goto LABEL_72;
                }

                v41 = *(a1 + 8);
              }

              memcpy(v41, __str, v24);
              v12 += 2;
              goto LABEL_71;
            }
          }
        }

        else if (v15 == 115)
        {
          v25 = v45++;
          v26 = *v25;
          v24 = strlen(*v25);
          v27 = *(a1 + 8);
          if (v27 + v24 < *(a1 + 16))
          {
            goto LABEL_38;
          }

          if (x_stream_grow(a1, v24))
          {
            v27 = *(a1 + 8);
LABEL_38:
            v28 = v26;
            goto LABEL_70;
          }
        }
      }

      else if (v15 > 96)
      {
        switch(v15)
        {
          case 'a':
            ++v45;
            snprintf(__str, 0x100uLL, "%a");
            goto LABEL_65;
          case 'c':
            v37 = v45++;
            __str[0] = *v37;
            v33 = *(a1 + 8);
            if ((v33 + 1) >= *(a1 + 16))
            {
              if (!x_stream_grow(a1, 1uLL))
              {
                break;
              }

              v33 = *(a1 + 8);
            }

            v34 = __str[0];
LABEL_78:
            *v33 = v34;
            v24 = 1;
            goto LABEL_71;
          case 'd':
            ++v45;
            snprintf(__str, 0x100uLL, "%d");
            goto LABEL_65;
        }
      }

      else
      {
        if ((v15 - 70) < 2)
        {
          v29 = v45++;
          v30 = *v29;
          if ((__fpclassifyd(*v29) - 1) >= 2)
          {
            v31 = v30;
          }

          else
          {
            v31 = 0.0;
          }

          goto LABEL_51;
        }

        if (v15 != 37)
        {
          if (v15 != 87)
          {
            goto LABEL_72;
          }

          v20 = v45++;
          v21 = *v20;
          if (v21 < 1)
          {
            goto LABEL_72;
          }

          v22 = v21 & 7;
          if (v21 >> 3 >= 0xF8)
          {
            v23 = 248;
          }

          else
          {
            v23 = v21 >> 3;
          }

          v24 = (v23 + v22);
          __memset_chk();
          memset(&__str[v23], 32, v22);
          goto LABEL_66;
        }

        v33 = *(a1 + 8);
        if ((v33 + 1) < *(a1 + 16))
        {
          goto LABEL_56;
        }

        if (x_stream_grow(a1, 1uLL))
        {
          v33 = *(a1 + 8);
LABEL_56:
          v34 = 37;
          goto LABEL_78;
        }
      }

LABEL_72:
      v9 = v12 + 2;
      v12 = strchr(v12 + 2, 37);
    }

    while (v12);
  }

  v42 = strlen(v9);
  v43 = *(a1 + 8);
  if (v43 + v42 >= *(a1 + 16))
  {
    result = x_stream_grow(a1, v42);
    if (!result)
    {
      return result;
    }

    v43 = *(a1 + 8);
  }

  result = memcpy(v43, v9, v42);
  *(a1 + 8) += v42;
  return result;
}

uint64_t x_stream_write(uint64_t a1, void *__src, size_t __n)
{
  v6 = *(a1 + 8);
  if (v6 + __n >= *(a1 + 16))
  {
    result = x_stream_grow(a1, __n);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 8);
  }

  result = memcpy(v6, __src, __n);
  *(a1 + 8) += __n;
  return result;
}

const void *metadataPropertyWithBool(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = CGImageMetadataPropertyCreate();
  v5 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v5);
  if (v4)
  {
    CFAutorelease(v4);
  }

  return v4;
}

const void *metadataPropertyWithArray(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a4);
        }

        v10 = CGImageMetadataValueCreate();
        [v5 addObject:v10];
        CFRelease(v10);
        ++v9;
      }

      while (v7 != v9);
      v7 = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = CGImageMetadataPropertyCreate();
  v12 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v12);
  if (v11)
  {
    CFAutorelease(v11);
  }

  return v11;
}

uint64_t metadataPropertyArrayGetArrayOfStrings()
{
  v14 = *MEMORY[0x1E69E9840];
  if (!GetMetadataPropertyMatchingSchemaAndPropertyName())
  {
    return 0;
  }

  if (!CGImageMetadataPropertyGetValue())
  {
    return [MEMORY[0x1E695DF70] array];
  }

  Value = CGImageMetadataValueGetValue();
  v1 = [MEMORY[0x1E695DF70] array];
  if (Value)
  {
    v2 = CFGetTypeID(Value);
    if (v2 == CFArrayGetTypeID())
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = [Value countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v10;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(Value);
            }

            if (*(*(&v9 + 1) + 8 * i))
            {
              v7 = CGImageMetadataValueGetValue();
            }

            else
            {
              v7 = 0;
            }

            [v1 addObject:v7];
          }

          v4 = [Value countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v4);
      }
    }
  }

  return v1;
}

const void *metadataPropertyWithArrayOfStructs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a6;
  v25 = [a6 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v25)
  {
    v23 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v7;
        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = [MEMORY[0x1E695DF90] dictionary];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = [v8 allKeys];
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              v16 = [v8 objectForKey:v15];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [v16 stringValue];
              }

              v17 = CGImageMetadataValueCreate();
              CGImageMetadataValueSetNamespaceURI();
              CGImageMetadataValueSetSuggestedNamespacePrefix();
              [v9 setObject:v17 forKey:v15];
              CFRelease(v17);
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
          }

          while (v12);
        }

        v18 = CGImageMetadataValueCreate();
        [v24 addObject:v18];
        CFRelease(v18);
        v7 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v25);
  }

  v19 = CGImageMetadataPropertyCreate();
  v20 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v20);
  if (v19)
  {
    CFAutorelease(v19);
  }

  return v19;
}

uint64_t metadataPropertyArrayGetArrayOfStructs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!GetMetadataPropertyMatchingSchemaAndPropertyName())
  {
    return 0;
  }

  if (!CGImageMetadataPropertyGetValue())
  {
    return [MEMORY[0x1E695DF70] array];
  }

  Value = CGImageMetadataValueGetValue();
  v25 = [MEMORY[0x1E695DF70] array];
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 == CFArrayGetTypeID())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26 = [Value countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v26)
      {
        obj = Value;
        v24 = *v34;
        do
        {
          v7 = 0;
          do
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v33 + 1) + 8 * v7);
            v9 = [MEMORY[0x1E695DF90] dictionary];
            v27 = v7;
            if (v8)
            {
              v10 = CGImageMetadataValueGetValue();
            }

            else
            {
              v10 = 0;
            }

            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v11 = [v10 allKeys];
            v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v30;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v30 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v29 + 1) + 8 * i);
                  v17 = [v10 objectForKey:v16];
                  v18 = [a3 isEqualToString:CGImageMetadataValueGetNamespaceURI()];
                  if (v17)
                  {
                    v19 = v18 == 0;
                  }

                  else
                  {
                    v19 = 1;
                  }

                  if (!v19)
                  {
                    v20 = CGImageMetadataValueGetValue();
                    v40.length = CFStringGetLength(v20);
                    v40.location = 0;
                    if (CFStringFindWithOptions(v20, @" ", v40, 0, 0))
                    {
                      [v9 setObject:v20 forKey:v16];
                    }

                    else
                    {
                      valuePtr = CFStringGetDoubleValue(v20);
                      v21 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
                      [v9 setObject:v21 forKey:v16];
                      CFRelease(v21);
                    }
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
              }

              while (v13);
            }

            [v25 addObject:v9];
            v7 = v27 + 1;
          }

          while (v27 + 1 != v26);
          v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v26);
      }
    }
  }

  return v25;
}

const void *metadataPropertyWithDouble(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = CGImageMetadataPropertyCreate();
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%g", *&a4];
  v6 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v6);
  if (v5)
  {
    CFAutorelease(v5);
  }

  return v5;
}

uint64_t metadataPropertyArrayGetDouble(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  result = GetMetadataPropertyMatchingSchemaAndPropertyName();
  if (result && (result = CGImageMetadataPropertyGetValue()) != 0 && (result = CGImageMetadataValueGetValue()) != 0)
  {
    DoubleValue = CFStringGetDoubleValue(result);
    result = 1;
  }

  else
  {
    DoubleValue = NAN;
  }

  *a4 = DoubleValue;
  return result;
}

uint64_t metadataPropertyArrayGetBool(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  if (GetMetadataPropertyMatchingSchemaAndPropertyName())
  {
    if (CGImageMetadataPropertyGetValue() && (Value = CGImageMetadataValueGetValue()) != 0)
    {
      v6 = 1;
      v7 = CFStringCompare(Value, @"TRUE", 1uLL) == kCFCompareEqualTo;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a4 = v7;
  return v6;
}

const void *metadataPropertyWithString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = CGImageMetadataPropertyCreate();
  v5 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v5);
  if (v4)
  {
    CFAutorelease(v4);
  }

  return v4;
}

id metadataPropertyArrayGetString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!GetMetadataPropertyMatchingSchemaAndPropertyName())
  {
    return 0;
  }

  v3 = CGImageMetadataPropertyGetValue() ? CGImageMetadataValueGetValue() : 0;
  v4 = CFGetTypeID(v3);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  v5 = v3;

  return v5;
}

uint64_t get_ycc_to_rgb_matrix(int a1, int a2, int a3, double *a4, float64x2_t *a5, uint64_t a6, float64x2_t *a7)
{
  HIDWORD(v8) = a3;
  LODWORD(v8) = a3;
  v7 = v8 >> 1;
  v9 = v7 > 8;
  v10 = (1 << v7) & 0x171;
  if (v9 || v10 == 0)
  {
    return 0;
  }

  result = 0;
  if (a1 > 708)
  {
    if (a1 == 2020)
    {
      v14 = xmmword_19CF2E0F0;
      v15 = 0x3FE5B22D0E560419;
    }

    else
    {
      if (a1 != 709)
      {
        return result;
      }

      v14 = xmmword_19CF2E110;
      v15 = 0x3FE6E2EB1C432CA5;
    }
  }

  else if (a1 == 240)
  {
    v14 = xmmword_19CF2E100;
    v15 = 0x3FE66E978D4FDF3BLL;
  }

  else
  {
    if (a1 != 601)
    {
      return result;
    }

    v14 = xmmword_19CF2E0E0;
    v15 = 0x3FE2C8B439581062;
  }

  *a5 = xmmword_19CF2D8A0;
  __asm { FMOV            V0.2D, #1.0 }

  v20 = vsubq_f64(_Q0, v14);
  a5[1].f64[0] = v20.f64[1] + v20.f64[1];
  *a6 = 0x3FF0000000000000;
  __asm { FMOV            V4.2D, #-2.0 }

  *(a6 + 8) = vdivq_f64(vmulq_f64(v14, vmulq_f64(v20, _Q4)), vdupq_lane_s64(v15, 0));
  a7->f64[0] = 1.0;
  a7->f64[1] = v20.f64[0] + v20.f64[0];
  a7[1].f64[0] = 0.0;
  if (a3 == 16)
  {
    v22 = 32768.0;
    v23 = 65535.0;
    v24 = 65534.0;
  }

  else if (a3 == 10)
  {
    v22 = 512.0;
    v23 = 1023.0;
    v24 = 1022.0;
  }

  else if (a3 == 12)
  {
    v22 = 2048.0;
    v23 = 4095.0;
    v24 = 4094.0;
  }

  else
  {
    if (a3 == 8)
    {
      v23 = 255.0;
    }

    else
    {
      v23 = 1.0;
    }

    if (a3 == 8)
    {
      v24 = 254.0;
    }

    else
    {
      v24 = 1.0;
    }

    v22 = 128.0;
    if (a3 != 8)
    {
      v22 = 1.0;
    }
  }

  v25 = 1.0;
  if (a3 == 10)
  {
    v25 = 4.0;
  }

  if (a3 == 12)
  {
    v25 = 16.0;
  }

  if (a3 == 16)
  {
    v25 = 256.0;
  }

  if (!a2)
  {
    if (a3)
    {
      _Q0 = vdivq_f64(vdupq_lane_s64(*&v23, 0), vmulq_n_f64(xmmword_19CF2E120, v25));
      v26 = v25 * -16.0 / v23;
      v27 = -v22 / v23;
      goto LABEL_42;
    }

    v26 = 0.0;
LABEL_41:
    v27 = 0.0;
    goto LABEL_42;
  }

  v26 = 0.0;
  if (!a3)
  {
    goto LABEL_41;
  }

  v27 = -v22 / v23;
  __asm { FMOV            V0.2D, #1.0 }

  _Q0.f64[1] = v23 / v24;
LABEL_42:
  a4[1] = v27;
  a4[2] = v27;
  *a4 = v26;
  *a5 = vmulq_f64(_Q0, *a5);
  a5[1].f64[0] = vmuld_lane_f64(a5[1].f64[0], _Q0, 1);
  *a6 = vmulq_f64(_Q0, *a6);
  *(a6 + 16) = vmuld_lane_f64(*(a6 + 16), _Q0, 1);
  *a7 = vmulq_f64(_Q0, *a7);
  a7[1].f64[0] = vmuld_lane_f64(a7[1].f64[0], _Q0, 1);
  return 1;
}

uint64_t get_rgb_to_ycc_matrix(int a1, int a2, int a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  HIDWORD(v8) = a3;
  LODWORD(v8) = a3;
  v7 = v8 >> 1;
  v9 = v7 > 8;
  v10 = (1 << v7) & 0x171;
  if (v9 || v10 == 0)
  {
    return 0;
  }

  result = 0;
  if (a1 > 708)
  {
    if (a1 == 2020)
    {
      v14 = xmmword_19CF2E140;
      v15 = 0.2627;
    }

    else
    {
      if (a1 != 709)
      {
        return result;
      }

      v14 = xmmword_19CF2E160;
      v15 = 0.2126;
    }
  }

  else if (a1 == 240)
  {
    v14 = xmmword_19CF2E150;
    v15 = 0.212;
  }

  else
  {
    if (a1 != 601)
    {
      return result;
    }

    v14 = xmmword_19CF2E130;
    v15 = 0.299;
  }

  *a5 = v15;
  *(a5 + 8) = v14;
  v16 = v14.f64[1];
  __asm { FMOV            V2.2D, #-0.5 }

  v21 = vmulq_f64(v14, _Q2);
  v22 = 1.0;
  v23 = 1.0 - v16;
  *a6 = v15 * -0.5 / v23;
  *(a6 + 8) = v21.f64[0] / v23;
  *(a6 + 16) = 0x3FE0000000000000;
  *a7 = 0x3FE0000000000000;
  *(a7 + 8) = vdivq_f64(v21, vdupq_lane_s64(COERCE__INT64(1.0 - v15), 0));
  if (a3 == 16)
  {
    v24 = 32768.0;
    v25 = 65535.0;
    v26 = 65534.0;
  }

  else if (a3 == 10)
  {
    v24 = 512.0;
    v25 = 1023.0;
    v26 = 1022.0;
  }

  else if (a3 == 12)
  {
    v24 = 2048.0;
    v25 = 4095.0;
    v26 = 4094.0;
  }

  else
  {
    if (a3 == 8)
    {
      v25 = 255.0;
    }

    else
    {
      v25 = 1.0;
    }

    if (a3 == 8)
    {
      v26 = 254.0;
    }

    else
    {
      v26 = 1.0;
    }

    v24 = 128.0;
    if (a3 != 8)
    {
      v24 = 1.0;
    }
  }

  if (a3 == 10)
  {
    v22 = 4.0;
  }

  if (a3 == 12)
  {
    v22 = 16.0;
  }

  v27 = 256.0;
  if (a3 != 16)
  {
    v27 = v22;
  }

  if (a2)
  {
    v28 = v26 / v25;
    v29 = 1.0;
    if (!a3)
    {
      v28 = 1.0;
    }

    v30 = 0.0;
  }

  else if (a3)
  {
    v29 = v27 * 219.0 / v25;
    v28 = v27 * 224.0 / v25;
    v30 = v27 * 16.0 / v25;
  }

  else
  {
    v29 = 1.0;
    v30 = 0.0;
    v28 = 1.0;
  }

  v31 = v24 / v25;
  if (!a3)
  {
    v31 = 0.0;
  }

  a4[1] = v31;
  a4[2] = v31;
  *a4 = v30;
  *a5 = vmulq_n_f64(*a5, v29);
  *(a5 + 16) = v29 * *(a5 + 16);
  *a6 = vmulq_n_f64(*a6, v28);
  *(a6 + 16) = v28 * *(a6 + 16);
  *a7 = vmulq_n_f64(*a7, v28);
  *(a7 + 16) = v28 * *(a7 + 16);
  return 1;
}

double get_ycc_to_rgb_bias_matrix(int a1, int a2, int a3, float64x2_t *a4, double *a5, float64x2_t *a6, double *a7)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  get_ycc_to_rgb_matrix(a1, a2, a3, &v15, a4, a5, a6);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  *a7 = a4->f64[1] * v16 + a4->f64[0] * v15 + a4[1].f64[0] * v17;
  a7[1] = v12 * a5[1] + *a5 * v11 + a5[2] * v13;
  result = v12 * a6->f64[1] + a6->f64[0] * v11 + a6[1].f64[0] * v13;
  a7[2] = result;
  return result;
}

void CI::BitmapSampler::write(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 88);
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Bitmap write error: Accessing corrupted bitmap size: (%zu,%zu)", &v5, 0x16u);
}

void CoreAnalytics()
{
  if (__cxa_guard_acquire(byte_1ED7C44A0))
  {
    _MergedGlobals_0 = dispatch_queue_create("CoreImageAnalytics", 0);
    __cxa_guard_release(byte_1ED7C44A0);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED7C44D0))
  {
    qword_1ED7C44C8 = dispatch_queue_create("CoreImageAnalytics", 0);

    __cxa_guard_release(byte_1ED7C44D0);
  }
}

void GetOutputColorSpaceFromOptions()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void GetWorkingColorSpaceFromOptions()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void canCreateDataRepresentation(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "canCreateDataRepresentation";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported colorspace.", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "canCreateDataRepresentation";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires an image with a finite non-empty extent.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void repairROIforEyePoints_cold_1(os_log_t log, float a2, float a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136446722;
  v4 = "repairROIforEyePoints";
  v5 = 2048;
  v6 = a2;
  v7 = 2048;
  v8 = a3;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s eye outset = %.3f x %.3f", &v3, 0x20u);
}

void focusStatsForRegion_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "focusStatsForRegion";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s Focus Stats: Error in creating pixel buffer", &v1, 0xCu);
}

void ContextIsUsable_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134349056;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Unable to get macro state for the GLContext: %{public}p.\n", &v2, 0xCu);
}

void VisionLibrary(void *a1)
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  __break(1u);
}

{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  __break(1u);
}

void OptionHeadroom()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OptionAverageLightLevel()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void getContentDigestFromOptions()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  v6 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5(&dword_19CC36000, v0, v1, "%{public}s %{public}@ value is not a NSString of at least length 16.", v2, v3, v4, v5, v6);
}

{
  v6 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5(&dword_19CC36000, v0, v1, "%{public}s %{public}@ value is not NSData of at least 16 bytes.", v2, v3, v4, v5, v6);
}

void CIKernelReflection::reflect()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "[CIKernel initWithString:] failed because the warp kernel '%{public}s' has an unsupported type sampler2D for the parameter '%{public}s'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "[CIKernel initWithString:] failed because the warp kernel '%{public}s' has an unsupported type sample_h for the parameter '%{public}s'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "[CIKernel initWithString:] failed because the warp kernel '%{public}s' has an unsupported type __sample for the parameter '%{public}s'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "[CIKernel initWithString:] failed because '%{public}s', the first kernel in the string, has an unsupported type for the parameter '%{public}s'.");
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "Function '%{public}s' has an unsupported type for the parameter '%{public}@'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "Function '%{public}s' has an unsupported type sampler2D for the parameter '%{public}@'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Function '%{public}s' has too many destination parameters.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Warp kernel function '%{public}s' does not have a coreimage:destination argument.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Warp kernel function '%{public}s' cannot have coreimage:sampler arguments.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Function '%{public}s' has an unsupported return type.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Function '%{public}s' does not exist.", v2, v3, v4, v5);
}

void CIKernelReflection::reflect(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 functionNames];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_19CC36000, a2, OS_LOG_TYPE_DEBUG, "Available function names are: %{public}@", &v4, 0xCu);
}

void CIKernelReflection::reflectConstants()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Could not determine required constants for '%{public}s'.", v2, v3, v4, v5);
}

void check_cikl_string(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a2, a3, "%{public}s passed an empty or nil string.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void CIKLLibraryMaker::createMetalLibraryFromFoslPool()
{
  dispatch_once(&CIKLLibraryMaker::createMetalLibraryFromFoslPool(void *)::onceToken, &__block_literal_global_544);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZN16CIKLLibraryMaker30createMetalLibraryFromFoslPoolEPv_block_invoke_2_cold_1(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __can_use_metal_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __can_use_metal_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __CIGetHarvestingBinaryArchiveDict_block_invoke_cold_1(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __CIGetHarvestingBinaryArchiveDict_block_invoke_cold_2(void *a1, id *a2)
{
  [a1 url];
  [*a2 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __CIGetHarvestingBinaryArchiveDict_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CreateUberComputePipelineState_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CreateComputePipelineState_cold_1(void *a1)
{
  [a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void CreateComputePipelineState_cold_2(void *a1)
{
  [a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void CreateComputePipelineState_cold_3()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CreateRenderPipelineState_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CreateFunctionFromSource_cold_2(uint64_t a1, void *a2)
{
  [a2 bundlePath];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void CreateFunctionFromSource_cold_3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2082;
  v4 = v0;
  _os_log_error_impl(&dword_19CC36000, v1, OS_LOG_TYPE_ERROR, "Could not get function '%{public}s' from source:\n%{public}s\n", v2, 0x16u);
}

void CreateFunctionFromSource_cold_4()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CILoadBinaryArchive_cold_1(uint64_t a1, id *a2)
{
  [*a2 description];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void CILoadBinaryArchive_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void CreateStitchedFunctionFromDescriptor_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CreateStitchedFunctionFromDescriptor_cold_2()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void print_stitched_dag_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __CIMetalRenderToTextures_block_invoke_101_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CIAbortIfICSAndUnsuccessfulCommandBufferExecution_cold_1(void *a1)
{
  [objc_msgSend(a1 "error")];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void CIAbortIfICSAndUnsuccessfulCommandBufferExecution_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void serializeBinaryArchive_cold_1(uint64_t a1, id *a2)
{
  [*a2 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __ArchiveLibraryUsingDescriptor_block_invoke_cold_1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __ArchiveLibraryUsingDescriptor_block_invoke_cold_2(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __ArchiveLibraryUsingDescriptor_block_invoke_cold_3(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void perspectiveTransformImage()
{
  if (__cxa_guard_acquire(_MergedGlobals_3))
  {
    xmmword_1ED7C44F0 = xmmword_19CF28470;
    unk_1ED7C4500 = xmmword_19CF28480;
    xmmword_1ED7C4510 = xmmword_19CF28490;

    __cxa_guard_release(_MergedGlobals_3);
  }
}

void convexFillHorizontal(unsigned __int8 *a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 136446722;
  v5 = "convexFillHorizontal";
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s [ConvexFill] center is below threshold (%d < %d)", &v4, 0x18u);
}

void convexFillHorizontal(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "convexFillHorizontal";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s [ConvexFill] center lies outside of the buffer", &v1, 0xCu);
}

void CIVNDetectFaces_cold_2(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  v7 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face rects: %{public}@", v3, v4, v5, v6, v7);
}

void CIVNDetectFaces_cold_3(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  v7 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face attributes: %{public}@", v3, v4, v5, v6, v7);
}

void CIVNDetectFaces_cold_4(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  v7 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face landmarks: %{public}@", v3, v4, v5, v6, v7);
}

void CIVNDetectFaces_cold_5(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  v7 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face pose: %{public}@", v3, v4, v5, v6, v7);
}

void CIVNDetectFaces_cold_6(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  v7 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face segmentations: %{public}@", v3, v4, v5, v6, v7);
}

void SDOFParameterValue()
{
  dispatch_once(&SDOFParameterValue(NSString *,NSString *)::onceToken, &__block_literal_global_1148);
}

{
  dispatch_once(&SDOFParameterValue(NSString *,NSString *)::onceToken2, &__block_literal_global_1153);
}

void tuningParametersFromMetaData(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_3_3(&dword_19CC36000, a2, a3, "Failed to parse rendering parameters; unknown version %d", a5, a6, a7, a8, v8);
}

void FigDepthBlurEffectRenderingParametersV1FromCFData()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Invalid parameters data; no start marker found", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Incorrect parameters version", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Size mismatch", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Params data too small", v2, v3, v4, v5);
}

void CI::snprintf_cs()
{
  if (__cxa_guard_acquire(byte_1ED7C4528))
  {
    _MergedGlobals_4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);

    __cxa_guard_release(byte_1ED7C4528);
  }
}

void CI::SWContext::render_node()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CI::SWContext::render_node(int a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136446722;
  v4 = "void CI::SWContext::render_node(ProgramNode *, const CGRect &, const CGRect &, const Bitmap *)";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s: Destination refCount changed from %d to %d", &v3, 0x18u);
}

void CI::SWContext::render_node(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v5 = 136446722;
  v6 = "void CI::SWContext::render_node(ProgramNode *, const CGRect &, const CGRect &, const Bitmap *)";
  v7 = 2048;
  v8 = v3;
  v9 = 2048;
  v10 = v4;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s: outBuffer with %zu width and %zu height", &v5, 0x20u);
}

uint64_t CMatrix::operator[](unsigned int *a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

void *CMatrixRow::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return &CMatrixRow::operator[]const::zero;
  }

  v3 = v2 + 8 * a2;
  if (*a1 > a2)
  {
    return v3;
  }

  else
  {
    return &CMatrixRow::operator[]const::zero;
  }
}

void CI::PixelBufferImage::render_graph_core(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136446210;
  v4 = CI::name_for_format(a1);
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Render failed because a pixel format %{public}s is not supported.\n", &v3, 0xCu);
}

void wrapEAGLContextTexImageIOSurface_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Could not set current EAGL context to %p.", &v2, 0xCu);
}

void CI::createCFData()
{
  if (__cxa_guard_acquire(byte_1ED7C4538))
  {
    _MergedGlobals_5 = getpagesize();

    __cxa_guard_release(byte_1ED7C4538);
  }
}

void ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Unable to get macro state for the GLContext: %{public}p.\n", v2, v3, v4, v5);
}

void CI::GLTextureManager::release_texture(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134349056;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a2, a3, "Unable to get macro state for the GLContext: %{public}p.\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void CI::GLTextureManager::upload_texture()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Unable to get macro state for the GLContext: %{public}p.\n", v2, v3, v4, v5);
}

void ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_38_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Unable to get macro state for the GLContext: %{public}p.\n", v2, v3, v4, v5);
}

void CI::MetalTextureManager::create_intermediate(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446210;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Rendering with %{public}s requires compression!\n", buf, 0xCu);
}

void CI::allowRemoval(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Released LRU for %p", &v3, 0xCu);
}

void CI::MetalContext::set_bitmap_destination()
{
  if (__cxa_guard_acquire(byte_1ED7C4548))
  {
    _MergedGlobals_6 = getpagesize();

    __cxa_guard_release(byte_1ED7C4548);
  }
}

void CI::Context::recursive_render(CI::TextureManager *a1)
{
  if (__cxa_guard_acquire(byte_1ED7C4558))
  {
    CI::TextureManager::intermediate(a1, 0);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED7C4568))
  {
    CI::TextureManager::intermediate(a1, 1);
  }
}

void CI::Context::recursive_render(double *a1, double *a2)
{
  v2 = CFStringCreateWithFormat(0, 0, @"Core Image cannot allocate surface of size %zu x %zu", *a1, *a2);
  qword_1ED7C3F80 = CFStringGetCStringPtr(v2, 0x600u);
  abort();
}

void CI::Context::recursive_render()
{
  qword_1ED7C3F80 = "Core Image cannot allocate IOSurface with unspecified format.";
  abort();
}

{
  dispatch_once(&CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::onceToken, &__block_literal_global_88_1);
}

{
  dispatch_once(&CI::Context::render_completion_queue(void)::onceToken, &__block_literal_global_84);
}

void CI::convert_buffer_to_texture()
{
  if (__cxa_guard_acquire(byte_1ED7C4578))
  {
    _MergedGlobals_8 = getpagesize();

    __cxa_guard_release(byte_1ED7C4578);
  }
}

void CI::format_swizzle_for_input()
{
  LODWORD(v6) = 136446722;
  *(&v6 + 4) = "kSwizzleRGB14";
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_12(&dword_19CC36000, v0, v1, "CoreImage needs a %{public}s swizzler so that %{public}s can be read as %{public}s.\n", v2, v3, v4, v5, v6, DWORD2(v6));
}

{
  LODWORD(v6) = 136446722;
  *(&v6 + 4) = "kSwizzleBGRAtoLLAA";
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_12(&dword_19CC36000, v0, v1, "CoreImage needs a %{public}s swizzler so that %{public}s can be read as %{public}s.\n", v2, v3, v4, v5, v6, DWORD2(v6));
}

{
  LODWORD(v6) = 136446722;
  *(&v6 + 4) = "kSwizzleBGRAtoRRGG1";
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_12(&dword_19CC36000, v0, v1, "CoreImage needs a %{public}s swizzler so that %{public}s can be read as %{public}s.\n", v2, v3, v4, v5, v6, DWORD2(v6));
}

void CI::format_swizzle_for_input(int a1)
{
  LODWORD(v7) = 136446210;
  *(&v7 + 4) = CI::name_for_format(a1);
  OUTLINED_FUNCTION_0(&dword_19CC36000, v1, v2, "need a swizzler so that %{public}s can be read.\n", v3, v4, v5, v6, v7, DWORD2(v7));
}

void CI::format_swizzle_for_output(int a1)
{
  LODWORD(v7) = 136446210;
  *(&v7 + 4) = CI::name_for_format(a1);
  OUTLINED_FUNCTION_0(&dword_19CC36000, v1, v2, "CoreImage needs a swizzler so that %{public}s can be written.\n", v3, v4, v5, v6, v7, DWORD2(v7));
}

void CI::format_converter_for_output(int a1)
{
  LODWORD(v7) = 136446210;
  *(&v7 + 4) = CI::name_for_format(a1);
  OUTLINED_FUNCTION_0(&dword_19CC36000, v1, v2, "CoreImage needs a converter so that %{public}s can be written.\n", v3, v4, v5, v6, v7, DWORD2(v7));
}

void CI::ColorMatchImage::render_graph_core()
{
  if (__cxa_guard_acquire(byte_1ED7C4588))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v1 = OUTLINED_FUNCTION_0_12(Mutable, &_MergedGlobals_9);
    __cxa_guard_release(v1);
  }
}

{
  dispatch_once(&CI::CI_EXTENDED_PCS(void)::didCheck, &__block_literal_global_86);
}

{
  if (__cxa_guard_acquire(byte_1ED7C4598))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v1 = OUTLINED_FUNCTION_0_12(Mutable, &qword_1ED7C4590);
    __cxa_guard_release(v1);
  }
}

void CI::ColorMatchImage::render_graph_core(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Could not support source colorspace: %{public}s", &v2, 0xCu);
}

{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Could not support destination colorspace: %{public}s", &v2, 0xCu);
}

void CI::match_color(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = a1;
  v5 = 2082;
  v6 = a2;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Matching a color failed: from %{public}s to %{public}s", &v3, 0x16u);
}

void CI::get_colorspace_gamma_and_matrix()
{
  if (__cxa_guard_acquire(byte_1ED7C45A8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45A0);

    __cxa_guard_release(v1);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED7C45B8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45B0);

    __cxa_guard_release(v1);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED7C45C8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45C0);
    __cxa_guard_release(v1);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED7C45D8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45D0);
    __cxa_guard_release(v1);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED7C45E8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45E0);
    __cxa_guard_release(v1);
  }
}

void CI::ProcessorImage::render_graph_core(int *a1)
{
  LODWORD(v7) = 136446210;
  *(&v7 + 4) = CI::name_for_format(*a1);
  OUTLINED_FUNCTION_0(&dword_19CC36000, v1, v2, "Could not convert from processor's output format (%{public}s) to a format supported by the context.", v3, v4, v5, v6, v7, DWORD2(v7));
}

void CI::ProviderImage::render_graph_core(int a1)
{
  LODWORD(v7) = 136446210;
  *(&v7 + 4) = CI::name_for_format(a1);
  OUTLINED_FUNCTION_0(&dword_19CC36000, v1, v2, "Render failed because a pixel format %{public}s is not supported.\n", v3, v4, v5, v6, v7, DWORD2(v7));
}

void CI::SurfaceImage::render_graph_core(int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = CI::name_for_format(*a1);
  v4 = 136446210;
  v5 = v3;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Render failed because a pixel format %{public}s is not supported.\n", &v4, 0xCu);
}

void ___ZL37addSpecializedFunctionToBinaryArchiveP21MTLFunctionDescriptorPU21objcproto10MTLLibrary11objc_object_block_invoke_cold_1(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void CI::StitchableFunctionDAGDescriptor::~StitchableFunctionDAGDescriptor(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }
}

void CI::UberDAGDescriptor::create_pipeline(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Failed creating visible function handle for %{public}@", buf, 0xCu);
}

void CI::UberDAGDescriptor::create_pipeline()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CI::PrecompiledUberFunctions::getUberShaderName()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CI::PrecompiledUberFunctions::getFunctionArray()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CI::PrecompiledUberFunctions::getFunctionArrayNoDuplicates()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_19CC36000, v1, OS_LOG_TYPE_ERROR, "Error creating uber wrapper function %{public}@ from library: %{public}@", v2, 0x16u);
}

void CI::UberDAGDescriptor::~UberDAGDescriptor(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;

    operator delete(v3);
  }
}

void CI::LegacyDAGDescriptor::~LegacyDAGDescriptor(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void CI::Kernel::builtin(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "don't know how to create builtin kernel for type %d", v2, 8u);
}

void CI::fillBlock()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Source provider block set is nil.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Source image provider is nil.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Destination surface is nil.", v2, v3, v4, v5);
}

void CI::GeneralKernelNode::roi_of_child(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 48) + 24);
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Error general kernel %{public}s no longer has its ROI callback.", &v3, 0xCu);
}

void CI::WarpKernelNode::roi_of_child(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 48) + 24);
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Error warp kernel %{public}s no longer has its ROI callback.", &v3, 0xCu);
}

void CI::PremultiplyNode::convert_to_kernel_node(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Invalid premultiply power %d.", v3, 8u);
}

void CI::ConvertNode::render(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_19CC36000, a2, OS_LOG_TYPE_DEBUG, "Failed to render - cannot access data from CGImage %p", &v2, 0xCu);
}

void CI::ProgramNode::queue_pool()
{
  if (__cxa_guard_acquire(byte_1ED7C45F8))
  {
    operator new();
  }
}

void ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_6_cold_1(int *a1, uint64_t a2, int a3)
{
  v6 = ci_logger_render(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = CI::name_for_format(*a1);
    v8 = 136446722;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_error_impl(&dword_19CC36000, v6, OS_LOG_TYPE_ERROR, "Malloc of scratch for %{public}s rowbytes=%zu plane=%d failed.", &v8, 0x1Cu);
  }

  abort();
}

void CI::SRGBNode::convert_to_kernel_node(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Invalid srgb direction %d.", v3, 8u);
}

void CI::Object::performDeferredRoot()
{
  if (__cxa_guard_acquire(_MergedGlobals_11))
  {
    qword_1ED7C4620 = &qword_1ED7C4620;
    qword_1ED7C4628 = &qword_1ED7C4620;
    qword_1ED7C4630 = 0;
    __cxa_atexit(std::list<dispatch_queue_s *>::~list, &qword_1ED7C4620, &dword_19CC36000);

    __cxa_guard_release(_MergedGlobals_11);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED7C4608))
  {
    qword_1ED7C4638 = &qword_1ED7C4638;
    qword_1ED7C4640 = &qword_1ED7C4638;
    qword_1ED7C4648 = 0;
    __cxa_atexit(std::list<dispatch_group_s *>::~list, &qword_1ED7C4638, &dword_19CC36000);

    __cxa_guard_release(byte_1ED7C4608);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED7C4618))
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    qword_1ED7C4610 = dispatch_queue_create("CI::DispatchPoolAccessQueue", v0);

    __cxa_guard_release(byte_1ED7C4618);
  }
}

void ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_10_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "render_block_invoke";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s could not access pixelbuffer.", &v1, 0xCu);
}

void ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_10_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "render_block_invoke";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s could not access surface.", &v1, 0xCu);
}

void CI::tile_node_graph()
{
  if (__cxa_guard_acquire(byte_1ED7C4658))
  {
    if (CI_PRINT_TREE_dump_timing() || (CI_PRINT_TREE_dump_intermediates() & 1) != 0)
    {
      v0 = 1;
    }

    else
    {
      v0 = CI_PRINT_TREE_dump_outputs();
    }

    _MergedGlobals_12 = v0;
    __cxa_guard_release(byte_1ED7C4658);
  }
}

void CI::tile_node_graph(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1 - a2;
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Failed to render %llu of %llu pixels", &v3, 0x16u);
}

void CI::tile_node_graph(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Failed to render %llu pixels", &v2, 0xCu);
}

void CI::recursive_tile()
{
  if (__cxa_guard_acquire(byte_1ED7C4660))
  {
    if (CI_PRINT_TREE_dump_timing() || (CI_PRINT_TREE_dump_intermediates() & 1) != 0)
    {
      v0 = 0;
    }

    else
    {
      v0 = CI_PRINT_TREE_dump_outputs() ^ 1;
    }

    byte_1ED7C4651 = v0;
    __cxa_guard_release(byte_1ED7C4660);
  }
}

void CI::gReleaseSurfaceBlockMap()
{
  if (__cxa_guard_acquire(byte_1ED7C4670))
  {
    operator new();
  }
}

void CI::SurfaceCacheEntry::SurfaceCacheEntry(unint64_t a1, NSObject *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = CI::gCacheList;
  if (CI::gCacheList)
  {
    v2 = *(CI::gCacheList + 16);
  }

  v3 = atomic_load(&CI::gCacheSize);
  if (v3 <= 0x80000000)
  {
    if (v3 <= 0x200000)
    {
      if (v3 < 0x801)
      {
        goto LABEL_10;
      }

      v4 = vcvtd_n_f64_u64(v3, 0xAuLL);
    }

    else
    {
      v4 = vcvtd_n_f64_u64(v3, 0x14uLL);
    }
  }

  else
  {
    v4 = vcvtd_n_f64_u64(v3, 0x1EuLL);
  }

  v3 = llround(v4);
LABEL_10:
  v5 = atomic_load(&CI::gCacheSize);
  v6 = "B";
  if (v5 <= 0x80000000)
  {
    if (v5 <= 0x200000)
    {
      if (v5 <= 0x800)
      {
        v7 = "B";
      }

      else
      {
        v7 = "KB";
      }
    }

    else
    {
      v7 = "MB";
    }
  }

  else
  {
    v7 = "GB";
  }

  v8 = llround(vcvtd_n_f64_u64(a1, 0x1EuLL));
  v9 = llround(vcvtd_n_f64_u64(a1, 0x14uLL));
  v10 = "MB";
  v11 = llround(vcvtd_n_f64_u64(a1, 0xAuLL));
  if (a1 > 0x800)
  {
    v12 = "KB";
  }

  else
  {
    v11 = a1;
    v12 = "B";
  }

  if (a1 <= 0x200000)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 0x80000000)
  {
    v13 = v10;
  }

  else
  {
    v9 = v8;
    v13 = "GB";
  }

  v14 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x1EuLL));
  v15 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x14uLL));
  v16 = "MB";
  v17 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0xAuLL));
  if (CI::gCacheSizePeak > 0x800)
  {
    v18 = "KB";
  }

  else
  {
    v17 = CI::gCacheSizePeak;
    v18 = "B";
  }

  if (CI::gCacheSizePeak <= 0x200000)
  {
    v15 = v17;
    v16 = v18;
  }

  if (CI::gCacheSizePeak > 0x80000000)
  {
    v19 = "GB";
  }

  else
  {
    v14 = v15;
    v19 = v16;
  }

  v20 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x1EuLL));
  v21 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x14uLL));
  v22 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0xAuLL));
  if (CI::gCacheNonVolatileSizePeak > 0x800)
  {
    v6 = "KB";
  }

  else
  {
    v22 = CI::gCacheNonVolatileSizePeak;
  }

  if (CI::gCacheNonVolatileSizePeak <= 0x200000)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (CI::gCacheNonVolatileSizePeak > 0x200000)
  {
    v6 = "MB";
  }

  if (CI::gCacheNonVolatileSizePeak > 0x80000000)
  {
    v23 = v20;
    v6 = "GB";
  }

  v24 = 134220290;
  v25 = v2;
  v26 = 2048;
  v27 = v3;
  v28 = 2080;
  v29 = v7;
  v30 = 2048;
  v31 = v9;
  v32 = 2080;
  v33 = v13;
  v34 = 2048;
  v35 = CI::gCacheCountPeak;
  v36 = 2048;
  v37 = v14;
  v38 = 2080;
  v39 = v19;
  v40 = 2048;
  v41 = v23;
  v42 = 2080;
  v43 = v6;
  _os_log_fault_impl(&dword_19CC36000, a2, OS_LOG_TYPE_FAULT, "Cache Stats: count=%ld size=%ld%s non-volatile=%ld%s peakCount=%ld peakSize=%ld%s peakNVSize=%ld%s", &v24, 0x66u);
}

void CI::RenderTask::quicklookDataForRenderTask()
{
  if (__cxa_guard_acquire(byte_1ED7C4680))
  {
    _MergedGlobals_14 = CIGVRendererCreatePDFRenderer();

    __cxa_guard_release(byte_1ED7C4680);
  }
}

void CI::RenderTask::quicklookDataForRenderInfo()
{
  if (__cxa_guard_acquire(byte_1ED7C4690))
  {
    qword_1ED7C4688 = CIGVRendererCreatePDFRenderer();

    __cxa_guard_release(byte_1ED7C4690);
  }
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGSize CGLayerGetSize(CGLayerRef layer)
{
  MEMORY[0x1EEDBA310](layer);
  result.height = v2;
  result.width = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer)
{
  MEMORY[0x1EEDBF858](imageBuffer);
  result.height = v2;
  result.width = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}