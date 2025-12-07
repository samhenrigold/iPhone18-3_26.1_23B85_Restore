const InternalMetadata *google::protobuf::OneofOptions::ByteSizeLong(google::protobuf::OneofOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 12);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 7);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 16, v5);
  }

  else
  {
    *(this + 16) = v7;
    return v7;
  }
}

void google::protobuf::OneofOptions::MergeFrom(google::protobuf::OneofOptions *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::OneofOptions::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void google::protobuf::OneofOptions::CopyFrom(google::protobuf::OneofOptions *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::OneofOptions::Clear(this);

    google::protobuf::OneofOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::OneofOptions::CopyFrom(google::protobuf::OneofOptions *this, const google::protobuf::OneofOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::OneofOptions::Clear(this);

    google::protobuf::OneofOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::OneofOptions::InternalSwap(__n128 *this, __n128 *a2)
{
  google::protobuf::internal::ExtensionSet::Swap(&this[1], &a2[1]);
  sub_2769DF630(&this->n128_i64[1], &a2->n128_u64[1]);
  v4 = this[3].n128_u64[0];
  v5 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v4;
  a2[3].n128_u64[1] = v5;
  return result;
}

google::protobuf::EnumOptions *google::protobuf::EnumOptions::EnumOptions(google::protobuf::EnumOptions *this, Arena *a2)
{
  *this = &unk_2885C6D00;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 36) = 0;
  return this;
}

void sub_276B426FC(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::EnumOptions *google::protobuf::EnumOptions::EnumOptions(google::protobuf::EnumOptions *this, const google::protobuf::EnumOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6D00;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 36) = *(a2 + 36);
  return this;
}

void google::protobuf::EnumOptions::~EnumOptions(google::protobuf::EnumOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::EnumOptions::~EnumOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::EnumOptions::default_instance(google::protobuf::EnumOptions *this)
{
  if (atomic_load_explicit(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_EnumOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::EnumOptions::_InternalParse(google::protobuf::EnumOptions *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v36 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v36, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v36 + 1);
      LODWORD(v9) = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, v9);
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_56;
      }

      v8 = TagFallback;
LABEL_7:
      v10 = v9 >> 3;
      if (v9 >> 3 == 999)
      {
        if (v9 != 58)
        {
LABEL_13:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            a3[10].i32[0] = v9 - 1;
            goto LABEL_2;
          }

          v13 = v9;
          if (v9 >> 6 < 0x7D)
          {
            v30 = *(this + 1);
            if (v30)
            {
              v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v31 = sub_2769F617C(this + 1);
              v8 = v36;
            }

            v14 = google::protobuf::internal::UnknownFieldParse(v13, v31, v8, a3, v5);
          }

          else
          {
            v14 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_EnumOptions_default_instance_, this + 1, a3);
          }

          v36 = v14;
          if (!v14)
          {
LABEL_56:
            v36 = 0;
            goto LABEL_2;
          }

          goto LABEL_48;
        }

        v18 = (v8 - 2);
        while (2)
        {
          v19 = (v18 + 2);
          v36 = (v18 + 2);
          v20 = *(this + 8);
          if (!v20)
          {
            v21 = *(this + 15);
            goto LABEL_28;
          }

          v25 = *(this + 14);
          v21 = *v20;
          if (v25 >= *v20)
          {
            if (v21 == *(this + 15))
            {
LABEL_28:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v21 + 1);
              v20 = *(this + 8);
              v21 = *v20;
            }

            *v20 = v21 + 1;
            v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
            v23 = *(this + 14);
            v24 = *(this + 8) + 8 * v23;
            *(this + 14) = v23 + 1;
            *(v24 + 8) = v22;
            v19 = v36;
          }

          else
          {
            *(this + 14) = v25 + 1;
            v22 = *&v20[2 * v25 + 2];
          }

          v18 = sub_276BD7A4C(a3, v22, v19);
          v36 = v18;
          if (!v18)
          {
            goto LABEL_56;
          }

          if (*a3 <= v18 || *v18 != 16058)
          {
            goto LABEL_48;
          }

          continue;
        }
      }

      if (v10 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v16 = (v8 + 1);
        v15 = *v8;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_23:
          v36 = v16;
          *(this + 73) = v15 != 0;
          goto LABEL_48;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v36 = v32;
        *(this + 73) = v33 != 0;
        if (!v32)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v10 != 2 || v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 1u;
        v27 = (v8 + 1);
        v26 = *v8;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_41;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v8 + 2);
LABEL_41:
          v36 = v27;
          *(this + 72) = v26 != 0;
          goto LABEL_48;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v8, v26);
        v36 = v34;
        *(this + 72) = v35 != 0;
        if (!v34)
        {
          goto LABEL_56;
        }
      }

LABEL_48:
      if (sub_2769F6104(a3, &v36, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v36 + 2);
LABEL_6:
    v36 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v6;
  return v36;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumOptions::_InternalSerialize(google::protobuf::EnumOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, __n128 a4)
{
  v5 = a2;
  v7 = *(this + 10);
  if (v7)
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 72);
    *v5 = 16;
    v5[1] = v8;
    v5 += 2;
  }

  if ((v7 & 2) != 0)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v9 = *(this + 73);
    *v5 = 24;
    v5[1] = v9;
    v5 += 2;
  }

  v10 = *(this + 14);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v12 = *(*(this + 8) + 8 * i + 8);
      *v5 = 16058;
      v13 = *(v12 + 5);
      if (v13 > 0x7F)
      {
        v5[2] = v13 | 0x80;
        v15 = v13 >> 7;
        if (v13 >> 14)
        {
          v14 = v5 + 4;
          do
          {
            *(v14 - 1) = v15 | 0x80;
            v16 = v15 >> 7;
            ++v14;
            v17 = v15 >> 14;
            v15 >>= 7;
          }

          while (v17);
          *(v14 - 1) = v16;
        }

        else
        {
          v5[3] = v15;
          v14 = v5 + 4;
        }
      }

      else
      {
        v5[2] = v13;
        v14 = v5 + 3;
      }

      v5 = google::protobuf::UninterpretedOption::_InternalSerialize(v12, v14, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v5, a3, a4);
  v20 = *(this + 1);
  if (v20)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v19);
  }

  return result;
}

const InternalMetadata *google::protobuf::EnumOptions::ByteSizeLong(google::protobuf::EnumOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 8);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if ((*(this + 10) & 3) != 0)
  {
    v13 = (v7 + 2 * (*(this + 10) & 1) + (*(this + 10) & 2));
  }

  else
  {
    v13 = v7;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v13, this + 11, v5);
  }

  else
  {
    *(this + 11) = v13;
    return v13;
  }
}

void google::protobuf::EnumOptions::MergeFrom(google::protobuf::EnumOptions *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::EnumOptions::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void google::protobuf::EnumOptions::CopyFrom(google::protobuf::EnumOptions *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumOptions::Clear(this);

    google::protobuf::EnumOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::EnumOptions::CopyFrom(google::protobuf::EnumOptions *this, const google::protobuf::EnumOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumOptions::Clear(this);

    google::protobuf::EnumOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::EnumOptions::InternalSwap(google::protobuf::EnumOptions *this, google::protobuf::EnumOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  LOWORD(v5) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v5;
  return result;
}

google::protobuf::EnumValueOptions *google::protobuf::EnumValueOptions::EnumValueOptions(google::protobuf::EnumValueOptions *this, Arena *a2)
{
  *this = &unk_2885C6DB0;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 72) = 0;
  return this;
}

void sub_276B43124(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::EnumValueOptions *google::protobuf::EnumValueOptions::EnumValueOptions(google::protobuf::EnumValueOptions *this, const google::protobuf::EnumValueOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6DB0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 72) = *(a2 + 72);
  return this;
}

void google::protobuf::EnumValueOptions::~EnumValueOptions(google::protobuf::EnumValueOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::EnumValueOptions::~EnumValueOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::EnumValueOptions::default_instance(google::protobuf::EnumValueOptions *this)
{
  if (atomic_load_explicit(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_EnumValueOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::EnumValueOptions::_InternalParse(google::protobuf::EnumValueOptions *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v30, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      LODWORD(v9) = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, v9);
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_48;
      }

      v8 = TagFallback;
LABEL_7:
      if (v9 >> 3 == 999)
      {
        if (v9 != 58)
        {
LABEL_12:
          if (v9)
          {
            v11 = (v9 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            a3[10].i32[0] = v9 - 1;
            goto LABEL_2;
          }

          v12 = v9;
          if (v9 >> 6 < 0x7D)
          {
            v25 = *(this + 1);
            if (v25)
            {
              v26 = ((v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v26 = sub_2769F617C(this + 1);
              v8 = v30;
            }

            v13 = google::protobuf::internal::UnknownFieldParse(v12, v26, v8, a3, v5);
          }

          else
          {
            v13 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_EnumValueOptions_default_instance_, this + 1, a3);
          }

          v30 = v13;
          if (!v13)
          {
LABEL_48:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_40;
        }

        v14 = (v8 - 2);
        while (2)
        {
          v15 = (v14 + 2);
          v30 = (v14 + 2);
          v16 = *(this + 8);
          if (!v16)
          {
            v17 = *(this + 15);
            goto LABEL_22;
          }

          v21 = *(this + 14);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(this + 15))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v17 + 1);
              v16 = *(this + 8);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
            v19 = *(this + 14);
            v20 = *(this + 8) + 8 * v19;
            *(this + 14) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v30;
          }

          else
          {
            *(this + 14) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_276BD7A4C(a3, v18, v15);
          v30 = v14;
          if (!v14)
          {
            goto LABEL_48;
          }

          if (*a3 <= v14 || *v14 != 16058)
          {
            goto LABEL_40;
          }

          continue;
        }
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v23 = (v8 + 1);
      v22 = *v8;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = (v8 + 2);
LABEL_35:
        v30 = v23;
        *(this + 72) = v22 != 0;
        v6 = 1;
        goto LABEL_40;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v8, v22);
      v30 = v28;
      *(this + 72) = v29 != 0;
      v6 = 1;
      if (!v28)
      {
        goto LABEL_48;
      }

LABEL_40:
      if (sub_2769F6104(a3, &v30, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v30 + 2);
LABEL_6:
    v30 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v6;
  return v30;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumValueOptions::_InternalSerialize(google::protobuf::EnumValueOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, __n128 a4)
{
  v5 = a2;
  if (*(this + 40))
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 72);
    *v5 = 8;
    v5[1] = v7;
    v5 += 2;
  }

  v8 = *(this + 14);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v10 = *(*(this + 8) + 8 * i + 8);
      *v5 = 16058;
      v11 = *(v10 + 5);
      if (v11 > 0x7F)
      {
        v5[2] = v11 | 0x80;
        v13 = v11 >> 7;
        if (v11 >> 14)
        {
          v12 = v5 + 4;
          do
          {
            *(v12 - 1) = v13 | 0x80;
            v14 = v13 >> 7;
            ++v12;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
          *(v12 - 1) = v14;
        }

        else
        {
          v5[3] = v13;
          v12 = v5 + 4;
        }
      }

      else
      {
        v5[2] = v11;
        v12 = v5 + 3;
      }

      v5 = google::protobuf::UninterpretedOption::_InternalSerialize(v10, v12, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v5, a3, a4);
  v18 = *(this + 1);
  if (v18)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v17);
  }

  return result;
}

uint64_t google::protobuf::EnumValueOptions::ByteSizeLong(google::protobuf::EnumValueOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = v2 + 2 * v6;
  v8 = *(this + 8);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = 2 * (*(this + 10) & 1);
  v14 = (v7 + v13);
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v14, this + 11, v5);
  }

  else
  {
    *(this + 11) = v14;
    return v7 + v13;
  }
}

void google::protobuf::EnumValueOptions::MergeFrom(google::protobuf::EnumValueOptions *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::EnumValueOptions::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void google::protobuf::EnumValueOptions::CopyFrom(google::protobuf::EnumValueOptions *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueOptions::Clear(this);

    google::protobuf::EnumValueOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::EnumValueOptions::CopyFrom(google::protobuf::EnumValueOptions *this, const google::protobuf::EnumValueOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueOptions::Clear(this);

    google::protobuf::EnumValueOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::EnumValueOptions::InternalSwap(google::protobuf::EnumValueOptions *this, google::protobuf::EnumValueOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  LOBYTE(v5) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v5;
  return result;
}

google::protobuf::ServiceOptions *google::protobuf::ServiceOptions::ServiceOptions(google::protobuf::ServiceOptions *this, Arena *a2)
{
  *this = &unk_2885C6E60;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 72) = 0;
  return this;
}

void sub_276B43A94(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::ServiceOptions *google::protobuf::ServiceOptions::ServiceOptions(google::protobuf::ServiceOptions *this, const google::protobuf::ServiceOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6E60;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 72) = *(a2 + 72);
  return this;
}

void google::protobuf::ServiceOptions::~ServiceOptions(google::protobuf::ServiceOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::ServiceOptions::~ServiceOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::ServiceOptions::default_instance(google::protobuf::ServiceOptions *this)
{
  if (atomic_load_explicit(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_ServiceOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::ServiceOptions::_InternalParse(google::protobuf::ServiceOptions *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v30, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      LODWORD(v9) = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, v9);
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_48;
      }

      v8 = TagFallback;
LABEL_7:
      if (v9 >> 3 == 999)
      {
        if (v9 != 58)
        {
LABEL_12:
          if (v9)
          {
            v11 = (v9 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            a3[10].i32[0] = v9 - 1;
            goto LABEL_2;
          }

          v12 = v9;
          if (v9 >> 6 < 0x7D)
          {
            v25 = *(this + 1);
            if (v25)
            {
              v26 = ((v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v26 = sub_2769F617C(this + 1);
              v8 = v30;
            }

            v13 = google::protobuf::internal::UnknownFieldParse(v12, v26, v8, a3, v5);
          }

          else
          {
            v13 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_ServiceOptions_default_instance_, this + 1, a3);
          }

          v30 = v13;
          if (!v13)
          {
LABEL_48:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_40;
        }

        v14 = (v8 - 2);
        while (2)
        {
          v15 = (v14 + 2);
          v30 = (v14 + 2);
          v16 = *(this + 8);
          if (!v16)
          {
            v17 = *(this + 15);
            goto LABEL_22;
          }

          v21 = *(this + 14);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(this + 15))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v17 + 1);
              v16 = *(this + 8);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
            v19 = *(this + 14);
            v20 = *(this + 8) + 8 * v19;
            *(this + 14) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v30;
          }

          else
          {
            *(this + 14) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_276BD7A4C(a3, v18, v15);
          v30 = v14;
          if (!v14)
          {
            goto LABEL_48;
          }

          if (*a3 <= v14 || *v14 != 16058)
          {
            goto LABEL_40;
          }

          continue;
        }
      }

      if (v9 >> 3 != 33 || v9 != 8)
      {
        goto LABEL_12;
      }

      v23 = (v8 + 1);
      v22 = *v8;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = (v8 + 2);
LABEL_35:
        v30 = v23;
        *(this + 72) = v22 != 0;
        v6 = 1;
        goto LABEL_40;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v8, v22);
      v30 = v28;
      *(this + 72) = v29 != 0;
      v6 = 1;
      if (!v28)
      {
        goto LABEL_48;
      }

LABEL_40:
      if (sub_2769F6104(a3, &v30, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v30 + 2);
LABEL_6:
    v30 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v6;
  return v30;
}

const google::protobuf::UnknownFieldSet *google::protobuf::ServiceOptions::_InternalSerialize(google::protobuf::ServiceOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, __n128 a4)
{
  v5 = a2;
  if (*(this + 40))
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 72);
    *v5 = 648;
    v5[2] = v7;
    v5 += 3;
  }

  v8 = *(this + 14);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v10 = *(*(this + 8) + 8 * i + 8);
      *v5 = 16058;
      v11 = *(v10 + 5);
      if (v11 > 0x7F)
      {
        v5[2] = v11 | 0x80;
        v13 = v11 >> 7;
        if (v11 >> 14)
        {
          v12 = v5 + 4;
          do
          {
            *(v12 - 1) = v13 | 0x80;
            v14 = v13 >> 7;
            ++v12;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
          *(v12 - 1) = v14;
        }

        else
        {
          v5[3] = v13;
          v12 = v5 + 4;
        }
      }

      else
      {
        v5[2] = v11;
        v12 = v5 + 3;
      }

      v5 = google::protobuf::UninterpretedOption::_InternalSerialize(v10, v12, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v5, a3, a4);
  v18 = *(this + 1);
  if (v18)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v17);
  }

  return result;
}

const InternalMetadata *google::protobuf::ServiceOptions::ByteSizeLong(google::protobuf::ServiceOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = v2 + 2 * v6;
  v8 = *(this + 8);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  if (*(this + 40))
  {
    v13 = (v7 + 3);
  }

  else
  {
    v13 = v7;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v13, this + 11, v5);
  }

  else
  {
    *(this + 11) = v13;
    return v13;
  }
}

void google::protobuf::ServiceOptions::MergeFrom(google::protobuf::ServiceOptions *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::ServiceOptions::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void google::protobuf::ServiceOptions::CopyFrom(google::protobuf::ServiceOptions *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::ServiceOptions::Clear(this);

    google::protobuf::ServiceOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::ServiceOptions::CopyFrom(google::protobuf::ServiceOptions *this, const google::protobuf::ServiceOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::ServiceOptions::Clear(this);

    google::protobuf::ServiceOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::ServiceOptions::InternalSwap(google::protobuf::ServiceOptions *this, google::protobuf::ServiceOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  LOBYTE(v5) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v5;
  return result;
}

google::protobuf::MethodOptions *google::protobuf::MethodOptions::MethodOptions(google::protobuf::MethodOptions *this, Arena *a2)
{
  *this = &unk_2885C6F10;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 9) = 0;
  return this;
}

void sub_276B44408(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::MethodOptions *google::protobuf::MethodOptions::MethodOptions(google::protobuf::MethodOptions *this, const google::protobuf::MethodOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6F10;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 9) = *(a2 + 9);
  return this;
}

void google::protobuf::MethodOptions::~MethodOptions(google::protobuf::MethodOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::MethodOptions::~MethodOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::MethodOptions::default_instance(google::protobuf::MethodOptions *this)
{
  if (atomic_load_explicit(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_MethodOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::MethodOptions::_InternalParse(google::protobuf::MethodOptions *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v34 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v34, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v34 + 1);
      LODWORD(v9) = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, v9);
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_59;
      }

      v8 = TagFallback;
LABEL_7:
      v10 = v9 >> 3;
      if (v9 >> 3 == 999)
      {
        if (v9 != 58)
        {
          goto LABEL_13;
        }

        v18 = (v8 - 2);
        while (2)
        {
          v19 = (v18 + 2);
          v34 = (v18 + 2);
          v20 = *(this + 8);
          if (!v20)
          {
            v21 = *(this + 15);
            goto LABEL_30;
          }

          v25 = *(this + 14);
          v21 = *v20;
          if (v25 >= *v20)
          {
            if (v21 == *(this + 15))
            {
LABEL_30:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v21 + 1);
              v20 = *(this + 8);
              v21 = *v20;
            }

            *v20 = v21 + 1;
            v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
            v23 = *(this + 14);
            v24 = *(this + 8) + 8 * v23;
            *(this + 14) = v23 + 1;
            *(v24 + 8) = v22;
            v19 = v34;
          }

          else
          {
            *(this + 14) = v25 + 1;
            v22 = *&v20[2 * v25 + 2];
          }

          v18 = sub_276BD7A4C(a3, v22, v19);
          v34 = v18;
          if (!v18)
          {
            goto LABEL_59;
          }

          if (*a3 <= v18 || *v18 != 16058)
          {
            goto LABEL_50;
          }

          continue;
        }
      }

      if (v10 == 34)
      {
        if (v9 == 16)
        {
          v16 = (v8 + 1);
          v15 = *v8;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v34 = google::protobuf::internal::VarintParseSlow64(v8, v15);
            if (!v34)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v16 = (v8 + 2);
LABEL_23:
            v34 = v16;
          }

          if (v15 > 2)
          {
            sub_276BD8518();
          }

          else
          {
            *(this + 10) |= 2u;
            *(this + 19) = v15;
          }

          goto LABEL_50;
        }

LABEL_13:
        if (v9)
        {
          v12 = (v9 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          *(a3 + 20) = v9 - 1;
          goto LABEL_2;
        }

        v13 = v9;
        if (v9 >> 6 < 0x7D)
        {
          v30 = *(this + 1);
          if (v30)
          {
            v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v31 = sub_2769F617C(this + 1);
            v8 = v34;
          }

          v14 = google::protobuf::internal::UnknownFieldParse(v13, v31, v8, a3, v5);
        }

        else
        {
          v14 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_MethodOptions_default_instance_, this + 1, a3);
        }

        v34 = v14;
        if (!v14)
        {
LABEL_59:
          v34 = 0;
          goto LABEL_2;
        }

        goto LABEL_50;
      }

      if (v10 != 33 || v9 != 8)
      {
        goto LABEL_13;
      }

      v27 = (v8 + 1);
      v26 = *v8;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = (v8 + 2);
LABEL_43:
        v34 = v27;
        *(this + 72) = v26 != 0;
        v6 = 1;
        goto LABEL_50;
      }

      v32 = google::protobuf::internal::VarintParseSlow64(v8, v26);
      v34 = v32;
      *(this + 72) = v33 != 0;
      v6 = 1;
      if (!v32)
      {
        goto LABEL_59;
      }

LABEL_50:
      if (sub_2769F6104(a3, &v34, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v34 + 2);
LABEL_6:
    v34 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v6;
  return v34;
}

const google::protobuf::UnknownFieldSet *google::protobuf::MethodOptions::_InternalSerialize(google::protobuf::MethodOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, __n128 a4)
{
  v5 = a2;
  v7 = *(this + 10);
  if (v7)
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 72);
    *v5 = 648;
    v5[2] = v8;
    v5 += 3;
  }

  if ((v7 & 2) != 0)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v9 = *(this + 19);
    *v5 = 656;
    if (v9 > 0x7F)
    {
      v5[2] = v9 | 0x80;
      v10 = v9 >> 7;
      if (v9 >> 14)
      {
        v5 += 4;
        do
        {
          *(v5 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v5;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v5 - 1) = v11;
      }

      else
      {
        v5[3] = v10;
        v5 += 4;
      }
    }

    else
    {
      v5[2] = v9;
      v5 += 3;
    }
  }

  v13 = *(this + 14);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v15 = *(*(this + 8) + 8 * i + 8);
      *v5 = 16058;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        v5[2] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = v5 + 4;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          v5[3] = v18;
          v17 = v5 + 4;
        }
      }

      else
      {
        v5[2] = v16;
        v17 = v5 + 3;
      }

      v5 = google::protobuf::UninterpretedOption::_InternalSerialize(v15, v17, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v5, a3, a4);
  v23 = *(this + 1);
  if (v23)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v23 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v22);
  }

  return result;
}

const InternalMetadata *google::protobuf::MethodOptions::ByteSizeLong(google::protobuf::MethodOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 8);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(this + 10);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v7 = (v7 + 3);
    }

    if ((v13 & 2) != 0)
    {
      v14 = *(this + 19);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 12;
      }

      v7 = (v7 + v16);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 11, v5);
  }

  else
  {
    *(this + 11) = v7;
    return v7;
  }
}

void google::protobuf::MethodOptions::MergeFrom(google::protobuf::MethodOptions *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::MethodOptions::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void google::protobuf::MethodOptions::CopyFrom(google::protobuf::MethodOptions *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::MethodOptions::Clear(this);

    google::protobuf::MethodOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::MethodOptions::CopyFrom(google::protobuf::MethodOptions *this, const google::protobuf::MethodOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::MethodOptions::Clear(this);

    google::protobuf::MethodOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::MethodOptions::InternalSwap(google::protobuf::MethodOptions *this, google::protobuf::MethodOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  return result;
}

google::protobuf::UninterpretedOption_NamePart *google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(google::protobuf::UninterpretedOption_NamePart *this, Arena *a2)
{
  *this = &unk_2885C6FC0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 32) = 0;
  return this;
}

google::protobuf::UninterpretedOption_NamePart *google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(google::protobuf::UninterpretedOption_NamePart *this, const google::protobuf::UninterpretedOption_NamePart *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C6FC0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(this + 1, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  *(this + 32) = *(a2 + 32);
  return this;
}

void google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(google::protobuf::UninterpretedOption_NamePart *this)
{
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
}

{
  google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::UninterpretedOption_NamePart::default_instance(google::protobuf::UninterpretedOption_NamePart *this)
{
  if (atomic_load_explicit(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_UninterpretedOption_NamePart_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption_NamePart::Clear(google::protobuf::UninterpretedOption_NamePart *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 24) = 0;
  *(result + 2) = 0;
  if (v3)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *google::protobuf::UninterpretedOption_NamePart::_InternalParse(google::protobuf::UninterpretedOption_NamePart *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v25 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v25, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v25 + 1);
      v9 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v10 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_36;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 != 2)
      {
        if (v9 >> 3 == 1 && v9 == 10)
        {
          *(this + 4) |= 1u;
          v19 = *(this + 1);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 3, v19);
          v15 = google::protobuf::internal::InlineGreedyStringParser(v20, v25, a3);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
            v8 = v25;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
        }

        v25 = v15;
        if (!v15)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      if (v9 != 16)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v17 = (v8 + 1);
      v16 = *v8;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v8 + 2);
LABEL_23:
        v25 = v17;
        *(this + 32) = v16 != 0;
        goto LABEL_28;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v8, v16);
      v25 = v23;
      *(this + 32) = v24 != 0;
      if (!v23)
      {
LABEL_36:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_28:
      if (sub_2769F6104(a3, &v25, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v25 + 2);
LABEL_6:
    v25 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v25;
}

const google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption_NamePart::_InternalSerialize(google::protobuf::UninterpretedOption_NamePart *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 32);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t google::protobuf::UninterpretedOption_NamePart::RequiredFieldsByteSizeFallback(google::protobuf::UninterpretedOption_NamePart *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 + (v1 & 2);
}

const InternalMetadata *google::protobuf::UninterpretedOption_NamePart::ByteSizeLong(google::protobuf::UninterpretedOption_NamePart *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = google::protobuf::UninterpretedOption_NamePart::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v8 = (v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 3);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v8, this + 5, a4);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

void google::protobuf::UninterpretedOption_NamePart::MergeFrom(google::protobuf::UninterpretedOption_NamePart *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::UninterpretedOption_NamePart::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void *google::protobuf::UninterpretedOption_NamePart::MergeFrom(void *this, const google::protobuf::UninterpretedOption_NamePart *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 4) |= 1u;
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 3, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 4) |= v5;
  }

  return this;
}

void google::protobuf::UninterpretedOption_NamePart::CopyFrom(google::protobuf::UninterpretedOption_NamePart *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::UninterpretedOption_NamePart::Clear(this);

    google::protobuf::UninterpretedOption_NamePart::MergeFrom(this, a2);
  }
}

google::protobuf::UninterpretedOption_NamePart *google::protobuf::UninterpretedOption_NamePart::CopyFrom(google::protobuf::UninterpretedOption_NamePart *this, const google::protobuf::UninterpretedOption_NamePart *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::UninterpretedOption_NamePart::Clear(this);

    return google::protobuf::UninterpretedOption_NamePart::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *google::protobuf::UninterpretedOption_NamePart::InternalSwap(google::protobuf::UninterpretedOption_NamePart *this, google::protobuf::UninterpretedOption_NamePart *a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

google::protobuf::UninterpretedOption *google::protobuf::UninterpretedOption::UninterpretedOption(google::protobuf::UninterpretedOption *this, Arena *a2)
{
  *this = &unk_2885C7070;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return this;
}

google::protobuf::UninterpretedOption *google::protobuf::UninterpretedOption::UninterpretedOption(google::protobuf::UninterpretedOption *this, const google::protobuf::UninterpretedOption *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C7070;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276B4B47C(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  v11 = *(a2 + 4);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 6, (*(a2 + 6) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 4);
  }

  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 7, (*(a2 + 7) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 4);
  }

  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 4) != 0)
  {
    v14 = *v4;
    if (*v4)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 8, (*(a2 + 8) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

  v15 = *(a2 + 72);
  *(this + 11) = *(a2 + 11);
  *(this + 72) = v15;
  return this;
}

void google::protobuf::UninterpretedOption::~UninterpretedOption(google::protobuf::UninterpretedOption *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(this + 7);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  v4 = *(this + 8);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C9F670](v4, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
  sub_276B4B3F8(this + 3);
}

{
  google::protobuf::UninterpretedOption::~UninterpretedOption(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::UninterpretedOption::default_instance(google::protobuf::UninterpretedOption *this)
{
  if (atomic_load_explicit(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_UninterpretedOption_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = google::protobuf::UninterpretedOption_NamePart::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if ((v5 & 7) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v7 = *(v1 + 7) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v6 = *(v1 + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v8 = *(v1 + 8) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

LABEL_21:
  if ((v5 & 0x38) != 0)
  {
    *(v1 + 9) = 0;
    *(v1 + 10) = 0;
    *(v1 + 11) = 0;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 2) = 0;
  if (v10)
  {

    return sub_2769F6424(v9);
  }

  return this;
}

google::protobuf::internal *google::protobuf::UninterpretedOption::_InternalParse(google::protobuf::UninterpretedOption *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v39 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v39, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v39 + 1);
      v9 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v10 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_73;
      }

      v8 = TagFallback;
      v9 = v18;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 4)
      {
        if (v11 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_57;
          }

          v19 = (v8 - 1);
          while (2)
          {
            v20 = (v19 + 1);
            v39 = (v19 + 1);
            v21 = *(this + 5);
            if (!v21)
            {
              v22 = *(this + 9);
              goto LABEL_33;
            }

            v26 = *(this + 8);
            v22 = *v21;
            if (v26 >= *v21)
            {
              if (v22 == *(this + 9))
              {
LABEL_33:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v22 + 1);
                v21 = *(this + 5);
                v22 = *v21;
              }

              *v21 = v22 + 1;
              v23 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption_NamePart>(*(this + 3));
              v24 = *(this + 8);
              v25 = *(this + 5) + 8 * v24;
              *(this + 8) = v24 + 1;
              *(v25 + 8) = v23;
              v20 = v39;
            }

            else
            {
              *(this + 8) = v26 + 1;
              v23 = *&v21[2 * v26 + 2];
            }

            v19 = sub_276BD826C(a3, v23, v20);
            v39 = v19;
            if (!v19)
            {
              goto LABEL_73;
            }

            if (*a3 <= v19 || *v19 != 18)
            {
              goto LABEL_65;
            }

            continue;
          }
        }

        if (v11 == 3)
        {
          if (v9 == 26)
          {
            *(this + 4) |= 1u;
            v15 = *(this + 1);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = (this + 48);
LABEL_56:
            v30 = google::protobuf::internal::ArenaStringPtr::Mutable(v16, v15);
            v31 = google::protobuf::internal::InlineGreedyStringParser(v30, v39, a3);
LABEL_64:
            v39 = v31;
            if (!v31)
            {
              goto LABEL_73;
            }

            goto LABEL_65;
          }

LABEL_57:
          if (v9)
          {
            v32 = (v9 & 7) == 4;
          }

          else
          {
            v32 = 1;
          }

          if (v32)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v33 = *(this + 1);
          if (v33)
          {
            v34 = ((v33 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v34 = sub_2769F617C(this + 1);
            v8 = v39;
          }

          v31 = google::protobuf::internal::UnknownFieldParse(v9, v34, v8, a3, v5);
          goto LABEL_64;
        }

        if (v11 != 4 || v9 != 32)
        {
          goto LABEL_57;
        }

        v6 |= 8u;
        v13 = (v8 + 1);
        v12 = *v8;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v8 + 2);
LABEL_20:
          v39 = v13;
          *(this + 9) = v12;
          goto LABEL_65;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v8, v12);
        v39 = v37;
        *(this + 9) = v38;
        if (!v37)
        {
LABEL_73:
          v39 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v9 >> 3 > 6)
        {
          if (v11 == 7)
          {
            if (v9 == 58)
            {
              *(this + 4) |= 2u;
              v15 = *(this + 1);
              if (v15)
              {
                v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
              }

              v16 = (this + 56);
              goto LABEL_56;
            }
          }

          else if (v11 == 8 && v9 == 66)
          {
            *(this + 4) |= 4u;
            v15 = *(this + 1);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = (this + 64);
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        if (v11 == 5)
        {
          if (v9 != 40)
          {
            goto LABEL_57;
          }

          v6 |= 0x10u;
          v28 = (v8 + 1);
          v27 = *v8;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_47;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if ((v29 & 0x80000000) == 0)
          {
            v28 = (v8 + 2);
LABEL_47:
            v39 = v28;
            *(this + 10) = v27;
            goto LABEL_65;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v8, v27);
          v39 = v35;
          *(this + 10) = v36;
          if (!v35)
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v11 != 6 || v9 != 49)
          {
            goto LABEL_57;
          }

          v6 |= 0x20u;
          *(this + 11) = *v8;
          v39 = (v8 + 8);
        }
      }

LABEL_65:
      if (sub_2769F6104(a3, &v39, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v39 + 2);
LABEL_6:
    v39 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v39;
}

const google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::_InternalSerialize(google::protobuf::UninterpretedOption *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = google::protobuf::UninterpretedOption_NamePart::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 4);
  if (v14)
  {
    a2 = sub_2769E1AB4(a3, 3, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v14 & 8) == 0)
    {
LABEL_15:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_34:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(this + 10);
      *a2 = 40;
      if (v21 > 0x7F)
      {
        a2[1] = v21 | 0x80;
        v22 = v21 >> 7;
        if (v21 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            ++a2;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(a2 - 1) = v23;
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          a2[2] = v22;
          a2 += 3;
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        a2[1] = v21;
        a2 += 2;
        if ((v14 & 0x20) != 0)
        {
          goto LABEL_45;
        }
      }

LABEL_17:
      if ((v14 & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_48;
    }
  }

  else if ((v14 & 8) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 9);
  *a2 = 32;
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v18 = v17 >> 7;
    if (v17 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++a2;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(a2 - 1) = v19;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v18;
      a2 += 3;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v17;
    a2 += 2;
    if ((v14 & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_16:
  if ((v14 & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 11);
  *a2 = 49;
  *(a2 + 1) = v25;
  a2 += 9;
  if ((v14 & 2) == 0)
  {
LABEL_18:
    if ((v14 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_48:
  a2 = sub_2769E1AB4(a3, 7, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v14 & 4) != 0)
  {
LABEL_19:
    a2 = sub_2769E1AB4(a3, 8, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_20:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

const InternalMetadata *google::protobuf::UninterpretedOption::ByteSizeLong(google::protobuf::UninterpretedOption *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = google::protobuf::UninterpretedOption_NamePart::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 4);
  if ((v11 & 0x3F) == 0)
  {
    goto LABEL_18;
  }

  if (v11)
  {
    v13 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v5 = (v5 + v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v11 & 2) == 0)
    {
LABEL_12:
      if ((v11 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_12;
  }

  v16 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v5 = (v5 + v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v11 & 4) == 0)
  {
LABEL_13:
    if ((v11 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_26:
  v19 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v5 = (v5 + v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v11 & 8) == 0)
  {
LABEL_14:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_29:
  v5 = (v5 + ((9 * (__clz(*(this + 9) | 1) ^ 0x3F) + 73) >> 6) + 1);
  if ((v11 & 0x10) != 0)
  {
LABEL_15:
    v5 = (v5 + ((9 * (__clz(*(this + 10) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

LABEL_16:
  if ((v11 & 0x20) != 0)
  {
    v5 = (v5 + 9);
  }

LABEL_18:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void google::protobuf::UninterpretedOption::MergeFrom(google::protobuf::UninterpretedOption *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::UninterpretedOption::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void *google::protobuf::UninterpretedOption::MergeFrom(void *this, const google::protobuf::UninterpretedOption *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276B4B47C(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      v11 = *(a2 + 6);
      *(v3 + 4) |= 1u;
      v12 = v3[1];
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 6, (v11 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    v13 = *(a2 + 7);
    *(v3 + 4) |= 2u;
    v14 = v3[1];
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 7, (v13 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_22:
    v15 = *(a2 + 8);
    *(v3 + 4) |= 4u;
    v16 = v3[1];
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 8, (v15 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

LABEL_25:
    v3[9] = *(a2 + 9);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
LABEL_14:
        *(v3 + 4) |= v10;
        return this;
      }

LABEL_13:
      v3[11] = *(a2 + 11);
      goto LABEL_14;
    }

LABEL_26:
    v3[10] = *(a2 + 10);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return this;
}

void google::protobuf::UninterpretedOption::CopyFrom(google::protobuf::UnknownFieldSet *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::UninterpretedOption::Clear(this);

    google::protobuf::UninterpretedOption::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::CopyFrom(google::protobuf::UnknownFieldSet *this, const google::protobuf::UninterpretedOption *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::UninterpretedOption::Clear(this);

    return google::protobuf::UninterpretedOption::MergeFrom(v4, a2);
  }

  return this;
}

BOOL google::protobuf::UninterpretedOption::IsInitialized(google::protobuf::UninterpretedOption *this)
{
  v1 = *(this + 8);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 5) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

__n128 google::protobuf::UninterpretedOption::InternalSwap(google::protobuf::UninterpretedOption *this, google::protobuf::UninterpretedOption *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 9);
  v11 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v10;
  *(a2 + 10) = v11;
  v13 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  return result;
}

google::protobuf::SourceCodeInfo_Location *google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(google::protobuf::SourceCodeInfo_Location *this, Arena *a2)
{
  *(this + 4) = a2;
  *this = &unk_2885C7120;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 13) = 0;
  *(this + 7) = a2;
  *(this + 9) = a2;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (atomic_load_explicit(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_276B468E8(_Unwind_Exception *a1)
{
  sub_276B4A5CC(v5);
  sub_276BD2A48(v3, v4, (v1 + 28), v2);
  _Unwind_Resume(a1);
}

google::protobuf::SourceCodeInfo_Location *google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(google::protobuf::SourceCodeInfo_Location *this, const google::protobuf::SourceCodeInfo_Location *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C7120;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  if (*(a2 + 6))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  if (*(a2 + 12))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v5 = *(a2 + 20);
  if (v5)
  {
    v6 = *(a2 + 11);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), *(a2 + 20));
    sub_276B4A878(this + 3, v7, (v6 + 8), v5, **(this + 11) - *(this + 20));
    v8 = *(this + 20) + v5;
    *(this + 20) = v8;
    v9 = *(this + 11);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  v11 = *(a2 + 4);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 12, (*(a2 + 12) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 4);
  }

  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 13, (*(a2 + 13) & 0xFFFFFFFFFFFFFFFELL), v13);
  }

  return this;
}

void sub_276B46ADC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    v3 = *(v1 + 32);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(google::protobuf::SourceCodeInfo_Location *this)
{
  v2 = *(this + 12);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(this + 13);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
  sub_276B4A5CC(this + 9);
  if (*(this + 13) >= 1)
  {
    v4 = *(this + 7);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::SourceCodeInfo_Location::default_instance(google::protobuf::SourceCodeInfo_Location *this)
{
  if (atomic_load_explicit(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_SourceCodeInfo_Location_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo_Location::Clear(google::protobuf::SourceCodeInfo_Location *this)
{
  *(this + 6) = 0;
  *(this + 12) = 0;
  result = google::protobuf::RepeatedPtrField<std::string>::Clear(this + 72);
  v3 = *(this + 4);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

LABEL_11:
  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::SourceCodeInfo_Location::_InternalParse(google::protobuf::SourceCodeInfo_Location *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v31 = a2;
  for (i = *(a3 + 23); ; i = *(a3 + 23))
  {
    if (sub_2769F6104(a3, &v31, i))
    {
      return v31;
    }

    v9 = (v31 + 1);
    v10 = *v31;
    if ((*v31 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v11 = v10 + (*v9 << 7);
    v10 = v11 - 128;
    if ((*v9 & 0x80000000) == 0)
    {
      v9 = (v31 + 2);
LABEL_6:
      v31 = v9;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v11 - 128));
    v31 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v9 = TagFallback;
    v10 = v6;
LABEL_7:
    v12 = v10 >> 3;
    if (v10 >> 3 > 2)
    {
      if (v12 == 3)
      {
        if (v10 != 26)
        {
          goto LABEL_46;
        }

        *(this + 4) |= 1u;
        v22 = *(this + 1);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = (this + 96);
      }

      else
      {
        if (v12 != 4)
        {
          if (v12 == 6 && v10 == 50)
          {
            v13 = v9 - 1;
            while (1)
            {
              v14 = (v13 + 1);
              v31 = (v13 + 1);
              v15 = *(this + 11);
              if (!v15)
              {
                break;
              }

              v16 = *(this + 20);
              v17 = *v15;
              if (v16 >= *v15)
              {
                if (v17 == *(this + 21))
                {
LABEL_18:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72), v17 + 1);
                  v15 = *(this + 11);
                  v17 = *v15;
                }

                *v15 = v17 + 1;
                v18 = sub_2769C64F4(*(this + 9));
                v19 = *(this + 20);
                v20 = *(this + 11) + 8 * v19;
                *(this + 20) = v19 + 1;
                *(v20 + 8) = v18;
                v14 = v31;
                goto LABEL_20;
              }

              *(this + 20) = v16 + 1;
              v18 = *&v15[2 * v16 + 2];
LABEL_20:
              v13 = google::protobuf::internal::InlineGreedyStringParser(v18, v14, a3);
              v31 = v13;
              if (!v13)
              {
                return 0;
              }

              if (*a3 <= v13 || *v13 != 50)
              {
                goto LABEL_54;
              }
            }

            v17 = *(this + 21);
            goto LABEL_18;
          }

          goto LABEL_46;
        }

        if (v10 != 34)
        {
          goto LABEL_46;
        }

        *(this + 4) |= 2u;
        v22 = *(this + 1);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = (this + 104);
      }

      v24 = google::protobuf::internal::ArenaStringPtr::Mutable(v23, v22);
      v25 = google::protobuf::internal::InlineGreedyStringParser(v24, v31, a3);
      goto LABEL_53;
    }

    if (v12 == 1)
    {
      if (v10 == 10)
      {
        v21 = (this + 24);
        goto LABEL_39;
      }

      if (v10 == 8)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_46;
      }

      if (v10 == 18)
      {
        v21 = (this + 48);
LABEL_39:
        v25 = google::protobuf::internal::PackedInt32Parser(v21, v9, a3, v7);
        goto LABEL_53;
      }

      if (v10 == 16)
      {
LABEL_45:
        v32 = sub_2769DF0C0(&v31, v6, v9);
        google::protobuf::RepeatedField<int>::Add();
      }
    }

LABEL_46:
    if (!v10 || (v10 & 7) == 4)
    {
      break;
    }

    v28 = *(this + 1);
    if (v28)
    {
      v29 = ((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v29 = sub_2769F617C(this + 1);
      v9 = v31;
    }

    v25 = google::protobuf::internal::UnknownFieldParse(v10, v29, v9, a3, v8);
LABEL_53:
    v31 = v25;
    if (!v25)
    {
      return 0;
    }

LABEL_54:
    ;
  }

  *(a3 + 20) = v10 - 1;
  return v31;
}

const google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo_Location::_InternalSerialize(google::protobuf::SourceCodeInfo_Location *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_276B4B53C(a3, 1, this + 6, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v7 = *(this + 16);
  if (v7 >= 1)
  {
    v4 = sub_276B4B53C(a3, 2, this + 12, v7, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v4 = sub_2769E1AB4(a3, 3, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  if ((v8 & 2) != 0)
  {
    v4 = sub_2769E1AB4(a3, 4, (*(this + 13) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v9 = *(this + 20);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v4 = sub_276B32608(a3, 6, *(*(this + 11) + v10), v4);
      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v11 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v7);
}

const InternalMetadata *google::protobuf::SourceCodeInfo_Location::ByteSizeLong(google::protobuf::SourceCodeInfo_Location *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(this + 10) = v3;
  v5 = v4 + v2;
  v6 = google::protobuf::internal::WireFormatLite::Int32Size(this + 12);
  if (v6)
  {
    v8 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v9;
  }

  else
  {
    v8 = 0;
  }

  *(this + 16) = v8;
  v10 = *(this + 20);
  v11 = (v5 + v6 + v10);
  if (v10 >= 1)
  {
    v12 = (*(this + 11) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v11 = (v11 + v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6));
      --v10;
    }

    while (v10);
  }

  v16 = *(this + 4);
  if ((v16 & 3) != 0)
  {
    if (v16)
    {
      v17 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v11 = (v11 + v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    if ((v16 & 2) != 0)
    {
      v20 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v11 = (v11 + v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v11, this + 5, v7);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

void google::protobuf::SourceCodeInfo_Location::MergeFrom(std::string *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::SourceCodeInfo_Location::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

std::string *google::protobuf::SourceCodeInfo_Location::MergeFrom(std::string *this, const google::protobuf::SourceCodeInfo_Location *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(&this->__r_.__value_.__l.__size_, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 6))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  if (*(a2 + 12))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  v5 = *(a2 + 20);
  if (v5)
  {
    v6 = *(a2 + 11);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v3[3], *(a2 + 20));
    this = sub_276B4A878(v3 + 3, v7, (v6 + 8), v5, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[3].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(a2 + 12);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(&v3[4], (v11 & 0xFFFFFFFFFFFFFFFELL), size);
    }

    if ((v10 & 2) != 0)
    {
      v13 = *(a2 + 13);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v14 = v3->__r_.__value_.__l.__size_;
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      return google::protobuf::internal::ArenaStringPtr::Set(&v3[4].__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFELL), v14);
    }
  }

  return this;
}

void google::protobuf::SourceCodeInfo_Location::CopyFrom(google::protobuf::SourceCodeInfo_Location *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::SourceCodeInfo_Location::Clear(this);

    google::protobuf::SourceCodeInfo_Location::MergeFrom(this, a2);
  }
}

google::protobuf::SourceCodeInfo_Location *google::protobuf::SourceCodeInfo_Location::CopyFrom(google::protobuf::SourceCodeInfo_Location *this, const google::protobuf::SourceCodeInfo_Location *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::SourceCodeInfo_Location::Clear(this);

    return google::protobuf::SourceCodeInfo_Location::MergeFrom(v4, a2);
  }

  return this;
}

__n128 google::protobuf::SourceCodeInfo_Location::InternalSwap(google::protobuf::SourceCodeInfo_Location *this, google::protobuf::SourceCodeInfo_Location *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 6);
  v8 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v7;
  *(a2 + 7) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  v13 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v13;
  return result;
}

google::protobuf::SourceCodeInfo *google::protobuf::SourceCodeInfo::SourceCodeInfo(google::protobuf::SourceCodeInfo *this, Arena *a2)
{
  *this = &unk_2885C71D0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return this;
}

google::protobuf::SourceCodeInfo *google::protobuf::SourceCodeInfo::SourceCodeInfo(google::protobuf::SourceCodeInfo *this, const google::protobuf::SourceCodeInfo *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C71D0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276B2F184(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void google::protobuf::SourceCodeInfo::~SourceCodeInfo(google::protobuf::SourceCodeInfo *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B2F01C(this + 2);
}

{
  google::protobuf::SourceCodeInfo::~SourceCodeInfo(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::SourceCodeInfo::default_instance(google::protobuf::SourceCodeInfo *this)
{
  if (atomic_load_explicit(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_SourceCodeInfo_default_instance_;
}

google::protobuf::internal *google::protobuf::SourceCodeInfo::_InternalParse(google::protobuf::SourceCodeInfo *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  if ((sub_2769F6104(a3, &v23, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      v7 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v21;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v23 = (v12 + 1);
          v14 = *(this + 4);
          if (!v14)
          {
            break;
          }

          v19 = *(this + 6);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(this + 6) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(this + 7))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD833C(a3, v16, v13);
          v23 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(this + 7);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), v15 + 1);
        v14 = *(this + 4);
        v15 = *v14;
        goto LABEL_20;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 20) = v7 - 1;
        return v23;
      }

      v10 = *(this + 1);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_2769F617C(this + 1);
        v6 = v23;
      }

      v23 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6, a3, v5);
      if (!v23)
      {
        return 0;
      }

LABEL_14:
      if (sub_2769F6104(a3, &v23, *(a3 + 23)))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo::_InternalSerialize(google::protobuf::SourceCodeInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = google::protobuf::SourceCodeInfo_Location::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *google::protobuf::SourceCodeInfo::ByteSizeLong(google::protobuf::SourceCodeInfo *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 6);
  v6 = *(this + 4);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = google::protobuf::SourceCodeInfo_Location::ByteSizeLong(v9);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 10, a4);
  }

  else
  {
    *(this + 10) = v5;
    return v5;
  }
}

void google::protobuf::SourceCodeInfo::MergeFrom(std::string *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::SourceCodeInfo::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void google::protobuf::SourceCodeInfo::CopyFrom(google::protobuf::UnknownFieldSet *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::SourceCodeInfo::Clear(this);

    google::protobuf::SourceCodeInfo::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo::CopyFrom(google::protobuf::UnknownFieldSet *this, const google::protobuf::SourceCodeInfo *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::SourceCodeInfo::Clear(this);

    return google::protobuf::SourceCodeInfo::MergeFrom(v4, a2);
  }

  return this;
}

__n128 google::protobuf::SourceCodeInfo::InternalSwap(google::protobuf::SourceCodeInfo *this, google::protobuf::SourceCodeInfo *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

google::protobuf::GeneratedCodeInfo_Annotation *google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this, Arena *a2)
{
  *(this + 4) = a2;
  *this = &unk_2885C7280;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = 0;
  return this;
}

void sub_276B47F74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276BD2A14(v2);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::GeneratedCodeInfo_Annotation *google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this, const google::protobuf::GeneratedCodeInfo_Annotation *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C7280;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  if (*(a2 + 6))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  if (*(a2 + 16))
  {
    v6 = *v4;
    if (*v4)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 6, (*(a2 + 6) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  *(this + 7) = *(a2 + 7);
  return this;
}

void sub_276B4808C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276BD8554(v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
  if (*(this + 7) >= 1)
  {
    v3 = *(this + 4);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }
}

{
  google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::GeneratedCodeInfo_Annotation::default_instance(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_GeneratedCodeInfo_Annotation_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo_Annotation::Clear(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  *(this + 6) = 0;
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 6) != 0)
  {
    *(this + 7) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *google::protobuf::GeneratedCodeInfo_Annotation::_InternalParse(google::protobuf::GeneratedCodeInfo_Annotation *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v32 = a2;
  v8 = 0;
  if ((sub_2769F6104(a3, &v32, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v10 = (v32 + 1);
      v11 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v12 = v11 + (*v10 << 7);
      v11 = v12 - 128;
      if ((*v10 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v12 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_51;
      }

      v10 = TagFallback;
      v11 = v5;
LABEL_7:
      v13 = v11 >> 3;
      if (v11 >> 3 <= 2)
      {
        if (v13 == 1)
        {
          if (v11 == 10)
          {
            v17 = google::protobuf::internal::PackedInt32Parser((this + 24), v10, a3, v6);
          }

          else
          {
            if (v11 == 8)
            {
              v33 = sub_2769DF0C0(&v32, v5, v10);
              google::protobuf::RepeatedField<int>::Add();
            }

LABEL_39:
            if (v11)
            {
              v29 = (v11 & 7) == 4;
            }

            else
            {
              v29 = 1;
            }

            if (v29)
            {
              *(a3 + 20) = v11 - 1;
              goto LABEL_2;
            }

            v30 = *(this + 1);
            if (v30)
            {
              v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v31 = sub_2769F617C(this + 1);
              v10 = v32;
            }

            v17 = google::protobuf::internal::UnknownFieldParse(v11, v31, v10, a3, v7);
          }
        }

        else
        {
          if (v13 != 2 || v11 != 18)
          {
            goto LABEL_39;
          }

          *(this + 4) |= 1u;
          v15 = *(this + 1);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 6, v15);
          v17 = google::protobuf::internal::InlineGreedyStringParser(v16, v32, a3);
        }

        v32 = v17;
        if (!v17)
        {
LABEL_51:
          v32 = 0;
          goto LABEL_2;
        }

        goto LABEL_47;
      }

      if (v13 == 3)
      {
        if (v11 != 24)
        {
          goto LABEL_39;
        }

        v8 |= 2u;
        v22 = (v10 + 1);
        LODWORD(v21) = *v10;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_30;
        }

        v23 = *v22;
        v21 = v21 + (v23 << 7) - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v10 + 2);
LABEL_30:
          v32 = v22;
          *(this + 14) = v21;
          goto LABEL_47;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v10, v21);
        v32 = v27;
        *(this + 14) = v28;
        if (!v27)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v13 != 4 || v11 != 32)
        {
          goto LABEL_39;
        }

        v8 |= 4u;
        v19 = (v10 + 1);
        LODWORD(v18) = *v10;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_23;
        }

        v20 = *v19;
        v18 = v18 + (v20 << 7) - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v10 + 2);
LABEL_23:
          v32 = v19;
          *(this + 15) = v18;
          goto LABEL_47;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v10, v18);
        v32 = v25;
        *(this + 15) = v26;
        if (!v25)
        {
          goto LABEL_51;
        }
      }

LABEL_47:
      if (sub_2769F6104(a3, &v32, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v10 = (v32 + 2);
LABEL_6:
    v32 = v10;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v8;
  return v32;
}

const google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo_Annotation::_InternalSerialize(google::protobuf::GeneratedCodeInfo_Annotation *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_276B4B53C(a3, 1, this + 6, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v7 = *(this + 4);
  if (v7)
  {
    v4 = sub_2769E1AB4(a3, 2, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v7 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_6;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_5;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 14);
  *v4 = 24;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v14 = v11 >> 7;
        ++v4;
        v15 = v11 >> 14;
        v11 >>= 7;
      }

      while (v15);
      *(v4 - 1) = v14;
      if ((v7 & 4) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
      if ((v7 & 4) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v4[1] = v9;
    v4 += 2;
    if ((v7 & 4) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 15);
  *v4 = 32;
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++v4;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(v4 - 1) = v12;
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v8;
    v4 += 2;
  }

LABEL_27:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v6);
}

const InternalMetadata *google::protobuf::GeneratedCodeInfo_Annotation::ByteSizeLong(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  if (v2)
  {
    v4 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(this + 10) = v4;
  v6 = (v5 + v2);
  v7 = *(this + 4);
  if ((v7 & 7) != 0)
  {
    if (v7)
    {
      v8 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v6 = (v6 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1);
      if ((v7 & 2) == 0)
      {
LABEL_9:
        if ((v7 & 4) == 0)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = *(this + 15);
        if (v13 < 0)
        {
          v14 = 11;
        }

        else
        {
          v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v6 = (v6 + v14);
        goto LABEL_22;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

    v11 = *(this + 14);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 = (v6 + v12);
    if ((v7 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_22:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, v3);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

void google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(google::protobuf::GeneratedCodeInfo_Annotation *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void *google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(void *this, const google::protobuf::GeneratedCodeInfo_Annotation *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 6))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 6);
      *(v3 + 4) |= 1u;
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 6, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
LABEL_10:
          *(v3 + 4) |= v5;
          return this;
        }

LABEL_9:
        *(v3 + 15) = *(a2 + 15);
        goto LABEL_10;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(v3 + 14) = *(a2 + 14);
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

void google::protobuf::GeneratedCodeInfo_Annotation::CopyFrom(google::protobuf::GeneratedCodeInfo_Annotation *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::GeneratedCodeInfo_Annotation::Clear(this);

    google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(this, a2);
  }
}

google::protobuf::GeneratedCodeInfo_Annotation *google::protobuf::GeneratedCodeInfo_Annotation::CopyFrom(google::protobuf::GeneratedCodeInfo_Annotation *this, const google::protobuf::GeneratedCodeInfo_Annotation *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::GeneratedCodeInfo_Annotation::Clear(this);

    return google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(v4, a2);
  }

  return this;
}

__n128 google::protobuf::GeneratedCodeInfo_Annotation::InternalSwap(google::protobuf::GeneratedCodeInfo_Annotation *this, google::protobuf::GeneratedCodeInfo_Annotation *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  return result;
}

google::protobuf::GeneratedCodeInfo *google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(google::protobuf::GeneratedCodeInfo *this, Arena *a2)
{
  *this = &unk_2885C7330;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return this;
}

google::protobuf::GeneratedCodeInfo *google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(google::protobuf::GeneratedCodeInfo *this, const google::protobuf::GeneratedCodeInfo *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C7330;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276B4B6D4(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo(google::protobuf::GeneratedCodeInfo *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4B650(this + 2);
}

{
  google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::GeneratedCodeInfo::default_instance(google::protobuf::GeneratedCodeInfo *this)
{
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_GeneratedCodeInfo_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = google::protobuf::GeneratedCodeInfo_Annotation::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *google::protobuf::GeneratedCodeInfo::_InternalParse(google::protobuf::GeneratedCodeInfo *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  if ((sub_2769F6104(a3, &v23, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      v7 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v21;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v23 = (v12 + 1);
          v14 = *(this + 4);
          if (!v14)
          {
            break;
          }

          v19 = *(this + 6);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(this + 6) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(this + 7))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::GeneratedCodeInfo_Annotation>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD840C(a3, v16, v13);
          v23 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(this + 7);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), v15 + 1);
        v14 = *(this + 4);
        v15 = *v14;
        goto LABEL_20;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 20) = v7 - 1;
        return v23;
      }

      v10 = *(this + 1);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_2769F617C(this + 1);
        v6 = v23;
      }

      v23 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6, a3, v5);
      if (!v23)
      {
        return 0;
      }

LABEL_14:
      if (sub_2769F6104(a3, &v23, *(a3 + 23)))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::_InternalSerialize(google::protobuf::GeneratedCodeInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = google::protobuf::GeneratedCodeInfo_Annotation::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *google::protobuf::GeneratedCodeInfo::ByteSizeLong(google::protobuf::GeneratedCodeInfo *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 6);
  v6 = *(this + 4);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = google::protobuf::GeneratedCodeInfo_Annotation::ByteSizeLong(v9);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 10, a4);
  }

  else
  {
    *(this + 10) = v5;
    return v5;
  }
}

void google::protobuf::GeneratedCodeInfo::MergeFrom(google::protobuf::GeneratedCodeInfo *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::GeneratedCodeInfo::MergeFrom(this, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void *google::protobuf::GeneratedCodeInfo::MergeFrom(void *this, const google::protobuf::GeneratedCodeInfo *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2), v5);
    this = sub_276B4B6D4(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

void google::protobuf::GeneratedCodeInfo::CopyFrom(google::protobuf::UnknownFieldSet *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::GeneratedCodeInfo::Clear(this);

    google::protobuf::GeneratedCodeInfo::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::CopyFrom(google::protobuf::UnknownFieldSet *this, const google::protobuf::GeneratedCodeInfo *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::GeneratedCodeInfo::Clear(this);

    return google::protobuf::GeneratedCodeInfo::MergeFrom(v4, a2);
  }

  return this;
}

__n128 google::protobuf::GeneratedCodeInfo::InternalSwap(google::protobuf::GeneratedCodeInfo *this, google::protobuf::GeneratedCodeInfo *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

google::protobuf::FileDescriptorSet *sub_276B493A4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4B794(a1, 1);
  google::protobuf::FileDescriptorSet::FileDescriptorSet(v2, a1);
  return v2;
}

google::protobuf::FileDescriptorProto *sub_276B49430(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4B820(a1, 1);
  google::protobuf::FileDescriptorProto::FileDescriptorProto(v2, a1);
  return v2;
}

void *sub_276B494BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276B4B8AC(a1);
}

void *sub_276B49588(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276B4B9AC(this, 1);
  *result = &unk_2885C6360;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

google::protobuf::DescriptorProto *sub_276B495F8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BA54(a1, 1);
  google::protobuf::DescriptorProto::DescriptorProto(v2, a1);
  return v2;
}

google::protobuf::ExtensionRangeOptions *sub_276B49684(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BAE0(a1, 1);
  google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(v2, a1);
  return v2;
}

google::protobuf::FieldDescriptorProto *sub_276B49710(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BB6C(a1, 1);
  google::protobuf::FieldDescriptorProto::FieldDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::OneofDescriptorProto *sub_276B4979C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BBF8(a1, 1);
  google::protobuf::OneofDescriptorProto::OneofDescriptorProto(v2, a1);
  return v2;
}

void *sub_276B49828(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276B4BC84(this, 1);
  *result = &unk_2885C66D0;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

google::protobuf::EnumDescriptorProto *sub_276B49898(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BD2C(a1, 1);
  google::protobuf::EnumDescriptorProto::EnumDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::EnumValueDescriptorProto *sub_276B49924(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BDB8(a1, 1);
  google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::ServiceDescriptorProto *sub_276B499B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BE44(a1, 1);
  google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::MethodDescriptorProto *sub_276B49A3C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BED0(a1, 1);
  google::protobuf::MethodDescriptorProto::MethodDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::FileOptions *sub_276B49AC8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BF5C(a1, 1);
  google::protobuf::FileOptions::FileOptions(v2, a1);
  return v2;
}

google::protobuf::MessageOptions *sub_276B49B54(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BFE8(a1, 1);
  google::protobuf::MessageOptions::MessageOptions(v2, a1);
  return v2;
}

google::protobuf::FieldOptions *sub_276B49BE0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C074(a1, 1);
  google::protobuf::FieldOptions::FieldOptions(v2, a1);
  return v2;
}

google::protobuf::OneofOptions *sub_276B49C6C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C100(a1, 1);
  google::protobuf::OneofOptions::OneofOptions(v2, a1);
  return v2;
}

google::protobuf::EnumOptions *sub_276B49CF8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C18C(a1, 1);
  google::protobuf::EnumOptions::EnumOptions(v2, a1);
  return v2;
}

google::protobuf::EnumValueOptions *sub_276B49D84(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C218(a1, 1);
  google::protobuf::EnumValueOptions::EnumValueOptions(v2, a1);
  return v2;
}

google::protobuf::ServiceOptions *sub_276B49E10(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C2A4(a1, 1);
  google::protobuf::ServiceOptions::ServiceOptions(v2, a1);
  return v2;
}

google::protobuf::MethodOptions *sub_276B49E9C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C330(a1, 1);
  google::protobuf::MethodOptions::MethodOptions(v2, a1);
  return v2;
}

google::protobuf::UninterpretedOption_NamePart *sub_276B49F28(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C3BC(a1, 1);
  google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(v2, a1);
  return v2;
}

google::protobuf::UninterpretedOption *sub_276B49FB4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C448(a1, 1);
  google::protobuf::UninterpretedOption::UninterpretedOption(v2, a1);
  return v2;
}

google::protobuf::SourceCodeInfo_Location *sub_276B4A040(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C4D4(a1, 1);
  google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(v2, a1);
  return v2;
}

google::protobuf::SourceCodeInfo *sub_276B4A0CC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C560(a1, 1);
  google::protobuf::SourceCodeInfo::SourceCodeInfo(v2, a1);
  return v2;
}

google::protobuf::GeneratedCodeInfo_Annotation *sub_276B4A158(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C5EC(a1, 1);
  google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(v2, a1);
  return v2;
}

google::protobuf::GeneratedCodeInfo *sub_276B4A1E4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C678(a1, 1);
  google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(v2, a1);
  return v2;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::Clear(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_276B4A488(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::FileDescriptorProto::~FileDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276B4A50C(uint64_t *result, google::protobuf::FileDescriptorProto **a2, google::protobuf::FileDescriptorProto **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276B4A5BC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileDescriptorProto>(v18);
      sub_276B4A5BC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4A5CC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x277C9F670](v5, 0x1012C40EC159624);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276B4A668(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::DescriptorProto::~DescriptorProto(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276B4A6EC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276B4A770(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276B4A7F4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_276B4A878(std::string *result, std::string **a2, const std::string **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2769C64F4(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276B4A924(uint64_t *result, google::protobuf::DescriptorProto **a2, google::protobuf::DescriptorProto **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276B4A9D4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(v18);
      sub_276B4A9D4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4A9E4(uint64_t *result, google::protobuf::EnumDescriptorProto **a2, google::protobuf::EnumDescriptorProto **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276B4AA94(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(v18);
      sub_276B4AA94(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4AAA4(uint64_t *result, google::protobuf::ServiceDescriptorProto **a2, google::protobuf::ServiceDescriptorProto **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276B4AB54(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceDescriptorProto>(v18);
      sub_276B4AB54(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4AB64(uint64_t *result, google::protobuf::FieldDescriptorProto **a2, google::protobuf::FieldDescriptorProto **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276B4AC14(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(v18);
      sub_276B4AC14(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4AC24(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276B4ACA8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::OneofDescriptorProto::~OneofDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276B4AD2C(uint64_t *result, google::protobuf::DescriptorProto_ExtensionRange **a2, google::protobuf::DescriptorProto_ExtensionRange **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276B4ADDC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ExtensionRange>(v18);
      sub_276B4ADDC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4ADEC(uint64_t *result, google::protobuf::OneofDescriptorProto **a2, google::protobuf::OneofDescriptorProto **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276B4AE9C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofDescriptorProto>(v18);
      sub_276B4AE9C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

google::protobuf::Arena **sub_276B4AEAC(google::protobuf::Arena **result, google::protobuf::DescriptorProto_ReservedRange **a2, google::protobuf::DescriptorProto_ReservedRange **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276B4AF5C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ReservedRange>(v18);
      result = sub_276B4AF5C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276B4AF6C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::UninterpretedOption::~UninterpretedOption(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276B4AFF0(uint64_t *result, google::protobuf::UninterpretedOption **a2, google::protobuf::UninterpretedOption **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276B4B0A0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(v18);
      result = sub_276B4B0A0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276B4B0B0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276B4B134(uint64_t *result, google::protobuf::EnumValueDescriptorProto **a2, google::protobuf::EnumValueDescriptorProto **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276B4B1E4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueDescriptorProto>(v18);
      sub_276B4B1E4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

google::protobuf::Arena **sub_276B4B1F4(google::protobuf::Arena **result, google::protobuf::EnumDescriptorProto_EnumReservedRange **a2, google::protobuf::EnumDescriptorProto_EnumReservedRange **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276B4B2A4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto_EnumReservedRange>(v18);
      result = sub_276B4B2A4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276B4B2B4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::MethodDescriptorProto::~MethodDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276B4B338(uint64_t *result, google::protobuf::MethodDescriptorProto **a2, google::protobuf::MethodDescriptorProto **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276B4B3E8(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *result;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodDescriptorProto>(v18);
      sub_276B4B3E8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4B3F8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276B4B47C(uint64_t *result, google::protobuf::UninterpretedOption_NamePart **a2, google::protobuf::UninterpretedOption_NamePart **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276B4B52C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption_NamePart>(v18);
      result = sub_276B4B52C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

unsigned __int8 *sub_276B4B53C(google::protobuf::io::EpsCopyOutputStream *this, int a2, int *a3, unsigned int a4, unsigned __int8 *a5, uint64_t (*a6)(uint64_t))
{
  if (*this <= a5)
  {
    a5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a5);
  }

  v11 = sub_2769F6730(this, a2, a4, a5);
  v12 = *(a3 + 1);
  v13 = &v12[*a3];
  do
  {
    if (*this <= v11)
    {
      v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v11);
    }

    v14 = *v12++;
    v15 = a6(v14);
    if (v15 > 0x7F)
    {
      *v11 = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v11 += 2;
        do
        {
          *(v11 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v11;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
      }

      else
      {
        v11[1] = v16;
        v11 += 2;
      }
    }

    else
    {
      *v11++ = v15;
    }
  }

  while (v12 < v13);
  return v11;
}

void sub_276B4B650(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_276B4B6D4(uint64_t *result, google::protobuf::GeneratedCodeInfo_Annotation **a2, google::protobuf::GeneratedCodeInfo_Annotation **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276B4B784(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::GeneratedCodeInfo_Annotation>(v18);
      result = sub_276B4B784(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_276B4B794(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8568(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::FileDescriptorSet::~FileDescriptorSet);
}

void *sub_276B4B820(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8598(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xD8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xD8uLL, google::protobuf::FileDescriptorProto::~FileDescriptorProto);
}

void *sub_276B4B8AC(google::protobuf::Arena *a1)
{
  v2 = sub_276B4B920(a1, 1);
  *v2 = &unk_2885C62B0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_276B4B920(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD85D4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange);
}

void *sub_276B4B9AC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8604(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276B4BA34);
}

void *sub_276B4BA54(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8634(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xE8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xE8uLL, google::protobuf::DescriptorProto::~DescriptorProto);
}

void *sub_276B4BAE0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8670(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x48uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions);
}

void *sub_276B4BB6C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD86A0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x60uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x60uLL, google::protobuf::FieldDescriptorProto::~FieldDescriptorProto);
}

void *sub_276B4BBF8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD86D0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::OneofDescriptorProto::~OneofDescriptorProto);
}

void *sub_276B4BC84(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8700(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276B4BD0C);
}

void *sub_276B4BD2C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8730(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x70uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, google::protobuf::EnumDescriptorProto::~EnumDescriptorProto);
}

void *sub_276B4BDB8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8760(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto);
}

void *sub_276B4BE44(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8790(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto);
}

void *sub_276B4BED0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD87C0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::MethodDescriptorProto::~MethodDescriptorProto);
}

void *sub_276B4BF5C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD87F0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xA8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xA8uLL, google::protobuf::FileOptions::~FileOptions);
}

void *sub_276B4BFE8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD882C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::MessageOptions::~MessageOptions);
}

void *sub_276B4C074(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD885C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x58uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x58uLL, google::protobuf::FieldOptions::~FieldOptions);
}

void *sub_276B4C100(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8898(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x48uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, google::protobuf::OneofOptions::~OneofOptions);
}

void *sub_276B4C18C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD88C8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::EnumOptions::~EnumOptions);
}

void *sub_276B4C218(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD88F8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::EnumValueOptions::~EnumValueOptions);
}

void *sub_276B4C2A4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8928(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::ServiceOptions::~ServiceOptions);
}

void *sub_276B4C330(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8958(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::MethodOptions::~MethodOptions);
}

void *sub_276B4C3BC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8988(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart);
}

void *sub_276B4C448(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD89B8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x60uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x60uLL, google::protobuf::UninterpretedOption::~UninterpretedOption);
}

void *sub_276B4C4D4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD89E8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x70uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location);
}

void *sub_276B4C560(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8A18(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::SourceCodeInfo::~SourceCodeInfo);
}

void *sub_276B4C5EC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8A48(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation);
}

void *sub_276B4C678(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8A78(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo);
}

uint64_t google::protobuf::DescriptorDatabase::FindAllPackageNames(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if ((*(*a1 + 48))(a1, &v16))
  {
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    google::protobuf::FileDescriptorProto::FileDescriptorProto(v12, 0);
    v4 = v16;
    v5 = v17;
    while (1)
    {
      if (v4 == v5)
      {
        sub_276B4FD14(a2, *(a2 + 8), v14, v15);
        v6 = 1;
        goto LABEL_9;
      }

      google::protobuf::FileDescriptorProto::Clear(v12);
      if (((*(*a1 + 16))(a1, v4, v12) & 1) == 0)
      {
        break;
      }

      sub_276B2C720(&v14, (v13 & 0xFFFFFFFFFFFFFFFELL), v13 & 0xFFFFFFFFFFFFFFFELL);
      v4 += 24;
    }

    google::protobuf::internal::LogMessage::LogMessage(v11, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 81);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "File not found in database (unexpected): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, v4);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = 0;
LABEL_9:
    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v12);
    sub_276B2AD2C(&v14, v15[0]);
  }

  else
  {
    v6 = 0;
  }

  v12[0] = &v16;
  sub_276B281C8(v12);
  return v6;
}

void sub_276B4C8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a10);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(&a16);
  sub_276B2AD2C(v17 - 112, *(v16 + 224));
  a16 = (v17 - 88);
  sub_276B281C8(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorDatabase::FindAllMessageNames(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if ((*(*a1 + 48))(a1, &v20))
  {
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    google::protobuf::FileDescriptorProto::FileDescriptorProto(v14, 0);
    v4 = v20;
    v5 = v21;
    while (1)
    {
      if (v4 == v5)
      {
        sub_276B4FD14(a2, *(a2 + 8), v18, v19);
        v8 = 1;
        goto LABEL_15;
      }

      google::protobuf::FileDescriptorProto::Clear(v14);
      if (((*(*a1 + 16))(a1, v4, v14) & 1) == 0)
      {
        break;
      }

      if (v16)
      {
        v6 = (v16 + 8);
      }

      else
      {
        v6 = 0;
      }

      if (v15)
      {
        v7 = 8 * v15;
        do
        {
          sub_276B503B0(*v6++, (v17 & 0xFFFFFFFFFFFFFFFELL), &v18);
          v7 -= 8;
        }

        while (v7);
      }

      v4 += 24;
    }

    google::protobuf::internal::LogMessage::LogMessage(v13, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 81);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "File not found in database (unexpected): ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, v4);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v8 = 0;
LABEL_15:
    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v14);
    sub_276B2AD2C(&v18, v19[0]);
  }

  else
  {
    v8 = 0;
  }

  v14[0] = &v20;
  sub_276B281C8(v14);
  return v8;
}

void sub_276B4CAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a10);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(&a16);
  sub_276B2AD2C(v17 - 128, *(v16 + 224));
  a16 = (v17 - 104);
  sub_276B281C8(&a16);
  _Unwind_Resume(a1);
}

void *google::protobuf::SimpleDescriptorDatabase::SimpleDescriptorDatabase(void *this)
{
  this[2] = 0;
  *this = &unk_2885C7668;
  this[1] = this + 2;
  this[5] = 0;
  this[3] = 0;
  this[4] = this + 5;
  this[8] = 0;
  this[9] = 0;
  this[10] = 0;
  this[6] = 0;
  this[7] = this + 8;
  this[11] = 0;
  this[12] = 0;
  return this;
}

{
  this[2] = 0;
  *this = &unk_2885C7668;
  this[1] = this + 2;
  this[5] = 0;
  this[3] = 0;
  this[4] = this + 5;
  this[8] = 0;
  this[9] = 0;
  this[10] = 0;
  this[6] = 0;
  this[7] = this + 8;
  this[11] = 0;
  this[12] = 0;
  return this;
}

void google::protobuf::SimpleDescriptorDatabase::~SimpleDescriptorDatabase(char **this)
{
  *this = &unk_2885C7668;
  v2 = (this + 10);
  sub_276B5058C(&v2);
  sub_276B2AD2C((this + 7), this[8]);
  sub_276B2AD2C((this + 4), this[5]);
  sub_276B2AD2C((this + 1), this[2]);
}

{
  google::protobuf::SimpleDescriptorDatabase::~SimpleDescriptorDatabase(this);

  JUMPOUT(0x277C9F670);
}

uint64_t google::protobuf::SimpleDescriptorDatabase::AddAndOwn(google::protobuf::SimpleDescriptorDatabase *this, const google::protobuf::FileDescriptorProto *a2)
{
  v5 = *(this + 11);
  v4 = *(this + 12);
  if (v5 >= v4)
  {
    v7 = this + 80;
    v8 = *(this + 10);
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      sub_2769BA860();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v21[4] = this + 80;
    if (v14)
    {
      sub_276B2A0B4(v7, v14);
    }

    v15 = (v5 - v8) >> 3;
    v16 = (8 * v10);
    v17 = (8 * v10 - 8 * v15);
    *v16 = a2;
    v6 = v16 + 1;
    memcpy(v17, v8, v9);
    v18 = *(this + 10);
    *(this + 10) = v17;
    *(this + 11) = v6;
    v19 = *(this + 12);
    *(this + 12) = 0;
    v21[2] = v18;
    v21[3] = v19;
    v21[0] = v18;
    v21[1] = v18;
    sub_276B5067C(v21);
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 8;
  }

  *(this + 11) = v6;
  return sub_276B4CE28(this + 1, a2, a2);
}

uint64_t sub_276B4CE28(uint64_t **a1, uint64_t a2, const char *a3)
{
  v23 = a3;
  if ((sub_276B506FC(a1, *(a2 + 176) & 0xFFFFFFFFFFFFFFFELL, &v23) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(&__dst, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 120);
    v5 = google::protobuf::internal::LogMessage::operator<<(&__dst, "File already exists in database: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL));
    google::protobuf::internal::LogFinisher::operator=(__p, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&__dst.__r_.__value_.__l.__data_);
    return 0;
  }

  if ((*(a2 + 16) & 2) != 0)
  {
    v8 = *(a2 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      sub_276A07B90(&__dst, *v8, *(v8 + 8));
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = *(v8 + 16);
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::push_back(&__dst, 46);
  }

  if (*(a2 + 56) < 1)
  {
LABEL_19:
    if (*(a2 + 80) < 1)
    {
LABEL_25:
      if (*(a2 + 128) < 1)
      {
LABEL_32:
        if (*(a2 + 104) < 1)
        {
          v7 = 1;
        }

        else
        {
          v18 = 0;
          do
          {
            sub_276B50A78(&__dst.__r_.__value_.__l.__data_, (*(*(*(a2 + 112) + 8 * v18 + 8) + 48) & 0xFFFFFFFFFFFFFFFELL), __p);
            v7 = sub_276B507A0(a1, __p, v23);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }

            if ((v7 & 1) == 0)
            {
              break;
            }

            ++v18;
          }

          while (v18 < *(a2 + 104));
        }

        goto LABEL_40;
      }

      v16 = 1;
      while (1)
      {
        sub_276B50A78(&__dst.__r_.__value_.__l.__data_, (*(*(*(a2 + 136) + 8 * v16) + 24) & 0xFFFFFFFFFFFFFFFELL), __p);
        v17 = sub_276B507A0(a1, __p, v23);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v17 & 1) == 0 || (sub_276B50C10(a1, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), *(*(a2 + 136) + 8 * v16), v23) & 1) == 0)
        {
          break;
        }

        v13 = v16++ < *(a2 + 128);
        if (!v13)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v14 = 0;
      while (1)
      {
        sub_276B50A78(&__dst.__r_.__value_.__l.__data_, (*(*(*(a2 + 88) + 8 * v14 + 8) + 96) & 0xFFFFFFFFFFFFFFFELL), __p);
        v15 = sub_276B507A0(a1, __p, v23);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (++v14 >= *(a2 + 80))
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v11 = 1;
    while (1)
    {
      sub_276B50A78(&__dst.__r_.__value_.__l.__data_, (*(*(*(a2 + 64) + 8 * v11) + 216) & 0xFFFFFFFFFFFFFFFELL), __p);
      v12 = sub_276B507A0(a1, __p, v23);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v12 & 1) == 0 || (sub_276B50B44(a1, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), *(*(a2 + 64) + 8 * v11), v23) & 1) == 0)
      {
        break;
      }

      v13 = v11++ < *(a2 + 56);
      if (!v13)
      {
        goto LABEL_19;
      }
    }
  }

  v7 = 0;
LABEL_40:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_276B4D130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::SimpleDescriptorDatabase::FindFileByName(uint64_t a1, const void **a2, google::protobuf::FileDescriptorProto *a3)
{
  v5 = sub_276B27C88(a1 + 8, a2);
  if (a1 + 16 == v5)
  {
    return 0;
  }

  v6 = *(v5 + 56);
  if (!v6)
  {
    return 0;
  }

  google::protobuf::FileDescriptorProto::CopyFrom(a3, v6);
  return 1;
}

BOOL google::protobuf::SimpleDescriptorDatabase::MaybeCopy(google::protobuf::SimpleDescriptorDatabase *this, const google::protobuf::FileDescriptorProto *a2, google::protobuf::FileDescriptorProto *a3)
{
  if (a2)
  {
    google::protobuf::FileDescriptorProto::CopyFrom(a3, a2);
  }

  return a2 != 0;
}

BOOL google::protobuf::SimpleDescriptorDatabase::FindFileContainingSymbol(uint64_t a1, const void **a2, google::protobuf::FileDescriptorProto *a3)
{
  v4 = sub_276B4D26C(a1 + 8, a2);
  if (v4)
  {
    google::protobuf::FileDescriptorProto::CopyFrom(a3, v4);
  }

  return v4 != 0;
}

uint64_t sub_276B4D26C(uint64_t a1, const void **a2)
{
  v4 = sub_276B50EFC((a1 + 24), a2);
  if ((a1 + 32) == v4)
  {
    return 0;
  }

  v6 = v4;
  sub_276B280C4(v10, v4 + 4, v5);
  sub_276B280C4(v9, a2, v7);
  if (!sub_276B4ED58(v10[0], v10[1], v9[0], v9[1]))
  {
    return 0;
  }

  else
  {
    return v6[7];
  }
}

BOOL google::protobuf::SimpleDescriptorDatabase::FindFileContainingExtension(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf::FileDescriptorProto *a4)
{
  v5 = sub_276B4D330(a1 + 8, a2, a3);
  if (v5)
  {
    google::protobuf::FileDescriptorProto::CopyFrom(a4, v5);
  }

  return v5 != 0;
}

uint64_t sub_276B4D330(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_276A07B90(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  v10 = a3;
  v5 = sub_276B51648(a1 + 48, __p);
  if (a1 + 56 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 64);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_276B4D3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B4D3E8(uint64_t a1, uint64_t a2, const void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_276A07B90(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v27 = *(a2 + 16);
  }

  v28 = 0;
  v6 = (a1 + 56);
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = (a1 + 56);
    do
    {
      v9 = sub_276B51498(a1 + 48, (v7 + 32), __p);
      if (v9)
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        v8 = v7;
      }

      v7 = *(v7 + v10);
    }

    while (v7);
  }

  else
  {
    v8 = (a1 + 56);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 == v6)
  {
    goto LABEL_44;
  }

  v11 = *(v8 + 55);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = *(v8 + 55);
  }

  else
  {
    v12 = *(v8 + 5);
  }

  v13 = *(a2 + 23);
  v14 = *(a2 + 8);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = *(a2 + 23);
  }

  if (v12 != v14)
  {
LABEL_44:
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v11 >> 63;
    v17 = v13 >> 63;
    do
    {
      v18 = (v16 & 1) != 0 ? *(v8 + 4) : v8 + 8;
      v19 = (v17 & 1) != 0 ? *a2 : a2;
      if (memcmp(v18, v19, v12))
      {
        break;
      }

      sub_276B112A4(a3, v8 + 14);
      v20 = *(v8 + 1);
      v21 = v8;
      if (v20)
      {
        do
        {
          v8 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v8 = *(v21 + 2);
          v22 = *v8 == v21;
          v21 = v8;
        }

        while (!v22);
      }

      if (v8 == v6)
      {
        v15 = 1;
        return v15 & 1;
      }

      v23 = *(v8 + 55);
      v16 = v23 >> 63;
      if ((v23 & 0x80000000) == 0)
      {
        v12 = *(v8 + 55);
      }

      else
      {
        v12 = *(v8 + 5);
      }

      v24 = *(a2 + 23);
      v17 = v24 >> 63;
      if ((v24 & 0x80000000) != 0)
      {
        v24 = *(a2 + 8);
      }

      v15 = 1;
    }

    while (v12 == v24);
  }

  return v15 & 1;
}

void sub_276B4D598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B4D5D4(void *a1, void *a2)
{
  sub_276B4F0C4(a2, a1[2]);
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    v7 = 0;
    do
    {
      std::string::operator=((*a2 + 24 * v7), (v5 + 4));
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      ++v7;
      v5 = v9;
    }

    while (v9 != v4);
  }
}

void sub_276B4D734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_276B4D760(void *a1, uint64_t a2, void *a3, int a4)
{
  v51[0] = a3;
  LODWORD(v51[1]) = a4;
  v53 = 0;
  __p = 0uLL;
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    v9 = sub_276B51B00(a1, v51);
    v10 = SHIBYTE(v53);
    a1[1] = v9;
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = v51[0];
    *(v6 + 8) = v51[1];
    *v6 = v7;
    v8 = __p;
    *(v6 + 32) = v53;
    *(v6 + 16) = v8;
    a1[1] = v6 + 40;
  }

  sub_276B280C4(v51, (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL), a3);
  if ((sub_276B4EA0C(v51[0], v51[1]) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v51, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 631);
    v23 = google::protobuf::internal::LogMessage::operator<<(v51, "Invalid package name: ");
    v24 = google::protobuf::internal::LogMessage::operator<<(v23, (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL));
    google::protobuf::internal::LogFinisher::operator=(&v54, &v24->__r_.__value_.__l.__data_);
LABEL_18:
    google::protobuf::internal::LogMessage::~LogMessage(v51);
    return 0;
  }

  sub_276B280C4(&v50, (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL), v11);
  v54 = v50;
  sub_276B264AC(&v54, v51);
  v13 = a1[1];
  v14 = v13 - 24;
  if (*(v13 - 1) < 0)
  {
    operator delete(*v14);
  }

  v15 = *v51;
  *(v14 + 16) = __p;
  *v14 = v15;
  LODWORD(v51[0]) = -858993459 * ((a1[1] - *a1) >> 3) - 1;
  sub_276B280C4(&v50, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v12);
  v54 = v50;
  sub_276B264AC(&v54, &v51[1]);
  sub_276B51E78(a1 + 3, v51, v51);
  if ((v16 & 1) == 0)
  {
    if (SHIBYTE(__p) < 0)
    {
      operator delete(v51[1]);
    }

    goto LABEL_17;
  }

  v17 = a1[7];
  v18 = a1[8];
  v19 = *(a2 + 176);
  *&v50 = a1[6];
  LOBYTE(v54) = 0;
  v21 = sub_276B52194(v17, (v19 & 0xFFFFFFFFFFFFFFFELL), ((v18 - v17) >> 5), &v50);
  if (v21 == v18)
  {
    v22 = 0;
  }

  else
  {
    sub_276B280C4(&v54, (v19 & 0xFFFFFFFFFFFFFFFELL), v20);
    v22 = !sub_276B52128(&v50, v54, *(&v54 + 1), v21);
  }

  if (SHIBYTE(__p) < 0)
  {
    operator delete(v51[1]);
    if (v22)
    {
      goto LABEL_17;
    }
  }

  else if (v22)
  {
LABEL_17:
    google::protobuf::internal::LogMessage::LogMessage(v51, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 641);
    v25 = google::protobuf::internal::LogMessage::operator<<(v51, "File already exists in database: ");
    v26 = google::protobuf::internal::LogMessage::operator<<(v25, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL));
    google::protobuf::internal::LogFinisher::operator=(&v54, &v26->__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

  v28 = *(a2 + 64);
  if (v28)
  {
    v29 = (v28 + 8);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(a2 + 56);
  if (v30)
  {
    v31 = 8 * v30;
    while (1)
    {
      v32 = *v29;
      sub_276B280C4(v51, (*(*v29 + 216) & 0xFFFFFFFFFFFFFFFELL), v20);
      result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v51[0], v51[1]);
      if (!result)
      {
        break;
      }

      sub_276B280C4(v51, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v33);
      if ((sub_276B51770(a1, v51[0], v51[1], v32) & 1) == 0)
      {
        return 0;
      }

      ++v29;
      v31 -= 8;
      if (!v31)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
    v34 = *(a2 + 88);
    if (v34)
    {
      v35 = v34 + 8;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(a2 + 80);
    if (v36)
    {
      v37 = 8 * v36;
      do
      {
        sub_276B280C4(v51, (*(*v35 + 96) & 0xFFFFFFFFFFFFFFFELL), v20);
        if ((google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v51[0], v51[1]) & 1) == 0)
        {
          return 0;
        }

        v35 += 8;
        v37 -= 8;
      }

      while (v37);
    }

    v38 = *(a2 + 136);
    if (v38)
    {
      v39 = (v38 + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a2 + 128);
    if (v40)
    {
      v41 = 8 * v40;
      while (1)
      {
        v42 = *v39;
        sub_276B280C4(v51, (*(*v39 + 24) & 0xFFFFFFFFFFFFFFFELL), v20);
        result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v51[0], v51[1]);
        if (!result)
        {
          break;
        }

        sub_276B280C4(v51, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v43);
        if ((sub_276B51840(a1, v51[0], v51[1], v42) & 1) == 0)
        {
          return 0;
        }

        ++v39;
        v41 -= 8;
        if (!v41)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
LABEL_45:
      v44 = *(a2 + 112);
      if (v44)
      {
        v45 = (v44 + 8);
      }

      else
      {
        v45 = 0;
      }

      v46 = *(a2 + 104);
      if (v46)
      {
        v47 = 8 * v46 - 8;
        do
        {
          v48 = *v45++;
          sub_276B280C4(v51, (*(v48 + 48) & 0xFFFFFFFFFFFFFFFELL), v20);
          result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v51[0], v51[1]);
          if (result)
          {
            v49 = v47 == 0;
          }

          else
          {
            v49 = 1;
          }

          v47 -= 8;
        }

        while (!v49);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void google::protobuf::EncodedDescriptorDatabase::AddCopy(google::protobuf::EncodedDescriptorDatabase *this, const void *a2, signed int a3)
{
  v6 = a3;
  v7 = operator new(a3);
  memcpy(v7, a2, v6);
  v9 = *(this + 3);
  v8 = *(this + 4);
  if (v9 >= v8)
  {
    v11 = *(this + 2);
    v12 = (v9 - v11) >> 3;
    if ((v12 + 1) >> 61)
    {
      sub_2769BA860();
    }

    v13 = v8 - v11;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      sub_2769BB09C(this + 16, v15);
    }

    *(8 * v12) = v7;
    v10 = 8 * v12 + 8;
    v16 = *(this + 2);
    v17 = *(this + 3) - v16;
    v18 = (8 * v12 - v17);
    memcpy(v18, v16, v17);
    v19 = *(this + 2);
    *(this + 2) = v18;
    *(this + 3) = v10;
    *(this + 4) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v9 = v7;
    v10 = (v9 + 1);
  }

  *(this + 3) = v10;

  google::protobuf::EncodedDescriptorDatabase::Add(this, v7, a3);
}

const void *google::protobuf::EncodedDescriptorDatabase::FindFileByName(uint64_t a1, uint64_t *a2, char *a3)
{
  v4 = *(a1 + 8);
  sub_276B280C4(v6, a2, a3);
  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindFile(v4, v6[0], v6[1]);
  if (result)
  {
    google::protobuf::MessageLite::ParseFromArray(a3, result);
  }

  return result;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::MaybeParse(int a1, const void *a2, int a3, google::protobuf::MessageLite *this)
{
  if (a2)
  {
    google::protobuf::MessageLite::ParseFromArray(this, a2);
  }

  return 0;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindFile(uint64_t a1, const char *a2, int64_t a3)
{
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(a1);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  __s1[0] = *(a1 + 48);
  if (v7 != v8)
  {
    v9 = (v7 - v8) >> 5;
    do
    {
      v10 = &v8[4 * (v9 >> 1)];
      v11 = sub_276B5222C(__s1, v10, a2, a3);
      if (v11)
      {
        v9 += ~(v9 >> 1);
      }

      else
      {
        v9 >>= 1;
      }

      if (v11)
      {
        v8 = (v10 + 32);
      }
    }

    while (v9);
    v7 = *(a1 + 64);
  }

  if (v8 != v7 && (sub_276B280C4(__s1, v8 + 1, v6), __s1[1] == a3) && (__s1[0] == a2 || a3 < 1 || !memcmp(__s1[0], a2, a3)))
  {
    return *(*a1 + 40 * *v8);
  }

  else
  {
    return 0;
  }
}

const void *google::protobuf::EncodedDescriptorDatabase::FindFileContainingSymbol(uint64_t a1, uint64_t *a2, char *a3)
{
  v4 = *(a1 + 8);
  sub_276B280C4(v8, a2, a3);
  v5 = v8[0];
  v6 = v8[1];
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(v4);
  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindSymbolOnlyFlat(v4, v5, v6);
  if (result)
  {
    google::protobuf::MessageLite::ParseFromArray(a3, result);
  }

  return result;
}

BOOL google::protobuf::EncodedDescriptorDatabase::FindNameOfFileContainingSymbol(uint64_t a1, uint64_t *a2, std::string *a3)
{
  v4 = *(a1 + 8);
  sub_276B280C4(v12, a2, a3);
  v5 = v12[0];
  v6 = v12[1];
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(v4);
  SymbolOnlyFlat = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindSymbolOnlyFlat(v4, v5, v6);
  Bytes = SymbolOnlyFlat;
  if (!SymbolOnlyFlat)
  {
    return Bytes;
  }

  v13[0] = SymbolOnlyFlat;
  v13[1] = &SymbolOnlyFlat[v8];
  v13[2] = 0;
  v14 = v8;
  v15 = 0;
  v16 = 0;
  v18 = -NAN;
  v17 = v8;
  v19 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v20 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v21 = 0;
  v22 = 0;
  if (v8 < 1)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *SymbolOnlyFlat;
  if (*SymbolOnlyFlat < 0)
  {
LABEL_6:
    LODWORD(v10) = google::protobuf::io::CodedInputStream::ReadTagFallback(v13, v10);
    goto LABEL_7;
  }

  v13[0] = SymbolOnlyFlat + 1;
LABEL_7:
  if (v10 != 10)
  {
    google::protobuf::FileDescriptorProto::FileDescriptorProto(v12, 0);
    google::protobuf::MessageLite::ParseFromArray(v12, Bytes);
  }

  Bytes = google::protobuf::internal::WireFormatLite::ReadBytes(v13, a3);
  google::protobuf::io::CodedInputStream::~CodedInputStream(v13);
  return Bytes;
}

const void *google::protobuf::EncodedDescriptorDatabase::FindFileContainingExtension(uint64_t a1, uint64_t *a2, const char *a3, google::protobuf::MessageLite *a4)
{
  v5 = a3;
  v6 = *(a1 + 8);
  sub_276B280C4(v8, a2, a3);
  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindExtension(v6, v8[0], v8[1], v5);
  if (result)
  {
    google::protobuf::MessageLite::ParseFromArray(a4, result);
  }

  return result;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindExtension(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *a1, const void *a2, int64_t a3, int a4)
{
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(a1);
  v8 = *(a1 + 21);
  v9 = *(a1 + 22);
  *&v16 = a2;
  *(&v16 + 1) = a3;
  v17 = a4;
  v19 = *(a1 + 20);
  v18 = 0;
  v10 = sub_276B52E74(v8, &v16, 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3), &v19);
  if (*(a1 + 22) != v10 && (v12 = v10, v13 = sub_276B4EDF4(v10, a1, v11), v14 == a3) && (a3 < 1 || v13 == a2 || !memcmp(v13, a2, a3)) && v12[8] == a4)
  {
    return *(*a1 + 40 * *v12);
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::EncodedDescriptorDatabase::FindAllExtensionNumbers(uint64_t a1, uint64_t *a2, char *a3)
{
  v4 = *(a1 + 8);
  sub_276B280C4(v6, a2, a3);
  return google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindAllExtensionNumbers(v4, v6[0], v6[1], a3);
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindAllExtensionNumbers(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *a1, const void *a2, int64_t a3, const void **a4)
{
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(a1);
  v8 = *(a1 + 21);
  v9 = *(a1 + 22);
  *&v20 = a2;
  *(&v20 + 1) = a3;
  v21 = 0;
  v23 = *(a1 + 20);
  v22 = 0;
  v10 = sub_276B52E74(v8, &v20, 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3), &v23);
  if (*(a1 + 22) == v10 || (v12 = v10, v13 = sub_276B4EDF4(v10, a1, v11), v14 != a3))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v12 + 40;
    while (a3 < 1 || v13 == a2 || !memcmp(v13, a2, a3))
    {
      sub_276B112A4(a4, (v16 - 8));
      if (v16 == *(a1 + 22))
      {
        v15 = 1;
        return v15 & 1;
      }

      v13 = sub_276B4EDF4(v16, a1, v17);
      v16 += 40;
      v15 = 1;
      if (v18 != a3)
      {
        return v15 & 1;
      }
    }
  }

  return v15 & 1;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(uint64_t a1, unsigned __int8 *a2, int64_t a3)
{
  v73 = -858993459 * ((*(a1 + 8) - *a1) >> 3) - 1;
  __p[0].__r_.__value_.__r.__words[0] = a2;
  __p[0].__r_.__value_.__l.__size_ = a3;
  sub_276B264AC(__p, &v74);
  sub_276B4E948(&v73, a1, v6, &v72);
  if ((sub_276B4EA0C(a2, a3) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 703);
    v16 = google::protobuf::internal::LogMessage::operator<<(__p, "Invalid symbol name: ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, &v72);
    google::protobuf::internal::LogFinisher::operator=(&v77, &v17->__r_.__value_.__l.__data_);
LABEL_49:
    google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    v69 = 0;
    goto LABEL_50;
  }

  v9 = (a1 + 88);
  v8 = *(a1 + 88);
  v10 = (a1 + 88);
  if (v8)
  {
    v10 = (a1 + 88);
    do
    {
      v11 = sub_276B526C4((a1 + 104), &v73, (v8 + 32));
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = 8;
      }

      if (v11)
      {
        v10 = v8;
      }

      v8 = *(v8 + v12);
    }

    while (v8);
  }

  if (v10 == *(a1 + 80))
  {
    v14 = v10;
  }

  else
  {
    v13 = *v10;
    if (*v10)
    {
      do
      {
        v14 = v13;
        v13 = v13[1];
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v10[2];
        v15 = *v14 == v10;
        v10 = v14;
      }

      while (v15);
    }
  }

  sub_276B280C4(&v71, &v72, v7);
  v79 = v71;
  if (v14 != v9)
  {
    sub_276B4E948(v14 + 8, a1, v18, __p);
    sub_276B280C4(&v77, __p, v19);
    v20 = sub_276B4ED58(v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_, v79, *(&v79 + 1));
    v22 = v20;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v22)
      {
        goto LABEL_21;
      }
    }

    else if (v20)
    {
LABEL_21:
      google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 668);
      v23 = google::protobuf::internal::LogMessage::operator<<(__p, "Symbol name ");
      v24 = google::protobuf::internal::LogMessage::operator<<(v23, &v79);
      v25 = google::protobuf::internal::LogMessage::operator<<(v24, " conflicts with the existing symbol ");
      sub_276B4E948(v14 + 8, a1, v26, &v77);
      v27 = google::protobuf::internal::LogMessage::operator<<(v25, &v77);
      v28 = google::protobuf::internal::LogMessage::operator<<(v27, ".");
      google::protobuf::internal::LogFinisher::operator=(&v76, &v28->__r_.__value_.__l.__data_);
      goto LABEL_47;
    }

    v29 = v14[1];
    if (v29)
    {
      do
      {
        v30 = v29;
        v29 = *v29;
      }

      while (v29);
    }

    else
    {
      do
      {
        v30 = v14[2];
        v15 = *v30 == v14;
        v14 = v30;
      }

      while (!v15);
    }

    if (v30 != v9)
    {
      v31 = v79;
      sub_276B4E948(v30 + 8, a1, v21, __p);
      sub_276B280C4(&v77, __p, v32);
      v33 = sub_276B4ED58(v31, *(&v31 + 1), v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
      v34 = v33;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
        if (v34)
        {
          goto LABEL_31;
        }
      }

      else if (v33)
      {
LABEL_31:
        google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 682);
        v35 = google::protobuf::internal::LogMessage::operator<<(__p, "Symbol name ");
        v36 = google::protobuf::internal::LogMessage::operator<<(v35, &v79);
        v37 = google::protobuf::internal::LogMessage::operator<<(v36, " conflicts with the existing symbol ");
        sub_276B4E948(v30 + 8, a1, v38, &v77);
        v39 = google::protobuf::internal::LogMessage::operator<<(v37, &v77);
        v40 = google::protobuf::internal::LogMessage::operator<<(v39, ".");
        google::protobuf::internal::LogFinisher::operator=(&v76, &v40->__r_.__value_.__l.__data_);
        goto LABEL_47;
      }

      v9 = v30;
    }
  }

  v41 = *(a1 + 112);
  v42 = *(a1 + 120);
  __p[0].__r_.__value_.__r.__words[0] = *(a1 + 104);
  v44 = sub_276B5294C(v41, v42, &v73, __p);
  if (*(a1 + 112) == v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = -32;
  }

  sub_276B280C4(&v71, &v72, v43);
  v47 = (v44 + v45);
  v48 = *(a1 + 120);
  v79 = v71;
  if (v47 != v48)
  {
    sub_276B4E948(v47, a1, v46, __p);
    sub_276B280C4(&v77, __p, v49);
    v50 = sub_276B4ED58(v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_, v79, *(&v79 + 1));
    v52 = v50;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v52)
      {
        goto LABEL_40;
      }
    }

    else if (v50)
    {
LABEL_40:
      google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 668);
      v53 = google::protobuf::internal::LogMessage::operator<<(__p, "Symbol name ");
      v54 = google::protobuf::internal::LogMessage::operator<<(v53, &v79);
      v55 = google::protobuf::internal::LogMessage::operator<<(v54, " conflicts with the existing symbol ");
      sub_276B4E948(v47, a1, v56, &v77);
      v57 = google::protobuf::internal::LogMessage::operator<<(v55, &v77);
      v58 = google::protobuf::internal::LogMessage::operator<<(v57, ".");
      google::protobuf::internal::LogFinisher::operator=(&v76, &v58->__r_.__value_.__l.__data_);
      goto LABEL_47;
    }

    v59 = v47 + 8;
    if (v59 != v48)
    {
      v60 = v79;
      sub_276B4E948(v59, a1, v51, __p);
      sub_276B280C4(&v77, __p, v61);
      v62 = sub_276B4ED58(v60, *(&v60 + 1), v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v62)
      {
        google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 682);
        v63 = google::protobuf::internal::LogMessage::operator<<(__p, "Symbol name ");
        v64 = google::protobuf::internal::LogMessage::operator<<(v63, &v79);
        v65 = google::protobuf::internal::LogMessage::operator<<(v64, " conflicts with the existing symbol ");
        sub_276B4E948(v59, a1, v66, &v77);
        v67 = google::protobuf::internal::LogMessage::operator<<(v65, &v77);
        v68 = google::protobuf::internal::LogMessage::operator<<(v67, ".");
        google::protobuf::internal::LogFinisher::operator=(&v76, &v68->__r_.__value_.__l.__data_);
LABEL_47:
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        goto LABEL_49;
      }
    }
  }

  sub_276B529D4((a1 + 80), v9, &v73, &v73);
  v69 = 1;
LABEL_50:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (v75 < 0)
  {
    operator delete(v74);
  }

  return v69;
}

void sub_276B4E878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a32);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_276B4E948(int *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, std::string *a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 2);
  sub_276B280C4(&v10, (*a2 + 40 * *a1 + 16), a3);
  v7 = "";
  if (v11)
  {
    v7 = ".";
  }

  v9[0] = v7;
  v9[1] = v11 != 0;
  sub_276B280C4(&v8, v5, v6);
  google::protobuf::StrCat(&v10, v9, &v8, a4);
}

uint64_t sub_276B4EA0C(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  while (1)
  {
    v2 = *a1;
    if (v2 != 46 && v2 != 95)
    {
      v3 = v2 - 58;
      v4 = (v2 & 0xFFFFFFDF) - 91;
      if (v3 <= 0xFFFFFFF5 && v4 < 0xFFFFFFE6)
      {
        break;
      }
    }

    ++a1;
    if (!--a2)
    {
      return 1;
    }
  }

  return 0;
}

void google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *this)
{
  sub_276B4EE40(this);
  v2 = *(this + 5);
  if (v2)
  {
    sub_276B52F14(&v14, v2 + ((*(this + 8) - *(this + 7)) >> 5));
    v3 = *(this + 3);
    v4 = *(this + 7);
    v5 = *(this + 8);
    v16 = *(this + 6);
    sub_276B530BC(v3, this + 4, v4, v5, v14, &v16);
    sub_276B5328C(this + 7);
    *(this + 56) = v14;
    *(this + 9) = v15;
    v15 = 0;
    v14 = 0uLL;
    sub_276B2E8B0(this + 24, *(this + 4));
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 3) = this + 32;
    v17 = &v14;
    sub_276B53018(&v17);
  }

  v6 = *(this + 12);
  if (v6)
  {
    sub_276B532CC(&v14, v6 + ((*(this + 15) - *(this + 14)) >> 5));
    v7 = *(this + 10);
    v8 = *(this + 14);
    v9 = *(this + 15);
    v16 = *(this + 13);
    sub_276B5334C(v7, this + 11, v8, v9, v14, &v16);
    sub_276B5328C(this + 14);
    *(this + 7) = v14;
    *(this + 16) = v15;
    v15 = 0;
    v14 = 0uLL;
    sub_276B2E8B0(this + 80, *(this + 11));
    *(this + 11) = 0;
    *(this + 12) = 0;
    *(this + 10) = this + 88;
    v17 = &v14;
    sub_276B53018(&v17);
  }

  v10 = *(this + 19);
  if (v10)
  {
    sub_276B53488(&v14, v10 - 0x3333333333333333 * ((*(this + 22) - *(this + 21)) >> 3));
    v11 = *(this + 17);
    v12 = *(this + 21);
    v13 = *(this + 22);
    v16 = *(this + 20);
    sub_276B53674(v11, this + 18, v12, v13, v14, &v16);
    sub_276B53848(this + 21);
    *(this + 168) = v14;
    *(this + 23) = v15;
    v15 = 0;
    v14 = 0uLL;
    sub_276B2E8B0(this + 136, *(this + 18));
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = this + 144;
    v17 = &v14;
    sub_276B535D0(&v17);
  }
}

void sub_276B4EC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_276B535D0(va);
  _Unwind_Resume(a1);
}