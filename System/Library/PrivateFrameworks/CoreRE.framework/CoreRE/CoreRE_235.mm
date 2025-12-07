void re::snapshot::BufferDecoder::logInput(re::snapshot::BufferDecoder *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *re::foundationSerializationLogObjects(this);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v4 = *(this + 2);
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_INFO, "Snapshot reader data is %zu bytes", buf, 0xCu);
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = 0;
    do
    {
      if (v5 >= 0x100)
      {
        v7 = 256;
      }

      else
      {
        v7 = v5;
      }

      *buf = 0u;
      v26 = 0u;
      re::DynamicString::setCapacity(buf, 0);
      v8 = re::DynamicString::resize(buf, 3 * v7, 0);
      if (v5)
      {
        v10 = 0;
        v11 = v6;
        do
        {
          v12 = *(this + 2);
          if (v12 <= v11)
          {
            re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v12);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v21);
            __break(1u);
LABEL_23:
            re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v15);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v22);
            __break(1u);
          }

          v13 = re::snapshot::BufferDecoder::logInput(void)const::chars[*(*(this + 1) + v11) >> 4];
          *re::DynamicString::operator[](buf, v10) = v13;
          v15 = *(this + 2);
          if (v15 <= v11)
          {
            goto LABEL_23;
          }

          v16 = re::snapshot::BufferDecoder::logInput(void)const::chars[*(*(this + 1) + v11) & 0xF];
          *re::DynamicString::operator[](buf, v10 + 1) = v16;
          v8 = re::DynamicString::operator[](buf, v10 + 2);
          *v8 = 32;
          v10 += 3;
          ++v11;
        }

        while (3 * v7 != v10);
      }

      v17 = *re::foundationSerializationLogObjects(v8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = &buf[9];
        if (buf[8])
        {
          v18 = v26;
        }

        *v23 = 136315138;
        v24 = v18;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_INFO, "Snapshot reader data = %s", v23, 0xCu);
      }

      v3 = *buf;
      if (*buf)
      {
        if (buf[8])
        {
          v3 = (*(**buf + 40))();
        }
      }

      v6 += v7;
      v5 -= v7;
    }

    while (*(this + 2) > v6);
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(const char **this, const re::IntrospectionBase **a2, unint64_t a3)
{
  switch(*(a3 + 16))
  {
    case 0:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 1:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 2:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 3:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 4:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 5:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 6:
      v12 = 0;
      if (re::snapshot::DecoderRaw::beginString(this, &v12))
      {
        v10 = v12;
        re::DynamicString::resize(a2, v12, 0);
        if (a2[1])
        {
          v11 = a2[2];
        }

        else
        {
          v11 = (a2 + 9);
        }

        re::snapshot::BufferDecoder::readRaw(this, v11, v10);
      }

      break;
    case 7:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 8:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 9:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 0xA:
      v14 = 0;
      v5 = re::snapshot::DecoderRaw::beginString(this, &v14);
      if (v5)
      {
        v6 = v14;
        v7 = this[3];
        v8 = (this[4] - v7);
        if (v8 >= v14)
        {
          v8 = v14;
        }

        this[3] = &v8[v7];
        v12 = 0;
        v13 = &str_67;
        v9 = re::StringID::operator=(a2, &v12);
        if (v12)
        {
          if (v12)
          {
          }
        }
      }

      break;
    case 0xB:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 0xD:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    default:
      return;
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(const char **this, double *a2, size_t a3)
{
  switch(*(a3 + 16))
  {
    case 0:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 1:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 2:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 3:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 4:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 5:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 6:
      v12 = 0;
      if (re::snapshot::DecoderOPACK::beginString(this, &v12))
      {
        v10 = v12;
        re::DynamicString::resize(a2, v12, 0);
        if (a2[1])
        {
          v11 = *(a2 + 2);
        }

        else
        {
          v11 = a2 + 9;
        }

        re::snapshot::BufferDecoder::readRaw(this, v11, v10);
      }

      break;
    case 7:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 8:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 9:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 0xA:
      v14 = 0;
      v5 = re::snapshot::DecoderOPACK::beginString(this, &v14);
      if (v5)
      {
        v6 = v14;
        v7 = this[3];
        v8 = (this[4] - v7);
        if (v8 >= v14)
        {
          v8 = v14;
        }

        this[3] = &v8[v7];
        v12 = 0;
        v13 = &str_67;
        v9 = re::StringID::operator=(a2, &v12);
        if (v12)
        {
          if (v12)
          {
          }
        }
      }

      break;
    case 0xB:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 0xD:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    default:
      return;
  }
}

BOOL re::snapshot::BufferEncoder::isOK(re::snapshot::BufferEncoder *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2 = v1 >> 1;
  }

  else
  {
    v2 = v1 >> 1;
  }

  return v2 == 0;
}

void re::snapshot::EncoderOPACK::~EncoderOPACK(re::snapshot::EncoderOPACK *this)
{
  *this = &unk_1F5D16DD0;
  re::DynamicString::deinit((this + 40));
}

{
  *this = &unk_1F5D16DD0;
  re::DynamicString::deinit((this + 40));

  JUMPOUT(0x1E6906520);
}

uint64_t re::snapshot::EncoderOPACK::arrayAsData(re::snapshot::EncoderOPACK *this, int a2, int a3, int a4)
{
  if ((a3 & a4 & 1) != 0 || a2)
  {
    return (*(this + 72) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

re::snapshot::BufferEncoder *re::snapshot::EncoderOPACK::serializeData(re::snapshot::EncoderOPACK *this, void *a2, unint64_t a3)
{
  re::snapshot::EncoderOPACK::beginData(this, a3, a3);

  return re::snapshot::BufferEncoder::writeRaw<true>(this, a2, a3);
}

re::snapshot::BufferEncoder *re::snapshot::EncoderOPACK::serializePolymorphicPointer(re::snapshot::BufferEncoder *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v5 = *(this + 4);
  v6 = *(this + 5);
  if (a2)
  {
    if (v5 >= v6)
    {
      if (!re::snapshot::BufferEncoder::grow(this, v5 + 1))
      {
        goto LABEL_4;
      }

      LODWORD(v5) = *(v4 + 4);
    }

    v10 = *(v4 + 1);
    *(v4 + 4) = v5 + 1;
    *(v10 + v5) = -31;
LABEL_4:
    re::snapshot::EncoderOPACK::writeInteger(v4, a3);
    v12 = a2;
    return (*(**(a4 + 32) + 16))(*(a4 + 32), v4, &v12);
  }

  if (v5 < v6)
  {
    goto LABEL_6;
  }

  this = re::snapshot::BufferEncoder::grow(this, v5 + 1);
  if (this)
  {
    LODWORD(v5) = *(v4 + 4);
LABEL_6:
    v11 = *(v4 + 1);
    *(v4 + 4) = v5 + 1;
    *(v11 + v5) = 4;
  }

  return this;
}

void re::snapshot::EncoderRaw::~EncoderRaw(re::snapshot::EncoderRaw *this)
{
  *this = &unk_1F5D16DD0;
  re::DynamicString::deinit((this + 40));
}

{
  *this = &unk_1F5D16DD0;
  re::DynamicString::deinit((this + 40));

  JUMPOUT(0x1E6906520);
}

uint64_t re::snapshot::EncoderRaw::beginOptional(re::snapshot::EncoderRaw *this, unsigned __int8 a2)
{
  __src = a2;
  re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 1uLL);
  return __src;
}

re::snapshot::BufferEncoder *re::snapshot::EncoderRaw::operator<<(re::snapshot::BufferEncoder *a1, char a2)
{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
}

re::snapshot::BufferEncoder *re::snapshot::EncoderRaw::operator<<(re::snapshot::BufferEncoder *a1, __int16 a2)
{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 2uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 2uLL);
}

re::snapshot::BufferEncoder *re::snapshot::EncoderRaw::operator<<(re::snapshot::BufferEncoder *a1, int a2)
{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 4uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 4uLL);
}

re::snapshot::BufferEncoder *re::snapshot::EncoderRaw::operator<<(re::snapshot::BufferEncoder *a1, uint64_t a2)
{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
}

re::snapshot::BufferEncoder *re::snapshot::EncoderRaw::serializeData(re::snapshot::EncoderRaw *this, void *a2, size_t a3)
{
  __src = a3;
  re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
  return re::snapshot::BufferEncoder::writeRaw<true>(this, a2, a3);
}

re::snapshot::BufferEncoder *re::snapshot::EncoderRaw::serializePolymorphicPointer(re::snapshot::BufferEncoder *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    __src = 2;
    re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 1uLL);
    v10 = a3;
    re::snapshot::BufferEncoder::writeRaw<true>(this, &v10, 8uLL);
    v10 = a2;
    return (*(**(a4 + 32) + 16))(*(a4 + 32), this, &v10);
  }

  else
  {
    LOBYTE(v10) = 0;
    return re::snapshot::BufferEncoder::writeRaw<true>(this, &v10, 1uLL);
  }
}

uint64_t re::snapshot::DecoderOPACK::operator>>(re::snapshot::DecoderOPACK *a1, _BYTE *a2)
{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

uint64_t re::snapshot::DecoderOPACK::operator>>(re::snapshot::DecoderOPACK *a1, _WORD *a2)
{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

uint64_t re::snapshot::DecoderOPACK::operator>>(re::snapshot::DecoderOPACK *a1, _DWORD *a2)
{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

BOOL re::snapshot::DecoderRaw::beginData(re::snapshot::DecoderRaw *this, unint64_t *a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4) - v2;
  if (v3 <= 7)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v3);
  }

  else
  {
    *a2 = *v2;
    *(this + 3) += 8;
  }

  return v3 > 7;
}

uint64_t *re::snapshot::DecoderRaw::operator>>(uint64_t *result, _BYTE *a2)
{
  v2 = result[3];
  if (result[4] == v2)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  *a2 = *v2;
  ++result[3];
  return result;
}

{
  v2 = result[3];
  if (result[4] == v2)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  *a2 = *v2;
  ++result[3];
  return result;
}

{
  v2 = result[3];
  if (result[4] == v2)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  *a2 = *v2;
  ++result[3];
  return result;
}

uint64_t *re::snapshot::DecoderRaw::operator>>(uint64_t *result, _WORD *a2)
{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 1)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 2uLL, v3);
  }

  *a2 = *v2;
  result[3] += 2;
  return result;
}

uint64_t *re::snapshot::DecoderRaw::operator>>(uint64_t *result, void *a2)
{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 7)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v3);
  }

  *a2 = *v2;
  result[3] += 8;
  return result;
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 56);
  if (v3 <= 5)
  {
    if (v3 <= 2)
    {
      if (v3 == 1 || v3 == 2)
      {
        goto LABEL_16;
      }

      return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected basic type: %s", *(a3 + 48));
    }

    if (v3 == 3)
    {
LABEL_18:
      LOWORD(__src) = *a2;
      v4 = 2;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, v4);
    }

    if (v3 == 4)
    {
LABEL_17:
      LODWORD(__src) = *a2;
LABEL_22:
      v4 = 4;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, v4);
    }

LABEL_19:
    __src = *a2;
    goto LABEL_20;
  }

  if (v3 <= 8)
  {
    if (v3 != 6)
    {
      if (v3 != 7)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_16:
    LOBYTE(__src) = *a2;
    v4 = 1;
    return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, v4);
  }

  switch(v3)
  {
    case 9:
      goto LABEL_19;
    case 10:
      LODWORD(__src) = *a2;
      goto LABEL_22;
    case 11:
      __src = *a2;
LABEL_20:
      v4 = 8;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, v4);
  }

  return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected basic type: %s", *(a3 + 48));
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, int *a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      __src = *a2;
      p_src = &__src;
      v5 = 4;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, p_src, v5);
    }

    if (v3 == 8)
    {
      v10 = *a2;
      p_src = &v10;
      v5 = 8;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, p_src, v5);
    }

    return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected enum size %d", *(a3 + 20));
  }

  if (v3 == 1)
  {
    v7 = *a2;
    p_src = &v7;
    v5 = 1;
    return re::snapshot::BufferEncoder::writeRaw<true>(a1, p_src, v5);
  }

  if (v3 != 2)
  {
    return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected enum size %d", *(a3 + 20));
  }

  v8 = *a2;
  p_src = &v8;
  v5 = 2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, p_src, v5);
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, const re::IntrospectionBase **a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C3C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3C30))
  {
    _MergedGlobals_553 = re::introspect<char>(0);
    __cxa_guard_release(&qword_1EE1C3C30);
  }

  v6 = *a2;
  v7 = *(a3 + 48);
  v8 = re::PolymorphicData::makeWithPointer(&__src, v7, v6);
  v9 = v25;
  if (v25)
  {
    v10 = v24 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && __src != 0)
  {
    __dst = 0;
    v13 = memcpy(&__dst, __src, *(v24 + 20));
    v14 = __dst;
    v15 = *(v9 + 8);
    v16 = v15[3];
    while (v16 != __dst)
    {
      v16 = v15[8];
      v15 += 5;
    }

    v17 = v15[1];
    v21[0] = v7;
    v21[1] = v17;
    v18 = re::globalAllocators(v13)[2];
    v26 = &unk_1F5D17450;
    v27 = v21;
    v28 = v18;
    v29 = &v26;
    re::snapshot::EncoderRaw::serializePolymorphicPointer(a1, v6, v14, &v26);
    return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v26);
  }

  if (v7 != _MergedGlobals_553)
  {
    v21[0] = v7;
    v12 = re::globalAllocators(v8)[2];
    v26 = &unk_1F5D174D0;
    v27 = v21;
    v28 = v12;
    v29 = &v26;
    re::snapshot::EncoderRaw::serializePointer(a1, v6, &v26);
    return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v26);
  }

  LOBYTE(v26) = v6 != 0;
  result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &v26, 1uLL);
  if (v26 == 1)
  {
    if (v6)
    {
      v20 = strlen(v6);
    }

    else
    {
      v20 = -1;
    }

    return re::snapshot::EncoderRaw::serializeString(a1, v6, v20);
  }

  return result;
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, uint64_t a2, uint64_t *a3)
{
  __src = (*(*a3 + 56))(a3);
  result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
  if (__src == 1)
  {
    v7 = (*(*a3 + 80))(a3, a2);
    return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, v7, a3[6]);
  }

  return result;
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *this, char *a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  if (*(v5 + 28) == 1)
  {
    __src = *(v5 + 20) * *(a3 + 64);
    v6 = __src;
    re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(this, a2, v6);
  }

  else
  {
    __src = *(a3 + 64);
    result = re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
    if (*(a3 + 64) >= 1)
    {
      v9 = 0;
      do
      {
        result = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, v5);
        a2 += *(v5 + 20);
        ++v9;
      }

      while (v9 < *(a3 + 64));
    }
  }

  return result;
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, uint64_t a2, void *a3)
{
  v6 = a3[6];
  v7 = (*(*a3 + 88))(a3);
  v8 = v7;
  if (*(v6 + 28) == 1)
  {
    if (v7)
    {
      v9 = (*(*a3 + 104))(a3, a2, 0);
      v10 = v8 * *(v6 + 20);
      __src = v10;
      re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, v9, v10);
    }

    __src = 0;
    result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
    v14 = *(a1 + 4);
    if (v14 <= *(a1 + 5))
    {
      goto LABEL_9;
    }

    result = re::snapshot::BufferEncoder::grow(a1, v14);
    if (result)
    {
      LODWORD(v14) = *(a1 + 4);
LABEL_9:
      *(a1 + 4) = v14;
    }
  }

  else
  {
    __src = v7;
    result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v13 = (*(*a3 + 104))(a3, a2, i);
        result = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, v13, v6);
      }
    }
  }

  return result;
}

{
  v6 = a3[6];
  v7 = (*(*a3 + 80))(a3);
  v8 = v7;
  if (*(v6 + 28) == 1)
  {
    if (v7)
    {
      v9 = (*(*a3 + 104))(a3, a2, 0);
      v10 = v8 * *(v6 + 20);
      __src = v10;
      re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, v9, v10);
    }

    __src = 0;
    result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
    v14 = *(a1 + 4);
    if (v14 <= *(a1 + 5))
    {
      goto LABEL_9;
    }

    result = re::snapshot::BufferEncoder::grow(a1, v14);
    if (result)
    {
      LODWORD(v14) = *(a1 + 4);
LABEL_9:
      *(a1 + 4) = v14;
    }
  }

  else
  {
    __src = v7;
    result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v13 = (*(*a3 + 104))(a3, a2, i);
        result = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, v13, v6);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, uint64_t a2, void *a3)
{
  v6 = a3[6];
  v11 = (*(*a3 + 80))(a3);
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &v11, 8uLL);
  v11 = (*(*a3 + 88))(a3, a2);
  v12 = v7;
  while (1)
  {
    result = (*(*a3 + 96))(a3, a2);
    if (v11 == result && v12 == v9 && HIWORD(v12) == HIWORD(v9))
    {
      break;
    }

    v10 = (*(*a3 + 104))(a3, &v11);
    re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1, v10, v6);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v11);
  }

  return result;
}

void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, uint64_t a2, void *a3)
{
  __src[4] = *MEMORY[0x1E69E9840];
  __src[0] = (*(*a3 + 80))(a3);
  re::snapshot::BufferEncoder::writeRaw<true>(a1, __src, 8uLL);
  operator new();
}

uint64_t *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  v6 = *(a3 + 72);
  v7 = (*(*a1 + 32))(a1);
  if ((v6(v7, a3, a2, &v12) & 1) == 0)
  {
    if (v13)
    {
      v13 = 1;
      v8 = v14;
    }

    else
    {
      LOBYTE(v13) = 0;
      v8 = &v13 + 1;
    }

    *v8 = 0;
  }

  if (v13)
  {
    v9 = v14;
  }

  else
  {
    v9 = &v13 + 1;
  }

  if (v13)
  {
    v10 = v13 >> 1;
  }

  else
  {
    v10 = v13 >> 1;
  }

  re::snapshot::EncoderRaw::serializeString(a1, v9, v10);
  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17490;
  *(a2 + 8) = *v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17490;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17490;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D17510;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17510;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17510;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17550;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(*(a1 + 8), *a2, *(a1 + 16));
  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(*(a1 + 8), v4, *(a1 + 24));
  return 1;
}

void *re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D175D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D175D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D175D8;
  a2[1] = v2;
  return a2;
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::BufferEncoder *a1, int *a2, uint64_t a3)
{
  v4 = *(a3 + 56);
  if (v4 <= 5)
  {
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
        v9 = *a2;

        return re::snapshot::EncoderOPACK::operator<<(a1, v9);
      }

      else
      {
        if (v4 != 2)
        {
          return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected basic type: %s", *(a3 + 48));
        }

        v8 = *a2;

        return re::snapshot::EncoderOPACK::writeInteger(a1, v8);
      }
    }

    if (v4 == 3)
    {
      v12 = *a2;

      return re::snapshot::EncoderOPACK::writeInteger(a1, v12);
    }

    if (v4 == 4)
    {
      v10 = *a2;

      return re::snapshot::EncoderOPACK::writeInteger(a1, v10);
    }

LABEL_23:
    v5 = *a2;

    return re::snapshot::EncoderOPACK::writeInteger(a1, v5);
  }

  if (v4 <= 8)
  {
    if (v4 != 6)
    {
      if (v4 != 7)
      {
        v5 = *a2;

        return re::snapshot::EncoderOPACK::writeInteger(a1, v5);
      }

      v10 = *a2;

      return re::snapshot::EncoderOPACK::writeInteger(a1, v10);
    }

    v12 = *a2;

    return re::snapshot::EncoderOPACK::writeInteger(a1, v12);
  }

  if (v4 == 9)
  {
    goto LABEL_23;
  }

  if (v4 != 10)
  {
    if (v4 == 11)
    {
      v7 = *a2;

      return re::snapshot::EncoderOPACK::operator<<(a1, v7);
    }

    return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected basic type: %s", *(a3 + 48));
  }

  v11 = *a2;

  return re::snapshot::EncoderOPACK::operator<<(a1, v11);
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::BufferEncoder *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v7 = *a2;
    }

    else
    {
      if (v4 != 8)
      {
        return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected enum size %d", v4);
      }

      v7 = *a2;
    }

    return re::snapshot::EncoderOPACK::writeInteger(a1, v7);
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v5 = *a2;

      return re::snapshot::EncoderOPACK::writeInteger(a1, v5);
    }

    return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected enum size %d", v4);
  }

  v8 = *a2;

  return re::snapshot::EncoderOPACK::writeInteger(a1, v8);
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::BufferEncoder *a1, const re::IntrospectionBase **a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C3C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3C40))
  {
    qword_1EE1C3C38 = re::introspect<char>(0);
    __cxa_guard_release(&qword_1EE1C3C40);
  }

  v6 = *a2;
  v7 = *(a3 + 48);
  v8 = re::PolymorphicData::makeWithPointer(&__src, v7, v6);
  v9 = v25;
  if (v25)
  {
    v10 = v24 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && __src != 0)
  {
    __dst = 0;
    v13 = memcpy(&__dst, __src, *(v24 + 20));
    v14 = __dst;
    v15 = *(v9 + 8);
    v16 = v15[3];
    while (v16 != __dst)
    {
      v16 = v15[8];
      v15 += 5;
    }

    v17 = v15[1];
    v21[0] = v7;
    v21[1] = v17;
    v18 = re::globalAllocators(v13)[2];
    v26 = &unk_1F5D17618;
    v27 = v21;
    v28 = v18;
    v29 = &v26;
    re::snapshot::EncoderOPACK::serializePolymorphicPointer(a1, v6, v14, &v26);
    return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v26);
  }

  if (v7 != qword_1EE1C3C38)
  {
    v21[0] = v7;
    v12 = re::globalAllocators(v8)[2];
    v26 = &unk_1F5D17698;
    v27 = v21;
    v28 = v12;
    v29 = &v26;
    re::snapshot::EncoderOPACK::serializePointer(a1, v6, &v26);
    return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v26);
  }

  result = re::snapshot::EncoderOPACK::beginOptional(a1, v6 != 0);
  if (v6)
  {
    v20 = strlen(v6);

    return re::snapshot::EncoderOPACK::serializeString(a1, v6, v20);
  }

  return result;
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *a1, uint64_t a2, void *a3)
{
  v6 = (*(*a3 + 56))(a3);
  v7 = v6;
  result = re::snapshot::EncoderOPACK::beginOptional(a1, v6);
  if (v7)
  {
    v9 = (*(*a3 + 80))(a3, a2);
    v10 = a3[6];

    return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(a1, v9, v10);
  }

  return result;
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, char *a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  if (((*(v6 + 29) & *(v6 + 28) & 1) != 0 || ((v7 = *(v6 + 16), v7 != 9) ? (v8 = v7 == 0) : (v8 = 1), v8)) && (*(this + 72) & 4) != 0)
  {
    v12 = *(v6 + 20) * *(a3 + 64);
    re::snapshot::EncoderOPACK::beginData(this, v12, v12);

    return re::snapshot::BufferEncoder::writeRaw<true>(this, a2, v12);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(this, *(a3 + 64));
    v9 = *(a3 + 64);
    if (v9 >= 1)
    {
      for (i = 0; i < v9; ++i)
      {
        re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, v6);
        a2 += *(v6 + 20);
        v9 = *(a3 + 64);
      }
    }

    return re::snapshot::EncoderOPACK::endArray(this, v9);
  }
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[6];
  v7 = *(v6 + 16);
  v8 = (*(*a3 + 88))(a3);
  v9 = v8;
  if (((*(v6 + 29) & *(v6 + 28) & 1) != 0 || (v7 != 9 ? (v10 = v7 == 0) : (v10 = 1), v10)) && (*(a1 + 72) & 4) != 0)
  {
    if (!v8)
    {
      result = re::snapshot::EncoderOPACK::beginData(a1, 0, 0);
      v16 = *(a1 + 16);
      if (v16 > *(a1 + 20))
      {
        result = re::snapshot::BufferEncoder::grow(a1, v16);
        if (!result)
        {
          return result;
        }

        LODWORD(v16) = *(a1 + 16);
      }

      *(a1 + 16) = v16;
      return result;
    }

    v14 = (*(*a3 + 104))(a3, a2, 0);
    v15 = v9 * *(v6 + 20);
    re::snapshot::EncoderOPACK::beginData(a1, v15, v15);

    return re::snapshot::BufferEncoder::writeRaw<true>(a1, v14, v15);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, v8);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v12 = (*(*a3 + 104))(a3, a2, i);
        re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(a1, v12, v6);
      }
    }

    return re::snapshot::EncoderOPACK::endArray(a1, v9);
  }
}

{
  v6 = a3[6];
  v7 = *(v6 + 16);
  v8 = (*(*a3 + 80))(a3);
  v9 = v8;
  if (((*(v6 + 29) & *(v6 + 28) & 1) != 0 || (v7 != 9 ? (v10 = v7 == 0) : (v10 = 1), v10)) && (*(a1 + 72) & 4) != 0)
  {
    if (!v8)
    {
      result = re::snapshot::EncoderOPACK::beginData(a1, 0, 0);
      v16 = *(a1 + 16);
      if (v16 > *(a1 + 20))
      {
        result = re::snapshot::BufferEncoder::grow(a1, v16);
        if (!result)
        {
          return result;
        }

        LODWORD(v16) = *(a1 + 16);
      }

      *(a1 + 16) = v16;
      return result;
    }

    v14 = (*(*a3 + 104))(a3, a2, 0);
    v15 = v9 * *(v6 + 20);
    re::snapshot::EncoderOPACK::beginData(a1, v15, v15);

    return re::snapshot::BufferEncoder::writeRaw<true>(a1, v14, v15);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, v8);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v12 = (*(*a3 + 104))(a3, a2, i);
        re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(a1, v12, v6);
      }
    }

    return re::snapshot::EncoderOPACK::endArray(a1, v9);
  }
}

re::snapshot::BufferEncoder *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::BufferEncoder *a1, uint64_t a2, void *a3)
{
  v6 = a3[6];
  v7 = (*(*a3 + 80))(a3);
  re::snapshot::EncoderOPACK::beginArray(a1, v7);
  v13 = (*(*a3 + 88))(a3, a2);
  v14 = v8;
  while (1)
  {
    v9 = (*(*a3 + 96))(a3, a2);
    if (v13 == v9 && v14 == v10 && HIWORD(v14) == HIWORD(v10))
    {
      break;
    }

    v11 = (*(*a3 + 104))(a3, &v13);
    re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(a1, v11, v6);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v13);
  }

  return re::snapshot::EncoderOPACK::endArray(a1, v7);
}

void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::BufferEncoder *a1, uint64_t a2, void *a3)
{
  v4 = (*(*a3 + 80))(a3);
  re::snapshot::EncoderOPACK::beginDictionary(a1, v4);
  operator new();
}

uint64_t *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  v6 = *(a3 + 72);
  v7 = (*(*a1 + 32))(a1);
  if ((v6(v7, a3, a2, &v12) & 1) == 0)
  {
    if (v13)
    {
      v13 = 1;
      v8 = v14;
    }

    else
    {
      LOBYTE(v13) = 0;
      v8 = &v13 + 1;
    }

    *v8 = 0;
  }

  if (v13)
  {
    v9 = v14;
  }

  else
  {
    v9 = &v13 + 1;
  }

  if (v13)
  {
    v10 = v13 >> 1;
  }

  else
  {
    v10 = v13 >> 1;
  }

  re::snapshot::EncoderOPACK::serializeString(a1, v9, v10);
  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17658;
  *(a2 + 8) = *v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17658;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17658;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D176D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D176D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D176D8;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17718;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(*(a1 + 8), *a2, *(a1 + 16));
  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(*(a1 + 8), v4, *(a1 + 24));
  return 1;
}

void *re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D177A0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D177A0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D177A0;
  a2[1] = v2;
  return a2;
}

re::snapshot::BufferDecoder *re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::BufferDecoder *a1, _BYTE *a2, uint64_t a3)
{
  v4 = *(a3 + 56);
  if (v4 <= 5)
  {
    if (v4 <= 2)
    {
      if (v4 == 1)
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }

      else
      {
        if (v4 != 2)
        {
          return re::snapshot::BufferDecoder::error(a1, "unexpected basic type: %s", *(a3 + 48));
        }

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }
    }

    else if (v4 == 3)
    {

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }

    else if (v4 == 4)
    {

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }

    else
    {

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }
  }

  else
  {
    if (v4 <= 8)
    {
      if (v4 == 6)
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }

      else if (v4 == 7)
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }

      else
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }
    }

    switch(v4)
    {
      case 9:

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      case 10:

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      case 11:

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      default:
        return re::snapshot::BufferDecoder::error(a1, "unexpected basic type: %s", *(a3 + 48));
    }
  }
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::BufferDecoder *a1, _DWORD *a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  if (v4 > 3)
  {
    if (v4 == 4)
    {

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }

    else
    {
      if (v4 != 8)
      {
        return re::snapshot::BufferDecoder::error(a1, "unexpected enum size %d", v4);
      }

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }

      return re::snapshot::BufferDecoder::error(a1, "unexpected enum size %d", v4);
    }

    return re::snapshot::DecoderRaw::operator>>(a1, a2);
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *this, const re::IntrospectionBase **a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C3C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3C50))
  {
    qword_1EE1C3C48 = re::introspect<char>(0);
    __cxa_guard_release(&qword_1EE1C3C50);
  }

  v6 = *(a3 + 48);
  if (v6 != qword_1EE1C3C48)
  {
    v7 = re::PolymorphicData::makeWithPointer(&v20, v6, *a2);
    if (v21 && *(&v20 + 1))
    {
      v17 = v6;
      v18 = v20;
      v19 = v21;
      v8 = re::globalAllocators(v7)[2];
      __len = &unk_1F5D177E0;
      v23 = &v17;
      v24 = v8;
      p_len = &__len;
      re::snapshot::DecoderRaw::deserializePolymorphicPointer(this, a2, &__len);
      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(&__len);
    }

    else
    {
      v17 = v6;
      v15 = re::globalAllocators(v7)[2];
      __len = &unk_1F5D17860;
      v23 = &v17;
      v24 = v15;
      p_len = &__len;
      re::snapshot::DecoderRaw::deserializePointer(this, a2, &__len);
      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(&__len);
    }

    return;
  }

  v9 = *(this + 3);
  if (*(this + 4) == v9)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  else
  {
    v10 = *v9;
    *(this + 3) = v9 + 1;
    if (v10)
    {
      __len = 0;
      if (re::snapshot::DecoderRaw::beginString(this, &__len))
      {
        v11 = *a2;
        v12 = __len;
        if (*a2 && strlen(*a2) != __len)
        {
          v13 = (*(*this + 40))(this);
          (*(*v13 + 40))(v13, *a2);
          v11 = 0;
          *a2 = 0;
        }

        if (v12 != -1)
        {
          if (v11 || (v14 = (*(*this + 40))(this), v11 = (*(*v14 + 32))(v14, v12 + 1, 0), (*a2 = v11) != 0))
          {
            re::snapshot::BufferDecoder::readRaw(this, v11, v12);
            *(*a2 + v12) = 0;
          }

          else
          {
            re::snapshot::BufferDecoder::error(this, "C String of %zu bytes", v12 + 1);
          }
        }
      }

      return;
    }
  }

  if (*a2)
  {
    v16 = (*(*this + 40))(this);
    (*(*v16 + 40))(v16, *a2);
    *a2 = 0;
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::BufferDecoder *this, uint64_t a2, void *a3)
{
  v6 = *(this + 3);
  if (*(this + 4) == v6)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  else
  {
    v7 = *v6;
    *(this + 3) = v6 + 1;
    if (v7)
    {
      (*(*a3 + 64))(a3, a2, 1);
      v8 = (*(*a3 + 72))(a3, a2);
      v9 = a3[6];

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v8, v9);
      return;
    }
  }

  v10 = *(*a3 + 64);

  v10(a3, a2, 0);
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::BufferDecoder *this, void *__dst, uint64_t a3)
{
  v4 = __dst;
  v6 = *(a3 + 48);
  v14 = 0;
  if (*(v6 + 28) == 1)
  {
    v7 = *(this + 3);
    v8 = *(this + 4) - v7;
    if (v8 > 7)
    {
      v9 = *v7;
      *(this + 3) = v7 + 1;
      v10 = *(v6 + 20);
      if (v9 % v10)
      {
        re::snapshot::BufferDecoder::error(this, "C Array element size mismatch: expected multiple of %d, got %zu");
      }

      else if (v9 / v10 == *(a3 + 64))
      {

        re::snapshot::BufferDecoder::readRaw(this, __dst, v9);
      }

      else
      {
        re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %d, got %zu");
      }

      return;
    }

    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v8);
  }

  if (re::snapshot::DecoderRaw::beginArray(this, &v14))
  {
    v11 = v14;
    if (v14 == *(a3 + 64))
    {
      v12 = 0;
      if (v14)
      {
        v13 = v14;
        do
        {
          if (v12 < *(a3 + 64))
          {
            re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v4, v6);
            v4 = (v4 + *(v6 + 20));
            ++v12;
          }

          --v13;
        }

        while (v13);
      }

      if (v11 != v12)
      {
        re::snapshot::BufferDecoder::error(this, "size mismatch: expected %zu, got %d");
      }
    }

    else
    {
      re::snapshot::BufferDecoder::error(this, "unexpected C Array size: expected %d, got %zu");
    }
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *this, uint64_t a2, void *a3)
{
  v6 = a3[6];
  if (*(v6 + 28) == 1)
  {
    v7 = *(this + 3);
    v8 = *(this + 4) - v7;
    if (v8 > 7)
    {
      v9 = *v7;
      *(this + 3) = v7 + 1;
      if (v9 % *(v6 + 20))
      {

        re::snapshot::BufferDecoder::skipData(this, v9);
      }

      else
      {
        v17 = (*(*this + 40))(this);
        v18 = (*(*this + 32))(this);
        (*(*a3 + 72))(a3, v17, v18, a2, v9 / *(v6 + 20));
        if (v9)
        {
          v19 = (*(*a3 + 96))(a3, a2, 0);

          re::snapshot::BufferDecoder::readRaw(this, v19, v9);
        }
      }

      return;
    }

    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v8);
  }

  v20 = 0;
  if (re::snapshot::DecoderRaw::beginArray(this, &v20))
  {
    v10 = (*(*this + 40))(this);
    v11 = (*(*this + 32))(this);
    v12 = v20;
    (*(*a3 + 72))(a3, v10, v11, a2, v20);
    v13 = 0;
    if (v12)
    {
      v14 = v12;
      do
      {
        if (v12 > v13)
        {
          v15 = v13++;
          v16 = (*(*a3 + 96))(a3, a2, v15);
          re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v16, v6);
        }

        --v14;
      }

      while (v14);
    }

    if (v12 != v13)
    {
      re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d", v12, v13);
    }
  }
}

{
  v6 = a3[6];
  if (*(v6 + 28) == 1)
  {
    v7 = *(this + 3);
    v8 = *(this + 4) - v7;
    if (v8 > 7)
    {
      v9 = *v7;
      *(this + 3) = v7 + 1;
      if (((*(*a3 + 88))(a3, a2) & 1) == 0)
      {
        v10 = (*(*this + 40))(this);
        v11 = (*(*this + 32))(this);
        (*(*a3 + 64))(a3, a2, v10, v11, v9 / *(v6 + 20));
      }

      v12 = *(v6 + 20);
      if (v9 % v12)
      {

        re::snapshot::BufferDecoder::skipData(this, v9);
      }

      else if (v9 / v12 == (*(*a3 + 80))(a3, a2))
      {
        if (v9)
        {
          v20 = (*(*a3 + 96))(a3, a2, 0);

          re::snapshot::BufferDecoder::readRaw(this, v20, v9);
        }
      }

      else
      {
        (*(*a3 + 80))(a3, a2);
        re::snapshot::BufferDecoder::error(this, "unexpected data size reading FixedArray: expected %zu, got %zu");
      }

      return;
    }

    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v8);
  }

  v21 = 0;
  if (re::snapshot::DecoderRaw::beginArray(this, &v21))
  {
    if ((*(*a3 + 88))(a3, a2))
    {
      v13 = v21;
    }

    else
    {
      v14 = (*(*this + 40))(this);
      v15 = (*(*this + 32))(this);
      v13 = v21;
      (*(*a3 + 64))(a3, a2, v14, v15, v21);
    }

    if ((*(*a3 + 80))(a3, a2) == v13)
    {
      v16 = 0;
      if (v13)
      {
        v17 = v13;
        do
        {
          if ((*(*a3 + 80))(a3, a2) > v16)
          {
            v18 = v16++;
            v19 = (*(*a3 + 96))(a3, a2, v18);
            re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v19, v6);
          }

          --v17;
        }

        while (v17);
      }

      if (v13 != v16)
      {
        re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
      }
    }

    else
    {
      (*(*a3 + 80))(a3, a2);
      re::snapshot::BufferDecoder::error(this, "unexpected FixedArray size: expected %zu, got %zu");
    }
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(const char **a1, uint64_t a2, void *a3)
{
  if ((*(*a3 + 80))(a3))
  {

    re::snapshot::BufferDecoder::error(a1, "cannot read into existing DataArray");
  }

  else
  {
    v6 = a3[6];
    v11 = 0;
    if (re::snapshot::DecoderRaw::beginArray(a1, &v11))
    {
      v7 = v11;
      while (v7)
      {
        --v7;
        v8 = (*(*a1 + 5))(a1);
        v9 = (*(*a1 + 4))(a1);
        v10 = (*(*a3 + 72))(a3, v8, v9, a2);
        re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1, v10, v6);
      }
    }
  }
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *a1, uint64_t a2, void *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = 0;
  result = re::snapshot::DecoderRaw::beginDictionary(a1, v24);
  if (result)
  {
    v7 = (*(*a3 + 88))(a3, a2);
    v8 = v24[0];
    if (v24[0] != -1)
    {
      v7 = (*(*a3 + 72))(a3, a2, v24[0]);
    }

    v9 = a3[6];
    v10 = a3[8];
    v11 = *(v9 + 6);
    v12 = *(v9 + 5) + v11 - 1;
    __space = v12;
    MEMORY[0x1EEE9AC00](v7);
    v14 = &__ptr - v13;
    bzero(&__ptr - v13, v12);
    __ptr = v14;
    result = std::align(v11, v12, &__ptr, &__space);
    for (__ptr = result; v8; result = (*(*a3 + 112))(a3, __ptr))
    {
      --v8;
      v15 = (*(*a1 + 40))(a1);
      v16 = (*(*a1 + 32))(a1);
      v17 = __ptr;
      re::introspectionCallConstructor(v16, v9, __ptr);
      re::introspectionInitElement(v15, v18, v9, v17);
      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1, __ptr, v9);
      v19 = (*(*a1 + 40))(a1);
      v20 = (*(*a1 + 32))(a1);
      v21 = (*(*a3 + 96))(a3, v19, v20, a2, __ptr);
      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1, v21, v10);
    }
  }

  return result;
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderRaw>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v13, 0);
  v17 = 0;
  if (re::snapshot::DecoderRaw::beginString(a1, &v17))
  {
    v6 = v17;
    re::DynamicString::resize(&v13, v17, 0);
    if (v14)
    {
      v7 = v15;
    }

    else
    {
      v7 = &v14 + 1;
    }

    re::snapshot::BufferDecoder::readRaw(a1, v7, v6);
  }

  v8 = *(a3 + 80);
  v9 = (*(*a1 + 40))(a1);
  v10 = (*(*a1 + 32))(a1);
  if (v14)
  {
    v11 = v15;
  }

  else
  {
    v11 = &v14 + 1;
  }

  v8(v9, v10, a3, a2, v11);
  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))();
    }
  }

  return result;
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(uint64_t this, unint64_t a2, unint64_t a3)
{
  v5 = this;
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 128);
  if (!v6)
  {
    if (!*(a3 + 56))
    {
      return;
    }

    v7 = 0;
    v8 = *(a3 + 60);
    while (1)
    {
      v9 = *(*(a3 + 64) + 8 * v7);
      if (*v9 != 1)
      {
        goto LABEL_30;
      }

      v10 = *(v9 + 40);
      if ((v8 & 1) != 0 && v10 == 3)
      {
        goto LABEL_30;
      }

      if (v10 > 1)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_28;
      }

      if (v10 == 1)
      {
        v11 = *(v9 + 16);
        v49 = *(v9 + 36);
        v50[0] = 0;
        __dst = 0;
        if (*(a2 + v49))
        {
          v12 = *(v9 + 48);
          if (v12)
          {
            memcpy(&__dst, (a2 + *(v9 + 64)), *(v12 + 20));
          }
        }

        if (*(*(v11 + 48) + 16))
        {
          this = re::snapshot::DecoderRaw::beginArray(v5, v50);
          if (this)
          {
            v13 = v49;
            v47 = v11;
            v48 = v50[0];
            v46 = v8;
            if (!*(a2 + v49))
            {
              v27 = 1;
              goto LABEL_64;
            }

            v14 = __dst;
            if (__dst != v50[0])
            {
              v53 = 0;
              v15 = *(*(v11 + 48) + 16);
              if (v15 > 6)
              {
                v16 = v5;
                if (v15 > 9)
                {
                  if (v15 == 10)
                  {
                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(__src);
                  }

                  else
                  {
                    if (v15 != 13)
                    {
                      goto LABEL_63;
                    }

                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(__src, v11);
                  }
                }

                else if (v15 == 7)
                {
                  std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(__src, v11);
                }

                else
                {
                  if (v15 != 8)
                  {
                    goto LABEL_63;
                  }

                  std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(__src, v5, v11);
                }
              }

              else
              {
                v16 = v5;
                if (v15 > 4)
                {
                  if (v15 == 5)
                  {
                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(__src, v11);
                  }

                  else
                  {
                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(__src);
                  }

                  goto LABEL_59;
                }

                if (v15 != 3)
                {
                  if (v15 == 4)
                  {
                    std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(__src, v11);
                    goto LABEL_59;
                  }

LABEL_63:
                  v29 = (*(*v16 + 40))(v16);
                  (*(*v29 + 40))(v29, *(a2 + v49));
                  *(a2 + v49) = 0;
                  this = std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](__src);
                  v27 = *(a2 + v49) == 0;
LABEL_64:
                  if (v27 && v48 != 0)
                  {
                    v31 = (*(*v5 + 40))(v5);
                    v32 = (*(*v31 + 32))(v31, v48 * *(*(v47 + 48) + 20), 0);
                    *(a2 + v49) = v32;
                    if (!v32)
                    {
                      re::snapshot::BufferDecoder::error(v5, "allocation failure, array with size: %zu %d byte elements");
                      return;
                    }

                    v33 = 0;
                    do
                    {
                      v34 = (*(a2 + v13) + *(*(v47 + 48) + 20) * v33);
                      v35 = a2;
                      v36 = (*(*v5 + 40))(v5);
                      v37 = (*(*v5 + 32))(v5);
                      v38 = *(v47 + 48);
                      re::introspectionCallConstructor(v37, v38, v34);
                      v39 = v36;
                      a2 = v35;
                      v13 = v49;
                      this = re::introspectionInitElement(v39, v40, v38, v34);
                      ++v33;
                    }

                    while (v48 != v33);
                  }

                  goto LABEL_71;
                }

                std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(__src, v11);
              }

LABEL_59:
              if (v14 && v53)
              {
                for (i = 0; i != v14; ++i)
                {
                  std::function<void ()(void *)>::operator()(__src, *(a2 + v49) + *(*(v47 + 48) + 20) * i);
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            __src[0] = v48;
            if (*(v9 + 40) == 1)
            {
              v41 = *(v9 + 48);
              if (v41)
              {
                this = memcpy((a2 + *(v9 + 64)), __src, *(v41 + 20));
              }
            }

            v42 = *(a2 + v13);
            v43 = v48 - 1;
            v50[0] = v48 - 1;
            v8 = v46;
            if (v48)
            {
              v44 = 0;
              do
              {
                if (v44 < v48)
                {
                  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(v5, v42, *(v47 + 48));
                  v42 = (v42 + *(*(v47 + 48) + 20));
                  v43 = v50[0];
                }

                v45 = v43--;
                v50[0] = v43;
                ++v44;
              }

              while (v45);
            }
          }
        }

        else
        {
          v18 = *(v5 + 3);
          v19 = *(v5 + 4) - v18;
          if (v19 <= 7)
          {
            this = re::snapshot::BufferDecoder::error(v5, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v19);
          }

          else
          {
            v20 = *v18;
            *(v5 + 3) = v18 + 1;
            v21 = *(*(v11 + 48) + 20);
            v22 = v20 / v21;
            if (v20 % v21)
            {
              re::snapshot::BufferDecoder::error(v5, "invalid array data, data size = %zu, element size = %u");
              return;
            }

            v23 = *(a2 + v49);
            if (v23 && v22 != __dst)
            {
              v24 = (*(*v5 + 40))(v5);
              (*(*v24 + 40))(v24, *(a2 + v49));
              v23 = 0;
              *(a2 + v49) = 0;
            }

            if (v20)
            {
              if (!v23)
              {
                v25 = (*(*v5 + 40))(v5);
                v23 = (*(*v25 + 32))(v25, v20, 0);
                *(a2 + v49) = v23;
                if (!v23)
                {
                  re::snapshot::BufferDecoder::error(v5, "allocation failure, array with size: %zu bytes");
                  return;
                }
              }
            }

            __src[0] = v22;
            if (*(v9 + 40) == 1)
            {
              v26 = *(v9 + 48);
              if (v26)
              {
                memcpy((a2 + *(v9 + 64)), __src, *(v26 + 20));
                v23 = *(a2 + v49);
              }
            }

            this = re::snapshot::BufferDecoder::readRaw(v5, v23, v20);
          }
        }
      }

LABEL_30:
      if (++v7 >= *(a3 + 56))
      {
        return;
      }
    }

    if (v10 == 2)
    {
      v17 = *(v9 + 36);
      v50[0] = a3;
      v50[1] = v9;
      v50[2] = a2;
      v53 = re::globalAllocators(this)[2];
      v54 = __src;
      __src[0] = &unk_1F5D17B20;
      __src[1] = v50;
      re::snapshot::DecoderRaw::deserializePolymorphicPointer(v5, a2 + v17, __src);
      this = re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(__src);
      goto LABEL_30;
    }

    if (v10 != 3 || (v8 & 1) != 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    re::snapshot::introspected::read<re::snapshot::DecoderRaw>(v5, (a2 + *(v9 + 36)), *(v9 + 16));
    goto LABEL_30;
  }

  v6();
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17820;
  v3 = *v2;
  *(a2 + 24) = v2[1];
  *(a2 + 8) = v3;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1}::operator()(uint64_t *a1, const char **this, re::DynamicString ***a3, int a4, void *a5)
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
          v10 = (*(*this + 5))(this);
          v11 = (*(*this + 4))(this);
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

          re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v27, v20);
          return;
        }
      }

      else if (v27)
      {
        v28 = (*(*this + 5))(this);
        v29 = (*(*this + 4))(this);
        re::introspectionReleasePointer(v27, v28, v29, *a1);
        *a3 = 0;
      }

      v30 = (*(*this + 5))(this);
      v31 = (*(*this + 4))(this);
      v32 = re::introspectionAllocPointer(v30, v31, v20);
      *a3 = v32;
      if (!v32)
      {
        re::snapshot::BufferDecoder::error(this, "allocation failure: %d bytes");
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
    re::snapshot::BufferDecoder::error(this, "invalid polymorphic type %llu");
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

    v24 = (*(*this + 5))(this);
    v25 = (*(*this + 4))(this);
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

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17820;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17820;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D178A0;
  a2[1] = v2;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1}::operator()(re::Allocator **a1, const char **this, re::DynamicString ***a3, int a4)
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
        v16 = (*(*this + 5))(this);
        v17 = (*(*this + 4))(this);
        *a3 = re::introspectionDeepCopy(v16, v17, *a1, *a3);
      }

      break;
    case 1:
      v10 = *a3;
      if (*a3 || (v11 = (*(*this + 5))(this), v12 = (*(*this + 4))(this), v10 = re::introspectionAllocPointer(v11, v12, *a1), (*a3 = v10) != 0))
      {
        v13 = *a1;

        re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v10, v13);
      }

      else
      {
        re::snapshot::BufferDecoder::error(this, "allocation failure: %d bytes", *(*a1 + 5));
      }

      break;
    case 0:
      v7 = *a3;
      if (*a3)
      {
        v8 = (*(*this + 5))(this);
        v9 = (*(*this + 4))(this);
        re::introspectionReleasePointer(v7, v8, v9, *a1);
        *a3 = 0;
      }

      break;
  }
}

void *re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D178A0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D178A0;
  a2[1] = v2;
  return a2;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F5D178E0;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = v5;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v5);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17928;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D17970;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D179B8;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17A00;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17A48;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17A90;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17AD8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

__n128 std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D178E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 16) + 48);
  v6 = *(v3 + 80);
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));

  return v6(v3, v4, v2);
}

void *std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17928;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17A00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17A48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17A90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17AD8;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17B60;
  v3 = *v2;
  *(a2 + 24) = *(v2 + 2);
  *(a2 + 8) = v3;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1}::operator()(re *a1, uint64_t a2, re::DynamicString ***a3, int a4, uint64_t a5)
{
  v9 = a1;
  v59 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 1);
  v11 = *(*(v10 + 16) + 48);
  v12 = *(v11 + 64);
  v13 = *v12;
  if (**v12 != 2)
  {
    v14 = (v12 + 1);
    do
    {
      v15 = *v14++;
      v13 = v15;
    }

    while (*v15 != 2);
  }

  v16 = *(v13 + 1);
  if (v16)
  {
    v17 = *(a1 + 2);
    v18 = *(v10 + 64);
    v19 = *(v10 + 48);
    if (v17)
    {
      *__dst = 0;
      a1 = memcpy(__dst, (v17 + v18), *(v19 + 20));
      v20 = *__dst;
    }

    else
    {
      v20 = 0;
    }

    if (a4 > 1)
    {
      if (a4 != 2)
      {
        if (a4 != 3)
        {
          return;
        }

        if (v11 && *(v11 + 16) == 8 && (v32 = *(v11 + 88)) != 0)
        {
          v32(*a3);
        }

        else
        {
          v38 = *v16;
          if (v38)
          {
            v39 = *(v16 + 1);
            while (*(v39 + 24) != a5)
            {
              v39 += 40;
              if (!--v38)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
LABEL_44:
            v39 = 0;
          }

          v40 = (*(*a2 + 40))(a2);
          v41 = (*(*a2 + 32))(a2);
          *a3 = re::introspectionDeepCopy(v40, v41, *(v39 + 8), *a3);
        }
      }

      *__dst = a5;
      if (v17)
      {
        memcpy((v17 + v18), __dst, *(v19 + 20));
      }
    }

    else
    {
      if (a4)
      {
        if (a4 != 1)
        {
          return;
        }

        v25 = *v16;
        if (!v25)
        {
LABEL_18:
          v29 = *re::foundationSerializationLogObjects(a1);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            re::getPrettyTypeName(buf, *v9);
            if (buf[8])
            {
              v30 = *&v54[2];
            }

            else
            {
              v30 = &buf[9];
            }

            v31 = *(*(v9 + 1) + 8);
            *__dst = 134218498;
            *&__dst[4] = a5;
            v56 = 2080;
            *v57 = v30;
            *&v57[8] = 2080;
            v58 = v31;
            _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Couldn't find type %llu in polymorphic table for %s.%s", __dst, 0x20u);
            if (*buf)
            {
              if (buf[8])
              {
                (*(**buf + 40))();
              }
            }
          }

          return;
        }

        v26 = *(v16 + 1);
        v27 = (v26 + 24);
        v28 = v25;
        while (*v27 != a5)
        {
          v27 += 5;
          if (!--v28)
          {
            goto LABEL_18;
          }
        }

        v42 = *a3;
        if (*a3)
        {
          v43 = v20 == a5;
        }

        else
        {
          v43 = 1;
        }

        if (v43)
        {
          if (v42)
          {
LABEL_61:
            *__dst = a5;
            if (v17)
            {
              memcpy((v17 + v18), __dst, *(v19 + 20));
              v42 = *a3;
            }

            v47 = *(v27 - 2);
            v48 = *(*a2 + 328);

            v48(a2, v42, v47);
            return;
          }
        }

        else
        {
          while (*(v26 + 24) != v20)
          {
            v26 += 40;
            if (!--v25)
            {
              v26 = 0;
              break;
            }
          }

          v51 = (*(*a2 + 40))(a2);
          v44 = (*(*a2 + 32))(a2);
          re::introspectionReleasePointer(v42, v51, v44, *(v26 + 8));
          *a3 = 0;
        }

        v45 = (*(*a2 + 40))(a2);
        v46 = (*(*a2 + 32))(a2);
        v42 = re::introspectionAllocPointer(v45, v46, *(v27 - 2));
        *a3 = v42;
        goto LABEL_61;
      }

      v33 = *a3;
      if (*a3)
      {
        v34 = *v16;
        if (v34)
        {
          v35 = *(v16 + 1);
          while (*(v35 + 24) != v20)
          {
            v35 += 40;
            if (!--v34)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
LABEL_38:
          v35 = 0;
        }

        v36 = (*(*a2 + 40))(a2);
        v37 = (*(*a2 + 32))(a2);
        re::introspectionReleasePointer(v33, v36, v37, *(v35 + 8));
        *a3 = 0;
      }
    }
  }

  else
  {
    v21 = *re::foundationSerializationLogObjects(a1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      re::getPrettyTypeName(__dst, *v9);
      v49 = (__dst[8] & 1) != 0 ? *&v57[2] : &__dst[9];
      v50 = *(*(v9 + 1) + 8);
      *buf = 136315394;
      *&buf[4] = v49;
      v53 = 2080;
      *v54 = v50;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "No polymorphic table for %s.%s, treating as nullptr", buf, 0x16u);
      if (*__dst)
      {
        if (__dst[8])
        {
          (*(**__dst + 40))();
        }
      }
    }

    v22 = *a3;
    if (*a3)
    {
      v23 = (*(*a2 + 40))(a2);
      v24 = (*(*a2 + 32))(a2);
      re::introspectionReleasePointer(v22, v23, v24, *v9);
      *a3 = 0;
    }

    if ((*(*a2 + 88))(a2, 0))
    {
      (*(*a2 + 96))(a2, 0);
    }
  }
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17B60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17B60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + 56);
  if (v4 > 5)
  {
    if (v4 <= 8)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

LABEL_18:
      result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
      *a2 = result;
      return result;
    }

    if (v4 != 9)
    {
      if (v4 != 10)
      {
        if (v4 == 11)
        {

          return re::snapshot::DecoderOPACK::operator>>(a1, a2);
        }

        return re::snapshot::BufferDecoder::error(a1, "unexpected basic type: %s", *(a3 + 48));
      }

      return re::snapshot::DecoderOPACK::operator>>(a1, a2);
    }

LABEL_21:
    result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    *a2 = result;
    return result;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
LABEL_20:
      result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
      *a2 = result;
      return result;
    }

    if (v4 == 4)
    {
LABEL_19:
      result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
      *a2 = result;
      return result;
    }

    goto LABEL_21;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_18;
    }

    return re::snapshot::BufferDecoder::error(a1, "unexpected basic type: %s", *(a3 + 48));
  }

  return re::snapshot::DecoderOPACK::operator>>(a1, a2);
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *a1, uint64_t **a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  if (v4 > 3)
  {
    if (v4 != 4)
    {
      if (v4 == 8)
      {
        result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
        *a2 = result;
        return result;
      }

      return re::snapshot::BufferDecoder::error(a1, "unexpected enum size %d", *(a3 + 20));
    }

    result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    *a2 = result;
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
        *a2 = result;
        return result;
      }

      return re::snapshot::BufferDecoder::error(a1, "unexpected enum size %d", *(a3 + 20));
    }

    result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    *a2 = result;
  }

  return result;
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *this, const re::IntrospectionBase **a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C3C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3C60))
  {
    qword_1EE1C3C58 = re::introspect<char>(0);
    __cxa_guard_release(&qword_1EE1C3C60);
  }

  v6 = *(a3 + 48);
  if (v6 != qword_1EE1C3C58)
  {
    v7 = re::PolymorphicData::makeWithPointer(&v19, v6, *a2);
    if (v20 && *(&v19 + 1))
    {
      v16 = v6;
      v17 = v19;
      v18 = v20;
      v8 = re::globalAllocators(v7)[2];
      __len = &unk_1F5D17BA0;
      v22 = &v16;
      v23 = v8;
      p_len = &__len;
      re::snapshot::DecoderOPACK::deserializePolymorphicPointer(this, a2, &__len);
      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(&__len);
    }

    else
    {
      v16 = v6;
      v11 = re::globalAllocators(v7)[2];
      __len = &unk_1F5D17C20;
      v22 = &v16;
      v23 = v11;
      p_len = &__len;
      re::snapshot::DecoderOPACK::deserializePointer(this, a2, &__len);
      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(&__len);
    }

    return;
  }

  v9 = *(this + 3);
  if (v9 >= *(this + 4))
  {
    goto LABEL_9;
  }

  if (*v9 == 4)
  {
    *(this + 3) = v9 + 1;
LABEL_9:
    if (*a2)
    {
      v10 = (*(*this + 40))(this);
      (*(*v10 + 40))(v10, *a2);
      *a2 = 0;
    }

    return;
  }

  __len = 0;
  if (re::snapshot::DecoderOPACK::beginString(this, &__len))
  {
    v12 = *a2;
    v13 = __len;
    if (*a2 && strlen(*a2) != __len)
    {
      v14 = (*(*this + 40))(this);
      (*(*v14 + 40))(v14, *a2);
      v12 = 0;
      *a2 = 0;
    }

    if (v13 != -1)
    {
      if (v12 || (v15 = (*(*this + 40))(this), v12 = (*(*v15 + 32))(v15, v13 + 1, 0), (*a2 = v12) != 0))
      {
        re::snapshot::BufferDecoder::readRaw(this, v12, v13);
        *(*a2 + v13) = 0;
      }

      else
      {
        re::snapshot::BufferDecoder::error(this, "C String of %zu bytes", v13 + 1);
      }
    }
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 24);
  if (v5 >= *(a1 + 32))
  {
LABEL_4:
    v7 = *(*a3 + 64);

    v7(a3, a2, 0);
    return;
  }

  if (*v5 == 4)
  {
    *(a1 + 24) = v5 + 1;
    goto LABEL_4;
  }

  (*(*a3 + 64))(a3, a2, 1);
  v8 = (*(*a3 + 72))(a3, a2);
  v9 = a3[6];

  re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1, v8, v9);
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(const char **this, char *a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  __len = 0;
  if (*(v6 + 28) == 1 && re::snapshot::DecoderOPACK::beginData(this, &__len, 1))
  {
    v7 = __len;
    v8 = *(v6 + 20);
    if (__len % v8)
    {
      return re::snapshot::BufferDecoder::error(this, "C Array element size mismatch: expected multiple of %d, got %zu");
    }

    else if (__len / v8 == *(a3 + 64))
    {

      return re::snapshot::BufferDecoder::readRaw(this, a2, v7);
    }

    else
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %d, got %zu");
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(this, &__len);
    if (result)
    {
      v10 = __len;
      if (__len == *(a3 + 64))
      {
        result = re::snapshot::DecoderOPACK::endArray(this, &__len);
        v12 = 0;
        if ((result & 1) == 0)
        {
          do
          {
            if (v12 >= *(a3 + 64))
            {
              v13 = this[3];
              if (v13 >= this[4])
              {
                v14 = 0;
              }

              else
              {
                this[3] = v13 + 1;
                v14 = *v13;
              }

              re::snapshot::DecoderOPACK::skip(this, v14, v11);
            }

            else
            {
              re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, v6);
              a2 += *(v6 + 20);
              ++v12;
            }

            result = re::snapshot::DecoderOPACK::endArray(this, &__len);
          }

          while (!result);
        }

        if (v10 != v12)
        {
          return re::snapshot::BufferDecoder::error(this, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(this, "unexpected C Array size: expected %d, got %zu");
      }
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *this, uint64_t a2, void *a3)
{
  v6 = a3[6];
  v22 = 0;
  if (*(v6 + 28) == 1 && re::snapshot::DecoderOPACK::beginData(this, &v22, 1))
  {
    v7 = v22;
    if (v22 % *(v6 + 20))
    {
      v8 = v22;

      return re::snapshot::BufferDecoder::skipData(this, v8);
    }

    else
    {
      v19 = (*(*this + 40))(this);
      v20 = (*(*this + 32))(this);
      result = (*(*a3 + 72))(a3, v19, v20, a2, v7 / *(v6 + 20));
      if (v7)
      {
        v21 = (*(*a3 + 96))(a3, a2, 0);

        return re::snapshot::BufferDecoder::readRaw(this, v21, v7);
      }
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(this, &v22);
    if (result)
    {
      v10 = (*(*this + 40))(this);
      v11 = (*(*this + 32))(this);
      v12 = v22;
      (*(*a3 + 72))(a3, v10, v11, a2, v22);
      result = re::snapshot::DecoderOPACK::endArray(this, &v22);
      v14 = 0;
      if ((result & 1) == 0)
      {
        do
        {
          if (v12 <= v14)
          {
            v17 = *(this + 3);
            if (v17 >= *(this + 4))
            {
              v18 = 0;
            }

            else
            {
              *(this + 3) = v17 + 1;
              v18 = *v17;
            }

            re::snapshot::DecoderOPACK::skip(this, v18, v13);
          }

          else
          {
            v15 = v14++;
            v16 = (*(*a3 + 96))(a3, a2, v15);
            re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, v16, v6);
          }

          result = re::snapshot::DecoderOPACK::endArray(this, &v22);
        }

        while (!result);
      }

      if (v12 != v14)
      {
        return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d", v12, v14);
      }
    }
  }

  return result;
}

{
  v6 = a3[6];
  v23 = 0;
  if (*(v6 + 28) == 1 && re::snapshot::DecoderOPACK::beginData(this, &v23, 1))
  {
    if ((*(*a3 + 88))(a3, a2))
    {
      v7 = v23;
    }

    else
    {
      v18 = (*(*this + 40))(this);
      v19 = (*(*this + 32))(this);
      v7 = v23;
      (*(*a3 + 64))(a3, a2, v18, v19, v23 / *(v6 + 20));
    }

    v20 = *(v6 + 20);
    v21 = v7 / v20;
    if (v7 % v20)
    {

      return re::snapshot::BufferDecoder::skipData(this, v7);
    }

    else
    {
      result = (*(*a3 + 80))(a3, a2);
      if (v21 == result)
      {
        if (v7)
        {
          v22 = (*(*a3 + 96))(a3, a2, 0);

          return re::snapshot::BufferDecoder::readRaw(this, v22, v7);
        }
      }

      else
      {
        (*(*a3 + 80))(a3, a2);
        return re::snapshot::BufferDecoder::error(this, "unexpected data size reading FixedArray: expected %zu, got %zu");
      }
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(this, &v23);
    if (result)
    {
      if ((*(*a3 + 88))(a3, a2))
      {
        v9 = v23;
      }

      else
      {
        v10 = (*(*this + 40))(this);
        v11 = (*(*this + 32))(this);
        v9 = v23;
        (*(*a3 + 64))(a3, a2, v10, v11, v23);
      }

      if ((*(*a3 + 80))(a3, a2) == v9)
      {
        result = re::snapshot::DecoderOPACK::endArray(this, &v23);
        v12 = 0;
        if ((result & 1) == 0)
        {
          do
          {
            if ((*(*a3 + 80))(a3, a2) <= v12)
            {
              v16 = *(this + 3);
              if (v16 >= *(this + 4))
              {
                v17 = 0;
              }

              else
              {
                *(this + 3) = v16 + 1;
                v17 = *v16;
              }

              re::snapshot::DecoderOPACK::skip(this, v17, v13);
            }

            else
            {
              v14 = v12++;
              v15 = (*(*a3 + 96))(a3, a2, v14);
              re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, v15, v6);
            }

            result = re::snapshot::DecoderOPACK::endArray(this, &v23);
          }

          while (!result);
        }

        if (v9 != v12)
        {
          return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
        }
      }

      else
      {
        (*(*a3 + 80))(a3, a2);
        return re::snapshot::BufferDecoder::error(this, "unexpected FixedArray size: expected %zu, got %zu");
      }
    }
  }

  return result;
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(*a3 + 80))(a3))
  {

    return re::snapshot::BufferDecoder::error(a1, "cannot read into existing DataArray");
  }

  else
  {
    v7 = a3[6];
    v16 = 0;
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v16);
    if (result)
    {
      v8 = v16;
      result = re::snapshot::DecoderOPACK::endArray(a1, &v16);
      if ((result & 1) == 0)
      {
        v10 = 0;
        do
        {
          if (v10 >= v8)
          {
            v14 = *(a1 + 24);
            if (v14 >= *(a1 + 32))
            {
              v15 = 0;
            }

            else
            {
              *(a1 + 24) = v14 + 1;
              v15 = *v14;
            }

            re::snapshot::DecoderOPACK::skip(a1, v15, v9);
          }

          else
          {
            v11 = (*(*a1 + 40))(a1);
            v12 = (*(*a1 + 32))(a1);
            v13 = (*(*a3 + 72))(a3, v11, v12, a2);
            re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1, v13, v7);
          }

          result = re::snapshot::DecoderOPACK::endArray(a1, &v16);
          ++v10;
        }

        while (!result);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK *a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  result = re::snapshot::DecoderOPACK::beginDictionary(a1, v23);
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
    result = re::snapshot::DecoderOPACK::endDictionary(a1, v23);
    if ((result & 1) == 0)
    {
      do
      {
        v14 = (*(*a1 + 40))(a1);
        v15 = (*(*a1 + 32))(a1);
        v16 = __ptr;
        re::introspectionCallConstructor(v15, v8, __ptr);
        re::introspectionInitElement(v14, v17, v8, v16);
        re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1, __ptr, v8);
        v18 = (*(*a1 + 40))(a1);
        v19 = (*(*a1 + 32))(a1);
        v20 = (*(*a3 + 96))(a3, v18, v19, a2, __ptr);
        re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1, v20, v9);
        (*(*a3 + 112))(a3, __ptr);
        result = re::snapshot::DecoderOPACK::endDictionary(a1, v23);
      }

      while (!result);
    }
  }

  return result;
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v13, 0);
  v17 = 0;
  if (re::snapshot::DecoderOPACK::beginString(a1, &v17))
  {
    v6 = v17;
    re::DynamicString::resize(&v13, v17, 0);
    if (v14)
    {
      v7 = v15;
    }

    else
    {
      v7 = &v14 + 1;
    }

    re::snapshot::BufferDecoder::readRaw(a1, v7, v6);
  }

  v8 = *(a3 + 80);
  v9 = (*(*a1 + 40))(a1);
  v10 = (*(*a1 + 32))(a1);
  if (v14)
  {
    v11 = v15;
  }

  else
  {
    v11 = &v14 + 1;
  }

  v8(v9, v10, a3, a2, v11);
  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))();
    }
  }

  return result;
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(uint64_t this, size_t a2, size_t a3)
{
  v3 = a3;
  v5 = this;
  v56 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 128);
  if (v6)
  {

    v6();
    return;
  }

  v7 = *(v3 + 60);
  v52 = *(v3 + 48);
  if ((v7 & 1) == 0)
  {
    this = re::snapshot::DecoderOPACK::beginObject(this, &v52);
    if (!this)
    {
      return;
    }
  }

  if (*(v3 + 56))
  {
    v8 = 0;
    while (1)
    {
      v9 = *(*(v3 + 64) + 8 * v8);
      if (*v9 != 1)
      {
        goto LABEL_37;
      }

      if (v7)
      {
        v10 = *(v9 + 40);
        if (v10 == 3)
        {
          goto LABEL_37;
        }
      }

      else
      {
        this = re::snapshot::DecoderOPACK::beginField(v5, *(v9 + 32), *(v9 + 8));
        if (!this)
        {
          goto LABEL_37;
        }

        v10 = *(v9 + 40);
      }

      if (v10 <= 1)
      {
        break;
      }

      if (v10 == 2)
      {
        v17 = *(v9 + 36);
        __len[0] = v3;
        __len[1] = v9;
        __len[2] = a2;
        v18 = re::globalAllocators(this)[2];
        __src[0] = &unk_1F5D17EE0;
        __src[1] = __len;
        v54 = v18;
        v55 = __src;
        re::snapshot::DecoderOPACK::deserializePolymorphicPointer(v5, a2 + v17, __src);
        this = re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(__src);
        goto LABEL_35;
      }

      if (v10 != 3)
      {
        goto LABEL_35;
      }

      if ((v7 & 1) == 0)
      {
        re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(v5, (a2 + *(v9 + 36)), *(v9 + 16));
LABEL_36:
        this = re::snapshot::DecoderOPACK::endField(v5);
      }

LABEL_37:
      if (++v8 >= *(v3 + 56))
      {
        goto LABEL_90;
      }
    }

    if (!v10)
    {
      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(v5, (a2 + *(v9 + 36)), *(v9 + 16));
      goto LABEL_35;
    }

    if (v10 != 1)
    {
      goto LABEL_35;
    }

    v11 = *(v9 + 36);
    v12 = *(v9 + 16);
    __len[0] = 0;
    __dst = 0;
    if (*(a2 + v11))
    {
      v13 = *(v9 + 48);
      if (v13)
      {
        memcpy(&__dst, (a2 + *(v9 + 64)), *(v13 + 20));
      }
    }

    if (!*(*(v12 + 48) + 16))
    {
      this = re::snapshot::DecoderOPACK::beginData(v5, __len, 0);
      if (this)
      {
        v19 = __len[0];
        v20 = *(*(v12 + 48) + 20);
        v21 = __len[0] / v20;
        if (__len[0] % v20)
        {
          re::snapshot::BufferDecoder::error(v5, "invalid array data, data size = %zu, element size = %u");
          return;
        }

        v22 = *(a2 + v11);
        if (v22 && v21 != __dst)
        {
          v23 = (*(*v5 + 40))(v5);
          (*(*v23 + 40))(v23, *(a2 + v11));
          v22 = 0;
          *(a2 + v11) = 0;
        }

        if (v19)
        {
          if (!v22)
          {
            v24 = (*(*v5 + 40))(v5);
            v22 = (*(*v24 + 32))(v24, v19, 0);
            *(a2 + v11) = v22;
            if (!v22)
            {
              re::snapshot::BufferDecoder::error(v5, "allocation failure, array with size: %zu bytes");
              return;
            }
          }
        }

        __src[0] = v21;
        if (*(v9 + 40) == 1)
        {
          v25 = *(v9 + 48);
          if (v25)
          {
            memcpy((a2 + *(v9 + 64)), __src, *(v25 + 20));
            v22 = *(a2 + v11);
          }
        }

        this = re::snapshot::BufferDecoder::readRaw(v5, v22, v19);
      }

LABEL_35:
      if ((v7 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    this = re::snapshot::DecoderOPACK::beginArray(v5, __len);
    if (!this)
    {
      goto LABEL_35;
    }

    v47 = v3;
    v48 = v7;
    v14 = __len[0];
    v49 = __len[0];
    if (!*(a2 + v11))
    {
      v26 = 1;
      goto LABEL_70;
    }

    v15 = __dst;
    if (__dst == __len[0])
    {
LABEL_77:
      __src[0] = v49;
      if (*(v9 + 40) == 1)
      {
        v42 = *(v9 + 48);
        if (v42)
        {
          memcpy((a2 + *(v9 + 64)), __src, *(v42 + 20));
        }
      }

      v43 = *(a2 + v11);
      this = re::snapshot::DecoderOPACK::endArray(v5, __len);
      v7 = v48;
      v3 = v47;
      if ((this & 1) == 0)
      {
        v44 = 0;
        do
        {
          if (v44 >= v49)
          {
            v45 = *(v5 + 3);
            if (v45 >= *(v5 + 4))
            {
              v46 = 0;
            }

            else
            {
              *(v5 + 3) = v45 + 1;
              v46 = *v45;
            }

            re::snapshot::DecoderOPACK::skip(v5, v46, v6);
          }

          else
          {
            re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(v5, v43, *(v12 + 48));
            v43 = (v43 + *(*(v12 + 48) + 20));
          }

          this = re::snapshot::DecoderOPACK::endArray(v5, __len);
          ++v44;
        }

        while ((this & 1) == 0);
      }

      goto LABEL_35;
    }

    v14 = __len[0];
    v54 = 0;
    v16 = *(*(v12 + 48) + 16);
    if (v16 > 6)
    {
      if (v16 > 9)
      {
        if (v16 == 10)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(__src);
          goto LABEL_65;
        }

        if (v16 == 13)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(__src, v12);
          goto LABEL_65;
        }
      }

      else
      {
        if (v16 == 7)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(__src, v12);
          goto LABEL_65;
        }

        if (v16 == 8)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(__src, v5, v12);
          goto LABEL_65;
        }
      }
    }

    else
    {
      if (v16 > 4)
      {
        if (v16 == 5)
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(__src, v12);
        }

        else
        {
          std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(__src);
        }

LABEL_65:
        if (v15 && v54)
        {
          for (i = 0; i != v15; ++i)
          {
            std::function<void ()(void *)>::operator()(__src, *(a2 + v11) + *(*(v12 + 48) + 20) * i);
          }
        }

        goto LABEL_69;
      }

      if (v16 == 3)
      {
        std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(__src, v12);
        goto LABEL_65;
      }

      if (v16 == 4)
      {
        std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(__src, v12);
        goto LABEL_65;
      }
    }

LABEL_69:
    v28 = (*(*v5 + 40))(v5);
    (*(*v28 + 40))(v28, *(a2 + v11));
    *(a2 + v11) = 0;
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](__src);
    v26 = *(a2 + v11) == 0;
LABEL_70:
    if (v26 && v14 != 0)
    {
      v30 = (*(*v5 + 40))(v5);
      v31 = (*(*v30 + 32))(v30, v49 * *(*(v12 + 48) + 20), 0);
      *(a2 + v11) = v31;
      if (!v31)
      {
        re::snapshot::BufferDecoder::error(v5, "allocation failure, array with size: %zu %d byte elements");
        return;
      }

      v32 = 0;
      do
      {
        v33 = (*(a2 + v11) + *(*(v12 + 48) + 20) * v32);
        v34 = v11;
        v35 = (*(*v5 + 40))(v5);
        v36 = (*(*v5 + 32))(v5);
        v37 = a2;
        v38 = *(v12 + 48);
        re::introspectionCallConstructor(v36, v38, v33);
        v39 = v35;
        v11 = v34;
        v40 = v38;
        a2 = v37;
        re::introspectionInitElement(v39, v41, v40, v33);
        ++v32;
      }

      while (v49 != v32);
    }

    goto LABEL_77;
  }

LABEL_90:
  if ((v7 & 1) == 0)
  {
    re::snapshot::DecoderOPACK::endObject(v5, v52, v6);
  }
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17BE0;
  v3 = *v2;
  *(a2 + 24) = v2[1];
  *(a2 + 8) = v3;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1}::operator()(uint64_t *a1, const char **this, re::DynamicString ***a3, int a4, void *a5)
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
          v10 = (*(*this + 5))(this);
          v11 = (*(*this + 4))(this);
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

          re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, v27, v20);
          return;
        }
      }

      else if (v27)
      {
        v28 = (*(*this + 5))(this);
        v29 = (*(*this + 4))(this);
        re::introspectionReleasePointer(v27, v28, v29, *a1);
        *a3 = 0;
      }

      v30 = (*(*this + 5))(this);
      v31 = (*(*this + 4))(this);
      v32 = re::introspectionAllocPointer(v30, v31, v20);
      *a3 = v32;
      if (!v32)
      {
        re::snapshot::BufferDecoder::error(this, "allocation failure: %d bytes");
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
    re::snapshot::BufferDecoder::error(this, "invalid polymorphic type %llu");
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

    v24 = (*(*this + 5))(this);
    v25 = (*(*this + 4))(this);
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

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17BE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17BE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D17C60;
  a2[1] = v2;
  return a2;
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1}::operator()(re::Allocator **a1, const char **this, re::DynamicString ***a3, int a4)
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
        v16 = (*(*this + 5))(this);
        v17 = (*(*this + 4))(this);
        *a3 = re::introspectionDeepCopy(v16, v17, *a1, *a3);
      }

      break;
    case 1:
      v10 = *a3;
      if (*a3 || (v11 = (*(*this + 5))(this), v12 = (*(*this + 4))(this), v10 = re::introspectionAllocPointer(v11, v12, *a1), (*a3 = v10) != 0))
      {
        v13 = *a1;

        re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, v10, v13);
      }

      else
      {
        re::snapshot::BufferDecoder::error(this, "allocation failure: %d bytes", *(*a1 + 5));
      }

      break;
    case 0:
      v7 = *a3;
      if (*a3)
      {
        v8 = (*(*this + 5))(this);
        v9 = (*(*this + 4))(this);
        re::introspectionReleasePointer(v7, v8, v9, *a1);
        *a3 = 0;
      }

      break;
  }
}

void *re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17C60;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionPointer const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17C60;
  a2[1] = v2;
  return a2;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},void>(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F5D17CA0;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = v5;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v5);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17CE8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#3},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D17D30;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#4},void>(void *a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5D17D78;
  v3[3] = v3;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v3, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17DC0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17E08;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17E50;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::function<void ()(void *)>::operator=<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},void>(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5D17E98;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v4);
  return a1;
}

__n128 std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17CA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 16) + 48);
  v6 = *(v3 + 80);
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));

  return v6(v3, v4, v2);
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#2}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17CE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#5}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17DC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#6}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17E08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#7}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17E50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8},std::allocator<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(void *)#8}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17E98;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17F20;
  v3 = *v2;
  *(a2 + 24) = *(v2 + 2);
  *(a2 + 8) = v3;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17F20;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(re::snapshot::DecoderOPACK &,void *,re::IntrospectionStructure const&)::{lambda(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)#1},void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17F20;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t anonymous namespace::BinaryDeserializer::deserializeIntoBuffer(_anonymous_namespace_ *a1, const re::IntrospectionBase **a2, uint64_t a3, const re::IntrospectionBase **a4, re::DynamicString ***a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v25 = 0;
  v23 = 0u;
  v24 = 0u;
  *&v25[4] = 0x7FFFFFFFLL;
  v26 = 0u;
  v27 = 0u;
  *v28 = 0;
  *&v28[4] = 0x7FFFFFFFLL;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v31 = 0x7FFFFFFFLL;
  v32 = a1;
  v33 = 0;
  v34 = a3;
  v35 = a8;
  v37 = 0uLL;
  *(&v36 + 1) = 0;
  re::DynamicString::setCapacity(&v36, 0);
  v38 = a6;
  v39 = a7;
  v41 = 0;
  v40[0] = &unk_1F5CCF6E8;
  v40[1] = "ScratchAutoFreeAllocator";
  v42 = a7;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  v45 = 0x7FFFFFFFLL;
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(v43, a7, 3);
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v46 = a7;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(&v46, 0);
  ++v49;
  *&v36 = a7;
  re::DynamicString::setCapacity(&v36, 0);
  v14 = (*(*a1 + 24))(a1);
  {
    v51 = 0;
    if ((*(*a1 + 16))(a1, &v51, 1) == 1)
    {
      if (v51 == 69)
      {
        v21 = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_9:
  if (v46)
  {
    if (v50)
    {
      (*(*v46 + 40))(v46, v50, v15, v16, v17, v18, v19, v20, v23, *(&v23 + 1), v24, *(&v24 + 1), *v25, *&v25[8], v26, *(&v26 + 1), v27, *(&v27 + 1), *v28, *&v28[8], *&v29[0], *(&v29[0] + 1));
    }

    v50 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    ++v49;
  }

  re::AutoFreeAllocator::~AutoFreeAllocator(v40);
  if (v36)
  {
    if (BYTE8(v36))
    {
      (*(*v36 + 40))();
    }

    v36 = 0u;
    v37 = 0u;
  }

  return v21;
}

_anonymous_namespace_ *anonymous namespace::BinaryDeserializer::addPointer(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = *(result + 39);
  v11 = *(result + 40);
  v12 = v11 + 1;
  if (v11 >= v10 && v10 < v12)
  {
    if (*(result + 38))
    {
      v15 = 2 * v10;
      v16 = v10 == 0;
      v17 = 8;
      if (!v16)
      {
        v17 = v15;
      }

      if (v17 <= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = v17;
      }

      result = re::DynamicArray<re::EvaluationRegister>::setCapacity(result + 38, v18);
    }

    else
    {
      result = re::DynamicArray<re::EvaluationRegister>::setCapacity(v9 + 38, v12);
      ++*(v9 + 82);
    }
  }

  v14 = (*(v9 + 42) + 32 * *(v9 + 40));
  *v14 = a2;
  v14[1] = a3;
  v14[2] = a5;
  v14[3] = a4;
  ++*(v9 + 40);
  ++*(v9 + 82);
  return result;
}

uint64_t anonymous namespace::BinaryDeserializer::read(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionBase **a2, const re::IntrospectionBase **a3, re::DynamicString ***a4)
{
  v103 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 4);
  if (v7 != *(a3 + 4))
  {
    re::getPrettyTypeName(buf, a2);
    if (buf[8])
    {
      v15 = *&buf[16];
    }

    else
    {
      v15 = &buf[9];
    }

    re::getPrettyTypeName(&v99, a3);
    if (v100)
    {
      v16 = v101;
    }

    else
    {
      v16 = &v100 + 1;
    }

    if (v99 && (v100 & 1) != 0)
    {
      ((*v99)[5])();
    }

LABEL_15:
    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }

    return 0;
  }

  v8 = a4;
  switch(v7)
  {
    case 0:
      if (a2 != a3)
      {
        v9 = *re::foundationSerializationLogObjects(this);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          return 0;
        }

        v10 = a2[6];
        v11 = a3[6];
        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = v11;
        v12 = "Binary Deserialization; Basic types don't match '%s' and '%s'.";
        v13 = v9;
        v14 = 22;
        goto LABEL_80;
      }

      v58 = *(a3 + 5);
      if ((*(**(this + 18) + 16))(*(this + 18), a4, v58) == v58)
      {
        return 1;
      }

      return 0;
    case 1:
      v33 = a2[6];
      v34 = a3[6];
      v99 = a4;
      v35 = *(v33 + 4);
      if (v35 != *(v34 + 4))
      {
        return 0;
      }

      if (v35 != 8)
      {
        goto LABEL_60;
      }

      v36 = *(v33 + 14);
      if (!v36)
      {
        goto LABEL_51;
      }

      v37 = *(v33 + 8);
      while (1)
      {
        v38 = *v37;
        if (**v37 == 2)
        {
          break;
        }

        ++v37;
        if (!--v36)
        {
LABEL_51:
          v38 = 0;
          break;
        }
      }

      v39 = *(v34 + 14);
      if (!v39)
      {
LABEL_59:
        if (!v38)
        {
          goto LABEL_60;
        }

LABEL_133:
        return 0;
      }

      v40 = *(v34 + 8);
      v41 = v40;
      v42 = *(v34 + 14);
      do
      {
        v43 = *v41;
        if (**v41 == 2)
        {
          goto LABEL_57;
        }

        ++v41;
        --v42;
      }

      while (v42);
      v43 = 0;
LABEL_57:
      while (1)
      {
        v44 = *v40;
        if (**v40 == 3)
        {
          break;
        }

        ++v40;
        if (!--v39)
        {
          goto LABEL_59;
        }
      }

      if ((v38 != 0) == (v43 == 0))
      {
        goto LABEL_133;
      }

      if (v38)
      {
        if (*a4)
        {
          re::introspectionReleasePointer(*a4, *(this + 26), *(this + 21), v34);
          *v8 = 0;
        }
      }

LABEL_60:
      v45 = *(this + 18);
      buf[0] = 0;
      if ((*(*v45 + 16))(v45, buf, 1) != 1)
      {
        return 0;
      }

      v46 = buf[0];
      v47 = re::introspect<char>(0) == v33;
      if (v47 != (re::introspect<char>(0) == v34))
      {
        return 0;
      }

      *buf = v34;
      *&buf[8] = v33;
      *&buf[16] = this;
      *&buf[24] = &v99;
      switch(v46)
      {
        case 'I':
        case 'R':
          LODWORD(v96) = 0;
          if ((*(**(this + 18) + 16))(*(this + 18), &v96, 4) == 4)
          {
            if (*(this + 40) <= v96)
            {
            }

            else
            {
              v85 = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::operator[](this + 304, v96);
              v86 = v85;
              v87 = *v85;
              if (*(v85 + 3))
              {
                v88 = v87 == 0;
              }

              else
              {
                v88 = 0;
              }

              if (!v88 && *(v34 + 4) == 8 && (v89 = *(v34 + 11)) != 0)
              {
                if (!v87)
                {
                  v92 = *re::foundationSerializationLogObjects(v85);
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                  {
                    *v95 = 0;
                    _os_log_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_DEFAULT, "Binary Deserialization; reference is null because source was skipped.", v95, 2u);
                  }

                  v8 = v99;
                  goto LABEL_126;
                }

                if (*(v85 + 1) == v34)
                {
                  v89(*v85);
                  v93 = v99;
                  if (*v99)
                  {
                    re::introspectionReleasePointer(*v99, *(this + 26), *(this + 21), v34);
                    *v93 = 0;
                    v93 = v99;
                  }

                  *v93 = v87;
                  return 1;
                }
              }

              else
              {
                v90 = (*(**(this + 18) + 24))(*(this + 18));
                if ((*(**(this + 18) + 56))(*(this + 18), *(v86 + 24)))
                {
                  if ((*(**(this + 18) + 56))(*(this + 18), v90))
                  {
                    if (v91)
                    {
                      return 1;
                    }
                  }

                  else
                  {
                  }
                }

                else
                {
                }
              }
            }
          }

          else
          {
          }

          break;
        case 'N':
LABEL_126:
          if (*v8)
          {
            re::introspectionReleasePointer(*v8, *(this + 26), *(this + 21), v34);
            *v8 = 0;
          }

          return 1;
        default:
          break;
      }

      return 0;
    case 2:
      v29 = *(a2 + 16);
      if (v29 == *(a3 + 16))
      {
        v30 = a2[6];
        v31 = a3[6];
      }

      v50 = *re::foundationSerializationLogObjects(this);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v12 = "Binary Deserialization; C-style array length changed.";
        v13 = v50;
        v14 = 2;
LABEL_80:
        _os_log_debug_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEBUG, v12, buf, v14);
      }

      return 0;
    case 3:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      *buf = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), buf, 4) != 4)
      {
        return 0;
      }

      v27 = *buf;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v27)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      (*(*a3 + 9))(a3, *(this + 26), *(this + 21), v8, *buf);
      if (*buf)
      {
        goto LABEL_101;
      }

      return 1;
    case 4:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      *buf = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), buf, 4) != 4)
      {
        return 0;
      }

      v18 = *buf;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v18)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (((*(*a3 + 11))(a3, v8) & 1) == 0)
      {
        (*(*a3 + 8))(a3, v8, *(this + 26), *(this + 21), *buf);
      }

      v59 = (*(*a3 + 10))(a3, v8);
      if (v59 != *buf)
      {
        return 0;
      }

      if (!*buf)
      {
        return 1;
      }

LABEL_101:
      v60 = (*(*a3 + 12))(a3, v8, 0);
    case 5:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      *buf = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), buf, 4) != 4)
      {
        return 0;
      }

      v23 = *buf;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v23)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if ((*(*a3 + 10))(a3, v8))
      {
        return 0;
      }

      if (!*buf)
      {
        return 1;
      }

      v69 = 0;
      while (1)
      {
        v70 = (*(*a3 + 9))(a3, *(this + 26), *(this + 21), v8);
        {
          break;
        }

        ++v69;
        v61 = 1;
        if (v69 >= *buf)
        {
          return v61;
        }
      }

      return 0;
    case 6:

    case 7:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      LODWORD(v96) = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v96, 4) != 4)
      {
        return 0;
      }

      v48 = v96;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v48)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      (*(*a3 + 8))(a3, v8, *(this + 26), v96);
      v62 = (*(**(this + 27) + 32))(*(this + 27), *(a3[6] + 5), 0);
      v99 = &unk_1F5D17F60;
      v100 = this;
      v102 = &v99;
      v98[0] = &buf[8];
      *buf = v62;
      *&buf[8] = &unk_1F5D17F60;
      *&buf[16] = this;
      std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100](&v99);
      if (!v96)
      {
        goto LABEL_108;
      }

      v63 = 0;
      while (2)
      {
        v64 = *(this + 26);
        v65 = a3[6];
        v66 = *buf;
        re::introspectionCallConstructor(*(this + 21), v65, *buf);
        re::introspectionInitElement(v64, v67, v65, v66);
        {
          v68 = (*(*a3 + 12))(a3, *(this + 26), *(this + 21), v8, *buf);
          (*(*a3 + 14))(a3, *buf);
          {
            if (++v63 >= v96)
            {
LABEL_108:
              v61 = 1;
              goto LABEL_139;
            }

            continue;
          }
        }

        else
        {
          (*(*a3 + 14))(a3, *buf);
        }

        break;
      }

      v61 = 0;
LABEL_139:
      std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](buf);
      return v61;
    case 8:

    case 9:
      v49 = *(a2 + 5);
      if ((v49 - 9) <= 0xFFFFFFF7)
      {
        return 0;
      }

      *v95 = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), v95, v49) != v49)
      {
        return 0;
      }

      v51 = *v95;
      v96 = *v95;
      if (a2 == a3)
      {
        goto LABEL_156;
      }

      v52 = *&buf[12];
      if (*&buf[12] != 0x7FFFFFFF)
      {
        goto LABEL_154;
      }

      v53 = a2[6];
      v54 = strcmp(v53, a3[6]);
      if (v54)
      {
        v55 = *re::foundationSerializationLogObjects(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = a2[6];
          v57 = a3[6];
          *buf = 136315394;
          *&buf[4] = v56;
          *&buf[12] = 2080;
          *&buf[14] = v57;
          _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_INFO, "Binary Deserialization; enum name changed '%s' and '%s'.", buf, 0x16u);
        }

        return 0;
      }

      LODWORD(v98[0]) = 0;
      memset(buf, 0, sizeof(buf));
      *(v98 + 4) = 0x7FFFFFFFLL;
      v71 = a2[8];
      v72 = *v71;
      if (v72)
      {
        for (i = 0; i < v72; ++i)
        {
          v74 = *(*(v71 + 1) + 8 * i);
          if (*v74 == 1)
          {
            re::getIntrospectionEnumValueWithVersioning(a3[8], *(v74 + 16), &v99);
            if (v99 == 1)
            {
              re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(buf, (v74 + 8), &v100);
              v71 = a2[8];
            }

            v72 = *v71;
          }
        }

        v53 = a2[6];
      }

      if (!strcmp(v53, "REAudioPlaybackState"))
      {
      }

      v99 = 0;
      v100 = 0;
      v101 = 0;
      if (HIDWORD(v100) == 0x7FFFFFFF)
      {
        *(v75 + 8) = a2;
        re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v75 + 16, buf);
        ++*(this + 22);
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(buf);
      v52 = *&buf[12];
LABEL_154:
      v76 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(*(this + 8) + 72 * v52 + 16, &v96);
      if (!v76)
      {
        v77 = *re::foundationSerializationLogObjects(0);
        if (!os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          return 0;
        }

        v78 = a2[8];
        v79 = v96;
        v80 = v77;
        v81 = *v78;
        if (v81)
        {
          v82 = *(v78 + 1);
          v83 = &str_31_5;
          while (1)
          {
            v84 = *v82;
            if (**v82 == 1 && *(v84 + 1) == v79)
            {
              break;
            }

            ++v82;
            if (!--v81)
            {
              goto LABEL_182;
            }
          }

          v83 = *(v84 + 2);
        }

        else
        {
          v83 = &str_31_5;
        }

LABEL_182:
        *buf = 136315138;
        *&buf[4] = v83;
        _os_log_impl(&dword_1E1C61000, v80, OS_LOG_TYPE_INFO, "Binary Deserialization; unknown enum value '%s'.", buf, 0xCu);

        return 0;
      }

      v51 = *v76;
LABEL_156:
      __src = v51;
      memcpy(v8, &__src, *(a3 + 5));
      return 1;
    case 10:
      {
        return 0;
      }

      if (*(this + 184))
      {
        v17 = *(this + 24);
      }

      else
      {
        v17 = this + 185;
      }

      re::StringID::StringID(buf, v17);
      re::StringID::operator=(v8, buf);
      re::StringID::destroyString(buf);
      return 1;
    case 11:
      {
        return 0;
      }

      v25 = a3[10];
      if (v25)
      {
        goto LABEL_32;
      }

      if (!re::IntrospectionRegistry::contains(a3, v24))
      {
        return 1;
      }

      v25 = a3[10];
      if (!v25)
      {
        return 0;
      }

LABEL_32:
      if (*(this + 184))
      {
        v26 = *(this + 24);
      }

      else
      {
        v26 = this + 185;
      }

      if ((v25)(*(this + 26), *(this + 21), a3, v8, v26))
      {
        return 1;
      }

      return 0;
    case 13:
      buf[0] = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), buf, 1) != 1)
      {
        return 0;
      }

      (*(*a3 + 8))(a3, v8, buf[0]);
      if (buf[0] != 1)
      {
        return 1;
      }

      v19 = a2[6];
      v20 = a3[6];
      v21 = (*(*a3 + 9))(a3, v8);
    default:
      re::getPrettyTypeName(buf, a2);
      if (buf[8])
      {
        v28 = *&buf[16];
      }

      else
      {
        v28 = &buf[9];
      }

      goto LABEL_15;
  }
}

void anonymous namespace::BinaryDeserializer::logError(_anonymous_namespace_::BinaryDeserializer *this, const char *__format, ...)
{
  va_start(va, __format);
  v25 = *MEMORY[0x1E69E9840];
  v3 = vsnprintf(__str, 0x100uLL, __format, va);
  v4 = *re::foundationSerializationLogObjects(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v23 = __str;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Binary Deserialization; %s", buf, 0xCu);
  }

  v5 = (*(**(this + 18) + 24))(*(this + 18));
  v6 = *(this + 19);
  if (v5 > v6)
  {
    v7 = v5;
    v8 = *(**(this + 18) + 40);
    if (v5 - v6 > 0x40)
    {
      v11 = v8();
      strcpy(&__str[v12], " ... ");
      v13 = (*(**(this + 18) + 40))(*(this + 18), buf, v7 - 32, 32);
      if (!&v11[v13])
      {
        return;
      }
    }

    else
    {
      v9 = v8();
      if (!v9)
      {
        return;
      }
    }

    v14 = *re::foundationSerializationLogObjects(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(this + 19);
      *v16 = 134218498;
      v17 = v15;
      v18 = 2048;
      v19 = v7 - 1;
      v20 = 2080;
      v21 = __str;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "  Input bytes %zu thru %zu: %s", v16, 0x20u);
    }

    *(this + 19) = v7;
  }
}

BOOL anonymous namespace::BinaryDeserializer::readStructure(_anonymous_namespace_ **this, const re::IntrospectionBase *a2, const re::IntrospectionBase *a3, re::IntrospectionBase *a4)
{
  StructureVersion = re::introspectionFindStructureVersion(a2, a2);
  v10 = re::introspectionFindStructureVersion(a3, v9);
  if (StructureVersion != v10)
  {
    v12 = v10;
    v13 = re::introspectionFindForVersion(a3, StructureVersion);
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v15 = re::introspectionAllocPointer(this[26], this[21], v13);
    if (v14 == a3)
    {
      {
        goto LABEL_15;
      }
    }

    {
LABEL_15:
      re::introspectionReleasePointer(v15, this[26], this[21], v14);
      return 0;
    }

    if (re::introspectionRunComplexVersion(this[26], this[21], v14, StructureVersion, v15, a3, v12, a4))
    {
      return 1;
    }

    return 0;
  }
}

uint64_t re::HashTable<re::IntrospectionEnum const*,anonymous namespace::BinaryDeserializer::EnumVersionTable,re::Hash<re::IntrospectionEnum const*>,re::EqualTo<re::IntrospectionEnum const*>,true,false>::findEntry<re::IntrospectionEnum const*>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    v7 = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
LABEL_8:
    v7 = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 72 * v7 + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
    goto LABEL_8;
  }

  v6 = *(v8 + 72 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 72 * v6 + 8) != a3)
  {
    LODWORD(v9) = *(v8 + 72 * v7) & 0x7FFFFFFF;
    while (1)
    {
      v7 = v9;
      v9 = *(v8 + 72 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 72 * v9 + 8) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_9:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v8 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

uint64_t anonymous namespace::BinaryDeserializer::addMissingEnumValue(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
{
  v13 = a3;
  if (!*a2 || (v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a3) ^ ((0xBF58476D1CE4E5B9 * a3) >> 27)), v7 = *(*(a2 + 8) + 4 * ((v6 ^ (v6 >> 31)) % *(a2 + 24))), v7 == 0x7FFFFFFF))
  {
LABEL_6:
    result = re::getIntrospectionEnumValueWithVersioning(result, a4, v11);
    if (v11[0] == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
      result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a2, &v13, v9 ^ (v9 >> 31), &v14);
      if (HIDWORD(v15) == 0x7FFFFFFF)
      {
        result = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a2, v15, v14);
        v10 = v12;
        *(result + 8) = v13;
        *(result + 16) = v10;
        ++*(a2 + 40);
      }
    }
  }

  else
  {
    v8 = *(a2 + 16);
    while (*(v8 + 32 * v7 + 8) != a3)
    {
      v7 = *(v8 + 32 * v7) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::IntrospectionEnum const*,anonymous namespace::BinaryDeserializer::EnumVersionTable,re::Hash<re::IntrospectionEnum const*>,re::EqualTo<re::IntrospectionEnum const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = *(v13 + 8);
                *(v17 + 16) = 0u;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 32) = 0;
                *(v17 + 16) = 0u;
                *(v17 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v17, (v13 + 16));
              }

              v13 += 72;
              --v16;
            }

            while (v16);
          }
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 72 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 64) = a3;
  ++*(a1 + 28);
  return v19 + 72 * v5;
}

uint64_t *re::HashTable<re::IntrospectionEnum const*,anonymous namespace::BinaryDeserializer::EnumVersionTable,re::Hash<re::IntrospectionEnum const*>,re::EqualTo<re::IntrospectionEnum const*>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    v5 = *(a2 + 28) <= 3u ? 3 : *(a2 + 28);
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
    v6 = *(a2 + 32);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(a2 + 16);
      do
      {
        if ((*(v9 + v7) & 0x80000000) != 0)
        {
          v10 = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v9 + v7 + 24) % *(a1 + 24), *(v9 + v7 + 24));
          v9 = *(a2 + 16);
          *(v10 + 8) = *(v9 + v7 + 8);
          *(v10 + 16) = *(v9 + v7 + 16);
          v6 = *(a2 + 32);
        }

        ++v8;
        v7 += 32;
      }

      while (v8 < v6);
    }
  }

  return a1;
}

uint64_t anonymous namespace::BinaryDeserializer::readDynamicString(_anonymous_namespace_::BinaryDeserializer *this, re::DynamicString *a2)
{
  *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
  LODWORD(v8) = 0;
  if ((*(**(this + 18) + 16))(*(this + 18), &v8, 4) == 4)
  {
    v4 = v8;
    if ((*(**(this + 18) + 32))(*(this + 18)) >= v4)
    {
      re::DynamicString::resize(a2, v8, -51);
      v6 = v8;
      if (!v8)
      {
        return 1;
      }

      v7 = (*(a2 + 1) & 1) != 0 ? *(a2 + 2) : (a2 + 9);
      if ((*(**(this + 18) + 16))(*(this + 18), v7, v8) == v6)
      {
        return 1;
      }
    }

    else
    {
      (*(**(this + 18) + 32))(*(this + 18));
    }
  }

  else
  {
  }

  return 0;
}

uint64_t anonymous namespace::BinaryDeserializer::readPointerPolymorphic(_anonymous_namespace_::BinaryDeserializer *this, re::DynamicString ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9)
{
  v35 = a4;
  v36 = a2;
  v33 = a6;
  v34 = a5;
  v32 = a7;
  v31 = a8;
  v30 = a9;
  if (!a4 || !a5)
  {
    return 0;
  }

  v11 = a2;
  if (*a2)
  {
    re::introspectionReleasePointer(*a2, *(this + 26), *(this + 21), a8);
    *v11 = 0;
  }

  v12 = *(this + 18);
  LOBYTE(v29[0]) = 0;
  if ((*(*v12 + 16))(v12, v29, 1) != 1)
  {
    return 0;
  }

  v14 = LOBYTE(v29[0]);
  v29[0] = this;
  v29[1] = &v35;
  v29[2] = &v34;
  v29[3] = a3;
  v29[4] = &v30;
  v29[5] = &v33;
  v29[6] = &v32;
  v29[7] = &v31;
  v29[8] = &v36;
  if (v14 != 73)
  {
    if (v14 == 82)
    {
      v28 = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), &v28, 4) == 4)
      {
        if (*(this + 40) <= v28)
        {
        }

        else
        {
          v17 = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::operator[](this + 304, v28);
          v19 = v17;
          v20 = *v17;
          if ((*v17 || !v17[3]) && (v21 = *(a3 + 88)) != 0)
          {
            if (!v20)
            {
              v26 = *re::foundationSerializationLogObjects(v17);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "Binary Deserialization; reference is null because source was skipped.", buf, 2u);
              }

              v11 = v36;
              if (!*v36)
              {
                return 1;
              }

              re::introspectionReleasePointer(*v36, *(this + 26), *(this + 21), a3);
              goto LABEL_9;
            }

            if (v17[1] == a3)
            {
              v21(*v17);
              *v36 = v20;
              return 1;
            }
          }

          else
          {
            v22 = (*(**(this + 18) + 24))(*(this + 18));
            if ((*(**(this + 18) + 56))(*(this + 18), v19[3]))
            {
              if ((*(**(this + 18) + 56))(*(this + 18), v22))
              {
                if (v24)
                {
                  return 1;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }
        }
      }

      else
      {
      }
    }

    else
    {
      if (v14 == 78)
      {
LABEL_9:
        *v11 = 0;
        return 1;
      }
    }

    return 0;
  }
}

uint64_t anonymous namespace::BinaryDeserializer::readPointer(re::IntrospectionBase const&,re::IntrospectionBase const&,void *)::{lambda(anonymous namespace::BinaryDeserializer::PointerMapEntry *,unsigned int)#1}::operator()(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v6 = a1[2];
  v8 = *a1;
  v9 = (*(**(v6 + 144) + 24))(*(v6 + 144));
  v10 = v5[1];
  v11 = &unk_1ECF17000;
  {
    goto LABEL_45;
  }

  while (v11[408] != v10)
  {
    v11 = **v5[3];
    v10 = v11;
    if (v11)
    {
      if (a2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = re::introspectionAllocPointer(*(v6 + 208), *(v6 + 168), v8);
      if (a2)
      {
        goto LABEL_19;
      }
    }

    if (*(v8 + 16) == 8)
    {
      if (*(v8 + 88))
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_19:
    {
      goto LABEL_20;
    }

    re::getPrettyTypeName(&v35, v5[1]);
    if (BYTE8(v35))
    {
      v19 = v36;
    }

    else
    {
      v19 = &v35 + 9;
    }

    if (v35 && (BYTE8(v35) & 1) != 0)
    {
      (*(*v35 + 40))();
    }

    v5 = a3;
    v7 = *(v6 + 320);
    if (v7 > a3)
    {
      v20 = (*(v6 + 336) + 32 * a3);
      *v20 = 0;
      v20[2] = 0;
      if (!v11)
      {
        re::introspectionReleasePointer(v10, *(v6 + 208), *(v6 + 168), v8);
      }

      return 0;
    }

    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = a3;
    v33 = 2048;
    v34 = v7;
    _os_log_send_and_compose_impl(v23, &v26, &v35, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
LABEL_45:
    {
      v11[408] = re::introspect_char(0, v24);
    }
  }

  if (!a2)
  {
  }

  LODWORD(v35) = 0;
  if ((*(**(v6 + 144) + 16))(*(v6 + 144), &v35, 4) != 4)
  {
    return 0;
  }

  v12 = v35;
  if ((*(**(v6 + 144) + 32))(*(v6 + 144)) < v12)
  {
    (*(**(v6 + 144) + 32))(*(v6 + 144));
    return 0;
  }

  if ((v35 + 1) << 31 >> 31 != v35 + 1)
  {
    return 0;
  }

  v10 = (*(**(v6 + 208) + 32))(*(v6 + 208));
  v21 = v35;
  if ((*(**(v6 + 144) + 16))(*(v6 + 144), v10, v35) != v21)
  {
    (*(**(v6 + 208) + 40))(*(v6 + 208), v10);
    return 0;
  }

  *(v10 + v35) = 0;
LABEL_20:
  v14 = v5[3];
  v15 = *v14;
  v16 = **v14;
  if (v16 != v10 && v16 != 0)
  {
    re::introspectionReleasePointer(v16, *(v6 + 208), *(v6 + 168), *v5);
    *v15 = 0;
    v15 = *v5[3];
  }

  *v15 = v10;
  return 1;
}

uint64_t anonymous namespace::BinaryDeserializer::readPointerPolymorphic(void *,re::IntrospectionStructure const&,re::IntrospectionPolymorphicTable const*,re::IntrospectionPolymorphicTable const*,void *,int,re::IntrospectionBase const*,BOOL)::{lambda(anonymous namespace::BinaryDeserializer::PointerMapEntry *,unsigned long)#1}::operator()(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = (*(**(*a1 + 144) + 24))(*(*a1 + 144));
  v46 = 0;
  if ((*(**(v6 + 144) + 16))(*(v6 + 144), &v46, 8) != 8)
  {
    return 0;
  }

  v8 = *a1[1];
  v9 = *v8;
  if (!v9)
  {
LABEL_6:
    return 0;
  }

  v10 = *(v8 + 1);
  while (*(v10 + 24) != v46)
  {
    v10 += 40;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  v12 = *a1[2];
  v13 = v10;
  if (v8 == v12)
  {
LABEL_25:
    v23 = *(v10 + 8);
    if (v23 && (v24 = *(v13 + 8)) != 0)
    {
      v25 = re::introspectionAllocPointer(*(v6 + 208), *(v6 + 168), *(v13 + 8));
      v26 = v25;
      v27 = a1[3];
      if (*(v27 + 16) == 8)
      {
        if (*(v27 + 88))
        {
          v28 = v25;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      if (a2)
      {
        *a2 = v28;
        a2[2] = v13;
      }

      else
      {
        a3 = *(v6 + 320);
      }

      {
        v36 = v26 - *(v13 + 32);
        v37 = v36;
        if (*a1[4] == 1)
        {
          v37 = *a1[5];
        }

        memcpy(&v37[*a1[6]], (v13 + 24), *(*a1[7] + 20));
        **a1[8] = v36;
        return 1;
      }

      re::getPrettyTypeName(buf, v23);
      if (buf[8])
      {
        v38 = v52;
      }

      else
      {
        v38 = &buf[9];
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      v39 = *(v6 + 320);
      if (v39 <= a3)
      {
        v47 = 0;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        *buf = 0u;
        v41 = MEMORY[0x1E69E9C10];
        v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        *&v48[12] = 1024;
        if (v42)
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        *&v48[14] = 789;
        *&v48[18] = 2048;
        *&v48[20] = a3;
        v49 = 2048;
        v50 = v39;
        _os_log_send_and_compose_impl(v43, &v47, buf, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v44, v45);
        _os_crash_msg();
        __break(1u);
      }

      v40 = (*(v6 + 336) + 32 * a3);
      *v40 = 0;
      v40[2] = 0;
      re::introspectionReleasePointer(v26, *(v6 + 208), *(v6 + 168), v24);
    }

    else
    {
    }

    return 0;
  }

  v14 = *&buf[12];
  if (*&buf[12] == 0x7FFFFFFF)
  {
    v44 = v7;
    v45 = a3;
    LODWORD(v53) = 0;
    *buf = 0u;
    v52 = 0u;
    *(&v53 + 4) = 0x7FFFFFFFLL;
    v15 = *v8;
    if (v15)
    {
      v16 = 0;
      for (i = 0; i < v15; ++i)
      {
        v18 = *(v8 + 1);
        IntrospectionPolymorphicTypeByName = re::getIntrospectionPolymorphicTypeByName(v12, *(v18 + v16));
        if (IntrospectionPolymorphicTypeByName)
        {
          re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(buf, (v18 + v16 + 24), IntrospectionPolymorphicTypeByName + 3);
          v15 = *v8;
        }

        v16 += 40;
      }
    }

    memset(v48, 0, 24);
    if (*&v48[12] == 0x7FFFFFFF)
    {
      *(v20 + 8) = v8;
      re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v20 + 16, buf);
      ++*(v6 + 136);
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(buf);
    v14 = *&buf[12];
    v7 = v44;
    a3 = v45;
  }

  v21 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(*(v6 + 112) + 72 * v14 + 16, (v10 + 24));
  if (v21)
  {
    v22 = *v12;
    if (v22)
    {
      v13 = *(v12 + 1);
      while (*(v13 + 24) != *v21)
      {
        v13 += 40;
        if (!--v22)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      v13 = 0;
    }

    goto LABEL_25;
  }

  v29 = *re::foundationSerializationLogObjects(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = *v10;
    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_INFO, "Binary Deserialization; unknown polymorphic type '%s'.", buf, 0xCu);
  }

  v31 = *(v6 + 168);
  if (!v31 || (v32 = *(v31 + 32)) == 0 || (v33 = v32(*(v10 + 8)), !v33))
  {
    return 0;
  }

  v34 = *re::foundationSerializationLogObjects(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *v10;
    *buf = 136315138;
    *&buf[4] = v35;
    _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "Binary Deserialization; failed to find stream polymorphic type '%s'. Skipping unknown type.", buf, 0xCu);
  }
}

uint64_t anonymous namespace::BinaryDeserializer::skip(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionBase *a2)
{
  switch(*(a2 + 4))
  {
    case 0:
      v8 = *(a2 + 5);
      if ((*(**(this + 18) + 48))(*(this + 18), v8) == v8)
      {
        return 1;
      }

      return 0;
    case 1:
      v11 = *(a2 + 6);
      if (*(v11 + 16) != 8)
      {
        goto LABEL_30;
      }

      v12 = *(v11 + 56);
      if (!v12)
      {
        goto LABEL_30;
      }

      v13 = *(v11 + 64);
      do
      {
        if (**v13 == 2)
        {
          v30 = *(*v13 + 8);
        }

        v13 += 8;
        --v12;
      }

      while (v12);
LABEL_30:
      v14 = *(this + 18);
      LOBYTE(v35) = 0;
      if ((*(*v14 + 16))(v14, &v35, 1) != 1)
      {
        return 0;
      }

      if (v35 == 82)
      {
        LODWORD(v35) = 0;
        if ((*(**(this + 18) + 16))(*(this + 18), &v35, 4) == 4)
        {
          if (*(this + 40) > v35)
          {
            return 1;
          }
        }

        else
        {
        }

        return 0;
      }

      if (v35 == 78)
      {
        return 1;
      }

      if (v35 != 73)
      {
        return 0;
      }

      v15 = (*(**(this + 18) + 24))(*(this + 18));
      if (re::introspect<char>(0) != v11)
      {
        {
          return 1;
        }

        re::getPrettyTypeName(&v35, v11);
        goto LABEL_88;
      }

      LODWORD(v35) = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), &v35, 4) != 4)
      {
        return 0;
      }

      v31 = v35;
      v32 = (*(**(this + 18) + 32))(*(this + 18));
      v33 = v35;
      if (v32 < v31)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      return (*(**(this + 18) + 48))(*(this + 18), v35) == v33;
    case 2:
      if (!*(a2 + 16))
      {
        return 1;
      }

      v9 = 0;
      v10 = *(a2 + 6);
      {
        ++v9;
        result = 1;
        if (v9 >= *(a2 + 16))
        {
          return result;
        }
      }

      re::getPrettyTypeName(&v35, a2);
      goto LABEL_88;
    case 3:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      v34 = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v34, 4) != 4)
      {
        return 0;
      }

      v7 = v34;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v7)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (!v34)
      {
        return 1;
      }

      v25 = 0;
      v26 = *(a2 + 6);
      {
        if (++v25 >= v34)
        {
          return 1;
        }
      }

      goto LABEL_87;
    case 4:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      v34 = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v34, 4) != 4)
      {
        return 0;
      }

      v5 = v34;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v5)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (!v34)
      {
        return 1;
      }

      v21 = 0;
      v22 = *(a2 + 6);
      {
        if (++v21 >= v34)
        {
          return 1;
        }
      }

      goto LABEL_87;
    case 5:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      v34 = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v34, 4) != 4)
      {
        return 0;
      }

      v6 = v34;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v6)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (!v34)
      {
        return 1;
      }

      v23 = 0;
      v24 = *(a2 + 6);
      {
        if (++v23 >= v34)
        {
          return 1;
        }
      }

LABEL_87:
      re::getPrettyTypeName(&v35, a2);
LABEL_88:
      if (v35)
      {
        if (v36)
        {
          (*(*v35 + 40))();
        }
      }

      return 0;
    case 6:
    case 0xA:
    case 0xB:

    case 7:
      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      LODWORD(v35) = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v35, 4) != 4)
      {
        return 0;
      }

      v16 = v35;
      if ((*(**(this + 18) + 32))(*(this + 18)) < v16)
      {
        (*(**(this + 18) + 32))(*(this + 18));
        return 0;
      }

      if (!v35)
      {
        return 1;
      }

      v27 = 0;
      v28 = *(a2 + 6);
      v29 = *(a2 + 8);
      while (2)
      {
        {
          {
            if (++v27 >= v35)
            {
              return 1;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      return 0;
    case 8:
      if (!*(a2 + 14))
      {
        return 1;
      }

      v17 = 0;
      break;
    case 9:
      v20 = *(a2 + 5);
      if ((*(**(this + 18) + 48))(*(this + 18), v20) == v20)
      {
        return 1;
      }

      return 0;
    case 0xD:
      LOBYTE(v35) = 0;
      if ((*(**(this + 18) + 16))(*(this + 18), &v35, 1) != 1)
      {
        return 0;
      }

      if (v35 != 1)
      {
        return 1;
      }

    default:
      re::getPrettyTypeName(&v35, a2);
      goto LABEL_88;
  }

  while (1)
  {
    v18 = *(*(a2 + 8) + 8 * v17);
    if (*v18 != 1)
    {
      goto LABEL_53;
    }

    v19 = *(v18 + 40);
    if (v19 > 1)
    {
      break;
    }

    if (!v19)
    {
      goto LABEL_50;
    }

    if (v19 != 1)
    {
      goto LABEL_102;
    }

    {
LABEL_98:
      return 0;
    }

LABEL_53:
    if (++v17 >= *(a2 + 14))
    {
      return 1;
    }
  }

  if (v19 == 2)
  {
    {
      goto LABEL_98;
    }

    goto LABEL_53;
  }

  if (v19 == 3)
  {
LABEL_50:
    {
      return 0;
    }

    goto LABEL_53;
  }

LABEL_102:
  return 0;
}

uint64_t anonymous namespace::BinaryDeserializer::skipDynamicString(_anonymous_namespace_::BinaryDeserializer *this)
{
  *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
  v6 = 0;
  if ((*(**(this + 18) + 16))(*(this + 18), &v6, 4) == 4)
  {
    v2 = v6;
    v3 = (*(**(this + 18) + 32))(*(this + 18));
    v4 = v6;
    if (v3 >= v2)
    {
      if (!v6 || (*(**(this + 18) + 48))(*(this + 18), v6) == v4)
      {
        return 1;
      }
    }

    else
    {
      (*(**(this + 18) + 32))(*(this + 18));
    }
  }

  else
  {
  }

  return 0;
}

uint64_t anonymous namespace::BinaryDeserializer::skipPointerPolymorphic(_anonymous_namespace_::BinaryDeserializer *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 18);
  LOBYTE(v11) = 0;
  if ((*(*v4 + 16))(v4, &v11, 1) != 1)
  {
    return 0;
  }

  if (v11 == 82)
  {
    LODWORD(v11) = 0;
    if ((*(**(a1 + 18) + 16))(*(a1 + 18), &v11, 4) == 4)
    {
      if (*(a1 + 40) > v11)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  if (v11 == 78)
  {
    return 1;
  }

  if (v11 != 73)
  {
    return 0;
  }

  v14 = 0;
  v5 = (*(**(a1 + 18) + 24))(*(a1 + 18));
  if ((*(**(a1 + 18) + 16))(*(a1 + 18), &v14, 8) != 8)
  {
    return 0;
  }

  v6 = *a2;
  if (!v6)
  {
LABEL_11:
    return 0;
  }

  v7 = *(a2 + 1);
  while (*(v7 + 24) != v14)
  {
    v7 += 40;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  v9 = *(v7 + 8);
  if (!v9)
  {
    return 0;
  }

  {
    re::getPrettyTypeName(&v11, v9);
    if (v12)
    {
      v10 = *&v13[7];
    }

    else
    {
      v10 = v13;
    }

    if (v11)
    {
      if (v12)
      {
        (*(*v11 + 40))();
      }
    }

    return 0;
  }

  return 1;
}

uint64_t anonymous namespace::BinaryDeserializer::skipArrayMember(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionMember *a2)
{
  *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
  v18 = 1;
  if ((*(**(this + 18) + 16))(*(this + 18), &v18, 4) != 4)
  {
    return 0;
  }

  v4 = v18;
  if ((*(**(this + 18) + 32))(*(this + 18)) < v4)
  {
    (*(**(this + 18) + 32))(*(this + 18));
    return 0;
  }

  v5 = *(a2 + 2);
  if (!v5 || *(v5 + 16) != 1)
  {
    return 0;
  }

  re::IntrospectionCStyleArray::IntrospectionCStyleArray(&v15, *(v5 + 48), v18);
  ArcSharedObject::ArcSharedObject(&v8, 0);
  v9[1] = 0x800000001;
  v10 = 8;
  v11 = 0;
  v12 = 0;
  v13 = 0xFFFFFFFFLL;
  v8 = &unk_1F5CBD2C0;
  v14[0] = &v15;
  v14[1] = 0;
  v8 = &unk_1F5CBD2C0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(v14);
  v8 = &unk_1F5CCF868;
  objc_destructInstance(v9);
  v15 = &unk_1F5CB0038;
  re::SerializedReference<re::IntrospectionBase const*>::reset(&v17);
  v15 = &unk_1F5CCF868;
  objc_destructInstance(&v16);
  return v6;
}

uint64_t anonymous namespace::BinaryDeserializer::skipPolymorphicMember(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionMember *a2)
{
  v2 = *(a2 + 2);
  if (*(v2 + 16) != 1)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  if (*(v3 + 16) != 8)
  {
    return 0;
  }

  v4 = *(v3 + 64);
  v5 = *v4;
  if (**v4 != 2)
  {
    v6 = (v4 + 1);
    do
    {
      v7 = *v6++;
      v5 = v7;
    }

    while (*v7 != 2);
  }

  v8 = *(v5 + 1);
}

BOOL anonymous namespace::BinaryDeserializer::readLinearArray(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionBase **a2, const re::IntrospectionBase **a3, unint64_t a4, char *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (a4)
    {
      v10 = 0;
      {
        if (a4 == ++v10)
        {
          return 1;
        }
      }

      re::getPrettyTypeName(buf, a2);
      if (buf[8])
      {
        v14 = v23;
      }

      else
      {
        v14 = &buf[9];
      }

      if (*buf)
      {
        if (buf[8])
        {
          (*(**buf + 40))();
        }
      }

      return 0;
    }

    return 1;
  }

  if (a2 == a3)
  {
    v15 = *(a3 + 5);
    v16 = v15 < 0;
    if (v15 >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = -v15;
    }

    v18 = (v17 * a4) >> 64;
    v19 = v17 * a4;
    if (v15 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }

    v21 = v18 != 0;
    if (!v19)
    {
      v16 = 0;
    }

    if (v21 || v16)
    {
    }

    else
    {
      if ((*(**(this + 18) + 16))(*(this + 18), a5, v20) == v20)
      {
        return 1;
      }
    }
  }

  else
  {
    v12 = *re::foundationSerializationLogObjects(this);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v13 = a2[6];
    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_debug_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEBUG, "Binary Deserialization; array item types don't match '%s'.", buf, 0xCu);
  }

  return 0;
}

uint64_t std::__function::__func<anonymous namespace::BinaryDeserializer::readHashTable(re::IntrospectionBase const&,re::IntrospectionBase const&,void *)::{lambda(unsigned char *)#1},std::allocator<anonymous namespace::BinaryDeserializer::readHashTable(re::IntrospectionBase const&,re::IntrospectionBase const&,void *)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D17F60;
  a2[1] = v2;
  return result;
}

BOOL anonymous namespace::BinaryDeserializer::readStructureNoVersioning(_anonymous_namespace_::BinaryDeserializer *this, const re::IntrospectionBase *a2, const re::IntrospectionBase *a3, char *a4)
{
  v106[3] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 14);
  result = 1;
  if (!v5)
  {
    return result;
  }

  v9 = 0;
  v83 = this;
LABEL_3:
  v10 = *(*(a2 + 8) + 8 * v9);
  if (*v10 != 1)
  {
    goto LABEL_101;
  }

  if (a2 == a3)
  {
    v49 = v9;
LABEL_58:
    v50 = *(*(a3 + 8) + 8 * v49);
    v51 = *(v10 + 40);
    if (v51 != *(v50 + 40))
    {
      return 0;
    }

    v52 = *(v50 + 36);
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        v64 = *(v10 + 16);
        if (*(v64 + 16) == 1 && (v65 = *(v50 + 16), *(v65 + 16) == 1))
        {
          v66 = *(v64 + 48);
          if (*(v66 + 16) == 8 && (v67 = *(v65 + 48), *(v67 + 16) == 8))
          {
            v68 = *(v66 + 56);
            if (v68)
            {
              v69 = *(v66 + 64);
              while (1)
              {
                v70 = *v69;
                if (**v69 == 2)
                {
                  break;
                }

                ++v69;
                if (!--v68)
                {
                  v70 = 0;
                  break;
                }
              }
            }

            else
            {
              v70 = 0;
            }

            v71 = *(v67 + 64);
            v72 = *v71;
            if (**v71 != 2)
            {
              v73 = (v71 + 1);
              do
              {
                v74 = *v73++;
                v72 = v74;
              }

              while (*v74 != 2);
            }

            {
              goto LABEL_101;
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_116:
        return 0;
      }

      if (v51 != 3)
      {
        goto LABEL_113;
      }
    }

    else if (v51)
    {
      if (v51 != 1)
      {
        goto LABEL_113;
      }

      *(this + 19) = (*(**(this + 18) + 24))(*(this + 18));
      v53 = *(v50 + 36);
      v102 = 1;
      if ((*(**(this + 18) + 16))(*(this + 18), &v102, 4) == 4)
      {
        v54 = v102;
        v55 = (*(**(this + 18) + 32))(*(this + 18));
        v56 = v102;
        if (v55 < v54)
        {
          (*(**(this + 18) + 32))(*(this + 18));
        }

        else
        {
          *buf = v102;
          if (*(v50 + 40) == 1 && (v57 = *(v50 + 48)) != 0)
          {
            memcpy(&a4[*(v50 + 64)], buf, *(v57 + 20));
            v58 = *(v10 + 16);
            if (v58 && *(v58 + 16) == 1)
            {
              v59 = *(v50 + 16);
              re::IntrospectionCStyleArray::IntrospectionCStyleArray(buf, *(v58 + 48), v56);
              re::IntrospectionCStyleArray::IntrospectionCStyleArray(&v99, *(v59 + 48), v102);
              ArcSharedObject::ArcSharedObject(&v92, 0);
              v93[1] = 0x800000001;
              v94 = 8;
              v95 = 0;
              v96 = 0;
              v97 = 0xFFFFFFFFLL;
              v92 = &unk_1F5CBD2C0;
              v98[0] = buf;
              v98[1] = 0;
              ArcSharedObject::ArcSharedObject(&v85, 0);
              v86[1] = 0x800000001;
              v87 = 8;
              v88 = 0;
              v89 = 0;
              v90 = 0xFFFFFFFFLL;
              v85 = &unk_1F5CBD2C0;
              v91[0] = &v99;
              v91[1] = 0;
              v61 = *(this + 40);
              if (v61)
              {
                v62 = 32 * v61;
                v63 = (*(v83 + 42) + 8);
                do
                {
                  if (*v63 == &v99)
                  {
                    *v63 = 0;
                  }

                  v63 += 4;
                  v62 -= 32;
                }

                while (v62);
              }

              if (v60)
              {
                v85 = &unk_1F5CBD2C0;
                re::SerializedReference<re::IntrospectionBase const*>::reset(v91);
                v85 = &unk_1F5CCF868;
                objc_destructInstance(v86);
                v92 = &unk_1F5CBD2C0;
                re::SerializedReference<re::IntrospectionBase const*>::reset(v98);
                v92 = &unk_1F5CCF868;
                objc_destructInstance(v93);
                v99 = &unk_1F5CB0038;
                re::SerializedReference<re::IntrospectionBase const*>::reset(&v101);
                v99 = &unk_1F5CCF868;
                objc_destructInstance(v100);
                *buf = &unk_1F5CB0038;
                re::SerializedReference<re::IntrospectionBase const*>::reset(v106);
                *buf = &unk_1F5CCF868;
                objc_destructInstance(&buf[8]);
                this = v83;
                goto LABEL_101;
              }

              this = v83;
              re::IntrospectionPointer::~IntrospectionPointer(&v85);
              re::IntrospectionPointer::~IntrospectionPointer(&v92);
              re::IntrospectionCStyleArray::~IntrospectionCStyleArray(&v99);
              re::IntrospectionCStyleArray::~IntrospectionCStyleArray(buf);
            }

            else
            {
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }

      goto LABEL_116;
    }

    {
      goto LABEL_101;
    }

    return 0;
  }

  v12 = *&buf[12];
  if (*&buf[12] != 0x7FFFFFFF)
  {
    goto LABEL_43;
  }

  v82 = v10;
  v13 = strlen(*(a2 + 6));
  v14 = strlen(*(a3 + 6));
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = strncmp(*(a2 + 6), *(a3 + 6), v15);
  if (!v16)
  {
    v17 = 0;
    v104 = 0;
    memset(buf, 0, sizeof(buf));
    v105 = 0x7FFFFFFFLL;
    while (1)
    {
      v18 = *(*(a2 + 8) + 8 * v17);
      if (*v18 != 1)
      {
        goto LABEL_30;
      }

      v19 = *(a3 + 14);
      if (!v19)
      {
        goto LABEL_30;
      }

      v20 = (v18 + 2);
      v21 = *(a3 + 8);
LABEL_14:
      v22 = 0;
      v23 = *v20;
      while (1)
      {
        v24 = *(v21 + 8 * v22);
        if (*v24 == 1)
        {
          break;
        }

        if (*v24 == 5 && !strcmp(*(v24 + 8), v23))
        {
          v20 = (v24 + 16);
          goto LABEL_14;
        }

LABEL_20:
        if (v19 == ++v22)
        {
          goto LABEL_30;
        }
      }

      if (strcmp(*(v24 + 8), v23))
      {
        goto LABEL_20;
      }

      v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
      v26 = v25 ^ (v25 >> 31);
      if (!*buf)
      {
        LODWORD(v27) = 0;
LABEL_28:
        v29 = re::HashTable<int,int,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(buf, v27, v26);
        *(v29 + 4) = v17;
        *(v29 + 8) = v22;
        ++HIDWORD(v105);
        goto LABEL_29;
      }

      v27 = v26 % *&buf[24];
      v28 = *(*&buf[8] + 4 * v27);
      if (v28 == 0x7FFFFFFF)
      {
        goto LABEL_28;
      }

      while (v17 != *(*&buf[16] + 24 * v28 + 4))
      {
        LODWORD(v28) = *(*&buf[16] + 24 * v28) & 0x7FFFFFFF;
        if (v28 == 0x7FFFFFFF)
        {
          goto LABEL_28;
        }
      }

LABEL_29:
      v5 = *(a2 + 14);
LABEL_30:
      if (++v17 >= v5)
      {
        v99 = 0;
        v100[0] = 0;
        v100[1] = 0;
        this = v83;
        if (HIDWORD(v100[0]) == 0x7FFFFFFF)
        {
          *(v30 + 8) = a2;
          *(v30 + 16) = 0u;
          v31 = v30 + 16;
          *(v30 + 32) = 0u;
          *(v30 + 48) = 0;
          *(v30 + 52) = 0x7FFFFFFFLL;
          if (*buf)
          {
            v32 = v30;
            v33 = *&buf[28] <= 3u ? 3 : *&buf[28];
            re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v30 + 16, *buf, v33);
            v34 = v104;
            if (v104)
            {
              v35 = *&buf[16] + 8;
              do
              {
                if ((*(v35 - 8) & 0x80000000) != 0)
                {
                  v36 = re::HashTable<int,int,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(v31, *(v35 + 8) % *(v32 + 40), *(v35 + 8));
                  *(v36 + 4) = *(v35 - 4);
                  *(v36 + 8) = *v35;
                }

                v35 += 24;
                --v34;
              }

              while (v34);
            }
          }

          this = v83;
          ++*(v83 + 10);
        }

        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(buf);
        v12 = *&buf[12];
        v10 = v82;
LABEL_43:
        v37 = *(this + 2) + 72 * v12;
        v39 = *(v37 + 16);
        v38 = v37 + 16;
        if (!v39 || (v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27)), v41 = *(*(v38 + 8) + 4 * ((v40 ^ (v40 >> 31)) % *(v38 + 24))), v41 == 0x7FFFFFFF))
        {
LABEL_48:
          v43 = *(*(a2 + 8) + 8 * v9);
          v44 = *re::foundationSerializationLogObjects(v11);
          v11 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
          if (v11)
          {
            v45 = *(v43 + 8);
            *buf = 136315138;
            *&buf[4] = v45;
            _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_INFO, "Binary Deserialization; unknown member '%s'.", buf, 0xCu);
          }

          goto LABEL_50;
        }

        v42 = *(v38 + 16);
        while (*(v42 + 24 * v41 + 4) != v9)
        {
          LODWORD(v41) = *(v42 + 24 * v41) & 0x7FFFFFFF;
          if (v41 == 0x7FFFFFFF)
          {
            goto LABEL_48;
          }
        }

        v49 = *(v42 + 24 * v41 + 8);
        if (v49 != -1)
        {
          goto LABEL_58;
        }

LABEL_50:
        v46 = *re::foundationSerializationLogObjects(v11);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = *(v10 + 8);
          *buf = 136315138;
          *&buf[4] = v47;
          _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_INFO, "Binary Deserialization; skipping unknown member '%s'.", buf, 0xCu);
        }

        v48 = *(v10 + 40);
        if (v48 > 1)
        {
          if (v48 == 2)
          {
            {
              goto LABEL_101;
            }

LABEL_108:
            return 0;
          }

          if (v48 == 3)
          {
LABEL_77:
            {
              goto LABEL_101;
            }

            return 0;
          }

LABEL_113:
          return 0;
        }

        if (!v48)
        {
          goto LABEL_77;
        }

        if (v48 != 1)
        {
          goto LABEL_113;
        }

        {
          goto LABEL_108;
        }

LABEL_101:
        ++v9;
        v5 = *(a2 + 14);
        if (v9 >= v5)
        {
          return 1;
        }

        goto LABEL_3;
      }
    }
  }

  v75 = *re::foundationSerializationLogObjects(v16);
  v76 = os_log_type_enabled(v75, OS_LOG_TYPE_INFO);
  if (v76)
  {
    v77 = *(a2 + 6);
    v78 = *(a3 + 6);
    *buf = 136315394;
    *&buf[4] = v77;
    *&buf[12] = 2080;
    *&buf[14] = v78;
    _os_log_impl(&dword_1E1C61000, v75, OS_LOG_TYPE_INFO, "Binary Deserialization; structure name changed '%s' and '%s'.", buf, 0x16u);
  }

  v79 = *re::foundationSerializationLogObjects(v76);
  result = os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v80 = *(v10 + 8);
    *buf = 136315138;
    *&buf[4] = v80;
    _os_log_debug_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_DEBUG, "Binary Deserialization; failed to read member '%s'.", buf, 0xCu);
    return 0;
  }

  return result;
}

uint64_t re::HashTable<int,int,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = re::HashTable<int,int,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24), *(v17 + 8));
                *(v18 + 4) = *(v17 - 4);
                *(v18 + 8) = *v17;
              }

              v17 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

uint64_t re::HashTable<re::IntrospectionStructure const*,anonymous namespace::BinaryDeserializer::StructureVersionData,re::Hash<re::IntrospectionStructure const*>,re::EqualTo<re::IntrospectionStructure const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                *(v18 + 8) = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 32) = 0u;
                *(v18 + 52) = 0x7FFFFFFFLL;
                *(v18 + 16) = *(v17 - 16);
                *(v17 - 16) = 0;
                v19 = *(v18 + 24);
                *(v18 + 24) = *(v17 - 8);
                *(v17 - 8) = v19;
                v20 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v20;
                *(v18 + 40) = *(v17 + 8);
                *(v17 + 8) = 0;
                LODWORD(v20) = *(v18 + 44);
                *(v18 + 44) = *(v17 + 12);
                *(v17 + 12) = v20;
                LODWORD(v20) = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v20;
                LODWORD(v20) = *(v18 + 52);
                *(v18 + 52) = *(v17 + 20);
                *(v17 + 20) = v20;
                ++*(v18 + 56);
              }

              v17 += 72;
              --v16;
            }

            while (v16);
          }
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 72 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 72 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 72 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 64) = a3;
  ++*(a1 + 28);
  return v21 + 72 * v5;
}

uint64_t *re::HashTable<re::IntrospectionStructure const*,anonymous namespace::BinaryDeserializer::StructureVersionData,re::Hash<re::IntrospectionStructure const*>,re::EqualTo<re::IntrospectionStructure const*>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

unint64_t anonymous namespace::BinaryDeserializer::hexConvert(_anonymous_namespace_::BinaryDeserializer *this, char *a2, uint64_t a3, const char *a4)
{
  v4 = 0;
  if (a2 >= 4 && a4)
  {
    v4 = 0;
    for (i = 0; i < a4; ++i)
    {
      v6 = this + v4;
      v6[2] = 32;
      v7 = v4 + 6;
      v4 += 3;
      if (v7 >= a2)
      {
        break;
      }
    }
  }

  v8 = v4 != 0;
  v9 = v4 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 < a2)
  {
    *(this + v9) = 0;
  }

  return v9;
}

void re::deserializeJsonIntoBuffer(uint64_t a1@<X0>, re **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v10 = a5;
  v85 = 0;
  v84[0] = &unk_1F5D17FA8;
  v84[1] = a1;
  v84[2] = a5;
  memset(&v84[3], 0, 24);
  *&v86[0].var0 = 0xD037281FECA61F36;
  v86[0].var1 = "JSON-StreamAdaptor-DeserializerV1";
  v41 = &unk_1F5D18050;
  v14 = re::StringID::StringID(&v42, v86);
  v54 = 0;
  v51[1] = 0;
  v52 = 0;
  v51[0] = 0;
  v53 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48[0] = 0;
  v55 = 15;
  v57 = 1024;
  v56 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3C70, memory_order_acquire) & 1) == 0)
  {
    v14 = __cxa_guard_acquire(&qword_1EE1C3C70);
    if (v14)
    {
      re::Defaults::intValue(&v34, "maxSerializationDepth", v31);
      if (v34)
      {
        v32 = SDWORD1(v34);
      }

      else
      {
        v32 = 0;
      }

      _MergedGlobals_554 = v32;
      __cxa_guard_release(&qword_1EE1C3C70);
    }
  }

  if (_MergedGlobals_554)
  {
    v57 = _MergedGlobals_554;
  }

  v60[4] = 0;
  v61 = 0;
  v58 = 0u;
  v59 = 0u;
  memset(v60, 0, 28);
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v68 = 0x7FFFFFFFLL;
  v41 = &unk_1F5D17FE8;
  v69 = 1;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v72 = 0x7FFFFFFFLL;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v83 = 0;
  v77 = 0u;
  v78 = 0u;
  v79 = 0;
  v80 = 0u;
  v81 = 0u;
  v82 = 0;
  if (*&v86[0].var0)
  {
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v40);
  re::TypeRegistry::typeInfo(*a2, a2, v86);
  re::TypeInfo::TypeInfo(&v38, &v86[0].var1);
  if (v39 != 8 || (v15 = re::TypeInfo::name(&v38), *v15 >> 1 == 94623636) && ((v16 = v15[1], v16 == "char*") || !strcmp(v16, "char*")) || (v17 = re::TypeInfo::name(&v38), *v17 >> 1 == 0x134375A94D9F7110) && ((v18 = v17[1], v18 == "DynamicString") || !strcmp(v18, "DynamicString")))
  {
LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v19 = re::TypeInfo::name(&v38);
  if (*v19 >> 1 == 0x22C6ED80D0CLL)
  {
    v20 = v19[1];
    if (v20 != "StringID")
    {
      v21 = strcmp(v20, "StringID") != 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v21 = 1;
LABEL_17:
  v62 = a4;
  v23 = v63;
  if (*(v63 + 6) != v64)
  {
  }

  v43 = v84;
  v44 = 0;
  v45 = 0;
  if (!v10)
  {
  }

  v46 = v10;
  if (!a6)
  {
  }

  v47 = a6;
  *&v86[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v48, v86);
  if (v86[0].var0 == 1 && v86[1].var1 && (*&v86[2].var0 & 1) != 0)
  {
    (*(*v86[1].var1 + 40))(v86[1].var1, v86[2].var1);
  }

  v51[0] = v46;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v51, 0x40uLL);
  ++v53;
  *&v86[0].var0 = 0;
  memset(&v86[0].var0 + 1, 0, 44);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v60[0] = v47;
  re::DynamicArray<char>::setCapacity(v60, 0);
  ++LODWORD(v60[3]);
  v25 = (*(*v46 + 32))(v46, 72, 8);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  *(v25 + 40) = 256;
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  *(v25 + 64) = 2;
  *(&v59 + 1) = v25;
  v26 = (*(*v46 + 32))(v46, 104, 8);
  *&v59 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::GenericDocument(v26, 0, 1024, 0);
  *&v86[0].var0 = v43;
  v86[0].var1 = 0;
  v86[1].var0 = 0;
  v86[1].var1 = 0;
  *&v86[2].var0 = 0;
  v27 = rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::ParseStream<440u,rapidjson::UTF8<char>,re::internal::RapidJSONInputStream>(v59, v86);
  v29 = *(v27 + 88);
  if (v29)
  {
    v30 = v29 > 0x11 ? "Unknown error." : *(off_1E8721BB0 + (((v29 << 32) - 0x100000000) >> 29));
    re::DynamicString::format(&v34, "Failed to deserialize JSON: %s (Offset %zu)", v28, v30, *(v27 + 96));
    if (v34)
    {
      if (BYTE8(v34))
      {
        (*(*v34 + 40))();
      }
    }
  }

  if (v86[1].var1 < v86[1].var0)
  {
    (*(**&v86[0].var0 + 24))(*&v86[0].var0, (*&v86[1].var0 - LODWORD(v86[1].var1)));
  }

  v41[6](&v41);
  if (a7)
  {
    LOBYTE(v61) = 1;
    if ((a7 & 2) == 0)
    {
LABEL_40:
      if (v21)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    }
  }

  else if ((a7 & 2) == 0)
  {
    goto LABEL_40;
  }

  HIBYTE(v61) = 1;
  if (v21)
  {
LABEL_41:
    if ((v48[0] & 1) == 0)
    {
      (v41[9])(&v41, "object", 0, a3, &v38, &v38, 0);
    }

    goto LABEL_49;
  }

LABEL_45:
  {
    *&v86[0].var0 = v48[0];
    if (v48[0] == 1)
    {
      *&v86[0].var1 = v49;
      re::DynamicString::DynamicString(&v86[1].var1, v50);
    }

    v34 = *&v86[0].var1;
    goto LABEL_55;
  }

  if ((v48[0] & 1) == 0)
  {
    (v41[9])(&v41, "object", 0, a3, &v38, &v38, 0);
    if ((v48[0] & 1) == 0)
    {
      ++*(v54 + 48 * v52 - 16);
    }
  }

LABEL_49:
  v41[7](&v41);
  if (v48[0] != 1)
  {
    *a8 = 1;
    goto LABEL_59;
  }

  *&v86[0].var0 = v48[0];
  *&v86[0].var1 = v49;
  re::DynamicString::DynamicString(&v86[1].var1, v50);
  v34 = *&v86[0].var1;
LABEL_55:
  re::DynamicString::DynamicString(&v35, &v86[1].var1);
  *a8 = 0;
  *(a8 + 8) = v34;
  *(a8 + 24) = v35;
  *(a8 + 48) = v37;
  *(a8 + 32) = v36;
  v37 = 0;
  v35 = 0;
  v36 = 0uLL;
  if (v86[0].var0 == 1 && v86[1].var1 && (*&v86[2].var0 & 1) != 0)
  {
    (*(*v86[1].var1 + 40))(v86[1].var1, v86[2].var1);
  }

LABEL_59:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v40);
  v41 = &unk_1F5D17FE8;
  if (*(&v80 + 1))
  {
    if (v83)
    {
      (*(**(&v80 + 1) + 40))();
    }

    v83 = 0;
    v81 = 0uLL;
    *(&v80 + 1) = 0;
    ++v82;
  }

  if (*(&v77 + 1))
  {
    if (v80)
    {
      (*(**(&v77 + 1) + 40))();
    }

    *&v80 = 0;
    v78 = 0uLL;
    *(&v77 + 1) = 0;
    ++v79;
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    *&v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v70);
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
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

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, char *a2, int a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v16 = v3;
  v17 = v4;
  if (result)
  {
    if (*(result + 22) == 3)
    {
      v9[0] = 2;
      v10 = a3;
      v11 = a2;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = result;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(v1 + 16) + 48 * *(v1 + 14);
    ++*(v2 - 16);
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D17FE8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
}

void anonymous namespace::LegacyInputStreamAdaptor::~LegacyInputStreamAdaptor(_anonymous_namespace_::LegacyInputStreamAdaptor *this)
{
  *this = &unk_1F5D17FA8;
  if (*(this + 3))
  {
    (*(**(this + 2) + 40))(*(this + 2));
    *(this + 3) = 0;
    *(this + 10) = 0;
  }
}

{

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::LegacyInputStreamAdaptor::Next(_anonymous_namespace_::LegacyInputStreamAdaptor *this, const void **a2, int *a3)
{
  if (*(this + 48))
  {
    return 0;
  }

  v7 = *(this + 3);
  if (!v7)
  {
    v7 = (*(**(this + 2) + 32))(*(this + 2), 256, 0);
    *(this + 3) = v7;
  }

  v8 = *(this + 11);
  if (v8 >= 1)
  {
    *a2 = (v7 + *(this + 10) - v8);
    *a3 = v8;
    *(this + 11) = 0;
    return 1;
  }

  v9 = (*(**(this + 1) + 16))(*(this + 1), v7, 256);
  *(this + 10) = v9;
  if (v9 > 0)
  {
    v10 = *(this + 3);
    *(this + 4) += v9 & 0x7FFFFFFF;
    *a3 = v9;
    *a2 = v10;
    return 1;
  }

  if (v9 < 0)
  {
    *(this + 48) = 1;
  }

  (*(**(this + 2) + 40))(*(this + 2), *(this + 3));
  result = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  return result;
}

BOOL anonymous namespace::LegacyInputStreamAdaptor::Skip(_anonymous_namespace_::LegacyInputStreamAdaptor *this, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 48))
  {
    return 0;
  }

  v4 = *(this + 11);
  if (v4 >= a2)
  {
    *(this + 11) = v4 - a2;
    return 1;
  }

  else
  {
    v5 = 0;
    v6 = a2 - v4;
    *(this + 11) = 0;
    do
    {
      v7 = v5;
      v8 = __OFSUB__(v6, v5);
      v9 = v6 - v5;
      if ((v9 < 0) ^ v8 | (v9 == 0))
      {
        break;
      }

      if (v9 >= 256)
      {
        v9 = 256;
      }

      v10 = (*(**(this + 1) + 16))(*(this + 1), v11, v9);
      v5 = v7 + v10;
    }

    while (v10 > 0);
    *(this + 4) += v7;
    return v6 == v7;
  }
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D18050;
  re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D17FE8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
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

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
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

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 61);
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
      --*(a1 + 61);
      ++*(a1 + 124);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      if (*this == *(a1 + 272))
      {
        if (v12 != 0x7FFFFFFF)
        {
          return *(*(a1 + 304) + 24 * v12 + 16);
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
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

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

uint64_t (*re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, uint64_t a7)
{
  if (*a2 == *(a1 + 272))
  {
    v9 = v2;
    v10 = v3;
    if (v8 != 0x7FFFFFFF)
    {
      return *(*(a1 + 304) + 24 * v8 + 16);
    }
  }

  return v4;
}

_anonymous_namespace_ *re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 23);
    if (v2)
    {
      v3 = *(result + 3);
      rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(*(result + 23));
      (*(*v3 + 40))(v3, v2);
    }

    *(v1 + 23) = 0;
    v4 = *(v1 + 22);
    if (v4)
    {
      v5 = *(v1 + 3);
      rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::~GenericDocument(*(v1 + 22));
      (*(*v5 + 40))(v5, v4);
      *(v1 + 22) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(v1 + 192);
    if ((*(v1 + 40) & 1) == 0)
    {
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 1) = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

_anonymous_namespace_ *re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::popState(_anonymous_namespace_ *result, int a2)
{
  v3 = result;
  v4 = *(result + 14);
  if (!v4)
  {
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 14);
  }

  if (*(*(v3 + 16) + 48 * v4 - 48) != a2)
  {
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 14);
  }

  *(v3 + 14) = v4 - 1;
  ++*(v3 + 30);
  return result;
}

uint64_t re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::setError(uint64_t a1, uint64_t *a2)
{
  *&v8 = 400;
  *(&v8 + 1) = re::FoundationErrorCategory(void)::instance;
  v3 = a2[2];
  v2 = a2[3];
  v11 = v3;
  v12 = v2;
  v5 = a2[1];
  v9 = *a2;
  v4 = v9;
  v10 = v5;
  a2[2] = 0;
  a2[3] = 0;
  *a2 = 0;
  a2[1] = 0;
  result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v8);
  if (v4 && (v5 & 1) != 0)
  {
    v7 = *(*v4 + 40);

    return v7(v4, v3);
  }

  return result;
}

uint64_t *re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(_anonymous_namespace_ *a1, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  re::DynamicString::setCapacity(&v26, 0);
  va_copy(v25, va);
  re::DynamicString::vassignf(&v26, a3, va);
  if (v14)
  {
    v7 = *&v15[7];
  }

  else
  {
    v7 = v15;
  }

  if (v27)
  {
    v8 = v28;
  }

  else
  {
    v8 = &v27 + 1;
  }

  re::DynamicString::format(&v16, "Failed to %s %s. Reason: %s", v6, "deserialize", v7, v8);
  *&v20 = 400;
  *(&v20 + 1) = re::FoundationErrorCategory(void)::instance;
  v9 = v18;
  v23 = v18;
  v24 = v19;
  v10 = v16;
  v11 = v17;
  v21 = v16;
  v22 = v17;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1 + 24, &v20);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))(v10, v9);
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  result = v26;
  if (v26)
  {
    if (v27)
    {
      return (*(*v26 + 40))();
    }
  }

  return result;
}

void *re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::combineLabels(_anonymous_namespace_ *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  result = re::DynamicString::setCapacity(a1, 0);
  if (a2 >= 2)
  {
    v9 = a2 - 1;
    v10 = a3 + 48;
    do
    {
      v11 = *(v10 - 48);
      v12 = v11 > 0xA;
      v13 = (1 << v11) & 0x608;
      if (v12 || v13 == 0)
      {
        v15 = *(v10 + 8);
        if (v15 && *v15)
        {
          __src = 47;
          re::DynamicString::append(a1, &__src, 1uLL);
          v16 = strlen(*(v10 + 8));
          result = re::DynamicString::append(a1, *(v10 + 8), v16);
        }

        if (*v10 == 5)
        {
          result = re::DynamicString::appendf(a1, "/%lld", *(v10 + 32));
        }
      }

      v10 += 48;
      --v9;
    }

    while (v9);
  }

  if (a4 && *a4)
  {
    v19 = 47;
    re::DynamicString::append(a1, &v19, 1uLL);
    v17 = strlen(a4);

    return re::DynamicString::append(a1, a4, v17);
  }

  return result;
}

uint64_t re::serializeType<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, uint64_t a7)
{
  v9 = this;
  v228 = *MEMORY[0x1E69E9840];
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

  if (*(v9 + 12) != *(a6 + 12))
  {
    goto LABEL_295;
  }

  v18 = re::DataArray<re::TextureAtlasTile>::tryGet(*v9 + 96, **(v9 + 16));
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
    v29 = re::TypeInfo::name(v9);
    v30 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v29, v30))
    {
      v45 = re::TypeInfo::name(a6)[1];
      v46 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      if (v46)
      {
        v47 = *(v46 + 16);
      }

      else
      {
        v47 = 0xFFFFFFFFLL;
      }

      v66 = re::TypeInfo::name(v9)[1];
      v67 = re::DataArray<re::TextureAtlasTile>::tryGet(*v9 + 96, **(v9 + 16));
      if (v67)
      {
        v68 = *(v67 + 16);
      }

      else
      {
        v68 = 0xFFFFFFFFLL;
      }

      v206 = v66;
      v207 = v68;
      v204 = v45;
      v205 = v47;
      v23 = "Type name changed: Serialized type %s version %u, runtime type %s version %u.";
      goto LABEL_228;
    }

    v31 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v31)
    {
      v32 = *(v31 + 16);
    }

    else
    {
      v32 = -1;
    }

    re::TypeInfo::atVersion(&v211, v9, v32);
    if ((v211 & 1) == 0)
    {
      v63 = re::TypeInfo::name(a6)[1];
      v64 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      if (v64)
      {
        v65 = *(v64 + 16);
      }

      else
      {
        v65 = 0xFFFFFFFFLL;
      }

      v204 = v63;
      v205 = v65;
      v23 = "Unknown serialized type %s version %u. No matching runtime type found.";
      goto LABEL_228;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(&v212, *(a1 + 48), *(a1 + 264));
    }

    if (*(a1 + 64) & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, &v212, a6, a7), (*(a1 + 64)))
    {
      if (!Instance)
      {
        goto LABEL_296;
      }

      v127 = *(a1 + 48);
      v128 = *(a1 + 264);
      v129 = &v212;
      v130 = Instance;
      goto LABEL_215;
    }

    if (a7 & 1) != 0 || (re::TypeInfo::TypeInfo(&Tag, &v212), re::internal::upgradeObject(Instance, &Tag, a4, v9, *(a1 + 48), *(a1 + 264), buf), (buf[0]))
    {
      LOBYTE(v9) = 1;
      return v9 & 1;
    }

    if (v223)
    {
      v185 = v224;
    }

    else
    {
      v185 = &v223 + 1;
    }

    if ((buf[0] & 1) != 0 || !v222 || (v223 & 1) == 0)
    {
      goto LABEL_296;
    }

    v161 = *(*v222 + 40);
LABEL_336:
    v161();
    goto LABEL_296;
  }

LABEL_18:
  v22 = *(v9 + 12);
  if (v22 > 4)
  {
    if (*(v9 + 12) > 6u)
    {
      if (v22 == 7)
      {
        if (v9 != a6)
        {
          if (*v9 == *a6)
          {
            v110 = **(v9 + 16);
            v111 = **(a6 + 2);
            if (v110 != v111)
            {
              goto LABEL_295;
            }

            v17 = WORD1(v110) == WORD1(v111);
            v112 = (v111 ^ v110) & 0xFFFFFF00000000;
            if (!v17 || v112 != 0)
            {
              goto LABEL_295;
            }
          }

          else if (!re::areSameTranslatedVersion(v9, a6, a3))
          {
            goto LABEL_295;
          }
        }

        if (a7)
        {
          if (v37)
          {
            v211 = 0;
            if (v211 < *(*(a6 + 2) + 96))
            {
              re::TypeInfo::unionMember(buf, a6, v211);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, "value", 0, 0, buf, buf, 1);
              }
            }

            goto LABEL_344;
          }
        }

        else if (v37)
        {
          re::TypeInfo::TypeInfo(buf, v9);
          Tag = re::UnionAccessor::readTag(buf, a4);
          v61 = Tag;
          re::UnionAccessor::reset(buf, a4, Tag, *(a1 + 48));
          if (v61 < *(*(v9 + 16) + 96))
          {
            re::TypeInfo::unionMember(&v211, v9, v61);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, "value", 0, a4, &v211, &v211, 0);
            }
          }

          goto LABEL_344;
        }

        goto LABEL_296;
      }

      if (v22 != 8)
      {
        if (v22 == 9)
        {
          v204 = re::TypeInfo::name(v9)[1];
          v23 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_228:
          v131 = a1;
          v132 = a2;
LABEL_264:
          goto LABEL_296;
        }

LABEL_78:
        v204 = *(v9 + 12);
        v23 = "Invalid type category. Value = %d";
        goto LABEL_228;
      }

      if (a7)
      {
        if (*(*(v9 + 16) + 49))
        {
          v73 = *(a1 + 272);
          Tag = 0x2686EB529B3EE220;
          v220 = "DynamicString";
          re::TypeRegistry::typeInfo(buf, v73, &Tag);
          re::TypeInfo::TypeInfo(&v211, &buf[8]);
          re::StringID::destroyString(&Tag);
          v43 = &v211;
          v44 = &v211;
          v41 = a1;
          v42 = a2;
          goto LABEL_131;
        }

        v39 = re::TypeInfo::name(v9);
        *buf = 0x134375A94D9F7110;
        *&buf[8] = "DynamicString";
        if (re::StringID::operator==(v39, buf))
        {
          v41 = a1;
          v42 = a2;
          v43 = v9;
          v44 = v9;
LABEL_131:
          goto LABEL_406;
        }

        v48 = *(v9 + 12) == 8;
      }

      else
      {
        v48 = 1;
      }

      v49 = *(v9 + 16);
      v50 = *(v49 + 48);
      if ((v50 & 0x10) == 0 && v48)
      {
        v51 = *(v49 + 168);
        if (v51)
        {
          v52 = *v9;
          v53 = *a6;
          *buf = &unk_1F5D180B8;
          *&buf[8] = a1;
          *&buf[16] = v52;
          v222 = v53;
          v223 = 0;
          v224 = 0;
          v225 = 1;
          v226 = 0;
          v227 = 0;
          v211 = a2;
          LODWORD(v212) = a3;
          v213 = 0;
          v214 = 0;
          v215 = 0;
          v51(buf, a4, v54);
          LOBYTE(v9) = *(a1 + 64) ^ 1;
          return v9 & 1;
        }
      }

      if ((v50 & 4) == 0)
      {
        {
          v55 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
          if (v55 && *(v55 + 22) == 3 && *v55 && (v56 = *(v55 + 8), (*(v56 + 46) & 0x40) != 0) && ((*(v56 + 22) & 0x1000) != 0 ? (v57 = *(v55 + 8)) : (v57 = *(v56 + 8)), !strcmp(v57, "@version")))
          {
            v58 = *(v56 + 24);
          }

          else
          {
            v58 = 1;
          }

          v59 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
          if (v59)
          {
            v60 = *(v59 + 16);
          }

          else
          {
            v60 = -1;
          }

          if (v58 == v60)
          {
LABEL_344:
            if (*(a1 + 64))
            {
              goto LABEL_296;
            }

            v162 = *(a1 + 152) + 48 * *(a1 + 136);
            ++*(v162 - 16);
LABEL_406:
            LOBYTE(v9) = *(a1 + 64) ^ 1;
            return v9 & 1;
          }

          if (*v9 == *a6 && (v163 = **(v9 + 16), v164 = **(a6 + 2), v163 == v164) && WORD1(v163) == WORD1(v164) && ((v164 ^ v163) & 0xFFFFFF00000000) == 0)
          {
            re::TypeInfo::atVersion(&v211, v9, v58);
            if (v211)
            {
              if (a7)
              {
                v197 = 0;
              }

              else
              {
                v197 = re::TypeInfo::createInstance(&v212, *(a1 + 48), *(a1 + 264));
              }

              v202 = *(a1 + 64);
              if (v202 == 1)
              {
                if (v197)
                {
                  re::TypeInfo::releaseInstance(&v212, v197, *(a1 + 48), *(a1 + 264));
                }
              }

              else if ((a7 & 1) == 0)
              {
                re::TypeInfo::TypeInfo(&Tag, &v212);
                re::internal::upgradeObject(v197, &Tag, a4, v9, *(a1 + 48), *(a1 + 264), buf);
                if ((buf[0] & 1) == 0)
                {
                  v203 = (v223 & 1) != 0 ? v224 : &v223 + 1;
                  if (buf[0] & 1) == 0 && v222 && (v223)
                  {
                    (*(*v222 + 40))();
                  }
                }
              }

              LOBYTE(v9) = v202 ^ 1;
              return v9 & 1;
            }

            v204 = re::TypeInfo::name(v9)[1];
            v205 = v58;
            v23 = "Unknown serialized type %s version %u. No matching runtime type found.";
          }

          else
          {
            v165 = re::TypeInfo::name(a6)[1];
            v166 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
            if (v166)
            {
              v167 = *(v166 + 16);
            }

            else
            {
              v167 = 0xFFFFFFFFLL;
            }

            v205 = v167;
            v206 = v58;
            v204 = v165;
            v23 = "Type %s version %u expected in JSON. Actual version found in JSON: %u";
          }

LABEL_263:
          v131 = a1;
          v132 = 0;
          goto LABEL_264;
        }

LABEL_296:
        LOBYTE(v9) = 0;
        return v9 & 1;
      }

      re::TypeMemberCollection::TypeMemberCollection(buf, *v9, v49);
      re::TypeMemberCollection::operator[](buf, 0, &v211);
      v125 = *(v213 + 24);
      re::TypeMemberInfo::memberType(&Tag, &v211);
      if (re::areSameVersion(v9, a6, v126))
      {
        if (*(a1 + 64))
        {
          goto LABEL_296;
        }

        v28 = (*(*a1 + 72))(a1, a2, a3, &a4[v125], &Tag, &Tag, a7);
LABEL_426:
        LOBYTE(v9) = v28;
        return v9 & 1;
      }

      v155 = *(a6 + 2);
      if (*(v155 + 96) == 1)
      {
        re::TypeMemberCollection::TypeMemberCollection(buf, *a6, v155);
        re::TypeMemberCollection::operator[](buf, 0, v216);
        re::TypeMemberInfo::memberType(v217, v216);
        if (*(a1 + 64))
        {
          goto LABEL_296;
        }

        v28 = (*(*a1 + 72))(a1, a2, a3, &a4[v125], &Tag, v217, a7);
        goto LABEL_426;
      }

LABEL_295:
      goto LABEL_296;
    }

    if (v22 != 5)
    {
      if (v22 != 6)
      {
        goto LABEL_78;
      }

      re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v211, &buf[8]);
      v26 = re::TypeInfo::name(&v211);
      v27 = BYTE4(v212);
      if (BYTE4(v212) == 1)
      {
        if (re::TypeInfo::isInteger(&v211))
        {
          *buf = 0x303EE88E58DLL;
          *&buf[8] = "uint64_t";
          if (re::StringID::operator==(v26, buf))
          {
            goto LABEL_426;
          }

          Tag = 3393056694;
          v220 = "size_t";
          v133 = re::StringID::operator==(v26, &Tag);
          if (v133)
          {
            goto LABEL_425;
          }

          *buf = 0x303EE8780EELL;
          *&buf[8] = "uint32_t";
          v134 = re::StringID::operator==(v26, buf);
          if (v134)
          {
            goto LABEL_425;
          }

          *buf = 0x303EE86A734;
          *&buf[8] = "uint16_t";
          v135 = re::StringID::operator==(v26, buf);
          if (v135)
          {
            goto LABEL_425;
          }

          *buf = 0x18E6A9A093;
          *&buf[8] = "uint8_t";
          v136 = re::StringID::operator==(v26, buf);
          if (v136)
          {
            goto LABEL_425;
          }

          *buf = 0x16749F63A2;
          *&buf[8] = "int64_t";
          if (re::StringID::operator==(v26, buf))
          {
            goto LABEL_426;
          }

          Tag = 3327612;
          v220 = "long";
          v199 = re::StringID::operator==(v26, &Tag);
          {
LABEL_425:
            v28 = v70(a1, a2, a3, a4, v9, a6, a7);
            goto LABEL_426;
          }

LABEL_126:
          if (v9 != a6)
          {
            if (*v9 == *a6)
            {
              v140 = **(v9 + 16);
              v141 = **(a6 + 2);
              if (v140 == v141 && WORD1(v140) == WORD1(v141) && ((v141 ^ v140) & 0xFFFFFF00000000) == 0)
              {
                goto LABEL_254;
              }
            }

            else if (re::areSameTranslatedVersion(v9, a6, v25))
            {
              goto LABEL_254;
            }

            if (*(v9 + 12) != *(a6 + 12))
            {
              goto LABEL_295;
            }
          }

LABEL_254:
          if (a7)
          {
            v142 = *(a1 + 272);
            re::TypeInfo::referencedType(a6, &v211);
            re::internal::translateType(buf, v142, &v211);
            v143 = *(a1 + 272);
            re::TypeInfo::dictionaryValueType(a6, &Tag);
            re::internal::translateType(&v211, v143, &Tag);
            v144 = (*(*a1 + 80))(a1, buf);
            if (v144)
            {
              v145 = v144;
              v9 = (*(*a1 + 80))(a1, &v211);
              if (v9)
              {
                Tag = 0;
                {
                  goto LABEL_296;
                }

                for (i = Tag; i; --i)
                {
                  v145(a1, "key", 0, 0, buf, buf, 1);
                  (v9)(a1, "value", 0, 0, &v211, &v211, 1);
                }

LABEL_273:
                goto LABEL_406;
              }

LABEL_274:
              v154 = re::TypeInfo::name(&v211);
              return v9 & 1;
            }

            goto LABEL_261;
          }

          re::TypeInfo::referencedType(v9, &v211);
          re::TypeInfo::dictionaryValueType(v9, &Tag);
          re::TypeInfo::referencedType(a6, v217);
          re::TypeInfo::dictionaryValueType(a6, v216);
          re::TypeInfo::TypeInfo(v209, v9);
          v9 = (*(*a1 + 80))(a1, &v211);
          if (!v9)
          {
            goto LABEL_274;
          }

          v147 = (*(*a1 + 80))(a1, &Tag);
          if (!v147)
          {
            p_Tag = &Tag;
            goto LABEL_262;
          }

          v148 = v147;
          v208 = (*(v210 + 96))(a4);
          {
            goto LABEL_296;
          }

          v149 = *(a1 + 48);
          v150 = *(v210 + 104);
          re::TypeInfo::TypeInfo(buf, v209);
          v150(a4, buf, v149);
          v151 = v208;
          if (!v208)
          {
            goto LABEL_273;
          }

          v152 = re::TypeInfo::createInstance(&v211, *(a1 + 48), *(a1 + 264));
          while (1)
          {
            (v9)(a1, "key", 0, v152, &v211, v217, 0);
            v127 = *(a1 + 48);
            if (*(a1 + 64) == 1)
            {
              break;
            }

            v153 = (*(v210 + 112))(a4, v209, v127, v152);
            v148(a1, "value", 0, v153, &Tag, v216, 0);
            if (!--v151)
            {
              re::TypeInfo::releaseInstance(&v211, v152, *(a1 + 48), *(a1 + 264));
              goto LABEL_273;
            }
          }

          v128 = *(a1 + 264);
          v129 = &v211;
          v130 = v152;
LABEL_215:
          re::TypeInfo::releaseInstance(v129, v130, v127, v128);
          goto LABEL_296;
        }

        v27 = BYTE4(v212);
      }

      if (v27 == 8)
      {
        if (*v26 >> 1 == 0x134375A94D9F7110)
        {
          v69 = v26[1];
          if (v69 == "DynamicString")
          {
            goto LABEL_425;
          }

          v71 = strcmp(v69, "DynamicString");
          if (!v71)
          {
            goto LABEL_425;
          }
        }

        *buf = 0x22C6ED80D0CLL;
        *&buf[8] = "StringID";
        v72 = re::StringID::operator==(v26, buf);
        if (v72)
        {
          goto LABEL_425;
        }
      }

      goto LABEL_126;
    }

    if (v9 != a6)
    {
      if (*v9 == *a6)
      {
        v114 = **(v9 + 16);
        v115 = **(a6 + 2);
        if (v114 == v115 && WORD1(v114) == WORD1(v115) && ((v115 ^ v114) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_192;
        }

        v38 = 5;
      }

      else
      {
        if (re::areSameTranslatedVersion(v9, a6, a3))
        {
          goto LABEL_192;
        }

        v38 = *(v9 + 12);
      }

      if (v38 != *(a6 + 12))
      {
        goto LABEL_295;
      }
    }

LABEL_192:
    if (a7)
    {
      v116 = *(a1 + 272);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::internal::translateType(&v211, v116, &Tag);
      v117 = (*(*a1 + 80))(a1, &v211);
      if (v117)
      {
        v118 = v117;
        *buf = 0;
        LOBYTE(v9) = 0;
        {
          return v9 & 1;
        }

        for (j = *buf; j; --j)
        {
          v118(a1, 0, 0, 0, &v211, &v211, 1);
        }

LABEL_405:
        goto LABEL_406;
      }

LABEL_204:
      p_Tag = &v211;
LABEL_262:
      v204 = re::TypeInfo::name(p_Tag)[1];
      v23 = "Failed to resolve serialize function for type %s";
      goto LABEL_263;
    }

    re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
    re::TypeInfo::TypeInfo(&v211, &buf[8]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
    re::TypeInfo::TypeInfo(&Tag, &buf[8]);
    re::TypeInfo::TypeInfo(v217, v9);
    v120 = (*(*a1 + 80))(a1, &v211);
    if (!v120)
    {
      goto LABEL_204;
    }

    v121 = v120;
    v122 = (*(v218 + 88))(a4);
    v216[0] = v122;
    LOBYTE(v9) = 0;
    {
      return v9 & 1;
    }

    v123 = v216[0];
    if (v122 != v216[0])
    {
      re::TypeInfo::referencedType(v217, buf);
      v99 = *(*&buf[16] + 8);
      if (!is_mul_ok(v99, v123))
      {
        v205 = v123;
        goto LABEL_203;
      }

      v168 = *(a1 + 48);
      v169 = *(v218 + 96);
      re::TypeInfo::TypeInfo(buf, v217);
      v169(a4, buf, v168, v123);
    }

    if (*(v218 + 104))
    {
      if (v123)
      {
        for (k = 0; k != v123; ++k)
        {
          v171 = (*(v218 + 104))(a4, k);
          v121(a1, 0, 0, v171, &v211, &Tag, 0);
        }
      }
    }

    else
    {
      v172 = *(v218 + 112);
      if (!v172 || !*(v218 + 120) || !*(v218 + 128))
      {
        re::TypeInfo::TypeInfo(buf, v217);
        v204 = re::TypeInfo::name(buf)[1];
        v23 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_228;
      }

      v173 = v172(a4, *(a1 + 56));
      v174 = (*(v218 + 120))();
      if (v174)
      {
        v175 = v174;
        do
        {
          v121(a1, 0, 0, v175, &v211, &Tag, 0);
          v175 = (*(v218 + 120))(v173);
        }

        while (v175);
      }

      (*(v218 + 128))(v173, *(a1 + 56));
    }

    goto LABEL_405;
  }

  if (*(v9 + 12) > 2u)
  {
    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_78;
      }

      if (v9 != a6)
      {
        if (*v9 == *a6)
        {
          v79 = **(v9 + 16);
          v80 = **(a6 + 2);
          if (v79 == v80)
          {
            v17 = WORD1(v79) == WORD1(v80);
            v81 = (v80 ^ v79) & 0xFFFFFF00000000;
            if (v17 && v81 == 0)
            {
              goto LABEL_148;
            }
          }
        }

        else if (re::areSameTranslatedVersion(v9, a6, a3))
        {
          goto LABEL_148;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_295;
        }

        v83 = *(v9 + 16);
        v84 = *(a6 + 2);
        v85 = *(v84 + 92) & 0xFFFFFF;
        if ((*(v83 + 92) & 0xFFFFFF) != 0)
        {
          if (!v85)
          {
            goto LABEL_295;
          }
        }

        else if (v85 || *(v83 + 96) != *(v84 + 96))
        {
          goto LABEL_295;
        }
      }

LABEL_148:
      if (a7)
      {
        v86 = *(a1 + 272);
        re::TypeInfo::referencedType(a6, &v211);
        re::internal::translateType(buf, v86, &v211);
        v87 = (*(*a1 + 80))(a1, buf);
        if (!v87)
        {
LABEL_261:
          p_Tag = buf;
          goto LABEL_262;
        }

        v88 = v87;
        v89 = *(a6 + 2);
        v90 = *(v89 + 92) & 0xFFFFFF;
        if (v90)
        {
          v91 = 0;
          v92 = 8;
        }

        else
        {
          v91 = *(v89 + 96);
          v92 = 4;
        }

        v211 = v91;
        {
          goto LABEL_296;
        }

        v156 = v211;
        if (v90)
        {
          v157 = v211 == 0;
        }

        else
        {
          v157 = 1;
        }

        v158 = v157;
        if (v157)
        {
          if (!v211)
          {
            goto LABEL_405;
          }
        }

        else
        {
          v216[0] = 0;
          v216[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v216);
        }

        do
        {
          v88(a1, 0, 0, 0, buf, buf, 1);
          --v156;
        }

        while (v156);
        if (v158)
        {
          goto LABEL_405;
        }
      }

      else
      {
        re::TypeInfo::referencedType(v9, &v211);
        re::TypeInfo::referencedType(a6, &Tag);
        re::TypeInfo::TypeInfo(v217, v9);
        v93 = (*(*a1 + 80))(a1, &v211);
        if (!v93)
        {
          goto LABEL_204;
        }

        v94 = v93;
        v95 = re::ArrayAccessor::size(v217, a4);
        v208 = v95;
        v96 = *(*(v9 + 16) + 92) & 0xFFFFFF;
        if (v96)
        {
          v97 = 8;
        }

        else
        {
          v97 = 4;
        }

        {
          goto LABEL_296;
        }

        v98 = v208;
        if (v95 != v208)
        {
          if ((*(v218 + 92) & 0xFFFFFF) == 0)
          {
            v204 = v95;
            v205 = v208;
            v23 = "Invalid array size. Expected size = %zu, actual size = %zu";
            goto LABEL_263;
          }

          re::TypeInfo::referencedType(v217, buf);
          v99 = *(*&buf[16] + 8);
          if (!is_mul_ok(v99, v98))
          {
            v205 = v98;
LABEL_203:
            v204 = v99;
            v23 = "Size overflow during deserialization. Element size = %zu, count = %zu";
            goto LABEL_263;
          }

          re::ArrayAccessor::reset(v217, a4, *(a1 + 48), v98);
        }

        if (v96)
        {
          v186 = v98 == 0;
        }

        else
        {
          v186 = 1;
        }

        v187 = v186;
        if (v186)
        {
          if (!v98)
          {
            goto LABEL_405;
          }
        }

        else
        {
          v188 = *a4;
          v209[0] = 0;
          v209[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v188, v209);
        }

        v189 = 0;
        do
        {
          v190 = re::ArrayAccessor::elementAt(v217, a4, v189);
          v94(a1, 0, 0, v190, &v211, &Tag, 0);
          ++v189;
        }

        while (v98 != v189);
        if (v187)
        {
          goto LABEL_405;
        }
      }

      (*(*a1 + 24))(a1);
      goto LABEL_405;
    }

    if (v9 != a6)
    {
      if (*v9 == *a6)
      {
        v104 = **(v9 + 16);
        v105 = **(a6 + 2);
        if (v104 == v105 && WORD1(v104) == WORD1(v105) && ((v105 ^ v104) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_173;
        }

        v36 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(v9, a6, a3))
        {
          goto LABEL_173;
        }

        v36 = *(v9 + 12);
      }

      if (v36 != *(a6 + 12))
      {
        goto LABEL_295;
      }
    }

LABEL_173:
    if (a7)
    {
      LOBYTE(Tag) = 0;
      if (Tag == 1)
      {
        v106 = *(a1 + 272);
        re::TypeInfo::referencedType(a6, &v211);
        re::internal::translateType(buf, v106, &v211);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, 0, buf, buf, 1);
        }
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v211, &buf[8]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::TypeInfo::TypeInfo(buf, v9);
      LOBYTE(v217[0]) = (*(*&buf[16] + 88))(a4) != 0;
      if (v217[0])
      {
        v108 = re::TypeInfo::createInstance(&v211, *(a1 + 48), *(a1 + 264));
        (*(*&buf[16] + 96))(a4, v108);
        re::TypeInfo::releaseInstance(&v211, v108, *(a1 + 48), *(a1 + 264));
        v109 = (*(*&buf[16] + 88))(a4);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v109, &v211, &Tag, 0);
        }
      }

      else
      {
        (*(*&buf[16] + 96))(a4, 0, v107);
      }
    }

    goto LABEL_406;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      goto LABEL_78;
    }

    if (v9 == a6)
    {
      goto LABEL_240;
    }

    if (*v9 == *a6)
    {
      v74 = **(v9 + 16);
      v75 = **(a6 + 2);
      if (v74 == v75 && WORD1(v74) == WORD1(v75) && ((v75 ^ v74) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_138;
      }

      v24 = 2;
    }

    else
    {
      if (re::areSameTranslatedVersion(v9, a6, a3))
      {
        goto LABEL_138;
      }

      v24 = *(v9 + 12);
    }

    if (v24 != *(a6 + 12))
    {
      goto LABEL_295;
    }

    v76 = re::TypeInfo::name(v9);
    v77 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v76, v77))
    {
      goto LABEL_295;
    }

LABEL_138:
    if (*v9 != *a6)
    {
      v78 = re::areSameTranslatedVersion(v9, a6, a3);
      goto LABEL_241;
    }

    v137 = **(v9 + 16);
    v138 = **(a6 + 2);
    if (v137 != v138 || WORD1(v137) != WORD1(v138) || ((v138 ^ v137) & 0xFFFFFF00000000) != 0)
    {
      v78 = 0;
      goto LABEL_241;
    }

LABEL_240:
    v78 = 1;
LABEL_241:
    if (a7)
    {
      *buf = 0;
      {
        if (*buf)
        {
        }

        goto LABEL_406;
      }

      goto LABEL_296;
    }

    Tag = 0;
    {
      goto LABEL_296;
    }

    v139 = Tag;
    if (!Tag)
    {
      v23 = "Failed to read enum constant. String is empty.";
      goto LABEL_263;
    }

    if (Tag >= 0x401)
    {
      v204 = Tag;
      v23 = "Failed to read enum constant. String is too long. Length: %zu";
      goto LABEL_263;
    }

    v159 = (*(**(a1 + 56) + 32))(*(a1 + 56), Tag + 1, 0);
    v159[v139] = 0;
    if (*(a1 + 64) == 1)
    {
      goto LABEL_335;
    }

    v176 = *v159;
    if (*v159)
    {
      v177 = v159[1];
      if (v177)
      {
        v178 = (v159 + 2);
        do
        {
          v176 = 31 * v176 + v177;
          v179 = *v178++;
          v177 = v179;
        }

        while (v179);
      }
    }

    *buf = 2 * v176;
    *&buf[8] = v159;
    EnumConstantIndex = re::internal::getEnumConstantIndex(a6, buf, v160);
    re::StringID::destroyString(buf);
    if ((EnumConstantIndex & 0x80000000) != 0)
    {
      v191 = *re::foundationSerializationLogObjects(v181);
      if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
      {
        v192 = v191;
        v193 = re::TypeInfo::name(a6)[1];
        *buf = 136315394;
        *&buf[4] = v159;
        *&buf[12] = 2080;
        *&buf[14] = v193;
        _os_log_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_INFO, "String %s is not a valid enum constant of type %s - skipping.", buf, 0x16u);
      }

      v194 = 0;
    }

    else if (v78)
    {
      *buf = re::TypeInfo::enumConstants(v9);
      *&buf[8] = v182;
      v183 = EnumConstantIndex - v182;
      if (EnumConstantIndex >= v182)
      {
        v211 = re::TypeInfo::renamedEnumConstants(v9);
        v212 = v198;
        v184 = re::Slice<re::EnumConstant>::operator[](&v211, v183);
      }

      else
      {
        v184 = re::Slice<re::EnumConstant>::operator[](buf, EnumConstantIndex);
      }

      v194 = v184;
    }

    else
    {
      v195 = *(*a6 + 856);
      if (!v195 || (v194 = re::internal::TypeTranslationTable::translateSerializedEnum(v195, a6, EnumConstantIndex, v9)) == 0)
      {
        v196 = re::TypeInfo::name(v9);
LABEL_335:
        v161 = *(**(a1 + 56) + 40);
        goto LABEL_336;
      }
    }

    (*(**(a1 + 56) + 40))(*(a1 + 56), v159);
    if (v194)
    {
      memcpy(a4, v194, *(*(v9 + 16) + 8));
    }

    goto LABEL_406;
  }

  if (v9 != a6)
  {
    if (*v9 == *a6)
    {
      v100 = **(v9 + 16);
      v101 = **(a6 + 2);
      if (v100 != v101)
      {
        goto LABEL_295;
      }

      v17 = WORD1(v100) == WORD1(v101);
      v102 = (v101 ^ v100) & 0xFFFFFF00000000;
      if (!v17 || v102 != 0)
      {
        goto LABEL_295;
      }
    }

    else if (!re::areSameTranslatedVersion(v9, a6, a3))
    {
      goto LABEL_295;
    }
  }

  v33 = re::TypeInfo::name(v9);
  v34 = *v33 >> 1;
  if (v34 > 0x16749DFF02)
  {
    if (*v33 >> 1 > 0x303EE88E58CLL)
    {
      if (*v33 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v34 == 0x2A8CEB1C43F60844)
        {
LABEL_325:
        }

        if (v34 != 0x3AFE951B1F1F3391)
        {
          if (v34 != 0x412A40E9CB79BA35)
          {
            goto LABEL_371;
          }

          goto LABEL_319;
        }

LABEL_322:
      }

      if (v34 == 0x303EE88E58DLL)
      {
        goto LABEL_319;
      }

      if (v34 != 0x2710786C3AC82DA1)
      {
        goto LABEL_371;
      }
    }

    else
    {
      if (*v33 >> 1 <= 0x18E6A9A092)
      {
        if (v34 != 0x16749DFF03)
        {
          if (v34 != 0x16749F63A2)
          {
            goto LABEL_371;
          }

LABEL_306:
        }

        goto LABEL_328;
      }

      if (v34 != 0x18E6A9A093)
      {
        if (v34 != 0x303EE86A734)
        {
          if (v34 != 0x303EE8780EELL)
          {
            goto LABEL_371;
          }

          goto LABEL_325;
        }

        goto LABEL_322;
      }
    }
  }

  if (*v33 >> 1 > 0x685847B)
  {
    if (*v33 >> 1 <= 0xB9708BDD)
    {
      if (v34 != 109413500)
      {
        if (v34 != 2969009105)
        {
          goto LABEL_371;
        }
      }

LABEL_331:
    }

    if (v34 == 3111160798)
    {
    }

    if (v34 != 3393056694)
    {
      if (v34 != 0x16749D2549)
      {
        goto LABEL_371;
      }

      goto LABEL_331;
    }

LABEL_319:
  }

  if (*v33 >> 1 <= 0x2E9355)
  {
    if (v34 != 104431)
    {
      if (v34 != 3029738)
      {
        goto LABEL_371;
      }
    }

LABEL_328:
  }

  if (v34 != 3052374)
  {
    if (v34 != 3327612)
    {
      if (v34 == 97526364)
      {
      }

LABEL_371:
      v204 = re::TypeInfo::name(v9)[1];
      v23 = "Unsupported basic type %s.";
      goto LABEL_228;
    }

    goto LABEL_306;
  }
}