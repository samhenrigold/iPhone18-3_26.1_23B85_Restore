void sub_1000F8530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::ExtensionSet::Swap(google::protobuf::internal::ExtensionSet *this, google::protobuf::internal::ExtensionSet *a2)
{
  if (*this == *a2)
  {
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    google::protobuf::internal::ExtensionSet::MergeFrom(&v7, a2);
    google::protobuf::internal::ExtensionSet::Clear(a2);
    google::protobuf::internal::ExtensionSet::MergeFrom(a2, this);
    google::protobuf::internal::ExtensionSet::Clear(this);
    google::protobuf::internal::ExtensionSet::MergeFrom(this, &v7);
    google::protobuf::internal::ExtensionSet::~ExtensionSet(&v7);
  }
}

void sub_1000F8604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::ExtensionSet::~ExtensionSet(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::Insert(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v3 = *(this + 4);
  v4 = *(this + 2);
  if (v3 >= 0x101)
  {
    *(&v14 + 1) = 0;
    v15 = 0;
    v16 = 0;
    LODWORD(v14) = a2;
    return (sub_1000FD190(v4, &v14, &v14) + 5);
  }

  else
  {
    v6 = *(this + 5);
    v7 = &v4[32 * v6];
    if (*(this + 5))
    {
      v8 = *(this + 5);
      do
      {
        v9 = v8 >> 1;
        v10 = &v4[32 * (v8 >> 1)];
        v12 = *v10;
        v11 = (v10 + 8);
        v8 += ~(v8 >> 1);
        if (v12 < a2)
        {
          v4 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
    }

    if (v4 == v7)
    {
      if (v6 < v3)
      {
LABEL_15:
        *(this + 5) = v6 + 1;
        *v4 = a2;
        *(v4 + 1) = 0;
        result = v4 + 8;
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        return result;
      }
    }

    else
    {
      if (*v4 == a2)
      {
        return v4 + 8;
      }

      if (v6 < v3)
      {
        memmove(v4 + 32, v4, v7 - v4);
        LOWORD(v6) = *(this + 5);
        goto LABEL_15;
      }
    }

    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v6 + 1);
    return google::protobuf::internal::ExtensionSet::Insert(this, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::IsInitialized(google::protobuf::internal::ExtensionSet *this)
{
  if (*(this + 4) < 0x101u)
  {
    if (*(this + 5))
    {
      v2 = *(this + 2);
      do
      {
        result = google::protobuf::internal::ExtensionSet::Extension::IsInitialized((v2 + 8));
        if ((result & 1) == 0)
        {
          break;
        }

        v2 += 32;
      }

      while (v2 != *(this + 2) + 32 * *(this + 5));
      return result;
    }

    return 1;
  }

  v4 = *(this + 2);
  v7 = *v4;
  v5 = (v4 + 1);
  v6 = v7;
  if (v7 == v5)
  {
    return 1;
  }

  do
  {
    result = google::protobuf::internal::ExtensionSet::Extension::IsInitialized(v6 + 5);
    if (!result)
    {
      break;
    }

    v8 = v6[1];
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
        v9 = v6[2];
        v10 = *v9 == v6;
        v6 = v9;
      }

      while (!v10);
    }

    v6 = v9;
  }

  while (v9 != v5);
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::IsInitialized(uint64_t **this)
{
  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)] != 10)
  {
    return 1;
  }

  if (*(this + 9) == 1)
  {
    v2 = *this;
    if (*(*this + 2) >= 1)
    {
      v3 = 0;
      while (1)
      {
        v4 = *(*(v2 + 2) + 8 * v3 + 8);
        if (((*(*v4 + 48))(v4) & 1) == 0)
        {
          break;
        }

        ++v3;
        v2 = *this;
        if (v3 >= *(*this + 2))
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (*(this + 10))
  {
    return 1;
  }

  v6 = **this;
  if ((*(this + 10) & 0x10) != 0)
  {
    return ((*(v6 + 72))() & 1) != 0;
  }

  result = (*(v6 + 48))();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[*a5];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v10 > 5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 82);
        v11 = google::protobuf::internal::LogMessage::operator<<(v13, "can't reach here.");
        google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      }

      else
      {
        result = 1;
        if (((1 << v10) & 0x1C) == 0)
        {
          *a6 = 1;
          return result;
        }
      }
    }

    return v10 == a2;
  }

  return result;
}

void sub_1000F89FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F8A18(char **this)
{
  v2 = *this;
  if (*this >= this[1])
  {
    TagFallback = 0;
    goto LABEL_5;
  }

  TagFallback = *v2;
  if (*v2 < 0)
  {
LABEL_5:
    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
    goto LABEL_6;
  }

  *this = v2 + 1;
LABEL_6:
  *(this + 8) = TagFallback;
  return TagFallback;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::_InternalSerialize(google::protobuf::internal::ExtensionSet *this, int a2, int a3, unsigned __int8 *a4, google::protobuf::io::EpsCopyOutputStream *a5, __n128 a6)
{
  v8 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v19 = *(v8 + 1);
    v18 = v8 + 2;
    v17 = v19;
    if (v19)
    {
      v20 = v18;
      do
      {
        if (*(v17 + 32) >= a2)
        {
          v20 = v17;
        }

        v17 = *(v17 + 8 * (*(v17 + 32) < a2));
      }

      while (v17);
      if (v20 != v18)
      {
        do
        {
          v21 = *(v20 + 8);
          if (v21 >= a3)
          {
            break;
          }

          a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v20 + 5, v21, a4, a5, a6);
          v22 = v20[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v20[2];
              v24 = *v23 == v20;
              v20 = v23;
            }

            while (!v24);
          }

          v20 = v23;
        }

        while (v23 != v18);
      }
    }
  }

  else
  {
    v9 = *(this + 5);
    v10 = &v8[8 * v9];
    while (v9)
    {
      v11 = v9 >> 1;
      v12 = &v8[8 * (v9 >> 1)];
      v14 = *v12;
      v13 = (v12 + 8);
      v9 += ~(v9 >> 1);
      if (v14 < a2)
      {
        v8 = v13;
      }

      else
      {
        v9 = v11;
      }
    }

    while (v8 != v10)
    {
      v15 = *v8;
      if (v15 >= a3)
      {
        break;
      }

      a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v8 + 1, v15, a4, a5, a6);
      v8 += 8;
    }
  }

  return a4;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(int **this, uint64_t a2, unsigned __int8 *a3, google::protobuf::io::EpsCopyOutputStream *a4, __n128 a5)
{
  v6 = a3;
  v7 = a2;
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      if (*(this + 3))
      {
        if (*a4 <= a3)
        {
          v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
        }

        v9 = 8 * v7;
        if ((8 * v7) > 0x7F)
        {
          *v6 = v9 | 0x82;
          v25 = v9 >> 7;
          if (v9 >> 14)
          {
            v10 = v6 + 2;
            do
            {
              *(v10 - 1) = v25 | 0x80;
              v26 = v25 >> 7;
              ++v10;
              v27 = v25 >> 14;
              v25 >>= 7;
            }

            while (v27);
            *(v10 - 1) = v26;
          }

          else
          {
            v6[1] = v25;
            v10 = v6 + 2;
          }
        }

        else
        {
          *v6 = v9 | 2;
          v10 = v6 + 1;
        }

        v28 = *(this + 3);
        if (v28 > 0x7F)
        {
          *v10 = v28 | 0x80;
          v29 = v28 >> 7;
          if (v28 >> 14)
          {
            v6 = v10 + 2;
            do
            {
              *(v6 - 1) = v29 | 0x80;
              v30 = v29 >> 7;
              ++v6;
              v31 = v29 >> 14;
              v29 >>= 7;
            }

            while (v31);
            *(v6 - 1) = v30;
          }

          else
          {
            v10[1] = v29;
            v6 = v10 + 2;
          }
        }

        else
        {
          *v10 = v28;
          v6 = v10 + 1;
        }

        switch(*(this + 8))
        {
          case 1:
            v291 = *this;
            if (**this >= 1)
            {
              v292 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v291 = *this;
                }

                *v6 = *(*(v291 + 8) + 8 * v292);
                v6 += 8;
                ++v292;
                v291 = *this;
              }

              while (v292 < **this);
            }

            break;
          case 2:
            v293 = *this;
            if (**this >= 1)
            {
              v294 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v293 = *this;
                }

                *v6 = *(*(v293 + 8) + 4 * v294);
                v6 += 4;
                ++v294;
                v293 = *this;
              }

              while (v294 < **this);
            }

            break;
          case 3:
            v275 = *this;
            if (**this >= 1)
            {
              v276 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v275 = *this;
                }

                v277 = *(*(v275 + 8) + 8 * v276);
                if (v277 > 0x7F)
                {
                  *v6 = v277 | 0x80;
                  v278 = v277 >> 7;
                  if (v277 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v278 | 0x80;
                      v279 = v278 >> 7;
                      ++v6;
                      v280 = v278 >> 14;
                      v278 >>= 7;
                    }

                    while (v280);
                    *(v6 - 1) = v279;
                  }

                  else
                  {
                    v6[1] = v278;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v277;
                }

                ++v276;
                v275 = *this;
              }

              while (v276 < **this);
            }

            break;
          case 4:
            v283 = *this;
            if (**this >= 1)
            {
              v284 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v283 = *this;
                }

                v285 = *(*(v283 + 8) + 8 * v284);
                if (v285 > 0x7F)
                {
                  *v6 = v285 | 0x80;
                  v286 = v285 >> 7;
                  if (v285 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v286 | 0x80;
                      v287 = v286 >> 7;
                      ++v6;
                      v288 = v286 >> 14;
                      v286 >>= 7;
                    }

                    while (v288);
                    *(v6 - 1) = v287;
                  }

                  else
                  {
                    v6[1] = v286;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v285;
                }

                ++v284;
                v283 = *this;
              }

              while (v284 < **this);
            }

            break;
          case 5:
            v263 = *this;
            if (**this >= 1)
            {
              v264 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v263 = *this;
                }

                v265 = *(*(v263 + 8) + 4 * v264);
                if (v265 > 0x7F)
                {
                  *v6 = v265 | 0x80;
                  v266 = v265 >> 7;
                  if (v265 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v266 | 0x80;
                      v267 = v266 >> 7;
                      ++v6;
                      v268 = v266 >> 14;
                      v266 >>= 7;
                    }

                    while (v268);
                    *(v6 - 1) = v267;
                  }

                  else
                  {
                    v6[1] = v266;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v265;
                }

                ++v264;
                v263 = *this;
              }

              while (v264 < **this);
            }

            break;
          case 6:
            v308 = *this;
            if (**this >= 1)
            {
              v309 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v308 = *this;
                }

                *v6 = *(*(v308 + 8) + 8 * v309);
                v6 += 8;
                ++v309;
                v308 = *this;
              }

              while (v309 < **this);
            }

            break;
          case 7:
            v310 = *this;
            if (**this >= 1)
            {
              v311 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v310 = *this;
                }

                *v6 = *(*(v310 + 8) + 4 * v311);
                v6 += 4;
                ++v311;
                v310 = *this;
              }

              while (v311 < **this);
            }

            break;
          case 8:
            v289 = *this;
            if (**this >= 1)
            {
              v290 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v289 = *this;
                }

                *v6++ = *(*(v289 + 8) + v290++);
                v289 = *this;
              }

              while (v290 < **this);
            }

            break;
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
            google::protobuf::internal::LogMessage::LogMessage(v315, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 1966);
            v32 = google::protobuf::internal::LogMessage::operator<<(v315, "Non-primitive types can't be packed.");
            google::protobuf::internal::LogFinisher::operator=(&v314, &v32->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v315[0].__r_.__value_.__l.__data_);
            break;
          case 0xD:
            v269 = *this;
            if (**this >= 1)
            {
              v270 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v269 = *this;
                }

                v271 = *(*(v269 + 8) + 4 * v270);
                if (v271 > 0x7F)
                {
                  *v6 = v271 | 0x80;
                  v272 = v271 >> 7;
                  if (v271 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v272 | 0x80;
                      v273 = v272 >> 7;
                      ++v6;
                      v274 = v272 >> 14;
                      v272 >>= 7;
                    }

                    while (v274);
                    *(v6 - 1) = v273;
                  }

                  else
                  {
                    v6[1] = v272;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v271;
                }

                ++v270;
                v269 = *this;
              }

              while (v270 < **this);
            }

            break;
          case 0xE:
            v302 = *this;
            if (**this >= 1)
            {
              v303 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v302 = *this;
                }

                v304 = *(*(v302 + 8) + 4 * v303);
                if (v304 > 0x7F)
                {
                  *v6 = v304 | 0x80;
                  v305 = v304 >> 7;
                  if (v304 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v305 | 0x80;
                      v306 = v305 >> 7;
                      ++v6;
                      v307 = v305 >> 14;
                      v305 >>= 7;
                    }

                    while (v307);
                    *(v6 - 1) = v306;
                  }

                  else
                  {
                    v6[1] = v305;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v304;
                }

                ++v303;
                v302 = *this;
              }

              while (v303 < **this);
            }

            break;
          case 0xF:
            v261 = *this;
            if (**this >= 1)
            {
              v262 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v261 = *this;
                }

                *v6 = *(*(v261 + 8) + 4 * v262);
                v6 += 4;
                ++v262;
                v261 = *this;
              }

              while (v262 < **this);
            }

            break;
          case 0x10:
            v281 = *this;
            if (**this >= 1)
            {
              v282 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v281 = *this;
                }

                *v6 = *(*(v281 + 8) + 8 * v282);
                v6 += 8;
                ++v282;
                v281 = *this;
              }

              while (v282 < **this);
            }

            break;
          case 0x11:
            v254 = *this;
            if (**this >= 1)
            {
              v255 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v254 = *this;
                }

                v256 = *(*(v254 + 8) + 4 * v255);
                v257 = (2 * v256) ^ (v256 >> 31);
                if (v257 > 0x7F)
                {
                  *v6 = v257 | 0x80;
                  v258 = v257 >> 7;
                  if (v257 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v258 | 0x80;
                      v259 = v258 >> 7;
                      ++v6;
                      v260 = v258 >> 14;
                      v258 >>= 7;
                    }

                    while (v260);
                    *(v6 - 1) = v259;
                  }

                  else
                  {
                    v6[1] = v258;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v257;
                }

                ++v255;
                v254 = *this;
              }

              while (v255 < **this);
            }

            break;
          case 0x12:
            v295 = *this;
            if (**this >= 1)
            {
              v296 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v295 = *this;
                }

                v297 = *(*(v295 + 8) + 8 * v296);
                v298 = (2 * v297) ^ (v297 >> 63);
                if (v298 > 0x7F)
                {
                  *v6 = v298 | 0x80;
                  v299 = v298 >> 7;
                  if (v298 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v299 | 0x80;
                      v300 = v299 >> 7;
                      ++v6;
                      v301 = v299 >> 14;
                      v299 >>= 7;
                    }

                    while (v301);
                    *(v6 - 1) = v300;
                  }

                  else
                  {
                    v6[1] = v299;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v298;
                }

                ++v296;
                v295 = *this;
              }

              while (v296 < **this);
            }

            break;
          default:
            return v6;
        }
      }
    }

    else
    {
      switch(*(this + 8))
      {
        case 1:
          v12 = *this;
          if (**this >= 1)
          {
            v13 = 0;
            v14 = 8 * a2;
            v15 = (8 * a2) | 0x81;
            v16 = (a2 >> 4) & 0x1FFFFFF;
            v17 = (8 * a2) | 1;
            v18 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v12 = *this;
              }

              v19 = *(*(v12 + 8) + 8 * v13);
              if (v14 > 0x7F)
              {
                *v6 = v15;
                if (v14 >= 0x4000)
                {
                  v20 = v6 + 2;
                  v21 = v16;
                  do
                  {
                    *(v20 - 1) = v21 | 0x80;
                    v22 = v21 >> 7;
                    v20 = (v20 + 1);
                    v23 = v21 >> 14;
                    v21 >>= 7;
                  }

                  while (v23);
                  *(v20 - 1) = v22;
                }

                else
                {
                  v6[1] = v18;
                  v20 = v6 + 2;
                }
              }

              else
              {
                *v6 = v17;
                v20 = v6 + 1;
              }

              *v20 = v19;
              v6 = (v20 + 1);
              ++v13;
              v12 = *this;
            }

            while (v13 < **this);
          }

          break;
        case 2:
          v168 = *this;
          if (**this >= 1)
          {
            v169 = 0;
            v170 = 8 * a2;
            v171 = (a2 >> 4) & 0x1FFFFFF;
            v172 = (8 * a2) | 5;
            v173 = (8 * a2) >> 7;
            v174 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v168 = *this;
              }

              v175 = *(*(v168 + 8) + 4 * v169);
              if (v170 > 0x7F)
              {
                *v6 = v174;
                if (v170 >= 0x4000)
                {
                  v176 = v6 + 2;
                  v177 = v171;
                  do
                  {
                    *(v176 - 1) = v177 | 0x80;
                    v178 = v177 >> 7;
                    v176 = (v176 + 1);
                    v179 = v177 >> 14;
                    v177 >>= 7;
                  }

                  while (v179);
                  *(v176 - 1) = v178;
                }

                else
                {
                  v6[1] = v173;
                  v176 = v6 + 2;
                }
              }

              else
              {
                *v6 = v172;
                v176 = v6 + 1;
              }

              *v176 = v175;
              v6 = (v176 + 1);
              ++v169;
              v168 = *this;
            }

            while (v169 < **this);
          }

          break;
        case 3:
          v113 = *this;
          if (**this >= 1)
          {
            v114 = 0;
            v115 = 8 * a2;
            v116 = (8 * a2) | 0x80;
            v117 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v113 = *this;
              }

              v118 = *(*(v113 + 8) + 8 * v114);
              if (v115 > 0x7F)
              {
                *v6 = v116;
                if (v115 >= 0x4000)
                {
                  v119 = v6 + 2;
                  v120 = v117;
                  do
                  {
                    *(v119 - 1) = v120 | 0x80;
                    v121 = v120 >> 7;
                    ++v119;
                    v122 = v120 >> 14;
                    v120 >>= 7;
                  }

                  while (v122);
                  *(v119 - 1) = v121;
                }

                else
                {
                  v6[1] = v115 >> 7;
                  v119 = v6 + 2;
                }
              }

              else
              {
                v119 = v6 + 1;
                *v6 = v115;
              }

              if (v118 > 0x7F)
              {
                *v119 = v118 | 0x80;
                v123 = v118 >> 7;
                if (v118 >> 14)
                {
                  v6 = v119 + 2;
                  do
                  {
                    *(v6 - 1) = v123 | 0x80;
                    v124 = v123 >> 7;
                    ++v6;
                    v125 = v123 >> 14;
                    v123 >>= 7;
                  }

                  while (v125);
                  *(v6 - 1) = v124;
                }

                else
                {
                  v119[1] = v123;
                  v6 = v119 + 2;
                }
              }

              else
              {
                *v119 = v118;
                v6 = v119 + 1;
              }

              ++v114;
              v113 = *this;
            }

            while (v114 < **this);
          }

          break;
        case 4:
          v144 = *this;
          if (**this >= 1)
          {
            v145 = 0;
            v146 = 8 * a2;
            v147 = (8 * a2) | 0x80;
            v148 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v144 = *this;
              }

              v149 = *(*(v144 + 8) + 8 * v145);
              if (v146 > 0x7F)
              {
                *v6 = v147;
                if (v146 >= 0x4000)
                {
                  v150 = v6 + 2;
                  v151 = v148;
                  do
                  {
                    *(v150 - 1) = v151 | 0x80;
                    v152 = v151 >> 7;
                    ++v150;
                    v153 = v151 >> 14;
                    v151 >>= 7;
                  }

                  while (v153);
                  *(v150 - 1) = v152;
                }

                else
                {
                  v6[1] = v146 >> 7;
                  v150 = v6 + 2;
                }
              }

              else
              {
                v150 = v6 + 1;
                *v6 = v146;
              }

              if (v149 > 0x7F)
              {
                *v150 = v149 | 0x80;
                v154 = v149 >> 7;
                if (v149 >> 14)
                {
                  v6 = v150 + 2;
                  do
                  {
                    *(v6 - 1) = v154 | 0x80;
                    v155 = v154 >> 7;
                    ++v6;
                    v156 = v154 >> 14;
                    v154 >>= 7;
                  }

                  while (v156);
                  *(v6 - 1) = v155;
                }

                else
                {
                  v150[1] = v154;
                  v6 = v150 + 2;
                }
              }

              else
              {
                *v150 = v149;
                v6 = v150 + 1;
              }

              ++v145;
              v144 = *this;
            }

            while (v145 < **this);
          }

          break;
        case 5:
          v66 = *this;
          if (**this >= 1)
          {
            v67 = 0;
            v68 = 8 * a2;
            v69 = (8 * a2) | 0x80;
            v70 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v66 = *this;
              }

              v71 = *(*(v66 + 8) + 4 * v67);
              if (v68 > 0x7F)
              {
                *v6 = v69;
                if (v68 >= 0x4000)
                {
                  v72 = v6 + 2;
                  v73 = v70;
                  do
                  {
                    *(v72 - 1) = v73 | 0x80;
                    v74 = v73 >> 7;
                    ++v72;
                    v75 = v73 >> 14;
                    v73 >>= 7;
                  }

                  while (v75);
                  *(v72 - 1) = v74;
                }

                else
                {
                  v6[1] = v68 >> 7;
                  v72 = v6 + 2;
                }
              }

              else
              {
                v72 = v6 + 1;
                *v6 = v68;
              }

              if (v71 > 0x7F)
              {
                *v72 = v71 | 0x80;
                v76 = v71 >> 7;
                if (v71 >> 14)
                {
                  v6 = v72 + 2;
                  do
                  {
                    *(v6 - 1) = v76 | 0x80;
                    v77 = v76 >> 7;
                    ++v6;
                    v78 = v76 >> 14;
                    v76 >>= 7;
                  }

                  while (v78);
                  *(v6 - 1) = v77;
                }

                else
                {
                  v72[1] = v76;
                  v6 = v72 + 2;
                }
              }

              else
              {
                *v72 = v71;
                v6 = v72 + 1;
              }

              ++v67;
              v66 = *this;
            }

            while (v67 < **this);
          }

          break;
        case 6:
          v198 = *this;
          if (**this >= 1)
          {
            v199 = 0;
            v200 = 8 * a2;
            v201 = (8 * a2) | 0x81;
            v202 = (a2 >> 4) & 0x1FFFFFF;
            v203 = (8 * a2) | 1;
            v204 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v198 = *this;
              }

              v205 = *(*(v198 + 8) + 8 * v199);
              if (v200 > 0x7F)
              {
                *v6 = v201;
                if (v200 >= 0x4000)
                {
                  v206 = v6 + 2;
                  v207 = v202;
                  do
                  {
                    *(v206 - 1) = v207 | 0x80;
                    v208 = v207 >> 7;
                    v206 = (v206 + 1);
                    v209 = v207 >> 14;
                    v207 >>= 7;
                  }

                  while (v209);
                  *(v206 - 1) = v208;
                }

                else
                {
                  v6[1] = v204;
                  v206 = v6 + 2;
                }
              }

              else
              {
                *v6 = v203;
                v206 = v6 + 1;
              }

              *v206 = v205;
              v6 = (v206 + 1);
              ++v199;
              v198 = *this;
            }

            while (v199 < **this);
          }

          break;
        case 7:
          v223 = *this;
          if (**this >= 1)
          {
            v224 = 0;
            v225 = 8 * a2;
            v226 = (a2 >> 4) & 0x1FFFFFF;
            v227 = (8 * a2) | 5;
            v228 = (8 * a2) >> 7;
            v229 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v223 = *this;
              }

              v230 = *(*(v223 + 8) + 4 * v224);
              if (v225 > 0x7F)
              {
                *v6 = v229;
                if (v225 >= 0x4000)
                {
                  v231 = v6 + 2;
                  v232 = v226;
                  do
                  {
                    *(v231 - 1) = v232 | 0x80;
                    v233 = v232 >> 7;
                    v231 = (v231 + 1);
                    v234 = v232 >> 14;
                    v232 >>= 7;
                  }

                  while (v234);
                  *(v231 - 1) = v233;
                }

                else
                {
                  v6[1] = v228;
                  v231 = v6 + 2;
                }
              }

              else
              {
                *v6 = v227;
                v231 = v6 + 1;
              }

              *v231 = v230;
              v6 = (v231 + 1);
              ++v224;
              v223 = *this;
            }

            while (v224 < **this);
          }

          break;
        case 8:
          v157 = *this;
          if (**this >= 1)
          {
            v158 = 0;
            v159 = 8 * a2;
            v160 = (8 * a2) | 0x80;
            v161 = (a2 >> 4) & 0x1FFFFFF;
            v162 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v157 = *this;
              }

              v163 = *(*(v157 + 8) + v158);
              if (v159 > 0x7F)
              {
                *v6 = v160;
                if (v159 >= 0x4000)
                {
                  v164 = v6 + 2;
                  v165 = v161;
                  do
                  {
                    *(v164 - 1) = v165 | 0x80;
                    v166 = v165 >> 7;
                    ++v164;
                    v167 = v165 >> 14;
                    v165 >>= 7;
                  }

                  while (v167);
                  *(v164 - 1) = v166;
                }

                else
                {
                  v6[1] = v162;
                  v164 = v6 + 2;
                }
              }

              else
              {
                *v6 = v159;
                v164 = v6 + 1;
              }

              *v164 = v163;
              v6 = v164 + 1;
              ++v158;
              v157 = *this;
            }

            while (v158 < **this);
          }

          break;
        case 9:
          v252 = *this;
          if ((*this)[2] >= 1)
          {
            v253 = 0;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v252 = *this;
              }

              v6 = sub_1000D92B8(a4, v7, *(*(v252 + 16) + 8 * v253++ + 8), v6);
              v252 = *this;
            }

            while (v253 < (*this)[2]);
          }

          break;
        case 0xA:
          v96 = *this;
          if ((*this)[2] >= 1)
          {
            v97 = 0;
            v98 = 8 * a2;
            v313 = (8 * a2) | 0x83;
            v99 = (a2 >> 4) & 0x1FFFFFF;
            v100 = (8 * a2) | 3;
            v101 = (8 * a2) | 4;
            v102 = (8 * a2) >> 7;
            v103 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v96 = *this;
              }

              v104 = *(*(v96 + 16) + 8 * v97 + 8);
              if (v98 > 0x7F)
              {
                *v6 = v313;
                if (v98 >= 0x4000)
                {
                  v105 = v6 + 2;
                  v106 = v99;
                  do
                  {
                    *(v105 - 1) = v106 | 0x80;
                    v107 = v106 >> 7;
                    ++v105;
                    v108 = v106 >> 14;
                    v106 >>= 7;
                  }

                  while (v108);
                  *(v105 - 1) = v107;
                }

                else
                {
                  v6[1] = v102;
                  v105 = v6 + 2;
                }
              }

              else
              {
                v105 = v6 + 1;
                *v6 = v100;
              }

              v109 = (*(*v104 + 96))(v104, v105, a4);
              if (*a4 <= v109)
              {
                v109 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v109);
              }

              if (v98 > 0x7F)
              {
                *v109 = v103;
                if (v98 >= 0x4000)
                {
                  v6 = v109 + 2;
                  v110 = v99;
                  do
                  {
                    *(v6 - 1) = v110 | 0x80;
                    v111 = v110 >> 7;
                    ++v6;
                    v112 = v110 >> 14;
                    v110 >>= 7;
                  }

                  while (v112);
                  *(v6 - 1) = v111;
                }

                else
                {
                  v109[1] = v102;
                  v6 = v109 + 2;
                }
              }

              else
              {
                v6 = v109 + 1;
                *v109 = v101;
              }

              ++v97;
              v96 = *this;
            }

            while (v97 < (*this)[2]);
          }

          break;
        case 0xB:
          v235 = *this;
          if ((*this)[2] >= 1)
          {
            v236 = 0;
            v237 = 8 * a2;
            v238 = (a2 >> 4) & 0x1FFFFFF;
            v239 = (8 * a2) | 2;
            v240 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v235 = *this;
              }

              v241 = *(*(v235 + 16) + 8 * v236 + 8);
              if (v237 > 0x7F)
              {
                *v6 = v240;
                if (v237 >= 0x4000)
                {
                  v242 = v6 + 2;
                  v243 = v238;
                  do
                  {
                    *(v242 - 1) = v243 | 0x80;
                    v244 = v243 >> 7;
                    ++v242;
                    v245 = v243 >> 14;
                    v243 >>= 7;
                  }

                  while (v245);
                  *(v242 - 1) = v244;
                }

                else
                {
                  v6[1] = v237 >> 7;
                  v242 = v6 + 2;
                }
              }

              else
              {
                v242 = v6 + 1;
                *v6 = v239;
              }

              v246 = (*(*v241 + 80))(v241);
              if (v246 > 0x7F)
              {
                *v242 = v246 | 0x80;
                v248 = v246 >> 7;
                if (v246 >> 14)
                {
                  v247 = v242 + 2;
                  do
                  {
                    *(v247 - 1) = v248 | 0x80;
                    v249 = v248 >> 7;
                    ++v247;
                    v250 = v248 >> 14;
                    v248 >>= 7;
                  }

                  while (v250);
                  *(v247 - 1) = v249;
                }

                else
                {
                  v242[1] = v248;
                  v247 = v242 + 2;
                }
              }

              else
              {
                *v242 = v246;
                v247 = v242 + 1;
              }

              v6 = (*(*v241 + 96))(v241, v247, a4);
              ++v236;
              v235 = *this;
            }

            while (v236 < (*this)[2]);
          }

          break;
        case 0xC:
          v63 = *this;
          if ((*this)[2] >= 1)
          {
            v64 = 0;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v63 = *this;
              }

              v6 = sub_1000D92B8(a4, v7, *(*(v63 + 16) + 8 * v64++ + 8), v6);
              v63 = *this;
            }

            while (v64 < (*this)[2]);
          }

          break;
        case 0xD:
          v79 = *this;
          if (**this >= 1)
          {
            v80 = 0;
            v81 = 8 * a2;
            v82 = (8 * a2) | 0x80;
            v83 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v79 = *this;
              }

              v84 = *(*(v79 + 8) + 4 * v80);
              if (v81 > 0x7F)
              {
                *v6 = v82;
                if (v81 >= 0x4000)
                {
                  v85 = v6 + 2;
                  v86 = v83;
                  do
                  {
                    *(v85 - 1) = v86 | 0x80;
                    v87 = v86 >> 7;
                    ++v85;
                    v88 = v86 >> 14;
                    v86 >>= 7;
                  }

                  while (v88);
                  *(v85 - 1) = v87;
                }

                else
                {
                  v6[1] = v81 >> 7;
                  v85 = v6 + 2;
                }
              }

              else
              {
                v85 = v6 + 1;
                *v6 = v81;
              }

              if (v84 > 0x7F)
              {
                *v85 = v84 | 0x80;
                v89 = v84 >> 7;
                if (v84 >> 14)
                {
                  v6 = v85 + 2;
                  do
                  {
                    *(v6 - 1) = v89 | 0x80;
                    v90 = v89 >> 7;
                    ++v6;
                    v91 = v89 >> 14;
                    v89 >>= 7;
                  }

                  while (v91);
                  *(v6 - 1) = v90;
                }

                else
                {
                  v85[1] = v89;
                  v6 = v85 + 2;
                }
              }

              else
              {
                *v85 = v84;
                v6 = v85 + 1;
              }

              ++v80;
              v79 = *this;
            }

            while (v80 < **this);
          }

          break;
        case 0xE:
          v210 = *this;
          if (**this >= 1)
          {
            v211 = 0;
            v212 = 8 * a2;
            v213 = (8 * a2) | 0x80;
            v214 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v210 = *this;
              }

              v215 = *(*(v210 + 8) + 4 * v211);
              if (v212 > 0x7F)
              {
                *v6 = v213;
                if (v212 >= 0x4000)
                {
                  v216 = v6 + 2;
                  v217 = v214;
                  do
                  {
                    *(v216 - 1) = v217 | 0x80;
                    v218 = v217 >> 7;
                    ++v216;
                    v219 = v217 >> 14;
                    v217 >>= 7;
                  }

                  while (v219);
                  *(v216 - 1) = v218;
                }

                else
                {
                  v6[1] = v212 >> 7;
                  v216 = v6 + 2;
                }
              }

              else
              {
                v216 = v6 + 1;
                *v6 = v212;
              }

              if (v215 > 0x7F)
              {
                *v216 = v215 | 0x80;
                v220 = v215 >> 7;
                if (v215 >> 14)
                {
                  v6 = v216 + 2;
                  do
                  {
                    *(v6 - 1) = v220 | 0x80;
                    v221 = v220 >> 7;
                    ++v6;
                    v222 = v220 >> 14;
                    v220 >>= 7;
                  }

                  while (v222);
                  *(v6 - 1) = v221;
                }

                else
                {
                  v216[1] = v220;
                  v6 = v216 + 2;
                }
              }

              else
              {
                *v216 = v215;
                v6 = v216 + 1;
              }

              ++v211;
              v210 = *this;
            }

            while (v211 < **this);
          }

          break;
        case 0xF:
          v48 = *this;
          if (**this >= 1)
          {
            v49 = 0;
            v50 = 8 * a2;
            v51 = (a2 >> 4) & 0x1FFFFFF;
            v52 = (8 * a2) | 5;
            v53 = (8 * a2) >> 7;
            v54 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v48 = *this;
              }

              v55 = *(*(v48 + 8) + 4 * v49);
              if (v50 > 0x7F)
              {
                *v6 = v54;
                if (v50 >= 0x4000)
                {
                  v56 = v6 + 2;
                  v57 = v51;
                  do
                  {
                    *(v56 - 1) = v57 | 0x80;
                    v58 = v57 >> 7;
                    v56 = (v56 + 1);
                    v59 = v57 >> 14;
                    v57 >>= 7;
                  }

                  while (v59);
                  *(v56 - 1) = v58;
                }

                else
                {
                  v6[1] = v53;
                  v56 = v6 + 2;
                }
              }

              else
              {
                *v6 = v52;
                v56 = v6 + 1;
              }

              *v56 = v55;
              v6 = (v56 + 1);
              ++v49;
              v48 = *this;
            }

            while (v49 < **this);
          }

          break;
        case 0x10:
          v129 = *this;
          if (**this >= 1)
          {
            v130 = 0;
            v131 = 8 * a2;
            v132 = (8 * a2) | 0x81;
            v133 = (a2 >> 4) & 0x1FFFFFF;
            v134 = (8 * a2) | 1;
            v135 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v129 = *this;
              }

              v136 = *(*(v129 + 8) + 8 * v130);
              if (v131 > 0x7F)
              {
                *v6 = v132;
                if (v131 >= 0x4000)
                {
                  v137 = v6 + 2;
                  v138 = v133;
                  do
                  {
                    *(v137 - 1) = v138 | 0x80;
                    v139 = v138 >> 7;
                    v137 = (v137 + 1);
                    v140 = v138 >> 14;
                    v138 >>= 7;
                  }

                  while (v140);
                  *(v137 - 1) = v139;
                }

                else
                {
                  v6[1] = v135;
                  v137 = v6 + 2;
                }
              }

              else
              {
                *v6 = v134;
                v137 = v6 + 1;
              }

              *v137 = v136;
              v6 = (v137 + 1);
              ++v130;
              v129 = *this;
            }

            while (v130 < **this);
          }

          break;
        case 0x11:
          v33 = *this;
          if (**this >= 1)
          {
            v34 = 0;
            v35 = 8 * a2;
            v36 = (8 * a2) | 0x80;
            v37 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v33 = *this;
              }

              v38 = *(*(v33 + 8) + 4 * v34);
              if (v35 > 0x7F)
              {
                *v6 = v36;
                if (v35 >= 0x4000)
                {
                  v39 = v6 + 2;
                  v40 = v37;
                  do
                  {
                    *(v39 - 1) = v40 | 0x80;
                    v41 = v40 >> 7;
                    ++v39;
                    v42 = v40 >> 14;
                    v40 >>= 7;
                  }

                  while (v42);
                  *(v39 - 1) = v41;
                }

                else
                {
                  v6[1] = v35 >> 7;
                  v39 = v6 + 2;
                }
              }

              else
              {
                v39 = v6 + 1;
                *v6 = v35;
              }

              v43 = (2 * v38) ^ (v38 >> 31);
              if (v43 > 0x7F)
              {
                *v39 = v43 | 0x80;
                v44 = v43 >> 7;
                if (v43 >> 14)
                {
                  v6 = v39 + 2;
                  do
                  {
                    *(v6 - 1) = v44 | 0x80;
                    v45 = v44 >> 7;
                    ++v6;
                    v46 = v44 >> 14;
                    v44 >>= 7;
                  }

                  while (v46);
                  *(v6 - 1) = v45;
                }

                else
                {
                  v39[1] = v44;
                  v6 = v39 + 2;
                }
              }

              else
              {
                *v39 = v43;
                v6 = v39 + 1;
              }

              ++v34;
              v33 = *this;
            }

            while (v34 < **this);
          }

          break;
        case 0x12:
          v183 = *this;
          if (**this >= 1)
          {
            v184 = 0;
            v185 = 8 * a2;
            v186 = (8 * a2) | 0x80;
            v187 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v183 = *this;
              }

              v188 = *(*(v183 + 8) + 8 * v184);
              if (v185 > 0x7F)
              {
                *v6 = v186;
                if (v185 >= 0x4000)
                {
                  v189 = v6 + 2;
                  v190 = v187;
                  do
                  {
                    *(v189 - 1) = v190 | 0x80;
                    v191 = v190 >> 7;
                    ++v189;
                    v192 = v190 >> 14;
                    v190 >>= 7;
                  }

                  while (v192);
                  *(v189 - 1) = v191;
                }

                else
                {
                  v6[1] = v185 >> 7;
                  v189 = v6 + 2;
                }
              }

              else
              {
                v189 = v6 + 1;
                *v6 = v185;
              }

              v193 = (2 * v188) ^ (v188 >> 63);
              if (v193 > 0x7F)
              {
                *v189 = v193 | 0x80;
                v194 = v193 >> 7;
                if (v193 >> 14)
                {
                  v6 = v189 + 2;
                  do
                  {
                    *(v6 - 1) = v194 | 0x80;
                    v195 = v194 >> 7;
                    ++v6;
                    v196 = v194 >> 14;
                    v194 >>= 7;
                  }

                  while (v196);
                  *(v6 - 1) = v195;
                }

                else
                {
                  v189[1] = v194;
                  v6 = v189 + 2;
                }
              }

              else
              {
                *v189 = v193;
                v6 = v189 + 1;
              }

              ++v184;
              v183 = *this;
            }

            while (v184 < **this);
          }

          break;
        default:
          return v6;
      }
    }

    return v6;
  }

  if (*(this + 10))
  {
    return v6;
  }

  switch(*(this + 8))
  {
    case 1:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v181 = *this;

      return sub_1000FBF00(v7, v6, v181);
    case 2:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v182 = *this;

      return sub_1000FBE90(v7, v6, v182);
    case 3:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v126 = *this;
      v127 = v7;
      v128 = v6;

      return sub_1000FBAD8(v127, v126, v128);
    case 4:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v126 = *this;
      v127 = v7;
      v128 = v6;

      return sub_1000FBAD8(v127, v126, v128);
    case 5:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v93 = *this;
      v94 = v7;
      v95 = v6;

      goto LABEL_148;
    case 6:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v141 = *this;
      v142 = v7;
      v143 = v6;

      goto LABEL_213;
    case 7:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v60 = *this;
      v61 = v7;
      v62 = v6;

      goto LABEL_86;
    case 8:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v180 = *this;

      return sub_1000FBF68(v7, v180, v6);
    case 9:
    case 0xC:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v24 = *this;

      return sub_1000D92B8(a4, v7, v24, v6);
    case 0xA:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v251 = *this;

      return sub_1000FBFCC(v7, v251, v6, a4);
    case 0xB:
      if ((*(this + 10) & 0x10) != 0)
      {
        v312 = *(**this + 136);

        return v312(a5);
      }

      else
      {
        if (*a4 <= a3)
        {
          v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
        }

        v65 = *this;

        return sub_1000FC0FC(v7, v65, v6, a4);
      }

    case 0xD:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v92 = *this;

      return sub_1000FBB8C(v7, v92, v6);
    case 0xE:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v93 = *this;
      v94 = v7;
      v95 = v6;

LABEL_148:
      result = sub_1000FBA20(v94, v93, v95);
      break;
    case 0xF:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v60 = *this;
      v61 = v7;
      v62 = v6;

LABEL_86:
      result = sub_1000FBDB8(v61, v60, v62);
      break;
    case 0x10:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v141 = *this;
      v142 = v7;
      v143 = v6;

LABEL_213:
      result = sub_1000FBE28(v142, v141, v143);
      break;
    case 0x11:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v47 = *this;

      result = sub_1000FBC40(v7, v47, v6);
      break;
    case 0x12:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v197 = *this;

      result = sub_1000FBCFC(v7, v197, v6);
      break;
    default:
      return v6;
  }

  return result;
}

void sub_1000FAC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    sub_1000FD104(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(this + 5))
  {
    v2 = 0;
    v3 = &v1[8 * *(this + 5)];
    v4 = *(this + 2);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::ByteSize(uint64_t **this, int a2)
{
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v7 = 8 * **this;
          goto LABEL_110;
        case 2:
        case 7:
        case 0xF:
          v7 = 4 * **this;
          goto LABEL_110;
        case 3:
          v68 = **this;
          if (v68 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v69 = (*this)[1];
          do
          {
            v70 = *v69++;
            v7 += (9 * (__clz(v70 | 1) ^ 0x3F) + 73) >> 6;
            --v68;
          }

          while (v68);
          goto LABEL_110;
        case 4:
          v71 = **this;
          if (v71 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v72 = (*this)[1];
          do
          {
            v73 = *v72++;
            v7 += (9 * (__clz(v73 | 1) ^ 0x3F) + 73) >> 6;
            --v71;
          }

          while (v71);
          goto LABEL_110;
        case 5:
          v51 = **this;
          if (v51 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v52 = (*this)[1];
          do
          {
            v54 = *v52++;
            v53 = v54;
            if (v54 < 0)
            {
              v55 = 10;
            }

            else
            {
              v55 = (9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6;
            }

            v7 += v55;
            --v51;
          }

          while (v51);
          goto LABEL_110;
        case 8:
          v7 = **this;
          goto LABEL_110;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          google::protobuf::internal::LogMessage::LogMessage(v87, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 1599);
          v3 = google::protobuf::internal::LogMessage::operator<<(v87, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v86, &v3->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v87[0].__r_.__value_.__l.__data_);
          goto LABEL_5;
        case 0xD:
          v19 = **this;
          if (v19 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v20 = (*this)[1];
          do
          {
            v21 = *v20++;
            v7 += (9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6;
            --v19;
          }

          while (v19);
          goto LABEL_110;
        case 0xE:
          v36 = **this;
          if (v36 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v37 = (*this)[1];
          do
          {
            v39 = *v37++;
            v38 = v39;
            if (v39 < 0)
            {
              v40 = 10;
            }

            else
            {
              v40 = (9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6;
            }

            v7 += v40;
            --v36;
          }

          while (v36);
          goto LABEL_110;
        case 0x11:
          v12 = **this;
          if (v12 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v13 = (*this)[1];
          do
          {
            v14 = *v13++;
            v7 += (9 * (__clz((2 * v14) ^ (v14 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            --v12;
          }

          while (v12);
          goto LABEL_110;
        case 0x12:
          v56 = **this;
          if (v56 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v57 = (*this)[1];
          do
          {
            v58 = *v57++;
            v7 += (9 * (__clz((2 * v58) ^ (v58 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            --v56;
          }

          while (v56);
LABEL_110:
          *(this + 3) = v7;
          v74 = v7 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
          if (v7)
          {
            v4 = v74;
          }

          else
          {
            v4 = 0;
          }

          break;
        default:
LABEL_5:
          v4 = 0;
          *(this + 3) = 0;
          break;
      }
    }

    else
    {
      v5 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (*(this + 8) == 10);
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v6 = v5 + 8;
          goto LABEL_13;
        case 2:
        case 7:
        case 0xF:
          v6 = v5 + 4;
LABEL_13:
          v4 = v6 * **this;
          break;
        case 3:
          v62 = **this;
          v4 = v5 * v62;
          if (v62 >= 1)
          {
            v63 = (*this)[1];
            do
            {
              v64 = *v63++;
              v4 += (9 * (__clz(v64 | 1) ^ 0x3F) + 73) >> 6;
              --v62;
            }

            while (v62);
          }

          break;
        case 4:
          v65 = **this;
          v4 = v5 * v65;
          if (v65 >= 1)
          {
            v66 = (*this)[1];
            do
            {
              v67 = *v66++;
              v4 += (9 * (__clz(v67 | 1) ^ 0x3F) + 73) >> 6;
              --v65;
            }

            while (v65);
          }

          break;
        case 5:
          v46 = **this;
          v4 = v5 * v46;
          if (v46 >= 1)
          {
            v47 = (*this)[1];
            do
            {
              v49 = *v47++;
              v48 = v49;
              if (v49 < 0)
              {
                v50 = 10;
              }

              else
              {
                v50 = (9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6;
              }

              v4 += v50;
              --v46;
            }

            while (v46);
          }

          break;
        case 8:
          v4 = **this + **this * v5;
          break;
        case 9:
          v81 = *(*this + 2);
          v4 = v5 * v81;
          if (v81 >= 1)
          {
            v82 = ((*this)[2] + 8);
            do
            {
              v83 = *v82++;
              v84 = *(v83 + 23);
              v85 = *(v83 + 8);
              if ((v84 & 0x80u) == 0)
              {
                v85 = v84;
              }

              v4 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6);
              --v81;
            }

            while (v81);
          }

          break;
        case 0xA:
          v25 = *this;
          v26 = *(*this + 2);
          v4 = v5 * v26;
          if (v26 >= 1)
          {
            v27 = 0;
            do
            {
              v28 = *(*(v25 + 2) + 8 * v27 + 8);
              v4 += (*(*v28 + 72))(v28);
              ++v27;
              v25 = *this;
            }

            while (v27 < *(*this + 2));
          }

          break;
        case 0xB:
          v31 = *this;
          v32 = *(*this + 2);
          v4 = v5 * v32;
          if (v32 >= 1)
          {
            v33 = 0;
            do
            {
              v34 = *(*(v31 + 2) + 8 * v33 + 8);
              v35 = (*(*v34 + 72))(v34);
              v4 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
              ++v33;
              v31 = *this;
            }

            while (v33 < *(*this + 2));
          }

          break;
        case 0xC:
          v76 = *(*this + 2);
          v4 = v5 * v76;
          if (v76 >= 1)
          {
            v77 = ((*this)[2] + 8);
            do
            {
              v78 = *v77++;
              v79 = *(v78 + 23);
              v80 = *(v78 + 8);
              if ((v79 & 0x80u) == 0)
              {
                v80 = v79;
              }

              v4 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6);
              --v76;
            }

            while (v76);
          }

          break;
        case 0xD:
          v22 = **this;
          v4 = v5 * v22;
          if (v22 >= 1)
          {
            v23 = (*this)[1];
            do
            {
              v24 = *v23++;
              v4 += (9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6;
              --v22;
            }

            while (v22);
          }

          break;
        case 0xE:
          v41 = **this;
          v4 = v5 * v41;
          if (v41 >= 1)
          {
            v42 = (*this)[1];
            do
            {
              v44 = *v42++;
              v43 = v44;
              if (v44 < 0)
              {
                v45 = 10;
              }

              else
              {
                v45 = (9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6;
              }

              v4 += v45;
              --v41;
            }

            while (v41);
          }

          break;
        case 0x11:
          v15 = **this;
          v4 = v5 * v15;
          if (v15 >= 1)
          {
            v16 = (*this)[1];
            do
            {
              v17 = *v16++;
              v4 += (9 * (__clz((2 * v17) ^ (v17 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              --v15;
            }

            while (v15);
          }

          break;
        case 0x12:
          v59 = **this;
          v4 = v5 * v59;
          if (v59 >= 1)
          {
            v60 = (*this)[1];
            do
            {
              v61 = *v60++;
              v4 += (9 * (__clz((2 * v61) ^ (v61 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              --v59;
            }

            while (v59);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(this + 10))
  {
    return 0;
  }

  else
  {
    v4 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (*(this + 8) == 10);
    switch(*(this + 8))
    {
      case 1:
      case 6:
      case 0x10:
        v4 += 8;
        return v4;
      case 2:
      case 7:
      case 0xF:
        v4 += 4;
        return v4;
      case 3:
      case 4:
        v8 = *this;
        goto LABEL_94;
      case 5:
      case 0xE:
        v9 = (9 * (__clz(*this | 1) ^ 0x1F) + 73) >> 6;
        if (*this >= 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = 10;
        }

        v4 += v10;
        return v4;
      case 8:
        return ++v4;
      case 9:
      case 0xC:
        v11 = (*this)[1];
        if (*(*this + 23) >= 0)
        {
          v11 = *(*this + 23);
        }

        v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
        return v4;
      case 0xA:
        v4 += (*(**this + 72))();
        return v4;
      case 0xB:
        v29 = **this;
        if ((*(this + 10) & 0x10) != 0)
        {
          v30 = (*(v29 + 88))();
        }

        else
        {
          v30 = (*(v29 + 72))();
        }

        v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
        return v4;
      case 0xD:
        v18 = *this;
        goto LABEL_70;
      case 0x11:
        v18 = (2 * *this) ^ (*this >> 31);
LABEL_70:
        v4 += (9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6;
        break;
      case 0x12:
        v8 = (2 * *this) ^ (*this >> 63);
LABEL_94:
        v4 += (9 * (__clz(v8 | 1) ^ 0x3F) + 73) >> 6;
        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1000FB730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::ExtensionSet::Extension::Free(uint64_t *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (*(this + 9) == 1)
  {
    if (v1 > 5)
    {
      if (v1 > 8)
      {
        if (v1 == 9)
        {
          if (*this)
          {
            sub_1000ED63C(*this);
            goto LABEL_27;
          }
        }

        else if (v1 == 10 && *this)
        {
          sub_1000F51C0(*this);
          goto LABEL_27;
        }

        return this;
      }
    }

    else if (v1 <= 2 && v1 != 1 && v1 != 2)
    {
      return this;
    }

    v5 = *this;
    if (*this)
    {
      if (v5[1] >= 1)
      {
        v6 = *(v5 + 1);
        v8 = *(v6 - 8);
        v7 = (v6 - 8);
        if (!v8)
        {
          operator delete(v7);
        }
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (v1 == 10)
    {
      v3 = *(this + 10);
      this = *this;
      if ((v3 & 0x10) != 0)
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      else
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      return v4();
    }

    if (v1 == 9)
    {
      v2 = *this;
      if (*this)
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

LABEL_27:

        operator delete();
      }
    }
  }

  return this;
}

_BYTE *sub_1000FBA20(int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_1000FBAD8(int a1, unint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_1000FBB8C(int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_1000FBC40(int a1, int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  v8 = (2 * a2) ^ (a2 >> 31);
  if (v8 > 0x7F)
  {
    *v4 = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 2;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[1] = v10;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = v8;
    return v4 + 1;
  }

  return v9;
}

_BYTE *sub_1000FBCFC(int a1, uint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  v8 = (2 * a2) ^ (a2 >> 63);
  if (v8 > 0x7F)
  {
    *v4 = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 2;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[1] = v10;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = v8;
    return v4 + 1;
  }

  return v9;
}

_DWORD *sub_1000FBDB8(int a1, int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x85;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3 | 5;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 4;
}

void *sub_1000FBE28(int a1, uint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x81;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3 | 1;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 8;
}

float *sub_1000FBE90(int a1, _BYTE *a2, float a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a2 = v3 | 0x85;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = (a2 + 2);
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a2[1] = v5;
      v4 = (a2 + 2);
    }
  }

  else
  {
    *a2 = v3 | 5;
    v4 = (a2 + 1);
  }

  *v4 = a3;
  return v4 + 1;
}

double *sub_1000FBF00(int a1, _BYTE *a2, double a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a2 = v3 | 0x81;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = (a2 + 2);
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a2[1] = v5;
      v4 = (a2 + 2);
    }
  }

  else
  {
    *a2 = v3 | 1;
    v4 = (a2 + 1);
  }

  *v4 = a3;
  return v4 + 1;
}

_BYTE *sub_1000FBF68(int a1, char a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 1;
}

unsigned __int8 *sub_1000FBFCC(int a1, uint64_t a2, _BYTE *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = 8 * a1;
  v6 = (8 * a1) >> 7;
  v7 = (8 * a1) >> 14;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v5 | 0x83;
    if (v7)
    {
      v8 = a3 + 2;
      v9 = v5 >> 7;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      a3[1] = v6;
      v8 = a3 + 2;
    }
  }

  else
  {
    *a3 = v5 | 3;
    v8 = a3 + 1;
  }

  v12 = (*(*a2 + 96))(a2, v8, a4);
  if (*a4 <= v12)
  {
    v12 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v12);
  }

  if (v5 > 0x7F)
  {
    *v12 = v5 | 0x84;
    if (v7)
    {
      v13 = v12 + 2;
      do
      {
        *(v13 - 1) = v6 | 0x80;
        v14 = v6 >> 7;
        ++v13;
        v15 = v6 >> 14;
        v6 >>= 7;
      }

      while (v15);
      *(v13 - 1) = v14;
    }

    else
    {
      v12[1] = v6;
      return v12 + 2;
    }
  }

  else
  {
    *v12 = v5 | 4;
    return v12 + 1;
  }

  return v13;
}

uint64_t sub_1000FC0FC(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v6 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v6 | 0x82;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      v7 = a3 + 2;
      do
      {
        *(v7 - 1) = v8 | 0x80;
        v9 = v8 >> 7;
        ++v7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
      *(v7 - 1) = v9;
    }

    else
    {
      a3[1] = v8;
      v7 = a3 + 2;
    }
  }

  else
  {
    *a3 = v6 | 2;
    v7 = a3 + 1;
  }

  v11 = (*(*a2 + 80))(a2);
  if (v11 > 0x7F)
  {
    *v7 = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v7 + 2;
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
      v7[1] = v13;
      v12 = v7 + 2;
    }
  }

  else
  {
    *v7 = v11;
    v12 = v7 + 1;
  }

  v16 = *(*a2 + 96);

  return v16(a2, v12, a4);
}

uint64_t sub_1000FC258(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1000FC2CC(google::protobuf::Arena *this, unint64_t a2)
{
  if (a2 >> 59)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/arena.h", 558);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (num_elements) <= (std::numeric_limits<size_t>::max() / sizeof(T)): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Requested size is too large to fit into size_t.");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v6 = 32 * a2;
  if (*(this + 24))
  {
    sub_100163B1C(this);
  }

  return google::protobuf::Arena::AllocateAlignedNoHook(this, v6);
}

void sub_1000FC370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000FC388(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Free(v3 + 5);
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

void *sub_1000FC3F8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC448(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC448(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163B5C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC4D0);
}

void sub_1000FC4D0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC4F0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC540(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC540(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163B8C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC5C8);
}

void sub_1000FC5C8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC5E8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC638(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC638(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163BBC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC6C0);
}

void sub_1000FC6C0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC6E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC730(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC730(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163BEC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC7B8);
}

void sub_1000FC7B8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC7D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC828(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC828(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163C1C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC8B0);
}

void sub_1000FC8B0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC8D0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC920(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC920(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163C4C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC9A8);
}

void sub_1000FC9A8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC9C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FCA18(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FCA18(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163C7C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FCAA0);
}

void sub_1000FCAA0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

google::protobuf::Arena **sub_1000FCAC0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FCB1C(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_1000FCB1C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163CAC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_1000FCBA4);
}

google::protobuf::Arena **sub_1000FCBC0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FCC1C(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_1000FCC1C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163CDC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_1000FCCA4);
}

google::protobuf::internal::RepeatedPtrFieldBase *sub_1000FCCA8(google::protobuf::internal::RepeatedPtrFieldBase *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (!v2)
  {
    return sub_1000FCCFC(result, a2);
  }

  v3 = *v2;
  if (v3 >= *(result + 3))
  {
    return sub_1000FCCFC(result, a2);
  }

  v4 = v2 + 2;
  v5 = *(result + 2);
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  *(result + 2) = v5 + 1;
  ++**(result + 2);
  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *sub_1000FCCFC(google::protobuf::internal::RepeatedPtrFieldBase *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = *(this + 3);
    goto LABEL_11;
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  if (v5 == v6)
  {
LABEL_11:
    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 2);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  this = *&v4[2 * v5 + 2];
  if (this)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    this = (*(*this + 8))(this);
    v4 = *(v3 + 2);
  }

LABEL_14:
  v10 = *(v3 + 2);
  *(v3 + 2) = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return this;
}

unsigned __int8 *sub_1000FCDDC(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Clear(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

google::protobuf::internal::ExtensionSet *sub_1000FCE4C(void *a1, void *a2, google::protobuf::internal::ExtensionSet *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, *(v5 + 8), v5 + 5);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return this;
}

std::string::value_type *sub_1000FCED0(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 >= a3)
  {
    v6 = a3;
    std::string::assign(this, __s, a3);
    return &__s[v6];
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback();
  }
}

uint64_t sub_1000FCF3C(int32x2_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1[11].i32[0];
  v5 = __OFSUB__(v4--, 1);
  a1[11].i32[0] = v4;
  if (v4 < 0 != v5)
  {
    return 0;
  }

  ++a1[11].i32[1];
  result = (*(*a2 + 88))(a2, a3, a1);
  a1[11] = vadd_s32(a1[11], 0xFFFFFFFF00000001);
  v9 = a1[10].i32[0];
  a1[10].i32[0] = 0;
  if (v9 != a4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000FCFDC(uint64_t a1, int a2, const char *a3, char **a4, uint64_t *a5)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  *(a1 + 80) = -NAN;
  *(a1 + 88) = a2;
  *(a1 + 92) = 0x80000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_1000B3420(v8, a5, a3);
  *a4 = sub_1000FD050(a1, v8[0], v8[1]);
  return a1;
}

char *sub_1000FD050(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

void *sub_1000FD104(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_1000FD190(uint64_t a1, int *a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
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

void *sub_1000FD25C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FD2A8(a1, 0);
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  return result;
}

void *sub_1000FD2A8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163D0C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_1000FD330);
}

uint64_t sub_1000FD338(uint64_t **a1, uint64_t *a2, int *a3, _OWORD *a4)
{
  v4 = *sub_1000FD3D0(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1000FD3D0(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_1000FD578(uint64_t **a1, int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    if (*(v2 + 8) >= v3)
    {
      v4 = v2;
    }

    v2 = v2[*(v2 + 8) < v3];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < *(v4 + 8))
  {
    return 0;
  }

  sub_1000D0A84(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_1000FD61C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/api.pb.cc", a4);
  google::protobuf::Api::Api(&google::protobuf::_Api_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Api_default_instance_, v4);
}

void sub_1000FD68C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/api.pb.cc", a4);
  google::protobuf::Method::Method(&google::protobuf::_Method_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Method_default_instance_, v4);
}

void sub_1000FD6FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/api.pb.cc", a4);
  google::protobuf::_Mixin_default_instance_ = off_1001D0E70;
  unk_1001ED350 = 0;
  dword_1001ED368 = 0;
  if (atomic_load_explicit(scc_info_Mixin_google_2fprotobuf_2fapi_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Mixin_google_2fprotobuf_2fapi_2eproto);
  }

  qword_1001ED358 = &google::protobuf::internal::fixed_address_empty_string;
  unk_1001ED360 = &google::protobuf::internal::fixed_address_empty_string;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Mixin_default_instance_, v4);
}

uint64_t google::protobuf::Api::Api(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D0D10;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 40) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 116) = 0;
  if (atomic_load_explicit(scc_info_Api_google_2fprotobuf_2fapi_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Api_google_2fprotobuf_2fapi_2eproto);
  }

  *(a1 + 88) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_1000FD850(_Unwind_Exception *a1)
{
  sub_1000FF7BC(v3);
  sub_1000FF738(v2);
  sub_1000FF6B4(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::Api::~Api(google::protobuf::Api *this)
{
  v2 = *(this + 11);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(this + 12);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  if (this != &google::protobuf::_Api_default_instance_)
  {
    v4 = *(this + 13);
    if (v4)
    {
      google::protobuf::SourceContext::~SourceContext(v4);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_1000FF7BC(this + 8);
  sub_1000FF738(this + 5);
  sub_1000FF6B4(this + 2);
}

{
  google::protobuf::Api::~Api(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Api::Clear(google::protobuf::Api *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::Method::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 6) = 0;
  }

  v5 = *(this + 12);
  if (v5 >= 1)
  {
    v6 = (*(this + 7) + 8);
    do
    {
      v7 = *v6++;
      google::protobuf::Option::Clear(v7);
      --v5;
    }

    while (v5);
    *(this + 12) = 0;
  }

  v8 = *(this + 18);
  if (v8 >= 1)
  {
    v9 = (*(this + 10) + 8);
    do
    {
      v10 = *v9++;
      google::protobuf::Mixin::Clear(v10);
      --v8;
    }

    while (v8);
    *(this + 18) = 0;
  }

  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 11);
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 12);
  v14 = *(this + 1);
  if (v14)
  {
    if (*(v14 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_17;
    }
  }

  else if (v14)
  {
    goto LABEL_17;
  }

  result = *(this + 13);
  if (result)
  {
    google::protobuf::SourceContext::~SourceContext(result);
    operator delete();
  }

LABEL_17:
  *(this + 13) = 0;
  *(this + 28) = 0;
  if (v14)
  {

    return sub_1000315EC(this + 1, v12, v13);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::Api::_InternalSerialize(google::protobuf::Api *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Api.name");
    a2 = sub_100030384(a3, 1, (*(this + 11) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 6);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 4) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 18);
      if (v12 > 0x7F)
      {
        *(a2 + 1) = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = (a2 + 3);
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            v13 = (v13 + 1);
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          *(a2 + 2) = v14;
          v13 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v12;
        v13 = (a2 + 2);
      }

      a2 = google::protobuf::Method::_InternalSerialize(v11, v13, a3, a4);
    }
  }

  v17 = *(this + 12);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 7) + 8 * j + 8);
      *a2 = 26;
      v20 = *(v19 + 8);
      if (v20 > 0x7F)
      {
        *(a2 + 1) = v20 | 0x80;
        v22 = v20 >> 7;
        if (v20 >> 14)
        {
          v21 = (a2 + 3);
          do
          {
            *(v21 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            v21 = (v21 + 1);
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(v21 - 1) = v23;
        }

        else
        {
          *(a2 + 2) = v22;
          v21 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v20;
        v21 = (a2 + 2);
      }

      a2 = google::protobuf::Option::_InternalSerialize(v19, v21, a3, a4);
    }
  }

  v25 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  if ((v26 & 0x8000000000000000) == 0)
  {
    if (!*(v25 + 23))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v26 = *(v25 + 8);
  if (v26)
  {
    v25 = *v25;
LABEL_36:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v25, v26, 1, "google.protobuf.Api.version");
    a2 = sub_100030384(a3, 4, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_37:
  if (this != &google::protobuf::_Api_default_instance_)
  {
    v27 = *(this + 13);
    if (v27)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v27 = *(this + 13);
      }

      *a2 = 42;
      v28 = *(v27 + 6);
      if (v28 > 0x7F)
      {
        *(a2 + 1) = v28 | 0x80;
        v30 = v28 >> 7;
        if (v28 >> 14)
        {
          v29 = (a2 + 3);
          do
          {
            *(v29 - 1) = v30 | 0x80;
            v31 = v30 >> 7;
            v29 = (v29 + 1);
            v32 = v30 >> 14;
            v30 >>= 7;
          }

          while (v32);
          *(v29 - 1) = v31;
        }

        else
        {
          *(a2 + 2) = v30;
          v29 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v28;
        v29 = (a2 + 2);
      }

      a2 = google::protobuf::SourceContext::_InternalSerialize(v27, v29, a3, a4);
    }
  }

  v33 = *(this + 18);
  if (v33)
  {
    for (k = 0; k != v33; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v35 = *(*(this + 10) + 8 * k + 8);
      *a2 = 50;
      v36 = *(v35 + 8);
      if (v36 > 0x7F)
      {
        *(a2 + 1) = v36 | 0x80;
        v38 = v36 >> 7;
        if (v36 >> 14)
        {
          v37 = (a2 + 3);
          do
          {
            *(v37 - 1) = v38 | 0x80;
            v39 = v38 >> 7;
            v37 = (v37 + 1);
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
          *(v37 - 1) = v39;
        }

        else
        {
          *(a2 + 2) = v38;
          v37 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v36;
        v37 = (a2 + 2);
      }

      a2 = google::protobuf::Mixin::_InternalSerialize(v35, v37, a3, a4);
    }
  }

  v41 = *(this + 28);
  if (v41)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v41 = *(this + 28);
    }

    *a2 = 56;
    if (v41 > 0x7F)
    {
      *(a2 + 1) = v41 | 0x80;
      v42 = v41 >> 7;
      if (v41 >> 14)
      {
        a2 = (a2 + 3);
        do
        {
          *(a2 - 1) = v42 | 0x80;
          v43 = v42 >> 7;
          a2 = (a2 + 1);
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
        *(a2 - 1) = v43;
      }

      else
      {
        *(a2 + 2) = v42;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v41;
      a2 = (a2 + 2);
    }
  }

  v45 = *(this + 1);
  if ((v45 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v45 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Api::ByteSizeLong(google::protobuf::Api *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::Method::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = v2 + v8;
  v10 = *(this + 7);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = google::protobuf::Option::ByteSizeLong(v13);
      v9 += &v14[(9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6];
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 18);
  v16 = (v9 + v15);
  v17 = *(this + 10);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = google::protobuf::Mixin::ByteSizeLong(v20);
      v16 = (v16 + v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6));
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  if (v23 < 0)
  {
    if (!*(v22 + 8))
    {
      goto LABEL_26;
    }
  }

  else if (!*(v22 + 23))
  {
    goto LABEL_26;
  }

  v24 = *(v22 + 8);
  if (v23 >= 0)
  {
    v24 = v23;
  }

  v16 = (v16 + v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_26:
  v25 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  if (v26 < 0)
  {
    if (!*(v25 + 8))
    {
      goto LABEL_31;
    }
  }

  else if (!*(v25 + 23))
  {
    goto LABEL_31;
  }

  v27 = *(v25 + 8);
  if (v26 >= 0)
  {
    v27 = v26;
  }

  v16 = (v16 + v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_31:
  if (this != &google::protobuf::_Api_default_instance_)
  {
    v28 = *(this + 13);
    if (v28)
    {
      v29 = google::protobuf::SourceContext::ByteSizeLong(v28);
      v16 = &v29[((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1 + v16];
    }
  }

  v30 = *(this + 28);
  v31 = 11;
  v32 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v30 >= 0)
  {
    v31 = v32;
  }

  v33 = (v16 + v31);
  if (v30)
  {
    v34 = v33;
  }

  else
  {
    v34 = v16;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v34, this + 29);
  }

  else
  {
    *(this + 29) = v34;
    return v34;
  }
}

void google::protobuf::Api::MergeFrom(std::string *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::Api::MergeFrom(this, v4, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

std::string *google::protobuf::Api::MergeFrom(std::string *this, const google::protobuf::Api *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], *(a2 + 6));
    this = sub_1000FF840(&v4->__r_.__value_.__r.__words[2], v8, (v7 + 8), v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1].__r_.__value_.__r.__words[2], *(a2 + 12));
    this = sub_1000FF900((v4 + 40), v13, (v12 + 8), v11, *v4[2].__r_.__value_.__l.__size_ - LODWORD(v4[2].__r_.__value_.__l.__data_));
    v14 = LODWORD(v4[2].__r_.__value_.__l.__data_) + v11;
    LODWORD(v4[2].__r_.__value_.__l.__data_) = v14;
    v15 = v4[2].__r_.__value_.__l.__size_;
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 18);
  if (v16)
  {
    v17 = *(a2 + 10);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[2].__r_.__value_.__r.__words[2], *(a2 + 18));
    this = sub_1000FF9C0(&v4[2].__r_.__value_.__r.__words[2], v18, (v17 + 8), v16, *v4[3].__r_.__value_.__l.__size_ - LODWORD(v4[3].__r_.__value_.__l.__data_));
    v19 = LODWORD(v4[3].__r_.__value_.__l.__data_) + v16;
    LODWORD(v4[3].__r_.__value_.__l.__data_) = v19;
    v20 = v4[3].__r_.__value_.__l.__size_;
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 11) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  if (v22 < 0)
  {
    v22 = *(v21 + 8);
  }

  if (v22)
  {
    v23 = v4->__r_.__value_.__l.__size_;
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[3].__r_.__value_.__r.__words[2], v21, v23);
  }

  v24 = *(a2 + 12) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  if (v25 < 0)
  {
    v25 = *(v24 + 8);
  }

  if (v25)
  {
    v26 = v4->__r_.__value_.__l.__size_;
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[4], v24, v26);
  }

  if (a2 != &google::protobuf::_Api_default_instance_)
  {
    v27 = *(a2 + 13);
    if (v27)
    {
      v28 = v4[4].__r_.__value_.__l.__size_;
      if (!v28)
      {
        v29 = v4->__r_.__value_.__l.__size_;
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceContext>(v29);
        v4[4].__r_.__value_.__l.__size_ = v28;
        v27 = *(a2 + 13);
      }

      if (v27)
      {
        v30 = v27;
      }

      else
      {
        v30 = &google::protobuf::_SourceContext_default_instance_;
      }

      this = google::protobuf::SourceContext::MergeFrom(v28, v30, a3);
    }
  }

  v31 = *(a2 + 28);
  if (v31)
  {
    LODWORD(v4[4].__r_.__value_.__r.__words[2]) = v31;
  }

  return this;
}

void google::protobuf::Api::CopyFrom(google::protobuf::Api *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::Api::Clear(this);

    google::protobuf::Api::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::Method::Method(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D0DC0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(scc_info_Method_google_2fprotobuf_2fapi_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Method_google_2fprotobuf_2fapi_2eproto);
  }

  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = 0;
  return a1;
}

void google::protobuf::Method::~Method(google::protobuf::Method *this)
{
  v2 = *(this + 5);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(this + 6);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = *(this + 7);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
  sub_1000FF738(this + 2);
}

{
  google::protobuf::Method::~Method(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Method::Clear(google::protobuf::Method *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::Option::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 6) = 0;
  }

  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 5);
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 6);
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 7);
  v9 = *(this + 8);
  v8 = (this + 8);
  v8[7] = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v6, v7);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::Method::_InternalSerialize(google::protobuf::Method *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Method.name");
    a2 = sub_100030384(a3, 1, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v9 + 8);
    if (!v10)
    {
      goto LABEL_13;
    }

    v9 = *v9;
    goto LABEL_12;
  }

  if (*(v9 + 23))
  {
LABEL_12:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v9, v10, 1, "google.protobuf.Method.request_type_url");
    a2 = sub_100030384(a3, 2, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_13:
  v11 = *(this + 64);
  if (v11 == 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v11) = *(this + 64);
    }

    *a2 = 24;
    *(a2 + 1) = v11;
    a2 = (a2 + 2);
  }

  v12 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v13 = *(v12 + 8);
    if (!v13)
    {
      goto LABEL_23;
    }

    v12 = *v12;
    goto LABEL_22;
  }

  if (*(v12 + 23))
  {
LABEL_22:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v12, v13, 1, "google.protobuf.Method.response_type_url");
    a2 = sub_100030384(a3, 4, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_23:
  v14 = *(this + 65);
  if (v14 == 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v14) = *(this + 65);
    }

    *a2 = 40;
    *(a2 + 1) = v14;
    a2 = (a2 + 2);
  }

  v15 = *(this + 6);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v17 = *(*(this + 4) + 8 * i + 8);
      *a2 = 50;
      v18 = *(v17 + 8);
      if (v18 > 0x7F)
      {
        *(a2 + 1) = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = (a2 + 3);
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            v19 = (v19 + 1);
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          *(a2 + 2) = v20;
          v19 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v18;
        v19 = (a2 + 2);
      }

      a2 = google::protobuf::Option::_InternalSerialize(v17, v19, a3, a4);
    }
  }

  v23 = *(this + 17);
  if (v23)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v23 = *(this + 17);
    }

    *a2 = 56;
    if (v23 > 0x7F)
    {
      *(a2 + 1) = v23 | 0x80;
      v24 = v23 >> 7;
      if (v23 >> 14)
      {
        a2 = (a2 + 3);
        do
        {
          *(a2 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          a2 = (a2 + 1);
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(a2 - 1) = v25;
      }

      else
      {
        *(a2 + 2) = v24;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v23;
      a2 = (a2 + 2);
    }
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Method::ByteSizeLong(google::protobuf::Method *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::Option::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (!*(v8 + 8))
    {
      goto LABEL_14;
    }
  }

  else if (!*(v8 + 23))
  {
    goto LABEL_14;
  }

  v10 = *(v8 + 8);
  if (v9 >= 0)
  {
    v10 = v9;
  }

  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_14:
  v11 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    if (!*(v11 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (!*(v11 + 23))
  {
    goto LABEL_19;
  }

  v13 = *(v11 + 8);
  if (v12 >= 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_19:
  v14 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    if (!*(v14 + 8))
    {
      goto LABEL_24;
    }
  }

  else if (!*(v14 + 23))
  {
    goto LABEL_24;
  }

  v16 = *(v14 + 8);
  if (v15 >= 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_24:
  if (*(this + 64))
  {
    v17 = v2 + 2;
  }

  else
  {
    v17 = v2;
  }

  if (*(this + 65))
  {
    v18 = (v17 + 2);
  }

  else
  {
    v18 = v17;
  }

  v19 = *(this + 17);
  if (v19)
  {
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v19 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 11;
    }

    v18 = (v18 + v21);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v18, this + 18);
  }

  else
  {
    *(this + 18) = v18;
    return v18;
  }
}

void google::protobuf::Method::MergeFrom(std::string *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::Method::MergeFrom(this, v4, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

std::string *google::protobuf::Method::MergeFrom(std::string *this, const google::protobuf::Method *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], *(a2 + 6));
    this = sub_1000FF900(&v4->__r_.__value_.__r.__words[2], v8, (v7 + 8), v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  v11 = *(a2 + 5) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12)
  {
    v13 = v4->__r_.__value_.__l.__size_;
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1].__r_.__value_.__r.__words[2], v11, v13);
  }

  v14 = *(a2 + 6) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v15 = *(v14 + 8);
  }

  if (v15)
  {
    v16 = v4->__r_.__value_.__l.__size_;
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2], v14, v16);
  }

  v17 = *(a2 + 7) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    v18 = *(v17 + 8);
  }

  if (v18)
  {
    v19 = v4->__r_.__value_.__l.__size_;
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2].__r_.__value_.__l.__size_, v17, v19);
  }

  if (*(a2 + 64) == 1)
  {
    v4[2].__r_.__value_.__s.__data_[16] = 1;
  }

  if (*(a2 + 65) == 1)
  {
    v4[2].__r_.__value_.__s.__data_[17] = 1;
  }

  v20 = *(a2 + 17);
  if (v20)
  {
    HIDWORD(v4[2].__r_.__value_.__r.__words[2]) = v20;
  }

  return this;
}

void google::protobuf::Method::CopyFrom(google::protobuf::Method *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::Method::Clear(this);

    google::protobuf::Method::MergeFrom(this, a2);
  }
}

void google::protobuf::Mixin::~Mixin(google::protobuf::Mixin *this)
{
  v1 = *(this + 2);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
}

{
  google::protobuf::Mixin::~Mixin(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Mixin::Clear(google::protobuf::Mixin *this)
{
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 2);
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 3);
  v6 = *(this + 8);
  v5 = (this + 8);
  if (v6)
  {

    return sub_1000315EC(v5, v3, v4);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::Mixin::_InternalSerialize(google::protobuf::Mixin *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 2) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Mixin.name");
    a2 = sub_100030384(a3, 1, (*(this + 2) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v9 + 8);
    if (!v10)
    {
      goto LABEL_13;
    }

    v9 = *v9;
    goto LABEL_12;
  }

  if (*(v9 + 23))
  {
LABEL_12:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v9, v10, 1, "google.protobuf.Mixin.root");
    a2 = sub_100030384(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_13:
  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v11 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Mixin::ByteSizeLong(google::protobuf::Mixin *this)
{
  v1 = *(this + 2) & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    if (*(v1 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (!*(v1 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = *(v1 + 8);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  v4 = (v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_8:
  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (!*(v5 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (!*(v5 + 23))
  {
    goto LABEL_13;
  }

  v7 = *(v5 + 8);
  if (v6 >= 0)
  {
    v7 = v6;
  }

  v4 = (v4 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_13:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 8);
  }

  *(this + 8) = v4;
  return v4;
}

void google::protobuf::Mixin::MergeFrom(std::string *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {

    google::protobuf::Mixin::MergeFrom(this, v4, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

std::string *google::protobuf::Mixin::MergeFrom(std::string *this, const google::protobuf::Mixin *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL;
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7)
  {
    size = v4->__r_.__value_.__l.__size_;
    if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4->__r_.__value_.__r.__words[2], v6, size);
  }

  v9 = *(a2 + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v9 + 8))
    {
      return this;
    }
  }

  else if (!*(v9 + 23))
  {
    return this;
  }

  v10 = v4->__r_.__value_.__l.__size_;
  if (v10)
  {
    v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  return google::protobuf::internal::ArenaStringPtr::Set(&v4[1], v9, v10);
}

void google::protobuf::Mixin::CopyFrom(google::protobuf::Mixin *this, const google::protobuf::Message *a2)
{
  if (a2 != this)
  {
    google::protobuf::Mixin::Clear(this);

    google::protobuf::Mixin::MergeFrom(this, a2);
  }
}

void *sub_1000FF484(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000FFA80(a1, 1);
  google::protobuf::Api::Api(v2, a1);
  return v2;
}

void *sub_1000FF510(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000FFB0C(a1, 1);
  google::protobuf::Method::Method(v2, a1);
  return v2;
}

void *sub_1000FF59C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1000FFB98(a1);
}

void sub_1000FF6B4(void *a1)
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
          google::protobuf::Method::~Method(*v3);
          operator delete();
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

void sub_1000FF738(void *a1)
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
          google::protobuf::Option::~Option(*v3);
          operator delete();
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

void sub_1000FF7BC(void *a1)
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
          google::protobuf::Mixin::~Mixin(*v3);
          operator delete();
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

std::string *sub_1000FF840(uint64_t a1, std::string **a2, google::protobuf::Method **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a5;
  }

  if (v9 >= 1)
  {
    v10 = a3;
    v11 = a2;
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *v11++;
      result = sub_1000FF8F0(v12, v14, a3);
      --v9;
    }

    while (v9);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18++;
      v21 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Method>();
      result = sub_1000FF8F0(v20, v21, v22);
      *v19++ = v21;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_1000FF900(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1000FF9B0(v13, v15, a3);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Option>(v18);
      result = sub_1000FF9B0(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_1000FF9C0(uint64_t a1, std::string **a2, google::protobuf::Mixin **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a5;
  }

  if (v9 >= 1)
  {
    v10 = a3;
    v11 = a2;
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *v11++;
      result = sub_1000FFA70(v12, v14, a3);
      --v9;
    }

    while (v9);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18++;
      v21 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Mixin>();
      result = sub_1000FFA70(v20, v21, v22);
      *v19++ = v21;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_1000FFA80(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164A38(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x78uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x78uLL, google::protobuf::Api::~Api);
}

void *sub_1000FFB0C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164A70(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::Method::~Method);
}

void *sub_1000FFB98(google::protobuf::Arena *a1)
{
  v2 = sub_1000FFC14(a1, 1);
  *v2 = off_1001D0E70;
  v2[1] = a1;
  *(v2 + 8) = 0;
  if (atomic_load_explicit(scc_info_Mixin_google_2fprotobuf_2fapi_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Mixin_google_2fprotobuf_2fapi_2eproto);
  }

  v2[2] = &google::protobuf::internal::fixed_address_empty_string;
  v2[3] = &google::protobuf::internal::fixed_address_empty_string;
  return v2;
}

void *sub_1000FFC14(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164AA8(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::Mixin::~Mixin);
}

uint64_t sub_1000FFCB8(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32) + 8 * v2;
  *(v1 + 24) = v2 + 1;
  *(v3 + 8) = result;
  return result;
}

std::string::value_type *sub_1000FFCF4(std::string *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string::value_type *a10)
{

  return google::protobuf::internal::InlineGreedyStringParser(a1, a10, v10);
}

uint64_t sub_1000FFD20(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 92);

  return sub_1000313B0(v2, va, v4);
}

std::string::value_type *sub_1000FFD3C(std::string *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string::value_type *a10)
{

  return google::protobuf::internal::InlineGreedyStringParser(a1, a10, v10);
}

void sub_1000FFDD8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/empty.pb.cc", a4);
  google::protobuf::_Empty_default_instance_ = off_1001D0F78;
  *algn_1001ED378 = 0;
  dword_1001ED380 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Empty_default_instance_, v4);
}

void google::protobuf::Empty::~Empty(google::protobuf::Empty *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

unint64_t *google::protobuf::Empty::Clear(google::protobuf::Empty *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Empty::_InternalSerialize(google::protobuf::Empty *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

char *google::protobuf::Empty::ByteSizeLong(google::protobuf::Empty *this)
{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize(v1, 0, v1 + 2);
  }

  *(v1 + 2) = 0;
  return 0;
}

void google::protobuf::Empty::MergeFrom(google::protobuf::Empty *this, const google::protobuf::Message *lpsrc)
{
  if (v4)
  {
    v6 = v4[1];
    if (v6)
    {

      sub_1000315A0(this + 1, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8), v5);
    }
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v5);
  }
}

void google::protobuf::Empty::CopyFrom(const google::protobuf::Message *this, const google::protobuf::Message *lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 8);
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::Empty::MergeFrom(this, lpsrc);
  }
}

void *sub_10010007C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_100100100(this, 1);
  *result = off_1001D0F78;
  result[1] = this;
  *(result + 4) = 0;
  return result;
}

void *sub_100100100(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164BE4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_100100188);
}

void google::protobuf::internal::MapFieldBase::~MapFieldBase(google::protobuf::internal::MapFieldBase *this)
{
  *this = off_1001D1040;
  if (*(this + 2) && !*(this + 1))
  {
    sub_1000F51C0(*(this + 2));
    operator delete();
  }

  std::mutex::~mutex((this + 24));
}

void google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(atomic_uint *this)
{
  explicit = atomic_load_explicit(this + 22, memory_order_acquire);
  if (explicit == 2)
  {
    v3 = (this + 6);
    std::mutex::lock((this + 6));
    if (this[22] == 2)
    {
      if (!*(this + 2))
      {
        v4 = *(this + 1);
        if (!v4)
        {
          operator new();
        }

        *(this + 2) = sub_1001043FC(v4);
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (explicit)
    {
      return;
    }

    v3 = (this + 6);
    std::mutex::lock((this + 6));
    if (!this[22])
    {
      (*(*this + 112))(this);
LABEL_11:
      atomic_store(2u, this + 22);
    }
  }

  std::mutex::unlock(v3);
}

uint64_t google::protobuf::internal::MapFieldBase::MutableRepeatedField(atomic_uint *this)
{
  google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(this);
  this[22] = 1;
  return *(this + 2);
}

uint64_t google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfLong(google::protobuf::internal::MapFieldBase *this)
{
  std::mutex::lock((this + 24));
  v2 = (*(*this + 104))(this);
  std::mutex::unlock((this + 24));
  return v2;
}

uint64_t google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfNoLock(google::protobuf::internal::MapFieldBase *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 8 * *(v1 + 12);
  v3 = *(v1 + 16);
  if (v3)
  {
    if (*v3 >= 1)
    {
      v4 = 0;
      do
      {
        v2 += (*(**&v3[2 * v4 + 2] + 136))(*&v3[2 * v4 + 2]);
        ++v4;
        v3 = *(v1 + 16);
      }

      while (v4 < *v3);
    }

    v2 += 8;
  }

  return v2;
}

google::protobuf::Arena **google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMapNoLock(google::protobuf::Arena **this)
{
  if (!this[2])
  {
    v1 = this;
    this = sub_1001043FC(this[1]);
    v1[2] = this;
  }

  return this;
}

void google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(google::protobuf::internal::MapFieldBase *this)
{
  if (atomic_load_explicit(this + 22, memory_order_acquire) == 1)
  {
    std::mutex::lock((this + 24));
    if (*(this + 22) == 1)
    {
      (*(*this + 120))(this);
      atomic_store(2u, this + 22);
    }

    std::mutex::unlock((this + 24));
  }
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 850045863;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *a1 = off_1001D10F0;
  result = 0.0;
  *(a1 + 96) = xmmword_10017FFF0;
  *(a1 + 112) = xmmword_10017FFF0;
  *(a1 + 128) = &google::protobuf::internal::kGlobalEmptyTable;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  return result;
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(google::protobuf::internal::DynamicMapField *this, const google::protobuf::Message *a2, google::protobuf::Arena *a3)
{
  v5 = sub_10010484C(this, a3);
  *v5 = off_1001D10F0;
  result = 0.0;
  *(v5 + 96) = xmmword_10017FFF0;
  *(v5 + 112) = xmmword_10017FFF0;
  *(v5 + 128) = &google::protobuf::internal::kGlobalEmptyTable;
  *(v5 + 136) = a3;
  *(v5 + 144) = a2;
  return result;
}

void google::protobuf::internal::DynamicMapField::~DynamicMapField(google::protobuf::internal::DynamicMapField *this)
{
  *this = off_1001D10F0;
  v2 = (this + 96);
  v3 = *(this + 15);
  v4 = *(this + 13);
  if (v4 > v3)
  {
    v5 = *(this + 16);
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        break;
      }

      if (v4 == ++v3)
      {
        goto LABEL_10;
      }
    }

    if (v6 == *(v5 + 8 * (v3 ^ 1)))
    {
      v6 = *(*v6 + 40);
      v7 = v6;
      v8 = this + 96;
      v9 = v3;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = *(v5 + 8 * v3);
      v8 = this + 96;
      v9 = v3;
    }

    do
    {
      sub_10010071C(v6 + 8);
      sub_100104958(&v7);
      v6 = v7;
    }

    while (v7);
  }

LABEL_10:
  sub_100104550(v2);
  sub_1001044FC(v2);
  google::protobuf::internal::MapFieldBase::~MapFieldBase(this);
}

{
  google::protobuf::internal::DynamicMapField::~DynamicMapField(this);

  operator delete();
}

_DWORD *sub_10010071C(_DWORD *result)
{
  v1 = result[2];
  if (v1 > 5)
  {
    if (v1 <= 7)
    {
      if (v1 == 6)
      {
        goto LABEL_20;
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v1 == 8)
      {
        goto LABEL_20;
      }

      if (v1 != 9)
      {
        if (v1 == 10)
        {
          result = *result;
          if (result)
          {
            v2 = *(*result + 8);

            return v2();
          }
        }

        return result;
      }

      v3 = *result;
      if (!*result)
      {
        return result;
      }

      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }
    }

LABEL_21:

    operator delete();
  }

  if (v1 <= 2)
  {
    if (v1 != 1)
    {
      if (v1 != 2)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_20:
    result = *result;
    if (result)
    {
      goto LABEL_21;
    }

    return result;
  }

  if (v1 == 3)
  {
    goto LABEL_20;
  }

LABEL_15:
  result = *result;
  if (result)
  {
    goto LABEL_21;
  }

  return result;
}

void *google::protobuf::internal::DynamicMapField::Clear(google::protobuf::internal::DynamicMapField *this)
{
  v2 = (this + 96);
  if (!*(this + 1))
  {
    v3 = *(this + 15);
    v4 = *(this + 13);
    if (v4 > v3)
    {
      v5 = *(this + 16);
      while (1)
      {
        v6 = *(v5 + 8 * v3);
        if (v6)
        {
          break;
        }

        if (v4 == ++v3)
        {
          goto LABEL_11;
        }
      }

      if (v6 == *(v5 + 8 * (v3 ^ 1)))
      {
        v6 = *(*v6 + 40);
        v12 = v6;
        v13 = this + 96;
        v14 = v3;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = *(v5 + 8 * v3);
        v13 = this + 96;
        v14 = v3;
      }

      do
      {
        sub_10010071C(v6 + 8);
        sub_100104958(&v12);
        v6 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  result = sub_100104550(v2);
  v8 = *(this + 2);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9 >= 1)
    {
      v10 = (*(v8 + 16) + 8);
      do
      {
        v11 = *v10++;
        result = (*(*v11 + 40))(v11);
        --v9;
      }

      while (v9);
      *(v8 + 8) = 0;
    }
  }

  *(this + 22) = 0;
  return result;
}

BOOL google::protobuf::internal::DynamicMapField::ContainsMapKey(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 160))(a1);
  sub_100104ACC(v3, a2, 0, v5);
  return v5[0] != 0;
}

void google::protobuf::internal::DynamicMapField::AllocateMapValue(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 144) + 152))(*(a1 + 144));
  v5 = google::protobuf::Descriptor::map_value(v4);
  v6 = *(v5 + 48);
  if (v6)
  {
    v12 = v5;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      v15 = &v13;
      v16 = &v12;
      v14 = &v15;
      std::__call_once(v6, &v14, sub_1000B32C4);
    }

    v7 = *(v5 + 48);
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    *(a2 + 8) = v8;
    if (v7)
    {
      v12 = v5;
      v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        v15 = &v13;
        v16 = &v12;
        v14 = &v15;
        std::__call_once(v7, &v14, sub_1000B32C4);
      }

      v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    }
  }

  else
  {
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    *(a2 + 8) = v8;
  }

  if (v8 > 5)
  {
    if (v8 <= 7)
    {
      if (v8 == 6)
      {
        v9 = sub_1001055EC(*(a1 + 8));
      }

      else
      {
        v9 = sub_1001056B8(*(a1 + 8));
      }

      goto LABEL_29;
    }

    if (v8 != 8)
    {
      if (v8 == 9)
      {
        v9 = sub_1000B3534(*(a1 + 8));
      }

      else
      {
        if (v8 != 10)
        {
          return;
        }

        (*(**(a1 + 144) + 152))(*(a1 + 144));
        Message = google::protobuf::Reflection::GetMessage(v10, *(a1 + 144), v5, 0);
        v9 = (*(*Message + 32))(Message, *(a1 + 8));
      }

      goto LABEL_29;
    }

LABEL_24:
    v9 = sub_1001051F0(*(a1 + 8));
    goto LABEL_29;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v9 = sub_100105388(*(a1 + 8));
    }

    else if (v8 == 4)
    {
      v9 = sub_100105454(*(a1 + 8));
    }

    else
    {
      v9 = sub_100105520(*(a1 + 8));
    }

    goto LABEL_29;
  }

  if (v8 == 1)
  {
    goto LABEL_24;
  }

  if (v8 != 2)
  {
    return;
  }

  v9 = sub_1001052BC(*(a1 + 8));
LABEL_29:
  *a2 = v9;
}

BOOL google::protobuf::internal::DynamicMapField::InsertOrLookupMapValue(__n128 *a1, unsigned int *a2, uint64_t a3)
{
  v6 = (*(a1->n128_u64[0] + 168))(a1);
  sub_100104ACC(v6, a2, 0, v10);
  v7 = v10[0];
  if (v10[0])
  {
    v8 = v10[0];
  }

  else
  {
    sub_100105784(a1 + 6, a2, v10);
    v8 = v10[0];
    google::protobuf::internal::DynamicMapField::AllocateMapValue(a1, v10[0] + 32);
  }

  result = v7 == 0;
  *(a3 + 8) = *(v8 + 40);
  *a3 = *(v8 + 32);
  return result;
}

BOOL google::protobuf::internal::DynamicMapField::LookupMapValue(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = (*(*a1 + 160))(a1);
  sub_100104ACC(v5, a2, 0, v8);
  v6 = v8[0];
  if (v8[0])
  {
    *(a3 + 8) = *(v8[0] + 40);
    *a3 = *(v6 + 32);
  }

  return v6 != 0;
}

BOOL google::protobuf::internal::DynamicMapField::DeleteMapValue(uint64_t a1, unsigned int *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  sub_100104ACC((a1 + 96), a2, 0, &v11);
  v4 = v11;
  v5 = v11;
  if (v11)
  {
    v6 = v12;
    *(a1 + 88) = 0;
    if (!*(a1 + 8))
    {
      v8 = v4;
      sub_10010071C((v5 + 32));
      v4 = v8;
    }

    v9 = v4;
    v10 = v6;
    v11 = v4;
    v12 = v6;
    sub_100104958(&v9);
    sub_100106148((a1 + 96), &v11);
  }

  return v5 != 0;
}

uint64_t google::protobuf::internal::DynamicMapField::MutableMap(google::protobuf::internal::DynamicMapField *this)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this);
  *(this + 22) = 0;
  return this + 96;
}

void google::protobuf::internal::DynamicMapField::SetMapIteratorValue(uint64_t a1, const std::string ***a2)
{
  v2 = **a2;
  if (v2)
  {
    sub_100100F44((a2 + 2), **a2);
    *(a2 + 14) = v2[1].__r_.__value_.__r.__words[2];
    a2[6] = v2[1].__r_.__value_.__l.__size_;
  }
}

void sub_100100F44(uint64_t a1, const std::string *a2)
{
  v4 = sub_100103FB4(a2);
  sub_1001043A0(a1, v4);
  v5 = *(a1 + 24);
  if (v5 <= 3)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
LABEL_15:
        *a1 = a2->__r_.__value_.__r.__words[0];
        return;
      }

      if (v5 != 3)
      {
        return;
      }
    }

    *a1 = a2->__r_.__value_.__l.__data_;
    return;
  }

  if (v5 > 0xA)
  {
    goto LABEL_14;
  }

  if (((1 << v5) & 0x560) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 213);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "Unsupported");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    return;
  }

  if (v5 == 7)
  {
    *a1 = a2->__r_.__value_.__s.__data_[0];
    return;
  }

  if (v5 != 9)
  {
LABEL_14:
    if (v5 != 4)
    {
      return;
    }

    goto LABEL_15;
  }

  std::string::operator=(a1, a2);
}

void sub_100101064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int **google::protobuf::internal::DynamicMapField::MergeFrom(__n128 *this, const google::protobuf::internal::MapFieldBase *a2)
{
  result = (*(this->n128_u64[0] + 168))(this);
  v5 = *(a2 + 15);
  v6 = *(a2 + 13);
  if (v6 > v5)
  {
    v7 = result;
    v8 = *(a2 + 16);
    while (1)
    {
      v9 = *(v8 + 8 * v5);
      if (v9)
      {
        break;
      }

      if (v6 == ++v5)
      {
        return result;
      }
    }

    if (v9 == *(v8 + 8 * (v5 ^ 1)))
    {
      v9 = *(*v9 + 40);
      v26 = v9;
      v27 = a2 + 96;
      v28 = v5;
      if (!v9)
      {
        return result;
      }
    }

    else
    {
      v26 = *(v8 + 8 * v5);
      v27 = a2 + 96;
      v28 = v5;
    }

    do
    {
      sub_100104ACC(v7, v9, 0, v29);
      if (v29[0])
      {
        v10 = (v29[0] + 32);
      }

      else
      {
        sub_100105784(this + 6, v26, v29);
        v10 = (v29[0] + 32);
        google::protobuf::internal::DynamicMapField::AllocateMapValue(this, v29[0] + 32);
      }

      v11 = (*(*this[9].n128_u64[0] + 152))(this[9].n128_u64[0]);
      v12 = google::protobuf::Descriptor::map_value(v11);
      v13 = *(v12 + 48);
      if (v13)
      {
        v30 = v12;
        v31 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v13, memory_order_acquire) != -1)
        {
          v29[0] = &v31;
          v29[1] = &v30;
          v32 = v29;
          std::__call_once(v13, &v32, sub_1000B32C4);
        }
      }

      v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v12 + 56)];
      if (v14 > 5)
      {
        if (v14 <= 7)
        {
          if (v14 == 6)
          {
            v21 = sub_100101CC4((v26 + 8));
            sub_100101BBC(v10, v21);
          }

          else
          {
            v19 = sub_1001020C4(v26 + 4);
            sub_100101FC4(v10, v19);
          }
        }

        else
        {
          switch(v14)
          {
            case 8:
              v23 = sub_1001024BC(v26 + 4);
              sub_1001023BC(v10, v23);
              break;
            case 9:
              v25 = sub_1001022C4((v26 + 8));
              sub_1001021C0(v10, v25);
              break;
            case 10:
              v16 = sub_1001025B8(v10);
              v17 = sub_1001026B0((v26 + 8));
              (*(*v16 + 112))(v16, v17);
              break;
          }
        }
      }

      else if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v20 = sub_1001014CC(v26 + 4);
          sub_1001013CC(v10, v20);
        }

        else if (v14 == 2)
        {
          v18 = sub_1001016C8((v26 + 8));
          sub_1001015C8(v10, v18);
        }
      }

      else if (v14 == 3)
      {
        v22 = sub_1001018C4(v26 + 4);
        sub_1001017C4(v10, v22);
      }

      else if (v14 == 4)
      {
        v24 = sub_100101AC0((v26 + 8));
        sub_1001019C0(v10, v24);
      }

      else
      {
        v15 = sub_100101EC8((v26 + 8));
        sub_100101DC0(v10, v15);
      }

      result = sub_100104958(&v26);
      v9 = v26;
    }

    while (v26);
  }

  return result;
}

void sub_1001013CC(_DWORD **a1, int a2)
{
  if (sub_100104054(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 783);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetInt32Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "int32");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001014B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001014CC(unsigned int **a1)
{
  if (sub_100104054(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 695);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001015B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001015C8(void **a1, uint64_t a2)
{
  if (sub_100104054(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 775);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetInt64Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "int64");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001016B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001016C8(uint64_t a1)
{
  if (sub_100104054(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 685);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001017AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001017C4(_DWORD **a1, int a2)
{
  if (sub_100104054(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 787);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetUInt32Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "uint32");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001018AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001018C4(unsigned int **a1)
{
  if (sub_100104054(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 700);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetUInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001019A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001019C0(void **a1, uint64_t a2)
{
  if (sub_100104054(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 779);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetUInt64Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "uint64");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_100101AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100101AC0(uint64_t a1)
{
  if (sub_100104054(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 690);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetUInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_100101BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100101BBC(float **a1, float a2)
{
  if (sub_100104054(a1) != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 804);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetFloatValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "float");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_100101CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float sub_100101CC4(uint64_t a1)
{
  if (sub_100104054(a1) != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 718);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetFloatValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "float");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_100101DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100101DC0(double **a1, double a2)
{
  if (sub_100104054(a1) != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 808);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetDoubleValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "double");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_100101EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_100101EC8(uint64_t a1)
{
  if (sub_100104054(a1) != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 723);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetDoubleValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "double");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_100101FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100101FC4(_BYTE **a1, char a2)
{
  if (sub_100104054(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 791);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetBoolValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "BOOL");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001020AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001020C4(unsigned __int8 **a1)
{
  if (sub_100104054(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 704);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetBoolValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BOOL");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001021A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *sub_1001021C0(std::string **a1, const std::string *a2)
{
  if (sub_100104054(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 800);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetStringValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "string");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return std::string::operator=(*a1, a2);
}

void sub_1001022AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001022C4(uint64_t a1)
{
  if (sub_100104054(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 713);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetStringValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "string");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001023A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001023BC(_DWORD **a1, int a2)
{
  if (sub_100104054(a1) != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 796);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetEnumValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "enum");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001024A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001024BC(unsigned int **a1)
{
  if (sub_100104054(a1) != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 708);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetEnumValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "enum");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001025A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001025B8(uint64_t a1)
{
  if (sub_100104054(a1) != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 814);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueRef::MutableMessageValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "message");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_100102698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001026B0(uint64_t a1)
{
  if (sub_100104054(a1) != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 729);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetMessageValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "message");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_100102790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::DynamicMapField::Swap(google::protobuf::internal::DynamicMapField *this, google::protobuf::internal::MapFieldBase *a2)
{
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = sub_1001027F8(this + 12, a2 + 12);
  v6 = *(a2 + 22);
  *(a2 + 22) = *(this + 22);
  *(this + 22) = v6;
  return result;
}

uint64_t *sub_1001027F8(uint64_t *a1, uint64_t *a2)
{
  if (a1[5] == a2[5])
  {

    return sub_100106298(a1, a2);
  }

  else
  {
    sub_1001062EC(v5, a1);
    sub_1001063B8(a1, a2);
    sub_1001063B8(a2, v5);
    return sub_1001044FC(v5);
  }
}

const google::protobuf::FieldDescriptor *google::protobuf::internal::DynamicMapField::SyncRepeatedFieldWithMapNoLock(google::protobuf::internal::DynamicMapField *this)
{
  (*(**(this + 18) + 152))(*(this + 18));
  v3 = v2;
  v4 = (*(**(this + 18) + 152))(*(this + 18));
  v5 = google::protobuf::Descriptor::map_key(v4);
  v6 = (*(**(this + 18) + 152))(*(this + 18));
  result = google::protobuf::Descriptor::map_value(v6);
  v8 = result;
  v9 = *(this + 2);
  if (!v9)
  {
    v10 = *(this + 1);
    if (!v10)
    {
      operator new();
    }

    result = sub_1001043FC(v10);
    v9 = result;
    *(this + 2) = result;
  }

  v11 = *(v9 + 2);
  if (v11 >= 1)
  {
    v12 = (*(v9 + 2) + 8);
    do
    {
      v13 = *v12++;
      result = (*(*v13 + 40))(v13);
      --v11;
    }

    while (v11);
    *(v9 + 2) = 0;
  }

  v14 = *(this + 15);
  v15 = *(this + 13);
  if (v15 > v14)
  {
    v16 = *(this + 16);
    while (1)
    {
      v17 = *(v16 + 8 * v14);
      if (v17)
      {
        break;
      }

      if (v15 == ++v14)
      {
        return result;
      }
    }

    if (v17 != *(v16 + 8 * (v14 ^ 1)))
    {
      v50 = *(v16 + 8 * v14);
      v51 = this + 96;
      v52 = v14;
      while (1)
      {
LABEL_17:
        v18 = (*(**(this + 18) + 32))(*(this + 18), *(this + 1));
        sub_100106518(*(this + 2), v18);
        v19 = v50;
        v20 = *(v5 + 48);
        if (v20)
        {
          v53 = v5;
          v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v20, memory_order_acquire) != -1)
          {
            v47[0].__r_.__value_.__r.__words[0] = &v54;
            v47[0].__r_.__value_.__l.__size_ = &v53;
            v55 = v47;
            std::__call_once(v20, &v55, sub_1000B32C4);
          }
        }

        v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
        if (v21 <= 3)
        {
          switch(v21)
          {
            case 1:
              v27 = sub_10010311C(v19);
              google::protobuf::Reflection::SetInt32(v3, v18, v5, v27);
              break;
            case 2:
              v28 = sub_100103024(v19);
              google::protobuf::Reflection::SetInt64(v3, v18, v5, v28);
              break;
            case 3:
              v23 = sub_10010330C(v19);
              google::protobuf::Reflection::SetUInt32(v3, v18, v5, v23);
              break;
          }

          goto LABEL_40;
        }

        if (v21 > 0xA)
        {
          break;
        }

        if (((1 << v21) & 0x560) != 0)
        {
          google::protobuf::internal::LogMessage::LogMessage(v47, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/map_field.cc", 430);
          v22 = google::protobuf::internal::LogMessage::operator<<(v47, "Can't get here.");
          google::protobuf::internal::LogFinisher::operator=(&v55, &v22->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v47[0].__r_.__value_.__l.__data_);
        }

        else if (v21 == 7)
        {
          v29 = sub_100103404(v19);
          google::protobuf::Reflection::SetBool(v3, v18, v5, v29);
        }

        else
        {
          if (v21 != 9)
          {
            break;
          }

          v24 = sub_100102F2C(v19);
          if (*(v24 + 23) < 0)
          {
            sub_1000B32D8(__p, *v24, *(v24 + 8));
          }

          else
          {
            v25 = *v24;
            v49 = *(v24 + 16);
            *__p = v25;
          }

          google::protobuf::Reflection::SetString(v3, v18, v5, __p);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_40:
        v30 = v50;
        v31 = *(v8 + 6);
        if (v31)
        {
          v53 = v8;
          v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v31, memory_order_acquire) != -1)
          {
            v47[0].__r_.__value_.__r.__words[0] = &v54;
            v47[0].__r_.__value_.__l.__size_ = &v53;
            v55 = v47;
            std::__call_once(v31, &v55, sub_1000B32C4);
          }
        }

        v32 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 14)];
        if (v32 > 5)
        {
          if (v32 <= 7)
          {
            if (v32 == 6)
            {
              v39 = sub_100101CC4((v30 + 8));
              google::protobuf::Reflection::SetFloat(v3, v18, v8, v39);
            }

            else
            {
              v37 = sub_1001020C4(v30 + 4);
              google::protobuf::Reflection::SetBool(v3, v18, v8, v37);
            }
          }

          else
          {
            switch(v32)
            {
              case 8:
                v41 = sub_1001024BC(v30 + 4);
                google::protobuf::Reflection::SetEnumValue(v3, v18, v8, v41);
                break;
              case 10:
                v43 = sub_1001026B0((v30 + 8));
                v44 = google::protobuf::Reflection::MutableMessage(v3, v18, v8, 0);
                (*(*v44 + 112))(v44, v43);
                break;
              case 9:
                v34 = sub_1001022C4((v30 + 8));
                if (*(v34 + 23) < 0)
                {
                  sub_1000B32D8(v45, *v34, *(v34 + 8));
                }

                else
                {
                  v35 = *v34;
                  v46 = *(v34 + 16);
                  *v45 = v35;
                }

                google::protobuf::Reflection::SetString(v3, v18, v8, v45);
                if (SHIBYTE(v46) < 0)
                {
                  operator delete(v45[0]);
                }

                break;
            }
          }
        }

        else if (v32 <= 2)
        {
          if (v32 == 1)
          {
            v38 = sub_1001014CC(v30 + 4);
            google::protobuf::Reflection::SetInt32(v3, v18, v8, v38);
          }

          else if (v32 == 2)
          {
            v36 = sub_1001016C8((v30 + 8));
            google::protobuf::Reflection::SetInt64(v3, v18, v8, v36);
          }
        }

        else if (v32 == 3)
        {
          v40 = sub_1001018C4(v30 + 4);
          google::protobuf::Reflection::SetUInt32(v3, v18, v8, v40);
        }

        else if (v32 == 4)
        {
          v42 = sub_100101AC0((v30 + 8));
          google::protobuf::Reflection::SetUInt64(v3, v18, v8, v42);
        }

        else
        {
          v33 = sub_100101EC8((v30 + 8));
          google::protobuf::Reflection::SetDouble(v3, v18, v8, v33);
        }

        result = sub_100104958(&v50);
        if (!v50)
        {
          return result;
        }
      }

      if (v21 == 4)
      {
        v26 = sub_100103214(v19);
        google::protobuf::Reflection::SetUInt64(v3, v18, v5, v26);
      }

      goto LABEL_40;
    }

    v50 = *(*v17 + 40);
    v51 = this + 96;
    v52 = v14;
    if (v50)
    {
      goto LABEL_17;
    }
  }

  return result;
}

void sub_100102EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100102F2C(uint64_t a1)
{
  if (sub_100103FB4(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 144);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetStringValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "string");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_10010300C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100103024(uint64_t a1)
{
  if (sub_100103FB4(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 124);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_100103104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010311C(unsigned int *a1)
{
  if (sub_100103FB4(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 132);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001031FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100103214(uint64_t a1)
{
  if (sub_100103FB4(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 128);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetUInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001032F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010330C(unsigned int *a1)
{
  if (sub_100103FB4(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 136);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetUInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001033EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100103404(unsigned __int8 *a1)
{
  if (sub_100103FB4(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 140);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetBoolValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BOOL");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001034E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::DynamicMapField::SyncMapWithRepeatedFieldNoLock(google::protobuf::internal::DynamicMapField *this)
{
  v2 = (this + 96);
  (*(**(this + 18) + 152))(*(this + 18));
  v4 = v3;
  v5 = (*(**(this + 18) + 152))(*(this + 18));
  v6 = google::protobuf::Descriptor::map_key(v5);
  v7 = (*(**(this + 18) + 152))(*(this + 18));
  v8 = google::protobuf::Descriptor::map_value(v7);
  if (!*(this + 1))
  {
    v9 = *(this + 15);
    v10 = *(this + 13);
    if (v10 > v9)
    {
      v11 = *(this + 16);
      while (1)
      {
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          break;
        }

        if (v10 == ++v9)
        {
          goto LABEL_11;
        }
      }

      if (v12 == *(v11 + 8 * (v9 ^ 1)))
      {
        v12 = *(*v12 + 40);
        v36[0].__r_.__value_.__r.__words[0] = v12;
        v36[0].__r_.__value_.__l.__size_ = v2;
        v36[0].__r_.__value_.__r.__words[2] = v9;
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v36[0].__r_.__value_.__r.__words[0] = *(v11 + 8 * v9);
        v36[0].__r_.__value_.__l.__size_ = v2;
        v36[0].__r_.__value_.__r.__words[2] = v9;
      }

      do
      {
        sub_10010071C(v12 + 8);
        sub_100104958(v36);
        v12 = v36[0].__r_.__value_.__r.__words[0];
      }

      while (v36[0].__r_.__value_.__r.__words[0]);
    }
  }

LABEL_11:
  sub_100104550(v2);
  v13 = *(this + 2);
  if (*(v13 + 8))
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    do
    {
      v43 = 0;
      v16 = *(v6 + 48);
      if (v16)
      {
        v39 = v6;
        v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v16, memory_order_acquire) != -1)
        {
          v36[0].__r_.__value_.__r.__words[0] = &v40;
          v36[0].__r_.__value_.__l.__size_ = &v39;
          v41 = v36;
          std::__call_once(v16, &v41, sub_1000B32C4);
        }
      }

      v17 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v6 + 56)];
      if (v17 <= 3)
      {
        switch(v17)
        {
          case 1:
            Int32 = google::protobuf::Reflection::GetInt32(v4, *v15, v6);
            if (v43 != 1)
            {
              if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 = 1;
LABEL_45:
              v43 = v20;
            }

LABEL_46:
            LODWORD(__p.__r_.__value_.__l.__data_) = Int32;
            break;
          case 2:
            Int64 = google::protobuf::Reflection::GetInt64(v4, *v15, v6);
            if (v43 != 2)
            {
              if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v22 = 2;
LABEL_52:
              v43 = v22;
            }

LABEL_53:
            __p.__r_.__value_.__r.__words[0] = Int64;
            break;
          case 3:
            Int32 = google::protobuf::Reflection::GetUInt32(v4, *v15, v6);
            if (v43 != 3)
            {
              if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 = 3;
              goto LABEL_45;
            }

            goto LABEL_46;
        }
      }

      else
      {
        if (v17 <= 0xA)
        {
          if (((1 << v17) & 0x560) != 0)
          {
            google::protobuf::internal::LogMessage::LogMessage(v36, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/map_field.cc", 513);
            v18 = google::protobuf::internal::LogMessage::operator<<(v36, "Can't get here.");
            google::protobuf::internal::LogFinisher::operator=(&v41, &v18->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v36[0].__r_.__value_.__l.__data_);
            goto LABEL_60;
          }

          if (v17 == 7)
          {
            Bool = google::protobuf::Reflection::GetBool(v4, *v15, v6);
            if (v43 != 7)
            {
              if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v43 = 7;
            }

            __p.__r_.__value_.__s.__data_[0] = Bool;
            goto LABEL_60;
          }

          if (v17 == 9)
          {
            google::protobuf::Reflection::GetString(&v37, v4, *v15, v6);
            sub_100103D3C(&__p, &v37);
            if (v38 < 0)
            {
              operator delete(v37.n128_u64[0]);
            }

            goto LABEL_60;
          }
        }

        if (v17 == 4)
        {
          Int64 = google::protobuf::Reflection::GetUInt64(v4, *v15, v6);
          if (v43 != 4)
          {
            if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v22 = 4;
            goto LABEL_52;
          }

          goto LABEL_53;
        }
      }

LABEL_60:
      if (!*(this + 1))
      {
        sub_100104ACC(v2, &__p, 0, v36);
        if (v36[0].__r_.__value_.__r.__words[0])
        {
          sub_10010071C((v36[0].__r_.__value_.__r.__words[0] + 32));
        }
      }

      sub_100105784(v2, &__p, v36);
      v24 = v36[0].__r_.__value_.__r.__words[0];
      v25 = *(v8 + 48);
      if (v25)
      {
        v39 = v8;
        v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v25, memory_order_acquire) != -1)
        {
          v36[0].__r_.__value_.__r.__words[0] = &v40;
          v36[0].__r_.__value_.__l.__size_ = &v39;
          v41 = v36;
          std::__call_once(v25, &v41, sub_1000B32C4);
        }

        v26 = *(v8 + 48);
        v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        *(v24 + 40) = v27;
        if (v26)
        {
          v39 = v8;
          v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v26, memory_order_acquire) != -1)
          {
            v36[0].__r_.__value_.__r.__words[0] = &v40;
            v36[0].__r_.__value_.__l.__size_ = &v39;
            v41 = v36;
            std::__call_once(v26, &v41, sub_1000B32C4);
          }

          v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        }
      }

      else
      {
        v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        *(v36[0].__r_.__value_.__r.__words[0] + 40) = v27;
      }

      if (v27 > 5)
      {
        if (v27 <= 7)
        {
          if (v27 == 6)
          {
            v28 = sub_1001055EC(*(this + 1));
            *v28 = google::protobuf::Reflection::GetFloat(v4, *v15, v8);
          }

          else
          {
            v28 = sub_1001056B8(*(this + 1));
            *v28 = google::protobuf::Reflection::GetBool(v4, *v15, v8);
          }

          goto LABEL_96;
        }

        if (v27 != 8)
        {
          if (v27 == 9)
          {
            v28 = sub_1000B3534(*(this + 1));
            google::protobuf::Reflection::GetString(v36, v4, *v15, v8);
            if (*(v28 + 23) < 0)
            {
              operator delete(*v28);
            }

            v32 = *&v36[0].__r_.__value_.__l.__data_;
            v28[2] = v36[0].__r_.__value_.__r.__words[2];
            *v28 = v32;
          }

          else
          {
            if (v27 != 10)
            {
              goto LABEL_97;
            }

            Message = google::protobuf::Reflection::GetMessage(v4, *v15, v8, 0);
            v28 = (*(*Message + 32))(Message, *(this + 1));
            (*(*v28 + 14))(v28, Message);
          }

          goto LABEL_96;
        }

        v28 = sub_1001051F0(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetEnumValue(v4, *v15, v8);
        goto LABEL_90;
      }

      if (v27 <= 2)
      {
        if (v27 != 1)
        {
          if (v27 != 2)
          {
            goto LABEL_97;
          }

          v28 = sub_1001052BC(*(this + 1));
          UInt64 = google::protobuf::Reflection::GetInt64(v4, *v15, v8);
          goto LABEL_92;
        }

        v28 = sub_1001051F0(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetInt32(v4, *v15, v8);
        goto LABEL_90;
      }

      if (v27 == 3)
      {
        v28 = sub_100105388(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetUInt32(v4, *v15, v8);
LABEL_90:
        *v28 = EnumValue;
        goto LABEL_96;
      }

      if (v27 == 4)
      {
        v28 = sub_100105454(*(this + 1));
        UInt64 = google::protobuf::Reflection::GetUInt64(v4, *v15, v8);
LABEL_92:
        *v28 = UInt64;
        goto LABEL_96;
      }

      v28 = sub_100105520(*(this + 1));
      *v28 = google::protobuf::Reflection::GetDouble(v4, *v15, v8);
LABEL_96:
      *(v24 + 32) = v28;
LABEL_97:
      if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v15;
      v33 = *(this + 2);
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v34 + 8;
      }

      else
      {
        v35 = 0;
      }
    }

    while (v15 != (v35 + 8 * *(v33 + 8)));
  }
}

void sub_100103CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 9 && a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100103D3C(uint64_t a1, __n128 *a2)
{
  sub_1001043A0(a1, 9);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

uint64_t google::protobuf::internal::DynamicMapField::SpaceUsedExcludingSelfNoLock(google::protobuf::internal::DynamicMapField *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = 8 * *(v2 + 12);
    v4 = *(v2 + 16);
    if (v4)
    {
      if (*v4 >= 1)
      {
        v5 = 0;
        do
        {
          v3 += (*(**&v4[2 * v5 + 2] + 136))(*&v4[2 * v5 + 2]);
          ++v5;
          v4 = *(v2 + 16);
        }

        while (v5 < *v4);
      }

      v3 += 8;
    }

    v6 = v3 + 48;
  }

  else
  {
    v6 = 48;
  }

  v7 = (this + 96);
  v8 = *(this + 12);
  if (v8)
  {
    v9 = *(this + 15);
    v10 = *(this + 13);
    if (v10 <= v9)
    {
      v12 = 0;
    }

    else
    {
      v11 = *(this + 16);
      while (1)
      {
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          break;
        }

        v9 = (v9 + 1);
        if (v10 == v9)
        {
          v12 = 0;
          v9 = v10;
          goto LABEL_18;
        }
      }

      if (v12 == *(v11 + 8 * (v9 ^ 1)))
      {
        v12 = *(*v12 + 40);
      }
    }

LABEL_18:
    v22[0] = v12;
    v22[1] = v7;
    v22[2] = v9;
    if (sub_100103FB4(v12) == 9)
    {
      v13 = 24 * v8;
    }

    else
    {
      v13 = 0;
    }

    v6 += 48 * v8 + v13;
    v14 = sub_100104054((v12 + 8));
    if (v14 > 5)
    {
      if (v14 <= 7)
      {
        v20 = v6 + v8;
        if (v14 != 7)
        {
          v20 = v6;
        }

        if (v14 == 6)
        {
          v6 += 4 * v8;
        }

        else
        {
          return v20;
        }
      }

      else
      {
        switch(v14)
        {
          case 8:
            v6 += 4 * v8;
            break;
          case 9:
            v6 += 24 * v8;
            break;
          case 10:
            while (v12)
            {
              v18 = sub_1001026B0((v12 + 8));
              (*(*v18 + 152))(v18);
              v6 += google::protobuf::Reflection::SpaceUsedLong(v19, v18);
              sub_100104958(v22);
              v12 = v22[0];
            }

            break;
        }
      }
    }

    else
    {
      v15 = v6 + 4 * v8;
      v16 = v6 + 8 * v8;
      if (v14 == 5)
      {
        v17 = v6 + 8 * v8;
      }

      else
      {
        v17 = v6;
      }

      if (v14 == 4)
      {
        v17 = v6 + 8 * v8;
      }

      if (v14 == 3)
      {
        v17 = v6 + 4 * v8;
      }

      if (v14 != 2)
      {
        v16 = v6;
      }

      if (v14 != 1)
      {
        v15 = v16;
      }

      if (v14 <= 2)
      {
        return v15;
      }

      else
      {
        return v17;
      }
    }
  }

  return v6;
}

uint64_t sub_100103FB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 91);
    v3 = google::protobuf::internal::LogMessage::operator<<(v7, "Protocol Buffer map usage error:\n");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "MapKey::type MapKey is not initialized. ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Call set methods to initialize MapKey.");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
    return *(a1 + 24);
  }

  return result;
}

void sub_10010403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100104054(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result || !*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 742);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "Protocol Buffer map usage error:\n");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "MapValueConstRef::type MapValueConstRef is not initialized.");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    return *(a1 + 8);
  }

  return result;
}

void sub_1001040D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010410C(uint64_t a1, void **a2)
{
  v4 = (*(*a1 + 160))(a1);
  v5 = v4[3];
  v6 = v4[1];
  if (v6 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v7 = v4[4];
    while (1)
    {
      v8 = *(v7 + 8 * v5);
      if (v8)
      {
        break;
      }

      if (v6 == ++v5)
      {
        v8 = 0;
        v5 = v4[1];
        goto LABEL_9;
      }
    }

    if (v8 == *(v7 + 8 * (v5 ^ 1)))
    {
      v8 = *(*v8 + 40);
    }
  }

LABEL_9:
  v9 = *a2;
  *v9 = v8;
  v9[1] = v4;
  v9[2] = v5;
  v10 = *(*a1 + 176);

  return v10(a1, a2);
}