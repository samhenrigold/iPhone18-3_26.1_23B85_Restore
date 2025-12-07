uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindSymbolOnlyFlat(void *a1, void *a2, void *a3)
{
  *&v16 = a2;
  *(&v16 + 1) = a3;
  v5 = a1[13];
  v4 = a1[14];
  v6 = a1[15];
  __p.__r_.__value_.__r.__words[0] = v5;
  v7 = sub_276B52C98(v4, v6, &v16, &__p);
  v9 = -32;
  if (a1[14] == v7)
  {
    v9 = 0;
  }

  v10 = (v7 + v9);
  if (v7 + v9 == a1[15])
  {
    return 0;
  }

  sub_276B4E948(v10, a1, v8, &__p);
  sub_276B280C4(v15, &__p, v11);
  if (sub_276B4ED58(v15[0], v15[1], v16, *(&v16 + 1)))
  {
    v12 = *(*a1 + 40 * *v10);
  }

  else
  {
    v12 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_276B4ED3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_276B4ED58(unsigned __int8 *__s2, int64_t __n, unsigned __int8 *__s1, int64_t a4)
{
  if (__n == a4)
  {
    result = 1;
    if (__n < 1 || __s2 == __s1)
    {
      return result;
    }

    if (!memcmp(__s2, __s1, __n))
    {
      return 1;
    }
  }

  return a4 >= __n && !memcmp(__s1, __s2, __n) && __s1[__n] == 46;
}

uint64_t **sub_276B4EE40(uint64_t **result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
    v15 = result;
    if (v1 != v2)
    {
      sub_276B51C48(result, 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3));
    }

    v7 = 8 * (v4 >> 3);
    v12 = 0;
    v13 = 40 * v6;
    v14 = 40 * v6;
    if (0xCCCCCCCCCCCCCCCDLL * (v3 >> 3))
    {
      v8 = result[1];
      v9 = v7 + v2 - v8;
      sub_276B51CA0(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return sub_276B51DE4(&v12);
  }

  return result;
}

void sub_276B4EF2C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_276B51DE4(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x276B4EF1CLL);
}

__n128 google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindAllFileNames(void *a1, void *a2)
{
  sub_276B4F0C4(a2, a1[5] + ((a1[8] - a1[7]) >> 5));
  v6 = a1[3];
  if (v6 == a1 + 4)
  {
    v12 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      sub_276B280C4(&v18, v6 + 5, v4);
      v17 = v18;
      sub_276B264AC(&v17, &v18);
      v8 = *a2 + 24 * v7;
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      result = v18;
      *(v8 + 16) = v19;
      *v8 = result;
      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      ++v7;
      v6 = v10;
    }

    while (v10 != a1 + 4);
    v12 = v7;
  }

  v14 = a1[7];
  v13 = a1[8];
  if (v14 != v13)
  {
    v15 = 24 * v12;
    do
    {
      sub_276B280C4(&v18, (v14 + 8), v4);
      v17 = v18;
      sub_276B264AC(&v17, &v18);
      v16 = *a2 + v15;
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      result = v18;
      *(v16 + 16) = v19;
      *v16 = result;
      v14 += 32;
      v15 += 24;
    }

    while (v14 != v13);
  }

  return result;
}

void sub_276B4F0C4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_276B53888(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 1);
      v3 -= 3;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v7;
  }
}

void google::protobuf::EncodedDescriptorDatabase::~EncodedDescriptorDatabase(google::protobuf::EncodedDescriptorDatabase *this)
{
  *this = &unk_2885C76B0;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = *(this + 2);
  }

  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    v6 = (v5 + 168);
    sub_276B535D0(&v6);
    sub_276B2E8B0(v5 + 136, *(v5 + 144));
    v6 = (v5 + 112);
    sub_276B53018(&v6);
    sub_276B2E8B0(v5 + 80, *(v5 + 88));
    v6 = (v5 + 56);
    sub_276B53018(&v6);
    sub_276B2E8B0(v5 + 24, *(v5 + 32));
    v6 = v5;
    sub_276B539F4(&v6);
    MEMORY[0x277C9F670](v5, 0x1060C40566A0058);
  }
}

{
  google::protobuf::EncodedDescriptorDatabase::~EncodedDescriptorDatabase(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::DescriptorPoolDatabase::DescriptorPoolDatabase(void *this, const google::protobuf::DescriptorPool *a2)
{
  *this = &unk_2885C76F8;
  this[1] = a2;
  return this;
}

{
  *this = &unk_2885C76F8;
  this[1] = a2;
  return this;
}

BOOL google::protobuf::DescriptorPoolDatabase::FindFileByName(uint64_t a1, uint64_t *a2, google::protobuf::FileDescriptorProto *a3)
{
  FileByName = google::protobuf::DescriptorPool::FindFileByName(*(a1 + 8), a2, a3);
  if (FileByName)
  {
    google::protobuf::FileDescriptorProto::Clear(a3);
    google::protobuf::FileDescriptor::CopyTo(FileByName, a3);
  }

  return FileByName != 0;
}

BOOL google::protobuf::DescriptorPoolDatabase::FindFileContainingSymbol(uint64_t a1, uint64_t *a2, google::protobuf::FileDescriptorProto *a3)
{
  FileContainingSymbol = google::protobuf::DescriptorPool::FindFileContainingSymbol(*(a1 + 8), a2, a3);
  if (FileContainingSymbol)
  {
    google::protobuf::FileDescriptorProto::Clear(a3);
    google::protobuf::FileDescriptor::CopyTo(FileContainingSymbol, a3);
  }

  return FileContainingSymbol != 0;
}

uint64_t google::protobuf::DescriptorPoolDatabase::FindFileContainingExtension(uint64_t a1, uint64_t *a2, const char *a3, google::protobuf::FileDescriptorProto *a4)
{
  result = google::protobuf::DescriptorPool::FindMessageTypeByName(*(a1 + 8), a2, a3);
  if (result)
  {
    result = google::protobuf::DescriptorPool::FindExtensionByNumber(*(a1 + 8), result, a3);
    if (result)
    {
      v8 = result;
      google::protobuf::FileDescriptorProto::Clear(a4);
      google::protobuf::FileDescriptor::CopyTo(*(v8 + 40), a4);
      return 1;
    }
  }

  return result;
}

BOOL google::protobuf::DescriptorPoolDatabase::FindAllExtensionNumbers(uint64_t a1, uint64_t *a2, const void **a3)
{
  MessageTypeByName = google::protobuf::DescriptorPool::FindMessageTypeByName(*(a1 + 8), a2, a3);
  if (MessageTypeByName)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    google::protobuf::DescriptorPool::FindAllExtensions(*(a1 + 8), MessageTypeByName, &v19);
    v6 = v19;
    v7 = v20;
    if (v19 != v20)
    {
      v8 = a3[1];
      do
      {
        v9 = *(*v6 + 68);
        v10 = a3[2];
        if (v8 >= v10)
        {
          v11 = *a3;
          v12 = v8 - *a3;
          v13 = v12 >> 2;
          v14 = (v12 >> 2) + 1;
          if (v14 >> 62)
          {
            sub_2769BA860();
          }

          v15 = v10 - v11;
          if (v15 >> 1 > v14)
          {
            v14 = v15 >> 1;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v16 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            sub_276B2B540(a3, v16);
          }

          *(4 * v13) = v9;
          v8 = (4 * v13 + 4);
          memcpy(0, v11, v12);
          v17 = *a3;
          *a3 = 0;
          a3[1] = v8;
          a3[2] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v8 = v9;
          v8 += 4;
        }

        a3[1] = v8;
        v6 += 8;
      }

      while (v6 != v7);
      v6 = v19;
    }

    if (v6)
    {
      v20 = v6;
      operator delete(v6);
    }
  }

  return MessageTypeByName != 0;
}

void sub_276B4F634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::MergedDescriptorDatabase *google::protobuf::MergedDescriptorDatabase::MergedDescriptorDatabase(google::protobuf::MergedDescriptorDatabase *this, google::protobuf::DescriptorDatabase *a2, google::protobuf::DescriptorDatabase *a3)
{
  v6 = a3;
  v7 = a2;
  *this = &unk_2885C7740;
  *(this + 1) = 0;
  v4 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  sub_276AF6100(this + 8, &v7);
  sub_276AF6100(v4, &v6);
  return this;
}

void sub_276B4F6D0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *google::protobuf::MergedDescriptorDatabase::MergedDescriptorDatabase(void *a1, const void **a2)
{
  *a1 = &unk_2885C7740;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  sub_276B53A98(a1 + 1, *a2, a2[1], (a2[1] - *a2) >> 3);
  return a1;
}

{
  *a1 = &unk_2885C7740;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  sub_276B53A98(a1 + 1, *a2, a2[1], (a2[1] - *a2) >> 3);
  return a1;
}

void google::protobuf::MergedDescriptorDatabase::~MergedDescriptorDatabase(google::protobuf::MergedDescriptorDatabase *this)
{
  *this = &unk_2885C7740;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2885C7740;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2885C7740;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C9F670);
}

uint64_t google::protobuf::MergedDescriptorDatabase::FindFileByName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    return 0;
  }

  v7 = v3 + 8;
  do
  {
    result = (*(**(v7 - 8) + 16))(*(v7 - 8), a2, a3);
    if (result)
    {
      break;
    }

    v9 = v7 == v4;
    v7 += 8;
  }

  while (!v9);
  return result;
}

uint64_t google::protobuf::MergedDescriptorDatabase::FindFileContainingSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (*(a1 + 16) == v4)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v3 = a2;
    v7 = 0;
    while (!(*(**(v4 + 8 * v7) + 24))(*(v4 + 8 * v7), v3, a3))
    {
      ++v7;
      v4 = *(a1 + 8);
      if (v7 >= (*(a1 + 16) - v4) >> 3)
      {
        goto LABEL_5;
      }
    }

    google::protobuf::FileDescriptorProto::FileDescriptorProto(v12, 0);
    if (v7)
    {
      v9 = 0;
      LODWORD(v3) = 0;
      do
      {
        v10 = *(*(a1 + 8) + 8 * v9);
        if ((*(*v10 + 16))(v10, *(a3 + 176) & 0xFFFFFFFFFFFFFFFELL, v12))
        {
          break;
        }

        LODWORD(v3) = ++v9 >= v7;
      }

      while (v7 != v9);
    }

    else
    {
      LODWORD(v3) = 1;
    }

    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v12);
    v8 = 1;
  }

  return v8 & v3;
}

void sub_276B4FA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MergedDescriptorDatabase::FindFileContainingExtension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (*(a1 + 16) == v5)
  {
LABEL_5:
    v10 = 0;
  }

  else
  {
    v4 = a3;
    v9 = 0;
    while (!(*(**(v5 + 8 * v9) + 32))(*(v5 + 8 * v9), a2, v4, a4))
    {
      ++v9;
      v5 = *(a1 + 8);
      if (v9 >= (*(a1 + 16) - v5) >> 3)
      {
        goto LABEL_5;
      }
    }

    google::protobuf::FileDescriptorProto::FileDescriptorProto(v14, 0);
    if (v9)
    {
      v11 = 0;
      LODWORD(v4) = 0;
      do
      {
        v12 = *(*(a1 + 8) + 8 * v11);
        if ((*(*v12 + 16))(v12, *(a4 + 176) & 0xFFFFFFFFFFFFFFFELL, v14))
        {
          break;
        }

        LODWORD(v4) = ++v11 >= v9;
      }

      while (v9 != v11);
    }

    else
    {
      LODWORD(v4) = 1;
    }

    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v14);
    v10 = 1;
  }

  return v10 & v4;
}

void sub_276B4FB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MergedDescriptorDatabase::FindAllExtensionNumbers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  __p = 0;
  v14 = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5)
  {
    v7 = 0;
    v11 = v17;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = (*(**v4 + 40))(*v4, a2, &__p);
      v9 = __p;
      if (v8)
      {
        v10 = v14;
        v18[0] = &v16;
        v18[1] = v16;
        if (__p != v14)
        {
          do
          {
            sub_276B53B50(v18, v9++);
          }

          while (v9 != v10);
          v9 = __p;
        }

        v7 = 1;
      }

      v14 = v9;
      ++v4;
    }

    while (v4 != v5);
    v11 = v16;
  }

  sub_276B53BBC(v18, *(a3 + 8), v11, v17, a3);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  sub_276A579A4(&v16, v17[0]);
  return v7 & 1;
}

void sub_276B4FCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_276A579A4(&a12, a13);
  _Unwind_Resume(a1);
}

std::string *sub_276B4FD14(void *a1, std::string *a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
    do
    {
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

      ++v4;
      v5 = v7;
    }

    while (v7 != a4);
  }

  return sub_276B4FD6C(a1, a2, a3, a4, v4);
}

std::string *sub_276B4FD6C(void *a1, std::string *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3);
      if (v17 >= a5)
      {
        sub_276B5000C(a1, v5, a1[1], &v5[a5]);
        std::string::operator=(v5, (v7 + 4));
        if (v6 != 1)
        {
          v20 = v5;
          do
          {
            v21 = v7[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v7[2];
                v23 = *v22 == v7;
                v7 = v22;
              }

              while (!v23);
            }

            std::string::operator=(++v20, (v22 + 4));
            v7 = v22;
          }

          while (v6-- > 2);
        }
      }

      else
      {
        *v33 = a3;
        sub_276B5012C(v33, v17);
        v19 = *v33;
        a1[1] = sub_276B501B8(a1, *v33, a4, a1[1]);
        if (v16 >= 1)
        {
          sub_276B5000C(a1, v5, v10, &v5[v6]);
          sub_276B50324(v33, v7, v19, v5);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_2769BA860();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v36 = a1;
      if (v15)
      {
        sub_276B275D0(a1, v15);
      }

      *v33 = 0;
      v34 = 8 * (v13 >> 3);
      v35 = v34;
      sub_276B5007C(v33, a3, a5);
      v25 = v34;
      memcpy(v35, v5, a1[1] - v5);
      v26 = *a1;
      v27 = v34;
      *&v35 = v35 + a1[1] - v5;
      a1[1] = v5;
      v28 = v5 - v26;
      v29 = (v27 - (v5 - v26));
      memcpy(v29, v26, v28);
      v30 = *a1;
      *a1 = v29;
      v31 = a1[2];
      *(a1 + 1) = v35;
      *&v35 = v30;
      *(&v35 + 1) = v31;
      *v33 = v30;
      v34 = v30;
      sub_276B27628(v33);
      return v25;
    }
  }

  return v5;
}

uint64_t sub_276B5000C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_276B502A4(&v12, a2, v7, v6);
}

void *sub_276B5007C(void *result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    do
    {
      if (*(a2 + 55) < 0)
      {
        result = sub_276A07B90(v4, a2[4], a2[5]);
      }

      else
      {
        v7 = *(a2 + 2);
        *(v4 + 16) = a2[6];
        *v4 = v7;
      }

      v8 = a2[1];
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
          v9 = a2[2];
          v10 = *v9 == a2;
          a2 = v9;
        }

        while (!v10);
      }

      v4 += 24;
      a2 = v9;
    }

    while (v4 != v6);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

void **sub_276B5012C(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

void *sub_276B501B8(uint64_t a1, void *a2, void *a3, void *__dst)
{
  v4 = __dst;
  v14 = __dst;
  v15 = __dst;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 55) < 0)
      {
        sub_276A07B90(v4, v6[4], v6[5]);
      }

      else
      {
        v7 = *(v6 + 2);
        v4[2] = v6[6];
        *v4 = v7;
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

      v4 = v15 + 3;
      v15 += 3;
      v6 = v9;
    }

    while (v9 != a3);
  }

  v13 = 1;
  sub_276B2BB70(v12);
  return v4;
}

uint64_t sub_276B502A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void *sub_276B50324(int a1, void *a2, void *a3, std::string *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::string::operator=(this, (v5 + 4));
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      ++this;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void sub_276B503B0(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 16) & 1) == 0)
  {
    v6 = google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 51);
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: desc_proto.has_name(): ");
    google::protobuf::internal::LogFinisher::operator=(v22, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v8 = *(a2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a2[1];
  }

  if (v8)
  {
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v23[0] = v10;
    v23[1] = v8;
    v22[0] = ".";
    v22[1] = 1;
    v11 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if (v12 < 0)
    {
      v11 = *v11;
    }

    if (v12 < 0)
    {
      v12 = v13;
    }

    v21[0] = v11;
    v21[1] = v12;
    google::protobuf::StrCat(v23, v22, v21, &__p);
  }

  else
  {
    v14 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      sub_276A07B90(&__p, *v14, *(v14 + 8));
    }

    else
    {
      v15 = *v14;
      __p.__r_.__value_.__r.__words[2] = *(v14 + 16);
      *&__p.__r_.__value_.__l.__data_ = v15;
    }
  }

  sub_276B2C720(a3, &__p.__r_.__value_.__l.__data_, &__p);
  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    v19 = 8 * v18;
    do
    {
      sub_276B503B0(*v17++, &__p, a3);
      v19 -= 8;
    }

    while (v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_276B5058C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B505E0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

google::protobuf::FileDescriptorProto *sub_276B505E0(google::protobuf::FileDescriptorProto *result, google::protobuf::FileDescriptorProto **a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; result = sub_276B50634(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

google::protobuf::FileDescriptorProto *sub_276B50634(uint64_t a1, google::protobuf::FileDescriptorProto **a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    google::protobuf::FileDescriptorProto::~FileDescriptorProto(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t *sub_276B5067C(uint64_t *a1)
{
  sub_276B506B4(a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

google::protobuf::FileDescriptorProto *sub_276B506B4(google::protobuf::FileDescriptorProto *result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 2);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 4);
    *(v3 + 2) = v4 - 8;
    result = sub_276B50634(v5, (v4 - 8));
  }

  return result;
}

uint64_t sub_276B506FC(uint64_t **a1, uint64_t a2, uint64_t *a3)
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

  v10 = *a3;
  sub_276B50DC4(a1, __p, __p);
  v6 = v5;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6 & 1;
}

void sub_276B50784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B507A0(uint64_t a1, uint64_t a2, const char *a3)
{
  sub_276B280C4(&__p, a2, a3);
  if ((sub_276B4EA0C(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(&__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 204);
    v16 = google::protobuf::internal::LogMessage::operator<<(&__p, "Invalid symbol name: ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, a2);
    google::protobuf::internal::LogFinisher::operator=(&v28, &v17->__r_.__value_.__l.__data_);
    goto LABEL_6;
  }

  v6 = sub_276B50EFC((a1 + 24), a2);
  if ((a1 + 32) == v6)
  {
    if (*(a2 + 23) < 0)
    {
      sub_276A07B90(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v31 = a3;
    sub_276B50DC4((a1 + 24), &__p.__r_.__value_.__l.__data_, &__p);
  }

  else
  {
    v8 = v6;
    sub_276B280C4(&__p, v6 + 4, v7);
    sub_276B280C4(&v28, a2, v9);
    if (sub_276B4ED58(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, v28, v29))
    {
      google::protobuf::internal::LogMessage::LogMessage(&__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 220);
      v11 = google::protobuf::internal::LogMessage::operator<<(&__p, "Symbol name ");
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, a2);
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, " conflicts with the existing symbol ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, v8 + 32);
      v15 = google::protobuf::internal::LogMessage::operator<<(v14, ".");
      google::protobuf::internal::LogFinisher::operator=(&v28, &v15->__r_.__value_.__l.__data_);
LABEL_6:
      google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
      return 0;
    }

    v19 = v8[1];
    if (v19)
    {
      do
      {
        v20 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v20 = v8[2];
        v21 = *v20 == v8;
        v8 = v20;
      }

      while (!v21);
    }

    if (v20 != (a1 + 32))
    {
      sub_276B280C4(&__p, a2, v10);
      sub_276B280C4(&v28, v20 + 4, v22);
      if (sub_276B4ED58(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, v28, v29))
      {
        google::protobuf::internal::LogMessage::LogMessage(&__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 235);
        v23 = google::protobuf::internal::LogMessage::operator<<(&__p, "Symbol name ");
        v24 = google::protobuf::internal::LogMessage::operator<<(v23, a2);
        v25 = google::protobuf::internal::LogMessage::operator<<(v24, " conflicts with the existing symbol ");
        v26 = google::protobuf::internal::LogMessage::operator<<(v25, v20 + 32);
        v27 = google::protobuf::internal::LogMessage::operator<<(v26, ".");
        google::protobuf::internal::LogFinisher::operator=(&v28, &v27->__r_.__value_.__l.__data_);
        goto LABEL_6;
      }
    }

    if (*(a2 + 23) < 0)
    {
      sub_276A07B90(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v31 = a3;
    sub_276B50FA4((a1 + 24), v20, &__p.__r_.__value_.__l.__data_, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

char *sub_276B50A78@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_276B2A028(a3, v6 + v5);
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
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_276B50B44(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 56) < 1)
  {
LABEL_5:
    if (*(a3 + 128) < 1)
    {
      return 1;
    }

    else
    {
      v9 = 0;
      do
      {
        result = sub_276B50C10(a1, a2, *(*(a3 + 136) + 8 * v9 + 8), a4);
        if ((result & 1) == 0)
        {
          break;
        }

        ++v9;
      }

      while (v9 < *(a3 + 128));
    }
  }

  else
  {
    v8 = 0;
    while ((sub_276B50B44(a1, a2, *(*(a3 + 64) + 8 * v8 + 8), a4) & 1) != 0)
    {
      if (++v8 >= *(a3 + 56))
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_276B50C10(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = *(a3 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    if (!*(v7 + 8))
    {
      return 1;
    }

    v8 = *v7;
  }

  else
  {
    v8 = (*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
    if (!*(v7 + 23))
    {
      return 1;
    }
  }

  if (*v8 != 46)
  {
    return 1;
  }

  std::string::basic_string(&v22, v7, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v24);
  v9 = *(a3 + 72);
  __p = v22;
  memset(&v22, 0, sizeof(v22));
  v21 = v9;
  v10 = sub_276B511CC((a1 + 48), &__p, &v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if (v10)
    {
      return 1;
    }
  }

  else if (v10)
  {
    return 1;
  }

  google::protobuf::internal::LogMessage::LogMessage(&__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 277);
  v12 = google::protobuf::internal::LogMessage::operator<<(&__p, "Extension conflicts with extension already in database: extend ");
  v13 = google::protobuf::internal::LogMessage::operator<<(v12, (*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL));
  v14 = google::protobuf::internal::LogMessage::operator<<(v13, " { ");
  v15 = google::protobuf::internal::LogMessage::operator<<(v14, (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL));
  v16 = google::protobuf::internal::LogMessage::operator<<(v15, " = ");
  v17 = google::protobuf::internal::LogMessage::operator<<(v16, *(a3 + 72));
  v18 = google::protobuf::internal::LogMessage::operator<<(v17, " } from:");
  v19 = google::protobuf::internal::LogMessage::operator<<(v18, a2);
  google::protobuf::internal::LogFinisher::operator=(&v22, &v19->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
  return 0;
}

void *sub_276B50DC4(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *sub_276B27B1C(a1, &v4, a2);
  if (!result)
  {
    sub_276B50E44();
  }

  return result;
}

void sub_276B50EE0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B27C24(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_276B50EFC(void *a1, const void **a2)
{
  v3 = a1 + 1;
  for (i = a1[1]; i; i = *(i + v7))
  {
    v6 = sub_276B27BB8(a1, a2, (i + 32));
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 8;
    }

    if (v6)
    {
      v3 = i;
    }
  }

  if (v3 == *a1)
  {
    return v3;
  }

  v8 = *v3;
  if (*v3)
  {
    do
    {
      result = v8;
      v8 = v8[1];
    }

    while (v8);
  }

  else
  {
    do
    {
      result = v3[2];
      v10 = *result == v3;
      v3 = result;
    }

    while (v10);
  }

  return result;
}

void *sub_276B50FA4(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  result = *sub_276B51028(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_276B50E44();
  }

  return result;
}

const void **sub_276B51028(uint64_t **a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_276B27BB8(a1, a5, a2 + 4))
  {
    if (!sub_276B27BB8(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_276B27BB8(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_276B27BB8(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_276B27B1C(a1, a3, a5);
}

uint64_t sub_276B511CC(uint64_t **a1, __int128 *a2, void *a3)
{
  sub_276B515DC(__p, a2, a3);
  sub_276B51240(a1, __p, __p);
  v5 = v4;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5 & 1;
}

void sub_276B51224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_276B51240(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *sub_276B512C0(a1, &v4, a2);
  if (!result)
  {
    sub_276B51404();
  }

  return result;
}

uint64_t *sub_276B512C0(uint64_t a1, void *a2, const void **a3)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
  {
    do
    {
      while (1)
      {
        v7 = v3;
        v9 = v3 + 4;
        v8 = v3[4];
        v10 = *(v9 + 23);
        v11 = *(a3 + 23);
        if (v11 >= 0)
        {
          v12 = *(a3 + 23);
        }

        else
        {
          v12 = a3[1];
        }

        if (v11 >= 0)
        {
          v13 = a3;
        }

        else
        {
          v13 = *a3;
        }

        if (v10 >= 0)
        {
          v14 = *(v9 + 23);
        }

        else
        {
          v14 = v9[1];
        }

        if (v10 >= 0)
        {
          v15 = v9;
        }

        else
        {
          v15 = v8;
        }

        if (v14 >= v12)
        {
          v16 = v12;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v13, v15, v16);
        v18 = v12 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          v19 = memcmp(v15, v13, v16);
          v20 = v14 < v12;
          if (v19)
          {
            v20 = v19 < 0;
          }

          if (v20 || *(a3 + 6) >= *(v7 + 14))
          {
            break;
          }
        }

        v3 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_30;
        }
      }

      if (!sub_276B51498(a1, v9, a3))
      {
        break;
      }

      v4 = v7 + 1;
      v3 = v7[1];
    }

    while (v3);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_30:
  *a2 = v7;
  return v4;
}

void sub_276B5147C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B27C24(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_276B51498(uint64_t a1, const void **a2, const void **a3)
{
  v5 = *(a3 + 23);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if (v5 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  return !v16 && *(a2 + 6) < *(a3 + 6);
}

void *sub_276B5157C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_276A07B90(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 6) = *(a2 + 6);
  __dst[4] = *(a2 + 4);
  return __dst;
}

void *sub_276B515DC(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_276A07B90(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v6;
  }

  *(__dst + 6) = *(a2 + 6);
  __dst[4] = *a3;
  return __dst;
}

uint64_t sub_276B51648(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return v3;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_276B51498(a1, (v2 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v2;
    }

    v2 = *(v2 + v8);
  }

  while (v2);
  if (v6 == v3)
  {
    return v3;
  }

  v9 = *(v6 + 55);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  if (v10 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v9 >= 0)
  {
    v13 = *(v6 + 55);
  }

  else
  {
    v13 = *(v6 + 40);
  }

  if (v9 >= 0)
  {
    v14 = (v6 + 32);
  }

  else
  {
    v14 = *(v6 + 32);
  }

  if (v13 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = memcmp(v12, v14, v15);
  v17 = v11 < v13;
  if (v16)
  {
    v17 = v16 < 0;
  }

  if (v17)
  {
    return v3;
  }

  v19 = memcmp(v14, v12, v15);
  v20 = v13 < v11;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (!v20 && *(a2 + 24) < *(v6 + 56))
  {
    return v3;
  }

  return v6;
}

uint64_t sub_276B51770(uint64_t **a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = *(a4 + 64);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 56);
  if (v10)
  {
    v11 = 8 * v10;
    while ((sub_276B51770(a1, a2, a3, *v9) & 1) != 0)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    v12 = *(a4 + 136);
    if (v12)
    {
      v13 = (v12 + 8);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a4 + 128);
    if (v14)
    {
      v15 = 8 * v14 - 8;
      do
      {
        v16 = *v13++;
        result = sub_276B51840(a1, a2, a3, v16);
        if (result)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }

        v15 -= 8;
      }

      while (!v18);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_276B51840(uint64_t **a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v32[0] = a2;
  v32[1] = a3;
  v6 = *(a4 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    if (!*(v6 + 8))
    {
      return 1;
    }

    v7 = *v6;
  }

  else
  {
    v7 = (*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
    if (!*(v6 + 23))
    {
      return 1;
    }
  }

  if (*v7 == 46)
  {
    LODWORD(v26.__r_.__value_.__l.__data_) = -858993459 * ((a1[1] - *a1) >> 3) - 1;
    sub_276B280C4(&v36, v6, a3);
    *&__p.__r_.__value_.__l.__data_ = v36;
    sub_276B264AC(&__p, &v26.__r_.__value_.__l.__size_);
    v28 = *(a4 + 72);
    sub_276B52298(a1 + 17, &v26, &v26);
    if (v8)
    {
      v9 = a1[21];
      v10 = a1[22];
      std::string::basic_string(&v29, (*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL), 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v36);
      v11 = *(a4 + 72);
      __p = v29;
      memset(&v29, 0, sizeof(v29));
      v31 = v11;
      v35 = a1[20];
      LOBYTE(v36) = 0;
      v13 = sub_276B525CC(v9, &__p, (0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3)), &v35);
      if (v13 == v10)
      {
        v14 = 0;
      }

      else
      {
        sub_276B280C4(v33, &__p, v12);
        v34 = v31;
        *&v36 = sub_276B4EDF4(v13, v35, v15);
        *(&v36 + 1) = v16;
        v37 = *(v13 + 32);
        v14 = sub_276B524C4(&v38, v33, &v36) ^ 1;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v14 = 1;
    }

    if (v27 < 0)
    {
      operator delete(v26.__r_.__value_.__l.__size_);
      if (v14)
      {
        goto LABEL_18;
      }
    }

    else if (v14)
    {
LABEL_18:
      google::protobuf::internal::LogMessage::LogMessage(&v26, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 756);
      v17 = google::protobuf::internal::LogMessage::operator<<(&v26, "Extension conflicts with extension already in database: extend ");
      v18 = google::protobuf::internal::LogMessage::operator<<(v17, (*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL));
      v19 = google::protobuf::internal::LogMessage::operator<<(v18, " { ");
      v20 = google::protobuf::internal::LogMessage::operator<<(v19, (*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL));
      v21 = google::protobuf::internal::LogMessage::operator<<(v20, " = ");
      v22 = google::protobuf::internal::LogMessage::operator<<(v21, *(a4 + 72));
      v23 = google::protobuf::internal::LogMessage::operator<<(v22, " } from:");
      v24 = google::protobuf::internal::LogMessage::operator<<(v23, v32);
      google::protobuf::internal::LogFinisher::operator=(&__p, &v24->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26.__r_.__value_.__l.__data_);
      return 0;
    }
  }

  return 1;
}

uint64_t sub_276B51B00(unint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_2769BA860();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_276B51C48(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  v9 = *(a2 + 1);
  *(v7 + 32) = a2[4];
  *(v7 + 16) = v9;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  *&v18 = 40 * v2 + 40;
  v10 = a1[1];
  v11 = 40 * v2 + *a1 - v10;
  sub_276B51CA0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_276B51DE4(&v16);
  return v15;
}

void sub_276B51C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_276B51DE4(va);
  _Unwind_Resume(a1);
}

void sub_276B51C48(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276B51CA0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 1);
      *(a4 + 32) = v6[4];
      *(a4 + 16) = v8;
      v6[3] = 0;
      v6[4] = 0;
      v6[2] = 0;
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      v5 += 5;
    }
  }

  return sub_276B51D64(v10);
}

uint64_t sub_276B51D64(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276B51D9C(a1);
  }

  return a1;
}

void sub_276B51D9C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 40;
  }
}

uint64_t sub_276B51DE4(uint64_t a1)
{
  sub_276B51E1C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276B51E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_276B51E78(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = *sub_276B51EF8(a1, &v4, a2);
  if (!result)
  {
    sub_276B51F94();
  }

  return result;
}

void *sub_276B51EF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_276B5204C(a1 + 24, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_276B5204C(a1 + 24, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_276B52030(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B520C4(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_276B5204C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_276B280C4(&v12, (a2 + 8), a3);
  v4 = v12;
  v5 = v13;
  sub_276B280C4(&v12, (a3 + 8), v6);
  v7 = v13;
  if (v5 >= v13)
  {
    v8 = v13;
  }

  else
  {
    v8 = v5;
  }

  v9 = memcmp(v4, v12, v8);
  if (v9 < 0)
  {
    return 1;
  }

  return v5 < v7 && v9 == 0;
}

void sub_276B520C4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL sub_276B52128(uint64_t a1, const void *a2, const char *a3, uint64_t a4)
{
  sub_276B280C4(&v11, (a4 + 8), a3);
  v6 = v12;
  if (a3 >= v12)
  {
    v7 = v12;
  }

  else
  {
    v7 = a3;
  }

  v8 = memcmp(a2, v11, v7);
  if (v8 < 0)
  {
    return 1;
  }

  return a3 < v6 && v8 == 0;
}

uint64_t sub_276B52194(uint64_t a1, uint64_t *a2, const char *a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = a1 + 32 * (v6 >> 1);
      sub_276B280C4(v11, a2, a3);
      v9 = sub_276B5222C(a4, v8, v11[0], v11[1]);
      if (v9)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v9)
      {
        a1 = v8 + 32;
      }
    }

    while (v6);
  }

  return a1;
}

BOOL sub_276B5222C(uint64_t a1, uint64_t a2, const char *a3, int64_t a4)
{
  sub_276B280C4(&v11, (a2 + 8), a3);
  v6 = v12;
  if (v12 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v12;
  }

  v8 = memcmp(v11, a3, v7);
  if (v8 < 0)
  {
    return 1;
  }

  return v6 < a4 && v8 == 0;
}

void *sub_276B52298(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = *sub_276B52318(a1, &v4, a2);
  if (!result)
  {
    sub_276B523B4();
  }

  return result;
}

void *sub_276B52318(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_276B5244C((a1 + 24), a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_276B5244C((a1 + 24), (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_276B52430(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B520C4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_276B5244C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12[0] = sub_276B4EDF4(a2, *a1, a3);
  v12[1] = v6;
  v13 = *(a2 + 32);
  v10[0] = sub_276B4EDF4(a3, *a1, v7);
  v10[1] = v8;
  v11 = *(a3 + 32);
  return sub_276B524C4(&v14, v12, v10);
}

uint64_t sub_276B524C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 8);
  if (v6 >= v8)
  {
    v9 = *(a3 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = memcmp(*a2, *a3, v9);
  if (v10 < 0)
  {
    return 1;
  }

  if (v6 < v8 && v10 == 0)
  {
    return 1;
  }

  result = memcmp(v7, v5, v9);
  if ((result & 0x80000000) != 0)
  {
    return 0;
  }

  if (v8 >= v6 || result)
  {
    return *(a2 + 16) < *(a3 + 16);
  }

  return result;
}

_BYTE *sub_276B52570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    result = sub_276A07B90(result, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *result = v6;
  }

  *(a2 + 32) = *(a3 + 32);
  return result;
}

uint64_t sub_276B525CC(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = a1 + 40 * (v6 >> 1);
      sub_276B280C4(v11, a2, a3);
      v12 = *(a2 + 24);
      v9 = sub_276B52670(a4, v8, v11);
      if (v9)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v9)
      {
        a1 = v8 + 40;
      }
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_276B52670(uint64_t *a1, uint64_t a2, const char *a3)
{
  v7[0] = sub_276B4EDF4(a2, *a1, a3);
  v7[1] = v5;
  v8 = *(a2 + 32);
  return sub_276B524C4(&v9, v7, a3);
}

BOOL sub_276B526C4(void **a1, int *a2, char *a3)
{
  sub_276B5285C(a1, a2, a3, v34);
  sub_276B5285C(a1, a3, v6, v32);
  __p.__r_.__value_.__r.__words[0] = google::protobuf::StringPiece::substr(v34, 0);
  __p.__r_.__value_.__l.__size_ = v7;
  v8 = google::protobuf::StringPiece::substr(v32, 0);
  v10 = sub_276B528EC(&__p, v8, v9);
  if (v10)
  {
    return v10 >> 31;
  }

  if (v34[1] != v32[1])
  {
    sub_276B4E948(a2, *a1, v11, &__p);
    sub_276B4E948(a3, *a1, v19, &v30);
    v20 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    v21 = v30.__r_.__value_.__r.__words[0];
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v30.__r_.__value_.__l.__size_;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v30;
    }

    else
    {
      v26 = v30.__r_.__value_.__r.__words[0];
    }

    if (v25 >= size)
    {
      v27 = size;
    }

    else
    {
      v27 = v25;
    }

    v28 = memcmp(p_p, v26, v27);
    if (v28)
    {
      v12 = v28 < 0;
    }

    else
    {
      v12 = size < v25;
    }

    if (v20 < 0)
    {
      operator delete(v21);
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        return v12;
      }
    }

    else if ((v22 & 0x80) == 0)
    {
      return v12;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    return v12;
  }

  v13 = v35;
  v14 = v33;
  if (v35 >= v33)
  {
    v15 = v33;
  }

  else
  {
    v15 = v35;
  }

  v16 = memcmp(v34[2], v32[2], v15);
  v18 = v13 < v14 && v16 == 0;
  return v16 < 0 || v18;
}

void sub_276B52840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_276B5285C@<X0>(void **a1@<X0>, int *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = (a2 + 2);
  sub_276B280C4(&v10, (**a1 + 40 * *a2 + 16), a3);
  v7 = *(&v10 + 1);
  if (*(&v10 + 1))
  {
    v8 = v10;
    result = sub_276B280C4(&v10, v5, v6);
    *(a4 + 16) = v10;
  }

  else
  {
    result = sub_276B280C4(&v10, v5, v6);
    v7 = *(&v10 + 1);
    v8 = v10;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  *a4 = v8;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_276B528EC(uint64_t a1, const void *a2, int64_t a3)
{
  v3 = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5 < a3)
  {
    a3 = v5;
  }

  v7 = memcmp(v4, a2, a3);
  if (v7 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v7;
  if (v7)
  {
    result = 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (v5 >= v3 && v9 == 0)
  {
    return v5 > v3;
  }

  return result;
}

uint64_t sub_276B5294C(uint64_t a1, uint64_t a2, int *a3, void **a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = (a2 - a1) >> 5;
    do
    {
      if (sub_276B526C4(a4, a3, (v4 + 32 * (v7 >> 1))))
      {
        v7 >>= 1;
      }

      else
      {
        v4 += 32 * (v7 >> 1) + 32;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

void *sub_276B529D4(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  result = *sub_276B52A58(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_276B51F94();
  }

  return result;
}

uint64_t *sub_276B52A58(uint64_t **a1, uint64_t *a2, char **a3, uint64_t *a4, char *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_276B526C4(a1 + 3, a5, a2 + 32))
  {
    if (!sub_276B526C4(a1 + 3, a2 + 8, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_276B526C4(a1 + 3, a5, v15 + 32))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 2);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_276B526C4(a1 + 3, v12 + 8, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_276B52BFC(a1, a3, a5);
}

char *sub_276B52BFC(uint64_t a1, char **a2, int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_276B526C4((a1 + 24), a3, v4 + 32))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_276B526C4((a1 + 24), v8 + 8, a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 1);
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_276B52C98(uint64_t a1, uint64_t a2, __int128 *a3, void **a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = (a2 - a1) >> 5;
    do
    {
      if (sub_276B52D20(a4, a3, (v4 + 32 * (v7 >> 1))))
      {
        v7 >>= 1;
      }

      else
      {
        v4 += 32 * (v7 >> 1) + 32;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

BOOL sub_276B52D20(void **a1, __int128 *a2, int *a3)
{
  v35 = 0;
  v36 = 0;
  v34 = *a2;
  sub_276B5285C(a1, a3, a3, v30);
  __p.__r_.__value_.__r.__words[0] = google::protobuf::StringPiece::substr(&v34, 0);
  __p.__r_.__value_.__l.__size_ = v6;
  v7 = google::protobuf::StringPiece::substr(v30, 0);
  v9 = sub_276B528EC(&__p, v7, v8);
  if (v9)
  {
    return v9 >> 31;
  }

  if (*(&v34 + 1) == v31)
  {
    v12 = v36;
    v13 = v33;
    if (v36 >= v33)
    {
      v14 = v33;
    }

    else
    {
      v14 = v36;
    }

    v15 = memcmp(v35, v32, v14);
    v17 = v12 < v13 && v15 == 0;
    return v15 < 0 || v17;
  }

  else
  {
    v19 = *a2;
    v18 = *(a2 + 1);
    sub_276B4E948(a3, *a1, v10, &__p);
    sub_276B280C4(&v28, &__p, v20);
    v21 = v29;
    if (v18 >= v29)
    {
      v22 = v29;
    }

    else
    {
      v22 = v18;
    }

    v23 = memcmp(v19, v28, v22);
    v25 = v18 < v21 && v23 == 0;
    v11 = v23 < 0 || v25;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v11;
}

void sub_276B52E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B52E74(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = a1 + 40 * (v6 >> 1);
      v11 = *a2;
      v12 = *(a2 + 2);
      v9 = sub_276B52670(a4, v8, &v11);
      if (v9)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v9)
      {
        a1 = v8 + 40;
      }
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_276B52F14(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_276B52F94(a1, a2);
  }

  return a1;
}

void sub_276B52F94(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_276B52FD0(a1, a2);
  }

  sub_2769BA860();
}

void sub_276B52FD0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_2769ABE6C();
}

void sub_276B53018(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B5306C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276B5306C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

int *sub_276B530BC(void *a1, void *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  if (a1 == a2)
  {
LABEL_11:
    if (a3 != a4)
    {
      v14 = a3;
      v15 = a5;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
        std::string::operator=((a5 + 2), (a3 + 2));
        a5 = v15;
        a3 = v14;
      }

      while (v14 != a4);
      return v15;
    }
  }

  else
  {
    v11 = a1;
    while (a3 != a4)
    {
      if (sub_276B5204C(a6, a3, (v11 + 4)))
      {
        *a5 = *a3;
        std::string::operator=((a5 + 2), (a3 + 2));
        a3 += 8;
      }

      else
      {
        *a5 = *(v11 + 8);
        std::string::operator=((a5 + 2), (v11 + 5));
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v11 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11;
            v11 = v11[2];
          }

          while (*v11 != v13);
        }
      }

      a5 += 8;
      if (v11 == a2)
      {
        goto LABEL_11;
      }
    }

    sub_276B531F8(&v19, v11, a2, a5);
    return v17;
  }

  return a5;
}

void *sub_276B531F8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *(v5 + 8);
      std::string::operator=((a4 + 8), (v5 + 5));
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      a4 += 32;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void sub_276B5328C(uint64_t *a1)
{
  if (*a1)
  {
    sub_276B5306C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_276B532CC(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_276B52F94(a1, a2);
  }

  return a1;
}

_DWORD *sub_276B5334C(void *a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void **a6)
{
  if (a1 == a2)
  {
LABEL_11:
    if (a3 != a4)
    {
      v14 = a3;
      v15 = a5;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
        std::string::operator=((a5 + 2), (a3 + 2));
        a5 = v15;
        a3 = v14;
      }

      while (v14 != a4);
      return v15;
    }
  }

  else
  {
    v11 = a1;
    while (a3 != a4)
    {
      if (sub_276B526C4(a6, a3, v11 + 32))
      {
        *a5 = *a3;
        std::string::operator=((a5 + 2), (a3 + 2));
        a3 += 8;
      }

      else
      {
        *a5 = *(v11 + 8);
        std::string::operator=((a5 + 2), (v11 + 5));
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v11 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11;
            v11 = v11[2];
          }

          while (*v11 != v13);
        }
      }

      a5 += 8;
      if (v11 == a2)
      {
        goto LABEL_11;
      }
    }

    sub_276B531F8(&v19, v11, a2, a5);
    return v17;
  }

  return a5;
}

uint64_t *sub_276B53488(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_276B5352C(a1, a2);
  }

  return a1;
}

void sub_276B5352C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_276B53578(a1, a2);
  }

  sub_2769BA860();
}

void sub_276B53578(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_2769ABE6C();
}

void sub_276B535D0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B53624(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276B53624(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t sub_276B53674(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a1 == a2)
  {
LABEL_13:
    while (a3 != a4)
    {
      *a5 = *a3;
      std::string::operator=((a5 + 8), (a3 + 8));
      *(a5 + 32) = *(a3 + 32);
      a5 += 40;
      a3 += 40;
    }
  }

  else
  {
    v11 = a1;
    while (a3 != a4)
    {
      if (sub_276B5244C(a6, a3, (v11 + 4)))
      {
        *a5 = *a3;
        std::string::operator=((a5 + 8), (a3 + 8));
        *(a5 + 32) = *(a3 + 32);
        a3 += 40;
      }

      else
      {
        *a5 = *(v11 + 8);
        std::string::operator=((a5 + 8), (v11 + 5));
        *(a5 + 32) = *(v11 + 16);
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v11 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11;
            v11 = v11[2];
          }

          while (*v11 != v13);
        }
      }

      a5 += 40;
      if (v11 == a2)
      {
        goto LABEL_13;
      }
    }

    sub_276B537AC(&v16, v11, a2, a5);
    return v14;
  }

  return a5;
}

void *sub_276B537AC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *(v5 + 8);
      std::string::operator=((a4 + 8), (v5 + 5));
      *(a4 + 32) = *(v5 + 16);
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      a4 += 40;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void sub_276B53848(uint64_t *a1)
{
  if (*a1)
  {
    sub_276B53624(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_276B53888(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2769BA860();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_276B275D0(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_276B27628(v18);
  }
}

void sub_276B539F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B53A48(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276B53A48(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t *sub_276B53A98(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276B53B14(result, a4);
  }

  return result;
}

void sub_276B53AF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B53B14(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_276A73310(a1, a2);
  }

  sub_2769BA860();
}

uint64_t sub_276B53B50(uint64_t a1, int *a2)
{
  v3 = sub_276B2B588(*a1, *(a1 + 8), a2, a2);
  *(a1 + 8) = v3;
  v4 = *(v3 + 8);
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
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

void sub_276B53BBC(char **__return_ptr a1@<X8>, char *__src@<X4>, char *a3@<X1>, char *a4@<X2>, char *a5@<X3>)
{
  v6 = a3;
  if (a3 != a4)
  {
    do
    {
      v9 = sub_276B53C50(a5, __src, v6 + 28);
      v10 = *(v6 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v6 + 2);
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      __src = v9 + 4;
      v6 = v11;
    }

    while (v11 != a4);
    v6 = a4;
  }

  *a1 = v6;
  a1[1] = a5;
  a1[2] = __src;
}

char *sub_276B53C50(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_2769BA860();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      sub_276B2B540(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    sub_276B53E24(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 4);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_276B53DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B53E24(unint64_t *a1, _DWORD *a2)
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
        v11 = &v4[-*a1] >> 1;
      }

      sub_276B2B540(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 4);
}

uint64_t google::protobuf::DynamicMessage::DynamicMessage(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C7840;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  google::protobuf::DynamicMessage::SharedCtor(a1, 1);
  return a1;
}

{
  *a1 = &unk_2885C7840;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  google::protobuf::DynamicMessage::SharedCtor(a1, 1);
  return a1;
}

void google::protobuf::DynamicMessage::SharedCtor(google::protobuf::DynamicMessage *this, int a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 32);
  v5 = *(v4 + 108);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v4 + 48) + 32;
    do
    {
      if (*(v8 - 8) != 1 || (*(**v8 + 65) & 1) == 0)
      {
        v9 = *(v3 + 8) + 4 * v7++;
        *(this + v9) = 0;
        v5 = *(v4 + 108);
      }

      ++v6;
      v8 += 48;
    }

    while (v6 < v5);
  }

  v10 = *(v3 + 12);
  if (v10 != -1)
  {
    v11 = *(this + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ExtensionSet::ExtensionSet(this + v10, v11);
  }

  if (*(v4 + 104) >= 1)
  {
    v12 = 0;
    for (i = 0; i < *(v4 + 104); ++i)
    {
      v14 = *(v4 + 40);
      v15 = (v14 + v12);
      v16 = *(*(*(this + 2) + 40) + 4 * i);
      v17 = *(v14 + v12 + 88);
      if (v17 && (*(v17 + 24) != 1 || *(**(v17 + 32) + 65) != 1))
      {
        goto LABEL_67;
      }

      v18 = *(v15 + 6);
      if (v18)
      {
        v37 = v14 + v12;
        v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v18, memory_order_acquire) != -1)
        {
          v39 = &v40;
          v40 = &v38;
          v41 = &v37;
          std::__call_once(v18, &v39, sub_2769C149C);
        }
      }

      v19 = (this + v16);
      v20 = *(v14 + v12 + 56);
      v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v20];
      if (v21 > 5)
      {
        if (v21 <= 7)
        {
          if (v21 == 6)
          {
            if (*(v14 + v12 + 60) == 3)
            {
              goto LABEL_52;
            }

            *v19 = *(v14 + v12 + 144);
          }

          else
          {
            if (*(v14 + v12 + 60) == 3)
            {
              goto LABEL_52;
            }

            *v19 = *(v14 + v12 + 144);
          }
        }

        else
        {
          switch(v21)
          {
            case 8:
              if (*(v14 + v12 + 60) == 3)
              {
LABEL_52:
                v29 = *(this + 1);
                if (v29)
                {
                  v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
                }

                *v19 = 0;
                *(v19 + 1) = v29;
                break;
              }

              v28 = *(google::protobuf::FieldDescriptor::default_value_enum((v14 + v12)) + 16);
              goto LABEL_60;
            case 9:
              if (*(v14 + v12 + 60) == 3)
              {
                goto LABEL_56;
              }

              v30 = *(v14 + v12 + 144);
              v31 = *(v30 + 23);
              if (v31 < 0)
              {
                v31 = *(v30 + 8);
              }

              v32 = v31 == 0;
              v27 = &google::protobuf::internal::fixed_address_empty_string;
              if (!v32)
              {
                v27 = 0;
              }

LABEL_66:
              *v19 = v27;
              break;
            case 10:
              if (*(v14 + v12 + 60) == 3)
              {
                v22 = *(v15 + 6);
                if (v22)
                {
                  v37 = v14 + v12;
                  v38 = google::protobuf::FieldDescriptor::TypeOnceInit;
                  if (atomic_load_explicit(v22, memory_order_acquire) != -1)
                  {
                    v39 = &v40;
                    v40 = &v38;
                    v41 = &v37;
                    std::__call_once(v22, &v39, sub_2769C149C);
                  }

                  LODWORD(v20) = *(v14 + v12 + 56);
                }

                if (v20 == 11 && google::protobuf::FieldDescriptor::is_map_message_type((v14 + v12)))
                {
                  v23 = *(this + 1);
                  if (a2)
                  {
                    if (v23)
                    {
                      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v24 = *(*(this + 2) + 16);
                    v25 = google::protobuf::FieldDescriptor::message_type(v15);
                    PrototypeNoLock = (*(*v24 + 16))(v24, v25);
                  }

                  else
                  {
                    if (v23)
                    {
                      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v33 = *(*(this + 2) + 16);
                    v34 = google::protobuf::FieldDescriptor::message_type(v15);
                    PrototypeNoLock = google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(v33, v34);
                  }

                  if (v23)
                  {
                    v35 = *(this + 1);
                    if (v35)
                    {
                      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    google::protobuf::internal::DynamicMapField::DynamicMapField(v19, PrototypeNoLock, v35);
                  }

                  else
                  {
                    google::protobuf::internal::DynamicMapField::DynamicMapField(v19, PrototypeNoLock);
                  }

                  break;
                }

LABEL_56:
                v27 = *(this + 1);
                if (v27)
                {
                  v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
                }

                *(v19 + 1) = 0;
                *(v19 + 2) = 0;
                goto LABEL_66;
              }

              *v19 = 0;
              break;
          }
        }
      }

      else if (v21 <= 2)
      {
        if (v21 == 1)
        {
LABEL_47:
          if (*(v14 + v12 + 60) == 3)
          {
            goto LABEL_52;
          }

          v28 = *(v14 + v12 + 144);
LABEL_60:
          *v19 = v28;
          goto LABEL_67;
        }

        if (v21 == 2)
        {
LABEL_42:
          if (*(v14 + v12 + 60) == 3)
          {
            goto LABEL_52;
          }

          v27 = *(v14 + v12 + 144);
          goto LABEL_66;
        }
      }

      else
      {
        if (v21 == 3)
        {
          goto LABEL_47;
        }

        if (v21 == 4)
        {
          goto LABEL_42;
        }

        if (*(v14 + v12 + 60) == 3)
        {
          goto LABEL_52;
        }

        *v19 = *(v14 + v12 + 144);
      }

LABEL_67:
      v12 += 152;
    }
  }
}

uint64_t google::protobuf::DynamicMessage::DynamicMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2885C7840;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  google::protobuf::DynamicMessage::SharedCtor(a1, 1);
  return a1;
}

{
  *a1 = &unk_2885C7840;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  google::protobuf::DynamicMessage::SharedCtor(a1, 1);
  return a1;
}

uint64_t google::protobuf::DynamicMessage::DynamicMessage(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_2885C7840;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a2 + 64) = a1;
  google::protobuf::DynamicMessage::SharedCtor(a1, a3);
  return a1;
}

{
  *a1 = &unk_2885C7840;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a2 + 64) = a1;
  google::protobuf::DynamicMessage::SharedCtor(a1, a3);
  return a1;
}

void *google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2)
{
  v9 = a2;
  if (*(this + 16) == 1 && (v3 = *(*(a2 + 2) + 16), v4 = google::protobuf::DescriptorPool::generated_pool(this), v3 == v4))
  {
    v7 = *(*google::protobuf::MessageFactory::generated_factory(v4) + 16);

    return v7();
  }

  else
  {
    v5 = *(this + 3);
    v10.var0 = &v9;
    v6 = sub_276B55DC0(v5, &v9, &unk_276C19A9D, &v10)[3];
    if (!v6)
    {
      operator new();
    }

    return *(v6 + 64);
  }
}

void sub_276B54E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DynamicMessage::~DynamicMessage(google::protobuf::DynamicMessage *this)
{
  *this = &unk_2885C7840;
  v2 = *(*(this + 2) + 32);
  sub_2769DEC8C(this + 1);
  v3 = *(*(this + 2) + 12);
  if (v3 != -1)
  {
    google::protobuf::internal::ExtensionSet::~ExtensionSet((this + v3));
  }

  LODWORD(v4) = *(v2 + 104);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v2 + 40);
      v8 = v7 + v5;
      v9 = *(v7 + v5 + 88);
      if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0)
      {
        v10 = (this + *(*(*(this + 2) + 40) + 4 * v6));
        v11 = *(v8 + 48);
        if (*(v8 + 60) != 3)
        {
          if (v11)
          {
            v36 = v7 + v5;
            v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v11, memory_order_acquire) != -1)
            {
              v39 = &v37;
              v40 = &v36;
              v38 = &v39;
              std::__call_once(v11, &v38, sub_2769C149C);
            }
          }

          v25 = v7 + v5;
          v26 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v25 + 56)];
          if (v26 != 9)
          {
            v29 = *(v8 + 48);
            if (v29)
            {
              v36 = v8;
              v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v29, memory_order_acquire) != -1)
              {
                v39 = &v37;
                v40 = &v36;
                v38 = &v39;
                std::__call_once(v29, &v38, sub_2769C149C);
              }

              v26 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v25 + 56)];
            }

            if (v26 != 10)
            {
              goto LABEL_62;
            }

            v30 = *(*(this + 2) + 64);
            if (v30 == this || v30 == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_53;
          }

          v27 = *(this + 2);
          v23 = *(v27 + 64);
          v24 = *(*(v27 + 40) + 4 * v6);
LABEL_26:
          google::protobuf::internal::ArenaStringPtr::Destroy(v10, *(v23 + v24) & 0xFFFFFFFFFFFFFFFELL, 0);
          goto LABEL_62;
        }

        if (v11)
        {
          v36 = v7 + v5;
          v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v11, memory_order_acquire) != -1)
          {
            v39 = &v37;
            v40 = &v36;
            v38 = &v39;
            std::__call_once(v11, &v38, sub_2769C149C);
          }
        }

        v12 = v7 + v5;
        v13 = *(v12 + 56);
        v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v13];
        if (v14 > 5)
        {
          if (v14 > 8)
          {
            if (v14 == 9)
            {
              sub_276B4A5CC(v10);
            }

            else if (v14 == 10)
            {
              v28 = *(v8 + 48);
              if (v28)
              {
                v36 = v8;
                v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
                if (atomic_load_explicit(v28, memory_order_acquire) != -1)
                {
                  v39 = &v37;
                  v40 = &v36;
                  v38 = &v39;
                  std::__call_once(v28, &v38, sub_2769C149C);
                }

                LODWORD(v13) = *(v12 + 56);
              }

              if (v13 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(v8))
              {
                (**v10)(v10);
              }

              else
              {
                sub_276B55D34(v10);
              }
            }

            goto LABEL_62;
          }

LABEL_57:
          if (*(v10 + 1) >= 1)
          {
            v33 = v10[1];
            v35 = *(v33 - 8);
            v34 = (v33 - 8);
            if (!v35)
            {
              operator delete(v34);
            }
          }

          goto LABEL_62;
        }

        if (v14 > 2 || v14 == 1 || v14 == 2)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v15 = *(this + 2);
        v16 = -1431655765 * ((v9 - *(*(v9 + 16) + 48)) >> 4);
        v17 = v7 + v5;
        if (*(this + 4 * v16 + *(v15 + 8)) == *(v7 + v5 + 68))
        {
          v18 = *(*(v15 + 40) + 4 * (v4 + v16));
          v19 = *(v17 + 48);
          if (v19)
          {
            v36 = v7 + v5;
            v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v19, memory_order_acquire) != -1)
            {
              v39 = &v37;
              v40 = &v36;
              v38 = &v39;
              std::__call_once(v19, &v38, sub_2769C149C);
            }
          }

          v10 = (this + v18);
          v20 = v7 + v5;
          v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v20 + 56)];
          if (v21 != 9)
          {
            v32 = *(v17 + 48);
            if (v32)
            {
              v36 = v8;
              v37 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v32, memory_order_acquire) != -1)
              {
                v39 = &v37;
                v40 = &v36;
                v38 = &v39;
                std::__call_once(v32, &v38, sub_2769C149C);
              }

              v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v20 + 56)];
            }

            if (v21 != 10)
            {
              goto LABEL_62;
            }

LABEL_53:
            if (*v10)
            {
              (*(**v10 + 8))(*v10);
            }

            goto LABEL_62;
          }

          v22 = *(this + 2);
          v23 = *(v22 + 64);
          v24 = *(*(v22 + 40) + 4 * v6);
          goto LABEL_26;
        }
      }

LABEL_62:
      ++v6;
      v4 = *(v2 + 104);
      v5 += 152;
    }

    while (v6 < v4);
  }
}

{
  google::protobuf::DynamicMessage::~DynamicMessage(this);

  operator delete(v1);
}

void google::protobuf::DynamicMessage::CrossLinkPrototypes(google::protobuf::DynamicMessage *this)
{
  v2 = *(this + 2);
  v3 = v2[8];
  if (v3 != this && v3 != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/dynamic_message.cc", 603);
    v5 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: is_prototype(): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v2 = *(this + 2);
  }

  v6 = v2[4];
  if (*(v6 + 104) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = v2[2];
    do
    {
      v10 = *(v6 + 40);
      v11 = *(*(*(this + 2) + 40) + 4 * v8);
      v12 = *(v10 + v7 + 48);
      if (v12)
      {
        v15 = v10 + v7;
        v16 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v12, memory_order_acquire) != -1)
        {
          v14[0].__r_.__value_.__r.__words[0] = &v16;
          v14[0].__r_.__value_.__l.__size_ = &v15;
          v17 = v14;
          std::__call_once(v12, &v17, sub_2769C149C);
        }
      }

      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v10 + v7 + 56)] == 10 && *(v10 + v7 + 60) != 3)
      {
        v13 = google::protobuf::FieldDescriptor::message_type((v10 + v7));
        *(this + v11) = google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(v9, v13);
      }

      ++v8;
      v7 += 152;
    }

    while (v8 < *(v6 + 104));
  }
}

void sub_276B5558C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::DynamicMessage::New(google::protobuf::DynamicMessage *this, google::protobuf::Arena *a2)
{
  v4 = *(this + 2);
  if (a2)
  {
    v5 = sub_2769B0A98(a2, *v4);
    bzero(v5, **(this + 2));
    v6 = *(this + 2);
  }

  else
  {
    v5 = operator new(*v4);
    v6 = *(this + 2);
    bzero(v5, *v6);
  }

  *v5 = &unk_2885C7840;
  v5[1] = a2;
  v5[2] = v6;
  *(v5 + 6) = 0;
  google::protobuf::DynamicMessage::SharedCtor(v5, 1);
  return v5;
}

void google::protobuf::DynamicMessageFactory::DynamicMessageFactory(google::protobuf::DynamicMessageFactory *this)
{
  *this = &unk_2885C78F0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  operator new();
}

void google::protobuf::DynamicMessageFactory::DynamicMessageFactory(google::protobuf::DynamicMessageFactory *this, const google::protobuf::DescriptorPool *a2)
{
  *this = &unk_2885C78F0;
  *(this + 1) = a2;
  *(this + 16) = 0;
  operator new();
}

void google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2, const unsigned int *a3, const void *a4)
{
  *this = &unk_2885C78F0;
  for (i = *(*(this + 3) + 16); i; i = *i)
  {
    google::protobuf::DynamicMessageFactory::DeleteDefaultOneofInstance(*(i[3] + 32), a2, a3, a4);
    v6 = i[3];
    if (v6)
    {
      v7 = sub_276B55C8C(v6);
      MEMORY[0x277C9F670](v7, 0x1070C40B706855ELL);
    }
  }

  std::mutex::~mutex((this + 32));
  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    v9 = sub_2769BB184(v8);
    MEMORY[0x277C9F670](v9, 0x10A0C408EF24B1CLL);
  }

  google::protobuf::MessageFactory::~MessageFactory(this);
}

{
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(this, a2, a3, a4);

  JUMPOUT(0x277C9F670);
}

void google::protobuf::DynamicMessageFactory::DeleteDefaultOneofInstance(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2, const unsigned int *a3, const void *a4)
{
  v6 = *(this + 27);
  if (v6 >= 1)
  {
    v16[10] = v4;
    v16[11] = v5;
    v8 = 0;
    v9 = *(this + 6);
    do
    {
      v10 = v9 + 48 * v8;
      if ((*(v10 + 24) != 1 || (*(**(v10 + 32) + 65) & 1) == 0) && *(v9 + 48 * v8 + 24) >= 1)
      {
        v11 = 0;
        do
        {
          v12 = *(*(*(v9 + 48 * v8 + 32) + 8 * v11) + 48);
          if (v12)
          {
            v13 = *(*(v9 + 48 * v8 + 32) + 8 * v11);
            v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v12, memory_order_acquire) != -1)
            {
              v16[0] = &v14;
              v16[1] = &v13;
              v15 = v16;
              std::__call_once(v12, &v15, sub_2769C149C);
            }

            v9 = *(this + 6);
          }

          ++v11;
        }

        while (v11 < *(v9 + 48 * v8 + 24));
        v6 = *(this + 27);
      }

      ++v8;
    }

    while (v8 < v6);
  }
}

void *google::protobuf::DynamicMessageFactory::GetPrototype(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2)
{
  std::mutex::lock((this + 32));
  PrototypeNoLock = google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(this, a2);
  std::mutex::unlock((this + 32));
  return PrototypeNoLock;
}

void google::protobuf::DynamicMessageFactory::ConstructDefaultOneofInstance(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2, const unsigned int *a3, void *a4)
{
  v6 = *(this + 27);
  if (v6 >= 1)
  {
    v24[12] = v4;
    v24[13] = v5;
    v10 = 0;
    v11 = *(this + 6);
    while (1)
    {
      v12 = v11 + 48 * v10;
      if ((*(v12 + 24) != 1 || (*(**(v12 + 32) + 65) & 1) == 0) && *(v11 + 48 * v10 + 24) >= 1)
      {
        break;
      }

LABEL_38:
      if (++v10 >= v6)
      {
        return;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = *(*(v11 + 48 * v10 + 32) + 8 * v13);
      if (*(v14 + 67))
      {
        v15 = *(v14 + 96);
        v16 = (v15 ? v15 + 80 : *(v14 + 40) + 128);
      }

      else
      {
        v16 = (*(v14 + 80) + 40);
      }

      v17 = *(a2 + ((0x286BCA1B00000000 * ((v14 - *v16) >> 3)) >> 30));
      v18 = *(v14 + 48);
      if (v18)
      {
        v21 = v14;
        v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v18, memory_order_acquire) != -1)
        {
          v24[0] = &v22;
          v24[1] = &v21;
          v23 = v24;
          std::__call_once(v18, &v23, sub_2769C149C);
        }
      }

      v19 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v14 + 56)];
      if (v19 > 5)
      {
        break;
      }

      if (v19 <= 2)
      {
        if (v19 != 1)
        {
          if (v19 != 2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_30:
        v20 = *(v14 + 144);
LABEL_33:
        *(a3 + v17) = v20;
        goto LABEL_36;
      }

      if (v19 == 3)
      {
        goto LABEL_30;
      }

      if (v19 == 4)
      {
        goto LABEL_35;
      }

      *(a3 + v17) = *(v14 + 144);
LABEL_36:
      ++v13;
      v11 = *(this + 6);
      if (v13 >= *(v11 + 48 * v10 + 24))
      {
        v6 = *(this + 27);
        goto LABEL_38;
      }
    }

    if (v19 <= 7)
    {
      if (v19 == 6)
      {
        *(a3 + v17) = *(v14 + 144);
      }

      else
      {
        *(a3 + v17) = *(v14 + 144);
      }

      goto LABEL_36;
    }

    if (v19 != 8)
    {
      if (v19 != 9)
      {
        if (v19 == 10)
        {
          *(a3 + v17) = 0;
        }

        goto LABEL_36;
      }

      *(a3 + v17) = 0;
LABEL_35:
      *(a3 + v17) = *(v14 + 144);
      goto LABEL_36;
    }

    v20 = *(google::protobuf::FieldDescriptor::default_value_enum(v14) + 16);
    goto LABEL_33;
  }
}

void *sub_276B55C8C(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    MEMORY[0x277C9F670](v3, 0x1070C4026DFEB36);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    MEMORY[0x277C9F650](v4, 0x1000C8052888210);
  }

  v5 = a1[5];
  a1[5] = 0;
  if (v5)
  {
    MEMORY[0x277C9F650](v5, 0x1000C8052888210);
  }

  return a1;
}

void sub_276B55D34(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
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

void *sub_276B55DC0(void *a1, void *a2, uint64_t a3, void **a4)
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

uint64_t google::protobuf::internal::GeneratedExtensionFinder::Find(uint64_t a1, int a2, _OWORD *a3)
{
  if (qword_2812FE3E0)
  {
    v3 = *(qword_2812FE3E0 + 8);
    if (v3)
    {
      v4 = *(a1 + 8);
      v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
      v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
      v7 = (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))) ^ a2;
      v8 = vcnt_s8(v3);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v7;
        if (v7 >= *&v3)
        {
          v9 = v7 % *&v3;
        }
      }

      else
      {
        v9 = (*&v3 - 1) & v7;
      }

      v10 = *(*qword_2812FE3E0 + 8 * v9);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v7 == v12)
          {
            if (i[2] == v4 && *(i + 6) == a2)
            {
              v14 = *(i + 3);
              *a3 = *(i + 2);
              a3[1] = v14;
              return 1;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v12 >= *&v3)
              {
                v12 %= *&v3;
              }
            }

            else
            {
              v12 &= *&v3 - 1;
            }

            if (v12 != v9)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return 0;
}

void google::protobuf::internal::ExtensionSet::RegisterExtension(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, int a3, std::string::value_type a4, std::string::value_type a5)
{
  v7 = a3;
  switch(a3)
  {
    case 14:
      google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 140);
      v10 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
LABEL_7:
      google::protobuf::internal::LogMessage::~LogMessage(&v14.__r_.__value_.__l.__data_);
      break;
    case 11:
      google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 141);
      v11 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v11->__r_.__value_.__l.__data_);
      goto LABEL_7;
    case 10:
      google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 142);
      v12 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_GROUP): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
      goto LABEL_7;
  }

  v14.__r_.__value_.__s.__data_[0] = v7;
  v14.__r_.__value_.__s.__data_[1] = a4;
  v14.__r_.__value_.__s.__data_[2] = a5;
  v15 = 0;
  sub_276B5629C(this, a2, &v14);
}

void sub_276B56274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B5629C(unint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v26 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2812FE3F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2812FE3F0))
  {
    operator new();
  }

  qword_2812FE3E0 = qword_2812FE3E8;
  v6 = a3[1];
  v25[0] = *a3;
  v25[1] = v6;
  v7 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v7 >> 47) ^ v7);
  v9 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v4;
  v10 = *(qword_2812FE3E8 + 8);
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v4;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v9;
  }

  v13 = *(*qword_2812FE3E8 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (v14[2] != a1 || *(v14 + 6) != v4)
  {
    goto LABEL_22;
  }

  google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 108);
  v17 = google::protobuf::internal::LogMessage::operator<<(v25, "Multiple extension registrations for type ");
  (*(*a1 + 16))(__p, a1);
  v18 = google::protobuf::internal::LogMessage::operator<<(v17, __p);
  v19 = google::protobuf::internal::LogMessage::operator<<(v18, ", field number ");
  v20 = google::protobuf::internal::LogMessage::operator<<(v19, v4);
  v21 = google::protobuf::internal::LogMessage::operator<<(v20, ".");
  google::protobuf::internal::LogFinisher::operator=(&v22, &v21->__r_.__value_.__l.__data_);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  google::protobuf::internal::LogMessage::~LogMessage(v25);
}

void google::protobuf::internal::ExtensionSet::RegisterEnumExtension(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, int a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6, BOOL (*a7)(int))
{
  v10 = a3;
  if (a3 != 14)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 164);
    v13 = google::protobuf::internal::LogMessage::operator<<(&v15, "CHECK failed: (type) == (WireFormatLite::TYPE_ENUM): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15.__r_.__value_.__l.__data_);
  }

  v15.__r_.__value_.__s.__data_[0] = v10;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = sub_276B56988;
  v15.__r_.__value_.__r.__words[2] = a6;
  v16 = 0;
  sub_276B5629C(this, a2, &v15);
}

void sub_276B56970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::RegisterMessageExtension(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, std::string::value_type a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6, const google::protobuf::MessageLite *a7)
{
  if ((a3 & 0xFE) != 0xA)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 177);
    v13 = google::protobuf::internal::LogMessage::operator<<(&v15, "CHECK failed: type == WireFormatLite::TYPE_MESSAGE || type == WireFormatLite::TYPE_GROUP: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15.__r_.__value_.__l.__data_);
  }

  v15.__r_.__value_.__s.__data_[0] = a3;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = a6;
  v16 = 0;
  sub_276B5629C(this, a2, &v15);
}

void sub_276B56A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionSet(uint64_t this, Arena *a2)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

void *sub_276B56A74(google::protobuf::Arena *this, unint64_t a2)
{
  if (a2 >> 59)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/arena.h", 310);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (num_elements) <= (std::numeric_limits<size_t>::max() / sizeof(T)): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Requested size is too large to fit into size_t.");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (this)
  {
    return sub_276B61688(this, a2);
  }

  else
  {
    return operator new[](32 * a2);
  }
}

void sub_276B56B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::~ExtensionSet(google::protobuf::internal::ExtensionSet *this)
{
  if (!*this)
  {
    v2 = *(this + 2);
    if (*(this + 4) >= 0x101u)
    {
      sub_276B61744(*v2, (v2 + 8));
    }

    else if (*(this + 5))
    {
      v3 = 32 * *(this + 5);
      v4 = (v2 + 8);
      do
      {
        google::protobuf::internal::ExtensionSet::Extension::Free(v4);
        v4 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(this + 2);
    if (*(this + 4) >= 0x101u)
    {
      sub_276BD8BE0(v5 == 0, *(this + 2));
    }

    else if (v5)
    {
      MEMORY[0x277C9F650](*(this + 2), 0x1062C802AB6010CLL);
    }
  }
}

uint64_t google::protobuf::internal::ExtensionSet::DeleteFlatMap(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x277C9F650);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::Has(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v2)
  {
    v3 = *(v2 + 10) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

_DWORD *google::protobuf::internal::ExtensionSet::FindOrNull(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 2);
  if (*(this + 4) < 0x101u)
  {
    v3 = *(this + 5);
    v4 = &v2[8 * v3];
    while (v3)
    {
      v5 = v3 >> 1;
      v6 = &v2[8 * (v3 >> 1)];
      v8 = *v6;
      v7 = v6 + 8;
      v3 += ~(v3 >> 1);
      if (v8 < a2)
      {
        v2 = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    if (v2 != v4)
    {
      v10 = *v2;
      v9 = v2 + 2;
      if (v10 == a2)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v14 = *(v2 + 1);
  v12 = v2 + 2;
  v13 = v14;
  if (!v14)
  {
    return 0;
  }

  v15 = v12;
  do
  {
    if (v13[8] >= a2)
    {
      v15 = v13;
    }

    v13 = *&v13[2 * (v13[8] < a2)];
  }

  while (v13);
  if (v15 == v12)
  {
    return 0;
  }

  v16 = v15[8];
  v17 = v15 + 10;
  if (v16 <= a2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

{
  v2 = *(this + 2);
  if (*(this + 4) < 0x101u)
  {
    v3 = *(this + 5);
    v4 = &v2[8 * v3];
    while (v3)
    {
      v5 = v3 >> 1;
      v6 = &v2[8 * (v3 >> 1)];
      v8 = *v6;
      v7 = v6 + 8;
      v3 += ~(v3 >> 1);
      if (v8 < a2)
      {
        v2 = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    if (v2 != v4)
    {
      v10 = *v2;
      v9 = v2 + 2;
      if (v10 == a2)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v14 = *(v2 + 1);
  v12 = v2 + 2;
  v13 = v14;
  if (!v14)
  {
    return 0;
  }

  v15 = v12;
  do
  {
    if (v13[8] >= a2)
    {
      v15 = v13;
    }

    v13 = *&v13[2 * (v13[8] < a2)];
  }

  while (v13);
  if (v15 == v12)
  {
    return 0;
  }

  v16 = v15[8];
  v17 = v15 + 10;
  if (v16 <= a2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::ExtensionSet::NumExtensions(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    sub_276B617B4(*v1, (v1 + 8), &v7);
    return v7;
  }

  else
  {
    v2 = *(this + 5);
    if (*(this + 5))
    {
      LODWORD(result) = 0;
      v4 = 32 * v2;
      v5 = (v1 + 18);
      do
      {
        v6 = *v5;
        v5 += 32;
        result = result + ((v6 & 1) == 0);
        v4 -= 32;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

google::protobuf::internal::ExtensionSet::Extension *google::protobuf::internal::ExtensionSet::ExtensionSize(google::protobuf::internal::ExtensionSet *this, int a2)
{
  result = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (result)
  {

    return google::protobuf::internal::ExtensionSet::Extension::GetSize(result);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::GetSize(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (v1 > 5)
  {
    if (v1 <= 8)
    {
      return **this;
    }

    if (v1 == 9 || v1 == 10)
    {
      return *(*this + 8);
    }
  }

  else if (v1 > 2 || v1 == 1 || v1 == 2)
  {
    return **this;
  }

  google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 1719);
  v3 = google::protobuf::internal::LogMessage::operator<<(v5, "Can't get here.");
  google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_276B56E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionType(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 10))
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 257);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "Don't lookup extension types if they aren't present (2). ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    return *(v3 + 8);
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 253);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "Don't lookup extension types if they aren't present (1). ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    return 0;
  }
}

void sub_276B56F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::ExtensionSet::Extension *google::protobuf::internal::ExtensionSet::ClearExtension(google::protobuf::internal::ExtensionSet *this, int a2)
{
  result = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (result)
  {

    return google::protobuf::internal::ExtensionSet::Extension::Clear(result);
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::Clear(unsigned __int8 *this)
{
  v1 = this;
  if (this[9] == 1)
  {
    v2 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
    if (v2 > 5)
    {
      if (v2 <= 8)
      {
LABEL_19:
        **this = 0;
        return this;
      }

      if (v2 == 9)
      {
        v10 = *this;

        return google::protobuf::RepeatedPtrField<std::string>::Clear(v10);
      }

      else if (v2 == 10)
      {
        v5 = *this;
        v6 = *(*this + 8);
        if (v6 >= 1)
        {
          v7 = (*(v5 + 16) + 8);
          do
          {
            v8 = *v7++;
            this = (*(*v8 + 40))(v8);
            --v6;
          }

          while (v6);
          *(v5 + 8) = 0;
        }
      }
    }

    else if (v2 > 2 || v2 == 1 || v2 == 2)
    {
      goto LABEL_19;
    }
  }

  else if ((this[10] & 1) == 0)
  {
    v3 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
    if (v3 == 10)
    {
      v9 = **this;
      if ((this[10] & 0x10) != 0)
      {
        this = (*(v9 + 112))();
      }

      else
      {
        this = (*(v9 + 40))();
      }
    }

    else if (v3 == 9)
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
      }
    }

    v1[10] = v1[10] & 0xF0 | 1;
  }

  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::GetInt32(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (*(v4 + 10) & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, int a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::MaybeNewExtension(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::internal::ExtensionSet::Extension **a4)
{
  v6 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *a4 = v6;
  *(v6 + 2) = a3;
  return v7 & 1;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 348);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 4 * a3);
}

void sub_276B57384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetRepeatedInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 348);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(*(*v6 + 8) + 4 * a3) = a4;
}

void sub_276B57430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::ExtensionSet::AddInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, int a5, const google::protobuf::FieldDescriptor *a6)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = result;
  *(result + 2) = a6;
  if (v13)
  {
    *(result + 8) = a3;
    *(result + 9) = 1;
    *(result + 11) = a4;
    result = sub_276B61810(*this);
    v14 = result;
    *v12 = result;
  }

  else
  {
    v14 = *result;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *(*(v14 + 1) + 4 * v15) = a5;
  *v14 = v15 + 1;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetInt64(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, uint64_t a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 349);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 8 * a3);
}

void sub_276B5760C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetRepeatedInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 349);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(*(*v6 + 8) + 8 * a3) = a4;
}

void sub_276B576B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::ExtensionSet::AddInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, uint64_t a5, const google::protobuf::FieldDescriptor *a6)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = result;
  *(result + 2) = a6;
  if (v13)
  {
    *(result + 8) = a3;
    *(result + 9) = 1;
    *(result + 11) = a4;
    result = sub_276B61908(*this);
    v14 = result;
    *v12 = result;
  }

  else
  {
    v14 = *result;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    google::protobuf::RepeatedField<long long>::Reserve();
  }

  *(*(v14 + 1) + 8 * v15) = a5;
  *v14 = v15 + 1;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetUInt32(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (*(v4 + 10) & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetUInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, int a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 350);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 4 * a3);
}

void sub_276B57894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetRepeatedUInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 350);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(*(*v6 + 8) + 4 * a3) = a4;
}

void sub_276B57940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::ExtensionSet::AddUInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, int a5, const google::protobuf::FieldDescriptor *a6)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = result;
  *(result + 2) = a6;
  if (v13)
  {
    *(result + 8) = a3;
    *(result + 9) = 1;
    *(result + 11) = a4;
    result = sub_276B61A00(*this);
    v14 = result;
    *v12 = result;
  }

  else
  {
    v14 = *result;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(*(v14 + 1) + 4 * v15) = a5;
  *v14 = v15 + 1;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetUInt64(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetUInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, uint64_t a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 351);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 8 * a3);
}

void sub_276B57B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetRepeatedUInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 351);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(*(*v6 + 8) + 8 * a3) = a4;
}

void sub_276B57BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::ExtensionSet::AddUInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, uint64_t a5, const google::protobuf::FieldDescriptor *a6)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = result;
  *(result + 2) = a6;
  if (v13)
  {
    *(result + 8) = a3;
    *(result + 9) = 1;
    *(result + 11) = a4;
    result = sub_276B61AF8(*this);
    v14 = result;
    *v12 = result;
  }

  else
  {
    v14 = *result;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  *(*(v14 + 1) + 8 * v15) = a5;
  *v14 = v15 + 1;
  return result;
}

float google::protobuf::internal::ExtensionSet::GetFloat(google::protobuf::internal::ExtensionSet *this, int a2, float a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetFloat(google::protobuf::internal::ExtensionSet *this, int a2, char a3, float a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

float google::protobuf::internal::ExtensionSet::GetRepeatedFloat(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 352);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 4 * a3);
}

void sub_276B57DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetRepeatedFloat(google::protobuf::internal::ExtensionSet *this, int a2, int a3, float a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 352);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(*(*v6 + 8) + 4 * a3) = a4;
}

void sub_276B57E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::ExtensionSet::AddFloat(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, float a5, const google::protobuf::FieldDescriptor *a6)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = result;
  *(result + 2) = a6;
  if (v13)
  {
    *(result + 8) = a3;
    *(result + 9) = 1;
    *(result + 11) = a4;
    result = sub_276B61BF0(*this);
    v14 = result;
    *v12 = result;
  }

  else
  {
    v14 = *result;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    google::protobuf::RepeatedField<float>::Reserve();
  }

  *(*(v14 + 1) + 4 * v15) = a5;
  *v14 = v15 + 1;
  return result;
}

double google::protobuf::internal::ExtensionSet::GetDouble(google::protobuf::internal::ExtensionSet *this, int a2, double a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetDouble(google::protobuf::internal::ExtensionSet *this, int a2, char a3, double a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

double google::protobuf::internal::ExtensionSet::GetRepeatedDouble(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 353);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 8 * a3);
}

void sub_276B58034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetRepeatedDouble(google::protobuf::internal::ExtensionSet *this, int a2, int a3, double a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 353);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(*(*v6 + 8) + 8 * a3) = a4;
}

void sub_276B580E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::ExtensionSet::AddDouble(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, double a5, const google::protobuf::FieldDescriptor *a6)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = result;
  *(result + 2) = a6;
  if (v13)
  {
    *(result + 8) = a3;
    *(result + 9) = 1;
    *(result + 11) = a4;
    result = sub_276B61CE8(*this);
    v14 = result;
    *v12 = result;
  }

  else
  {
    v14 = *result;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    google::protobuf::RepeatedField<double>::Reserve();
  }

  *(*(v14 + 1) + 8 * v15) = a5;
  *v14 = v15 + 1;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    a3 = *v4;
  }

  return a3 & 1;
}

char *google::protobuf::internal::ExtensionSet::SetBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedBool(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 354);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + a3);
}

void sub_276B582C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetRepeatedBool(google::protobuf::internal::ExtensionSet *this, int a2, int a3, char a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 354);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(*(*v6 + 8) + a3) = a4;
}

void sub_276B58370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::ExtensionSet::AddBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, char a5, const google::protobuf::FieldDescriptor *a6)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = result;
  *(result + 2) = a6;
  if (v13)
  {
    *(result + 8) = a3;
    *(result + 9) = 1;
    *(result + 11) = a4;
    result = sub_276B61DE0(*this);
    v14 = result;
    *v12 = result;
  }

  else
  {
    v14 = *result;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    google::protobuf::RepeatedField<BOOL>::Reserve();
  }

  *(*(v14 + 1) + v15) = a5;
  *v14 = v15 + 1;
  return result;
}

const void *google::protobuf::internal::ExtensionSet::GetRawRepeatedField(google::protobuf::internal::ExtensionSet *this, int a2, const void *a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    return *v4;
  }

  return a3;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(google::protobuf::internal::ExtensionSet *this, int a2, int a3, char a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  *(v9 + 2) = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  v9[9] = 1;
  v9[8] = a3;
  v9[11] = a4;
  v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3];
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v13 = sub_276B61A00(*this);
      }

      else if (v12 == 4)
      {
        v13 = sub_276B61AF8(*this);
      }

      else
      {
        v13 = sub_276B61CE8(*this);
      }

      goto LABEL_22;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v13 = sub_276B61908(*this);
        goto LABEL_22;
      }

      return *v10;
    }

LABEL_17:
    v13 = sub_276B61810(*this);
    goto LABEL_22;
  }

  if (v12 <= 7)
  {
    if (v12 == 6)
    {
      v13 = sub_276B61BF0(*this);
    }

    else
    {
      v13 = sub_276B61DE0(*this);
    }

    goto LABEL_22;
  }

  switch(v12)
  {
    case 8:
      goto LABEL_17;
    case 9:
      v13 = sub_276B61ED8(*this);
      goto LABEL_22;
    case 10:
      v13 = sub_276B61FD8(*this);
LABEL_22:
      *v10 = v13;
      break;
  }

  return *v10;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 435);
    v3 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: extension != NULL: ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "Extension not found.");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  return *v2;
}

void sub_276B58624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetEnum(google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4 && (*(v4 + 10) & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetEnum(google::protobuf::internal::ExtensionSet *this, int a2, char a3, int a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedEnum(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 471);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 8) + 4 * a3);
}

void sub_276B58750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetRepeatedEnum(google::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 478);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(*(*v6 + 8) + 4 * a3) = a4;
}

void sub_276B587FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::ExtensionSet::AddEnum(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, int a5, const google::protobuf::FieldDescriptor *a6)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = result;
  *(result + 2) = a6;
  if (v13)
  {
    *(result + 8) = a3;
    *(result + 9) = 1;
    *(result + 11) = a4;
    result = sub_276B61810(*this);
    v14 = result;
    *v12 = result;
  }

  else
  {
    v14 = *result;
  }

  v15 = *v14;
  if (v15 == v14[1])
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *(*(v14 + 1) + 4 * v15) = a5;
  *v14 = v15 + 1;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetString(google::protobuf::internal::ExtensionSet *a1, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(a1, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

void *google::protobuf::internal::ExtensionSet::MutableString(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  *(v7 + 2) = a4;
  if (v9)
  {
    v7[8] = a3;
    v7[9] = 0;
    result = sub_2769C64F4(*this);
    *v8 = result;
  }

  else
  {
    result = *v7;
  }

  v8[10] &= 0xF0u;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedString(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 533);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 16) + 8 * a3 + 8);
}

void sub_276B589F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRepeatedString(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 540);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 16) + 8 * a3 + 8);
}

void sub_276B58A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ExtensionSet::AddString(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  *(v7 + 2) = a4;
  if (v9)
  {
    v7[8] = a3;
    v7[9] = 1;
    v7[11] = 0;
    v10 = sub_276B61ED8(*this);
    *v8 = v10;
  }

  else
  {
    v10 = *v7;
  }

  v11 = v10[2];
  if (!v11)
  {
    v13 = *(v10 + 3);
LABEL_9:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v10, v13 + 1);
    v11 = v10[2];
    v13 = *v11;
    goto LABEL_10;
  }

  v12 = *(v10 + 2);
  v13 = *v11;
  if (v12 < *v11)
  {
    *(v10 + 2) = v12 + 1;
    return *(v11 + v12 + 1);
  }

  if (v13 == *(v10 + 3))
  {
    goto LABEL_9;
  }

LABEL_10:
  *v11 = v13 + 1;
  result = sub_2769C64F4(*v10);
  v15 = *(v10 + 2);
  v16 = v10[2] + 8 * v15;
  *(v10 + 2) = v15 + 1;
  *(v16 + 8) = result;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetMessage(google::protobuf::internal::ExtensionSet *a1, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(a1, a2);
  if (!v4)
  {
    return a3;
  }

  v5 = *(v4 + 10);
  v6 = *v4;
  if ((v5 & 0x10) == 0)
  {
    return v6;
  }

  v8 = *(*v6 + 24);

  return v8();
}

uint64_t google::protobuf::internal::ExtensionSet::MutableMessage(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::MessageLite *a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  *(v9 + 2) = a5;
  if (v11)
  {
    v9[8] = a3;
    v9[9] = 0;
    v9[10] &= 0xFu;
    result = (*(*a4 + 32))(a4, *this);
    *v10 = result;
    v10[10] &= 0xF0u;
  }

  else
  {
    v13 = v9[10];
    v9[10] = v13 & 0xF0;
    result = *v9;
    if ((v13 & 0x10) != 0)
    {
      v14 = *(*result + 32);

      return v14();
    }
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::SetAllocatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, unsigned __int8 a3, const google::protobuf::FieldDescriptor *a4, google::protobuf::MessageLite *a5)
{
  if (a5)
  {
    v9 = *(a5 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v11 = result;
    *(result + 2) = a4;
    if (v12)
    {
      result[8] = a3;
      result[9] = 0;
      result[10] &= 0xFu;
      if (v9 != *this)
      {
        if (v9)
        {
LABEL_7:
          v13 = (*(*a5 + 32))(a5);
          *v11 = v13;
          result = (*(*v13 + 64))(v13, a5);
LABEL_22:
          v11[10] &= 0xF0u;
          return result;
        }

LABEL_20:
        *v11 = a5;
        result = sub_276B58EC4(*this, a5);
        goto LABEL_22;
      }
    }

    else
    {
      if ((result[10] & 0x10) != 0)
      {
        result = (*(**result + 40))();
        goto LABEL_22;
      }

      v14 = *this;
      if (!*this)
      {
        result = *result;
        if (*v11)
        {
          result = (*(*result + 8))(result);
          v14 = *this;
        }

        else
        {
          v14 = 0;
        }
      }

      if (v9 != v14)
      {
        if (v9)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    *v11 = a5;
    goto LABEL_22;
  }

  result = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (result)
  {

    return google::protobuf::internal::ExtensionSet::Extension::Clear(result);
  }

  return result;
}

google::protobuf::internal::ArenaImpl *sub_276B58EC4(google::protobuf::internal::ArenaImpl *result, uint64_t a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, sub_276B620C0);
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::UnsafeArenaSetAllocatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, unsigned __int8 a3, const google::protobuf::FieldDescriptor *a4, google::protobuf::MessageLite *a5)
{
  if (a5)
  {
    result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v10 = result;
    *(result + 2) = a4;
    if (v11)
    {
      result[8] = a3;
      result[9] = 0;
      result[10] &= 0xFu;
    }

    else
    {
      if ((result[10] & 0x10) != 0)
      {
        result = (*(**result + 48))();
        goto LABEL_14;
      }

      if (!*this)
      {
        result = *result;
        if (*v10)
        {
          result = (*(*result + 8))(result);
        }
      }
    }

    *v10 = a5;
LABEL_14:
    v10[10] &= 0xF0u;
    return result;
  }

  result = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (result)
  {

    return google::protobuf::internal::ExtensionSet::Extension::Clear(result);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::ReleaseMessage(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::MessageLite *a3)
{
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((v5[10] & 0x10) != 0)
  {
    v7 = (*(**v5 + 56))();
    if (!*this && *v6)
    {
      (*(**v6 + 8))(*v6);
    }
  }

  else
  {
    v7 = *v5;
    if (*this)
    {
      v7 = (*(*v7 + 24))(*v5);
      (*(*v7 + 64))(v7, *v6);
    }
  }

  google::protobuf::internal::ExtensionSet::Erase(this, a2);
  return v7;
}

char *google::protobuf::internal::ExtensionSet::Erase(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v12 = a2;
  v3 = *(this + 4);
  result = *(this + 2);
  if (v3 >= 0x101)
  {
    return sub_276B62CF4(result, &v12);
  }

  v5 = *(this + 5);
  v6 = &result[32 * v5];
  if (*(this + 5))
  {
    v7 = *(this + 5);
    do
    {
      v8 = v7 >> 1;
      v9 = &result[32 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 32;
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        result = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  if (result != v6 && *result == a2)
  {
    if (v6 != result + 32)
    {
      result = memmove(result, result + 32, v6 - (result + 32));
      LOWORD(v5) = *(this + 5);
    }

    *(this + 5) = v5 - 1;
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::UnsafeArenaReleaseMessage(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::MessageLite *a3)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v6;
  if ((*(v6 + 10) & 0x10) != 0)
  {
    v8 = (*(*v8 + 64))(*v6, a3);
    if (!*this)
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
      }
    }
  }

  google::protobuf::internal::ExtensionSet::Erase(this, a2);
  return v8;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 744);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 16) + 8 * a3 + 8);
}

void sub_276B59324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRepeatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 751);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 16) + 8 * a3 + 8);
}

void sub_276B593C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddMessage(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::MessageLite *a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  *(v9 + 2) = a5;
  if (v11)
  {
    v9[8] = a3;
    v9[9] = 1;
    v12 = sub_276B61FD8(*this);
    *v10 = v12;
  }

  else
  {
    v12 = *v9;
  }

  v13 = v12[2];
  if (!v13 || (v14 = *(v12 + 2), v14 >= *v13) || (*(v12 + 2) = v14 + 1, (v15 = *(v13 + v14 + 1)) == 0))
  {
    v15 = (*(*a4 + 32))(a4, *this);
    sub_276B620EC(*v10, v15);
  }

  return v15;
}

void google::protobuf::internal::ExtensionSet::RemoveLast(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 791);
    v3 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: extension != NULL: ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2[8]];
  if (v5 > 5)
  {
    if (v5 <= 8)
    {
LABEL_12:
      --**v2;
      return;
    }

    if (v5 == 9)
    {
      v8 = *(*v2 + 8) - 1;
      v9 = *(*v2 + 16) + 8 * v8;
      *(*v2 + 8) = v8;
      v10 = *(v9 + 8);
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }
    }

    else if (v5 == 10)
    {
      v6 = *(*v2 + 8) - 1;
      v7 = *(*v2 + 16) + 8 * v6;
      *(*v2 + 8) = v6;
      (*(**(v7 + 8) + 40))(*(v7 + 8));
    }
  }

  else if (v5 > 2 || v5 == 1 || v5 == 2)
  {
    goto LABEL_12;
  }
}

void sub_276B59644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ReleaseLast(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 830);
    v3 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v6;
  v8 = *v6 - 1;
  *v6 = v8;
  v9 = v6 + 2;
  v10 = *(v5 + 8);
  *(v5 + 8) = v10 - 1;
  result = *&v9[2 * v10 - 2];
  if (v10 < v7)
  {
    *&v9[2 * v10 - 2] = *&v9[2 * v8];
  }

  return result;
}

void sub_276B59708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float google::protobuf::internal::ExtensionSet::SwapElements(google::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 838);
    v8 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: extension != NULL: ");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v20, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  v10 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v6[8]];
  if (v10 <= 5)
  {
    if (v10 <= 2)
    {
      if (v10 != 1)
      {
        if (v10 != 2)
        {
          return *&v7;
        }

LABEL_15:
        v12 = *(*v6 + 8);
        goto LABEL_16;
      }
    }

    else if (v10 != 3)
    {
      if (v10 != 4)
      {
        v11 = *(*v6 + 8);
        v7 = *(v11 + 8 * a3);
        *(v11 + 8 * a3) = *(v11 + 8 * a4);
        *(v11 + 8 * a4) = v7;
        return *&v7;
      }

      goto LABEL_15;
    }

LABEL_17:
    v14 = *(*v6 + 8);
    v15 = *(v14 + 4 * a3);
    *(v14 + 4 * a3) = *(v14 + 4 * a4);
    *(v14 + 4 * a4) = v15;
    return *&v7;
  }

  if (v10 <= 7)
  {
    if (v10 == 6)
    {
      v18 = *(*v6 + 8);
      LODWORD(v7) = *(v18 + 4 * a3);
      *(v18 + 4 * a3) = *(v18 + 4 * a4);
      *(v18 + 4 * a4) = v7;
    }

    else
    {
      v16 = *(*v6 + 8);
      v17 = *(v16 + a3);
      *(v16 + a3) = *(v16 + a4);
      *(v16 + a4) = v17;
    }
  }

  else
  {
    if (v10 == 8)
    {
      goto LABEL_17;
    }

    if (v10 == 9 || v10 == 10)
    {
      v12 = *(*v6 + 16) + 8;
LABEL_16:
      v13 = *(v12 + 8 * a3);
      *(v12 + 8 * a3) = *(v12 + 8 * a4);
      *(v12 + 8 * a4) = v13;
    }
  }

  return *&v7;
}

void sub_276B598B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Clear(unsigned __int8 *this)
{
  v2 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = (v2 + 1);
    v5 = v7;

    return sub_276B62220(v5, v6);
  }

  else if (*(this + 5))
  {
    v3 = 32 * *(this + 5);
    v4 = (v2 + 1);
    do
    {
      this = google::protobuf::internal::ExtensionSet::Extension::Clear(v4);
      v4 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  return this;
}

unsigned __int16 *google::protobuf::internal::ExtensionSet::GrowCapacity(unsigned __int16 *this, unint64_t a2)
{
  v2 = this[4];
  if (v2 <= 0x100 && v2 < a2)
  {
    v4 = this;
    do
    {
      if (v2)
      {
        LOWORD(v2) = 4 * v2;
      }

      else
      {
        LOWORD(v2) = 1;
      }
    }

    while (v2 < a2);
    v5 = *(this + 2);
    v6 = this[5];
    v7 = *this;
    if (v2 < 0x101u)
    {
      this = sub_276B56A74(v7, v2);
      v8 = this;
      if (v6)
      {
        this = memmove(this, v5, 32 * v6);
      }
    }

    else
    {
      this = sub_276B629D8(v7);
      v8 = this;
      if (v6)
      {
        v9 = &v5[32 * v6];
        v10 = *this;
        v11 = v5;
        do
        {
          v14 = *v11;
          v12 = *(v11 + 3);
          v15 = *(v11 + 8);
          v16 = v12;
          this = sub_276B62AB4(v8, v10, &v14, &v14);
          v10 = this;
          v11 += 32;
        }

        while (v11 != v9);
      }
    }

    if (*v4)
    {
      v13 = 1;
    }

    else
    {
      v13 = v5 == 0;
    }

    if (!v13)
    {
      this = MEMORY[0x277C9F650](v5, 0x1062C802AB6010CLL);
    }

    v4[4] = v2;
    *(v4 + 2) = v8;
    if (v2 >= 0x101u)
    {
      v4[5] = 0;
    }
  }

  return this;
}

uint64_t sub_276B59A70(char *a1, char *a2, void *a3, void *a4)
{
  v4 = 0;
  if (a1 != a2 && a3 != a4)
  {
    v4 = 0;
    do
    {
      v5 = *(a3 + 8);
      if (*a1 >= v5)
      {
        if (*a1 == v5)
        {
          a1 += 32;
          v6 = a3[1];
          if (v6)
          {
            do
            {
              a3 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = a3;
              a3 = a3[2];
            }

            while (*a3 != v7);
          }
        }

        else
        {
          v8 = a3[1];
          if (v8)
          {
            do
            {
              a3 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = a3;
              a3 = a3[2];
            }

            while (*a3 != v9);
          }
        }
      }

      else
      {
        a1 += 32;
      }

      ++v4;
    }

    while (a1 != a2 && a3 != a4);
  }

  if (a3 == a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = a3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = a3[2];
          v13 = *v12 == a3;
          a3 = v12;
        }

        while (!v13);
      }

      ++v10;
      a3 = v12;
    }

    while (v12 != a4);
  }

  return v4 + ((a2 - a1) >> 5) + v10;
}

void google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(google::protobuf::internal::ExtensionSet *this, int a2, int **a3)
{
  if (*(a3 + 9) != 1)
  {
    if (*(a3 + 10))
    {
      return;
    }

    v12 = *(a3 + 8);
    v13 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v12];
    if (v13 <= 5)
    {
      if (v13 <= 2)
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            return;
          }

LABEL_58:
          v31 = *a3;
          v32 = a3[2];
          v33 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          *(v33 + 2) = v32;
          if (v34)
          {
            v33[8] = v12;
            v33[9] = 0;
          }

          v33[10] &= 0xF0u;
          *v33 = v31;
          return;
        }
      }

      else if (v13 != 3)
      {
        if (v13 != 4)
        {
          v14 = *a3;
          v15 = a3[2];
          v16 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          *(v16 + 2) = v15;
          if (v17)
          {
            v16[8] = v12;
            v16[9] = 0;
          }

          v16[10] &= 0xF0u;
          *v16 = v14;
          return;
        }

        goto LABEL_58;
      }

LABEL_61:
      v35 = *a3;
      v36 = a3[2];
      v37 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
      *(v37 + 2) = v36;
      if (v38)
      {
        v37[8] = v12;
        v37[9] = 0;
      }

      v37[10] &= 0xF0u;
      *v37 = v35;
      return;
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        v50 = *a3;
        v51 = a3[2];
        v52 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v52 + 2) = v51;
        if (v53)
        {
          v52[8] = v12;
          v52[9] = 0;
        }

        v52[10] &= 0xF0u;
        *v52 = v50;
      }

      else
      {
        v39 = *a3;
        v40 = a3[2];
        v41 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v41 + 2) = v40;
        if (v42)
        {
          v41[8] = v12;
          v41[9] = 0;
        }

        v41[10] &= 0xF0u;
        *v41 = v39;
      }

      return;
    }

    if (v13 == 8)
    {
      goto LABEL_61;
    }

    if (v13 == 9)
    {
      v54 = *a3;
      if (*(*a3 + 23) < 0)
      {
        sub_276A07B90(&v63, *v54, *(v54 + 1));
      }

      else
      {
        v55 = *v54;
        v64 = *(v54 + 2);
        v63 = v55;
      }

      v59 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, v12, a3[2]);
      v60 = v59;
      if (*(v59 + 23) < 0)
      {
        operator delete(*v59);
      }

      v61 = v63;
      v60[2] = v64;
      *v60 = v61;
      return;
    }

    if (v13 != 10)
    {
      return;
    }

    v25 = a3[2];
    v26 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v27 = v26;
    *(v26 + 2) = v25;
    if (v28)
    {
      v26[8] = *(a3 + 8);
      v26[11] = *(a3 + 11);
      v26[9] = 0;
      v29 = v26[10] & 0xF;
      if ((*(a3 + 10) & 0x10) != 0)
      {
        v26[10] = v29 | 0x10;
        v62 = (*(**a3 + 16))(*a3, *this);
        *v27 = v62;
        (*(*v62 + 104))(v62, *a3);
        goto LABEL_103;
      }

      v26[10] = v29;
      v30 = (*(**a3 + 32))(*a3, *this);
      *v27 = v30;
LABEL_93:
      (*(*v30 + 64))(v30, *a3);
LABEL_103:
      v27[10] &= 0xF0u;
      return;
    }

    v56 = *v26;
    v57 = *a3;
    if ((*(a3 + 10) & 0x10) != 0)
    {
      if ((v26[10] & 0x10) != 0)
      {
        (*(*v56 + 104))(*v26, v57);
        goto LABEL_103;
      }

      v57 = (*(*v57 + 24))(*a3, *v26);
      v58 = *v56;
    }

    else
    {
      v58 = *v56;
      if ((v26[10] & 0x10) != 0)
      {
        v30 = (*(v58 + 32))(*v26, v57);
        goto LABEL_93;
      }
    }

    (*(v58 + 64))(v56, v57);
    goto LABEL_103;
  }

  v6 = a3[2];
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v9 = v7;
  *(v7 + 2) = v6;
  v10 = *(a3 + 8);
  if (v8)
  {
    v7[8] = v10;
    v7[11] = *(a3 + 11);
    v7[9] = 1;
  }

  v11 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v10];
  if (v11 <= 5)
  {
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        if (v8)
        {
          *v7 = sub_276B61A00(*this);
        }

        if (**a3)
        {
          google::protobuf::RepeatedField<unsigned int>::Reserve();
        }
      }

      else if (v11 == 4)
      {
        if (v8)
        {
          *v7 = sub_276B61AF8(*this);
        }

        if (**a3)
        {
          google::protobuf::RepeatedField<unsigned long long>::Reserve();
        }
      }

      else
      {
        if (v8)
        {
          *v7 = sub_276B61CE8(*this);
        }

        if (**a3)
        {
          google::protobuf::RepeatedField<double>::Reserve();
        }
      }

      return;
    }

    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (v8)
        {
          *v7 = sub_276B61908(*this);
        }

        if (**a3)
        {
          google::protobuf::RepeatedField<long long>::Reserve();
        }
      }

      return;
    }

    goto LABEL_52;
  }

  if (v11 <= 7)
  {
    if (v11 == 6)
    {
      if (v8)
      {
        *v7 = sub_276B61BF0(*this);
      }

      if (**a3)
      {
        google::protobuf::RepeatedField<float>::Reserve();
      }
    }

    else
    {
      if (v8)
      {
        *v7 = sub_276B61DE0(*this);
      }

      if (**a3)
      {
        google::protobuf::RepeatedField<BOOL>::Reserve();
      }
    }
  }

  else
  {
    switch(v11)
    {
      case 8:
LABEL_52:
        if (v8)
        {
          *v7 = sub_276B61810(*this);
        }

        if (**a3)
        {
          google::protobuf::RepeatedField<int>::Reserve();
        }

        return;
      case 9:
        if (v8)
        {
          *v7 = sub_276B61ED8(*this);
        }

        v43 = *a3;
        v44 = (*a3)[2];
        if (v44)
        {
          v45 = *v9;
          v46 = *(v43 + 16);
          v47 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v45, v44);
          sub_276B4A878(v45, v47, (v46 + 8), v44, **(v45 + 2) - *(v45 + 2));
          v48 = *(v45 + 2) + v44;
          *(v45 + 2) = v48;
          v49 = *(v45 + 2);
          if (*v49 < v48)
          {
            *v49 = v48;
          }
        }

        break;
      case 10:
        if (v8)
        {
          *v7 = sub_276B61FD8(*this);
        }

        v18 = *a3;
        if ((*a3)[2] >= 1)
        {
          v19 = 0;
          do
          {
            v20 = *(*(v18 + 16) + 8 * v19 + 8);
            v21 = *v9;
            v22 = *(*v9 + 2);
            if (!v22 || (v23 = *(v21 + 2), v23 >= *v22) || (*(v21 + 2) = v23 + 1, (v24 = *&v22[2 * v23 + 2]) == 0))
            {
              v24 = (*(*v20 + 32))(v20, *this);
              sub_276B620EC(*v9, v24);
            }

            (*(*v24 + 64))(v24, v20);
            ++v19;
          }

          while (v19 < *(v18 + 8));
        }

        break;
    }
  }
}

void sub_276B5A388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_276B5A45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::ExtensionSet::~ExtensionSet(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SwapExtension(google::protobuf::internal::ExtensionSet *this, google::protobuf::internal::ExtensionSet *a2, int a3)
{
  if (this != a2)
  {
    v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a3);
    v7 = google::protobuf::internal::ExtensionSet::FindOrNull(a2, a3);
    if (v6 | v7)
    {
      v8 = v7;
      if (v6 && v7)
      {
        if (*this == *a2)
        {
          v10 = *(v6 + 16);
          v11 = *v6;
          v12 = *(v7 + 16);
          *v6 = *v7;
          *(v6 + 16) = v12;
          *v7 = v11;
          *(v7 + 16) = v10;
        }

        else
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(&v18, a3, v7);
          v9 = google::protobuf::internal::ExtensionSet::FindOrNull(&v18, a3);
          google::protobuf::internal::ExtensionSet::Extension::Clear(v8);
          google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(a2, a3, v6);
          google::protobuf::internal::ExtensionSet::Extension::Clear(v6);
          google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, a3, v9);
          google::protobuf::internal::ExtensionSet::~ExtensionSet(&v18);
        }
      }

      else
      {
        if (v6)
        {
          if (v7)
          {
            return;
          }

          if (*this == *a2)
          {
            v16 = google::protobuf::internal::ExtensionSet::Insert(a2, a3);
            v17 = *(v6 + 16);
            *v16 = *v6;
            *(v16 + 2) = v17;
          }

          else
          {
            google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(a2, a3, v6);
          }

          v15 = this;
        }

        else
        {
          if (*this == *a2)
          {
            v13 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
            v14 = *(v8 + 2);
            *v13 = *v8;
            *(v13 + 2) = v14;
          }

          else
          {
            google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, a3, v7);
          }

          v15 = a2;
        }

        google::protobuf::internal::ExtensionSet::Erase(v15, a3);
      }
    }
  }
}

void sub_276B5A62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    return (sub_276B6290C(v4, &v14, &v14) + 5);
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

uint64_t google::protobuf::internal::ExtensionSet::FindExtensionInfoFromTag(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4, unsigned __int8 *a5, _BYTE *a6)
{
  v7 = a2 >> 3;
  *a4 = v7;
  return google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(a1, a2 & 7, v7, a3, a5, a6);
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
        google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 82);
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

void sub_276B5AA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, google::protobuf::internal::ExtensionFinder *a4, google::protobuf::internal::FieldSkipper *a5)
{
  LOBYTE(v12) = 0;
  v9 = a2 >> 3;
  if (google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(this, a2 & 7, v9, a4, v11, &v12))
  {
    return google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(this, v9, v12, v11, a3, a5);
  }

  else
  {
    return (*(*a5 + 16))(a5, a3, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(google::protobuf::internal::ExtensionSet *this, uint64_t a2, int a3, uint64_t a4, google::protobuf::io::CodedInputStream *a5, uint64_t a6)
{
  if (a3)
  {
    v11 = *a5;
    if (*a5 >= *(a5 + 1))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11;
      if ((*v11 & 0x80000000) == 0)
      {
        *a5 = v11 + 1;
        goto LABEL_127;
      }
    }

    Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v12);
    v12 = Varint32Fallback;
    if ((Varint32Fallback & 0x8000000000000000) == 0)
    {
LABEL_127:
      v119 = google::protobuf::io::CodedInputStream::PushLimit(a5, v12);
      switch(*a4)
      {
        case 1:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            v170[0].__r_.__value_.__r.__words[0] = 0;
            v145 = *a5;
            if ((*(a5 + 2) - *a5) >= 8)
            {
              v146 = *v145;
              *a5 = v145 + 1;
              goto LABEL_196;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
            if (result)
            {
              v146 = *&v170[0].__r_.__value_.__l.__data_;
LABEL_196:
              google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 2), v146, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 2:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
            v147 = *a5;
            if ((*(a5 + 2) - *a5) >= 4)
            {
              v148 = *v147;
              *a5 = v147 + 1;
              goto LABEL_203;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
            if (result)
            {
              v148 = *&v170[0].__r_.__value_.__l.__data_;
LABEL_203:
              google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 2), v148, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 3:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          do
          {
            v132 = *a5;
            if (*a5 >= *(a5 + 1) || (v133 = *v132, v133 < 0))
            {
              Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
              if ((v135 & 1) == 0)
              {
                return 0;
              }

              v133 = Varint64Fallback;
            }

            else
            {
              *a5 = v132 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddInt64(this, a2, 3, *(a4 + 2), v133, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) > 0);
          goto LABEL_129;
        case 4:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          do
          {
            v138 = *a5;
            if (*a5 >= *(a5 + 1) || (v139 = *v138, v139 < 0))
            {
              v140 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
              if ((v141 & 1) == 0)
              {
                return 0;
              }

              v139 = v140;
            }

            else
            {
              *a5 = v138 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddUInt64(this, a2, 4, *(a4 + 2), v139, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) > 0);
          goto LABEL_129;
        case 5:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (1)
          {
            v126 = *a5;
            if (*a5 >= *(a5 + 1))
            {
              break;
            }

            v127 = *v126;
            if (*v126 < 0)
            {
              goto LABEL_152;
            }

            *a5 = v126 + 1;
LABEL_153:
            google::protobuf::internal::ExtensionSet::AddInt32(this, a2, 5, *(a4 + 2), v127, *(a4 + 24));
            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
            {
              goto LABEL_129;
            }
          }

          v127 = 0;
LABEL_152:
          v128 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v127);
          v127 = v128;
          if (v128 < 0)
          {
            return 0;
          }

          goto LABEL_153;
        case 6:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            v170[0].__r_.__value_.__r.__words[0] = 0;
            v154 = *a5;
            if ((*(a5 + 2) - *a5) >= 8)
            {
              v155 = *v154;
              v170[0].__r_.__value_.__r.__words[0] = *v154;
              *a5 = v154 + 1;
              goto LABEL_228;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
            if (result)
            {
              v155 = v170[0].__r_.__value_.__r.__words[0];
LABEL_228:
              google::protobuf::internal::ExtensionSet::AddUInt64(this, a2, 6, *(a4 + 2), v155, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 7:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
            v156 = *a5;
            if ((*(a5 + 2) - *a5) >= 4)
            {
              data = *v156;
              LODWORD(v170[0].__r_.__value_.__l.__data_) = *v156;
              *a5 = v156 + 1;
              goto LABEL_235;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
            if (result)
            {
              data = v170[0].__r_.__value_.__l.__data_;
LABEL_235:
              google::protobuf::internal::ExtensionSet::AddUInt32(this, a2, 7, *(a4 + 2), data, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 8:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          do
          {
            v142 = *a5;
            if (*a5 >= *(a5 + 1) || (v143 = *v142, v143 < 0))
            {
              v143 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
              if ((v144 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *a5 = v142 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddBool(this, a2, 8, *(a4 + 2), v143 != 0, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) > 0);
          goto LABEL_129;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          google::protobuf::internal::LogMessage::LogMessage(v170, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 1277);
          v120 = google::protobuf::internal::LogMessage::operator<<(v170, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v169, &v120->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v170[0].__r_.__value_.__l.__data_);
          goto LABEL_129;
        case 0xD:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (1)
          {
            v129 = *a5;
            if (*a5 >= *(a5 + 1))
            {
              break;
            }

            v130 = *v129;
            if (*v129 < 0)
            {
              goto LABEL_160;
            }

            *a5 = v129 + 1;
LABEL_161:
            google::protobuf::internal::ExtensionSet::AddUInt32(this, a2, 13, *(a4 + 2), v130, *(a4 + 24));
            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
            {
              goto LABEL_129;
            }
          }

          v130 = 0;
LABEL_160:
          v131 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v130);
          v130 = v131;
          if (v131 < 0)
          {
            return 0;
          }

          goto LABEL_161;
        case 0xE:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (1)
          {
            v152 = *a5;
            if (*a5 >= *(a5 + 1))
            {
              break;
            }

            v153 = *v152;
            if (*v152 < 0)
            {
              goto LABEL_219;
            }

            *a5 = v152 + 1;
LABEL_220:
            if ((*(a4 + 8))(*(a4 + 16), v153))
            {
              google::protobuf::internal::ExtensionSet::AddEnum(this, a2, 14, *(a4 + 2), v153, *(a4 + 24));
            }

            else
            {
              (*(*a6 + 32))(a6, a2, v153);
            }

            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
            {
              goto LABEL_129;
            }
          }

          LODWORD(v153) = 0;
LABEL_219:
          v153 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v153);
          if (v153 < 0)
          {
            return 0;
          }

          goto LABEL_220;
        case 0xF:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
            v124 = *a5;
            if ((*(a5 + 2) - *a5) >= 4)
            {
              v125 = *v124;
              *a5 = v124 + 1;
              goto LABEL_143;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
            if (result)
            {
              v125 = v170[0].__r_.__value_.__l.__data_;
LABEL_143:
              google::protobuf::internal::ExtensionSet::AddInt32(this, a2, 15, *(a4 + 2), v125, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 0x10:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          while (2)
          {
            v170[0].__r_.__value_.__r.__words[0] = 0;
            v136 = *a5;
            if ((*(a5 + 2) - *a5) >= 8)
            {
              v137 = *v136;
              *a5 = v136 + 1;
              goto LABEL_174;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
            if (result)
            {
              v137 = v170[0].__r_.__value_.__r.__words[0];
LABEL_174:
              google::protobuf::internal::ExtensionSet::AddInt64(this, a2, 16, *(a4 + 2), v137, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
              {
                goto LABEL_129;
              }

              continue;
            }

            return result;
          }

        case 0x11:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          break;
        case 0x12:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) < 1)
          {
            goto LABEL_129;
          }

          do
          {
            v149 = *a5;
            if (*a5 >= *(a5 + 1) || (v150 = *v149, (v150 & 0x8000000000000000) != 0))
            {
              v150 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
              if ((v151 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *a5 = v149 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddInt64(this, a2, 18, *(a4 + 2), -(v150 & 1) ^ (v150 >> 1), *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) > 0);
LABEL_129:
          google::protobuf::io::CodedInputStream::PopLimit(a5, v119);
          return 1;
        default:
          goto LABEL_129;
      }

      while (1)
      {
        v121 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          break;
        }

        v122 = *v121;
        if (*v121 < 0)
        {
          goto LABEL_137;
        }

        *a5 = v121 + 1;
LABEL_138:
        google::protobuf::internal::ExtensionSet::AddInt32(this, a2, 17, *(a4 + 2), -(v122 & 1) ^ (v122 >> 1), *(a4 + 24));
        if (google::protobuf::io::CodedInputStream::BytesUntilLimit(a5) <= 0)
        {
          goto LABEL_129;
        }
      }

      v122 = 0;
LABEL_137:
      v123 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v122);
      v122 = v123;
      if (v123 < 0)
      {
        return 0;
      }

      goto LABEL_138;
    }

    return 0;
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v170[0].__r_.__value_.__r.__words[0] = 0;
        v13 = *a5;
        if ((*(a5 + 2) - *a5) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
          if (!result)
          {
            return result;
          }

          v14 = *&v170[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v14 = *v13;
          *a5 = v13 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 2), v14, *(a4 + 24));
        }

        else
        {
          v83 = *(a4 + 24);
          v84 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          *(v84 + 2) = v83;
          if (v85)
          {
            *(v84 + 4) = 1;
          }

          v84[10] &= 0xF0u;
          *v84 = v14;
        }

        return 1;
      case 2:
        LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
        v46 = *a5;
        if ((*(a5 + 2) - *a5) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
          if (!result)
          {
            return result;
          }

          v47 = *&v170[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v47 = *v46;
          *a5 = v46 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 2), v47, *(a4 + 24));
        }

        else
        {
          v86 = *(a4 + 24);
          v87 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          *(v87 + 2) = v86;
          if (v88)
          {
            *(v87 + 4) = 2;
          }

          v87[10] &= 0xF0u;
          *v87 = v47;
        }

        return 1;
      case 3:
        v35 = *a5;
        if (*a5 >= *(a5 + 1) || (v36 = *v35, (v36 & 0x8000000000000000) != 0))
        {
          v99 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
          if ((v100 & 1) == 0)
          {
            return 0;
          }

          v36 = v99;
        }

        else
        {
          *a5 = v35 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = this;
          v41 = a2;
          v42 = 3;
          goto LABEL_93;
        }

        v102 = *(a4 + 24);
        v80 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v80 + 2) = v102;
        if ((v103 & 1) == 0)
        {
          goto LABEL_104;
        }

        v82 = 3;
        goto LABEL_103;
      case 4:
        v43 = *a5;
        if (*a5 >= *(a5 + 1) || (v36 = *v43, (v36 & 0x8000000000000000) != 0))
        {
          v104 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
          if ((v105 & 1) == 0)
          {
            return 0;
          }

          v36 = v104;
        }

        else
        {
          *a5 = v43 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v51 = *(a4 + 2);
          v53 = *(a4 + 24);
          v54 = this;
          v55 = a2;
          v56 = 4;
          v52 = v36;
          goto LABEL_100;
        }

        v106 = *(a4 + 24);
        v80 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v80 + 2) = v106;
        if ((v107 & 1) == 0)
        {
          goto LABEL_104;
        }

        v82 = 4;
        goto LABEL_103;
      case 5:
        v28 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          LODWORD(v29) = 0;
        }

        else
        {
          LODWORD(v29) = *v28;
          if ((*v28 & 0x80000000) == 0)
          {
            *a5 = v28 + 1;
            goto LABEL_251;
          }
        }

        v29 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v29);
        if (v29 < 0)
        {
          return 0;
        }

LABEL_251:
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = this;
          v22 = a2;
          v23 = 5;
          v24 = v29;
          goto LABEL_253;
        }

        v161 = *(a4 + 24);
        v162 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v162 + 2) = v161;
        if ((v163 & 1) == 0)
        {
          goto LABEL_281;
        }

        v164 = 5;
        goto LABEL_280;
      case 6:
        v170[0].__r_.__value_.__r.__words[0] = 0;
        v50 = *a5;
        if ((*(a5 + 2) - *a5) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v170[0].__r_.__value_.__r.__words[0] = *v50;
          *a5 = v50 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v51 = *(a4 + 2);
          v52 = v170[0].__r_.__value_.__r.__words[0];
          v53 = *(a4 + 24);
          v54 = this;
          v55 = a2;
          v56 = 6;
LABEL_100:
          google::protobuf::internal::ExtensionSet::AddUInt64(v54, v55, v56, v51, v52, v53);
          return 1;
        }

        v89 = v170[0].__r_.__value_.__r.__words[0];
        v90 = *(a4 + 24);
        v91 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v91 + 2) = v90;
        if ((v92 & 1) == 0)
        {
          goto LABEL_119;
        }

        v93 = 6;
        goto LABEL_118;
      case 7:
        LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
        v58 = *a5;
        if ((*(a5 + 2) - *a5) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          LODWORD(v170[0].__r_.__value_.__l.__data_) = *v58;
          *a5 = v58 + 4;
        }

        if (*(a4 + 1) == 1)
        {
          v59 = *(a4 + 2);
          v60 = v170[0].__r_.__value_.__l.__data_;
          v61 = *(a4 + 24);
          v62 = this;
          v63 = a2;
          v64 = 7;
          goto LABEL_260;
        }

        v94 = v170[0].__r_.__value_.__l.__data_;
        v95 = *(a4 + 24);
        v96 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v96 + 2) = v95;
        if (v97)
        {
          v98 = 7;
          goto LABEL_245;
        }

        goto LABEL_246;
      case 8:
        v44 = *a5;
        if (*a5 >= *(a5 + 1) || (v45 = *v44, v45 < 0))
        {
          v108 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
          if ((v109 & 1) == 0)
          {
            return 0;
          }

          v45 = v108;
        }

        else
        {
          *a5 = v44 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddBool(this, a2, 8, *(a4 + 2), v45 != 0, *(a4 + 24));
        }

        else
        {
          v110 = *(a4 + 24);
          v111 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          *(v111 + 2) = v110;
          if (v112)
          {
            *(v111 + 4) = 8;
          }

          v111[10] &= 0xF0u;
          *v111 = v45 != 0;
        }

        return 1;
      case 9:
        v25 = *(a4 + 1);
        v26 = *(a4 + 24);
        v27 = 9;
        goto LABEL_60;
      case 0xA:
        v31 = *(a4 + 1);
        v32 = *(a4 + 8);
        v33 = *(a4 + 24);
        if (v31 == 1)
        {
          v34 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 10, v32, v33);
        }

        else
        {
          v34 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 10, v32, v33);
        }

        v70 = *(a5 + 13);
        v71 = __OFSUB__(v70--, 1);
        *(a5 + 13) = v70;
        if (v70 < 0 != v71)
        {
          return 0;
        }

        result = google::protobuf::MessageLite::MergePartialFromCodedStream(v34, a5);
        if (!result)
        {
          return result;
        }

        ++*(a5 + 13);
        return *(a5 + 8) == ((8 * a2) | 4);
      case 0xB:
        v65 = *(a4 + 1);
        v66 = *(a4 + 8);
        v67 = *(a4 + 24);
        if (v65 == 1)
        {
          v68 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 11, v66, v67);
        }

        else
        {
          v68 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 11, v66, v67);
        }

        v73 = v68;
        v74 = *a5;
        if (*a5 >= *(a5 + 1) || (VarintSizeAsIntFallback = *v74, VarintSizeAsIntFallback < 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a5);
          if (VarintSizeAsIntFallback < 0)
          {
            return 0;
          }
        }

        else
        {
          *a5 = v74 + 1;
        }

        v116 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a5, VarintSizeAsIntFallback);
        if ((v116 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v117 = v116;
        result = google::protobuf::MessageLite::MergePartialFromCodedStream(v73, a5);
        if (!result)
        {
          return result;
        }

        result = google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a5, v117);
        if (!result)
        {
          return result;
        }

        return 1;
      case 0xC:
        v25 = *(a4 + 1);
        v26 = *(a4 + 24);
        v27 = 12;
LABEL_60:
        if (v25 == 1)
        {
          v69 = google::protobuf::internal::ExtensionSet::AddString(this, a2, v27, v26);
        }

        else
        {
          v69 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, v27, v26);
        }

        return google::protobuf::internal::WireFormatLite::ReadBytes(a5, v69);
      case 0xD:
        v30 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          LODWORD(v29) = 0;
        }

        else
        {
          LODWORD(v29) = *v30;
          if ((*v30 & 0x80000000) == 0)
          {
            *a5 = v30 + 1;
            goto LABEL_258;
          }
        }

        v29 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v29);
        if (v29 < 0)
        {
          return 0;
        }

LABEL_258:
        if (*(a4 + 1) == 1)
        {
          v59 = *(a4 + 2);
          v61 = *(a4 + 24);
          v62 = this;
          v63 = a2;
          v64 = 13;
          v60 = v29;
LABEL_260:
          google::protobuf::internal::ExtensionSet::AddUInt32(v62, v63, v64, v59, v60, v61);
          return 1;
        }

        v165 = *(a4 + 24);
        v162 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v162 + 2) = v165;
        if ((v166 & 1) == 0)
        {
          goto LABEL_281;
        }

        v164 = 13;
        goto LABEL_280;
      case 0xE:
        v57 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          LODWORD(v29) = 0;
        }

        else
        {
          v29 = *v57;
          if ((*v57 & 0x80000000) == 0)
          {
            *a5 = v57 + 1;
            goto LABEL_273;
          }
        }

        v29 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v29);
        if (v29 < 0)
        {
          return 0;
        }

LABEL_273:
        if ((*(a4 + 8))(*(a4 + 16), v29))
        {
          if (*(a4 + 1) == 1)
          {
            google::protobuf::internal::ExtensionSet::AddEnum(this, a2, 14, *(a4 + 2), v29, *(a4 + 24));
          }

          else
          {
            v167 = *(a4 + 24);
            v162 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
            *(v162 + 2) = v167;
            if (v168)
            {
              v164 = 14;
LABEL_280:
              *(v162 + 4) = v164;
            }

LABEL_281:
            v162[10] &= 0xF0u;
            *v162 = v29;
          }
        }

        else
        {
          (*(*a6 + 32))(a6, a2, v29);
        }

        return 1;
      case 0xF:
        LODWORD(v170[0].__r_.__value_.__l.__data_) = 0;
        v17 = *a5;
        if ((*(a5 + 2) - *a5) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a5, v170);
          if (!result)
          {
            return result;
          }

          v18 = v170[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v18 = *v17;
          *a5 = v17 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = this;
          v22 = a2;
          v23 = 15;
          v24 = v18;
          goto LABEL_253;
        }

        v76 = *(a4 + 24);
        v77 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v77 + 2) = v76;
        if (v78)
        {
          *(v77 + 4) = 15;
        }

        v77[10] &= 0xF0u;
        *v77 = v18;
        return 1;
      case 0x10:
        v170[0].__r_.__value_.__r.__words[0] = 0;
        v37 = *a5;
        if ((*(a5 + 2) - *a5) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a5, v170);
          if (!result)
          {
            return result;
          }

          v36 = v170[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          v36 = *v37;
          *a5 = v37 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = this;
          v41 = a2;
          v42 = 16;
LABEL_93:
          v101 = v36;
          goto LABEL_115;
        }

        v79 = *(a4 + 24);
        v80 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v80 + 2) = v79;
        if (v81)
        {
          v82 = 16;
LABEL_103:
          *(v80 + 4) = v82;
        }

LABEL_104:
        v80[10] &= 0xF0u;
        *v80 = v36;
        return 1;
      case 0x11:
        v15 = *a5;
        if (*a5 >= *(a5 + 1))
        {
          v16 = 0;
        }

        else
        {
          v16 = *v15;
          if ((*v15 & 0x80000000) == 0)
          {
            *a5 = v15 + 1;
            goto LABEL_241;
          }
        }

        v158 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a5, v16);
        v16 = v158;
        if (v158 < 0)
        {
          return 0;
        }

LABEL_241:
        v94 = -(v16 & 1) ^ (v16 >> 1);
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = this;
          v22 = a2;
          v23 = 17;
          v24 = v94;
LABEL_253:
          google::protobuf::internal::ExtensionSet::AddInt32(v21, v22, v23, v19, v24, v20);
        }

        else
        {
          v159 = *(a4 + 24);
          v96 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          *(v96 + 2) = v159;
          if (v160)
          {
            v98 = 17;
LABEL_245:
            *(v96 + 4) = v98;
          }

LABEL_246:
          v96[10] &= 0xF0u;
          *v96 = v94;
        }

        return 1;
      case 0x12:
        v48 = *a5;
        if (*a5 >= *(a5 + 1) || (v49 = *v48, (v49 & 0x8000000000000000) != 0))
        {
          v49 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a5);
          if ((v113 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *a5 = v48 + 1;
        }

        v89 = -(v49 & 1) ^ (v49 >> 1);
        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = this;
          v41 = a2;
          v42 = 18;
          v101 = v89;
LABEL_115:
          google::protobuf::internal::ExtensionSet::AddInt64(v40, v41, v42, v38, v101, v39);
        }

        else
        {
          v114 = *(a4 + 24);
          v91 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          *(v91 + 2) = v114;
          if (v115)
          {
            v93 = 18;
LABEL_118:
            *(v91 + 4) = v93;
          }

LABEL_119:
          v91[10] &= 0xF0u;
          *v91 = v89;
        }

        break;
      default:
        return 1;
    }

    return 1;
  }
}