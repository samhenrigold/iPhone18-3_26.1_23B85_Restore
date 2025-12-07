void *AG::vector<unsigned char,0ul,unsigned long>::reserve_slow(uint64_t a1, size_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,1ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,1ul>(void *a1, size_t *a2, size_t size)
{
  v4 = a1;
  if (size)
  {
    v5 = malloc_good_size(size);
    if (v5 != *a2)
    {
      v6 = v5;
      v7 = malloc_type_realloc(v4, v5, 0x15CB70FBuLL);
      if (!v7)
      {
        AG::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

size_t AG::Subgraph::print(AG::Subgraph *this, int a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = 2 * a2;
  MEMORY[0x1EEE9AC00](this);
  v6 = v26 - v5;
  bzero(v26 - v5, v7);
  memset(v6, 32, v4);
  v6[v4] = 0;
  v8 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "%s+ %p: %u in %lu [", v6, this, *(this + 6) & 0x7FFFFFFF, *(this + 6));
  v26[0] = this;
  v9 = *(this + 4);
  if (v9)
  {
    v10 = 1;
    v11 = AG::data::_shared_table_bytes;
    do
    {
      v12 = v9;
      v13 = v11 + v9;
      v14 = *(v13 + 20);
      if (*(v13 + 20))
      {
        do
        {
          while (1)
          {
            while (1)
            {
              v15 = v14 + v12;
              v16 = (v14 + v12) & 3;
              if (v16 <= 1)
              {
                break;
              }

              if (v16 != 3 || !v14)
              {
                goto LABEL_17;
              }
            }

            if (!v16)
            {
              break;
            }

            v20 = AG::data::_shared_table_bytes + (v15 & 0xFFFFFFFC);
            v14 = *(v20 + 14);
            if (!*(v20 + 14))
            {
              goto LABEL_17;
            }
          }

          v17 = AG::data::_shared_table_bytes + v15;
          v14 = *(v17 + 4);
          v18 = *(v17 + 6);
          if (v10)
          {
            v19 = "";
          }

          else
          {
            v19 = " ";
          }

          fprintf(*v8, "%s%u", v19, v15);
          if (v18)
          {
            fprintf(*v8, "(%u)", v18);
          }

          v10 = 0;
        }

        while (v14);
LABEL_17:
        v11 = AG::data::_shared_table_bytes;
      }

      v9 = *(v11 + v12 + 8);
    }

    while (v9);
  }

  result = fwrite("]\n", 2uLL, 1uLL, *v8);
  v22 = *(v26[0] + 72);
  if (v22)
  {
    v23 = *(v26[0] + 64);
    v24 = 8 * v22;
    do
    {
      v25 = *v23++;
      result = AG::Subgraph::print((v25 & 0xFFFFFFFFFFFFFFFCLL), a2 + 1);
      v24 -= 8;
    }

    while (v24);
  }

  return result;
}

void AG::Subgraph::graph_destroyed(AG::Subgraph *this)
{
  v2 = *(this + 104);
  *(this + 104) = 3;
  if (!v2 && *(*(this + 5) + 176))
  {
    AG::Subgraph::graph_destroyed();
  }

  AG::Subgraph::notify_observers(this);
  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = AG::data::_shared_table_bytes;
  while (2)
  {
    v5 = v3;
    v6 = v4 + v3;
    v7 = *(v6 + 20);
    if (!*(v6 + 20))
    {
      goto LABEL_21;
    }

    do
    {
      while (1)
      {
        v8 = (v7 + v5);
        if (((v7 + v5) & 3u) > 1)
        {
          if (((v7 + v5) & 3) != 3)
          {
            v10 = 1;
            goto LABEL_20;
          }

          goto LABEL_14;
        }

        if (((v7 + v5) & 3) == 0)
        {
          break;
        }

        v7 = *(AG::data::_shared_table_bytes + (v8 & 0xFFFFFFFC) + 14);
        if ((v8 & 3) == 0)
        {
          v9 = AG::data::_shared_table_bytes + v8;
          goto LABEL_17;
        }

LABEL_14:
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v9 = AG::data::_shared_table_bytes + v8;
      v7 = *(v9 + 4);
      if ((v8 & 3) != 0)
      {
        goto LABEL_14;
      }

LABEL_17:
      AG::Node::destroy(v9, *(this + 5));
    }

    while (v7);
LABEL_18:
    v10 = 0;
LABEL_20:
    v4 = AG::data::_shared_table_bytes;
    if ((v10 & 1) == 0)
    {
LABEL_21:
      v3 = *(v4 + v5 + 8);
      if (!v3)
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_22:
  AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::clear(this + 7);
  *(this + 18) = 0;

  AG::data::zone::clear(this);
}

AG::Graph **AG::Subgraph::move(AG::Graph **this, AG::Graph::Context *a2)
{
  if (this[6] != *(a2 + 2))
  {
    v3 = this;
    v4 = this[5];
    v5 = *a2;
    AG::Graph::remove_subgraph(v4, this);
    AG::Subgraph::move_attributes(v3, v4, v5);
    this = AG::Subgraph::move_tree_data(v3, v4, v5);
    v6 = *(v5 + 296);
    v7 = *(v5 + 304);
    v8 = v6;
    if (v7)
    {
      v8 = *(v5 + 296);
      v9 = *(v5 + 304);
      do
      {
        v10 = v9 >> 1;
        v11 = &v8[8 * (v9 >> 1)];
        v13 = *v11;
        v12 = (v11 + 1);
        v9 += ~(v9 >> 1);
        if (v13 < v3)
        {
          v8 = v12;
        }

        else
        {
          v9 = v10;
        }
      }

      while (v9);
    }

    v14 = v8 - v6;
    v15 = (v8 - v6) >> 3;
    if (*(v5 + 308) < v7 + 1)
    {
      this = AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow((v5 + 296), v7 + 1);
      v6 = *(v5 + 296);
      v7 = *(v5 + 304);
    }

    if (v7 > v15)
    {
      this = memmove(&v6[v14 + 8], &v6[v14], 8 * (v7 - v15));
      v7 = *(v5 + 304);
    }

    *&v6[v14] = v3;
    *(v5 + 304) = v7 + 1;
    v16 = vaddq_s64(*(v5 + 224), vdupq_n_s64(1uLL));
    *(v5 + 224) = v16;
    v17 = *(v5 + 240);
    if (v17 <= v16.i64[0])
    {
      v17 = v16.i64[0];
    }

    *(v5 + 240) = v17;
    v18 = *(a2 + 2);
    *(v3 + 5) = v5;
    *(v3 + 6) = v18;
  }

  return this;
}

uint64_t AG::Subgraph::move_attributes(uint64_t this, AG::Graph *a2, AG::Graph *a3)
{
  v5 = *(this + 16);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_21;
  }

  v6 = 0;
  v7 = AG::data::_shared_table_bytes;
  while (2)
  {
    v8 = v5;
    v9 = v7 + v5;
    v10 = *(v9 + 20);
    if (!*(v9 + 20))
    {
      goto LABEL_18;
    }

    do
    {
      while (1)
      {
        v11 = (v10 + v8);
        if (((v10 + v8) & 3u) > 1)
        {
          if (((v10 + v8) & 3) != 3)
          {
            v13 = 1;
            goto LABEL_17;
          }

          goto LABEL_11;
        }

        if (((v10 + v8) & 3) == 0)
        {
          break;
        }

        v10 = *(AG::data::_shared_table_bytes + (v11 & 0xFFFFFFFC) + 14);
        if ((v11 & 3) == 0)
        {
          v12 = (AG::data::_shared_table_bytes + v11);
          goto LABEL_14;
        }

LABEL_11:
        if (!v10)
        {
          goto LABEL_15;
        }
      }

      v12 = (AG::data::_shared_table_bytes + v11);
      v10 = *(v12 + 2);
      if ((v11 & 3) != 0)
      {
        goto LABEL_11;
      }

LABEL_14:
      this = AG::Graph::intern_type(a3, *(*(a2 + 11) + ((*v12 >> 5) & 0x7FFFFF8)));
      *v12 = *v12 & 0xF00000FF | (this << 8);
      ++v6;
    }

    while (v10);
LABEL_15:
    v13 = 0;
LABEL_17:
    v7 = AG::data::_shared_table_bytes;
    if ((v13 & 1) == 0)
    {
LABEL_18:
      v5 = *(v7 + v8 + 8);
      if (!v5)
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_21:
  *(a2 + 25) -= v6;
  v14 = *(a3 + 25) + v6;
  *(a3 + 25) = v14;
  if (*(a3 + 27) > v14)
  {
    v14 = *(a3 + 27);
  }

  *(a3 + 27) = v14;
  return this;
}

void *AG::Subgraph::move_tree_data(AG::Subgraph *this, const AG::Graph *a2, AG::Graph *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(this + 24);
  if (v6)
  {
    *v26 = 0u;
    v27 = 256;
    LODWORD(__dst[0]) = v6;
    v7 = 1;
    do
    {
      v8 = v26[0];
      if (!v26[0])
      {
        v8 = __dst;
      }

      v9 = *(v8 + --v7);
      v26[1] = v7;
      if (v9)
      {
        do
        {
          v10 = AG::data::_shared_table_bytes + v9;
          v11 = *(AG::data::_shared_table_bytes + v9 + 20);
          if (v11)
          {
            v12 = v26[1];
            v13 = v26[1] + 1;
            if (v27 < v26[1] + 1)
            {
              AG::vector<AG::data::ptr<AG::Node>,256ul,unsigned long>::reserve_slow(__dst, v13);
              v12 = v26[1];
              v13 = v26[1] + 1;
            }

            v14 = v26[0];
            if (!v26[0])
            {
              v14 = __dst;
            }

            *(v14 + v12) = v11;
            v26[1] = v13;
          }

          for (i = *(v10 + 28); i; i = *(v16 + 20))
          {
            v16 = AG::data::_shared_table_bytes + i;
            v17 = AG::Graph::key_name(a2, *(AG::data::_shared_table_bytes + i + 12));
            *(v16 + 12) = AG::Graph::intern_key(a3, v17);
          }

          v9 = *(v10 + 24);
        }

        while (v9);
        v7 = v26[1];
      }
    }

    while (v7);
    if (v26[0])
    {
      free(v26[0]);
    }
  }

  result = *(a2 + 35);
  if (result)
  {
    __dst[0] = this;
    result = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::find<AG::Subgraph *>(result, __dst);
    v19 = result;
    if (result)
    {
      v20 = *(a3 + 35);
      if (!v20)
      {
        operator new();
      }

      v24 = this;
      __dst[0] = &v24;
      v21 = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::__emplace_unique_key_args<AG::Subgraph *,std::piecewise_construct_t const&,std::tuple<AG::Subgraph *&&>,std::tuple<>>(v20, &v24, &std::piecewise_construct, __dst);
      v21[4] = 0;
      v22 = v21[3];
      v21[3] = v19[3];
      v19[3] = v22;
      v21[4] = v19[4];
      v19[4] = 0;
      v23 = v21[5];
      v21[5] = v19[5];
      v19[5] = v23;
      *(v21 + 48) = *(v19 + 48);
      return std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::erase(*(a2 + 35), v19);
    }
  }

  return result;
}

void sub_1B493118C(_Unwind_Exception *a1)
{
  if (STACK[0x410])
  {
    free(STACK[0x410]);
  }

  _Unwind_Resume(a1);
}

uint64_t *AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::resize(uint64_t *result, size_t a2)
{
  v3 = *result;
  if (*result)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFFELL);
    if (*((v3 & 0xFFFFFFFFFFFFFFFELL) + 40) < a2 && v4[6] < a2)
    {
      result = AG::vector<AG::Subgraph *,4ul,unsigned long>::reserve_slow(v4, a2);
    }

    v4[5] = a2;
  }

  else if (a2 == 1)
  {
    if (!v3)
    {
      *result = 2;
    }
  }

  else
  {
    if (a2)
    {
      operator new();
    }

    *result = 0;
  }

  return result;
}

void **std::unique_ptr<std::unordered_map<AG::Subgraph *,AG::Graph::TreeDataElement>>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::~__hash_table(result);

    JUMPOUT(0x1B8C7ACE0);
  }

  return result;
}

uint64_t AG::Subgraph::ancestor_of(AG::Subgraph *this, const AG::Subgraph *a2)
{
  v4 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  v20 = 32;
  while (1)
  {
LABEL_2:
    if (a2)
    {
      v5 = a2;
      goto LABEL_9;
    }

    v6 = v18;
    if (!v4)
    {
      break;
    }

    if (v18)
    {
      v7 = v18;
    }

    else
    {
      v7 = v17;
    }

    v5 = *&v7[8 * v4-- - 8];
    v19 = v4;
LABEL_9:
    if (v5 == this)
    {
      v15 = 1;
      v6 = v18;
      if (!v18)
      {
        return v15;
      }

      goto LABEL_27;
    }

    v8 = *(v5 + 7);
    if (v8)
    {
      a2 = 0;
      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (*((v8 & 0xFFFFFFFFFFFFFFFELL) + 40))
      {
        if (*(v9 + 32))
        {
          v9 = *(v9 + 32);
        }

        a2 = *v9;
        v10 = 1;
        while (1)
        {
          v11 = v8 & 0xFFFFFFFFFFFFFFFELL;
          if (v10 >= *(v11 + 40))
          {
            break;
          }

          if (*(v11 + 32))
          {
            v12 = *(v11 + 32);
          }

          else
          {
            v12 = v11;
          }

          v13 = v4 + 1;
          if (v20 < v4 + 1)
          {
            AG::vector<AG::Subgraph const*,32ul,unsigned long>::reserve_slow(v17, v13);
            v4 = v19;
            v13 = v19 + 1;
          }

          v14 = v18;
          if (!v18)
          {
            v14 = v17;
          }

          *&v14[8 * v4] = *(v12 + 8 * v10);
          v19 = v13;
          ++v10;
          v8 = *(v5 + 7);
          v4 = v13;
          if ((v8 & 1) == 0)
          {
            v4 = v13;
            goto LABEL_2;
          }
        }
      }
    }

    else
    {
      a2 = *(v5 + 7);
    }
  }

  v15 = 0;
  if (v18)
  {
LABEL_27:
    free(v6);
  }

  return v15;
}

void sub_1B493143C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  if (a41)
  {
    free(a41);
  }

  _Unwind_Resume(exception_object);
}

void AG::Graph::without_invalidating::~without_invalidating(AG::Graph **this)
{
  v2 = *this;
  if (v2)
  {
    if ((this[1] & 1) == 0)
    {
      *(v2 + 360) = 0;
      AG::Graph::invalidate_subgraphs(v2);
    }
  }
}

uint64_t AG::Subgraph::set_tree_owner(uint64_t result, const char *a2)
{
  v2 = *(result + 96);
  if (v2)
  {
    v3 = AG::data::_shared_table_bytes + v2;
    if (*(v3 + 16))
    {
      AG::Subgraph::set_tree_owner(result, a2);
    }

    *(v3 + 8) = a2;
  }

  return result;
}

uint64_t AG::Subgraph::begin_tree(AG::data::zone *a1, int a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 24);
  v9 = *(a1 + 4);
  if (v9 && (v10 = AG::data::_shared_table_bytes, v11 = (*(AG::data::_shared_table_bytes + v9 + 16) + 7) & 0xFFFFFFF8, v11 + 32 <= *(AG::data::_shared_table_bytes + v9 + 12)))
  {
    *(AG::data::_shared_table_bytes + v9 + 16) = v11 + 32;
    result = v11 + v9;
  }

  else
  {
    result = AG::data::zone::alloc_slow(a1, 0x20u, 7);
    v10 = AG::data::_shared_table_bytes;
  }

  v13 = v10 + result;
  *v13 = a3;
  *(v13 + 8) = a2;
  *(v13 + 12) = a4;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(a1 + 24) = result;
  v14 = AG::data::_shared_table_bytes;
  v15 = AG::data::_shared_table_bytes + result;
  *(v15 + 16) = v8;
  if (v8)
  {
    v16 = v14 + v8;
    *(v15 + 24) = *(v16 + 20);
    *(v16 + 20) = *(a1 + 24);
  }

  return result;
}

uint64_t AG::Subgraph::add_tree_value(uint64_t result, int a2, uint64_t a3, char *a4, int a5)
{
  v5 = *(result + 96);
  if (v5)
  {
    v9 = result;
    v10 = AG::Graph::intern_key(*(result + 40), a4);
    v11 = AG::data::_shared_table_bytes;
    v12 = AG::data::_shared_table_bytes + v5;
    v13 = v9[4];
    if (v13 && (v14 = (*(AG::data::_shared_table_bytes + v13 + 16) + 7) & 0xFFFFFFF8, v14 + 24 <= *(AG::data::_shared_table_bytes + v13 + 12)))
    {
      *(AG::data::_shared_table_bytes + v13 + 16) = v14 + 24;
      result = v14 + v13;
    }

    else
    {
      result = AG::data::zone::alloc_slow(v9, 0x18u, 7);
      v11 = AG::data::_shared_table_bytes;
    }

    v15 = *(v12 + 28);
    v16 = v11 + result;
    *v16 = a3;
    *(v16 + 8) = a2;
    *(v16 + 12) = v10;
    *(v16 + 16) = a5;
    *(v16 + 20) = v15;
    *(v12 + 28) = result;
  }

  return result;
}

uint64_t AG::Subgraph::end_tree(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    v2 = *(AG::data::_shared_table_bytes + v1 + 16);
    if (v2)
    {
      *(result + 96) = v2;
    }
  }

  return result;
}

uint64_t AG::Subgraph::tree_subgraph_child(uint64_t a1, unsigned int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 40) + 280);
  if (!v3)
  {
    return 0;
  }

  v42[0] = a1;
  v5 = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::find<AG::Subgraph *>(v3, v42);
  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  AG::Graph::TreeDataElement::sort_nodes((v5 + 3));
  v8 = v6[3];
  v7 = v6[4];
  v9 = &v8[2 * v7];
  while (v7)
  {
    v10 = v7 >> 1;
    v11 = &v8[2 * (v7 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v7 += ~(v7 >> 1);
    if (v13 < a2)
    {
      v8 = v12;
    }

    else
    {
      v7 = v10;
    }
  }

  if (v8 == v9)
  {
    return 0;
  }

  v43 = 0;
  v44 = 0;
  v45 = 32;
  v14 = *(a1 + 40);
  v15 = *(v14 + 304);
  if (v15)
  {
    v16 = *(v14 + 296);
    v17 = &v16[v15];
    do
    {
      v18 = *v16;
      if (!*(*v16 + 104))
      {
        v19 = *(v18 + 96);
        if (v19)
        {
          v20 = AG::data::_shared_table_bytes + v19;
          v23 = *(v20 + 8);
          v22 = (v20 + 8);
          v21 = v23;
          if (v23 >= 4)
          {
            if ((v21 & 3) != 0)
            {
              v21 = AG::AttributeID::resolve_slow(v22, 0);
            }

            if ((v21 & 3) == 0)
            {
              v24 = v6[3] + 8 * v6[4];
              v25 = v8;
              if (v8 != v24)
              {
                while (*v25 == a2)
                {
                  if (v25[1] == v21)
                  {
                    v26 = v44;
                    v27 = v44 + 1;
                    if (v45 < v44 + 1)
                    {
                      AG::vector<AG::Subgraph const*,32ul,unsigned long>::reserve_slow(v42, v27);
                      v26 = v44;
                      v27 = v44 + 1;
                    }

                    v28 = v43;
                    if (!v43)
                    {
                      v28 = v42;
                    }

                    v28[v26] = v18;
                    v44 = v27;
                    break;
                  }

                  v25 += 2;
                  if (v25 == v24)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      ++v16;
    }

    while (v16 != v17);
    v32 = v43;
    v31 = v44;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v42;
  }

  v34 = 126 - 2 * __clz(v31);
  if (v31)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,AG::Subgraph::tree_subgraph_child(AG::data::ptr<AG::Graph::TreeElement>)::$_1 &,AG::Subgraph**,false>(v33, &v33[v31], v35, 1);
  v36 = v43;
  if (v43)
  {
    v37 = v43;
  }

  else
  {
    v37 = v42;
  }

  if (!v44)
  {
    v29 = 0;
    if (!v43)
    {
      return v29;
    }

LABEL_47:
    free(v36);
    return v29;
  }

  v38 = 0;
  v39 = AG::data::_shared_table_bytes + 24;
  v40 = 8 * v44;
  do
  {
    v41 = *v37++;
    v29 = *(v41 + 96);
    *(v39 + v29) = v38;
    v38 = v29;
    v40 -= 8;
  }

  while (v40);
  if (v36)
  {
    goto LABEL_47;
  }

  return v29;
}

void sub_1B49318F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  if (a41)
  {
    free(a41);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AG::Subgraph::tree_node_at_index(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a1 + 40) + 280);
  if (v4)
  {
    v19 = a1;
    v7 = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::find<AG::Subgraph *>(v4, &v19);
    if (v7)
    {
      v8 = v7;
      AG::Graph::TreeDataElement::sort_nodes((v7 + 3));
      v9 = v8[3];
      v10 = v8[4];
      v11 = &v9[2 * v10];
      while (v10)
      {
        v12 = v10 >> 1;
        v13 = &v9[2 * (v10 >> 1)];
        v15 = *v13;
        v14 = v13 + 2;
        v10 += ~(v10 >> 1);
        if (v15 < a2)
        {
          v9 = v14;
        }

        else
        {
          v10 = v12;
        }
      }

      if (v9 != v11)
      {
        v16 = &v9[2 * a3];
        v17 = a3 + 1;
        while (*v9 == a2)
        {
          if (!--v17)
          {
            return v16[1];
          }

          v9 += 2;
          if (v9 == v11)
          {
            return 2;
          }
        }
      }
    }
  }

  return 2;
}

uint64_t AG::Subgraph::enumerate_page_attributes(int a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, uint64_t, void, uint64_t), uint64_t a4, util::MemoryReader *this, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  result = util::MemoryReader::read_bytes(this, &v20);
  v13 = v20;
  if (v20)
  {
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = (v14 & 1) == 0;
      v17 = 22;
      if (!v16)
      {
        v17 = 20;
      }

      v18 = *(a2 + v17);
      while (v18)
      {
        v19 = a1 + v18;
        if (((a1 + v18) & 3u) > 1)
        {
          if (((a1 + v18) & 3) != 3)
          {
            break;
          }
        }

        else if (((a1 + v18) & 3) != 0)
        {
          result = util::MemoryReader::read_bytes(this, &v20);
          v18 = v21;
        }

        else
        {
          util::MemoryReader::read_bytes(this, &v20);
          v18 = WORD2(v20);
          result = AG::Graph::enumerate_node(v13, v19, &v20, a6, a3, a4, this);
        }
      }

      v14 = 0;
    }

    while ((v15 & 1) != 0);
  }

  return result;
}

uint64_t (***AG::Subgraph::encode(uint64_t (***this)(void *, void *), AG::Encoder *a2))(void *, void *)
{
  v3 = this;
  v4 = *(this + 6);
  v5 = v4 & 0x7FFFFFFF;
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    AG::Encoder::encode_varint(a2, 8uLL);
    this = AG::Encoder::encode_varint(a2, v5);
  }

  v6 = v3[6];
  if (v6)
  {
    AG::Encoder::encode_varint(a2, 0x10uLL);
    this = AG::Encoder::encode_varint(a2, v6);
  }

  v8 = v3 + 7;
  v7 = v3[7];
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 32))
    {
      v8 = *(v10 + 32);
    }

    else
    {
      v8 = v10;
    }

    v9 = &v8[*(v10 + 40)];
  }

  else
  {
    v9 = &v8[v7 != 0];
  }

  while (v8 != v9)
  {
    v11 = *(*v8 + 6);
    v12 = v11 & 0x7FFFFFFF;
    if ((v11 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(a2, 0x18uLL);
      this = AG::Encoder::encode_varint(a2, v12);
    }

    ++v8;
  }

  v13 = *(v3 + 18);
  if (v13)
  {
    v14 = v3[8];
    v15 = 8 * v13;
    do
    {
      v16 = *((*v14 & 0xFFFFFFFFFFFFFFFCLL) + 24);
      v17 = v16 & 0x7FFFFFFF;
      if ((v16 & 0x7FFFFFFF) != 0)
      {
        AG::Encoder::encode_varint(a2, 0x20uLL);
        this = AG::Encoder::encode_varint(a2, v17);
      }

      ++v14;
      v15 -= 8;
    }

    while (v15);
  }

  if (*(v3 + 104))
  {
    AG::Encoder::encode_varint(a2, 0x28uLL);
    this = AG::Encoder::encode_varint(a2, 1uLL);
  }

  for (i = *(v3 + 4); i; i = *(AG::data::_shared_table_bytes + v19 + 8))
  {
    v19 = i;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = AG::data::_shared_table_bytes + v19;
      if (v21)
      {
        v23 = 20;
      }

      else
      {
        v23 = 22;
      }

      v24 = *(v22 + v23);
      if (*(v22 + v23))
      {
        while (1)
        {
          while (1)
          {
            v25 = (v24 + v19);
            if (((v24 + v19) & 3u) <= 1)
            {
              break;
            }

            if (((v24 + v19) & 3) != 3 || !v24)
            {
              goto LABEL_42;
            }
          }

          v26 = (((v24 + v19) & 3) != 0 ? AG::data::_shared_table_bytes + (v25 & 0xFFFFFFFC) + 14 : AG::data::_shared_table_bytes + v25 + 4);
          v24 = *v26;
          AG::Encoder::encode_varint(a2, 0x32uLL);
          AG::Encoder::begin_length_delimited(a2);
          if (!v25)
          {
            break;
          }

          AG::Encoder::encode_varint(a2, 8uLL);
          AG::Encoder::encode_varint(a2, v25);
          if ((v25 & 3) == 1)
          {
            AG::Encoder::encode_varint(a2, 0x1AuLL);
            AG::Encoder::begin_length_delimited(a2);
            AG::Graph::encode_indirect_node(v3[5], a2, (AG::data::_shared_table_bytes + (v25 & 0xFFFFFFFC)));
            goto LABEL_40;
          }

          if ((v25 & 3) == 0)
          {
            break;
          }

LABEL_41:
          this = AG::Encoder::end_length_delimited(a2);
          if (!v24)
          {
            goto LABEL_42;
          }
        }

        AG::Encoder::encode_varint(a2, 0x12uLL);
        AG::Encoder::begin_length_delimited(a2);
        AG::Graph::encode_node(v3[5], a2, (AG::data::_shared_table_bytes + v25), 0);
LABEL_40:
        AG::Encoder::end_length_delimited(a2);
        goto LABEL_41;
      }

LABEL_42:
      v20 = 0;
    }

    while ((v21 & 1) != 0);
  }

  if (*(v3 + 24))
  {
    AG::Encoder::encode_varint(a2, 0x3AuLL);
    AG::Encoder::begin_length_delimited(a2);
    AG::Graph::encode_tree(v3[5], a2, *(v3 + 24));

    return AG::Encoder::end_length_delimited(a2);
  }

  return this;
}

void AG::data::zone::~zone(void ***this)
{
  AG::data::zone::clear(this);
  v2 = *this;
  if (*(this + 2))
  {
    v3 = 0;
    do
    {
      std::unique_ptr<void,AG::data::table::malloc_zone_deleter>::reset[abi:ne200100](v2, 0);
      ++v3;
      ++v2;
    }

    while (v3 < *(this + 2));
    v2 = *this;
  }

  if (v2)
  {
    free(v2);
  }
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,AG::Subgraph::tree_subgraph_child(AG::data::ptr<AG::Graph::TreeElement>)::$_1 &,AG::Subgraph**,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 88) > *(*v8 + 88))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 88);
      v90 = *(*v8 + 88);
      v91 = *(v87 + 88);
      if (v89 <= v90)
      {
        if (v91 <= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = v8 + 1;
        result = v85;
        if (v91 > v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = v8 + 2;
        result = *v8;
        if (v91 <= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = v8 + 2;
          result = v88;
          if (v91 <= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v140 = *(a2 - 1);
      if (*(v140 + 88) > *(v85 + 88))
      {
        *v86 = v140;
        *(a2 - 1) = v85;
        v141 = *v86;
        v142 = *v84;
        v143 = *(v141 + 88);
        if (v143 > *(v142 + 88))
        {
          v8[1] = v141;
          v8[2] = v142;
          v144 = *v8;
          if (v143 > *(*v8 + 88))
          {
            *v8 = v141;
            v8[1] = v144;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::Subgraph::tree_subgraph_child(AG::data::ptr<AG::Graph::TreeElement>)::$_1 &,AG::Subgraph**,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 88);
            if (v101 > *(v100 + 88))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 <= *(v100 + 88))
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_130;
                }
              }

              v103 = v8;
LABEL_130:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v137 = *v7;
          v136 = v7[1];
          v7 = v94;
          v138 = *(v136 + 88);
          if (v138 > *(v137 + 88))
          {
            v139 = v7;
            do
            {
              *v139 = v137;
              v137 = *(v139 - 2);
              --v139;
            }

            while (v138 > *(v137 + 88));
            *v139 = v136;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 < v9 && *(v109 + 88) > *(v108[1] + 88))
            {
              v109 = v108[1];
              ++v108;
              v107 = 2 * v106 + 2;
            }

            result = &v8[v106];
            v110 = *result;
            v111 = *(*result + 88);
            if (*(v109 + 88) <= v111)
            {
              do
              {
                v112 = v108;
                *result = v109;
                if (v104 < v107)
                {
                  break;
                }

                v113 = (2 * v107) | 1;
                v108 = &v8[v113];
                v114 = 2 * v107 + 2;
                v109 = *v108;
                if (v114 < v9 && *(v109 + 88) > *(v108[1] + 88))
                {
                  v109 = v108[1];
                  ++v108;
                  v113 = v114;
                }

                result = v112;
                v107 = v113;
              }

              while (*(v109 + 88) <= v111);
              *v112 = v110;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v115 = 0;
          v116 = *v8;
          v117 = v8;
          do
          {
            v118 = &v117[v115];
            v119 = v118 + 1;
            v120 = v118[1];
            v121 = (2 * v115) | 1;
            v115 = 2 * v115 + 2;
            if (v115 >= v9)
            {
              v115 = v121;
            }

            else
            {
              v124 = v118[2];
              v122 = v118 + 2;
              v123 = v124;
              result = *(v120 + 88);
              if (result <= *(v124 + 88))
              {
                v115 = v121;
              }

              else
              {
                v120 = v123;
                v119 = v122;
              }
            }

            *v117 = v120;
            v117 = v119;
          }

          while (v115 <= ((v9 - 2) >> 1));
          if (v119 == --a2)
          {
            *v119 = v116;
          }

          else
          {
            *v119 = *a2;
            *a2 = v116;
            v125 = (v119 - v8 + 8) >> 3;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v119;
              v132 = *(*v119 + 88);
              if (*(*v129 + 88) > v132)
              {
                do
                {
                  v133 = v129;
                  *v119 = v130;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                  v119 = v133;
                }

                while (*(*v129 + 88) > v132);
                *v133 = v131;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 88);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 88);
      v17 = *(*v8 + 88);
      if (v16 <= v17)
      {
        if (v13 > v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 88) > *(*v8 + 88))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 > v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 88) > v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 88);
      v29 = *(v27 + 88);
      v30 = *(a2 - 2);
      v31 = *(v30 + 88);
      if (v28 <= v29)
      {
        if (v31 > v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 88) > *(v32 + 88))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 > v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 88) > v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 88);
      v40 = *(v38 + 88);
      v41 = *(a2 - 3);
      v42 = *(v41 + 88);
      if (v39 <= v40)
      {
        if (v42 > v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 88) > *(v43 + 88))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 > v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 88) > v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 88);
      v48 = *(*v25 + 88);
      v49 = *v35;
      v50 = *(*v35 + 88);
      if (v47 <= v48)
      {
        if (v50 <= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 <= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 <= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 <= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 88);
    v21 = *(*v11 + 88);
    if (v20 <= v21)
    {
      if (v13 > v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 88) > *(*v11 + 88))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 > v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 88) > v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 88);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 88) > v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 88) <= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 88) <= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 88) > v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 88) <= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::Subgraph::tree_subgraph_child(AG::data::ptr<AG::Graph::TreeElement>)::$_1 &,AG::Subgraph**>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::Subgraph::tree_subgraph_child(AG::data::ptr<AG::Graph::TreeElement>)::$_1 &,AG::Subgraph**>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,AG::Subgraph::tree_subgraph_child(AG::data::ptr<AG::Graph::TreeElement>)::$_1 &,AG::Subgraph**,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 88);
      if (*(*(v8 - 1) + 88) > v53)
      {
        goto LABEL_60;
      }

      if (v53 <= *(*(a2 - 1) + 88))
      {
        v68 = (v8 + 1);
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v68 += 8;
        }

        while (v53 <= *(*v8 + 88));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 <= *(v67 + 88));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 > *(v70 + 88));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 <= *(v73 + 88));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 > *(v74 + 88));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 88);
  v81 = *(*v8 + 88);
  v82 = *(a2 - 1);
  v83 = *(v82 + 88);
  if (v80 <= v81)
  {
    if (v83 > v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v135 = *v8;
      v134 = v8[1];
      if (*(v134 + 88) > *(*v8 + 88))
      {
        *v8 = v134;
        v8[1] = v135;
      }
    }
  }

  else
  {
    if (v83 <= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v145 = *(a2 - 1);
      if (*(v145 + 88) <= v81)
      {
        return result;
      }

      v8[1] = v145;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::Subgraph::tree_subgraph_child(AG::data::ptr<AG::Graph::TreeElement>)::$_1 &,AG::Subgraph**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 88);
  v8 = *(*result + 88);
  v9 = *a3;
  v10 = *(*a3 + 88);
  if (v7 <= v8)
  {
    if (v10 <= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 88) > *(*result + 88))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 > v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 88) > v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 88) > *(v5 + 88))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 88) > *(*a2 + 88))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 88) > *(*result + 88))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 88) > *(*a4 + 88))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 88) > *(*a3 + 88))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 88) > *(*a2 + 88))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 88) > *(*result + 88))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AG::Subgraph::tree_subgraph_child(AG::data::ptr<AG::Graph::TreeElement>)::$_1 &,AG::Subgraph**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 88);
      v8 = *(*a1 + 88);
      v9 = *(a2 - 1);
      v10 = *(v9 + 88);
      if (v7 <= v8)
      {
        if (v10 > v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 88) > *(*a1 + 88))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 <= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 88) <= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AG::Subgraph::tree_subgraph_child(AG::data::ptr<AG::Graph::TreeElement>)::$_1 &,AG::Subgraph**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 88);
    v26 = *(*a1 + 88);
    v27 = *(v23 + 88);
    if (v25 <= v26)
    {
      if (v27 <= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 <= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 88) > *(v21 + 88))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 88);
          if (v45 > *(v44 + 88))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 > *(*a1 + 88))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 <= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 <= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 88) > *(*a1 + 88))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 88);
  v16 = *(*a1 + 88);
  v17 = *(v11 + 88);
  if (v15 <= v16)
  {
    if (v17 <= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 <= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 <= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 88);
    if (v38 > *(v37 + 88))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 <= *(v37 + 88))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      free(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::~indirect_pointer_vector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v4 = *(v3 + 32);
      if (v4)
      {
        free(v4);
      }

      MEMORY[0x1B8C7ACE0](v3, 0x1080C4034992649);
    }
  }

  return a1;
}

void *AG::vector<AG::Subgraph *,4ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 6) + (*(__dst + 6) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 6) + (*(__dst + 6) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,8ul>(*(__dst + 4), __dst, 4uLL, __dst + 6, v3);
  *(__dst + 4) = result;
  return result;
}

void *std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::__emplace_unique_key_args<AG::Subgraph *,std::piecewise_construct_t const&,std::tuple<AG::Subgraph *&&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
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

void *AG::vector<AG::data::ptr<AG::Node>,256ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 130) + (*(__dst + 130) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 130) + (*(__dst + 130) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,4ul>(*(__dst + 128), __dst, 0x100uLL, __dst + 130, v3);
  *(__dst + 128) = result;
  return result;
}

void AG::LayoutDescriptor::Compare::~Compare(AG::LayoutDescriptor::Compare *this)
{
  v1 = this;
  v2 = *(this + 64);
  if (v2)
  {
    this = *(this + 64);
  }

  if (*(v1 + 65))
  {
    v3 = 0;
    do
    {
      AG::LayoutDescriptor::Compare::Enum::~Enum(this);
      ++v3;
      this = (v4 + 64);
    }

    while (v3 < *(v1 + 65));
    v2 = *(v1 + 64);
  }

  if (v2)
  {
    free(v2);
  }
}

std::string *AG::LayoutDescriptor::print(std::string *a1, AG::LayoutDescriptor *this)
{
  v2 = this;
  v34 = a1;
  v4 = AG::LayoutDescriptor::length(this, this);
  AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(layout #:length %d #:address %p", v4, v2);
  v5 = 3;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v7 = (v2 + 1);
            v6 = *v2;
            if ((v6 - 64) < 0x40)
            {
              std::string::push_back(a1, 10);
              std::string::append(a1, v5, 32);
              AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(skip %u)");
              goto LABEL_4;
            }

            if (*v2 <= 0xCu)
            {
              break;
            }

            if ((v6 - 14) < 9)
            {
              goto LABEL_14;
            }

            if (v6 != 23)
            {
              if (v6 == 13)
              {
                v18 = 0;
                v19 = 0;
                do
                {
                  v20 = *v7;
                  v7 = (v7 + 1);
                  v18 |= (v20 & 0x7F) << v19;
                  v19 += 7;
                }

                while (v20 < 0);
LABEL_14:
                std::string::append(a1, 1uLL, 41);
                std::string::push_back(a1, 10);
                std::string::append(a1, v5 - 2, 32);
                AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(case %d");
                goto LABEL_4;
              }

              goto LABEL_42;
            }

            v5 -= 4;
            std::string::append(a1, 2uLL, 41);
            v2 = (v2 + 1);
          }

          if (*v2 <= 6u)
          {
            break;
          }

          if (*v2 > 9u)
          {
            v12 = v6 - 10;
            goto LABEL_24;
          }

          if (v6 == 7)
          {
            v28 = 0;
            v30 = 0;
            v29 = *(v2 + 1);
            v2 = (v2 + 9);
            do
            {
              v31 = *v2;
              v2 = (v2 + 1);
              v28 |= (v31 & 0x7F) << v30;
              v30 += 7;
            }

            while (v31 < 0);
LABEL_37:
            std::string::push_back(a1, 10);
            std::string::append(a1, v5, 32);
            v32 = "";
            if (v6 == 8)
            {
              v32 = "*";
            }

            AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(nested%s #:size %d #:layout %p)", v32, v28, v29);
          }

          else
          {
            if (v6 == 8)
            {
              v27 = *(v2 + 1);
              LODWORD(v28) = *(v2 + 5);
              v2 = (v2 + 7);
              v29 = &AG::LayoutDescriptor::base_address[v27];
              goto LABEL_37;
            }

            v12 = 0;
            v13 = 0;
            do
            {
              v14 = *v7;
              v7 = (v7 + 1);
              v12 |= (v14 & 0x7F) << v13;
              v13 += 7;
            }

            while (v14 < 0);
LABEL_24:
            v15 = *v7;
            std::string::push_back(a1, 10);
            std::string::append(a1, v5, 32);
            v16 = *(*(v15 - 1) + 64);
            v17 = AG::swift::metadata::name(v15, 0);
            AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(enum #:size %d #:type %s", v16, v17);
            std::string::push_back(a1, 10);
            std::string::append(a1, v5 + 2, 32);
            AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(case %d", v12);
            v5 += 4;
            v2 = (v7 + 1);
          }
        }

        if (*v2 <= 3u)
        {
          break;
        }

        if ((v6 - 5) < 2)
        {
          std::string::push_back(a1, 10);
          std::string::append(a1, v5, 32);
          AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(%s)");
          goto LABEL_4;
        }

        if (v6 == 4)
        {
          v24 = *(v2 + 1);
          v2 = (v2 + 9);
          std::string::push_back(a1, 10);
          std::string::append(a1, v5, 32);
          v25 = *(*(v24 - 1) + 64);
          v26 = AG::swift::metadata::name(v24, 0);
          AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(existential #:size %d #:type %s)", v25, v26);
        }

        else
        {
LABEL_42:
          v2 = (v2 + 1);
          if ((v6 & 0x80) != 0)
          {
            std::string::push_back(a1, 10);
            std::string::append(a1, v5, 32);
            AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(read %u)");
LABEL_4:
            v2 = v7;
          }
        }
      }

      if ((v6 - 1) >= 2)
      {
        break;
      }

      v8 = *(v2 + 1);
      v2 = (v2 + 17);
      std::string::push_back(a1, 10);
      std::string::append(a1, v5, 32);
      if (v6 == 1)
      {
        v9 = "==";
      }

      else
      {
        v9 = "=~";
      }

      v10 = *(*(v8 - 1) + 64);
      v11 = AG::swift::metadata::name(v8, 0);
      AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(%s #:size %d #:type %s)", v9, v10, v11);
    }

    if (v6 != 3)
    {
      break;
    }

    v21 = *(v2 + 1);
    v2 = (v2 + 17);
    std::string::push_back(a1, 10);
    std::string::append(a1, v5, 32);
    v22 = *(*(v21 - 1) + 64);
    v23 = AG::swift::metadata::name(v21, 0);
    AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, "(indirect #:size %d #:type %s)", v22, v23);
  }

  if (*v2)
  {
    goto LABEL_42;
  }

  return AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(&v34, ")\n");
}

std::string *AG::LayoutDescriptor::print(std::string &,unsigned char const*)::$_1::operator()(std::string **a1, char *__format, ...)
{
  va_start(va, __format);
  v6 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x100uLL, __format, va);
  v3 = strlen(__str);
  return std::string::append(*a1, __str, v3);
}

BOOL AG::LayoutDescriptor::Builder::visit_native_object(AG::LayoutDescriptor::Builder *this, const AG::swift::metadata *a2)
{
  v2 = *(this + 3);
  if (v2 == 2)
  {
    v3 = *(this + 4);
    if (v3)
    {
      v4 = (v3 + 16);
    }

    else
    {
      v4 = this + 40;
    }

    v5 = *(this + 2);
    v6 = *(v4 + 1);
    if (*(v4 + 2) < (v6 + 1))
    {
      AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow(v4, (v6 + 1));
      v6 = *(v4 + 1);
    }

    v7 = *v4 + 56 * v6;
    *v7 = v5;
    *(v7 + 8) = 8;
    *(v7 + 16) = 0;
    *(v7 + 48) = 5;
    ++*(v4 + 1);
  }

  return v2 == 2;
}

void AG::LayoutDescriptor::add_type_descriptor_mode(unint64_t a1, int a2)
{
  if (a1)
  {
    {
      AG::LayoutDescriptor::compare_heap_objects();
    }

    v6 = *(v4 + 368);
    v5 = *(v4 + 376);
    v7 = v6;
    if (v5)
    {
      v7 = *(v4 + 368);
      v8 = *(v4 + 376);
      do
      {
        v9 = v8 >> 1;
        v10 = &v7[2 * (v8 >> 1)];
        v12 = *v10;
        v11 = v10 + 2;
        v8 += ~(v8 >> 1);
        if (v12 < a1)
        {
          v7 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
    }

    if (v7 != &v6[2 * v5] && *v7 == a1)
    {
      *(v7 + 2) = a2;
    }

    else
    {
      v13 = *(v4 + 368);
      if (*(v4 + 384) < v5 + 1)
      {
        AG::vector<std::pair<void const*,AGComparisonMode>,0ul,unsigned long>::reserve_slow((v4 + 368), (v5 + 1));
        v13 = *(v4 + 368);
        v5 = *(v4 + 376);
      }

      v14 = v7 - v6;
      if (v5 > v14 >> 4)
      {
        memmove((v13 + v14 + 16), (v13 + v14), 16 * (v5 - (v14 >> 4)));
        v5 = *(v4 + 376);
      }

      v15 = v13 + v14;
      *v15 = a1;
      *(v15 + 8) = a2;
      *(v4 + 376) = v5 + 1;
    }

    os_unfair_lock_unlock((v4 + 364));
  }
}

void AG::LayoutDescriptor::add_type_descriptor_equality(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    {
      AG::LayoutDescriptor::compare_heap_objects();
    }

    v8 = *(v6 + 392);
    v7 = *(v6 + 400);
    v9 = &v8[2 * v7];
    while (v7)
    {
      v10 = v7 >> 1;
      v11 = &v8[2 * (v7 >> 1)];
      v13 = *v11;
      v12 = v11 + 2;
      v7 += ~(v7 >> 1);
      if (v13 < a1)
      {
        v8 = v12;
      }

      else
      {
        v7 = v10;
      }
    }

    if (v8 == v9 || *v8 != a1)
    {
      operator new();
    }

    v14 = v8[1];
    v16 = *v14;
    v15 = v14[1];
    if (v16 != a2 || v15 != a3)
    {
      operator new();
    }

    os_unfair_lock_unlock((v6 + 364));
  }
}

void AG::LayoutDescriptor::Compare::Frame::~Frame(AG::LayoutDescriptor::Compare::Frame *this)
{
  v1 = *this;
  v2 = *(this + 1);
  while (1)
  {
    v3 = *(v1 + 520);
    if (v3 <= v2)
    {
      break;
    }

    v4 = v3 - 1;
    *(v1 + 520) = v4;
    v5 = *(v1 + 512);
    if (!v5)
    {
      v5 = v1;
    }

    AG::LayoutDescriptor::Compare::Enum::~Enum((v5 + (v4 << 6)));
  }
}

void AG::LayoutDescriptor::Builder::EnumItem::~EnumItem(AG::LayoutDescriptor::Builder::EnumItem *this)
{
  v2 = *(this + 3);
  if (*(this + 4))
  {
    v3 = 0;
    do
    {
      v4 = &v2[40 * v3];
      v5 = *(v4 + 2);
      if (*(v4 + 3))
      {
        v6 = 0;
        do
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
          ++v6;
          v5 += 56;
        }

        while (v6 < *(v4 + 3));
        v5 = *(v4 + 2);
      }

      if (v5)
      {
        free(v5);
      }

      ++v3;
    }

    while (v3 < *(this + 4));
    v2 = *(this + 3);
  }

  if (v2)
  {
    free(v2);
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
}

void AG::LayoutDescriptor::Builder::~Builder(AG::LayoutDescriptor::Builder *this)
{
  *this = &unk_1F2CB2378;
  v2 = *(this + 5);
  if (*(this + 6))
  {
    v3 = 0;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
      ++v3;
      v2 += 56;
    }

    while (v3 < *(this + 6));
    v2 = *(this + 5);
  }

  if (v2)
  {
    free(v2);
  }
}

void *AG::vector<AG::LayoutDescriptor::Compare::Enum,8ul,unsigned long>::reserve_slow(size_t *__dst, char *a2)
{
  if (__dst[66] + (__dst[66] >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = (__dst[66] + (__dst[66] >> 1));
  }

  result = AG::details::realloc_vector<unsigned long,64ul>(__dst[64], __dst, 8uLL, __dst + 66, v3);
  __dst[64] = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,64ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, a5 << 6);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(a5 << 6);
    v9 = v8 >> 6;
    if (v8 >> 6 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0xC199B67EuLL);
      if (!v10)
      {
        AG::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, *a4 << 6);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *AG::vector<std::pair<void const*,AGComparisonMode>,0ul,unsigned long>::reserve_slow(void **a1, char *a2)
{
  if (a1[2] + (a1[2] >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1[2] + (a1[2] >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,16ul>(*a1, a1 + 2, v3);
  *a1 = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,16ul>(void *a1, size_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(16 * a3);
    v6 = v5 >> 4;
    if (v5 >> 4 != *a2)
    {
      v7 = malloc_type_realloc(v4, v5, 0x15CB70FBuLL);
      if (!v7)
      {
        AG::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

uint64_t AG::Graph::breadth_first_search(uint64_t a1, unsigned int a2, char a3, uint64_t (*a4)(uint64_t))
{
  v37 = a2;
  memset(v35, 0, sizeof(v35));
  v36 = 1065353216;
  v34 = 0u;
  memset(v33, 0, sizeof(v33));
  if ((a2 & 3) != 0)
  {
    a2 = AG::AttributeID::resolve_slow(&v37, 4);
  }

  v37 = a2;
  if (a2 >= 4)
  {
    std::__hash_table<AG::AttributeID,std::hash<AG::AttributeID>,std::equal_to<AG::AttributeID>,std::allocator<AG::AttributeID>>::__emplace_unique_key_args<AG::AttributeID,AG::AttributeID const&>(v35, &v37, &v37);
    std::deque<AG::AttributeID>::push_back(v33, &v37);
    v6 = *(&v34 + 1);
    if (*(&v34 + 1))
    {
      while (1)
      {
        v7 = *(*(*(&v33[0] + 1) + ((v34 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v34 & 0x3FF));
        *&v34 = v34 + 1;
        *(&v34 + 1) = v6 - 1;
        if (v34 >= 0x800)
        {
          operator delete(**(&v33[0] + 1));
          *(&v33[0] + 1) += 8;
          *&v34 = v34 - 1024;
        }

        v8 = v7 & 3;
        if (v7 & 3) == 0 && (a4(v7))
        {
          v31 = 1;
          goto LABEL_67;
        }

        if ((a3 & 1) == 0)
        {
          goto LABEL_10;
        }

        if ((v7 & 3u) <= 1)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_10;
        }

LABEL_54:
        v6 = *(&v34 + 1);
        if (!*(&v34 + 1))
        {
          goto LABEL_66;
        }
      }

      if ((v7 & 3) != 0)
      {
        v28 = *(AG::data::_shared_table_bytes + (v7 & 0xFFFFFFFC));
        v38 = v28;
        if ((v28 & 3) != 0)
        {
          v28 = AG::AttributeID::resolve_slow(&v38, 4);
        }

        v38 = v28;
        if (!std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v35, &v38))
        {
          if ((a3 & 4) != 0)
          {
            goto LABEL_65;
          }

          v29 = *(AG::data::_shared_table_bytes + (v7 & 0xFFFFFE00));
          if (v29)
          {
            v29 = *(v29 + 48);
          }

          v30 = *(AG::data::_shared_table_bytes + (v38 & 0xFFFFFE00));
          if (v30)
          {
            v30 = *(v30 + 48);
          }

          if (v29 == v30)
          {
LABEL_65:
            std::__hash_table<AG::AttributeID,std::hash<AG::AttributeID>,std::equal_to<AG::AttributeID>,std::allocator<AG::AttributeID>>::__emplace_unique_key_args<AG::AttributeID,AG::AttributeID const&>(v35, &v38, &v38);
            std::deque<AG::AttributeID>::push_back(v33, &v38);
          }
        }
      }

      else
      {
        v15 = *(AG::data::_shared_table_bytes + v7 + 12);
        if (v15 >= 0x20)
        {
          v16 = (AG::data::_shared_table_bytes + *(AG::data::_shared_table_bytes + v7 + 16));
          v17 = 5 * (v15 >> 5);
          do
          {
            v18 = *v16;
            v38 = v18;
            if ((v18 & 3) != 0)
            {
              v18 = AG::AttributeID::resolve_slow(&v38, 4);
            }

            v38 = v18;
            if (!std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v35, &v38))
            {
              if ((a3 & 4) != 0)
              {
                goto LABEL_38;
              }

              v19 = *(AG::data::_shared_table_bytes + (v7 & 0xFFFFFE00));
              if (v19)
              {
                v19 = *(v19 + 48);
              }

              v20 = *(AG::data::_shared_table_bytes + (v38 & 0xFFFFFE00));
              if (v20)
              {
                v20 = *(v20 + 48);
              }

              if (v19 == v20)
              {
LABEL_38:
                std::__hash_table<AG::AttributeID,std::hash<AG::AttributeID>,std::equal_to<AG::AttributeID>,std::allocator<AG::AttributeID>>::__emplace_unique_key_args<AG::AttributeID,AG::AttributeID const&>(v35, &v38, &v38);
                std::deque<AG::AttributeID>::push_back(v33, &v38);
              }
            }

            v16 = (v16 + 5);
            v17 -= 5;
          }

          while (v17);
        }
      }

LABEL_10:
      if ((a3 & 2) != 0)
      {
        if (v8 == 1)
        {
          v21 = AG::data::_shared_table_bytes + (v7 & 0xFFFFFFFC);
          v22 = *(v21 + 20);
          if (v22 >= 0x20)
          {
            v23 = (AG::data::_shared_table_bytes + *(v21 + 24));
            v24 = v7 & 0xFFFFFE00;
            v25 = 4 * (v22 >> 5);
            do
            {
              v38 = *v23;
              if (!std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v35, &v38))
              {
                if ((a3 & 4) != 0)
                {
                  goto LABEL_52;
                }

                v26 = *(AG::data::_shared_table_bytes + (v38 & 0xFFFFFE00));
                if (v26)
                {
                  v26 = *(v26 + 48);
                }

                v27 = *(AG::data::_shared_table_bytes + v24);
                if (v27)
                {
                  v27 = *(v27 + 48);
                }

                if (v26 == v27)
                {
LABEL_52:
                  std::__hash_table<AG::AttributeID,std::hash<AG::AttributeID>,std::equal_to<AG::AttributeID>,std::allocator<AG::AttributeID>>::__emplace_unique_key_args<AG::AttributeID,AG::AttributeID const&>(v35, &v38, &v38);
                  std::deque<AG::AttributeID>::push_back(v33, &v38);
                }
              }

              ++v23;
              v25 -= 4;
            }

            while (v25);
          }
        }

        else if ((v7 & 3) == 0)
        {
          v9 = *(AG::data::_shared_table_bytes + v7 + 20);
          if (v9 >= 0x20)
          {
            v10 = (AG::data::_shared_table_bytes + *(AG::data::_shared_table_bytes + v7 + 24));
            v11 = v7 & 0xFFFFFE00;
            v12 = 4 * (v9 >> 5);
            do
            {
              v38 = *v10;
              if (!std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v35, &v38))
              {
                if ((a3 & 4) != 0)
                {
                  goto LABEL_22;
                }

                v13 = *(AG::data::_shared_table_bytes + (v38 & 0xFFFFFE00));
                if (v13)
                {
                  v13 = *(v13 + 48);
                }

                v14 = *(AG::data::_shared_table_bytes + v11);
                if (v14)
                {
                  v14 = *(v14 + 48);
                }

                if (v13 == v14)
                {
LABEL_22:
                  std::__hash_table<AG::AttributeID,std::hash<AG::AttributeID>,std::equal_to<AG::AttributeID>,std::allocator<AG::AttributeID>>::__emplace_unique_key_args<AG::AttributeID,AG::AttributeID const&>(v35, &v38, &v38);
                  std::deque<AG::AttributeID>::push_back(v33, &v38);
                }
              }

              ++v10;
              v12 -= 4;
            }

            while (v12);
          }
        }
      }

      goto LABEL_54;
    }
  }

LABEL_66:
  v31 = 0;
LABEL_67:
  std::deque<AG::AttributeID>::~deque[abi:ne200100](v33);
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(v35);
  return v31;
}

void sub_1B4934364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::deque<AG::AttributeID>::~deque[abi:ne200100](&a9);
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<AG::AttributeID>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<AG::AttributeID *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<AG::AttributeID *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<AG::AttributeID,std::hash<AG::AttributeID>,std::equal_to<AG::AttributeID>,std::allocator<AG::AttributeID>>::__emplace_unique_key_args<AG::AttributeID,AG::AttributeID const&>(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::deque<AG::AttributeID>::push_back(unint64_t *result, _DWORD *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<AG::AttributeID>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<AG::AttributeID>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<AG::AttributeID *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<AG::AttributeID *>::emplace_back<AG::AttributeID *&>(a1, &v9);
}

void sub_1B49348D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<AG::AttributeID *>::emplace_back<AG::AttributeID *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<AG::AttributeID *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<AG::AttributeID *>::emplace_front<AG::AttributeID *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<AG::AttributeID *>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<AG::AttributeID *>::emplace_back<AG::AttributeID *>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<AG::AttributeID *>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<AG::AttributeID *>::emplace_front<AG::AttributeID *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<AG::AttributeID *>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AG::AttributeID *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AG::Node::update_self(AG::Node *this, AG::Graph *a2, const void *a3)
{
  v3 = *this;
  v4 = *(*(a2 + 11) + ((v3 >> 5) & 0x7FFFFF8));
  v5 = *(*v4 - 8);
  if ((v3 & 0x20) != 0)
  {
    v8 = *(v5 + 24);
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    *this = v3 | 0x20;
  }

  v9 = (this + *(v4 + 44));
  if (*(this + 7))
  {
    v9 = *v9;
  }

  return v7(v9, a3);
}

const __CFString *AG::Graph::encode_node(const __CFString *this, AG::Encoder *a2, const AG::Node *a3, int a4)
{
  v7 = this;
  v31 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  if (v8 >= 0x100)
  {
    v9 = v8 >> 8;
    AG::Encoder::encode_varint(a2, 8uLL);
    this = AG::Encoder::encode_varint(a2, v9);
  }

  if (a4)
  {
    this = *(v7[2].length + ((*a3 >> 5) & 0x7FFFFF8));
    v10 = *(this[1].isa + 4);
    if (v10)
    {
      this = v10();
      if (this)
      {
        v11 = this;
        v32.length = CFStringGetLength(this);
        usedBufLen = 0;
        v32.location = 0;
        this = CFStringGetBytes(v11, v32, 0x8000100u, 0x3Fu, 1u, buffer, 1024, &usedBufLen);
        v12 = usedBufLen;
        if (usedBufLen)
        {
          AG::Encoder::encode_varint(a2, 0x12uLL);
          this = AG::Encoder::encode_data(a2, buffer, v12);
        }
      }
    }
  }

  v13 = AG::data::_shared_table_bytes;
  v14 = *(a3 + 3);
  if (v14 >= 0x20)
  {
    v15 = 5 * (v14 >> 5);
    v16 = (*(a3 + 4) + AG::data::_shared_table_bytes + 4);
    while (1)
    {
      AG::Encoder::encode_varint(a2, 0x1AuLL);
      AG::Encoder::begin_length_delimited(a2);
      v17 = *(v16 - 1);
      if (v17)
      {
        AG::Encoder::encode_varint(a2, 8uLL);
        AG::Encoder::encode_varint(a2, v17);
      }

      v18 = *v16;
      if (*v16)
      {
        AG::Encoder::encode_varint(a2, 0x10uLL);
        AG::Encoder::encode_varint(a2, 1uLL);
        v18 = *v16;
        if ((*v16 & 4) == 0)
        {
LABEL_14:
          if ((v18 & 0x10) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_22;
        }
      }

      else if ((*v16 & 4) == 0)
      {
        goto LABEL_14;
      }

      AG::Encoder::encode_varint(a2, 0x18uLL);
      AG::Encoder::encode_varint(a2, 1uLL);
      v18 = *v16;
      if ((*v16 & 0x10) == 0)
      {
LABEL_15:
        if ((v18 & 0x20) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

LABEL_22:
      AG::Encoder::encode_varint(a2, 0x20uLL);
      AG::Encoder::encode_varint(a2, 1uLL);
      v18 = *v16;
      if ((*v16 & 0x20) != 0)
      {
LABEL_23:
        AG::Encoder::encode_varint(a2, 0x30uLL);
        AG::Encoder::encode_varint(a2, 1uLL);
        if ((*v16 & 8) == 0)
        {
          goto LABEL_18;
        }

LABEL_17:
        AG::Encoder::encode_varint(a2, 0x38uLL);
        AG::Encoder::encode_varint(a2, 1uLL);
        goto LABEL_18;
      }

LABEL_16:
      if ((v18 & 8) != 0)
      {
        goto LABEL_17;
      }

LABEL_18:
      this = AG::Encoder::end_length_delimited(a2);
      v16 += 5;
      v15 -= 5;
      if (!v15)
      {
        v13 = AG::data::_shared_table_bytes;
        break;
      }
    }
  }

  v19 = *(a3 + 5);
  if (v19 >= 0x20)
  {
    v20 = (v13 + *(a3 + 6));
    v21 = 4 * (v19 >> 5);
    do
    {
      v22 = *v20;
      AG::Encoder::encode_varint(a2, 0x22uLL);
      AG::Encoder::begin_length_delimited(a2);
      if (v22)
      {
        AG::Encoder::encode_varint(a2, 8uLL);
        AG::Encoder::encode_varint(a2, v22);
      }

      this = AG::Encoder::end_length_delimited(a2);
      ++v20;
      v21 -= 4;
    }

    while (v21);
  }

  v23 = *a3;
  if (*a3)
  {
    AG::Encoder::encode_varint(a2, 0x28uLL);
    this = AG::Encoder::encode_varint(a2, 1uLL);
    v23 = *a3;
  }

  if ((v23 & 2) != 0)
  {
    AG::Encoder::encode_varint(a2, 0x30uLL);
    this = AG::Encoder::encode_varint(a2, 1uLL);
    v23 = *a3;
  }

  v24 = v23 >> 6;
  if (v23 >> 6)
  {
    AG::Encoder::encode_varint(a2, 0x38uLL);
    this = AG::Encoder::encode_varint(a2, v24);
  }

  v25 = *(a3 + 6);
  if (*(a3 + 6))
  {
    AG::Encoder::encode_varint(a2, 0x40uLL);
    this = AG::Encoder::encode_varint(a2, v25);
  }

  v26 = *a3;
  if ((*a3 & 4) != 0)
  {
    AG::Encoder::encode_varint(a2, 0x48uLL);
    this = AG::Encoder::encode_varint(a2, 1uLL);
    v26 = *a3;
  }

  if ((v26 & 8) != 0)
  {
    AG::Encoder::encode_varint(a2, 0x50uLL);
    this = AG::Encoder::encode_varint(a2, 1uLL);
  }

  if ((*(a3 + 7) & 0x20) != 0)
  {
    AG::Encoder::encode_varint(a2, 0x58uLL);
    this = AG::Encoder::encode_varint(a2, 1uLL);
  }

  v27 = *a3;
  if ((*a3 & 0x10) != 0)
  {
    AG::Encoder::encode_varint(a2, 0x60uLL);
    this = AG::Encoder::encode_varint(a2, 1uLL);
    v27 = *a3;
  }

  if ((v27 & 0x20) != 0)
  {
    AG::Encoder::encode_varint(a2, 0x68uLL);
    this = AG::Encoder::encode_varint(a2, 1uLL);
  }

  v28 = *(a3 + 7);
  if ((v28 & 0x10) != 0)
  {
    AG::Encoder::encode_varint(a2, 0x70uLL);
    this = AG::Encoder::encode_varint(a2, 1uLL);
    v28 = *(a3 + 7);
  }

  if ((v28 & 0x40) != 0)
  {
    AG::Encoder::encode_varint(a2, 0x78uLL);
    return AG::Encoder::encode_varint(a2, 1uLL);
  }

  return this;
}

void *AG::Graph::encode_indirect_node(int a1, uint64_t (***this)(void *, void *), unsigned int *a3)
{
  v5 = *a3;
  if (v5)
  {
    AG::Encoder::encode_varint(this, 8uLL);
    result = AG::Encoder::encode_varint(this, v5);
  }

  v7 = a3[1];
  if (v7)
  {
    AG::Encoder::encode_varint(this, 0x10uLL);
    result = AG::Encoder::encode_varint(this, v7);
  }

  v8 = a3[2];
  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    AG::Encoder::encode_varint(this, 0x18uLL);
    result = AG::Encoder::encode_varint(this, v9);
  }

  v10 = *(a3 + 6);
  if ((v10 + 1) >= 2u)
  {
    AG::Encoder::encode_varint(this, 0x20uLL);
    result = AG::Encoder::encode_varint(this, v10);
  }

  if (a3[2])
  {
    v11 = a3[4];
    if (v11)
    {
      AG::Encoder::encode_varint(this, 0x28uLL);
      result = AG::Encoder::encode_varint(this, v11);
    }

    v12 = a3[5];
    if (v12 >= 0x20)
    {
      v13 = (AG::data::_shared_table_bytes + a3[6]);
      v14 = 4 * (v12 >> 5);
      do
      {
        v15 = *v13;
        AG::Encoder::encode_varint(this, 0x32uLL);
        AG::Encoder::begin_length_delimited(this);
        if (v15)
        {
          AG::Encoder::encode_varint(this, 8uLL);
          AG::Encoder::encode_varint(this, v15);
        }

        result = AG::Encoder::end_length_delimited(this);
        ++v13;
        v14 -= 4;
      }

      while (v14);
    }
  }

  return result;
}

void *AG::Graph::encode_tree(uint64_t a1, uint64_t (***a2)(void *, void *), unsigned int a3)
{
  v6 = (AG::data::_shared_table_bytes + a3);
  v7 = v6[2];
  if (v7 >= 4)
  {
    AG::Encoder::encode_varint(a2, 0x10uLL);
    AG::Encoder::encode_varint(a2, v7);
  }

  v8 = v6[3];
  if (v8)
  {
    AG::Encoder::encode_varint(a2, 0x18uLL);
    AG::Encoder::encode_varint(a2, v8);
  }

  for (i = v6[5]; i; LODWORD(i) = *(AG::data::_shared_table_bytes + i + 24))
  {
    AG::Encoder::encode_varint(a2, 0x22uLL);
    AG::Encoder::begin_length_delimited(a2);
    AG::Graph::encode_tree(a1, a2, i);
    AG::Encoder::end_length_delimited(a2);
  }

  for (j = v6[7]; j; j = v11[5])
  {
    v11 = (AG::data::_shared_table_bytes + j);
    AG::Encoder::encode_varint(a2, 0x2AuLL);
    AG::Encoder::begin_length_delimited(a2);
    v12 = v11[2];
    if (v12 >= 4)
    {
      AG::Encoder::encode_varint(a2, 0x10uLL);
      AG::Encoder::encode_varint(a2, v12);
    }

    v13 = v11[3];
    if (v13)
    {
      AG::Encoder::encode_varint(a2, 0x18uLL);
      AG::Encoder::encode_varint(a2, v13);
    }

    v14 = v11[4];
    if (v14)
    {
      AG::Encoder::encode_varint(a2, 0x20uLL);
      AG::Encoder::encode_varint(a2, v14);
    }

    AG::Encoder::end_length_delimited(a2);
  }

  result = *(a1 + 280);
  if (result)
  {
    v26 = *(AG::data::_shared_table_bytes + (a3 & 0xFFFFFE00));
    result = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::find<AG::Subgraph *>(result, &v26);
    if (result)
    {
      v16 = result;
      result = AG::Graph::TreeDataElement::sort_nodes((result + 3));
      v17 = v16[3];
      v18 = v16[4];
      while (v18)
      {
        v19 = v18 >> 1;
        v20 = &v17[2 * (v18 >> 1)];
        v22 = *v20;
        v21 = v20 + 2;
        v18 += ~(v18 >> 1);
        if (v22 < a3)
        {
          v17 = v21;
        }

        else
        {
          v18 = v19;
        }
      }

      if (v17 && *v17 == a3)
      {
        v23 = v17 + 2;
        do
        {
          v24 = *(v23 - 1);
          if (v24)
          {
            AG::Encoder::encode_varint(a2, 0x30uLL);
            result = AG::Encoder::encode_varint(a2, v24);
          }

          v25 = *v23;
          v23 += 2;
        }

        while (v25 == a3);
      }
    }
  }

  return result;
}

uint64_t AG::Graph::enumerate_node(int a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, void, uint64_t, void, uint64_t), uint64_t a6, util::MemoryReader *this)
{
  v21[1] = *MEMORY[0x1E69E9840];
  util::MemoryReader::read_bytes(this, &v20);
  util::MemoryReader::read_bytes(this, &v19);
  util::MemoryReader::read_bytes(this, v17);
  v13 = *a3;
  if ((*a3 & 0x20) != 0)
  {
    v14 = a4 + a2 + v18;
    if (*(a3 + 7))
    {
      util::MemoryReader::read_bytes(this, v21);
      v14 = v21[0];
      v13 = *a3;
    }
  }

  else
  {
    v14 = 0;
  }

  if ((v13 & 0x10) != 0)
  {
    v15 = a3[2] + a4;
    if ((*(a3 + 7) & 2) != 0)
    {
      util::MemoryReader::read_bytes(this, v21);
      v15 = v21[0];
      v13 = *a3;
    }
  }

  else
  {
    v15 = 0;
  }

  return a5(a6, a2, v13 >> 8, v17[0], v14, v17[1], v15);
}

AG::Graph **AGSubgraphMove(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    AGSubgraphMove_cold_1(a1, a2);
  }

  v3 = AG::Graph::Context::from_cf(a2, a2);

  return AG::Subgraph::move(v2, v3);
}

uint64_t AGSubgraphGetCurrent()
{
  v0 = AG::Subgraph::_current_subgraph_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (v1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t AGSubgraphGetChildCount(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    AGSubgraphMove_cold_1(a1, a2);
  }

  return *(v2 + 72);
}

uint64_t AGSubgraphGetChild(uint64_t a1, const char *a2, _DWORD *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    AGSubgraphMove_cold_1(a1, a2);
  }

  if (*(v3 + 72) <= a2)
  {
    AG::precondition_failure("invalid child index: %u", a2, a3, a2);
  }

  v4 = *(*(v3 + 64) + 8 * a2);
  if (a3)
  {
    *a3 = v4 & 3;
  }

  return *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 32);
}

uint64_t AGSubgraphSetIndex(uint64_t result, const char *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    AGSubgraphMove_cold_1(result, a2);
  }

  *(v2 + 88) = a2;
  return result;
}

uint64_t AGSubgraphGetIndex(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    AGSubgraphMove_cold_1(a1, a2);
  }

  return *(v2 + 88);
}

uint64_t AGSubgraphGetParentCount(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 56);
  if (v2)
  {
    return *((v2 & 0xFFFFFFFFFFFFFFFELL) + 40);
  }

  else
  {
    return v2 != 0;
  }
}

uint64_t AGSubgraphGetParent(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    AGSubgraphMove_cold_1(a1, a2);
  }

  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 40) <= a2)
    {
      goto LABEL_12;
    }

    if (*(v4 + 32))
    {
      v4 = *(v4 + 32);
    }

    v3 = *(v4 + 8 * a2);
  }

  else if (a2 || !v3)
  {
LABEL_12:
    AG::precondition_failure("invalid parent index: %u", a2, a2);
  }

  return *(v3 + 32);
}

uint64_t AGSubgraphIsAncestor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return AG::Subgraph::ancestor_of(v2, v3);
  }
}

void AGSubgraphSetShouldRecordTree()
{
  if (should_record_tree_once != -1)
  {
    AGSubgraphShouldRecordTree_cold_1();
  }

  should_record_tree = 1;
}

uint64_t AGSubgraphSetTreeOwner(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    AGSubgraphMove_cold_1(v3, a2);
  }

  return AG::Subgraph::set_tree_owner(v3, a2);
}

uint64_t AGSubgraphBeginTreeElement(uint64_t result, uint64_t a2, int a3)
{
  v3 = AG::Subgraph::_current_subgraph_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    return AG::Subgraph::begin_tree(v4, result, a2, a3);
  }

  return result;
}

uint64_t AGSubgraphAddTreeValue(uint64_t result, uint64_t a2, char *a3, int a4)
{
  v4 = AG::Subgraph::_current_subgraph_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v5)
  {
    return AG::Subgraph::add_tree_value(v5, result, a2, a3, a4);
  }

  return result;
}

uint64_t AGSubgraphEndTreeElement()
{
  v0 = AG::Subgraph::_current_subgraph_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (v1)
  {
    return AG::Subgraph::end_tree(v1);
  }

  return result;
}

uint64_t AGSubgraphGetTreeRoot(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 96);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t AGTreeElementMakeChildIterator@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(AG::data::_shared_table_bytes + result + 20);
  *a2 = result;
  a2[1] = v2;
  a2[2] = 0;
  return result;
}

uint64_t AGTreeElementGetNextChild2(uint64_t a1, int a2)
{
  result = *(a1 + 8);
  if (result)
  {
    goto LABEL_2;
  }

  if (*(a1 + 16))
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    *(a1 + 16) = 1;
    LODWORD(result) = AG::Subgraph::tree_subgraph_child(*(AG::data::_shared_table_bytes + (*a1 & 0xFFFFFE00)), *a1);
    if (result)
    {
      result = result;
LABEL_2:
      *(a1 + 8) = *(AG::data::_shared_table_bytes + result + 24);
      return result;
    }
  }

  return 0;
}

uint64_t AGTreeElementGetNextValue(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    *(a1 + 8) = *(AG::data::_shared_table_bytes + result + 20);
  }

  return result;
}

uint64_t AGTreeElementGetNextNode(void *a1)
{
  result = AG::Subgraph::tree_node_at_index(*(AG::data::_shared_table_bytes + (*a1 & 0xFFFFFE00)), *a1, a1[1]);
  if (result <= 3)
  {
    return 2;
  }

  ++a1[1];
  return result;
}

void *AG::Graph::ProfileData::json_data(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [v4 setObject:v3 forKeyedSubscript:@"update_count"];
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v4 setObject:v5 forKeyedSubscript:@"change_count"];
  }

  v6 = a2[2];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:AG::absolute_time_to_seconds(v6)];
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v4 setObject:v7 forKeyedSubscript:@"update_total"];
  }

  v8 = a2[3];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:AG::absolute_time_to_seconds(v8)];
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v4 setObject:v9 forKeyedSubscript:@"changed_total"];
  }

  return v4;
}

void *AG::Graph::ProfileData::json_data(uint64_t a1, void *a2, AG::Graph *a3)
{
  v5 = AG::Graph::ProfileData::json_data(a1, a2);
  v6 = v5;
  if (a2[5])
  {
    v14 = v5;
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = v7;
    v9 = a2[5];
    if (v9)
    {
      v10 = (a2[4] + 16);
      v11 = 48 * v9;
      do
      {
        v7 = AG::Graph::ProfileData::json_data(v7, v10);
        if (v7)
        {
          v12 = v7;
          [v7 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:", AG::Graph::key_name(a3, *(v10 - 4))), @"name"}];
          [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", AG::absolute_time_to_seconds(*(v10 - 1))), @"timestamp"}];
          v7 = [v8 addObject:v12];
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
    }

    v6 = v14;
    if (!v14)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v6 setObject:v8 forKeyedSubscript:@"marks"];
  }

  return v6;
}

id AG::Graph::description(AG::Graph *this, NSDictionary *a2, NSDictionary *a3)
{
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"format"];
  v6 = objc_autoreleasePoolPush();
  if ([v5 isEqualToString:@"graph/dict"])
  {
    v8 = AG::Graph::description_graph(this, a2, v7);
LABEL_6:
    v10 = v8;
    goto LABEL_7;
  }

  v9 = [v5 isEqualToString:@"graph/dot"];
  if (this && v9)
  {
    v8 = AG::Graph::description_graph_dot(this, a2);
    goto LABEL_6;
  }

  if ([v5 hasPrefix:@"stack/"])
  {
    if (this || (v13 = AG::Graph::_current_update_key, (v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v13)) != 0) && (this = *(v14 & 0xFFFFFFFFFFFFFFFELL)) != 0)
    {
      if ([v5 isEqualToString:@"stack/text"])
      {
        v8 = AG::Graph::description_stack(this, a2);
        goto LABEL_6;
      }

      v12 = [v5 isEqualToString:@"stack/nodes"];
      if (v12)
      {
        v8 = AG::Graph::description_stack_nodes(v12, a2);
        goto LABEL_6;
      }

      if ([v5 isEqualToString:@"stack/frame"])
      {
        v8 = AG::Graph::description_stack_frame(this, a2);
        goto LABEL_6;
      }
    }
  }

  v10 = 0;
LABEL_7:
  objc_autoreleasePoolPop(v6);

  return v10;
}

void *AG::Graph::description_graph(AG::Graph *this, const AG::Graph *a2, NSDictionary *a3)
{
  v244 = *MEMORY[0x1E69E9840];
  v5 = [(AG::Graph *)a2 objectForKeyedSubscript:@"include-values"];
  if (v5)
  {
    v215 = [v5 BOOLValue];
  }

  else
  {
    v215 = 0;
  }

  v6 = [(AG::Graph *)a2 objectForKeyedSubscript:@"truncation-limit"];
  if (v6)
  {
    v214 = [v6 unsignedLongValue];
  }

  else
  {
    v214 = 1024;
  }

  v7 = 0x1E695D000uLL;
  v213 = [MEMORY[0x1E695DF70] array];
  memset(v235, 0, sizeof(v235));
  v236 = 1065353216;
  v232 = 0;
  v233 = 0;
  v234 = 0;
  if (this)
  {
    v230[0] = *(this + 47);
    if (!std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>(v235, v230))
    {
      v8 = [v213 count];
      [v213 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
      *&v224 = *(this + 47);
      v230[0] = &v224;
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v235, &v224, &std::piecewise_construct, v230)[3] = v8;
      v9 = v233;
      v10 = v233 + 1;
      if (v234 < (v233 + 1))
      {
        AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(&v232, v10);
        v9 = v233;
        v10 = v233 + 1;
      }

      v232[v9] = this;
      v233 = v10;
    }
  }

  v11 = [(AG::Graph *)a2 objectForKeyedSubscript:@"graph_ids"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
      for (i = AG::Graph::_all_graphs; i; i = *i)
      {
        if ([v11 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", *(i + 376))}])
        {
          v230[0] = *(i + 376);
          if (!std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>(v235, v230))
          {
            v13 = [v213 count];
            [v213 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
            *&v224 = *(i + 376);
            v230[0] = &v224;
            std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v235, &v224, &std::piecewise_construct, v230)[3] = v13;
            v14 = v233;
            v15 = v233 + 1;
            if (v234 < (v233 + 1))
            {
              AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(&v232, v15);
              v14 = v233;
              v15 = v233 + 1;
            }

            v232[v14] = i;
            v233 = v15;
          }
        }
      }

      os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
    }
  }

  v16 = [(AG::Graph *)a2 objectForKeyedSubscript:@"all_graphs"];
  if (v16 && [v16 BOOLValue])
  {
    os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
    v17 = AG::Graph::_all_graphs;
    if (AG::Graph::_all_graphs)
    {
      do
      {
        if (v17 != this)
        {
          v230[0] = *(v17 + 47);
          if (!std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>(v235, v230))
          {
            v18 = [v213 count];
            [v213 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
            *&v224 = *(v17 + 47);
            v230[0] = &v224;
            std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v235, &v224, &std::piecewise_construct, v230)[3] = v18;
            v19 = v233;
            v20 = v233 + 1;
            if (v234 < (v233 + 1))
            {
              AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(&v232, v20);
              v19 = v233;
              v20 = v233 + 1;
            }

            v232[v19] = v17;
            v233 = v20;
          }
        }

        v17 = *v17;
      }

      while (v17);
    }

    os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
  }

  v21 = v233;
  while (v233)
  {
    v22 = v232[v21 - 1];
    v233 = v21 - 1;
    v216 = [*(v7 + 3952) array];
    v217 = [*(v7 + 3952) array];
    memset(v230, 0, sizeof(v230));
    v231 = 1065353216;
    v227 = 0;
    v228 = 0;
    v229 = 0;
    v224 = 0u;
    v225 = 0u;
    v226 = 1065353216;
    v218 = v22;
    v23 = *(v22 + 304);
    if (v23)
    {
      v24 = *(v22 + 296);
      v209 = v24 + 8 * v23;
      do
      {
        v25 = *(*v24 + 16);
        if (v25)
        {
          v26 = AG::data::_shared_table_bytes;
          do
          {
            v27 = v25;
            v28 = v26 + v25;
            v29 = *(v28 + 20);
            if (*(v28 + 20))
            {
              do
              {
                v30 = (v29 + v27);
                if (((v29 + v27) & 3u) > 1)
                {
                  if (((v29 + v27) & 3) != 3)
                  {
                    break;
                  }
                }

                else
                {
                  v31 = AG::data::_shared_table_bytes;
                  if (((v29 + v27) & 3) != 0)
                  {
                    v32 = (AG::data::_shared_table_bytes + (v30 & 0xFFFFFFFC) + 14);
                  }

                  else
                  {
                    v32 = (AG::data::_shared_table_bytes + v30 + 4);
                  }

                  v29 = *v32;
                  if ((v30 & 3) == 0)
                  {
                    LODWORD(v238) = v30;
                    v33 = *(&v225 + 1);
                    *&v221 = &v238;
                    v34 = (AG::data::_shared_table_bytes + v30);
                    std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>,std::piecewise_construct_t const&,std::tuple<AG::data::ptr<AG::Node> const&>,std::tuple<>>(&v224, &v238, &std::piecewise_construct, &v221)[3] = v33;
                    LODWORD(v241) = *(v31 + v30) >> 8;
                    v35 = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v230, &v241);
                    if (v35)
                    {
                      v36 = v35[3];
                    }

                    else
                    {
                      v37 = v228;
                      *&v221 = v228;
                      v38 = v228 + 1;
                      if (v229 < (v228 + 1))
                      {
                        AG::vector<AG::data::ptr<AG::Node>,0ul,unsigned long>::reserve_slow(&v227, v38);
                        v37 = v228;
                        v38 = v228 + 1;
                      }

                      *(v227 + v37) = v241;
                      v228 = v38;
                      std::__hash_table<std::__hash_value_type<unsigned int,unsigned long>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned long>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned long>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned long>>>::__emplace_unique_key_args<unsigned int,unsigned int &,unsigned long &>(v230, &v241, &v241, &v221);
                      v36 = v221;
                    }

                    v39 = [MEMORY[0x1E695DF90] dictionary];
                    [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v36), @"type"}];
                    [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v238), @"id"}];
                    v40 = *v34;
                    v41 = *(v218 + 11);
                    v42 = (v40 >> 5) & 0x7FFFFF8;
                    v43 = *(v41 + v42);
                    if ((v40 & 0x20) != 0)
                    {
                      v44 = *(*(v43 + 32) + 24);
                      if (v44)
                      {
                        v45 = (v34 + *(v43 + 44));
                        if (*(v34 + 7))
                        {
                          v45 = *v45;
                        }

                        v46 = v44(*(v41 + v42), v45);
                        if (v46)
                        {
                        }
                      }
                    }

                    if (v215)
                    {
                      if ((*v34 & 0x10) != 0)
                      {
                        v47 = *(*(v43 + 32) + 32);
                        if (v47)
                        {
                          v48 = (AG::data::_shared_table_bytes + v34[2]);
                          if ((*(v34 + 7) & 2) != 0)
                          {
                            v48 = *v48;
                          }

                          v49 = v47(v43, v48);
                          if (v49)
                          {
                          }
                        }
                      }
                    }

                    v50 = *v34 & 3;
                    if ((*v34 & 0xC0) != 0)
                    {
                      v50 = *v34 & 3 | 4;
                    }

                    if ((*v34 >> 1) & 8 | (16 * ((*v34 >> 2) & 1)) & 0xFFFFFF3F | (((*v34 >> 3) & 1) << 6) & 0xFFFFFF7F | v50 & 0xFFFFFF7F | *(v34 + 7) & 0x20 | (((*(v34 + 7) >> 6) & 1) << 7))
                    {
                      [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"flags"}];
                    }

                    v51 = *(v218 + 32);
                    if (v51)
                    {
                      v52 = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v51 + 8, &v238);
                      if (v52)
                      {
                        v53 = AG::Graph::ProfileData::json_data(v52, v52 + 3, v218);
                        if (v53)
                        {
                          [v39 setObject:v53 forKeyedSubscript:@"profile"];
                        }
                      }

                      if (v51[21])
                      {
                        v54 = [MEMORY[0x1E695DF90] dictionary];
                        for (j = v51[20]; j; j = *j)
                        {
                          v56 = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(j + 10, &v238);
                          if (v56)
                          {
                            v57 = AG::Graph::ProfileData::json_data(v56, v56 + 3, v218);
                            if (v57)
                            {
                              [v54 setObject:v57 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", AG::Graph::key_name(v218, *(j + 4)))}];
                            }
                          }
                        }

                        if ([v54 count])
                        {
                          [v39 setObject:v54 forKeyedSubscript:@"events"];
                        }
                      }
                    }

                    [v216 addObject:v39];
                  }
                }
              }

              while (v29);
              v26 = AG::data::_shared_table_bytes;
            }

            v25 = *(v26 + v27 + 8);
          }

          while (v25);
        }

        v24 += 8;
      }

      while (v24 != v209);
      v58 = *(v218 + 76);
      if (v58)
      {
        v59 = *(v218 + 37);
        v207 = v59 + 8 * v58;
        do
        {
          v210 = v59;
          v60 = *(*v59 + 16);
          if (!v60)
          {
            goto LABEL_118;
          }

          v61 = AG::data::_shared_table_bytes;
          do
          {
            v62 = v60;
            v63 = v61 + v60;
            v64 = *(v63 + 20);
            if (!*(v63 + 20))
            {
              goto LABEL_117;
            }

            do
            {
              while (1)
              {
                v65 = (v64 + v62);
                if (((v64 + v62) & 3u) > 1)
                {
                  if (((v64 + v62) & 3) != 3)
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_96;
                }

                v66 = (((v64 + v62) & 3) != 0 ? AG::data::_shared_table_bytes + (v65 & 0xFFFFFFFC) + 14 : AG::data::_shared_table_bytes + v65 + 4);
                v64 = *v66;
                if ((v65 & 3) == 0)
                {
                  break;
                }

LABEL_96:
                if (!v64)
                {
                  goto LABEL_116;
                }
              }

              LODWORD(v241) = v65;
              v67 = AG::data::_shared_table_bytes + v65;
              v68 = *(AG::data::_shared_table_bytes + v65 + 12);
              if (v68 >= 0x20)
              {
                v69 = AG::data::_shared_table_bytes + *(v67 + 16);
                v70 = v69 + 5 * (v68 >> 5);
                do
                {
                  v71 = *v69;
                  v72 = *(v69 + 4);
                  v73 = [MEMORY[0x1E695DF90] dictionary];
                  LODWORD(v221) = v71;
                  v74 = v71 & 3;
                  if ((v71 & 3) != 0)
                  {
                    v71 = AG::AttributeID::resolve_slow(&v221, 0);
                    v75 = v77;
                  }

                  else
                  {
                    v75 = 0;
                  }

                  if ((v71 & 3) == 0)
                  {
                    LODWORD(v238) = v71;
                    *&v221 = &v238;
                    [v73 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::__unordered_map_hasher<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::hash<AG::data::ptr<AG::Node>>, std::equal_to<AG::data::ptr<AG::Node>>, true>, std::__unordered_map_equal<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::equal_to<AG::data::ptr<AG::Node>>, std::hash<AG::data::ptr<AG::Node>>, true>, std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>, std::piecewise_construct_t const&, std::tuple<AG::data::ptr<AG::Node>&&>, std::tuple<>>(&v224, &v238, &std::piecewise_construct, &v221)[3]), @"src"}];
                    *&v221 = &v241;
                    [v73 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::__unordered_map_hasher<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::hash<AG::data::ptr<AG::Node>>, std::equal_to<AG::data::ptr<AG::Node>>, true>, std::__unordered_map_equal<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::equal_to<AG::data::ptr<AG::Node>>, std::hash<AG::data::ptr<AG::Node>>, true>, std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>, std::piecewise_construct_t const&, std::tuple<AG::data::ptr<AG::Node> const&>, std::tuple<>>(&v224, &v241, &std::piecewise_construct, &v221)[3]), @"dst"}];
                    if (v74 == 1)
                    {
                      if (v75)
                      {
                        [v73 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v75), @"offset"}];
                      }

                      v76 = 1;
                    }

                    else
                    {
                      v76 = 0;
                    }

                    if (v76 | (v72 >> 1) & 0x18 | v72 & 4 | (32 * (v72 & 1)) & 0xBF | (((v72 >> 3) & 1) << 6))
                    {
                      [v73 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"flags"}];
                    }

                    [v217 addObject:v73];
                  }

                  v69 += 5;
                }

                while (v69 != v70);
              }

              v7 = 0x1E695D000;
            }

            while (v64);
LABEL_116:
            v61 = AG::data::_shared_table_bytes;
LABEL_117:
            v60 = *(v61 + v62 + 8);
          }

          while (v60);
LABEL_118:
          v59 = v210 + 8;
        }

        while (v210 + 8 != v207);
      }
    }

    v78 = *(v218 + 32);
    if (v78 && *(v218 + 24) >= 2u)
    {
      v79 = 1;
      do
      {
        LODWORD(v238) = v79;
        if (!std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v230, &v238))
        {
          if (std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>((v78 + 104), &v238))
          {
            LODWORD(v241) = v238;
            if (!std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v230, &v241))
            {
              v80 = v228;
              *&v221 = v228;
              v81 = v228 + 1;
              if (v229 < (v228 + 1))
              {
                AG::vector<AG::data::ptr<AG::Node>,0ul,unsigned long>::reserve_slow(&v227, v81);
                v80 = v228;
                v81 = v228 + 1;
              }

              *(v227 + v80) = v241;
              v228 = v81;
              std::__hash_table<std::__hash_value_type<unsigned int,unsigned long>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned long>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned long>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned long>>>::__emplace_unique_key_args<unsigned int,unsigned int &,unsigned long &>(v230, &v241, &v241, &v221);
            }
          }

          else
          {
            for (k = *(v78 + 160); k; k = *k)
            {
              if (std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(k + 15, &v238))
              {
                LODWORD(v241) = v238;
                if (!std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v230, &v241))
                {
                  v83 = v228;
                  *&v221 = v228;
                  v84 = v228 + 1;
                  if (v229 < (v228 + 1))
                  {
                    AG::vector<AG::data::ptr<AG::Node>,0ul,unsigned long>::reserve_slow(&v227, v84);
                    v83 = v228;
                    v84 = v228 + 1;
                  }

                  *(v227 + v83) = v241;
                  v228 = v84;
                  std::__hash_table<std::__hash_value_type<unsigned int,unsigned long>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned long>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned long>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned long>>>::__emplace_unique_key_args<unsigned int,unsigned int &,unsigned long &>(v230, &v241, &v241, &v221);
                }
              }
            }
          }
        }

        ++v79;
      }

      while (v79 < *(v218 + 24));
    }

    v208 = [*(v7 + 3952) array];
    if (v228)
    {
      for (m = 0; m < v228; ++m)
      {
        v86 = [MEMORY[0x1E695DF90] dictionary];
        LODWORD(v221) = *(v227 + m);
        v87 = *(*(v218 + 11) + 8 * v221);
        [v86 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"id"}];
        v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{AG::swift::metadata::name(*v87, 0)}];
        v89 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{AG::swift::metadata::name(*(v87 + 8), 0)}];
        [v86 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(*(*(v87 + 8) - 8) + 64) + *(*(*v87 - 8) + 64)), @"size"}];
        [v86 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", *(v87 + 40)), @"flags"}];
        v90 = *(v218 + 32);
        if (v90)
        {
          v91 = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(v90 + 13, &v221);
          if (v91)
          {
            v92 = AG::Graph::ProfileData::json_data(v91, v91 + 3, v218);
            if (v92)
            {
              [v86 setObject:v92 forKeyedSubscript:@"profile"];
            }
          }

          if (v90[21])
          {
            v93 = [MEMORY[0x1E695DF90] dictionary];
            for (n = v90[20]; n; n = *n)
            {
              v95 = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(n + 15, &v221);
              if (v95)
              {
                v96 = AG::Graph::ProfileData::json_data(v95, v95 + 3, v218);
                if (v96)
                {
                  [v93 setObject:v96 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", AG::Graph::key_name(v218, *(n + 4)))}];
                }
              }
            }

            if ([v93 count])
            {
              [v86 setObject:v93 forKeyedSubscript:@"events"];
            }
          }
        }

        [v208 addObject:v86];
      }
    }

    v206 = [*(v7 + 3952) array];
    v221 = 0u;
    v222 = 0u;
    v223 = 1065353216;
    v97 = v218;
    v98 = *(v218 + 76);
    if (v98)
    {
      v99 = *(v218 + 37);
      v100 = 8 * v98;
      do
      {
        v238 = *v99;
        v101 = *(&v222 + 1);
        v241 = &v238;
        std::__hash_table<std::__hash_value_type<AG::Subgraph const*,unsigned long>,std::__unordered_map_hasher<AG::Subgraph const*,std::__hash_value_type<AG::Subgraph const*,unsigned long>,std::hash<AG::Subgraph const*>,std::equal_to<AG::Subgraph const*>,true>,std::__unordered_map_equal<AG::Subgraph const*,std::__hash_value_type<AG::Subgraph const*,unsigned long>,std::equal_to<AG::Subgraph const*>,std::hash<AG::Subgraph const*>,true>,std::allocator<std::__hash_value_type<AG::Subgraph const*,unsigned long>>>::__emplace_unique_key_args<AG::Subgraph const*,std::piecewise_construct_t const&,std::tuple<AG::Subgraph const* const&>,std::tuple<>>(&v221, &v238, &std::piecewise_construct, &v241)[3] = v101;
        ++v99;
        v100 -= 8;
      }

      while (v100);
      v97 = v218;
      v102 = *(v218 + 76);
      if (v102)
      {
        v103 = *(v218 + 37);
        v204 = &v103[v102];
        do
        {
          v104 = *v103;
          v105 = [MEMORY[0x1E695DF90] dictionary];
          [v105 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", *(v104 + 24) & 0x7FFFFFFF), @"id"}];
          [v105 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v104 + 48)), @"context_id"}];
          if (*(v104 + 104))
          {
            [v105 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"invalid"];
          }

          v211 = v105;
          v106 = [*(v7 + 3952) array];
          v107 = (v104 + 56);
          v108 = *(v104 + 56);
          if (v108)
          {
            v110 = v108 & 0xFFFFFFFFFFFFFFFELL;
            if (*(v110 + 32))
            {
              v107 = *(v110 + 32);
            }

            else
            {
              v107 = v110;
            }

            v109 = &v107[*(v110 + 40)];
          }

          else
          {
            v109 = &v107[v108 != 0];
          }

          while (v107 != v109)
          {
            v111 = *v107;
            v219[0] = *v107;
            v112 = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::find<AG::Subgraph *>(&v221, v219);
            if (v112)
            {
              v113 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v112[3]];
            }

            else
            {
              v238 = @"graph";
              v114 = MEMORY[0x1E696AD98];
              v115 = v111[5];
              v219[0] = *(v115 + 376);
              v116 = std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>(v235, v219);
              if (v116)
              {
                v117 = v116[3];
              }

              else
              {
                v117 = [v213 count];
                [v213 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
                v237 = *(v115 + 376);
                v219[0] = &v237;
                std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v235, &v237, &std::piecewise_construct, v219)[3] = v117;
                v118 = v233;
                v119 = v233 + 1;
                if (v234 < (v233 + 1))
                {
                  AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(&v232, v119);
                  v118 = v233;
                  v119 = v233 + 1;
                }

                v232[v118] = v115;
                v233 = v119;
              }

              v241 = [v114 numberWithUnsignedLong:v117];
              v239 = @"subgraph_id";
              v242 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v111[3] & 0x7FFFFFFF];
              v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v238 count:2];
            }

            [v106 addObject:v113];
            ++v107;
          }

          if ([v106 count] && v106)
          {
            [v211 setObject:v106 forKeyedSubscript:@"parents"];
          }

          v120 = [*(v7 + 3952) array];
          v121 = *(v104 + 72);
          if (v121)
          {
            v122 = *(v104 + 64);
            v123 = 8 * v121;
            do
            {
              v124 = *v122 & 0xFFFFFFFFFFFFFFFCLL;
              v219[0] = v124;
              v125 = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::find<AG::Subgraph *>(&v221, v219);
              if (v125)
              {
                v126 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v125[3]];
              }

              else
              {
                v238 = @"graph";
                v127 = MEMORY[0x1E696AD98];
                v128 = *(v124 + 40);
                v219[0] = *(v128 + 376);
                v129 = std::__hash_table<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,AG::Graph::ProfileTrace::UpdateData>>>::find<unsigned long>(v235, v219);
                if (v129)
                {
                  v130 = v129[3];
                }

                else
                {
                  v130 = [v213 count];
                  [v213 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
                  v237 = *(v128 + 376);
                  v219[0] = &v237;
                  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v235, &v237, &std::piecewise_construct, v219)[3] = v130;
                  v131 = v233;
                  v132 = v233 + 1;
                  if (v234 < (v233 + 1))
                  {
                    AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(&v232, v132);
                    v131 = v233;
                    v132 = v233 + 1;
                  }

                  v232[v131] = v128;
                  v233 = v132;
                }

                v241 = [v127 numberWithUnsignedLong:v130];
                v239 = @"subgraph_id";
                v242 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v124 + 24) & 0x7FFFFFFF];
                v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v238 count:2];
              }

              [v120 addObject:v126];
              ++v122;
              v123 -= 8;
            }

            while (v123);
          }

          if ([v120 count] && v120)
          {
            [v211 setObject:v120 forKeyedSubscript:@"children"];
          }

          v133 = [*(v7 + 3952) array];
          v134 = *(v104 + 16);
          if (v134)
          {
            v135 = AG::data::_shared_table_bytes;
            do
            {
              v136 = v134;
              v137 = v135 + v134;
              v138 = *(v137 + 20);
              if (*(v137 + 20))
              {
                do
                {
                  v139 = (v138 + v136);
                  if (((v138 + v136) & 3u) > 1)
                  {
                    if (((v138 + v136) & 3) != 3)
                    {
                      break;
                    }
                  }

                  else
                  {
                    if (((v138 + v136) & 3) != 0)
                    {
                      v140 = (AG::data::_shared_table_bytes + (v139 & 0xFFFFFFFC) + 14);
                    }

                    else
                    {
                      v140 = (AG::data::_shared_table_bytes + v139 + 4);
                    }

                    v138 = *v140;
                    if ((v139 & 3) == 0)
                    {
                      v141 = *(AG::data::_shared_table_bytes + v139 + 6);
                      LODWORD(v238) = v139;
                      if (std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(&v224, &v238))
                      {
                        v241 = &v238;
                        v142 = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>,std::piecewise_construct_t const&,std::tuple<AG::data::ptr<AG::Node> const&>,std::tuple<>>(&v224, &v238, &std::piecewise_construct, &v241)[3];
                        [v133 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", v142)}];
                        if (v141)
                        {
                          v143 = [objc_msgSend(v216 objectAtIndexedSubscript:{v142), "mutableCopy"}];
                          [v143 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v141), @"subgraph_flags"}];
                          [v216 setObject:v143 atIndexedSubscript:v142];
                        }
                      }
                    }
                  }
                }

                while (v138);
                v135 = AG::data::_shared_table_bytes;
              }

              v134 = *(v135 + v136 + 8);
            }

            while (v134);
          }

          if ([v133 count])
          {
            [v211 setObject:v133 forKeyedSubscript:@"nodes"];
          }

          [v206 addObject:v211];
          ++v103;
          v97 = v218;
        }

        while (v103 != v204);
      }
    }

    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(&v221);
    if (*(v97 + 35))
    {
      v212 = [*(v7 + 3952) array];
      v221 = 0u;
      v222 = 0u;
      v223 = 1065353216;
      v241 = 0;
      v242 = 0;
      v243 = 0;
      v238 = 0;
      v239 = 0;
      v240 = 0;
      v144 = *(v97 + 76);
      if (v144)
      {
        v145 = *(v97 + 37);
        v146 = &v145[v144];
        do
        {
          v237 = *v145;
          v147 = *(v237 + 96);
          v148 = v242;
          if (v147)
          {
            *(AG::data::_shared_table_bytes + v147 + 24) = 0;
            v149 = (v148 + 1);
            if (v243 < v148 + 1)
            {
              AG::vector<AG::data::ptr<AG::Node>,0ul,unsigned long>::reserve_slow(&v241, v149);
              v148 = v242;
              v149 = (v242 + 1);
            }

            *(v241 + v148) = v147;
            v242 = v149;
            v148 = v149;
          }

          while (v148)
          {
            v220 = *(v241 + v148 - 1);
            v242 = v148 - 1;
            if (std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(&v221, &v220))
            {
              v148 = v242;
            }

            else
            {
              v219[0] = v220;
              v219[1] = &v239->isa;
              std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>,std::__unordered_map_hasher<AG::data::ptr<AG::Graph::TreeElement>,std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>,std::hash<AG::data::ptr<AG::Graph::TreeElement>>,std::equal_to<AG::data::ptr<AG::Graph::TreeElement>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Graph::TreeElement>,std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>,std::equal_to<AG::data::ptr<AG::Graph::TreeElement>>,std::hash<AG::data::ptr<AG::Graph::TreeElement>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Graph::TreeElement>,std::pair<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>>(&v221, v219, v219);
              v150 = v239;
              v151 = &v239->isa + 1;
              if (v240 < &v239->isa + 1)
              {
                AG::vector<AG::data::ptr<AG::Node>,0ul,unsigned long>::reserve_slow(&v238, v151);
                v150 = v239;
                v151 = &v239->isa + 1;
              }

              v152 = v220;
              *(&v238->isa + v150) = v220;
              v239 = v151;
              v153 = AG::data::_shared_table_bytes + v152;
              v154 = *(AG::data::_shared_table_bytes + v152 + 20);
              v148 = v242;
              if (v154)
              {
                v155 = (v242 + 1);
                if (v243 < v242 + 1)
                {
                  AG::vector<AG::data::ptr<AG::Node>,0ul,unsigned long>::reserve_slow(&v241, v155);
                  v148 = v242;
                  v154 = *(v153 + 20);
                  v155 = (v242 + 1);
                }

                *(v241 + v148) = v154;
                v242 = v155;
                v148 = v155;
              }

              v156 = *(v153 + 24);
              if (v156)
              {
                v157 = (v148 + 1);
                if (v243 < v148 + 1)
                {
                  AG::vector<AG::data::ptr<AG::Node>,0ul,unsigned long>::reserve_slow(&v241, v157);
                  v148 = v242;
                  v156 = *(v153 + 24);
                  v157 = (v242 + 1);
                }

                *(v241 + v148) = v156;
                v242 = v157;
                v148 = v157;
              }
            }
          }

          v158 = *(v218 + 35);
          v219[0] = &v237;
          v159 = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::__emplace_unique_key_args<AG::Subgraph *,std::piecewise_construct_t const&,std::tuple<AG::Subgraph * const&>,std::tuple<>>(v158, &v237, &std::piecewise_construct, v219);
          AG::Graph::TreeDataElement::sort_nodes((v159 + 3));
          ++v145;
        }

        while (v145 != v146);
        v160 = v238;
        if (v239)
        {
          v205 = v238 + v239;
          while (1)
          {
            isa_low = LODWORD(v160->isa);
            v162 = AG::data::_shared_table_bytes;
            v163 = [MEMORY[0x1E695DF90] dictionary];
            v164 = v162 + isa_low;
            v165 = *(v162 + isa_low + 8);
            v166 = *(v162 + isa_low);
            if (v165 >= 4 && v166 != 0)
            {
              break;
            }

            if (v165 >= 4 && v166 == 0)
            {
              LODWORD(v237) = *(v162 + isa_low + 8);
              v219[0] = &v237;
              [v163 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::__unordered_map_hasher<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::hash<AG::data::ptr<AG::Node>>, std::equal_to<AG::data::ptr<AG::Node>>, true>, std::__unordered_map_equal<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::equal_to<AG::data::ptr<AG::Node>>, std::hash<AG::data::ptr<AG::Node>>, true>, std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>, std::piecewise_construct_t const&, std::tuple<AG::data::ptr<AG::Node>&&>, std::tuple<>>(&v224, &v237, &std::piecewise_construct, v219)[3]), @"creator"}];
              goto LABEL_256;
            }

            if (!*(v164 + 16))
            {
              goto LABEL_247;
            }

LABEL_256:
            if (*(v164 + 12))
            {
              [v163 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"flags"}];
            }

            if (*(v164 + 20))
            {
              v171 = [*(v7 + 3952) array];
              for (ii = *(v164 + 20); ; ii = *(AG::data::_shared_table_bytes + v237 + 24))
              {
                LODWORD(v237) = ii;
                if (!ii)
                {
                  break;
                }

                v219[0] = &v237;
                [v171 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>, unsigned long>, std::__unordered_map_hasher<AG::data::ptr<AG::Graph::TreeElement>, std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>, unsigned long>, std::hash<AG::data::ptr<AG::Graph::TreeElement>>, std::equal_to<AG::data::ptr<AG::Graph::TreeElement>>, true>, std::__unordered_map_equal<AG::data::ptr<AG::Graph::TreeElement>, std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>, unsigned long>, std::equal_to<AG::data::ptr<AG::Graph::TreeElement>>, std::hash<AG::data::ptr<AG::Graph::TreeElement>>, true>, std::allocator<std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>, unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Graph::TreeElement>, std::piecewise_construct_t const&, std::tuple<AG::data::ptr<AG::Graph::TreeElement> const&>, std::tuple<>>(&v221, &v237, &std::piecewise_construct, v219)[3])}];
              }

              [v163 setObject:v171 forKeyedSubscript:@"children"];
            }

            v237 = *(AG::data::_shared_table_bytes + (isa_low & 0xFFFFFE00));
            v173 = *(v218 + 35);
            v219[0] = &v237;
            v174 = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::__emplace_unique_key_args<AG::Subgraph *,std::piecewise_construct_t const&,std::tuple<AG::Subgraph * const&>,std::tuple<>>(v173, &v237, &std::piecewise_construct, v219);
            v176 = v174[3];
            v175 = v174[4];
            while (v175)
            {
              v177 = v175 >> 1;
              v178 = &v176[2 * (v175 >> 1)];
              v180 = *v178;
              v179 = v178 + 2;
              v175 += ~(v175 >> 1);
              if (v180 < isa_low)
              {
                v176 = v179;
              }

              else
              {
                v175 = v177;
              }
            }

            if (v176 && *v176 == isa_low)
            {
              v181 = [*(v7 + 3952) array];
              if (*v176 == isa_low)
              {
                v182 = v176 + 1;
                do
                {
                  v219[0] = v182;
                  [v181 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::__unordered_map_hasher<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::hash<AG::data::ptr<AG::Node>>, std::equal_to<AG::data::ptr<AG::Node>>, true>, std::__unordered_map_equal<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::equal_to<AG::data::ptr<AG::Node>>, std::hash<AG::data::ptr<AG::Node>>, true>, std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>, std::piecewise_construct_t const&, std::tuple<AG::data::ptr<AG::Node> const&>, std::tuple<>>(&v224, v182, &std::piecewise_construct, v219)[3])}];
                  v183 = v182[1];
                  v182 += 2;
                }

                while (v183 == isa_low);
              }

              [v163 setObject:v181 forKeyedSubscript:@"nodes"];
            }

            v184 = *(v164 + 28);
            if (v184)
            {
              v185 = [MEMORY[0x1E695DF90] dictionary];
              v186 = v160;
              do
              {
                v187 = AG::data::_shared_table_bytes + v184;
                v188 = *(AG::data::_shared_table_bytes + v184 + 8);
                if ((v188 & 3) != 0)
                {
                  v188 = AG::AttributeID::resolve_slow((AG::data::_shared_table_bytes + v184 + 8), 0);
                  v189 = v191;
                }

                else
                {
                  v189 = 0;
                }

                if ((v188 & 3) == 0)
                {
                  v190 = [MEMORY[0x1E695DF90] dictionary];
                  v220 = v188;
                  v219[0] = &v220;
                  [v190 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::__unordered_map_hasher<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::hash<AG::data::ptr<AG::Node>>, std::equal_to<AG::data::ptr<AG::Node>>, true>, std::__unordered_map_equal<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::equal_to<AG::data::ptr<AG::Node>>, std::hash<AG::data::ptr<AG::Node>>, true>, std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>, std::piecewise_construct_t const&, std::tuple<AG::data::ptr<AG::Node>&&>, std::tuple<>>(&v224, &v220, &std::piecewise_construct, v219)[3]), @"node"}];
                  if (v189)
                  {
                    [v190 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v189), @"offset"}];
                  }

                  [v185 setObject:v190 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", AG::Graph::key_name(v218, *(v187 + 12)))}];
                }

                v184 = *(v187 + 20);
              }

              while (v184);
              [v163 setObject:v185 forKeyedSubscript:@"values"];
              v160 = v186;
            }

            [v212 addObject:v163];
            v160 = (v160 + 4);
            if (v160 == v205)
            {
              v160 = v238;
              goto LABEL_289;
            }
          }

          if ((v165 & 3) != 0)
          {
            v165 = AG::AttributeID::resolve_slow((v162 + isa_low + 8), 8);
            v169 = v192;
          }

          else
          {
            v169 = 0;
          }

          if ((v165 & 3) == 0)
          {
            LODWORD(v237) = v165;
            v219[0] = &v237;
            [v163 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::__unordered_map_hasher<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::hash<AG::data::ptr<AG::Node>>, std::equal_to<AG::data::ptr<AG::Node>>, true>, std::__unordered_map_equal<AG::data::ptr<AG::Node>, std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>, std::equal_to<AG::data::ptr<AG::Node>>, std::hash<AG::data::ptr<AG::Node>>, true>, std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>, unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>, std::piecewise_construct_t const&, std::tuple<AG::data::ptr<AG::Node>&&>, std::tuple<>>(&v224, &v237, &std::piecewise_construct, v219)[3]), @"node"}];
            if (v169)
            {
              [v163 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v169 - 1), @"offset"}];
            }
          }

          v170 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{AG::swift::metadata::name(*v164, 0)}];
          if (*(v164 + 16))
          {
            goto LABEL_256;
          }

LABEL_247:
          [v163 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"root"];
          goto LABEL_256;
        }

LABEL_289:
        v97 = v218;
        if (v160)
        {
          free(v160);
        }
      }

      if (v241)
      {
        free(v241);
      }

      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(&v221);
    }

    else
    {
      v212 = 0;
    }

    v193 = [MEMORY[0x1E695DF90] dictionary];
    [v193 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v97 + 47)), @"id"}];
    [v193 setObject:v208 forKeyedSubscript:@"types"];
    [v193 setObject:v216 forKeyedSubscript:@"nodes"];
    [v193 setObject:v217 forKeyedSubscript:@"edges"];
    [v193 setObject:v206 forKeyedSubscript:@"subgraphs"];
    if (v212)
    {
      [v193 setObject:v212 forKeyedSubscript:@"trees"];
    }

    v194 = [v193 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v97 + 49)), @"transaction_count"}];
    v195 = *(v97 + 32);
    if (v195)
    {
      v196 = AG::Graph::ProfileData::json_data(v194, v195 + 1, v97);
      if (v196)
      {
        [v193 addEntriesFromDictionary:v196];
      }

      if (v195[21])
      {
        v197 = [MEMORY[0x1E695DF90] dictionary];
        v198 = v197;
        for (jj = v195[20]; jj; jj = *jj)
        {
          v197 = AG::Graph::ProfileData::json_data(v197, jj + 3, v218);
          if (v197)
          {
            v197 = [v198 setObject:v197 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", AG::Graph::key_name(v218, *(jj + 4)))}];
          }
        }

        if ([v198 count])
        {
          [v193 setObject:v198 forKeyedSubscript:@"events"];
        }
      }
    }

    else
    {
      [v193 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v97 + 50)), @"update_count"}];
      [v193 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 52)), @"change_count"}];
    }

    v200 = [MEMORY[0x1E695DF90] dictionary];
    [v200 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 25)), @"nodes"}];
    [v200 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 27)), @"max_nodes"}];
    [v200 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 26)), @"created_nodes"}];
    [v200 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 28)), @"subgraphs"}];
    [v200 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 30)), @"max_subgraphs"}];
    [v200 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 29)), @"created_subgraphs"}];
    [v200 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 49)), @"transactions"}];
    [v200 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 50)), @"updates"}];
    [v200 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", *(v218 + 52)), @"changes"}];
    [v193 setObject:v200 forKeyedSubscript:@"counters"];
    v241 = *(v218 + 47);
    *&v221 = &v241;
    [v213 setObject:v193 atIndexedSubscript:{std::__hash_table<std::__hash_value_type<unsigned long, unsigned long>, std::__unordered_map_hasher<unsigned long, std::__hash_value_type<unsigned long, unsigned long>, std::hash<unsigned long>, std::equal_to<unsigned long>, true>, std::__unordered_map_equal<unsigned long, std::__hash_value_type<unsigned long, unsigned long>, std::equal_to<unsigned long>, std::hash<unsigned long>, true>, std::allocator<std::__hash_value_type<unsigned long, unsigned long>>>::__emplace_unique_key_args<unsigned long, std::piecewise_construct_t const&, std::tuple<unsigned long &&>, std::tuple<>>(v235, &v241, &std::piecewise_construct, &v221)[3]}];
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(&v224);
    if (v227)
    {
      free(v227);
    }

    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(v230);
    v21 = v233;
  }

  v201 = [MEMORY[0x1E695DF90] dictionary];
  [v201 setObject:&unk_1F2CB42D0 forKeyedSubscript:@"version"];
  [v201 setObject:v213 forKeyedSubscript:@"graphs"];
  v202 = [MEMORY[0x1E695DF90] dictionary];
  [v202 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", dword_1ED56D74C), @"bytes"}];
  [v202 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", dword_1ED56D750), @"max_bytes"}];
  [v201 setObject:v202 forKeyedSubscript:@"counters"];
  if (v232)
  {
    free(v232);
  }

  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(v235);
  return v201;
}

void sub_1B4938008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  v38 = *(v36 - 152);
  if (v38)
  {
    free(v38);
  }

  v39 = *(v36 - 128);
  if (v39)
  {
    free(v39);
  }

  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(&a23);
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(&a29);
  if (a34)
  {
    free(a34);
  }

  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(va);
  v40 = *(v36 - 232);
  if (v40)
  {
    free(v40);
  }

  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(v36 - 208);
  _Unwind_Resume(a1);
}

void *AG::Graph::description_graph_dot(AG::Graph *this, NSDictionary *a2)
{
  v4 = [(NSDictionary *)a2 objectForKeyedSubscript:@"include-values"];
  if (v4)
  {
    v64 = [v4 BOOLValue];
  }

  else
  {
    v64 = 0;
  }

  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"attribute-ids"];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSDictionary *)a2 objectForKeyedSubscript:@"truncation-limit"];
  if (v8)
  {
    v63 = [v8 unsignedLongValue];
  }

  else
  {
    v63 = 40;
  }

  v9 = [MEMORY[0x1E696AD60] string];
  [v9 appendString:@"digraph {\n"];
  v67 = 0u;
  v68 = 0u;
  v69 = 1065353216;
  v10 = *(this + 76);
  if (!v10)
  {
    goto LABEL_103;
  }

  v65 = this;
  v11 = *(this + 37);
  v61 = v11 + 8 * v10;
  do
  {
    v62 = v11;
    v12 = *(*v11 + 16);
    if (!v12)
    {
      goto LABEL_93;
    }

    v13 = AG::data::_shared_table_bytes;
    do
    {
      v66 = v12;
      v14 = v13 + v12;
      v15 = *(v14 + 20);
      if (!*(v14 + 20))
      {
        goto LABEL_92;
      }

      do
      {
        v16 = (v15 + v66);
        if (((v15 + v66) & 3u) <= 1)
        {
          v17 = AG::data::_shared_table_bytes;
          if (((v15 + v66) & 3) != 0)
          {
            v18 = (AG::data::_shared_table_bytes + (v16 & 0xFFFFFFFC) + 14);
          }

          else
          {
            v18 = (AG::data::_shared_table_bytes + v16 + 4);
          }

          v15 = *v18;
          if ((v16 & 3) != 0)
          {
            continue;
          }

          v72[0] = v16;
          if (v7)
          {
            if (![v7 containsIndex:v16])
            {
              continue;
            }
          }

          [v9 appendFormat:@"  _%d[label=%d", v16, v16];
          v19 = (v17 + v16);
          v20 = *v19;
          v21 = *(v65 + 11);
          v22 = (v20 >> 5) & 0x7FFFFF8;
          v23 = *(v21 + v22);
          if ((v20 & 0x20) != 0)
          {
            v24 = *(*(v23 + 32) + 24);
            if (v24)
            {
              v25 = (v19 + *(v23 + 44));
              if (*(v19 + 7))
              {
                v25 = *v25;
              }

              v26 = v24(*(v21 + v22), v25);
              if (v26)
              {
                [v9 appendString:@": "];
              }
            }
          }

          if (v64)
          {
            if ((*v19 & 0x10) != 0)
            {
              v27 = *(*(v23 + 32) + 32);
              if (v27)
              {
                v28 = (AG::data::_shared_table_bytes + v19[2]);
                if ((*(v19 + 7) & 2) != 0)
                {
                  v28 = *v28;
                }

                v29 = v27(v23, v28);
                if (v29)
                {
                  [v9 appendString:@" → "];
                }
              }
            }
          }

          v30 = *(v65 + 32);
          v31 = 0.0;
          if (v30)
          {
            v32 = std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>((v30 + 64), v72);
            if (v32)
            {
              v33 = v32[3];
              if (v33)
              {
                v34 = v33;
                v35 = v32[5];
                v36 = *(*(v65 + 32) + 24);
                v37 = AG::absolute_time_to_seconds((v35 / v33));
                v31 = v35 / v36 * 100.0;
                [v9 appendFormat:@"\\n%.2g%%: %g × %.2fμs", *&v31, *&v34, v37 * 1000000.0];
              }
            }
          }

          [v9 appendString:@""];
          v38 = *v19;
          v39 = @" fillcolor=cyan";
          if ((*v19 & 0xC0) != 0 || (v39 = @" fillcolor=orangered", v31 > 10.0) || (v39 = @" fillcolor=orange", v31 > 5.0) || (v39 = @" fillcolor=yellow", v31 > 1.0))
          {
            [v9 appendString:v39];
            v38 = *v19;
            v40 = 1;
          }

          else
          {
            v40 = 0;
          }

          v41 = @" style=dashed%s";
          if ((v38 & 0x10) != 0)
          {
            if (v19[3] >= 0x20 && v19[5] > 0x1F)
            {
              if (v40)
              {
                [v9 appendFormat:@" style=filled"];
              }

              goto LABEL_57;
            }

            v41 = @" style=bold%s";
          }

          v42 = "";
          if (v40)
          {
            v42 = ",filled";
          }

          [v9 appendFormat:v41, v42];
LABEL_57:
          if (*v19)
          {
            [v9 appendString:@" color=red"];
          }

          [v9 appendString:@"];\n"];
          v43 = v19[3];
          if (v43 >= 0x20)
          {
            v44 = AG::data::_shared_table_bytes + v19[4];
            v45 = v44 + 5 * (v43 >> 5);
            do
            {
              v47 = *(v44 + 4);
              v71 = *v44;
              v46 = v71;
              v48 = v71;
              v49 = v71 & 3;
              if ((v71 & 3) != 0)
              {
                v48 = AG::AttributeID::resolve_slow(&v71, 0);
              }

              if ((v48 & 3) == 0 && (!v7 || [v7 containsIndex:v48]))
              {
                v71 = v46;
                if (v49)
                {
                  v46 = AG::AttributeID::resolve_slow(&v71, 4);
                  v50 = v53;
                }

                else
                {
                  v50 = 0;
                }

                [v9 appendFormat:@"  _%d -> _%d[", v46 & 0xFFFFFFFC, v72[0]];
                while ((v46 & 3) == 1)
                {
                  v71 = v46 & 0xFFFFFFFC;
                  if (!std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,AG::Graph::ProfileData::Item>>>::find<AG::data::ptr<AG::Node>>(&v67, &v71))
                  {
                    std::__hash_table<AG::data::ptr<AG::IndirectNode>,std::hash<AG::data::ptr<AG::IndirectNode>>,std::equal_to<AG::data::ptr<AG::IndirectNode>>,std::allocator<AG::data::ptr<AG::IndirectNode>>>::__emplace_unique_key_args<AG::data::ptr<AG::IndirectNode>,AG::data::ptr<AG::IndirectNode> const&>(&v67, &v71, &v71);
                  }

                  v70 = *(AG::data::_shared_table_bytes + v71);
                  if ((v70 & 3) == 0)
                  {
                    break;
                  }

                  v46 = AG::AttributeID::resolve_slow(&v70, 4);
                }

                if ((v47 & 0x10) != 0)
                {
                  [v9 appendString:@" color=red"];
                }

                v51 = *(AG::data::_shared_table_bytes + (v48 & 0xFFFFFE00));
                if (v51)
                {
                  v51 = *(v51 + 48);
                }

                v52 = *(AG::data::_shared_table_bytes + (v72[0] & 0xFFFFFE00));
                if (v52)
                {
                  v52 = *(v52 + 48);
                }

                if (v51 != v52)
                {
                  [v9 appendString:@" penwidth=2"];
                }

                if (v49 == 1)
                {
                  [v9 appendFormat:@" label=@%d", v50];
                }

                [v9 appendString:@"];\n"];
              }

              v44 += 5;
            }

            while (v44 != v45);
          }

          continue;
        }

        if (((v15 + v66) & 3) != 3)
        {
          break;
        }
      }

      while (v15);
      v13 = AG::data::_shared_table_bytes;
LABEL_92:
      v12 = *(v13 + v66 + 8);
    }

    while (v12);
LABEL_93:
    v11 = v62 + 8;
  }

  while (v62 + 8 != v61);
  for (i = v68; i; i = *i)
  {
    v55 = *(i + 4);
    v56 = AG::data::_shared_table_bytes;
    [v9 appendFormat:@"  _%d[label=%d shape=box];\n", v55, v55];
    v57 = v56 + v55;
    v58 = *v57;
    v72[0] = v58;
    if ((v58 & 3) != 0)
    {
      v58 = AG::AttributeID::resolve_slow(v72, 4);
    }

    else
    {
      v59 = 0;
    }

    [v9 appendFormat:@"  _%d -> _%d[label=@%d];\n", v58 & 0xFFFFFFFC, v55, v59];
    if ((*(v57 + 8) & 1) != 0 && *(v57 + 16))
    {
      [v9 appendFormat:@"  _%d -> _%d[color=blue];\n", *(v57 + 16), v55];
    }
  }

LABEL_103:
  [v9 appendString:@"}\n"];
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(&v67);
  return v9;
}

void sub_1B49388B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *AG::Graph::description_stack(AG::Graph *this, NSDictionary *a2)
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(NSDictionary *)a2 objectForKeyedSubscript:@"max-frames"];
  if (v4)
  {
    v5 = [v4 unsignedIntValue];
  }

  else
  {
    v5 = -1;
  }

  v35 = v5;
  v6 = AG::Graph::_current_update_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v7)
  {
    v8 = 0;
    v9 = &AG::data::_shared_table_bytes;
    v10 = @"    %u";
    v11 = @"\n";
    do
    {
      v12 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v36 = v12 + 32;
      v37 = v12;
      v13 = *(v12 + 104);
      while (v13)
      {
        v14 = v13 - 1;
        v15 = *(v37 + 96);
        if (!v15)
        {
          v15 = v36;
        }

        v38 = v14;
        v16 = *(v15 + 8 * v14);
        v17 = (*v9 + v16);
        v18 = *(*(this + 11) + ((*v17 >> 5) & 0x7FFFFF8));
        v19 = AG::swift::metadata::name(*v18, 0);
        [v3 appendFormat:@"  #%d: %u %s -> %s\n", v8, v16, v19, AG::swift::metadata::name(v18[1], 0)];
        if (v8 || v17[3] < 0x20)
        {
          goto LABEL_14;
        }

        [v3 appendString:@"  -- inputs:\n"];
        v20 = v17[3];
        if (v20 >= 0x20)
        {
          v21 = (*v9 + v17[4]);
          v22 = (v21 + 5 * (v20 >> 5));
          do
          {
            v23 = *v21;
            v24 = *(v21 + 4);
            v40 = v23;
            if ((v23 & 3) != 0)
            {
              v31 = AG::AttributeID::resolve_slow(&v40, 8);
              LODWORD(v23) = v31;
              v33 = v32;
              [v3 appendFormat:v10, v31];
              if (v33)
              {
                [v3 appendFormat:@"[@%d]", (v33 - 1)];
              }
            }

            else
            {
              [v3 appendFormat:v10, v23];
            }

            if ((v23 & 3) != 0)
            {
              if ((v24 & 0x10) == 0)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v25 = v11;
              v26 = v10;
              v27 = v9;
              v28 = *(*(this + 11) + ((*(*v9 + v23) >> 5) & 0x7FFFFF8));
              v29 = AG::swift::metadata::name(*v28, 0);
              v30 = v28[1];
              v9 = v27;
              v10 = v26;
              v11 = v25;
              [v3 appendFormat:@" %s -> %s", v29, AG::swift::metadata::name(v30, 0)];
              if ((v24 & 0x10) == 0)
              {
LABEL_21:
                if ((v24 & 4) != 0)
                {
                  goto LABEL_28;
                }

                goto LABEL_22;
              }
            }

            [v3 appendString:{@", changed"}];
            if ((v24 & 4) != 0)
            {
LABEL_28:
              [v3 appendString:{@", always-enabled"}];
              if ((v24 & 1) == 0)
              {
                goto LABEL_24;
              }

LABEL_23:
              [v3 appendString:{@", unprefetched"}];
              goto LABEL_24;
            }

LABEL_22:
            if (v24)
            {
              goto LABEL_23;
            }

LABEL_24:
            [v3 appendString:v11];
            v21 = (v21 + 5);
          }

          while (v21 != v22);
        }

        [v3 appendString:@"  --\n"];
LABEL_14:
        ++v8;
        v13 = v38;
        if (v8 >= v35)
        {
          return v3;
        }
      }

      v7 = *(v37 + 16);
    }

    while (v7);
  }

  return v3;
}

void *AG::Graph::description_stack_nodes(AG::Graph *this, NSDictionary *a2)
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(NSDictionary *)a2 objectForKeyedSubscript:@"max-frames"];
  if (v4)
  {
    v5 = [v4 unsignedIntValue];
  }

  else
  {
    v5 = -1;
  }

  v6 = AG::Graph::_current_update_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v10 = (v7 & 0xFFFFFFFFFFFFFFFELL) + 32;
      v11 = *((v7 & 0xFFFFFFFFFFFFFFFELL) + 104);
      v12 = 8 * v11 - 8;
      while (v11)
      {
        --v11;
        v13 = *(v9 + 96);
        if (!v13)
        {
          v13 = v10;
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(v13 + v12))}];
        ++v8;
        v12 -= 8;
        if (v8 >= v5)
        {
          return v3;
        }
      }

      v7 = *(v9 + 16);
    }

    while (v7);
  }

  return v3;
}

void *AG::Graph::description_stack_frame(AG::Graph *this, NSDictionary *a2)
{
  v3 = [(NSDictionary *)a2 objectForKeyedSubscript:@"frame_index"];
  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = -1;
  }

  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"frame_node"];
  if (v5)
  {
    LODWORD(v5) = [v5 unsignedIntValue];
  }

  v6 = AG::Graph::_current_update_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (!v7)
  {
    return MEMORY[0x1E695E0F8];
  }

  v8 = MEMORY[0x1E695E0F8];
  while (1)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFFFFELL);
    v10 = v9[13];
    if (v10)
    {
      break;
    }

LABEL_15:
    v7 = v9[2];
    if (!v7)
    {
      return v8;
    }
  }

  v11 = 0;
  v12 = v9 + 4;
  if (v9[12])
  {
    v12 = v9[12];
  }

  v13 = &v12[v10 - 1];
  while (v4 != v11)
  {
    if (*v13 == v5)
    {
      v4 = v11;
      break;
    }

    ++v11;
    v13 -= 2;
    if (v10 == v11)
    {
      goto LABEL_15;
    }
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v4), @"index"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", *v13), @"node-id"}];
  v14 = (AG::data::_shared_table_bytes + *v13);
  v15 = *(*(this + 11) + ((*v14 >> 5) & 0x7FFFFF8));
  AGSetTypeForKey(v8, @"self-type", *v15);
  AGSetTypeForKey(v8, @"value-type", v15[1]);
  if (v14[3] >= 0x20)
  {
    v16 = [MEMORY[0x1E695DF70] array];
    v17 = v14[3];
    if (v17 < 0x20)
    {
LABEL_21:
      [v8 setObject:v16 forKeyedSubscript:@"inputs"];
      return v8;
    }

    v19 = (AG::data::_shared_table_bytes + v14[4]);
    v20 = (v19 + 5 * (v17 >> 5));
    v21 = MEMORY[0x1E695E118];
    while (1)
    {
      v22 = *v19;
      v23 = *(v19 + 4);
      v24 = [MEMORY[0x1E695DF90] dictionary];
      [v24 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v22), @"id"}];
      v29 = v22;
      if ((v22 & 3) != 0)
      {
        v22 = AG::AttributeID::resolve_slow(&v29, 8);
        v25 = v27;
      }

      else
      {
        v25 = 0;
      }

      [v24 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v22), @"node"}];
      if (v25)
      {
        [v24 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v25 - 1), @"offset"}];
      }

      if ((v22 & 3) != 0)
      {
        if ((v23 & 0x10) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v26 = *(*(this + 11) + ((*(AG::data::_shared_table_bytes + v22) >> 5) & 0x7FFFFF8));
        AGSetTypeForKey(v24, @"self-type", *v26);
        AGSetTypeForKey(v24, @"value-type", v26[1]);
        if ((v23 & 0x10) == 0)
        {
LABEL_30:
          if ((v23 & 4) != 0)
          {
            goto LABEL_37;
          }

          goto LABEL_31;
        }
      }

      [v24 setObject:v21 forKeyedSubscript:@"changed"];
      if ((v23 & 4) != 0)
      {
LABEL_37:
        [v24 setObject:v21 forKeyedSubscript:@"always-enabled"];
        if ((v23 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_32:
        [v24 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"prefetched"];
        goto LABEL_33;
      }

LABEL_31:
      if (v23)
      {
        goto LABEL_32;
      }

LABEL_33:
      [v16 addObject:v24];
      v19 = (v19 + 5);
      if (v19 == v20)
      {
        goto LABEL_21;
      }
    }
  }

  return v8;
}

void AG::Graph::print(AG::Graph *this)
{
  v2 = objc_autoreleasePoolPush();
  v3 = AG::Graph::description_graph_dot(this, 0);
  if (v3)
  {
    v4 = [v3 UTF8String];
    fputs(v4, *MEMORY[0x1E69E9848]);
  }

  objc_autoreleasePoolPop(v2);
}

void AG::Graph::print_cycle(uint64_t result, const char *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = *(result + 176);
  if (v4)
  {
    v13 = 8 * v4 - 8;
    do
    {
      AG::Trace::log_message(*(*(result + 168) + v13), "cycle detected through attribute: %u", a2);
      v13 -= 8;
    }

    while (v13 != -8);
  }

  if ((atomic_load_explicit(byte_1ED56D3C8, memory_order_acquire) & 1) == 0)
  {
    AG::Graph::print_cycle();
  }

  if (dword_1ED56D3C4 >= 1)
  {
    v5 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "=== AttributeGraph: cycle detected through attribute %u ===\n", a2);
    if (dword_1ED56D3C4 >= 2)
    {
      if (dword_1ED56D3C4 != 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        AG::Graph::collect_stack(result, &v14);
        v6 = [MEMORY[0x1E696AD50] indexSet];
        if (v15)
        {
          v7 = v14;
          v8 = 4 * v15;
          do
          {
            [v6 addIndex:*v7++];
            v8 -= 4;
          }

          while (v8);
        }

        v9 = objc_autoreleasePoolPush();
        v17[0] = @"format";
        v17[1] = @"attribute-ids";
        v18[0] = @"graph/dot";
        v18[1] = v6;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
        v12 = AG::Graph::description(result, v10, v11);
        if (v12)
        {
          fputs([v12 UTF8String], *v5);
        }

        objc_autoreleasePoolPop(v9);
        fwrite("=== Evaluation stack ===\n", 0x19uLL, 1uLL, *v5);
        if (v14)
        {
          free(v14);
        }
      }

      AG::Graph::print_stack(result);
      fwrite("===\n", 4uLL, 1uLL, *v5);
      if (dword_1ED56D3C4 >= 4 && os_variant_has_internal_diagnostics())
      {
        AGGraphArchiveJSON("cycle.ag-json");
      }
    }
  }

  if ((atomic_load_explicit(byte_1ED56D3D0, memory_order_acquire) & 1) == 0)
  {
    AG::Graph::print_cycle();
  }

  if (_MergedGlobals_3 == 1)
  {
    AG::precondition_failure("cyclic graph: %u", a2, a2);
  }
}

void sub_1B4939324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AG::anonymous namespace::cycle_verbosity(AG::_anonymous_namespace_ *this)
{
  v1 = getenv("AG_PRINT_CYCLES");
  if (!v1)
  {
    return 1;
  }

  return atoi(v1);
}

char *AG::anonymous namespace::trap_cycles(AG::_anonymous_namespace_ *this)
{
  result = getenv("AG_TRAP_CYCLES");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

uint64_t AG::Graph::description(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = (AG::data::_shared_table_bytes + a2);
  v6 = *(*(a1 + 88) + ((*v5 >> 5) & 0x7FFFFF8));
  [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"identifier = %u", a2)}];
  [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"type = %u", *v5 >> 8)}];
  [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"self_size = %d", *(*(*v6 - 8) + 64))}];
  [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"value_size = %d", *(*(*(v6 + 8) - 8) + 64))}];
  if ((*(*(*v6 - 8) + 82) & 1) == 0)
  {
    [v4 addObject:@"pod_self = true"];
  }

  if ((*(*(*(v6 + 8) - 8) + 82) & 1) == 0)
  {
    [v4 addObject:@"pod_value = true"];
  }

  if ((*(*(*v6 - 8) + 82) & 0x10) == 0)
  {
    [v4 addObject:@"bitwise_takable_self = true"];
  }

  if ((*(*(*(v6 + 8) - 8) + 82) & 0x10) == 0)
  {
    [v4 addObject:@"bitwise_takable_value = true"];
  }

  [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"input_count = %d", v5[3] >> 5)}];
  [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"output_count = %d", v5[5] >> 5)}];
  [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"dirty = %d", *v5 & 1)}];
  [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"updating = %d", (*v5 & 0xC0) != 0)}];
  v7 = *(*(v6 + 32) + 24);
  if (v7 && (*v5 & 0x20) != 0)
  {
    v8 = (v5 + *(v6 + 44));
    if (*(v5 + 7))
    {
      v8 = *v8;
    }

    v9 = v7(v6, v8);
    if (v9)
    {
      [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"self = %@", v9)}];
    }
  }

  if ((*v5 & 0x10) != 0)
  {
    v10 = *(*(v6 + 32) + 32);
    if (v10)
    {
      v11 = (AG::data::_shared_table_bytes + v5[2]);
      if ((*(v5 + 7) & 2) != 0)
      {
        v11 = *v11;
      }

      v12 = v10(v6, v11);
      if (v12)
      {
        [v4 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"value = %@", v12)}];
      }
    }
  }

  return [v4 componentsJoinedByString:{@", "}];
}

void AG::Graph::print_attribute(uint64_t a1, unsigned int a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = AG::Graph::description(a1, a2);
  if (v5)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s\n", [v5 UTF8String]);
  }

  objc_autoreleasePoolPop(v4);
}

void AG::Graph::write_to_file(AG::Graph *this, const AG::Graph *a2, const char *a3)
{
  v3 = a3;
  v23[3] = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v23[0] = @"graph/dict";
  v22[0] = @"format";
  v22[1] = @"include-values";
  v23[1] = [MEMORY[0x1E696AD98] numberWithBool:(v3 & 1) == 0];
  v22[2] = @"all_graphs";
  v23[2] = [MEMORY[0x1E696AD98] numberWithBool:this == 0];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v9 = AG::Graph::description(this, v7, v8);
  if (v9)
  {
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = "graph.ag-gzon";
    }

    v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:0];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    if (*v10 != 47)
    {
      v12 = [(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:v12];
    }

    v21 = 0;
    if ([[(NSString *)v12 pathExtension] isEqualToString:@"ag-gzon"])
    {
      v13 = gzopen([(NSString *)v12 fileSystemRepresentation], "wb");
      if (v13)
      {
        v14 = v13;
        v15 = [v11 bytes];
        v16 = [v11 length];
        if (v16)
        {
          v17 = v16;
          while (1)
          {
            v18 = gzwrite(v14, v15, v17);
            if (v18 <= 0)
            {
              break;
            }

            v15 += v18;
            v17 -= v18;
            if (!v17)
            {
              goto LABEL_13;
            }
          }

          gzclose(v14);
          goto LABEL_17;
        }

LABEL_13:
        gzclose(v14);
      }
    }

    else if (([v11 writeToFile:v12 options:0 error:&v21] & 1) == 0)
    {
LABEL_17:
      v20 = *MEMORY[0x1E69E9848];
      [(NSString *)v12 UTF8String];
      [objc_msgSend(v21 "description")];
      fprintf(v20, "Unable to write to %s: %s\n");
      goto LABEL_18;
    }

    v19 = *MEMORY[0x1E69E9848];
    [(NSString *)v12 UTF8String];
    fprintf(v19, "Wrote graph data to %s.\n");
  }

LABEL_18:
  objc_autoreleasePoolPop(v6);
}

uint64_t AG::Graph::print_data(AG::Graph *this)
{
  AG::data::table::print(&AG::data::_shared_table_bytes);
  result = AG::data::zone::print_header(v2);
  v4 = *(this + 76);
  if (v4)
  {
    v5 = *(this + 37);
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      result = AG::data::zone::print(v7);
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned long>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned long>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned long>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned long>>>::__emplace_unique_key_args<unsigned int,unsigned int &,unsigned long &>(void *a1, unsigned int *a2, _DWORD *a3, void *a4)
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

uint64_t anonymous namespace::escaped_string(_anonymous_namespace_ *this, NSString *a2)
{
  v3 = this;
  if ([(_anonymous_namespace_ *)this length]> a2)
  {
    v3 = [-[_anonymous_namespace_ substringToIndex:](v3 substringToIndex:{a2), "stringByAppendingString:", @"…"}];
  }

  return [(_anonymous_namespace_ *)v3 stringByReplacingOccurrencesOfString:@"" withString:@"\"];
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
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

uint64_t *std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>,std::piecewise_construct_t const&,std::tuple<AG::data::ptr<AG::Node> const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::__unordered_map_hasher<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::hash<AG::data::ptr<AG::Node>>,std::equal_to<AG::data::ptr<AG::Node>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Node>,std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>,std::equal_to<AG::data::ptr<AG::Node>>,std::hash<AG::data::ptr<AG::Node>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Node>,unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Node>,std::piecewise_construct_t const&,std::tuple<AG::data::ptr<AG::Node>&&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

void *std::__hash_table<std::__hash_value_type<AG::Subgraph const*,unsigned long>,std::__unordered_map_hasher<AG::Subgraph const*,std::__hash_value_type<AG::Subgraph const*,unsigned long>,std::hash<AG::Subgraph const*>,std::equal_to<AG::Subgraph const*>,true>,std::__unordered_map_equal<AG::Subgraph const*,std::__hash_value_type<AG::Subgraph const*,unsigned long>,std::equal_to<AG::Subgraph const*>,std::hash<AG::Subgraph const*>,true>,std::allocator<std::__hash_value_type<AG::Subgraph const*,unsigned long>>>::__emplace_unique_key_args<AG::Subgraph const*,std::piecewise_construct_t const&,std::tuple<AG::Subgraph const* const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
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

uint64_t *std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>,std::__unordered_map_hasher<AG::data::ptr<AG::Graph::TreeElement>,std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>,std::hash<AG::data::ptr<AG::Graph::TreeElement>>,std::equal_to<AG::data::ptr<AG::Graph::TreeElement>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Graph::TreeElement>,std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>,std::equal_to<AG::data::ptr<AG::Graph::TreeElement>>,std::hash<AG::data::ptr<AG::Graph::TreeElement>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Graph::TreeElement>,std::pair<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::__emplace_unique_key_args<AG::Subgraph *,std::piecewise_construct_t const&,std::tuple<AG::Subgraph * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
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

uint64_t *std::__hash_table<std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>,std::__unordered_map_hasher<AG::data::ptr<AG::Graph::TreeElement>,std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>,std::hash<AG::data::ptr<AG::Graph::TreeElement>>,std::equal_to<AG::data::ptr<AG::Graph::TreeElement>>,true>,std::__unordered_map_equal<AG::data::ptr<AG::Graph::TreeElement>,std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>,std::equal_to<AG::data::ptr<AG::Graph::TreeElement>>,std::hash<AG::data::ptr<AG::Graph::TreeElement>>,true>,std::allocator<std::__hash_value_type<AG::data::ptr<AG::Graph::TreeElement>,unsigned long>>>::__emplace_unique_key_args<AG::data::ptr<AG::Graph::TreeElement>,std::piecewise_construct_t const&,std::tuple<AG::data::ptr<AG::Graph::TreeElement> const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *std::__hash_table<AG::data::ptr<AG::IndirectNode>,std::hash<AG::data::ptr<AG::IndirectNode>>,std::equal_to<AG::data::ptr<AG::IndirectNode>>,std::allocator<AG::data::ptr<AG::IndirectNode>>>::__emplace_unique_key_args<AG::data::ptr<AG::IndirectNode>,AG::data::ptr<AG::IndirectNode> const&>(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t AGGraphGetGraphContext(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  return *(a1 + 16);
}

uint64_t AGGraphSetContext(uint64_t result, const char *a2)
{
  if (*(result + 88) == 1)
  {
    AG::Graph::Context::from_cf(result, a2);
  }

  *(result + 24) = a2;
  return result;
}

uint64_t AGGraphSetUpdateCallback(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

uint64_t AGGraphSetInvalidationCallback(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  return result;
}

uint64_t AGGraphBeginDeferringSubgraphInvalidation(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  v2 = *(a1 + 16);
  result = *(v2 + 360);
  *(v2 + 360) = 1;
  return result;
}

void AGGraphEndDeferringSubgraphInvalidation(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  if (!a2)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(v2 + 360) = 0;
      AG::Graph::invalidate_subgraphs(v2);
    }
  }
}

uint64_t AGGraphCurrentAttributeWasModified()
{
  result = 0;
  v1 = AG::Graph::_current_update_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if ((v2 & 1) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (v3)
    {
      v4 = v3 + 32;
      v6 = *(v3 + 96);
      v5 = *(v3 + 104);
      if (v6)
      {
        v4 = v6;
      }

      v7 = *(v4 + 8 * v5 - 8);
      if (v7)
      {
        return (*(AG::data::_shared_table_bytes + v7 + 7) >> 6) & 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AGGraphWithoutUpdate(uint64_t (*a1)(void))
{
  v1 = AG::Graph::_current_update_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 8 * v1);
  v4 = v3 | 1;
  if (!v3)
  {
    v4 = 0;
  }

  *(StatusReg + 8 * v1) = v4;
  result = a1();
  *(StatusReg + 8 * AG::Graph::_current_update_key) = v3;
  return result;
}

uint64_t AGGraphGetDeadline(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  return *(a1 + 72);
}

uint64_t *AGGraphSetDeadline(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  v3 = (a1 + 16);

  return AG::Graph::Context::set_deadline(v3, a2);
}

uint64_t AGGraphHasDeadlinePassed()
{
  v0 = AG::Graph::_current_update_key;
  v1 = (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0) & 0xFFFFFFFFFFFFFFFELL);
  if (v1 && *(*v1 + 48) != -1)
  {
    return AG::Graph::passed_deadline_slow(*v1);
  }

  else
  {
    return 0;
  }
}

unint64_t AGCreateWeakAttribute(unsigned int a1)
{
  if (a1 < 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = (*(*(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00)) + 24) & 0x7FFFFFFF) << 32;
  }

  return v1 | a1;
}

const char *AGGraphReadCachedAttributeIfExists(const char *a1, void *a2, const void *a3, AG::swift::metadata *a4, char a5, unsigned int a6, _BYTE *a7, int a8)
{
  v10 = 0;
  if (a7)
  {
    *a7 = v10 & 1;
  }

  return result;
}

uint64_t AGGraphGetIndirectAttribute(uint64_t result)
{
  if ((result & 3) == 1)
  {
    return *(AG::data::_shared_table_bytes + (result & 0xFFFFFFFC));
  }

  return result;
}

uint64_t AGGraphResetIndirectAttribute(uint64_t a1, const char *a2, const char *a3)
{
  if ((a1 & 3) != 1 || (a3 = a2, a2 = (a1 & 0xFFFFFFFC), (v4 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00))) == 0))
  {
    AG::precondition_failure("invalid indirect attribute: %u", a2, a3, a1);
  }

  v5 = *(v4 + 40);

  return AG::Graph::indirect_attribute_reset(v5, a2, a3, 0);
}

uint64_t AGGraphGetIndirectDependency(uint64_t a1, const char *a2)
{
  if ((a1 & 3) != 1 || (a2 = (a1 & 0xFFFFFFFC), (v3 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00))) == 0))
  {
    AG::precondition_failure("invalid indirect attribute: %u", a2, a1);
  }

  v4 = *(v3 + 40);

  return AG::Graph::indirect_attribute_dependency(v4, a2);
}

uint64_t AGGraphGetFlags(uint64_t a1, const char *a2)
{
  if ((a1 & 3) != 0)
  {
    AG::precondition_failure("non-direct attribute id: %u", a2, a1);
  }

  return *(AG::data::_shared_table_bytes + a1 + 6);
}

uint64_t AGGraphVerifyType(uint64_t result, char *a2)
{
  if (dword_1ED56D738 <= (result & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, result & 0xFFFFFFFC);
  }

  v2 = *(AG::data::_shared_table_bytes + (result & 0xFFFFFE00));
  if (!v2)
  {
    AG::precondition_failure("no graph: %u", a2, result);
  }

  if ((result & 3) == 0)
  {
    v3 = *(v2 + 40);
    v5 = *(v3 + 88);
    v4 = (v3 + 88);
    if (*(*(v5 + ((*(AG::data::_shared_table_bytes + result) >> 5) & 0x7FFFFF8)) + 8) != a2)
    {
      AGGraphVerifyType_cold_1(a2, result, v4, result);
    }
  }

  return result;
}

uint64_t AGGraphInvalidateAllValues(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  v3 = *(a1 + 16);

  return AG::Graph::value_mark_all(v3, a2);
}

uint64_t AGGraphHasValue(char *a1, const char *a2)
{
  if ((a1 & 3) != 0)
  {
    AG::precondition_failure("non-direct attribute id: %u", a2, a1);
  }

  if (dword_1ED56D738 <= a1)
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1);
  }

  v2 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v2)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  v3 = a1;
  v4 = *(v2 + 40);

  return AG::Graph::value_exists(v4, v3);
}

uint64_t AGGraphUpdateValue(char *a1, const char *a2)
{
  if ((a1 & 3) != 0)
  {
    AG::precondition_failure("non-direct attribute id: %u", a2, a1);
  }

  if (dword_1ED56D738 <= a1)
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1);
  }

  v2 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v2)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  v3 = a1;
  v4 = *(v2 + 40);

  return AG::Graph::update_attribute(v4, v3, 0);
}

uint64_t AGGraphPrefetchValue(uint64_t a1, const char *a2)
{
  v7 = a1;
  v3 = a1;
  if ((a1 & 3) != 0)
  {
    v3 = AG::AttributeID::resolve_slow(&v7, 2);
  }

  if (dword_1ED56D738 <= (a1 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1 & 0xFFFFFFFC);
  }

  v4 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v4)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  v5 = *(v4 + 40);
  if (*(v5 + 48) == -1)
  {
    return AG::Graph::update_attribute(v5, v3, 3);
  }

  result = AG::Graph::passed_deadline_slow(v5);
  if ((result & 1) == 0)
  {
    return AG::Graph::update_attribute(v5, v3, 3);
  }

  return result;
}

void AGGraphCancelUpdate(uint64_t a1, const char *a2)
{
  v3 = AG::Graph::_current_update_key;
  v4 = (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3) & 0xFFFFFFFFFFFFFFFELL);
  if (!v4)
  {
    AGGraphRegisterDependency_cold_1(v4, a2);
  }

  AG::Graph::UpdateStack::cancel(v4);
}

uint64_t AGGraphCancelUpdateIfNeeded(uint64_t a1, const char *a2)
{
  v2 = AG::Graph::_current_update_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  v4 = (v3 & 0xFFFFFFFFFFFFFFFELL);
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    AGGraphRegisterDependency_cold_1(a1, a2);
  }

  if (AG::Graph::UpdateStack::cancelled(v3 & 0xFFFFFFFFFFFFFFFELL))
  {
    return 1;
  }

  if (*(*v4 + 48) == -1)
  {
    return 0;
  }

  result = AG::Graph::passed_deadline_slow(*v4);
  if (result)
  {
    AG::Graph::UpdateStack::cancel(v4);
    return 1;
  }

  return result;
}

uint64_t AGGraphUpdateWasCancelled(unint64_t a1, const char *a2)
{
  v3 = AG::Graph::_current_update_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if ((v4 & 1) != 0 || (a1 = v4 & 0xFFFFFFFFFFFFFFFELL, (v4 & 0xFFFFFFFFFFFFFFFELL) == 0))
  {
    AGGraphRegisterDependency_cold_1(a1, a2);
  }

  return AG::Graph::UpdateStack::cancelled(a1);
}

uint64_t AGGraphSearch(uint64_t a1, const char *a2, uint64_t (*a3)(uint64_t))
{
  if (dword_1ED56D738 <= (a1 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, a3, a1 & 0xFFFFFFFC);
  }

  v3 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v3)
  {
    AG::precondition_failure("no graph: %u", a2, a3, a1);
  }

  return AG::Graph::breadth_first_search(*(v3 + 40), a1, a2, a3);
}

void AGGraphStartProfiling(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (*(a1 + 88) == 1)
    {
      AG::Graph::Context::from_cf(a1, a2);
    }

    v3 = *(a1 + 16);

    AG::Graph::start_profiling(v3, 1);
  }

  else
  {

    AG::Graph::all_start_profiling(1);
  }
}

void AGGraphStopProfiling(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (*(a1 + 88) == 1)
    {
      AG::Graph::Context::from_cf(a1, a2);
    }

    v3 = *(a1 + 16);

    AG::Graph::stop_profiling(v3);
  }

  else
  {

    AG::Graph::all_stop_profiling(0);
  }
}

uint64_t AGGraphIsProfilingEnabled(uint64_t a1, const char *a2)
{
  if (dword_1ED56D738 <= (a1 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1 & 0xFFFFFFFC);
  }

  v2 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v2)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  return *(*(v2 + 40) + 248);
}

void AGGraphResetProfile(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (*(a1 + 88) == 1)
    {
      AG::Graph::Context::from_cf(a1, a2);
    }

    v3 = *(a1 + 16);

    AG::Graph::reset_profile(v3);
  }

  else
  {

    AG::Graph::all_reset_profile(0);
  }
}

void AGGraphMarkProfile(uint64_t a1, AG::Graph *this)
{
  if (a1)
  {
    if (*(a1 + 88) == 1)
    {
      AG::Graph::Context::from_cf(a1, this);
    }

    v2 = *(a1 + 16);
    v3 = AG::Graph::intern_key(v2, this);

    AG::Graph::mark_profile(v2, v3, 0);
  }

  else
  {

    AG::Graph::all_mark_profile(this, this);
  }
}

uint64_t AGGraphBeginProfileEvent(uint64_t a1, char *a2)
{
  v3 = a1;
  v6 = a1;
  if ((a1 & 3) != 0)
  {
    LODWORD(a1) = AG::AttributeID::resolve_slow(&v6, 2);
  }

  if (dword_1ED56D738 <= (v3 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, v3 & 0xFFFFFFFC);
  }

  v4 = *(AG::data::_shared_table_bytes + (v3 & 0xFFFFFE00));
  if (!v4)
  {
    AG::precondition_failure("no graph: %u", a2, v3);
  }

  return AG::Graph::begin_profile_event(*(v4 + 40), a1, a2);
}

void *AGGraphEndProfileEvent(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v7 = a1;
  v10 = a1;
  if ((a1 & 3) != 0)
  {
    LODWORD(a1) = AG::AttributeID::resolve_slow(&v10, 2);
  }

  if (dword_1ED56D738 <= (v7 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, v7 & 0xFFFFFFFC);
  }

  v8 = *(AG::data::_shared_table_bytes + (v7 & 0xFFFFFE00));
  if (!v8)
  {
    AG::precondition_failure("no graph: %u", a2, v7);
  }

  return AG::Graph::end_profile_event(*(v8 + 40), a1, a2, a3, a4);
}

void AGGraphStartTracing2(uint64_t a1, char *a2, CFArrayRef theArray)
{
  v3 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 == CFStringGetTypeID())
        {
          v10 = [ValueAtIndex UTF8String];
          v11 = v13;
          a2 = (v13 + 1);
          if (v14 < (v13 + 1))
          {
            AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(&v12, a2);
            v11 = v13;
            a2 = (v13 + 1);
          }

          *(v12 + v11) = v10;
          v13 = a2;
        }
      }
    }
  }

  if (a1)
  {
    if (*(a1 + 88) == 1)
    {
      AG::precondition_failure("invalidated graph", a2);
    }

    AG::Graph::start_tracing(*(a1 + 16), v3, v12, v13);
  }

  else
  {
    AG::Graph::all_start_tracing(v3, v12, v13);
  }

  if (v12)
  {
    free(v12);
  }
}

void sub_1B493BCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void AGGraphStopTracing(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (*(a1 + 88) == 1)
    {
      AG::Graph::Context::from_cf(a1, a2);
    }

    v3 = *(a1 + 16);

    AG::Graph::stop_tracing(v3);
  }

  else
  {

    AG::Graph::all_stop_tracing(0);
  }
}

void AGGraphSyncTracing(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (*(a1 + 88) == 1)
    {
      AG::Graph::Context::from_cf(a1, a2);
    }

    v3 = *(a1 + 16);

    AG::Graph::sync_tracing(v3);
  }

  else
  {

    AG::Graph::all_sync_tracing(0);
  }
}

CFStringRef AGGraphCopyTracePath(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (*(a1 + 88) == 1)
    {
      AG::Graph::Context::from_cf(a1, a2);
    }

    v3 = *(a1 + 16);

    return AG::Graph::copy_trace_path(v3);
  }

  else
  {

    return AG::Graph::all_copy_trace_path(0);
  }
}

id AGGraphDescription(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    if (*(a1 + 88) == 1)
    {
      AG::precondition_failure("invalidated graph", v3);
    }

    v6 = AG::Graph::description(*(a1 + 16), v5, v4);
  }

  else
  {
    v6 = AG::Graph::description(0, v5, v4);
  }

  v7 = v6;

  return v7;
}

uint64_t AG::error_log(AG *this)
{
  if ((atomic_load_explicit(byte_1ED56D3F0, memory_order_acquire) & 1) == 0)
  {
    AG::error_log();
  }

  return qword_1ED56D3E8;
}

void AG::non_fatal_precondition_failure(AG *this, const char *a2, ...)
{
  va_start(va, a2);
  v5[0] = 0;
  va_copy(&v5[1], va);
  v2 = vasprintf(v5, this, va);
  if (v5[0])
  {
    v3 = AG::error_log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      AG::non_fatal_precondition_failure(v5, v3);
    }

    AG::Graph::trace_assertion_failure(0, "precondition failure: %s", v4, v5[0]);
    free(v5[0]);
  }
}

uint64_t AGGraphPrepareTrace(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = AG::Graph::Context::from_cf(a1, a2);
  v7[0] = &unk_1F2CB23C8;
  v7[1] = AGMakeUniqueID();
  v7[2] = a2;
  v7[3] = a3;
  return AG::Graph::prepare_trace(*v5, v7, 1);
}

void AGGraphSetTrace(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = AG::Graph::Context::from_cf(a1, a2);
  AG::Graph::remove_trace(*v3, 0);
  operator new();
}

_DWORD *AGGraphResetTrace(uint64_t a1, const char *a2)
{
  v2 = *AG::Graph::Context::from_cf(a1, a2);

  return AG::Graph::remove_trace(v2, 0);
}

_DWORD *AGGraphRemoveTrace(uint64_t a1, const char *a2)
{
  v3 = *AG::Graph::Context::from_cf(a1, a2);

  return AG::Graph::remove_trace(v3, a2);
}

uint64_t *AGGraphAddTraceEvent(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = AG::Graph::Context::from_cf(a1, a2);
  v8 = *result;
  v9 = *(*result + 176);
  if (v9)
  {
    v10 = result;
    v11 = 8 * v9 - 8;
    do
    {
      result = (*(**(*(v8 + 168) + v11) + 336))(*(*(v8 + 168) + v11), v10, a2, a3, a4);
      v11 -= 8;
    }

    while (v11 != -8);
  }

  return result;
}

uint64_t AGGraphGetTraceEventSubsystem(unsigned int a1)
{
  os_unfair_lock_lock(&NamedEvents::lock);
  if (NamedEvents::names && *(NamedEvents::names + 8) > a1)
  {
    v2 = *(*NamedEvents::names + 16 * a1);
  }

  else
  {
    v2 = 0;
  }

  os_unfair_lock_unlock(&NamedEvents::lock);
  return v2;
}

uint64_t AGGraphGetTraceEventName(unsigned int a1)
{
  os_unfair_lock_lock(&NamedEvents::lock);
  if (NamedEvents::names && *(NamedEvents::names + 8) > a1)
  {
    v2 = *(*NamedEvents::names + 16 * a1 + 8);
  }

  else
  {
    v2 = 0;
  }

  os_unfair_lock_unlock(&NamedEvents::lock);
  return v2;
}

uint64_t *AGGraphAddNamedTraceEvent(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = AG::Graph::Context::from_cf(a1, a2);
  v12 = *result;
  v13 = *(*result + 176);
  if (v13)
  {
    v14 = result;
    v15 = 8 * v13 - 8;
    do
    {
      result = (*(**(*(v12 + 168) + v15) + 344))(*(*(v12 + 168) + v15), v14, a2, a3, a4, a5, a6);
      v15 -= 8;
    }

    while (v15 != -8);
  }

  return result;
}

uint64_t ExternalTrace::begin_trace(ExternalTrace *this, AG::Graph *a2)
{
  v7 = *(*(this + 2) + 8);
  v3 = AG::Graph::main_context(a2);
  result = AG::Graph::Context::to_cf(v3);
  if (v7)
  {
    v5 = result;
    v6 = *(this + 3);

    return v7(v6, v5);
  }

  return result;
}

uint64_t ExternalTrace::end_trace(ExternalTrace *this, AG::Graph *a2)
{
  v7 = *(*(this + 2) + 16);
  v3 = AG::Graph::main_context(a2);
  result = AG::Graph::Context::to_cf(v3);
  if (v7)
  {
    v5 = result;
    v6 = *(this + 3);

    return v7(v6, v5);
  }

  return result;
}

uint64_t ExternalTrace::begin_update(ExternalTrace *this, AG::Subgraph *a2, uint64_t a3)
{
  result = AG::Subgraph::to_cf(a2);
  if (result)
  {
    v6 = *(*(this + 2) + 24);
    if (v6)
    {
      v7 = result;
      v8 = *(this + 3);

      return v6(v8, v7, a3);
    }
  }

  return result;
}

uint64_t ExternalTrace::end_update(ExternalTrace *this, AG::Subgraph *a2)
{
  result = AG::Subgraph::to_cf(a2);
  if (result)
  {
    v4 = *(*(this + 2) + 32);
    if (v4)
    {
      v5 = result;
      v6 = *(this + 3);

      return v4(v6, v5);
    }
  }

  return result;
}

uint64_t ExternalTrace::begin_update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 16) + 40);
  if (v3)
  {
    return v3(*(result + 24), a3);
  }

  return result;
}

uint64_t ExternalTrace::end_update(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(*(result + 16) + 48);
  if (v4)
  {
    return v4(*(result + 24), a3, a4 == 1);
  }

  return result;
}

uint64_t ExternalTrace::begin_update(uint64_t result)
{
  v1 = *(*(result + 16) + 56);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::end_update(uint64_t result)
{
  v1 = *(*(result + 16) + 64);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::begin_update(ExternalTrace *this, AG::Graph::Context *a2)
{
  result = AG::Graph::Context::to_cf(a2);
  if (result)
  {
    v4 = *(*(this + 2) + 72);
    if (v4)
    {
      v5 = result;
      v6 = *(this + 3);

      return v4(v6, v5);
    }
  }

  return result;
}

uint64_t ExternalTrace::end_update(ExternalTrace *this, AG::Graph::Context *a2)
{
  result = AG::Graph::Context::to_cf(a2);
  if (result)
  {
    v4 = *(*(this + 2) + 80);
    if (v4)
    {
      v5 = result;
      v6 = *(this + 3);

      return v4(v6, v5);
    }
  }

  return result;
}

uint64_t ExternalTrace::begin_invalidation(uint64_t a1, AG::Graph::Context *a2, uint64_t a3)
{
  result = AG::Graph::Context::to_cf(a2);
  if (result)
  {
    v6 = *(*(a1 + 16) + 88);
    if (v6)
    {
      v7 = result;
      v8 = *(a1 + 24);

      return v6(v8, v7, a3);
    }
  }

  return result;
}

uint64_t ExternalTrace::end_invalidation(uint64_t a1, AG::Graph::Context *a2, uint64_t a3)
{
  result = AG::Graph::Context::to_cf(a2);
  if (result)
  {
    v6 = *(*(a1 + 16) + 96);
    if (v6)
    {
      v7 = result;
      v8 = *(a1 + 24);

      return v6(v8, v7, a3);
    }
  }

  return result;
}

uint64_t ExternalTrace::begin_modify(uint64_t result)
{
  v1 = *(*(result + 16) + 104);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::end_modify(uint64_t result)
{
  v1 = *(*(result + 16) + 112);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::begin_event(uint64_t result, uint64_t a2, const char *a3)
{
  if (*(*(result + 16) + 120))
  {
    v4 = *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00));
    if (v4)
    {
      v5 = result;
      result = AG::Graph::key_name(*(v4 + 40), a3);
      v6 = *(*(v5 + 16) + 120);
      if (v6)
      {
        v7 = result;
        v8 = *(v5 + 24);

        return v6(v8, a2, v7);
      }
    }
  }

  return result;
}

uint64_t ExternalTrace::end_event(uint64_t result, uint64_t a2, const char *a3)
{
  if (*(*(result + 16) + 128))
  {
    v4 = *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00));
    if (v4)
    {
      v5 = result;
      result = AG::Graph::key_name(*(v4 + 40), a3);
      v6 = *(*(v5 + 16) + 128);
      if (v6)
      {
        v7 = result;
        v8 = *(v5 + 24);

        return v6(v8, a2, v7);
      }
    }
  }

  return result;
}

uint64_t ExternalTrace::created(ExternalTrace *this, AG::Graph::Context *a2)
{
  result = AG::Graph::Context::to_cf(a2);
  if (result)
  {
    v4 = *(*(this + 2) + 136);
    if (v4)
    {
      v5 = result;
      v6 = *(this + 3);

      return v4(v6, v5);
    }
  }

  return result;
}

uint64_t ExternalTrace::destroy(ExternalTrace *this, AG::Graph::Context *a2)
{
  result = AG::Graph::Context::to_cf(a2);
  if (result)
  {
    v4 = *(*(this + 2) + 144);
    if (v4)
    {
      v5 = result;
      v6 = *(this + 3);

      return v4(v6, v5);
    }
  }

  return result;
}

uint64_t ExternalTrace::needs_update(ExternalTrace *this, AG::Graph::Context *a2)
{
  result = AG::Graph::Context::to_cf(a2);
  if (result)
  {
    v4 = *(*(this + 2) + 152);
    if (v4)
    {
      v5 = result;
      v6 = *(this + 3);

      return v4(v6, v5);
    }
  }

  return result;
}

uint64_t ExternalTrace::created(ExternalTrace *this, AG::Subgraph *a2)
{
  result = AG::Subgraph::to_cf(a2);
  if (result)
  {
    v4 = *(*(this + 2) + 160);
    if (v4)
    {
      v5 = result;
      v6 = *(this + 3);

      return v4(v6, v5);
    }
  }

  return result;
}

uint64_t ExternalTrace::invalidate(ExternalTrace *this, AG::Subgraph *a2)
{
  result = AG::Subgraph::to_cf(a2);
  if (result)
  {
    v4 = *(*(this + 2) + 168);
    if (v4)
    {
      v5 = result;
      v6 = *(this + 3);

      return v4(v6, v5);
    }
  }

  return result;
}

uint64_t ExternalTrace::add_child(ExternalTrace *this, AG::Subgraph *a2, AG::Subgraph *a3)
{
  result = AG::Subgraph::to_cf(a2);
  if (result)
  {
    v6 = result;
    result = AG::Subgraph::to_cf(a3);
    if (result)
    {
      v7 = *(*(this + 2) + 176);
      if (v7)
      {
        v8 = result;
        v9 = *(this + 3);

        return v7(v9, v6, v8);
      }
    }
  }

  return result;
}

uint64_t ExternalTrace::remove_child(ExternalTrace *this, AG::Subgraph *a2, AG::Subgraph *a3)
{
  result = AG::Subgraph::to_cf(a2);
  if (result)
  {
    v6 = result;
    result = AG::Subgraph::to_cf(a3);
    if (result)
    {
      v7 = *(*(this + 2) + 184);
      if (v7)
      {
        v8 = result;
        v9 = *(this + 3);

        return v7(v9, v6, v8);
      }
    }
  }

  return result;
}

uint64_t ExternalTrace::added(uint64_t result)
{
  v1 = *(*(result + 16) + 192);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::add_edge(uint64_t result)
{
  v1 = *(*(result + 16) + 200);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::remove_edge(uint64_t result, int a2)
{
  v2 = *(*(result + 16) + 208);
  if (v2)
  {
    if (*(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00)))
    {
      return v2(*(result + 24));
    }
  }

  return result;
}

uint64_t ExternalTrace::set_edge_pending(uint64_t result, int a2)
{
  v2 = *(*(result + 16) + 216);
  if (v2)
  {
    if (*(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00)))
    {
      return v2(*(result + 24));
    }
  }

  return result;
}

uint64_t ExternalTrace::set_dirty(uint64_t result)
{
  v1 = *(*(result + 16) + 224);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::set_pending(uint64_t result)
{
  v1 = *(*(result + 16) + 232);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::set_value(uint64_t result)
{
  v1 = *(*(result + 16) + 240);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::mark_value(uint64_t result)
{
  v1 = *(*(result + 16) + 248);
  if (v1)
  {
    return v1(*(result + 24));
  }

  return result;
}

uint64_t ExternalTrace::added(uint64_t result, int a2)
{
  v2 = *(*(result + 16) + 256);
  if (v2)
  {
    return v2(*(result + 24), a2 | 1u);
  }

  return result;
}

uint64_t ExternalTrace::set_source(uint64_t result, int a2)
{
  v2 = *(*(result + 16) + 264);
  if (v2)
  {
    return v2(*(result + 24), a2 | 1u);
  }

  return result;
}

uint64_t ExternalTrace::set_dependency(uint64_t result, int a2)
{
  v2 = *(*(result + 16) + 272);
  if (v2)
  {
    return v2(*(result + 24), a2 | 1u);
  }

  return result;
}

uint64_t ExternalTrace::set_deadline(uint64_t this)
{
  v1 = *(this + 16);
  if (*v1 >= 3uLL)
  {
    v2 = v1[39];
    if (v2)
    {
      return v2(*(this + 24));
    }
  }

  return this;
}

uint64_t ExternalTrace::passed_deadline(uint64_t this)
{
  v1 = *(this + 16);
  if (*v1 >= 3uLL)
  {
    v2 = v1[40];
    if (v2)
    {
      return v2(*(this + 24));
    }
  }

  return this;
}

uint64_t ExternalTrace::mark_profile(uint64_t this, AG::Graph *a2, const char *a3)
{
  if (*(*(this + 16) + 280))
  {
    v3 = this;
    this = AG::Graph::key_name(a2, a3);
    v4 = *(*(v3 + 16) + 280);
    if (v4)
    {
      v5 = this;
      v6 = *(v3 + 24);

      return v4(v6, v5);
    }
  }

  return this;
}

uint64_t ExternalTrace::custom_event(uint64_t result, AG::Graph::Context *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (**(result + 16))
  {
    v8 = result;
    result = AG::Graph::Context::to_cf(this);
    if (result)
    {
      v9 = *(*(v8 + 16) + 288);
      if (v9)
      {
        v10 = result;
        v11 = *(v8 + 24);

        return v9(v11, v10, a3, a4, a5);
      }
    }
  }

  return result;
}

uint64_t ExternalTrace::named_event(uint64_t this, AG::Graph::Context *a2, uint64_t a3, uint64_t a4, const unsigned int *a5, const __CFData *a6, uint64_t a7)
{
  if (**(this + 16) >= 2uLL)
  {
    v12 = this;
    this = AG::Graph::Context::to_cf(a2);
    if (this)
    {
      v13 = *(*(v12 + 16) + 296);
      if (v13)
      {
        v14 = this;
        v15 = *(v12 + 24);

        return v13(v15, v14, a3, a4, a5, a6, a7);
      }
    }
  }

  return this;
}

uint64_t ExternalTrace::named_event_enabled(ExternalTrace *this)
{
  v1 = *(this + 2);
  if (*v1 < 2uLL)
  {
    return 0;
  }

  v2 = v1[38];
  if (v2)
  {
    return v2(*(this + 3));
  }

  else
  {
    return v1[37] != 0;
  }
}

uint64_t ExternalTrace::compare_failed(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(result + 16);
  if (*v9 >= 4uLL)
  {
    v11[5] = v7;
    v11[6] = v8;
    v11[0] = a3;
    v11[1] = a4;
    v11[2] = a5;
    v11[3] = a6;
    v11[4] = a7;
    v10 = v9[41];
    if (v10)
    {
      return v10(*(result + 24), a2, v11);
    }
  }

  return result;
}

CFURLRef AGDebugServerCopyURL()
{
  result = AG::DebugServer::_shared_server;
  if (AG::DebugServer::_shared_server)
  {
    return AG::DebugServer::copy_url(AG::DebugServer::_shared_server);
  }

  return result;
}

void AGDebugServerRun(int a1)
{
  if (AG::DebugServer::_shared_server)
  {
    AG::DebugServer::run(AG::DebugServer::_shared_server, a1);
  }
}

unint64_t AGWeakAttribute.init(_:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = 2;
  }

  return AGCreateWeakAttribute(a1);
}

unint64_t AGWeakAttribute.attribute.getter(unint64_t a1)
{
  Attribute = AGWeakAttributeGetAttribute(a1);
  if (Attribute == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = Attribute;
  }

  return v2 | ((Attribute == 2) << 32);
}

unint64_t AGWeakAttribute.attribute.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = 2;
  }

  result = AGCreateWeakAttribute(a1);
  *v1 = result;
  return result;
}

uint64_t (*AGWeakAttribute.attribute.modify(uint64_t a1))()
{
  *a1 = v1;
  Attribute = AGWeakAttributeGetAttribute(*v1);
  *(a1 + 16) = 2;
  if (Attribute == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = Attribute;
  }

  *(a1 + 8) = v4;
  *(a1 + 12) = Attribute == 2;
  return sub_1B493ECE0;
}

uint64_t AGWeakAttribute.description.getter(unint64_t a1)
{
  if (AGWeakAttributeGetAttribute(a1) == 2)
  {
    return 7104878;
  }

  else
  {
    return AGAttribute.description.getter();
  }
}

uint64_t AGWeakAttribute.hashValue.getter(unint64_t a1)
{
  sub_1B4949CC8();
  sub_1B4949CE8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B493D218()
{
  sub_1B4949CC8();
  sub_1B4949CE8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B493D274(uint64_t a1)
{
  sub_1B4949CC8();
  sub_1B4949CE8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

unint64_t WeakAttribute.init(_:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = 2;
  }

  return AGCreateWeakAttribute(a1);
}

uint64_t (*WeakAttribute.attribute.modify(uint64_t a1))()
{
  *a1 = v1;
  Attribute = AGWeakAttributeGetAttribute(*v1);
  *(a1 + 16) = 2;
  if (Attribute == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = Attribute;
  }

  *(a1 + 8) = v4;
  *(a1 + 12) = Attribute == 2;
  return sub_1B493ECE0;
}

uint64_t WeakAttribute.changedValue(options:)@<X0>(char a1@<W0>, unint64_t a2@<X1>, AG::swift::metadata *a3@<X2>, uint64_t a4@<X8>)
{
  WeakValue = AGGraphGetWeakValue(a2, a1, a3);
  if (WeakValue)
  {
    v8 = WeakValue;
    v9 = v7;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v11 = *(TupleTypeMetadata2 + 48);
    (*(*(a3 - 1) + 16))(a4, v8, a3);
    *(a4 + v11) = v9 & 1;
    v12 = *(*(TupleTypeMetadata2 - 8) + 56);
    v13 = a4;
    v14 = 0;
    v15 = TupleTypeMetadata2;
  }

  else
  {
    v16 = swift_getTupleTypeMetadata2();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a4;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1B493D4DC@<X0>(unint64_t a1@<X0>, AG::swift::metadata *a2@<X1>, uint64_t a3@<X8>)
{
  WeakValue = AGGraphGetWeakValue(a1, 0, a2);
  if (WeakValue)
  {
    v10 = *(a2 - 1);
    (*(v10 + 16))(a3, WeakValue, a2);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v6 = *(a2 - 1);
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a3, v7, 1, a2);
}

unint64_t sub_1B493D5DC(unint64_t a1)
{
  Attribute = AGWeakAttributeGetAttribute(a1);
  if (Attribute == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = Attribute;
  }

  return v2 | ((Attribute == 2) << 32);
}

unint64_t sub_1B493D620(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 4))
  {
    v3 = &AGAttributeNil;
  }

  else
  {
    v3 = a1;
  }

  result = AGCreateWeakAttribute(*v3);
  *a2 = result;
  return result;
}

unint64_t sub_1B493D664(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = 2;
  }

  result = AGCreateWeakAttribute(a1);
  *v1 = result;
  return result;
}

uint64_t (*WeakAttribute.projectedValue.modify(uint64_t a1))()
{
  *a1 = v1;
  Attribute = AGWeakAttributeGetAttribute(*v1);
  *(a1 + 16) = 2;
  if (Attribute == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = Attribute;
  }

  *(a1 + 8) = v4;
  *(a1 + 12) = Attribute == 2;
  return sub_1B493D700;
}