void *re::internal::Callable<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D18810;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18850;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, __n128 a4)
{
  v5 = *a3;
  re::internal::introspected::write<re::internal::Serializer>(*(a1 + 8), *a2, *(a1 + 16), a4);
  re::internal::introspected::write<re::internal::Serializer>(*(a1 + 8), v5, *(a1 + 24), v6);
  return 1;
}

void *re::internal::CallableRef<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D188D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D188D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::internal::introspected::write<re::internal::Serializer>(re::internal::Serializer &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D188D8;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::introspected::read<re::internal::Deserializer>(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  result = (*(*a1 + 120))(a1, v23, 0);
  if (result)
  {
    v7 = (*(*a3 + 88))(a3, a2);
    if (v23[0] != -1)
    {
      v7 = (*(*a3 + 72))(a3, a2);
    }

    v8 = a3[6];
    v9 = a3[8];
    v10 = *(v8 + 6);
    v11 = *(v8 + 5) + v10 - 1;
    __space = v11;
    MEMORY[0x1EEE9AC00](v7);
    v13 = &__ptr - v12;
    bzero(&__ptr - v12, v11);
    __ptr = v13;
    __ptr = std::align(v10, v11, &__ptr, &__space);
    result = (*(*a1 + 152))(a1, v23);
    if ((result & 1) == 0)
    {
      do
      {
        v14 = (*(*a1 + 40))(a1);
        v15 = (*(*a1 + 32))(a1);
        v16 = __ptr;
        re::introspectionCallConstructor(v15, v8, __ptr);
        re::introspectionInitElement(v14, v17, v8, v16);
        re::internal::introspected::read<re::internal::Deserializer>(a1, __ptr, v8);
        v18 = (*(*a1 + 40))(a1);
        v19 = (*(*a1 + 32))(a1);
        v20 = (*(*a3 + 96))(a3, v18, v19, a2, __ptr);
        re::internal::introspected::read<re::internal::Deserializer>(a1, v20, v9);
        (*(*a3 + 112))(a3, __ptr);
        result = (*(*a1 + 152))(a1, v23);
      }

      while (!result);
    }
  }

  return result;
}

uint64_t re::internal::CallableRef<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D18958;
  v3 = *v2;
  *(a2 + 24) = v2[1];
  *(a2 + 8) = v3;
  return a2;
}

void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1}::operator()(uint64_t *a1, uint64_t a2, re::DynamicString ***a3, int a4, void *a5)
{
  if (a4 != 3)
  {
    if (a4 != 1)
    {
      if (!a4)
      {
        v9 = *a3;
        if (*a3)
        {
          v10 = (*(*a2 + 40))(a2);
          v11 = (*(*a2 + 32))(a2);
          re::introspectionReleasePointer(v9, v10, v11, *a1);
          *a3 = 0;
        }
      }

      return;
    }

    v12 = a1[3];
    v13 = *v12;
    if (v13)
    {
      v14 = (*(v12 + 1) + 24);
      while (*v14 != a5)
      {
        v14 += 5;
        if (!--v13)
        {
          goto LABEL_20;
        }
      }

      v20 = *(v14 - 2);
      v21 = a1[1];
      if (v21)
      {
        v22 = a1[2];
        __dst = 0;
        memcpy(&__dst, v21, *(v22 + 20));
        v23 = __dst;
      }

      else
      {
        v23 = 0;
      }

      v27 = *a3;
      if (v23 == a5)
      {
        if (v27)
        {
LABEL_36:

          re::internal::introspected::read<re::internal::Deserializer>(a2, v27, v20);
          return;
        }
      }

      else if (v27)
      {
        v28 = (*(*a2 + 40))(a2);
        v29 = (*(*a2 + 32))(a2);
        re::introspectionReleasePointer(v27, v28, v29, *a1);
        *a3 = 0;
      }

      v30 = (*(*a2 + 40))(a2);
      v31 = (*(*a2 + 32))(a2);
      v32 = re::introspectionAllocPointer(v30, v31, v20);
      *a3 = v32;
      if (!v32)
      {
        (*(*a2 + 56))(a2, "allocation failure: %d bytes", *(*a1 + 20));
        return;
      }

      re::PolymorphicData::makeWithPointer(&__dst, *a1, v32);
      __src = a5;
      if (__dst)
      {
        memcpy(__dst, &__src, *(v34 + 20));
      }

      v27 = *a3;
      goto LABEL_36;
    }

LABEL_20:
    (*(*a2 + 56))(a2, "invalid polymorphic type %llu", a5);
    return;
  }

  if (*(*a1 + 16) == 8 && (v15 = *(*a1 + 88)) != 0)
  {
    v16 = *a3;

    v15(v16);
  }

  else
  {
    v17 = a1[3];
    v18 = *v17;
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = (*(v17 + 1) + 24);
    while (*v19 != a5)
    {
      v19 += 5;
      if (!--v18)
      {
        goto LABEL_20;
      }
    }

    v24 = (*(*a2 + 40))(a2);
    v25 = (*(*a2 + 32))(a2);
    v26 = re::introspectionDeepCopy(v24, v25, *(v19 - 2), *a3);
    *a3 = v26;
    re::PolymorphicData::makeWithPointer(&__dst, *a1, v26);
    __src = a5;
    if (__dst)
    {
      memcpy(__dst, &__src, *(v34 + 20));
    }
  }
}

uint64_t re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18958;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18958;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::internal::CallableRef<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D189D8;
  a2[1] = v2;
  return a2;
}

void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1}::operator()(re::Allocator **a1, uint64_t a2, re::DynamicString ***a3, int a4)
{
  switch(a4)
  {
    case 3:
      if (*(*a1 + 4) == 8 && (v14 = *(*a1 + 11)) != 0)
      {
        v15 = *a3;

        v14(v15);
      }

      else
      {
        v16 = (*(*a2 + 40))(a2);
        v17 = (*(*a2 + 32))(a2);
        *a3 = re::introspectionDeepCopy(v16, v17, *a1, *a3);
      }

      break;
    case 1:
      v10 = *a3;
      if (*a3 || (v11 = (*(*a2 + 40))(a2), v12 = (*(*a2 + 32))(a2), v10 = re::introspectionAllocPointer(v11, v12, *a1), (*a3 = v10) != 0))
      {
        v13 = *a1;

        re::internal::introspected::read<re::internal::Deserializer>(a2, v10, v13);
      }

      else
      {
        (*(*a2 + 56))(a2, "allocation failure: %d bytes", *(*a1 + 5));
      }

      break;
    case 0:
      v7 = *a3;
      if (*a3)
      {
        v8 = (*(*a2 + 40))(a2);
        v9 = (*(*a2 + 32))(a2);
        re::introspectionReleasePointer(v7, v8, v9, *a1);
        *a3 = 0;
      }

      break;
  }
}

void *re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D189D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D189D8;
  a2[1] = v2;
  return a2;
}

re::internal::Deserializer *re::internal::Deserializer::skipNext(re::internal::Deserializer *this)
{
  __dst = 0;
  Raw = re::internal::Deserializer::readRaw(this, &__dst, 1uLL);
  v3 = __dst;
  if (!Raw)
  {
    v3 = 0;
  }

  return re::internal::Deserializer::skip(this, v3);
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F5D18A18;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = v5;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v5);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18A60;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D18AA8;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D18AF0;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18B38;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18B80;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18BC8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D18C10;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

__n128 std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18A18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 16) + 48);
  v6 = *(v3 + 80);
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));

  return v6(v3, v4, v2);
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18A60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18B38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18B80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18BC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},std::allocator<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D18C10;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::CallableRef<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D18C98;
  v3 = *v2;
  *(a2 + 24) = *(v2 + 2);
  *(a2 + 8) = v3;
  return a2;
}

uint64_t re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18C98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::internal::introspected::read<re::internal::Deserializer>(re::internal::Deserializer &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18C98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t *re::internal::translateType@<X0>(uint64_t *__return_ptr a1@<X8>, re::internal *this@<X0>, const re::TypeRegistry *a3@<X1>)
{
  if (*a3 != this)
  {
    v6 = *(*a3 + 856);
    if (v6)
    {
      v7 = **(a3 + 2);
      v11 = *a3;
      v12 = v7;
      re::internal::TypeTranslationTable::translateType(v6, &v11, v13);
      if (v13[0])
      {
        re::TypeRegistry::typeInfo(this, v13, &v11);
        v8 = &v12;
        v9 = a1;
        return re::TypeInfo::TypeInfo(v9, v8);
      }
    }

    else
    {
      v13[0] = 0;
      v13[1] = 0xFFFFFFFFLL;
    }

    v9 = a1;
    v8 = a3;
    return re::TypeInfo::TypeInfo(v9, v8);
  }

  return re::TypeInfo::TypeInfo(a1, a3);
}

uint64_t re::internal::getEnumConstantIndex(re::internal *this, const re::TypeInfo *a2, void *a3)
{
  v5 = re::TypeInfo::enumConstants(this);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v5;
  v8 = v6;
  v9 = 0;
  v10 = *(*(this + 2) + 8);
  while (memcmp(v7, a2, v10))
  {
    ++v9;
    v7 += 24;
    if (v8 == v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v9;
}

uint64_t re::internal::getEnumConstantIndex(re::internal *this, const re::TypeInfo *a2, const re::StringID *a3)
{
  v5 = re::TypeInfo::enumConstants(this);
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = (v5 + 8);
    while (!re::StringID::operator==(v9, a2))
    {
      ++v8;
      v9 += 3;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    return v8;
  }

  else
  {
LABEL_5:
    v10 = re::TypeInfo::renamedEnumConstants(this);
    if (v11)
    {
      v12 = v11;
      for (i = (v10 + 8); !re::StringID::operator==(i, a2); i += 3)
      {
        v7 = (v7 + 1);
        if (!--v12)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

__n128 re::internal::upgradeObject@<Q0>(char *a1@<X0>, uint64_t **a2@<X1>, char *a3@<X2>, uint64_t **a4@<X3>, re::Allocator *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v54 = *MEMORY[0x1E69E9840];
  while (1)
  {
    re::TypeInfo::nextVersion(a2, a4, v48);
    if ((v48[0] & 1) == 0)
    {
      re::TypeInfo::releaseInstance(a2, a1, v8, v7);
      v33 = re::TypeInfo::name(a4)[1];
      v34 = re::DataArray<re::TextureAtlasTile>::tryGet((*a2 + 12), *a2[2]);
      if (v34)
      {
        v36 = *(v34 + 16);
      }

      else
      {
        v36 = 0xFFFFFFFFLL;
      }

      re::DynamicString::format(buf, "Failed to upgrade type %s version %u to the next version. Type info is missing.", v35, v33, v36);
      goto LABEL_45;
    }

    v12 = v49[0];
    v13 = *v50;
    v47[0] = 0xAE8345F9D646D604;
    v47[1] = "ComplexVersioningAttribute";
    v14 = re::TypeRegistry::typeID(v51, v49[0], v47);
    if (v51[0] && (*buf = v51[1], *&buf[8] = v13, *&buf[16] = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v12 + 768, buf)) != 0))
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    if (v47[0])
    {
      if (v47[0])
      {
      }
    }

    if (!v15 || !*v15)
    {
      re::TypeInfo::releaseInstance(a2, a1, v8, v7);
      v29 = re::TypeInfo::name(a4)[1];
      v30 = re::DataArray<re::TextureAtlasTile>::tryGet((*a2 + 12), *a2[2]);
      if (v30)
      {
        v32 = *(v30 + 16);
      }

      else
      {
        v32 = 0xFFFFFFFFLL;
      }

      re::DynamicString::format(buf, "Failed to upgrade type %s version %u to the next version. Upgrade function is missing.", v31, v29, v32);
      goto LABEL_45;
    }

    v16 = re::DataArray<re::TextureAtlasTile>::tryGet(v49[0] + 96, *v50);
    if (v16)
    {
      v17 = *(v16 + 16);
    }

    else
    {
      v17 = -1;
    }

    Instance = re::DataArray<re::TextureAtlasTile>::tryGet((*a4 + 12), *a4[2]);
    if (Instance)
    {
      v19 = *(Instance + 4);
    }

    else
    {
      v19 = -1;
    }

    v20 = a3;
    if (v17 != v19)
    {
      Instance = re::TypeInfo::createInstance(v49, v8, v7);
      v20 = Instance;
    }

    v21 = *re::foundationSerializationLogObjects(Instance);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = re::TypeInfo::name(a4)[1];
      v23 = re::DataArray<re::TextureAtlasTile>::tryGet((*a2 + 12), *a2[2]);
      if (v23)
      {
        v24 = *(v23 + 16);
      }

      else
      {
        v24 = -1;
      }

      v25 = re::DataArray<re::TextureAtlasTile>::tryGet(v49[0] + 96, *v50);
      if (v25)
      {
        v26 = *(v25 + 16);
      }

      else
      {
        v26 = -1;
      }

      *buf = 136315650;
      *&buf[4] = v22;
      *&buf[12] = 1024;
      *&buf[14] = v24;
      *&buf[18] = 1024;
      *&buf[20] = v26;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_INFO, "Upgrading type %s from version %u to %u.", buf, 0x18u);
      v8 = a5;
      v7 = a6;
    }

    v27 = (*v15)(v7, a1, v20);
    re::TypeInfo::releaseInstance(a2, a1, v8, v7);
    if ((v27 & 1) == 0)
    {
      break;
    }

    re::TypeInfo::operator=(a2, v49);
    a1 = v20;
    if (v17 == v19)
    {
      *a7 = 1;
      return result;
    }
  }

  if (v17 != v19)
  {
    re::TypeInfo::releaseInstance(v49, v20, v8, v7);
  }

  v37 = re::TypeInfo::name(a4)[1];
  v38 = re::DataArray<re::TextureAtlasTile>::tryGet((*a2 + 12), *a2[2]);
  if (v38)
  {
    v40 = *(v38 + 16);
  }

  else
  {
    v40 = 0xFFFFFFFFLL;
  }

  re::DynamicString::format(buf, "Failed to upgrade type %s version %u to the next version. Upgrade function failed.", v39, v37, v40);
LABEL_45:
  result = *buf;
  v41 = *&buf[16];
  v42 = v53;
  *a7 = 0;
  *(a7 + 8) = 400;
  *(a7 + 16) = re::FoundationErrorCategory(void)::instance;
  *(a7 + 24) = result;
  *(a7 + 40) = v41;
  *(a7 + 48) = v42;
  return result;
}

uint64_t *re::internal::actualType@<X0>(uint64_t *__return_ptr a1@<X8>, char **this@<X0>, void **a3@<X1>)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 10), v9);
  result = re::TypeInfo::TypeInfo(v8, &v9[1]);
  if (*this)
  {
    result = re::TypeInfo::getActualType(a1, v8, *this);
    if (!*a1)
    {
      result = re::TypeInfo::getActualTypeFromPointer(v9, a3, this);
      *a1 = *v9;
    }
  }

  else
  {
    v7 = *v8[2];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

void re::internal::setActualType(uint64_t *a1, re **a2, re **a3)
{
  v6 = *a2;
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 10), &v18);
  re::TypeInfo::TypeInfo(v17, v19);
  re::TypeRegistry::typeInfo(v6, a3, &v18);
  re::TypeInfo::TypeInfo(v15, v19);
  if (*(v16 + 128) == 1)
  {
    v7 = *(v16 + 136);
    if (*(a2 + 12) == 9 && (v8 = a2[2], (*(v8 + 25) & 0xFFFFFF) != 0) && *(v8 + 26))
    {
      v14 = *a3;
      re::TypeInfo::setActualTypeForPointer(a2, a1, &v14);
    }

    else
    {
      re::TypeInfo::rootClass(&v18, v17);
      re::TypeInfo::customClassIDMember(v12, &v18);
      if (LOBYTE(v12[0]) == 1)
      {
        v9 = *a1;
        v10 = *(v13 + 24);
        re::TypeRegistry::typeInfo(v12[1], *v13, &v18);
        re::TypeInfo::TypeInfo(v11, v19);
        re::internal::writeUnsigned((v9 + v10), v11, v7);
      }
    }
  }
}

BOOL re::internal::areCompatible(re **a1, uint64_t a2)
{
  re::TypeRegistry::typeInfo(*a1, *(a1[2] + 10), v16);
  re::TypeInfo::TypeInfo(&v13, v17);
  if (v13 == *a2)
  {
    v4 = *v15;
    v5 = *(a2 + 8);
    if (*v15 == v5)
    {
      v7 = WORD1(v4) == WORD1(v5);
      v6 = (v5 ^ v4) & 0xFFFFFF00000000;
      v7 = v7 && v6 == 0;
      if (v7)
      {
        return 1;
      }
    }
  }

  re::TypeRegistry::typeInfo(*a1, a2, v16);
  re::TypeInfo::TypeInfo(&v11, v17);
  result = 0;
  if (v14 == 8 && v12 == 8)
  {
    v9 = *v15;
    v10[0] = v13;
    v10[1] = v9;
    return re::TypeInfo::isSubClassOf(&v11, v10);
  }

  return result;
}

void re::PropertyBagHelper::makeWithIntrospectedData(const re::IntrospectionBase *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) == 8)
  {
    v26 = a3;
    v9 = v8;
    if (v7)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v25 = 0x7FFFFFFFLL;
      re::PersistedSchema::addIntrospectionGraph(&v22, a1);
      if ((atomic_load_explicit(&qword_1EE1C3CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3CB0))
      {
        _MergedGlobals_557 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(0, v21);
        __cxa_guard_release(&qword_1EE1C3CB0);
      }

      v13 = v12;
      if (v11)
      {
        v14 = MEMORY[0x1E696AEC0];
        re::getPrettyTypeName(buf, a1);
        if (buf[8])
        {
          v15 = v30;
        }

        else
        {
          v15 = &buf[9];
        }

        v16 = [v14 stringWithUTF8String:v15];
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }

        v27[0] = @"type";
        v27[1] = @"value";
        v28[0] = v16;
        v28[1] = v9;
        v27[2] = @"schema";
        v28[2] = v13;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
        *a4 = 1;
        *(a4 + 8) = v17;
      }

      else
      {
        *a4 = 0;
      }

      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v22);
    }

    else
    {
      *a4 = 0;
    }
  }

  else
  {
    v18 = *re::foundationSerializationLogObjects(a1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      re::getPrettyTypeName(&v22, a1);
      v20 = (BYTE8(v22) & 1) != 0 ? v23 : (&v22 + 9);
      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "PropertyBagWriter; only works on structures '%s'.", buf, 0xCu);

      if (v22)
      {
        if (BYTE8(v22))
        {
          (*(*v22 + 40))();
        }
      }
    }

    *a4 = 0;
  }
}

unint64_t anonymous namespace::PropertyBagWriter::writeValue(_anonymous_namespace_::PropertyBagWriter *this, const re::IntrospectionBase *a2, unsigned int *a3, double a4)
{
  v94 = *MEMORY[0x1E69E9840];
  switch(*(a2 + 4))
  {
    case 0:
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v78);
      }

      if (re::introspect<BOOL>(BOOL)::info != a2)
      {
        {
          re::introspect<char>(BOOL)::info = re::introspect_char(0, v79);
        }

        if (re::introspect<char>(BOOL)::info == a2)
        {
          [MEMORY[0x1E696AD98] numberWithChar:{*a3, a4}];
          objc_claimAutoreleasedReturnValue();
        }

        else
        {
          {
            re::introspect<double>(BOOL)::info = re::introspect_double(0, v81);
          }

          if (re::introspect<double>(BOOL)::info == a2)
          {
            [MEMORY[0x1E696AD98] numberWithDouble:*a3];
            objc_claimAutoreleasedReturnValue();
          }

          else
          {
            {
              re::introspect<float>(BOOL)::info = re::introspect_float(0, v82);
            }

            if (re::introspect<float>(BOOL)::info == a2)
            {
              LODWORD(a4) = *a3;
              [MEMORY[0x1E696AD98] numberWithFloat:a4];
              objc_claimAutoreleasedReturnValue();
            }

            else
            {
              {
                re::introspect<short>(BOOL)::info = re::introspect_short(0, v83);
              }

              if (re::introspect<short>(BOOL)::info == a2)
              {
                [MEMORY[0x1E696AD98] numberWithShort:{*a3, a4}];
                objc_claimAutoreleasedReturnValue();
              }

              else
              {
                {
                  re::introspect<int>(BOOL)::info = re::introspect_int(0, v84);
                }

                if (re::introspect<int>(BOOL)::info == a2)
                {
                  [MEMORY[0x1E696AD98] numberWithInt:{*a3, a4}];
                  objc_claimAutoreleasedReturnValue();
                }

                else
                {
                  {
                    re::introspect<long>(BOOL)::info = re::introspect_long(0, v85);
                  }

                  if (re::introspect<long>(BOOL)::info == a2)
                  {
                    [MEMORY[0x1E696AD98] numberWithLong:{*a3, a4}];
                    objc_claimAutoreleasedReturnValue();
                  }

                  else
                  {
                    {
                      re::introspect<unsigned long>(BOOL)::info = re::introspect_size_t(0, v86);
                    }

                    if (re::introspect<unsigned long>(BOOL)::info != a2)
                    {
                      {
                        re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v87);
                      }

                      if (re::introspect<long long>(BOOL)::info == a2)
                      {
                        [MEMORY[0x1E696AD98] numberWithLongLong:{*a3, a4}];
                        objc_claimAutoreleasedReturnValue();
                        goto LABEL_104;
                      }

                      if (re::introspect<unsigned char>(0) == a2)
                      {
                        [MEMORY[0x1E696AD98] numberWithUnsignedChar:*a3];
                        objc_claimAutoreleasedReturnValue();
                        goto LABEL_104;
                      }

                      if (re::introspect<unsigned short>(0) == a2)
                      {
                        [MEMORY[0x1E696AD98] numberWithUnsignedShort:*a3];
                        objc_claimAutoreleasedReturnValue();
                        goto LABEL_104;
                      }

                      if (re::introspect<unsigned int>(0) == a2)
                      {
                        [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a3];
                        objc_claimAutoreleasedReturnValue();
                        goto LABEL_104;
                      }

                      v7 = re::introspect<unsigned long long>(0);
                      if (v7 != a2)
                      {
                        v8 = *re::foundationSerializationLogObjects(v7);
                        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                        {
                          v9 = v8;
                          re::getPrettyTypeName(buf, a2);
                          if (buf[8])
                          {
                            v10 = *&buf[16];
                          }

                          else
                          {
                            v10 = &buf[9];
                          }

                          LODWORD(v88) = 136315138;
                          *(&v88 + 4) = v10;
LABEL_131:
                          _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "PropertyBagWriter; unhandled type '%s'.", &v88, 0xCu);

                          if (*buf && (buf[8] & 1) != 0)
                          {
                            (*(**buf + 40))(*buf, *&buf[16]);
                          }
                        }

LABEL_56:
                        v41 = 0;
                        LOBYTE(v34) = 0;
                        return v34 | v41;
                      }
                    }

                    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{*a3, a4}];
                    objc_claimAutoreleasedReturnValue();
                  }
                }
              }
            }
          }
        }

LABEL_104:
        v41 = 0;
        LOBYTE(v34) = 1;
        return v34 | v41;
      }

      if (*a3 != 1)
      {
        [MEMORY[0x1E696AD98] numberWithBool:{0, a4}];
        objc_claimAutoreleasedReturnValue();
        goto LABEL_104;
      }

      LOBYTE(v34) = 1;
      [MEMORY[0x1E696AD98] numberWithBool:{1, a4}];
      objc_claimAutoreleasedReturnValue();
LABEL_112:
      v41 = 0;
      return v34 | v41;
    case 1:
      v47 = *a3;
      re::PolymorphicData::makeWithPointer(buf, *(a2 + 6), *a3);
      if (!v47)
      {
        goto LABEL_86;
      }

      v48 = *(a2 + 6);
      {
        re::introspect<char>(BOOL)::info = re::introspect_char(0, v80);
      }

      if (v48 == re::introspect<char>(BOOL)::info)
      {
        [MEMORY[0x1E696AEC0] stringWithUTF8String:v47];
        objc_claimAutoreleasedReturnValue();
        goto LABEL_115;
      }

      if (*&buf[16])
      {
        goto LABEL_121;
      }

      v23 = *(a2 + 6);
      v22 = this;
      v20 = v47;
      goto LABEL_120;
    case 2:
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*(a2 + 16) < 1)
      {
        goto LABEL_61;
      }

      v43 = 0;
      while (1)
      {
        v46 = v45;
        if ((v44 & 1) == 0)
        {
          break;
        }

        [v12 addObject:v45];

        if (++v43 >= *(a2 + 16))
        {
          goto LABEL_61;
        }
      }

      goto LABEL_110;
    case 3:
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!(*(*a2 + 88))(a2, a3))
      {
        goto LABEL_61;
      }

      v35 = 0;
      while (1)
      {
        v36 = (*(*a2 + 104))(a2, a3, v35);
        v18 = v39;
        if ((v38 & 1) == 0)
        {
          goto LABEL_96;
        }

        [v12 addObject:v39];

        if ((*(*a2 + 88))(a2, a3) <= ++v35)
        {
          goto LABEL_61;
        }
      }

    case 4:
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!(*(*a2 + 80))(a2, a3))
      {
        goto LABEL_61;
      }

      v13 = 0;
      while (1)
      {
        v14 = (*(*a2 + 104))(a2, a3, v13);
        v18 = v17;
        if ((v16 & 1) == 0)
        {
          break;
        }

        [v12 addObject:v17];

        if ((*(*a2 + 80))(a2, a3) <= ++v13)
        {
LABEL_61:
          v12;
          LOBYTE(v34) = 1;
          goto LABEL_111;
        }
      }

LABEL_96:

LABEL_110:
      LOBYTE(v34) = 0;
LABEL_111:

      goto LABEL_112;
    case 5:
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *buf = (*(*a2 + 88))(a2, a3);
      *&buf[8] = v24;
      while (2)
      {
        v25 = (*(*a2 + 96))(a2, a3);
        if (*buf == v25 && *&buf[8] == v26 && *&buf[10] == HIWORD(v26))
        {
          goto LABEL_61;
        }

        v27 = (*(*a2 + 104))(a2, buf);
        v31 = v30;
        if (v29)
        {
          [v12 addObject:v30];

          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(buf);
          continue;
        }

        break;
      }

      LOBYTE(v34) = 0;
      goto LABEL_111;
    case 6:
      if (a3[2])
      {
        v50 = *(a3 + 2);
      }

      else
      {
        v50 = a3 + 9;
      }

      [MEMORY[0x1E696AEC0] stringWithUTF8String:{v50, a4}];
      objc_claimAutoreleasedReturnValue();
      goto LABEL_104;
    case 7:
      *&v88 = objc_alloc_init(MEMORY[0x1E695DF90]);
      operator new();
    case 8:
      v58 = *(a2 + 14);
      if (!v58)
      {
        goto LABEL_87;
      }

      v59 = *(a2 + 8);
      v60 = 1;
      v61 = *(a2 + 14);
      v62 = 1;
      do
      {
        if (**v59 == 4 && (*(*v59 + 4) & 1) != 0)
        {
          break;
        }

        v62 = v60++ < v58;
        v59 += 8;
        --v61;
      }

      while (v61);
      if (v62)
      {
        StructureMember = re::introspectionFirstStructureMember(a2, a2);
        if (StructureMember)
        {
          goto LABEL_121;
        }

        v71 = *re::foundationSerializationLogObjects(0);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v76 = v71;
          re::getPrettyTypeName(buf, a2);
          v77 = (buf[8] & 1) != 0 ? *&buf[16] : &buf[9];
          LODWORD(v88) = 136315138;
          *(&v88 + 4) = v77;
          _os_log_error_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_ERROR, "PropertyBagReader; expected member in for struct '%s'.", &v88, 0xCu);

          if (*buf)
          {
            if (buf[8])
            {
              (*(**buf + 40))();
            }
          }
        }

        v34 = 0;
      }

      else
      {
LABEL_87:
        v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
        {
          v66 = MEMORY[0x1E696AEC0];
          re::getPrettyTypeName(buf, a2);
          if (buf[8])
          {
            v67 = *&buf[16];
          }

          else
          {
            v67 = &buf[9];
          }

          v68 = [v66 stringWithUTF8String:v67];
          if (*buf && (buf[8] & 1) != 0)
          {
            (*(**buf + 40))();
          }

          *&v88 = @"type";
          *(&v88 + 1) = @"value";
          *buf = v68;
          *&buf[8] = v65;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v88 count:2];
          objc_claimAutoreleasedReturnValue();

          v34 = 1;
        }

        else
        {
          v34 = 0;
        }
      }

      goto LABEL_122;
    case 9:
      *&v88 = 0;
      v51 = memcpy(&v88, a3, *(a2 + 5));
      v52 = *(a2 + 8);
      v53 = v88;
      v54 = *v52;
      if (!v54)
      {
        goto LABEL_75;
      }

      v55 = *(v52 + 1);
      do
      {
        v56 = *v55;
        if (**v55 == 1 && *(v56 + 1) == v88)
        {
          [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v56 + 2)];
          objc_claimAutoreleasedReturnValue();
          LOBYTE(v34) = 1;
          goto LABEL_112;
        }

        ++v55;
        --v54;
      }

      while (v54);
LABEL_75:
      v57 = *re::foundationSerializationLogObjects(v51);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v73 = *(a2 + 6);
        *buf = 134218242;
        *&buf[4] = v53;
        *&buf[12] = 2080;
        *&buf[14] = v73;
        _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, "PropertyBagWriter; unknown enum value %llu in %s.", buf, 0x16u);
      }

      LOBYTE(v34) = 0;
      goto LABEL_112;
    case 0xA:
      re::StringID::StringID(buf, a3);
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*&buf[8]];
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      goto LABEL_104;
    case 0xB:
      *&buf[8] = 0;
      *&buf[16] = 0;
      v93 = 0;
      re::DynamicString::setCapacity(buf, 0);
      v32 = (*(a2 + 9))(*this, a2, a3, buf);
      if (v32)
      {
        if (buf[8])
        {
          v33 = *&buf[16];
        }

        else
        {
          v33 = &buf[9];
        }

        [MEMORY[0x1E696AEC0] stringWithUTF8String:v33];
        objc_claimAutoreleasedReturnValue();
        LOBYTE(v34) = 1;
      }

      else
      {
        v69 = *re::foundationSerializationLogObjects(v32);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v74 = v69;
          re::getPrettyTypeName(&v88, a2);
          v75 = (BYTE8(v88) & 1) != 0 ? v89 : (&v88 + 9);
          *v90 = 136315138;
          v91 = v75;
          _os_log_error_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_ERROR, "PropertyBagWriter; serialization callback of type '%s' failed.", v90, 0xCu);

          if (v88)
          {
            if (BYTE8(v88))
            {
              (*(*v88 + 40))();
            }
          }
        }

        LOBYTE(v34) = 0;
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      goto LABEL_112;
    case 0xD:
      if ((*(*a2 + 56))(a2, a3, a4))
      {
        v19 = *(a2 + 6);
        v20 = (*(*a2 + 80))(a2, a3);
        v22 = this;
        v23 = v19;
LABEL_120:
LABEL_121:
        v34 = v49;
      }

      else
      {
LABEL_86:
        [MEMORY[0x1E695DFB0] null];
        objc_claimAutoreleasedReturnValue();
LABEL_115:
        v34 = 1;
      }

LABEL_122:
      v41 = v34 & 0xFFFFFFFFFFFFFF00;
      return v34 | v41;
    default:
      v40 = *re::foundationSerializationLogObjects(this);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      v9 = v40;
      re::getPrettyTypeName(buf, a2);
      if (buf[8])
      {
        v72 = *&buf[16];
      }

      else
      {
        v72 = &buf[9];
      }

      LODWORD(v88) = 136315138;
      *(&v88 + 4) = v72;
      goto LABEL_131;
  }
}

uint64_t anonymous namespace::PropertyBagWriter::writePolymorphicPointer(_anonymous_namespace_::PropertyBagWriter *this, re::PolymorphicData *a2, char *a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  __dst = 0;
  v8 = memcpy(&__dst, v6, *(v7 + 20));
  v10 = *(a2 + 2);
  v11 = *v10;
  if (v11)
  {
    v12 = *(v10 + 1) + 24;
    while (*v12 != __dst)
    {
      v12 += 40;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }

    v17 = v16;
    if (v15)
    {
      if (*(*(v12 - 16) + 16) == 8)
      {
        v18 = v16;
        v14 = 1;
LABEL_14:

        return v14;
      }

      v19 = *re::foundationSerializationLogObjects(v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "PropertyBagWriter; polymorphic type must be structure.", v21, 2u);
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

LABEL_5:
  v13 = *re::foundationSerializationLogObjects(v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "PropertyBagWriter; failed to find polymorphic type.", buf, 2u);
  }

  return 0;
}

__n128 std::__function::__func<anonymous namespace::PropertyBagWriter::writeHashTable(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1},std::allocator<anonymous namespace::PropertyBagWriter::writeHashTable(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D18CD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::PropertyBagWriter::writeHashTable(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1},std::allocator<anonymous namespace::PropertyBagWriter::writeHashTable(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, unsigned int **a2, unsigned int **a3, double a4)
{
  v5 = *a3;
  v6 = *(a1 + 24);
  v10 = v9;
  if (v7)
  {
    v13 = v11;
    if (v12)
    {
      [**(a1 + 8) setObject:v11 forKey:v10];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t anonymous namespace::PropertyBagWriter::writeMember(_anonymous_namespace_::PropertyBagWriter *this, const re::IntrospectionMember *a2, char *a3, double a4)
{
  v6 = this;
  v42[3] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 10);
  v8 = *(a2 + 9);
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v15 = *re::foundationSerializationLogObjects(this);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v16 = v15;
        re::makePrettyMemberName(*(a2 + 1), &v40);
        if (BYTE8(v40))
        {
          v17 = v41;
        }

        else
        {
          v17 = &v40 + 9;
        }

        *buf = 136315138;
        *&buf[4] = v17;
        v18 = "PropertyBagWriter; unexpected parent for '%s'.";
LABEL_20:
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);

        if (v40 && (BYTE8(v40) & 1) != 0)
        {
          (*(*v40 + 40))();
        }

        goto LABEL_30;
      }

LABEL_15:
      v19 = *re::foundationSerializationLogObjects(this);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v16 = v19;
      re::makePrettyMemberName(*(a2 + 1), &v40);
      if (BYTE8(v40))
      {
        v20 = v41;
      }

      else
      {
        v20 = &v40 + 9;
      }

      *buf = 136315138;
      *&buf[4] = v20;
      v18 = "PropertyBagWriter; unknown member type for '%s'.";
      goto LABEL_20;
    }

    v23 = *&a3[v8];
    if (v23)
    {
      v24 = *(*(*(a2 + 2) + 48) + 64);
      v25 = *v24;
      if (**v24 != 2)
      {
        v26 = (v24 + 1);
        do
        {
          v27 = *v26++;
          v25 = v27;
        }

        while (*v27 != 2);
      }

      v28 = *(a2 + 6);
      *&v40 = &a3[*(a2 + 16)];
      *(&v40 + 1) = v28;
      v41 = *(v25 + 1);
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
      objc_claimAutoreleasedReturnValue();
      v6 = 1;
    }

    v22 = v6 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v9 = *(a2 + 6);
        if (v9)
        {
          v10 = *(a2 + 16);
          __dst = 0;
          v11 = memcpy(&__dst, &a3[v10], *(v9 + 20));
          if (!(__dst >> 31))
          {
            re::IntrospectionCStyleArray::IntrospectionCStyleArray(&v40, *(*(a2 + 2) + 48), __dst);
            ArcSharedObject::ArcSharedObject(buf, 0);
            v34 = 0x800000001;
            v35 = 8;
            v36 = 0;
            v37 = 0;
            v38 = 0xFFFFFFFFLL;
            *buf = &unk_1F5CBD2C0;
            v39[0] = &v40;
            v39[1] = 0;
            LOBYTE(v6) = v29;
            v22 = v29 & 0xFFFFFFFFFFFFFF00;
            *buf = &unk_1F5CBD2C0;
            re::SerializedReference<re::IntrospectionBase const*>::reset(v39);
            *buf = &unk_1F5CCF868;
            objc_destructInstance(&buf[8]);
            *&v40 = &unk_1F5CB0038;
            re::SerializedReference<re::IntrospectionBase const*>::reset(v42);
            *&v40 = &unk_1F5CCF868;
            objc_destructInstance(&v40 + 8);
            return v6 | v22;
          }

          v12 = *re::foundationSerializationLogObjects(v11);
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          v13 = *(a2 + 1);
          LODWORD(v40) = 136315138;
          *(&v40 + 4) = v13;
          v14 = "PropertyBagWriter; array too big for member '%s'.";
          goto LABEL_36;
        }

        v12 = *re::foundationSerializationLogObjects(this);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v31 = *(a2 + 1);
          LODWORD(v40) = 136315138;
          *(&v40 + 4) = v31;
          v14 = "PropertyBagWriter; failed to get array length for member '%s'.";
LABEL_36:
          _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v14, &v40, 0xCu);
        }

LABEL_30:
        v22 = 0;
        LOBYTE(v6) = 0;
        return v6 | v22;
      }

      goto LABEL_15;
    }

    LOBYTE(v6) = v21;
    v22 = v21 & 0xFFFFFFFFFFFFFF00;
  }

  return v6 | v22;
}

uint64_t anonymous namespace::PropertyBagWriter::writeMemberArray(_anonymous_namespace_::PropertyBagWriter *this, const re::IntrospectionStructure *a2, char *a3, NSMutableArray *a4)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!*(a2 + 14))
  {
LABEL_22:
    v23 = 1;
    goto LABEL_25;
  }

  v9 = 0;
  v25 = v28;
  v10 = 0x1E696A000uLL;
  while (1)
  {
    v11 = *(*(a2 + 8) + 8 * v9);
    if (*v11 != 1)
    {
      goto LABEL_21;
    }

    if (*(v11 + 40) != 3)
    {
      break;
    }

    {
      goto LABEL_24;
    }

LABEL_21:
    if (++v9 >= *(a2 + 14))
    {
      goto LABEL_22;
    }
  }

  v14 = v13;
  if (v12)
  {
    v15 = *(v10 + 3776);
    re::makePrettyMemberName(*(v11 + 8), &v26);
    if (v27)
    {
      v16 = v29;
    }

    else
    {
      v16 = v25;
    }

    v17 = [v15 stringWithUTF8String:{v16, v25}];
    if (v26 && (v27 & 1) != 0)
    {
      (*(*v26 + 40))();
    }

    v18 = v10;
    v19 = *(v10 + 3776);
    re::getPrettyTypeName(&v26, *(v11 + 16));
    if (v27)
    {
      v20 = v29;
    }

    else
    {
      v20 = v25;
    }

    v21 = [v19 stringWithUTF8String:v20];
    if (v26 && (v27 & 1) != 0)
    {
      (*(*v26 + 40))();
    }

    v30[0] = @"name";
    v30[1] = @"type";
    v31[0] = v17;
    v31[1] = v21;
    v30[2] = @"value";
    v31[2] = v14;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
    [(NSMutableArray *)v7 addObject:v22];

    v10 = v18;
    goto LABEL_21;
  }

LABEL_24:
  v23 = 0;
LABEL_25:

  return v23;
}

void serializeJSON(_anonymous_namespace_ *this@<X2>, uint64_t a2@<X0>, const re::TypeInfo *a3@<X1>, re::Allocator *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *(a6 + 16) = 0;
  ++*(a6 + 24);
  re::LeakTestAllocator::LeakTestAllocator(v83, "ScratchAllocator", a4);
  v81 = &unk_1F5CBC828;
  v82 = v83;
  v73 = 0;
  v74 = a6;
  v72 = &unk_1F5D0A850;
  v75[0] = &unk_1F5D0A8A8;
  v75[1] = 0;
  v75[2] = &unk_1F5CAC9D0;
  v75[3] = v75;
  v76 = 0;
  v78 = 0;
  v77 = 0;
  v79 = 0x2000;
  v80 = 0;
  *&v84[0].var0 = 0x92C38D6C53AC6124;
  v84[0].var1 = "JSON-SerializerV1";
  v30 = &unk_1F5D18D88;
  v14 = re::StringID::StringID(&v31, v84);
  v42 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37[0] = 0;
  v43 = 15;
  v45 = 1024;
  v44 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3CC0, memory_order_acquire) & 1) == 0)
  {
    v14 = __cxa_guard_acquire(&qword_1EE1C3CC0);
    if (v14)
    {
      re::Defaults::intValue(&v26, "maxSerializationDepth", v21);
      if (v26)
      {
        v22 = SDWORD1(v26);
      }

      else
      {
        v22 = 0;
      }

      _MergedGlobals_558 = v22;
      __cxa_guard_release(&qword_1EE1C3CC0);
    }
  }

  if (_MergedGlobals_558)
  {
    v45 = _MergedGlobals_558;
  }

  v48[4] = 0;
  v49 = 0;
  v46 = 0u;
  v47 = 0u;
  memset(v48, 0, 28);
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v56 = 0x7FFFFFFFLL;
  v30 = &unk_1F5D18D20;
  v57 = 1;
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  v60 = 0x7FFFFFFFLL;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v71 = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  if (*&v84[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v30, *a3);
  LOBYTE(v57) = a7;
  v50 = a5;
  v15 = v51;
  if (*(v51 + 6) != v52)
  {
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v30);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v30, v15);
  }

  v32 = &v72;
  v33 = 0;
  v34 = 0;
  v35 = a4;
  v36 = v83;
  *&v84[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v37, v84);
  if (v84[0].var0 == 1 && v84[1].var1 && (*&v84[2].var0 & 1) != 0)
  {
    (*(*v84[1].var1 + 40))();
  }

  v40[0] = v35;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v40, 0x40uLL);
  ++v41;
  *&v84[0].var0 = 0;
  memset(&v84[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v40, v84);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v48[0] = v36;
  re::DynamicArray<char>::setCapacity(v48, 0);
  ++LODWORD(v48[3]);
  v17 = (*(*v35 + 32))(v35, 72, 8);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 512;
  *(v17 + 56) = 324;
  *(v17 + 60) = 2304;
  *(&v46 + 1) = v17;
  *(v17 + 64) = 0x100000001;
  v18 = (*(*v35 + 32))(v35, 48, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  *(v18 + 40) = 256;
  *&v46 = v18;
  v19 = *(&v46 + 1);
  **(&v46 + 1) = v18;
  *(v19 + 60) = 0;
  *(v19 + 32) = *(v19 + 24);
  v30[6](&v30);
  if (isObject)
  {
    if ((v37[0] & 1) == 0)
    {
      (v30[9])(&v30, "object", 0, a2, a3, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v32, "root", 0) & 1) == 0)
    {
      *&v84[0].var0 = v37[0];
      if (v37[0] == 1)
      {
        *&v84[0].var1 = v38;
        re::DynamicString::DynamicString(&v84[1].var1, v39);
      }

      v26 = *&v84[0].var1;
      goto LABEL_27;
    }

    if ((v37[0] & 1) == 0)
    {
      (v30[9])(&v30, "object", 0, a2, a3, this, 0);
    }
  }

  v30[7](&v30);
  if (v37[0] != 1)
  {
    *a8 = 1;
    goto LABEL_31;
  }

  *&v84[0].var0 = v37[0];
  *&v84[0].var1 = v38;
  re::DynamicString::DynamicString(&v84[1].var1, v39);
  v26 = *&v84[0].var1;
LABEL_27:
  re::DynamicString::DynamicString(&v27, &v84[1].var1);
  *a8 = 0;
  *(a8 + 8) = v26;
  *(a8 + 24) = v27;
  *(a8 + 48) = v29;
  *(a8 + 32) = v28;
  v29 = 0;
  v27 = 0;
  v28 = 0uLL;
  if (v84[0].var0 == 1 && v84[1].var1 && (*&v84[2].var0 & 1) != 0)
  {
    (*(*v84[1].var1 + 40))();
  }

LABEL_31:
  v30 = &unk_1F5D18D20;
  if (*(&v68 + 1))
  {
    if (v71)
    {
      (*(**(&v68 + 1) + 40))();
    }

    v71 = 0;
    v69 = 0uLL;
    *(&v68 + 1) = 0;
    ++v70;
  }

  if (*(&v65 + 1))
  {
    if (v68)
    {
      (*(**(&v65 + 1) + 40))();
    }

    *&v68 = 0;
    v66 = 0uLL;
    *(&v65 + 1) = 0;
    ++v67;
  }

  if (v61)
  {
    if (v65)
    {
      (*(*v61 + 40))();
    }

    *&v65 = 0;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    ++v64;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v58);
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v30);
  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v72);
  re::LeakTestAllocator::~LeakTestAllocator(v83, v20);
}

uint64_t anonymous namespace::isObject(_anonymous_namespace_ *this, const re::TypeInfo *a2)
{
  if (*(this + 12) != 8)
  {
    return 0;
  }

  v3 = re::TypeInfo::name(this);
  if (*v3 >> 1 == 94623636)
  {
    v4 = v3[1];
    if (v4 == "char*")
    {
      return 0;
    }

    result = strcmp(v4, "char*");
    if (!result)
    {
      return result;
    }
  }

  v6 = re::TypeInfo::name(this);
  if (*v6 >> 1 != 0x134375A94D9F7110)
  {
    goto LABEL_8;
  }

  v7 = v6[1];
  if (v7 == "DynamicString")
  {
    return 0;
  }

  result = strcmp(v7, "DynamicString");
  if (!result)
  {
    return result;
  }

LABEL_8:
  v8 = re::TypeInfo::name(this);
  if (*v8 >> 1 == 0x22C6ED80D0CLL)
  {
    v9 = v8[1];
    if (v9 != "StringID")
    {
      return strcmp(v9, "StringID") != 0;
    }

    return 0;
  }

  return 1;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[34] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(&v13, a1[34], (a1 + 1));
  if (v13)
  {
    v3 = a1[34];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v8, v6);
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 70) = *(a1[34] + 6);
  return result;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, char *__s, int a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    v8[0] = 2;
    v9 = a3 | 0x20;
    v10 = __s;
    v11 = 0u;
    v12 = 0u;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v8);
  }

  return v3 ^ 1u;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18D20;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void deserializeJSON(re::TypeInfo *this@<X2>, re::Allocator *a2@<X4>, const char *a3@<X0>, const re::TypeInfo *a4@<X1>, _anonymous_namespace_ *a5@<X3>, uint64_t a6@<X8>, uint64_t a7@<X5>)
{
  Instance = re::TypeInfo::createInstance(this, a2, 0);
  deserializeJSONIntoExistingObject(&v19, a5, a3, a4, this, a2, a7, Instance);
  if (v19 == 1)
  {
    *a6 = v19;
    *(a6 + 8) = Instance;
  }

  else
  {
    re::TypeInfo::releaseInstance(this, Instance, a2, 0);
    v15 = v20;
    re::DynamicString::DynamicString(&v16, &v21);
    *a6 = 0;
    *(a6 + 8) = v15;
    *(a6 + 24) = v16;
    *(a6 + 48) = v18;
    *(a6 + 32) = v17;
    if (v21)
    {
      if (v22)
      {
        (*(*v21 + 40))();
      }
    }
  }
}

void deserializeJSONIntoExistingObject(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_ *this@<X3>, const char *a3@<X0>, const re::TypeInfo *a4@<X1>, re::TypeRegistry **a5@<X2>, re::Allocator *a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  v12 = a4;
  re::LeakTestAllocator::LeakTestAllocator(v77, "ScratchAllocator", a6);
  re::FixedArrayInputStream::FixedArrayInputStream(v76, a3, v12, -1);
  *&v78[0].var0 = 0x3ADDC8B1C9D5BCA6;
  v78[0].var1 = "JSON-DeserializerV1";
  v33 = &unk_1F5D18F98;
  v15 = re::StringID::StringID(&v34, v78);
  v46 = 0;
  v43[1] = 0;
  v44 = 0;
  v43[0] = 0;
  v45 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40[0] = 0;
  v47 = 15;
  v49 = 1024;
  v48 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3CD0, memory_order_acquire) & 1) == 0)
  {
    v15 = __cxa_guard_acquire(&qword_1EE1C3CD0);
    if (v15)
    {
      re::Defaults::intValue(&v29, "maxSerializationDepth", v25);
      if (v29)
      {
        v26 = SDWORD1(v29);
      }

      else
      {
        v26 = 0;
      }

      qword_1EE1C3CC8 = v26;
      __cxa_guard_release(&qword_1EE1C3CD0);
    }
  }

  if (qword_1EE1C3CC8)
  {
    v49 = qword_1EE1C3CC8;
  }

  v52[4] = 0;
  v53 = 0;
  v50 = 0u;
  v51 = 0u;
  memset(v52, 0, 28);
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v60 = 0x7FFFFFFFLL;
  v33 = &unk_1F5D18F30;
  v61 = 1;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v64 = 0x7FFFFFFFLL;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v75 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v72 = 0u;
  v73 = 0u;
  v74 = 0;
  if (*&v78[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v33, *a5);
  v54 = a7;
  v16 = v55;
  if (*(v55 + 6) != v56)
  {
    re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v33);
    re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v33, v16);
  }

  v35 = v76;
  v36 = 0;
  v37 = 0;
  v38 = a6;
  v39 = v77;
  *&v78[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v40, v78);
  if (v78[0].var0 == 1 && v78[1].var1 && (*&v78[2].var0 & 1) != 0)
  {
    (*(*v78[1].var1 + 40))(v78[1].var1, v78[2].var1);
  }

  v43[0] = v38;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v43, 0x40uLL);
  ++v45;
  *&v78[0].var0 = 0;
  memset(&v78[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v43, v78);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v52[0] = v39;
  re::DynamicArray<char>::setCapacity(v52, 0);
  ++LODWORD(v52[3]);
  v18 = (*(*v38 + 32))(v38, 72, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  *(v18 + 40) = 256;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 2;
  *(&v51 + 1) = v18;
  v19 = (*(*v38 + 32))(v38, 104, 8);
  *&v51 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::GenericDocument(v19, 0, 1024, 0);
  *&v78[0].var0 = v35;
  v78[0].var1 = 0;
  v78[1].var0 = 0;
  v78[1].var1 = 0;
  *&v78[2].var0 = 0;
  v20 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::ParseStream<440u,rapidjson::UTF8<char>,re::internal::RapidJSONInputStream>(v51, v78);
  v22 = *(v20 + 88);
  if (v22)
  {
    v23 = v22 > 0x11 ? "Unknown error." : *(off_1E8721C38 + (((v22 << 32) - 0x100000000) >> 29));
    re::DynamicString::format(&v29, "Failed to deserialize JSON: %s (Offset %zu)", v21, v23, *(v20 + 96));
    if (v29)
    {
      if (BYTE8(v29))
      {
        (*(*v29 + 40))();
      }
    }
  }

  if (v78[1].var1 < v78[1].var0)
  {
    (*(**&v78[0].var0 + 24))(*&v78[0].var0, (*&v78[1].var0 - LODWORD(v78[1].var1)));
  }

  v33[6](&v33);
  if (isObject)
  {
    if ((v40[0] & 1) == 0)
    {
      (v33[9])(&v33, "object", 0, a8, a5, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v35, "root", 0) & 1) == 0)
    {
      *&v78[0].var0 = v40[0];
      if (v40[0] == 1)
      {
        *&v78[0].var1 = v41;
        re::DynamicString::DynamicString(&v78[1].var1, v42);
      }

      v29 = *&v78[0].var1;
      goto LABEL_36;
    }

    if ((v40[0] & 1) == 0)
    {
      (v33[9])(&v33, "object", 0, a8, a5, this, 0);
      if ((v40[0] & 1) == 0)
      {
        ++*(v46 + 48 * v44 - 16);
      }
    }
  }

  v33[7](&v33);
  if (v40[0] != 1)
  {
    *a1 = 1;
    goto LABEL_40;
  }

  *&v78[0].var0 = v40[0];
  *&v78[0].var1 = v41;
  re::DynamicString::DynamicString(&v78[1].var1, v42);
  v29 = *&v78[0].var1;
LABEL_36:
  re::DynamicString::DynamicString(&v30, &v78[1].var1);
  *a1 = 0;
  *(a1 + 1) = v29;
  a1[3] = v30;
  a1[6] = v32;
  *(a1 + 2) = v31;
  v32 = 0;
  v30 = 0;
  v31 = 0uLL;
  if (v78[0].var0 == 1 && v78[1].var1 && (*&v78[2].var0 & 1) != 0)
  {
    (*(*v78[1].var1 + 40))();
  }

LABEL_40:
  v33 = &unk_1F5D18F30;
  if (*(&v72 + 1))
  {
    if (v75)
    {
      (*(**(&v72 + 1) + 40))();
    }

    v75 = 0;
    v73 = 0uLL;
    *(&v72 + 1) = 0;
    ++v74;
  }

  if (*(&v69 + 1))
  {
    if (v72)
    {
      (*(**(&v69 + 1) + 40))();
    }

    *&v72 = 0;
    v70 = 0uLL;
    *(&v69 + 1) = 0;
    ++v71;
  }

  if (v65)
  {
    if (v69)
    {
      (*(*v65 + 40))();
    }

    *&v69 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    ++v68;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v62);
  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v33);
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v76);
  re::LeakTestAllocator::~LeakTestAllocator(v77, v24);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[34] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(&v13, a1[34], (a1 + 1));
  if (v13)
  {
    v3 = a1[34];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v8, v6);
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 70) = *(a1[34] + 6);
  return result;
}

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, char *a2, int a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v16 = v3;
  v17 = v4;
  if (result)
  {
    if (*(result + 11) == 3)
    {
      v9[0] = 2;
      v10 = a3;
      v11 = a2;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = result;
      re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v9);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18F30;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void serializeJSON(uint64_t a1@<X0>, const re::TypeInfo *a2@<X1>, const re::TypeInfo *a3@<X2>, re::Allocator *a4@<X3>, uint64_t a5@<X4>, CFDataRef theData@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  if (CFDataGetLength(theData))
  {

    serializeJSON<re::CFDataOutputStream>(a3, a1, a2, a4, a5, theData, a7, a8);
  }

  else
  {

    serializeJSON<re::CFDataBufferedOutputStream>(a3, a1, a2, a4, a5, theData, a7, a8);
  }
}

void serializeJSON<re::CFDataBufferedOutputStream>(_anonymous_namespace_ *this@<X2>, uint64_t a2@<X0>, const re::TypeInfo *a3@<X1>, re::Allocator *a4@<X3>, uint64_t a5@<X4>, __CFData *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v75 = a6;
  re::LeakTestAllocator::LeakTestAllocator(v74, "ScratchAllocator", a4);
  Length = CFDataGetLength(a6);
  re::CFDataBufferedOutputStream::CFDataBufferedOutputStream(v73, &v75, Length);
  *&v76[0].var0 = 0x4C90FC40E60EA890;
  v76[0].var1 = "JSON-SerializerV1-CFData";
  v31 = &unk_1F5D193F8;
  v15 = re::StringID::StringID(&v32, v76);
  v43 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38[0] = 0;
  v44 = 15;
  v46 = 1024;
  v45 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3CE0, memory_order_acquire) & 1) == 0)
  {
    v15 = __cxa_guard_acquire(&qword_1EE1C3CE0);
    if (v15)
    {
      re::Defaults::intValue(&v27, "maxSerializationDepth", v22);
      if (v27)
      {
        v23 = SDWORD1(v27);
      }

      else
      {
        v23 = 0;
      }

      qword_1EE1C3CD8 = v23;
      __cxa_guard_release(&qword_1EE1C3CE0);
    }
  }

  if (qword_1EE1C3CD8)
  {
    v46 = qword_1EE1C3CD8;
  }

  v49[4] = 0;
  v50 = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v49, 0, 28);
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v57 = 0x7FFFFFFFLL;
  v31 = &unk_1F5D19390;
  v58 = 1;
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  v61 = 0x7FFFFFFFLL;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v72 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  if (*&v76[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, *a3);
  LOBYTE(v58) = a7;
  v51 = a5;
  v16 = v52;
  if (*(v52 + 6) != v53)
  {
    re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v31);
    re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, v16);
  }

  v33 = v73;
  v34 = 0;
  v35 = 0;
  v36 = a4;
  v37 = v74;
  *&v76[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v38, v76);
  if (v76[0].var0 == 1 && v76[1].var1 && (*&v76[2].var0 & 1) != 0)
  {
    (*(*v76[1].var1 + 40))(v76[1].var1, v76[2].var1);
  }

  v41[0] = v36;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v41, 0x40uLL);
  ++v42;
  *&v76[0].var0 = 0;
  memset(&v76[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v41, v76);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v49[0] = v37;
  re::DynamicArray<char>::setCapacity(v49, 0);
  ++LODWORD(v49[3]);
  v18 = (*(*v36 + 32))(v36, 64, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 512;
  *(v18 + 56) = 324;
  *(v18 + 60) = 0;
  *(&v47 + 1) = v18;
  v19 = (*(*v36 + 32))(v36, 48, 8);
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v19 + 40) = 256;
  *&v47 = v19;
  v20 = *(&v47 + 1);
  **(&v47 + 1) = v19;
  *(v20 + 60) = 0;
  *(v20 + 32) = *(v20 + 24);
  v31[6](&v31);
  if (isObject)
  {
    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a2, a3, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v33, "root", 0) & 1) == 0)
    {
      *&v76[0].var0 = v38[0];
      if (v38[0] == 1)
      {
        *&v76[0].var1 = v39;
        re::DynamicString::DynamicString(&v76[1].var1, v40);
      }

      v27 = *&v76[0].var1;
      goto LABEL_27;
    }

    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a2, a3, this, 0);
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(&v33);
  }

  v31[7](&v31);
  if (v38[0] != 1)
  {
    *a8 = 1;
    goto LABEL_31;
  }

  *&v76[0].var0 = v38[0];
  *&v76[0].var1 = v39;
  re::DynamicString::DynamicString(&v76[1].var1, v40);
  v27 = *&v76[0].var1;
LABEL_27:
  re::DynamicString::DynamicString(&v28, &v76[1].var1);
  *a8 = 0;
  *(a8 + 8) = v27;
  *(a8 + 24) = v28;
  *(a8 + 48) = v30;
  *(a8 + 32) = v29;
  v30 = 0;
  v28 = 0;
  v29 = 0uLL;
  if (v76[0].var0 == 1 && v76[1].var1 && (*&v76[2].var0 & 1) != 0)
  {
    (*(*v76[1].var1 + 40))();
  }

LABEL_31:
  v31 = &unk_1F5D19390;
  if (*(&v69 + 1))
  {
    if (v72)
    {
      (*(**(&v69 + 1) + 40))();
    }

    v72 = 0;
    v70 = 0uLL;
    *(&v69 + 1) = 0;
    ++v71;
  }

  if (*(&v66 + 1))
  {
    if (v69)
    {
      (*(**(&v66 + 1) + 40))();
    }

    *&v69 = 0;
    v67 = 0uLL;
    *(&v66 + 1) = 0;
    ++v68;
  }

  if (v62)
  {
    if (v66)
    {
      (*(*v62 + 40))();
    }

    *&v66 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    ++v65;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v59);
  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v31);
  re::CFDataBufferedOutputStream::~CFDataBufferedOutputStream(v73);
  re::LeakTestAllocator::~LeakTestAllocator(v74, v21);
}

void serializeJSON<re::CFDataOutputStream>(_anonymous_namespace_ *this@<X2>, uint64_t a2@<X0>, const re::TypeInfo *a3@<X1>, re::Allocator *a4@<X3>, uint64_t a5@<X4>, const __CFData *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v82 = a6;
  re::LeakTestAllocator::LeakTestAllocator(v81, "ScratchAllocator", a4);
  Length = CFDataGetLength(a6);
  v74 = 0;
  v75 = &v82;
  v73 = &unk_1F5D0A950;
  v76 = &unk_1F5CAC948;
  MutableBytePtr = CFDataGetMutableBytePtr(a6);
  v78 = Length;
  v79 = Length;
  v80 = 0;
  *&v83[0].var0 = 0x4C90FC40E60EA890;
  v83[0].var1 = "JSON-SerializerV1-CFData";
  v31 = &unk_1F5D19608;
  v15 = re::StringID::StringID(&v32, v83);
  v43 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38[0] = 0;
  v44 = 15;
  v46 = 1024;
  v45 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3CF0, memory_order_acquire) & 1) == 0)
  {
    v15 = __cxa_guard_acquire(&qword_1EE1C3CF0);
    if (v15)
    {
      re::Defaults::intValue(&v27, "maxSerializationDepth", v22);
      if (v27)
      {
        v23 = SDWORD1(v27);
      }

      else
      {
        v23 = 0;
      }

      qword_1EE1C3CE8 = v23;
      __cxa_guard_release(&qword_1EE1C3CF0);
    }
  }

  if (qword_1EE1C3CE8)
  {
    v46 = qword_1EE1C3CE8;
  }

  v49[4] = 0;
  v50 = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v49, 0, 28);
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v57 = 0x7FFFFFFFLL;
  v31 = &unk_1F5D195A0;
  v58 = 1;
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  v61 = 0x7FFFFFFFLL;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v72 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  if (*&v83[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, *a3);
  LOBYTE(v58) = a7;
  v51 = a5;
  v16 = v52;
  if (*(v52 + 6) != v53)
  {
    re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v31);
    re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v31, v16);
  }

  v33 = &v73;
  v34 = 0;
  v35 = 0;
  v36 = a4;
  v37 = v81;
  *&v83[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v38, v83);
  if (v83[0].var0 == 1 && v83[1].var1 && (*&v83[2].var0 & 1) != 0)
  {
    (*(*v83[1].var1 + 40))(v83[1].var1, v83[2].var1);
  }

  v41[0] = v36;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v41, 0x40uLL);
  ++v42;
  *&v83[0].var0 = 0;
  memset(&v83[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v41, v83);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v49[0] = v37;
  re::DynamicArray<char>::setCapacity(v49, 0);
  ++LODWORD(v49[3]);
  v18 = (*(*v36 + 32))(v36, 64, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 512;
  *(v18 + 56) = 324;
  *(v18 + 60) = 0;
  *(&v47 + 1) = v18;
  v19 = (*(*v36 + 32))(v36, 48, 8);
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v19 + 40) = 256;
  *&v47 = v19;
  v20 = *(&v47 + 1);
  **(&v47 + 1) = v19;
  *(v20 + 60) = 0;
  *(v20 + 32) = *(v20 + 24);
  v31[6](&v31);
  if (isObject)
  {
    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a2, a3, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v33, "root", 0) & 1) == 0)
    {
      *&v83[0].var0 = v38[0];
      if (v38[0] == 1)
      {
        *&v83[0].var1 = v39;
        re::DynamicString::DynamicString(&v83[1].var1, v40);
      }

      v27 = *&v83[0].var1;
      goto LABEL_27;
    }

    if ((v38[0] & 1) == 0)
    {
      (v31[9])(&v31, "object", 0, a2, a3, this, 0);
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(&v33);
  }

  v31[7](&v31);
  if (v38[0] != 1)
  {
    *a8 = 1;
    goto LABEL_31;
  }

  *&v83[0].var0 = v38[0];
  *&v83[0].var1 = v39;
  re::DynamicString::DynamicString(&v83[1].var1, v40);
  v27 = *&v83[0].var1;
LABEL_27:
  re::DynamicString::DynamicString(&v28, &v83[1].var1);
  *a8 = 0;
  *(a8 + 8) = v27;
  *(a8 + 24) = v28;
  *(a8 + 48) = v30;
  *(a8 + 32) = v29;
  v30 = 0;
  v28 = 0;
  v29 = 0uLL;
  if (v83[0].var0 == 1 && v83[1].var1 && (*&v83[2].var0 & 1) != 0)
  {
    (*(*v83[1].var1 + 40))();
  }

LABEL_31:
  v31 = &unk_1F5D195A0;
  if (*(&v69 + 1))
  {
    if (v72)
    {
      (*(**(&v69 + 1) + 40))();
    }

    v72 = 0;
    v70 = 0uLL;
    *(&v69 + 1) = 0;
    ++v71;
  }

  if (*(&v66 + 1))
  {
    if (v69)
    {
      (*(**(&v66 + 1) + 40))();
    }

    *&v69 = 0;
    v67 = 0uLL;
    *(&v66 + 1) = 0;
    ++v68;
  }

  if (v62)
  {
    if (v66)
    {
      (*(*v62 + 40))();
    }

    *&v66 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    ++v65;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v59);
  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v31);
  re::internal::MemoryOutputStream<__CFData *>::~MemoryOutputStream(&v73);
  re::LeakTestAllocator::~LeakTestAllocator(v81, v21);
}

void deserializeJSON(uint64_t *__return_ptr a1@<X8>, const __CFData *a2@<X0>, const re::TypeInfo *this@<X1>, const re::TypeInfo *a4@<X2>, re::Allocator *a5@<X3>, void *a6@<X4>)
{
  Instance = re::TypeInfo::createInstance(this, a5, 0);
  deserializeJSONIntoExistingObject(&v17, a2, this, a4, a5, a6, Instance);
  if (v17 == 1)
  {
    *a1 = v17;
    a1[1] = Instance;
  }

  else
  {
    re::TypeInfo::releaseInstance(this, Instance, a5, 0);
    v13 = v18;
    re::DynamicString::DynamicString(&v14, &v19);
    *a1 = 0;
    *(a1 + 1) = v13;
    a1[3] = v14;
    a1[6] = v16;
    *(a1 + 2) = v15;
    if (v19)
    {
      if (v20)
      {
        (*(*v19 + 40))();
      }
    }
  }
}

void deserializeJSONIntoExistingObject(uint64_t *__return_ptr a1@<X8>, const __CFData *a2@<X0>, const re::TypeInfo *a3@<X1>, const re::TypeInfo *this@<X2>, re::Allocator *a5@<X3>, void *a6@<X4>, void *a7@<X5>)
{
  v84 = a2;
  re::LeakTestAllocator::LeakTestAllocator(v83, "ScratchAllocator", a5);
  Length = CFDataGetLength(a2);
  v76 = 0;
  v77 = &v84;
  v75 = &unk_1F5D0AA38;
  v78 = &unk_1F5CAC908;
  BytePtr = CFDataGetBytePtr(a2);
  v80 = Length;
  v81 = Length;
  v82 = 0;
  *&v85[0].var0 = 0xD2A3148AB11B6CELL;
  v85[0].var1 = "JSON-DeserializerV1-CFData";
  v32 = &unk_1F5D191C8;
  v14 = re::StringID::StringID(&v33, v85);
  v45 = 0;
  v42[1] = 0;
  v43 = 0;
  v42[0] = 0;
  v44 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39[0] = 0;
  v46 = 15;
  v48 = 1024;
  v47 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3D00, memory_order_acquire) & 1) == 0)
  {
    v14 = __cxa_guard_acquire(&qword_1EE1C3D00);
    if (v14)
    {
      re::Defaults::intValue(&v28, "maxSerializationDepth", v24);
      if (v28)
      {
        v25 = SDWORD1(v28);
      }

      else
      {
        v25 = 0;
      }

      qword_1EE1C3CF8 = v25;
      __cxa_guard_release(&qword_1EE1C3D00);
    }
  }

  if (qword_1EE1C3CF8)
  {
    v48 = qword_1EE1C3CF8;
  }

  v51[4] = 0;
  v52 = 0;
  v49 = 0u;
  v50 = 0u;
  memset(v51, 0, 28);
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v59 = 0x7FFFFFFFLL;
  v32 = &unk_1F5D19160;
  v60 = 1;
  memset(v61, 0, sizeof(v61));
  v62 = 0;
  v63 = 0x7FFFFFFFLL;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v74 = 0;
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  if (*&v85[0].var0)
  {
  }

  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v32, *a3);
  v53 = a6;
  v15 = v54;
  if (*(v54 + 6) != v55)
  {
    re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(&v32);
    re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(&v32, v15);
  }

  v34 = &v75;
  v35 = 0;
  v36 = 0;
  v37 = a5;
  v38 = v83;
  *&v85[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v39, v85);
  if (v85[0].var0 == 1 && v85[1].var1 && (*&v85[2].var0 & 1) != 0)
  {
    (*(*v85[1].var1 + 40))(v85[1].var1, v85[2].var1);
  }

  v42[0] = v37;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v42, 0x40uLL);
  ++v44;
  *&v85[0].var0 = 0;
  memset(&v85[0].var0 + 1, 0, 44);
  re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(v42, v85);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v51[0] = v38;
  re::DynamicArray<char>::setCapacity(v51, 0);
  ++LODWORD(v51[3]);
  v17 = (*(*v37 + 32))(v37, 72, 8);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v17 + 40) = 256;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 64) = 2;
  *(&v50 + 1) = v17;
  v18 = (*(*v37 + 32))(v37, 104, 8);
  *&v50 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::GenericDocument(v18, 0, 1024, 0);
  *&v85[0].var0 = v34;
  v85[0].var1 = 0;
  v85[1].var0 = 0;
  v85[1].var1 = 0;
  *&v85[2].var0 = 0;
  v19 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::ParseStream<440u,rapidjson::UTF8<char>,re::internal::RapidJSONInputStream>(v50, v85);
  v21 = *(v19 + 88);
  if (v21)
  {
    v22 = v21 > 0x11 ? "Unknown error." : *(off_1E8721C38 + (((v21 << 32) - 0x100000000) >> 29));
    re::DynamicString::format(&v28, "Failed to deserialize JSON: %s (Offset %zu)", v20, v22, *(v19 + 96));
    if (v28)
    {
      if (BYTE8(v28))
      {
        (*(*v28 + 40))();
      }
    }
  }

  if (v85[1].var1 < v85[1].var0)
  {
    (*(**&v85[0].var0 + 24))(*&v85[0].var0, (*&v85[1].var0 - LODWORD(v85[1].var1)));
  }

  v32[6](&v32);
  if (isObject)
  {
    if ((v39[0] & 1) == 0)
    {
      (v32[9])(&v32, "object", 0, a7, a3, this, 0);
    }
  }

  else
  {
    if ((re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(&v34, "root", 0) & 1) == 0)
    {
      *&v85[0].var0 = v39[0];
      if (v39[0] == 1)
      {
        *&v85[0].var1 = v40;
        re::DynamicString::DynamicString(&v85[1].var1, v41);
      }

      v28 = *&v85[0].var1;
      goto LABEL_36;
    }

    if ((v39[0] & 1) == 0)
    {
      (v32[9])(&v32, "object", 0, a7, a3, this, 0);
      if ((v39[0] & 1) == 0)
      {
        ++*(v45 + 48 * v43 - 16);
      }
    }
  }

  v32[7](&v32);
  if (v39[0] != 1)
  {
    *a1 = 1;
    goto LABEL_40;
  }

  *&v85[0].var0 = v39[0];
  *&v85[0].var1 = v40;
  re::DynamicString::DynamicString(&v85[1].var1, v41);
  v28 = *&v85[0].var1;
LABEL_36:
  re::DynamicString::DynamicString(&v29, &v85[1].var1);
  *a1 = 0;
  *(a1 + 1) = v28;
  a1[3] = v29;
  a1[6] = v31;
  *(a1 + 2) = v30;
  v31 = 0;
  v29 = 0;
  v30 = 0uLL;
  if (v85[0].var0 == 1 && v85[1].var1 && (*&v85[2].var0 & 1) != 0)
  {
    (*(*v85[1].var1 + 40))();
  }

LABEL_40:
  v32 = &unk_1F5D19160;
  if (*(&v71 + 1))
  {
    if (v74)
    {
      (*(**(&v71 + 1) + 40))();
    }

    v74 = 0;
    v72 = 0uLL;
    *(&v71 + 1) = 0;
    ++v73;
  }

  if (*(&v68 + 1))
  {
    if (v71)
    {
      (*(**(&v68 + 1) + 40))();
    }

    *&v71 = 0;
    v69 = 0uLL;
    *(&v68 + 1) = 0;
    ++v70;
  }

  if (v64)
  {
    if (v68)
    {
      (*(*v64 + 40))();
    }

    *&v68 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    ++v67;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v61);
  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v32);
  re::internal::MemoryInputStream<__CFData const*>::~MemoryInputStream(&v75);
  re::LeakTestAllocator::~LeakTestAllocator(v83, v23);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[34] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(&v13, a1[34], (a1 + 1));
  if (v13)
  {
    v3 = a1[34];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v8, v6);
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 70) = *(a1[34] + 6);
  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D19160;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D18D88;
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18D20;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 0;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 272);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v31, v19, &v27);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 272);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 488);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v20 = *a5;
    *(&v20 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v20);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
        result = _os_crash("assertion failure: (!Unreachable code) Invalid PointerSharing type.");
        __break(1u);
        return result;
      }

      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
      _os_crash("assertion failure: (!Unreachable code) External references are not supported by the SerializerV1.");
      __break(1u);
      goto LABEL_9;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, char *__s, int, int, re *this, re::TypeInfo *)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

uint64_t re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, char *__s, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7)
{
  v224 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_18;
  }

  if (*this == *a6)
  {
    v14 = **(this + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_18;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_18;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    goto LABEL_361;
  }

  v18 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (v18)
  {
    v19 = *(v18 + 16);
  }

  else
  {
    v19 = -1;
  }

  v20 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = -1;
  }

  if (v19 != v21)
  {
    v33 = re::TypeInfo::name(this)[1];
    v34 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    if (v34)
    {
      v35 = *(v34 + 16);
    }

    else
    {
      v35 = 0xFFFFFFFFLL;
    }

    v52 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v52)
    {
      v53 = *(v52 + 16);
    }

    else
    {
      v53 = 0xFFFFFFFFLL;
    }

    v197 = v35;
    v200 = v53;
    v194 = v33;
    v23 = "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.";
    goto LABEL_94;
  }

LABEL_18:
  v22 = *(this + 12);
  if (v22 <= 4)
  {
    if (*(this + 12) <= 2u)
    {
      if (v22 != 1)
      {
        if (v22 != 2)
        {
          goto LABEL_88;
        }

        if (this == a6)
        {
          goto LABEL_257;
        }

        if (*this == *a6)
        {
          v68 = **(this + 2);
          v69 = **(a6 + 2);
          if (v68 == v69 && WORD1(v68) == WORD1(v69) && ((v69 ^ v68) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_128;
          }

          v24 = 2;
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, a3))
          {
            goto LABEL_128;
          }

          v24 = *(this + 12);
        }

        if (v24 != *(a6 + 12))
        {
          goto LABEL_361;
        }

        v70 = re::TypeInfo::name(this);
        v71 = re::TypeInfo::name(a6);
        if (!re::StringID::operator==(v70, v71))
        {
          goto LABEL_361;
        }

LABEL_128:
        if (*this != *a6)
        {
          v72 = !re::areSameTranslatedVersion(this, a6, a3);
          goto LABEL_258;
        }

        v145 = **(this + 2);
        v146 = **(a6 + 2);
        if (v145 != v146 || WORD1(v145) != WORD1(v146) || ((v146 ^ v145) & 0xFFFFFF00000000) != 0)
        {
          v72 = 1;
          goto LABEL_258;
        }

LABEL_257:
        v72 = 0;
LABEL_258:
        if (a7)
        {
          __dst.n128_u64[0] = 0;
          if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), __s, &__dst))
          {
            goto LABEL_362;
          }
        }

        else
        {
          if (*(*(this + 2) + 8) >= 9u)
          {
            v194 = re::TypeInfo::name(this)[1];
            v197 = *(*(this + 2) + 8);
            v23 = "Enum type %s has invalid size: %zu bytes";
            goto LABEL_94;
          }

          EnumConstantIndex = re::internal::getEnumConstantIndex(this, a4, a3);
          if ((EnumConstantIndex & 0x80000000) != 0)
          {
            __dst.n128_u64[0] = 0;
            memcpy(&__dst, a4, *(*(this + 2) + 8));
            v194 = __dst.n128_u64[0];
            v197 = re::TypeInfo::name(this)[1];
            v23 = "Value %zu is not a valid enum constant of %s.";
            goto LABEL_94;
          }

          v148 = EnumConstantIndex;
          if (v72)
          {
            v149 = *(*a6 + 856);
            if (!v149 || (v150 = re::internal::TypeTranslationTable::translateRuntimeEnum(v149, this, v148, a6)) == 0)
            {
              v151 = re::TypeInfo::enumConstants(this);
              v153 = v148;
              if (v152 > v148)
              {
                v194 = *(v151 + 24 * v148 + 16);
                v197 = re::TypeInfo::name(a6)[1];
                v23 = "Runtime enum constant %s does not exist in serialized type %s.";
                goto LABEL_94;
              }

LABEL_404:
              re::internal::assertLog(6, v152, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v153, v152);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v196, v199);
              __break(1u);
            }
          }

          else
          {
            v159 = re::TypeInfo::enumConstants(this);
            v161 = v148;
            if (v160 <= v148)
            {
LABEL_403:
              re::internal::assertLog(6, v160, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v161, v160);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v195, v198);
              __break(1u);
              goto LABEL_404;
            }

            if (!v159)
            {
              goto LABEL_362;
            }

            v150 = v159 + 24 * v148;
          }

          v162 = *(v150 + 16);
          __dst.n128_u64[0] = strlen(v162);
          if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), __s, &__dst))
          {
            goto LABEL_362;
          }
        }

        goto LABEL_390;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v94 = **(this + 2);
          v95 = **(a6 + 2);
          if (v94 != v95)
          {
            goto LABEL_361;
          }

          v17 = WORD1(v94) == WORD1(v95);
          v96 = (v95 ^ v94) & 0xFFFFFF00000000;
          if (!v17 || v96 != 0)
          {
            goto LABEL_361;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_361;
        }
      }

      v36 = re::TypeInfo::name(this);
      v37 = *v36 >> 1;
      if (v37 <= 0x16749DFF02)
      {
        if (*v36 >> 1 <= 0x685847B)
        {
          if (*v36 >> 1 > 0x2E9355)
          {
            if (v37 == 3052374)
            {
            }

            if (v37 != 3327612)
            {
              if (v37 == 97526364)
              {

                return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>((a1 + 3), __s, a4);
              }

              goto LABEL_382;
            }

LABEL_297:
          }

          if (v37 != 104431)
          {
            if (v37 == 3029738)
            {
            }

            goto LABEL_382;
          }

LABEL_319:
        }

        if (*v36 >> 1 <= 0xB9708BDD)
        {
          if (v37 != 109413500)
          {
            if (v37 == 2969009105)
            {

              return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>((a1 + 3), __s, a4);
            }

            goto LABEL_382;
          }

          goto LABEL_322;
        }

        if (v37 == 3111160798)
        {
        }

        if (v37 != 3393056694)
        {
          if (v37 != 0x16749D2549)
          {
            goto LABEL_382;
          }

LABEL_322:
        }

LABEL_310:
      }

      if (*v36 >> 1 > 0x303EE88E58CLL)
      {
        if (*v36 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v37 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_316;
          }

          if (v37 != 0x3AFE951B1F1F3391)
          {
            if (v37 != 0x412A40E9CB79BA35)
            {
              goto LABEL_382;
            }

            goto LABEL_310;
          }

          goto LABEL_313;
        }

        if (v37 == 0x303EE88E58DLL)
        {
          goto LABEL_310;
        }

        if (v37 == 0x2710786C3AC82DA1)
        {
LABEL_307:
        }
      }

      else
      {
        if (*v36 >> 1 > 0x18E6A9A092)
        {
          if (v37 != 0x18E6A9A093)
          {
            if (v37 != 0x303EE86A734)
            {
              if (v37 != 0x303EE8780EELL)
              {
                goto LABEL_382;
              }

LABEL_316:
            }

LABEL_313:
          }

          goto LABEL_307;
        }

        if (v37 == 0x16749DFF03)
        {
          goto LABEL_319;
        }

        if (v37 == 0x16749F63A2)
        {
          goto LABEL_297;
        }
      }

LABEL_382:
      v194 = re::TypeInfo::name(this)[1];
      v23 = "Unsupported basic type %s.";
      goto LABEL_94;
    }

    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_88;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v73 = **(this + 2);
          v74 = **(a6 + 2);
          if (v73 == v74)
          {
            v17 = WORD1(v73) == WORD1(v74);
            v75 = (v74 ^ v73) & 0xFFFFFF00000000;
            if (v17 && v75 == 0)
            {
              goto LABEL_138;
            }
          }
        }

        else if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_138;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_361;
        }

        v77 = *(this + 2);
        v78 = *(a6 + 2);
        v79 = *(v78 + 92) & 0xFFFFFF;
        if ((*(v77 + 92) & 0xFFFFFF) != 0)
        {
          if (!v79)
          {
            goto LABEL_361;
          }
        }

        else if (v79 || *(v77 + 96) != *(v78 + 96))
        {
          goto LABEL_361;
        }
      }

LABEL_138:
      if (a7)
      {
        v80 = a1[34];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
        re::internal::translateType(&v219, v80, v211);
        v81 = (*(*a1 + 80))(a1, &v219);
        if (!v81)
        {
          goto LABEL_228;
        }

        v82 = v81;
        v83 = *(a6 + 2);
        v84 = *(v83 + 92) & 0xFFFFFF;
        if (v84)
        {
          v85 = 0;
          v86 = 8;
        }

        else
        {
          v85 = *(v83 + 96);
          v86 = 4;
        }

        __dst.n128_u64[0] = v85;
        if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), __s, &__dst, v86))
        {
          goto LABEL_362;
        }

        if (v84)
        {
          v154 = v85 == 0;
        }

        else
        {
          v154 = 1;
        }

        v155 = v154;
        if (!v154)
        {
          v210[0] = 0;
          v210[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v210);
        }

        for (; v85; --v85)
        {
          v82(a1, 0, 0, 0, &v219, &v219, 1);
        }

        if (v155)
        {
          goto LABEL_340;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
        re::TypeInfo::TypeInfo(&__dst, this);
        v87 = (*(*a1 + 80))(a1, &v219);
        if (!v87)
        {
          goto LABEL_228;
        }

        v88 = v87;
        v89 = re::ArrayAccessor::size(&__dst, a4);
        v208[0] = v89;
        v90 = *(*(this + 2) + 92) & 0xFFFFFF;
        if (v90)
        {
          v91 = 8;
        }

        else
        {
          v91 = 4;
        }

        if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), __s, v208, v91))
        {
          goto LABEL_362;
        }

        if (v90)
        {
          v92 = v89 == 0;
        }

        else
        {
          v92 = 1;
        }

        v93 = v92;
        if (v92)
        {
          if (!v89)
          {
            goto LABEL_340;
          }
        }

        else
        {
          v163 = *a4;
          v209[0] = 0;
          v209[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v163, v209);
        }

        v164 = 0;
        do
        {
          v165 = re::ArrayAccessor::elementAt(&__dst, a4, v164);
          v88(a1, 0, 0, v165, &v219, v211, 0);
          ++v164;
        }

        while (v89 != v164);
        if (v93)
        {
          goto LABEL_340;
        }
      }

      (*(*a1 + 24))(a1);
      goto LABEL_340;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v98 = **(this + 2);
        v99 = **(a6 + 2);
        if (v98 == v99 && WORD1(v98) == WORD1(v99) && ((v99 ^ v98) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_169;
        }

        v39 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_169;
        }

        v39 = *(this + 12);
      }

      if (v39 != *(a6 + 12))
      {
        goto LABEL_361;
      }
    }

LABEL_169:
    if (a7)
    {
      __dst.n128_u8[0] = 0;
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), __s, &__dst);
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
      re::TypeInfo::TypeInfo(&__dst, this);
      v100 = (*(v215 + 88))(a4);
      LOBYTE(v210[0]) = v100 != 0;
      v101 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), __s, v210);
      if (v100)
      {
        v102 = (*(v215 + 88))(a4, v101);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, __s, 0, v102, &v219, v211, 0);
        }
      }
    }

    goto LABEL_390;
  }

  if (*(this + 12) > 6u)
  {
    if (v22 == 7)
    {
      if (this != a6)
      {
        if (*this == *a6)
        {
          v103 = **(this + 2);
          v104 = **(a6 + 2);
          if (v103 != v104)
          {
            goto LABEL_361;
          }

          v17 = WORD1(v103) == WORD1(v104);
          v105 = (v104 ^ v103) & 0xFFFFFF00000000;
          if (!v17 || v105 != 0)
          {
            goto LABEL_361;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_361;
        }
      }

      v40 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), __s, 16);
      if (a7)
      {
        if (!v40)
        {
LABEL_362:
          v51 = 0;
          return v51 & 1;
        }

        v219 = 0;
        if (*(*(a6 + 2) + 96))
        {
          re::TypeInfo::unionMember(&__dst, a6, 0);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, 0, &__dst, &__dst, 1);
          }
        }
      }

      else
      {
        if (!v40)
        {
          goto LABEL_362;
        }

        re::TypeInfo::TypeInfo(&__dst, this);
        Tag = re::UnionAccessor::readTag(&__dst, a4);
        *v211 = Tag;
        if (Tag < *(*(this + 2) + 96))
        {
          re::TypeInfo::unionMember(&v219, this, Tag);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, a4, &v219, &v219, 0);
          }
        }
      }

LABEL_389:
      goto LABEL_390;
    }

    if (v22 != 8)
    {
      if (v22 == 9)
      {
        v194 = re::TypeInfo::name(this)[1];
        v23 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_94:
        goto LABEL_362;
      }

LABEL_88:
      v194 = *(this + 12);
      v23 = "Invalid type category. Value = %d";
      goto LABEL_94;
    }

    if (!a7)
    {
      goto LABEL_82;
    }

    if (*(*(this + 2) + 49))
    {
      v62 = a1[34];
      *v211 = 0x2686EB529B3EE220;
      *&v211[8] = "DynamicString";
      re::TypeRegistry::typeInfo(&__dst, v62, v211);
      v63 = re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
      if (v211[0])
      {
        if (v211[0])
        {
        }
      }

      v64 = &v219;
      v65 = &v219;
      v66 = a1;
      v67 = __s;
    }

    else
    {
      v42 = re::TypeInfo::name(this);
      if ((*v42 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220 || (v44 = v42[1], v44 != "DynamicString") && strcmp(v44, "DynamicString"))
      {
LABEL_82:
        v45 = *(this + 2);
        v46 = *(v45 + 48);
        if ((v46 & 0x10) == 0 && *(this + 12) == 8)
        {
          v47 = *(v45 + 160);
          if (v47)
          {
            v48 = *this;
            v49 = *a6;
            __dst.n128_u64[0] = &unk_1F5D18DF0;
            __dst.n128_u64[1] = a1;
            *&v215 = v48;
            *(&v215 + 1) = v49;
            v216 = 0uLL;
            LODWORD(v217) = 1;
            *(&v217 + 1) = 0;
            *&v218 = 0;
            v219 = __s;
            LODWORD(v220) = a3;
            BYTE4(v220) = 0;
            v47(&__dst, a4, v50);
            v51 = *(a1 + 64) ^ 1;
            __dst.n128_u64[0] = &unk_1F5D18DF0;
            if (v216)
            {
              if ((v217 & 1) == 0)
              {
                (*(*v216 + 40))();
              }
            }

            return v51 & 1;
          }
        }

        if ((v46 & 4) == 0)
        {
          if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), __s, 0))
          {
            goto LABEL_362;
          }

          v54 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
          if (!v54 || *(v54 + 16) >= 2u)
          {
            v56 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
            if (v56)
            {
              v57 = *(v56 + 16);
            }

            else
            {
              v57 = -1;
            }

            __dst.n128_u32[0] = v57;
          }

          if (this == a6)
          {
            goto LABEL_375;
          }

          if (*this == *a6)
          {
            v178 = **(this + 2);
            v179 = **(a6 + 2);
            if (v178 == v179 && WORD1(v178) == WORD1(v179) && ((v179 ^ v178) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_375;
            }
          }

          else if (re::areSameTranslatedVersion(this, a6, v55))
          {
LABEL_375:
            re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
            goto LABEL_389;
          }

          if (*(this + 12) == *(a6 + 12))
          {
            re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
          }

          else
          {
            v180 = re::TypeInfo::name(this)[1];
            v181 = re::TypeInfo::name(a6);
          }

          goto LABEL_389;
        }

        re::TypeMemberCollection::TypeMemberCollection(&__dst, *this, v45);
        re::TypeMemberCollection::operator[](&__dst, 0, v211);
        v115 = *(*&v211[16] + 24);
        re::TypeRegistry::typeInfo(*v211, **&v211[16], &__dst);
        re::TypeInfo::TypeInfo(v210, &__dst.n128_i64[1]);
        if (this == a6)
        {
          goto LABEL_201;
        }

        if (*this == *a6)
        {
          v156 = **(this + 2);
          v157 = *(a6 + 2);
          v158 = *v157;
          if (v156 == *v157 && WORD1(v156) == WORD1(v158) && ((v158 ^ v156) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_201;
          }
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, v116))
          {
LABEL_201:
            if (a1[8])
            {
              goto LABEL_362;
            }

            v117 = (*(*a1 + 72))(a1, __s, a3, a4 + v115, v210, v210, a7);
LABEL_369:
            v51 = v117;
            return v51 & 1;
          }

          v157 = *(a6 + 2);
        }

        if (*(v157 + 96) == 1)
        {
          v174 = re::TypeMemberCollection::TypeMemberCollection(&v219, *a6, v157);
          re::TypeMemberCollection::operator[](v174, 0, v208);
          re::TypeRegistry::typeInfo(v208[0], *v208[2], &__dst);
          re::TypeInfo::TypeInfo(v209, &__dst.n128_i64[1]);
          if (a1[8])
          {
            goto LABEL_362;
          }

          v117 = (*(*a1 + 72))(a1, __s, a3, a4 + v115, v210, v209, a7);
          goto LABEL_369;
        }

LABEL_361:
        goto LABEL_362;
      }

      v66 = a1;
      v67 = __s;
      v64 = this;
      v65 = this;
    }

    re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v66, v67, v43, 0, v64, v65, 1);
    goto LABEL_390;
  }

  if (v22 == 5)
  {
    if (this != a6)
    {
      if (*this == *a6)
      {
        v107 = **(this + 2);
        v108 = **(a6 + 2);
        if (v107 != v108 || WORD1(v107) != WORD1(v108) || ((v108 ^ v107) & 0xFFFFFF00000000) != 0)
        {
          v41 = 5;
LABEL_186:
          if (v41 != *(a6 + 12))
          {
            goto LABEL_361;
          }
        }
      }

      else if (!re::areSameTranslatedVersion(this, a6, a3))
      {
        v41 = *(this + 12);
        goto LABEL_186;
      }
    }

    if (a7)
    {
      v109 = a1[34];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
      re::internal::translateType(&v219, v109, v211);
      if ((*(*a1 + 80))(a1, &v219))
      {
        __dst.n128_u64[0] = 0;
        v51 = 0;
        if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), __s, &__dst, 0))
        {
          return v51 & 1;
        }

        goto LABEL_340;
      }

LABEL_228:
      v124 = &v219;
LABEL_229:
      re::TypeInfo::name(v124);
      goto LABEL_362;
    }

    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
    re::TypeInfo::TypeInfo(&__dst, this);
    v110 = (*(*a1 + 80))(a1, &v219);
    if (!v110)
    {
      goto LABEL_228;
    }

    v111 = v110;
    v112 = (*(v215 + 88))(a4);
    v209[0] = v112;
    v51 = 0;
    if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), __s, v209, 0))
    {
      return v51 & 1;
    }

    if (*(v215 + 104))
    {
      if (v112)
      {
        for (i = 0; i != v112; ++i)
        {
          v114 = (*(v215 + 104))(a4, i);
          v111(a1, 0, 0, v114, &v219, v211, 0);
        }
      }
    }

    else
    {
      v170 = *(v215 + 112);
      if (!v170 || !*(v215 + 120) || !*(v215 + 128))
      {
        re::TypeInfo::TypeInfo(v210, &__dst);
        v194 = re::TypeInfo::name(v210)[1];
        v23 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_94;
      }

      v171 = v170(a4, a1[7]);
      v172 = (*(v215 + 120))();
      if (v172)
      {
        v173 = v172;
        do
        {
          v111(a1, 0, 0, v173, &v219, v211, 0);
          v173 = (*(v215 + 120))(v171);
        }

        while (v173);
      }

      (*(v215 + 128))(v171, a1[7]);
    }

LABEL_340:
    goto LABEL_390;
  }

  if (v22 != 6)
  {
    goto LABEL_88;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  v25 = re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
  v27 = re::TypeInfo::name(v25);
  v28 = BYTE4(v220);
  if (BYTE4(v220) != 1)
  {
LABEL_112:
    if (v28 == 8)
    {
      v59 = *v27 >> 1;
      if (v59 == 0x22C6ED80D0CLL)
      {
        v118 = v27[1];
        v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v118 == "StringID")
        {
          goto LABEL_368;
        }

        v119 = strcmp(v118, "StringID");
        v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v119)
        {
          goto LABEL_368;
        }
      }

      else if (v59 == 0x134375A94D9F7110)
      {
        v60 = v27[1];
        v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v60 == "DynamicString")
        {
          goto LABEL_368;
        }

        v61 = strcmp(v60, "DynamicString");
        v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v61)
        {
          goto LABEL_368;
        }
      }
    }

    goto LABEL_215;
  }

  if (!re::TypeInfo::isInteger(&v219))
  {
    v28 = BYTE4(v220);
    goto LABEL_112;
  }

  v29 = *v27 >> 1;
  if (v29 > 0x303EE8780EDLL)
  {
    if (v29 == 0x303EE8780EELL)
    {
      v167 = v27[1];
      v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (v167 == "uint32_t")
      {
        goto LABEL_368;
      }

      v168 = strcmp(v167, "uint32_t");
      v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (!v168)
      {
        goto LABEL_368;
      }

      goto LABEL_347;
    }

    if (v29 != 0x303EE88E58DLL)
    {
      goto LABEL_347;
    }

    v143 = v27[1];
    v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v143 == "uint64_t")
    {
      goto LABEL_368;
    }

    v144 = "uint64_t";
  }

  else
  {
    if (v29 != 3393056694)
    {
      if (v29 == 0x303EE86A734)
      {
        v30 = v27[1];
        v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (v30 == "uint16_t")
        {
          goto LABEL_368;
        }

        v32 = strcmp(v30, "uint16_t");
        v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (!v32)
        {
          goto LABEL_368;
        }
      }

      goto LABEL_347;
    }

    v143 = v27[1];
    v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v143 == "size_t")
    {
      goto LABEL_368;
    }

    v144 = "size_t";
  }

  v166 = strcmp(v143, v144);
  v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
  if (!v166)
  {
    goto LABEL_368;
  }

LABEL_347:
  __dst.n128_u64[0] = 0x18E6A9A093;
  __dst.n128_u64[1] = "uint8_t";
  v169 = re::StringID::operator==(v27, &__dst);
  v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
  if (v169)
  {
    goto LABEL_368;
  }

  __dst.n128_u64[0] = 0x16749F63A2;
  __dst.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v27, &__dst))
  {
    v117 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, __s, a3, a4, this, a6, a7);
    goto LABEL_369;
  }

  *v211 = 3327612;
  *&v211[8] = "long";
  v175 = re::StringID::operator==(v27, v211);
  v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
  if (v175 || (__dst.n128_u64[0] = 104431, __dst.n128_u64[1] = "int", v176 = re::StringID::operator==(v27, &__dst), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v176) || (__dst.n128_u64[0] = 109413500, __dst.n128_u64[1] = "short", v177 = re::StringID::operator==(v27, &__dst), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v177))
  {
LABEL_368:
    v117 = v31(a1, __s, a3, a4, this, a6, a7);
    goto LABEL_369;
  }

LABEL_215:
  if (this != a6)
  {
    if (*this == *a6)
    {
      v120 = **(this + 2);
      v121 = **(a6 + 2);
      if (v120 == v121 && WORD1(v120) == WORD1(v121) && ((v121 ^ v120) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v26))
    {
      goto LABEL_223;
    }

    if (*(this + 12) != *(a6 + 12))
    {
      goto LABEL_361;
    }
  }

LABEL_223:
  if (a7)
  {
    v122 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
    re::internal::translateType(&v219, v122, v211);
    v123 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
    re::TypeInfo::TypeInfo(v210, &__dst.n128_i64[1]);
    re::internal::translateType(v211, v123, v210);
    if ((*(*a1 + 80))(a1, &v219))
    {
      if ((*(*a1 + 80))(a1, v211))
      {
        __dst.n128_u64[0] = 0;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), __s, &__dst))
        {
          goto LABEL_394;
        }

        goto LABEL_362;
      }

      v124 = v211;
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v210, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v209, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v208, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v206, &__dst.n128_i64[1]);
  re::TypeInfo::TypeInfo(v204, this);
  v125 = (*(*a1 + 80))(a1, v210);
  if (!v125)
  {
    v124 = v210;
    goto LABEL_229;
  }

  v126 = v125;
  v127 = (*(*a1 + 80))(a1, v209);
  if (!v127)
  {
    v124 = v209;
    goto LABEL_229;
  }

  v128 = v127;
  v129 = (*(v205 + 96))(a4);
  v203 = v129;
  if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), __s, &v203))
  {
    goto LABEL_362;
  }

  if (!v129)
  {
    goto LABEL_394;
  }

  v130 = *this;
  __dst.n128_u64[0] = 0x449AD97C4B77BED4;
  __dst.n128_u64[1] = "_CompareFunc";
  v131 = re::TypeRegistry::typeID(v202, v130, &__dst);
  if (__dst.n128_u8[0])
  {
    if (__dst.n128_u8[0])
    {
    }
  }

  if (!v202[0] || (v132 = *v210[2], __dst.n128_u64[0] = v202[1], __dst.n128_u64[1] = v132, LODWORD(v215) = -1, (v133 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v210[0] + 768, &__dst)) == 0) || (v134 = *v133) == 0)
  {
    v182 = (*(v205 + 120))(a4, a1[7]);
    (*(v205 + 128))();
    do
    {
      v183 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
      v184 = (*(v205 + 136))(v182, v183);
      v126(a1, "key", 0, v184, v210, v208, 0);
      v185 = (*(v205 + 144))(v182);
      v128(a1, "value", 0, v185, v209, v206, 0);
      (*(v205 + 128))(v182);
      --v129;
    }

    while (v129);
    (*(v205 + 152))(v182, a1[7]);
    goto LABEL_394;
  }

  v223 = 0;
  v220 = 0;
  v221 = 0;
  v222 = 0;
  v219 = a1[7];
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v219, v129);
  ++v222;
  v135 = (*(v205 + 120))(a4, a1[7]);
  if ((*(v205 + 128))())
  {
    do
    {
      v136 = (*(v205 + 136))(v135);
      v137 = (*(v205 + 144))(v135);
      __dst.n128_u64[0] = v136;
      __dst.n128_u64[1] = v137;
      v138 = re::DynamicArray<re::RigNodeConstraint>::add(&v219, &__dst);
    }

    while (((*(v205 + 128))(v135, v138) & 1) != 0);
  }

  (*(v205 + 152))(v135, a1[7]);
  __dst.n128_u64[0] = v134;
  std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(v223, &v223[16 * v221], &__dst);
  v139 = 0;
  for (j = 0; j != v129; ++j)
  {
    v141 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
    if (v221 <= j)
    {
      v207 = 0;
      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      __dst = 0u;
      v186 = MEMORY[0x1E69E9C10];
      v187 = v221;
      v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v211 = 136315906;
      *&v211[4] = "operator[]";
      *&v211[12] = 1024;
      if (v188)
      {
        v189 = 3;
      }

      else
      {
        v189 = 2;
      }

      *&v211[14] = 789;
      *&v211[18] = 2048;
      *&v211[20] = j;
      v212 = 2048;
      v213 = v187;
      _os_log_send_and_compose_impl(v189, &v207, &__dst, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v211, 38, v200, v201);
      _os_crash_msg();
      __break(1u);
LABEL_399:
      v207 = 0;
      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      __dst = 0u;
      v190 = MEMORY[0x1E69E9C10];
      v191 = v142;
      v192 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v211 = 136315906;
      *&v211[4] = "operator[]";
      *&v211[12] = 1024;
      if (v192)
      {
        v193 = 3;
      }

      else
      {
        v193 = 2;
      }

      *&v211[14] = 789;
      *&v211[18] = 2048;
      *&v211[20] = j;
      v212 = 2048;
      v213 = v191;
      _os_log_send_and_compose_impl(v193, &v207, &__dst, 80, &dword_1E1C61000, v190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v211, 38, v200, v201);
      _os_crash_msg();
      __break(1u);
      goto LABEL_403;
    }

    (v126)(a1, "key", 0, *&v223[v139], v210, v208, 0, v141);
    v142 = v221;
    if (v221 <= j)
    {
      goto LABEL_399;
    }

    v128(a1, "value", 0, *&v223[v139 + 8], v209, v206, 0);
    v139 += 16;
  }

  if (v219 && v223)
  {
    (*(*v219 + 40))(v219);
  }

LABEL_394:
LABEL_390:
  v51 = *(a1 + 64) ^ 1;
  return v51 & 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, char *a2, float *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabsf(v6) == INFINITY)
    {
      if (v6 <= 0.0)
      {
        v8 = "-Infinity";
      }

      else
      {
        v8 = "Infinity";
      }

      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), v8);
    }

    else
    {
      v9 = v6;
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v9);
    }

    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v10 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, char *a2, double *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), a2);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabs(v6) == INFINITY)
    {
      if (v6 <= 0.0)
      {
        v8 = "-Infinity";
      }

      else
      {
        v8 = "Infinity";
      }

      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), v8);
    }

    else
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v6);
    }

    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(uint64_t a1, char *__s, uint64_t *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    v7 = *a3;
    if (!*a3)
    {
      v8 = *(a1 + 168);
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v8);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v8, "", 0);
      v7 = *a3;
    }

    v10[0] = 8;
    v11 = 0;
    v12 = __s;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = v7;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v10);
  }

  return v3 ^ 1u;
}

double re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) >= *(a1 + 152))
  {
    re::DynamicString::format(v6, "State stack overflow (max depth is %zu). Increase user default com.apple.maxSerializationDepth to allow deeper hierarchies.", a2, *(a1 + 152));
    if (*&v6[0])
    {
      if (BYTE8(v6[0]))
      {
        (*(**&v6[0] + 40))();
      }
    }
  }

  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = *(a2 + 32);
  *&result = re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(a1 + 96, v6).n128_u64[0];
  return result;
}

__n128 re::DynamicArray<re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::State>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 48 * v5;
  result = *a2;
  v13 = *(a2 + 32);
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 32) = v13;
  *v11 = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

double re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t result, char *__s, unsigned __int8 *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    if ((*(*(result + 128) + 48 * *(result + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(result + 168), __s);
    }

    v6 = *a3;
    if ((v6 & 1) == 0)
    {
      v7 = *(result + 168);
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v7);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v7);
      v6 = *a3;
    }

    v9[0] = 3;
    v10 = 0;
    v11 = __s;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v6;
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(result, v9);
  }

  return v8;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, char *__s, uint64_t *a3, int a4)
{
  v4 = *(a1 + 40);
  if ((v4 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v9 = *a3;
    v11[0] = 5;
    v12 = a4 & 0xFFFFFFDF;
    v13 = __s;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v15 = v9;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
  }

  return v4 ^ 1u;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v50 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v44), re::TypeInfo::TypeInfo(v43, &v45), v43[12] != 1) || !re::TypeInfo::isInteger(v43))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v43, &v45);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v42, &v45);
  re::TypeInfo::TypeInfo(v40, this);
  v18 = (*(*a1 + 80))(a1, v43);
  if (!v18)
  {
    v38 = re::TypeInfo::name(v43);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v41 + 96))(a4);
    if (v22)
    {
      v48 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v44 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v44, v22);
      ++v47;
      v23 = (*(v41 + 120))(a4, v17);
      if ((*(v41 + 128))())
      {
        do
        {
          v24 = (*(v41 + 136))(v23);
          v25 = (*(v41 + 144))(v23);
          v49[0].n128_u64[0] = v24;
          v49[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v44, v49);
        }

        while (((*(v41 + 128))(v23, v26) & 1) != 0);
      }

      (*(v41 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v46);
      if (v46)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(v48, &v48[v46], v29, 1, v27);
      if (v46)
      {
        v31 = v48;
        v32 = &v48[v46];
        do
        {
          v33 = v31->n128_u64[1];
          v34 = *v31->n128_u64[0];
          if (HIDWORD(v34))
          {
            if (v34 <= 0x2540BE3FFLL)
            {
              v36 = v49;
            }

            else
            {
              v36 = std::__itoa::__base_10_u32[abi:nn200100](v49, v34 / 0x2540BE400);
              v34 %= 0x2540BE400uLL;
            }

            v36->n128_u16[0] = std::__itoa::__digits_base_10[v34 / 0x5F5E100];
            v37 = v34 % 0x5F5E100;
            v36->n128_u16[1] = std::__itoa::__digits_base_10[v37 / 0xF4240uLL];
            v37 %= 0xF4240u;
            v36->n128_u16[2] = std::__itoa::__digits_base_10[v37 / 0x2710uLL];
            v37 %= 0x2710u;
            v36->n128_u16[3] = std::__itoa::__digits_base_10[v37 / 0x64u];
            v36->n128_u16[4] = std::__itoa::__digits_base_10[v37 % 0x64u];
            v35 = &v36->n128_i8[10];
          }

          else
          {
            v35 = std::__itoa::__base_10_u32[abi:nn200100](v49, *v31->n128_u64[0]);
          }

          *v35 = 0;
          v19(a1, v49, 0, v33, v43, v42, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v44 && v48)
      {
        (*(*v44 + 40))(v30);
      }
    }

    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v41), re::TypeInfo::TypeInfo(v40, &v42), v40[12] != 1) || !re::TypeInfo::isInteger(v40))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v40, &v42);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v39, &v42);
  re::TypeInfo::TypeInfo(v37, this);
  v18 = (*(*a1 + 80))(a1, v40);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v40);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v38 + 96))(a4);
    if (v22)
    {
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v41 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v41, v22);
      ++v44;
      v23 = (*(v38 + 120))(a4, v17);
      if ((*(v38 + 128))())
      {
        do
        {
          v24 = (*(v38 + 136))(v23);
          v25 = (*(v38 + 144))(v23);
          v46[0].n128_u64[0] = v24;
          v46[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v41, v46);
        }

        while (((*(v38 + 128))(v23, v26) & 1) != 0);
      }

      (*(v38 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v43);
      if (v43)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(v45, &v45[v43], v29, 1, v27);
      if (v43)
      {
        v31 = v45;
        v32 = &v45[v43];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v46, *v33) = 0;
          v19(a1, v46, 0, v34, v40, v39, 0);
        }

        while (v31 != v32);
      }

      if (v41 && v45)
      {
        (*(*v41 + 40))(v30);
      }
    }

    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v41), re::TypeInfo::TypeInfo(v40, &v42), v40[12] != 1) || !re::TypeInfo::isInteger(v40))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v40, &v42);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v39, &v42);
  re::TypeInfo::TypeInfo(v37, this);
  v18 = (*(*a1 + 80))(a1, v40);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v40);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v38 + 96))(a4);
    if (v22)
    {
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v41 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v41, v22);
      ++v44;
      v23 = (*(v38 + 120))(a4, v17);
      if ((*(v38 + 128))())
      {
        do
        {
          v24 = (*(v38 + 136))(v23);
          v25 = (*(v38 + 144))(v23);
          v46[0].n128_u64[0] = v24;
          v46[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v41, v46);
        }

        while (((*(v38 + 128))(v23, v26) & 1) != 0);
      }

      (*(v38 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v43);
      if (v43)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(v45, &v45[v43], v29, 1, v27);
      if (v43)
      {
        v31 = v45;
        v32 = &v45[v43];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v46, *v33) = 0;
          v19(a1, v46, 0, v34, v40, v39, 0);
        }

        while (v31 != v32);
      }

      if (v41 && v45)
      {
        (*(*v41 + 40))(v30);
      }
    }

    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v41), re::TypeInfo::TypeInfo(v40, &v42), v40[12] != 1) || !re::TypeInfo::isInteger(v40))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v40, &v42);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v39, &v42);
  re::TypeInfo::TypeInfo(v37, this);
  v18 = (*(*a1 + 80))(a1, v40);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v40);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v38 + 96))(a4);
    if (v22)
    {
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v41 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v41, v22);
      ++v44;
      v23 = (*(v38 + 120))(a4, v17);
      if ((*(v38 + 128))())
      {
        do
        {
          v24 = (*(v38 + 136))(v23);
          v25 = (*(v38 + 144))(v23);
          v46[0].n128_u64[0] = v24;
          v46[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v41, v46);
        }

        while (((*(v38 + 128))(v23, v26) & 1) != 0);
      }

      (*(v38 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v43);
      if (v43)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(v45, &v45[v43], v29, 1, v27);
      if (v43)
      {
        v31 = v45;
        v32 = &v45[v43];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v46, *v33) = 0;
          v19(a1, v46, 0, v34, v40, v39, 0);
        }

        while (v31 != v32);
      }

      if (v41 && v45)
      {
        (*(*v41 + 40))(v30);
      }
    }

    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v52[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
LABEL_42:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_39:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v18 = (*(*a1 + 80))(a1, v45);
  if (!v18)
  {
    v40 = re::TypeInfo::name(v45);
    goto LABEL_42;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v43 + 96))(a4);
    if (v22)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v22);
      ++v49;
      v23 = (*(v43 + 120))(a4, v17);
      if ((*(v43 + 128))())
      {
        do
        {
          v24 = (*(v43 + 136))(v23);
          v25 = (*(v43 + 144))(v23);
          v51[0].n128_u64[0] = v24;
          v51[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v23, v26) & 1) != 0);
      }

      (*(v43 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(v50, &v50[v48], v29, 1, v27);
      if (v48)
      {
        v31 = v50;
        v32 = &v50[v48];
        do
        {
          v33 = *v31->n128_u64[0];
          if ((v33 & 0x8000000000000000) != 0)
          {
            v51[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v51[0].n128_u64 + 1);
          }

          else
          {
            v34 = v51;
          }

          v35 = v31->n128_u64[1];
          if (v52 - v34 > 19 || (v36 = (1233 * (64 - __clz(v33 | 1))) >> 12, v37 = v36 - (std::__itoa::__pow10_64[v36] > v33) + 1, v38 = v52, v52 - v34 >= v37))
          {
            if (HIDWORD(v33))
            {
              if (v33 > 0x2540BE3FFLL)
              {
                v34 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33 / 0x2540BE400);
                v33 %= 0x2540BE400uLL;
              }

              v34->n128_u16[0] = std::__itoa::__digits_base_10[v33 / 0x5F5E100];
              v39 = v33 % 0x5F5E100;
              v34->n128_u16[1] = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
              v39 %= 0xF4240u;
              v34->n128_u16[2] = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
              v39 %= 0x2710u;
              v34->n128_u16[3] = std::__itoa::__digits_base_10[v39 / 0x64u];
              v34->n128_u16[4] = std::__itoa::__digits_base_10[v39 % 0x64u];
              v38 = &v34->n128_i8[10];
            }

            else
            {
              v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
            }
          }

          *v38 = 0;
          v19(a1, v51, 0, v35, v45, v44, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v30);
      }
    }

    goto LABEL_39;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v51[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v45), re::TypeInfo::TypeInfo(v44, &v46), v44[12] != 1) || !re::TypeInfo::isInteger(v44))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v44, &v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, &v46);
  re::TypeInfo::TypeInfo(v41, this);
  v18 = (*(*a1 + 80))(a1, v44);
  if (!v18)
  {
    v39 = re::TypeInfo::name(v44);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v42 + 96))(a4);
    if (v22)
    {
      v49 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v45 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v45, v22);
      ++v48;
      v23 = (*(v42 + 120))(a4, v17);
      if ((*(v42 + 128))())
      {
        do
        {
          v24 = (*(v42 + 136))(v23);
          v25 = (*(v42 + 144))(v23);
          v50[0].n128_u64[0] = v24;
          v50[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v45, v50);
        }

        while (((*(v42 + 128))(v23, v26) & 1) != 0);
      }

      (*(v42 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v47);
      if (v47)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(v49, &v49[v47], v29, 1, v27);
      if (v47)
      {
        v31 = v49;
        v32 = &v49[v47];
        do
        {
          v33 = *v31->n128_u64[0];
          if ((v33 & 0x80000000) != 0)
          {
            v50[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v50[0].n128_u64 + 1);
          }

          else
          {
            v34 = v50;
          }

          v35 = v31->n128_u64[1];
          if (v51 - v34 > 9 || (v36 = (1233 * (32 - __clz(v33 | 1))) >> 12, v37 = (((__PAIR64__(v36, v33) - std::__itoa::__pow10_32[v36]) >> 32) + 1), v38 = v51, v51 - v34 >= v37))
          {
            v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
          }

          *v38 = 0;
          v19(a1, v50, 0, v35, v44, v43, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v45 && v49)
      {
        (*(*v45 + 40))(v30);
      }
    }

    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v51[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v45), re::TypeInfo::TypeInfo(v44, &v46), v44[12] != 1) || !re::TypeInfo::isInteger(v44))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v44, &v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, &v46);
  re::TypeInfo::TypeInfo(v41, this);
  v18 = (*(*a1 + 80))(a1, v44);
  if (!v18)
  {
    v39 = re::TypeInfo::name(v44);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v42 + 96))(a4);
    if (v22)
    {
      v49 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v45 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v45, v22);
      ++v48;
      v23 = (*(v42 + 120))(a4, v17);
      if ((*(v42 + 128))())
      {
        do
        {
          v24 = (*(v42 + 136))(v23);
          v25 = (*(v42 + 144))(v23);
          v50[0].n128_u64[0] = v24;
          v50[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v45, v50);
        }

        while (((*(v42 + 128))(v23, v26) & 1) != 0);
      }

      (*(v42 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v47);
      if (v47)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(v49, &v49[v47], v29, 1, v27);
      if (v47)
      {
        v31 = v49;
        v32 = &v49[v47];
        do
        {
          v33 = *v31->n128_u64[0];
          if ((v33 & 0x80000000) != 0)
          {
            v50[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v50[0].n128_u64 + 1);
          }

          else
          {
            v34 = v50;
          }

          v35 = v31->n128_u64[1];
          if (v51 - v34 > 9 || (v36 = (1233 * (32 - __clz(v33 | 1))) >> 12, v37 = (((__PAIR64__(v36, v33) - std::__itoa::__pow10_32[v36]) >> 32) + 1), v38 = v51, v51 - v34 >= v37))
          {
            v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
          }

          *v38 = 0;
          v19(a1, v50, 0, v35, v44, v43, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v45 && v49)
      {
        (*(*v45 + 40))(v30);
      }
    }

    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v44);
  re::TypeInfo::TypeInfo(v43, &v45);
  v19 = re::TypeInfo::name(v43);
  if (*v19 >> 1 != 0x22C6ED80D0CLL || (v20 = v19[1], v20 != "StringID") && strcmp(v20, "StringID"))
  {
LABEL_35:
    v25 = 0;
    return v25 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_33:
    v25 = *(a1 + 64) ^ 1;
    return v25 & 1;
  }

  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v43, &v45);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v42, &v45);
  re::TypeInfo::TypeInfo(v40, this);
  v22 = (*(*a1 + 80))(a1, v43);
  if (!v22)
  {
    v37 = re::TypeInfo::name(v43);
    goto LABEL_35;
  }

  v23 = v22;
  v24 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v25 = 0;
  if (v24)
  {
    v26 = (*(v41 + 96))(a4);
    if (v26)
    {
      v48 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v44 = v21;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v44, v26);
      ++v47;
      v27 = (*(v41 + 120))(a4, v21);
      if ((*(v41 + 128))())
      {
        do
        {
          v28 = (*(v41 + 136))(v27);
          v29 = (*(v41 + 144))(v27);
          v39.n128_u64[0] = v28;
          v39.n128_u64[1] = v29;
          v30 = re::DynamicArray<re::RigNodeConstraint>::add(&v44, &v39);
        }

        while (((*(v41 + 128))(v27, v30) & 1) != 0);
      }

      (*(v41 + 152))(v27, v21);
      v31 = 126 - 2 * __clz(v46);
      if (v46)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(v48, &v48[2 * v46], v32, 1);
      if (v46)
      {
        v33 = v48;
        v34 = &v48[2 * v46];
        do
        {
          v35 = *v33;
          if (*(*v33 + 8))
          {
            v36 = *(v35 + 16);
          }

          else
          {
            v36 = v35 + 9;
          }

          v23(a1, v36, 0, v33[1], v43, v42, 0);
          v33 += 2;
        }

        while (v33 != v34);
      }

      if (v44 && v48)
      {
        (*(*v44 + 40))();
      }
    }

    goto LABEL_33;
  }

  return v25 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  v19 = re::TypeInfo::name(v45);
  if (*v19 >> 1 != 0x134375A94D9F7110 || (v20 = v19[1], v20 != "DynamicString") && strcmp(v20, "DynamicString"))
  {
LABEL_32:
    v25 = 0;
    return v25 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_30:
    v25 = *(a1 + 64) ^ 1;
    return v25 & 1;
  }

  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v22 = (*(*a1 + 80))(a1, v45);
  if (!v22)
  {
    v39 = re::TypeInfo::name(v45);
    goto LABEL_32;
  }

  v23 = v22;
  v24 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v25 = 0;
  if (v24)
  {
    v26 = (*(v43 + 96))(a4);
    if (v26)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v21;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v26);
      ++v49;
      v27 = (*(v43 + 120))(a4, v21);
      if ((*(v43 + 128))())
      {
        do
        {
          v28 = (*(v43 + 136))(v27);
          v29 = (*(v43 + 144))(v27);
          v41.n128_u64[0] = v28;
          v41.n128_u64[1] = v29;
          v30 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, &v41);
        }

        while (((*(v43 + 128))(v27, v30) & 1) != 0);
      }

      (*(v43 + 152))(v27, v21);
      v32 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(v50, &v50[v48], v33, 1, v31);
      if (v48)
      {
        v35 = v50;
        v36 = &v50[v48];
        do
        {
          v38 = v35->n128_u64[0];
          v37 = v35->n128_u64[1];
          ++v35;
          v23(a1, *(v38 + 8), 0, v37, v45, v44, 0, v34);
        }

        while (v35 != v36);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v34);
      }
    }

    goto LABEL_30;
  }

  return v25 & 1;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, char *__s, uint64_t *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v7 = *a3;
    v9[0] = 6;
    v10 = 0;
    v11 = __s;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v7;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v9);
  }

  return v3 ^ 1u;
}

double re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t result, int a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(result + 168));
    v5[0] = 7;
    v6 = a2 | 0x20;
    v7 = "entry";
    v8 = xmmword_1E3054780;
    v9 = 0;
    v10 = 0;
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(result, v5);
  }

  return v4;
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x22C6ED80D0CLL || (v18 = v17[1], v18 != "StringID") && strcmp(v18, "StringID"))
  {
    goto LABEL_24;
  }

LABEL_14:
  if (a7)
  {
    v24 = 0;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v24))
    {
LABEL_27:
      v22 = *(a1 + 64) ^ 1;
      return v22 & 1;
    }
  }

  else
  {
    v19 = *(a4 + 8);
    if (v19)
    {
      v20 = v19 >> 1;
    }

    else
    {
      v20 = v19 >> 1;
    }

    v24 = v20;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v24))
    {
      if (v20)
      {
        if (*(a4 + 8))
        {
          v21 = *(a4 + 16);
        }

        else
        {
          v21 = a4 + 9;
        }
      }

      goto LABEL_27;
    }
  }

LABEL_24:
  v22 = 0;
  return v22 & 1;
}

void *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D18DF0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D18DF0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if ((*(*(result + 1) + 64) & 1) == 0)
  {
    v9 = result;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    re::DynamicString::setCapacity(&v15, 0);
    va_copy(v14, va);
    re::DynamicString::vappendf(&v15, a2, va);
    v10 = *(v9 + 1);
    *&v11 = 400;
    *(&v11 + 1) = re::FoundationErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v12, &v15);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v10 + 24, &v11);
    if (v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }

    result = v15;
    if (v15)
    {
      if (v16)
      {
        return (*(*v15 + 40))(v15, v17);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  *(v3 + 40 * v4 - 32) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 40 * v4 - 40) = a3;
  return 1;
}

double re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = v2 + 40 * *(a1 + 40);
  v4 = *(v3 - 40);
  if (*(v3 - 32) || *v4 != 64)
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v4, 0);
  }

  v6 = "";
  v7 = 0;
  v8 = 0;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
{
  v1 = *(result + 12);
  v2 = *(result + 5) - 1;
  *(result + 5) = v2;
  *(result + 12) = v1 + 2;
  if (v1)
  {
    v3 = result + 56;
  }

  else
  {
    v3 = *(result + 8);
  }

  v4 = &v3[40 * v2];
  if (*(v4 - 8) || **(v4 - 5) != 64)
  {
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  v7 = v6 + 40 * *(a1 + 40) - 40;
  if (*(a1 + 48))
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = v8 + 40 * *(a1 + 40);
  v10 = *v7;
  v11 = *(v7 + 16);
  *(v9 + 32) = *(v7 + 32);
  *v9 = v10;
  *(v9 + 16) = v11;
  v12 = *(a1 + 40) + 1;
  *(a1 + 40) = v12;
  v13 = *(a1 + 48);
  *(a1 + 48) = v13 + 2;
  if (v13)
  {
    v14 = a1 + 56;
  }

  else
  {
    v14 = *(a1 + 64);
  }

  v15 = v14 + 40 * v12;
  v16 = *(a1 + 8);
  if (a3)
  {
    *(v15 - 28) = 1;
    v17 = *(v15 - 40);

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(v16 + 24, v17, 0);
  }

  else
  {
    *(v15 - 28) = 0;
    v19 = a2;
    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(v16 + 24, *(v15 - 40), &v19);
  }
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 40 * *(result + 40);
  if (*(v2 - 28))
  {
    v3 = -1;
  }

  else
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(result + 8) + 24, 0);
    v3 = 0;
    *(v2 - 40) = "key";
  }

  *(v2 - 32) = v3;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 40 * *(result + 40);
  if (*(v2 - 28))
  {
    v3 = 0;
  }

  else
  {
    *(v2 - 40) = "value";
    v3 = 1;
  }

  *(v2 - 32) = v3;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 8);
  }

  if ((v1[40 * *(result + 5) - 28] & 1) == 0)
  {
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = *(v2 + 40 * *(a1 + 40) - 28);
  v4 = (*(a1 + 8) + 24);
  if (v3 == 1)
  {
  }

  else
  {
  }

  v6 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v6 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(*(a1 + 8) + 24, *(v3 + 40 * *(a1 + 40) - 40), &v5);
  return a2;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, char a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = v5 - 27;
    if ((a2 & 0x80000000) != 0)
    {
      v8 = v5 - 26;
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (&result[-v8] > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, &result[-v8] >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = v5 - 27;
    if ((a2 & 0x80000000) != 0)
    {
      v8 = v5 - 26;
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (&result[-v8] > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, &result[-v8] >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = v5 - 26;
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    else
    {
      v8 = v5 - 27;
    }

    if (&result[-v8] > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, &result[-v8] >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    v11 = a2;
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }
  }

  return result;
}

{
  v2 = a2;
  v11 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__to_chars_itoa[abi:nn200100]<long long>((v5 - 27), (v5 - 3), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, float a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, double a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeString(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v13 = a3;
  v6 = *(result + 12);
  if (v6)
  {
    v7 = result + 56;
  }

  else
  {
    v7 = *(result + 8);
  }

  v8 = *(result + 5);
  v9 = &v7[40 * v8];
  if (*(v9 - 28) == 1 && (*(v9 - 8) & 0x80000000) != 0)
  {
    *(v9 - 5) = a2;
  }

  else
  {
    if (v6)
    {
      v10 = result + 56;
    }

    else
    {
      v10 = *(result + 8);
    }

    v11 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(*(result + 1) + 24, *&v10[40 * v8 - 40], &v13);
    if (a3 && v11)
    {
    }

    v12 = (*(v5 + 1) + 24);
  }

  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeData(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *(result + 8);
  if (*(result + 48))
  {
    v7 = result + 56;
  }

  else
  {
    v7 = *(result + 64);
  }

  v8 = *(v6 + 64);
  if ((v8 & 1) == 0)
  {
    v9 = *(v7 + 40 * *(result + 40) - 40);
    if ((*(*(v6 + 152) + 48 * *(v6 + 136) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(v6 + 192), v9);
    }

    if (!a3)
    {
      v10 = *(v6 + 192);
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v10);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v10);
    }

    LOBYTE(v23) = 4;
    HIDWORD(v23) = 0;
    v24 = v9;
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v26 = a3;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(v6 + 24, &v23);
    v6 = *(result + 8);
    v8 = *(v6 + 64);
    if ((v8 & 1) == 0)
    {
      v12 = *(*(v6 + 152) + 48 * *(v6 + 136) - 24);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      re::DynamicString::setCapacity(&v23, 0);
      v23 = *(v6 + 56);
      re::DynamicString::setCapacity(&v23, ((2863311531u * v12) >> 31) & 0x1FFFFFFFCLL);
      re::EncoderHelper::encodeBase64(a2, v12, &v23);
      v13 = *(v6 + 192);
      if (v24)
      {
        v14 = v25;
      }

      else
      {
        v14 = &v24 + 1;
      }

      if (v24)
      {
        v15 = v24 >> 1;
      }

      else
      {
        v15 = v24 >> 1;
      }

      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(*(v6 + 192));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v13, v14, v15);
      if (v23 && (v24 & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v16 = *(v6 + 152) + 48 * *(v6 + 136);
      *(v16 - 16) += v12;
      v6 = *(result + 8);
      v8 = *(v6 + 64);
    }
  }

  if ((v8 & 1) == 0)
  {
    v17 = *(v6 + 152);
    v18 = *(v6 + 136);
    if (*(v17 + 48 * v18 - 16) == *(v17 + 48 * v18 - 24))
    {
      *(v6 + 232) = 0;
      ++*(v6 + 240);
      v19 = *(v6 + 152) + 48 * *(v6 + 136);
      ++*(v19 - 16);
    }

    else
    {
      if (v30)
      {
        v21 = *&v31[7];
      }

      else
      {
        v21 = v31;
      }

      v22 = *(v6 + 152) + 48 * *(v6 + 136);
      re::DynamicString::format(&v23, "Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v20, v21, *(v22 - 24), *(v22 - 16));
      if (v23 && (v24 & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      if (v29)
      {
        if (v30)
        {
          (*(*v29 + 40))();
        }
      }
    }
  }
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 2 * (a2 != 0);
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), &v8);
  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::write(uint64_t a1, uint64_t a2, re **this)
{
  v17[0] = 0;
  v5 = *(a1 + 16);
  if (this[4] == v5)
  {
    re::TypeRegistry::typeInfo(v5, this + 4, &v15);
    re::Optional<re::TypeInfo>::operator=(v17, &v15);
  }

  else
  {
    re::getPrettyTypeName(&v13, this);
    re::TypeRegistry::typeInfo(&v15, *(a1 + 16), &v13);
    re::Optional<re::TypeInfo>::operator=(v17, &v15);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }
  }

  if (v17[0])
  {
    v6 = *(a1 + 16);
    v7 = re::TypeInfo::name(v18);
    re::TypeRegistry::typeInfo(&v15, v6, v7);
    if (v15)
    {
      result = *(a1 + 8);
      if (*(a1 + 48))
      {
        v9 = a1 + 56;
      }

      else
      {
        v9 = *(a1 + 64);
      }

      if ((result[64] & 1) == 0)
      {
        return (*(*result + 72))(result, *(v9 + 40 * *(a1 + 40) - 40), *(v9 + 40 * *(a1 + 40) - 32), a2, v18, &v16, 0);
      }
    }

    else
    {
      v11 = re::TypeInfo::name(v18)[1];
      if (*(a1 + 48))
      {
        v12 = a1 + 56;
      }

      else
      {
        v12 = *(a1 + 64);
      }

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', writing field '%s'(%d)", v11, *(v12 + 40 * *(a1 + 40) - 40), *(v12 + 40 * *(a1 + 40) - 32));
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v10 = a1 + 56;
    }

    else
    {
      v10 = *(a1 + 64);
    }

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 40 * *(a1 + 40) - 40), *(v10 + 40 * *(a1 + 40) - 32));
  }

  return result;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, char *__s, int *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    return v3 ^ 1u;
  }

  if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
  {
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
  }

  v7 = *a3;
  if ((*a3 - 1) < 2)
  {
LABEL_7:
    v10[0] = 9;
    v11 = 0;
    v12 = __s;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = v7 != 0;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v10);
    return v3 ^ 1u;
  }

  if (!v7)
  {
    v8 = *(a1 + 168);
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::PrettyPrefix(v8);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v8);
    v7 = *a3;
    goto LABEL_7;
  }

  re::internal::assertLog(4, __s, "assertion failure: '%s' (%s:line %i) Unexpected PointerEncoding.", "!Unreachable code", "beginPointer", 1054);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected PointerEncoding.");
  __break(1u);
  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v16, a4);
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v16, *a3, a3[2]);
  if (v18)
  {
    for (i = 0; i < v18; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v16, i, &v14);
      if (*(v15 + 28) == 1)
      {
        v10 = *(v15 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v15 + 32);
        v12 = *(v15 + 24);
        re::TypeRegistry::typeInfo(v14, *v15, v21);
        result = re::TypeInfo::TypeInfo(v13, &v22);
        if ((a1[64] & 1) == 0)
        {
          result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v13, v13, a4);
        }
      }
    }
  }

  return result;
}

uint64_t *re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, re::TypeInfo *a3, uint64_t *a4, uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), v41);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v37);
  if (v37[0] == 1)
  {
    if ((v41[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v38)[1];
      v12 = re::TypeInfo::name(a3);
    }

    if (v42 == v38)
    {
      v14 = *v44;
      v15 = *v40;
      if (*v44 == *v40)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_5;
        }
      }
    }

    else if (re::areSameTranslatedVersion(&v42, &v38, v10))
    {
LABEL_5:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v42, a5);
      goto LABEL_15;
    }

    if (v43 == v39)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v42, &v38, a5);
    }

    else
    {
      v18 = re::TypeInfo::name(&v42)[1];
      v19 = re::TypeInfo::name(&v38);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v36, *a3, *(a3 + 2));
  result = re::TypeMemberCollection::TypeMemberCollection(v34, *a4, a4[2]);
  if (v35)
  {
    for (i = 0; i < v35; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v34, i, v32);
      if (*(v33 + 28) == 1)
      {
        v21 = *(v33 + 16);
        if (strlen(v21) >= 3 && *v21 == 109)
        {
          v21 += 2 * (*(v21 + 1) == 95);
        }

        v22 = *(v33 + 32);
        v23 = *(*a4 + 856);
        if (!v23 || (v23 = re::internal::TypeTranslationTable::translateMember(v23, v32), v23 == -1))
        {
          v25 = *re::foundationSerializationLogObjects(v23);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v46 = v26;
            v47 = 2080;
            v48 = v21;
            _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v27 = *(a1 + 272);
          re::TypeRegistry::typeInfo(v32[0], *v33, buf);
          re::TypeInfo::TypeInfo(v30, &v46 + 4);
          result = re::internal::translateType(buf, v27, v30);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v36, v23, v30);
          v24 = *(v31 + 24);
          re::TypeRegistry::typeInfo(v30[0], *v31, buf);
          re::TypeInfo::TypeInfo(v29, &v46 + 4);
          re::TypeRegistry::typeInfo(v32[0], *v33, buf);
          result = re::TypeInfo::TypeInfo(v28, &v46 + 4);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, a2 + v24, v29, v28, a5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeChar<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeI64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU8<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU16<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU32<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeU64<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, v13);
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, v13);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_18:
      goto LABEL_19;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_18;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if (a7)
  {
    LODWORD(v22) = 0;
    v13 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, __s, &v22);
    v14 = 0;
    if (!v13)
    {
      return v14 & 1;
    }

    goto LABEL_22;
  }

  v15 = *a4;
  v23 = 2 * (*a4 != 0);
  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, __s, &v23))
  {
    if (v15)
    {
      if (*a4)
      {
        v16 = strlen(*a4);
        v22 = v16;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v22))
        {
          if (v16)
          {
          }

          goto LABEL_21;
        }
      }

      else
      {
        v22 = 0;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v22))
        {
LABEL_21:
        }
      }
    }

LABEL_22:
    v14 = *(a1 + 64) ^ 1;
    return v14 & 1;
  }

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x134375A94D9F7110 || (v18 = v17[1], v18 != "DynamicString") && strcmp(v18, "DynamicString"))
  {
    goto LABEL_21;
  }

LABEL_14:
  if (!a7)
  {
    v19 = strlen(*(a4 + 8));
    v22 = v19;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v22))
    {
      if (v19)
      {
      }

      goto LABEL_20;
    }

LABEL_21:
    v20 = 0;
    return v20 & 1;
  }

  v22 = 0;
  if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v22))
  {
    goto LABEL_21;
  }

LABEL_20:
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *__s, const re::TypeInfo *a3, uint64_t a4, unint64_t **this, unint64_t **a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_16:
      goto LABEL_17;
    }

    v18 = *this[2];
    v19 = *a6[2];
    if (v18 != v19)
    {
      goto LABEL_16;
    }

    v21 = WORD1(v18) == WORD1(v19);
    v20 = (v19 ^ v18) & 0xFFFFFF00000000;
    v21 = v21 && v20 == 0;
    if (!v21)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if (!a7)
  {
    v14 = *this;
    v15 = *this[2];
    v33[0] = 0x258C98EAAF29A10ALL;
    v33[1] = "CallbackSerializerAttribute";
    v16 = re::TypeRegistry::typeID(v34, v14, v33);
    if (v34[0] && (v29 = v34[1], v30 = v15, LODWORD(v31) = -1, (v16 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v14 + 768, &v29)) != 0))
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    if (v33[0])
    {
      if (v33[0])
      {
      }
    }

    v23 = *v17;
    v24 = *(a1 + 264);
    v25 = *(a1 + 56);
    v31 = 0;
    v32 = 0;
    v29 = v25;
    v30 = 0;
    re::DynamicString::setCapacity(&v29, 0);
    if ((*(v23 + 72))(v24, v23, a4, &v29))
    {
      if (v30)
      {
        v26 = (v30 >> 1);
      }

      else
      {
        v26 = (v30 >> 1);
      }

      v34[0] = v26;
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, v34))
      {
        if (v26)
        {
          if (v30)
          {
            v27 = v31;
          }

          else
          {
            v27 = &v30 + 1;
          }
        }

        if (v29 && (v30 & 1) != 0)
        {
          (*(*v29 + 40))();
        }

        goto LABEL_7;
      }
    }

    else
    {
      v28 = re::TypeInfo::name(this);
    }

    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }

LABEL_17:
    v13 = 0;
    return v13 & 1;
  }

  v29 = 0;
  if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, __s, &v29))
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = *(a1 + 64) ^ 1;
  return v13 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(_BYTE *a1, char *__s, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
LABEL_20:
      v20 = 0;
      return v20 & 1;
    }

    v16 = **(this + 2);
    v17 = **(a6 + 2);
    if (v16 != v17)
    {
      goto LABEL_19;
    }

    v19 = WORD1(v16) == WORD1(v17);
    v18 = (v17 ^ v16) & 0xFFFFFF00000000;
    v19 = v19 && v18 == 0;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if (*a4)
  {
    if (a1[336] == 1 && (v25 = *a4, (v11 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 344), &v25)) != 0))
    {
      v12 = *v11;
      v24 = 1;
      LODWORD(v25) = v12;
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), __s, &v24))
      {
        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v25);
LABEL_22:
LABEL_23:
        v20 = a1[64] ^ 1;
        return v20 & 1;
      }
    }

    else
    {
      v24 = 2;
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), __s, &v24))
      {
        v13 = strlen(*a4);
        v25 = v13;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), __s, &v25))
        {
          if (v13)
          {
          }

          v14 = *a4;
          v15 = **(this + 2);
          *&v23 = *this;
          *(&v23 + 1) = v15;
          re::internal::SharedObjectGraph::addObject((a1 + 336), v14, &v23);
          goto LABEL_23;
        }
      }
    }

    goto LABEL_20;
  }

  LODWORD(v25) = 0;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), __s, &v25);
  v20 = 0;
  if (v21)
  {
    goto LABEL_22;
  }

  return v20 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, int a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v22 = **(this + 2);
    v23 = **(a6 + 2);
    if (v22 == v23)
    {
      v25 = WORD1(v22) == WORD1(v23);
      v24 = (v23 ^ v22) & 0xFFFFFF00000000;
      v25 = v25 && v24 == 0;
      if (v25)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v13))
  {
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v26 = re::TypeInfo::name(this), v27 = re::TypeInfo::name(a6), !re::StringID::operator==(v26, v27))))
  {
    goto LABEL_30;
  }

  v15 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v35);
  re::TypeInfo::TypeInfo(v34, v36);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v35);
  re::TypeInfo::TypeInfo(v33, v36);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v17 = *v34[2];
    *&v32 = v34[0];
    *(&v32 + 1) = v17;
    if (!v34[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(&v32, a4, this);
    if (!v32)
    {
LABEL_8:
      v16 = re::TypeInfo::name(this);
LABEL_30:
      v21 = 0;
      return v21 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, &v32, &v35);
  re::TypeInfo::TypeInfo(v31, v36);
  if ((a7 & 1) == 0)
  {
    v18 = *a4;
    if (*a4)
    {
      if (*(a1 + 336) == 1)
      {
        v35 = *a4;
        v19 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 344, &v35);
        if (v19)
        {
          LODWORD(v35) = *v19;
          v30 = 1;
          if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v30))
          {
            goto LABEL_30;
          }

          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v35);
          goto LABEL_17;
        }

        v18 = *a4;
      }

      v29 = v32;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v18, &v29);
      LODWORD(v35) = 2;
      if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v35))
      {
        goto LABEL_30;
      }

      if (isPointerToPolymorphicType)
      {
        re::internal::serializePolymorphicObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, *a4, v31, v33, v15);
      }

      else if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, *a4, v34, v33, 0);
      }

      if (*(a1 + 336) == 1)
      {
        --*(a1 + 488);
        ++*(a1 + 496);
      }

      goto LABEL_18;
    }
  }

  LODWORD(v35) = 0;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v35);
  v21 = 0;
  if (v20)
  {
LABEL_17:
LABEL_18:
    v21 = *(a1 + 64) ^ 1;
  }

  return v21 & 1;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_anonymous_namespace_ *result, unsigned int *a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(result, 0, 0);
    if (result)
    {
    }
  }

  return result;
}

uint64_t *re::internal::serializePolymorphicObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, char *a2, uint64_t a3, re::TypeInfo *a4, re::TypeRegistry **a5, int a6)
{
  re::TypeInfo::TypeInfo(v19, a4);
  if (a6)
  {
    v12 = *a5;
    v13 = re::TypeInfo::name(a4);
    re::TypeRegistry::typeInfo(&v17, v12, v13);
    if (v17 != 1)
    {
      v16 = re::TypeInfo::name(a4);
    }

    re::TypeInfo::operator=(v19, &v18);
  }

  result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, 0);
  if (result)
  {
    v15 = re::TypeInfo::polymorphicObjectName(v19);
    if ((a1[64] & 1) == 0)
    {
      (*(*a1 + 72))(a1, v15[1], 0, a3, a4, v19, 0);
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D18F98;
  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18F30;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 1;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::internal::SharedObjectGraph::markAndSweep((a1 + 336), *(a1 + 48), *(a1 + 264));
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 272);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v31, v19, &v27);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 272);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}