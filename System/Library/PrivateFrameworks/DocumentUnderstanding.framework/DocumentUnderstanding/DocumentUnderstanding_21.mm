uint64_t sub_232CB6768(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 2)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0468(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6CC);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 2)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC5B5C(v23, v24 + 1);
    result = sub_232CC5FCC(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_232CC5FCC(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB6A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6A78(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 3)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 3)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB6C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6C8C(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 3)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC04A8(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6D0);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 3)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC5530(v23, v24 + 1);
    result = sub_232CC59A0(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_232CC59A0(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB6F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6F9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 4)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 4)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB7178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB71B0(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC04E8(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6D4);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC6188(v23, v24 + 1);
    result = sub_232CC65F8(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_232CC65F8(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB7480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB74C0(float a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  result = sub_232CBA810(a2, a3);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a4;
    if ((a4 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a4] != 6)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 6)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a1;
  return result;
}

void sub_232CB76A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB76DC(uint64_t *a1, float a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a3);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a4;
    if ((a4 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a4] != 6)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a5;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0528(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6D8);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 6)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a5)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC67B4(v23, v24 + 1);
    result = sub_232CC6C24(v23);
    *(result + 4 * v24) = a2;
  }

  else
  {
    result = sub_232CC6C24(v23);
    *(result + 4 * v24) = a2;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB79B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB79F4(double a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  result = sub_232CBA810(a2, a3);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a4;
    if ((a4 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a4] != 5)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 5)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a1;
  return result;
}

void sub_232CB7BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB7C10(uint64_t *a1, double a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a3);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a4;
    if ((a4 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a4] != 5)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a5;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0568(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6DC);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 5)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a5)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC6DE0(v23, v24 + 1);
    result = sub_232CC7250(v23);
    *(result + 8 * v24) = a2;
  }

  else
  {
    result = sub_232CC7250(v23);
    *(result + 8 * v24) = a2;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB7EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB7F28(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 7)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v9[9] = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = v9[8];
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 7)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  v9[10] &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB8104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB813C(uint64_t *a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 7)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC05A8(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6E0);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 7)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC48E0(v23, v24 + 1);
    result = sub_232CC4D4C(v23);
    *(result + v24) = a5;
  }

  else
  {
    result = sub_232CC4D4C(v23);
    *(result + v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB844C(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v9 = sub_232CBA810(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  *(v9 + 9) = 1;
  *(v9 + 8) = a3;
  *(v9 + 11) = a4;
  v12 = dword_232D01270[a3];
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            sub_232CC06A8(v13);
          }

          v14 = sub_232CBF6D8;
          goto LABEL_48;
        }
      }

      else
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            sub_232CC0678(v13);
          }

          v14 = sub_232CBF6E0;
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    switch(v12)
    {
      case 8:
        v13 = *a1;
        if (!v13)
        {
          goto LABEL_49;
        }

        if (*(v13 + 24))
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 9:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_232CC0618(v15);
          }

          v16 = sub_232CBF6E4;
          goto LABEL_54;
        }

        break;
      case 10:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_232CC05E8(v15);
          }

          v16 = sub_232CBF6E8;
LABEL_54:
          v17 = sub_232CB3D04(v15, 0x18uLL, v16);
          v17[2] = 0;
          *v17 = v15;
          v17[1] = 0;
          goto LABEL_56;
        }

        break;
      default:
        return *v10;
    }

    operator new();
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_232CC0738(v13);
        }

        v14 = sub_232CBF6D0;
        goto LABEL_48;
      }
    }

    else if (v12 == 4)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_232CC0708(v13);
        }

        v14 = sub_232CBF6D4;
        goto LABEL_48;
      }
    }

    else
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_232CC06D8(v13);
        }

        v14 = sub_232CBF6DC;
        goto LABEL_48;
      }
    }

LABEL_49:
    operator new();
  }

  if (v12 == 1)
  {
    v13 = *a1;
    if (!v13)
    {
      goto LABEL_49;
    }

    if (*(v13 + 24))
    {
LABEL_42:
      sub_232CC0648(v13);
    }

LABEL_43:
    v14 = sub_232CBF6C8;
LABEL_48:
    v17 = sub_232CB3D04(v13, 0x10uLL, v14);
    *v17 = 0;
    v17[1] = v13;
LABEL_56:
    *v10 = v17;
    return *v10;
  }

  if (v12 == 2)
  {
    v13 = *a1;
    if (v13)
    {
      if (*(v13 + 24))
      {
        sub_232CC0768(v13);
      }

      v14 = sub_232CBF6CC;
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  return *v10;
}

uint64_t sub_232CB873C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 8)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 460);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 8)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB8918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB8950(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 8)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 488);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0428(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6C8);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 8)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 495);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC4F04(v23, v24 + 1);
    result = sub_232CC5374(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_232CC5374(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB8C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB8C60(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_232CBA810(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_232CB571C(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v19, &v10->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }

    if (dword_232D01270[a3] != 9)
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 520);
      v11 = sub_232CB571C(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_232CB5858(&v19, &v11->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }

    v8[9] = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_232CB4874(v12);
    }

    v13 = sub_232CB3D04(v12, 0x18uLL, sub_232CAFA9C);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    *v8 = v13;
  }

  else
  {
    if (*(v7 + 9))
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v14 = sub_232CB571C(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v19, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }

    v15 = v8[8];
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_232CB571C(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v19, &v16->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }

    if (dword_232D01270[v15] != 9)
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v17 = sub_232CB571C(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_232CB5858(&v19, &v17->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }
  }

  v8[10] &= 0xF0u;
  return *v8;
}

void sub_232CB8E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void *sub_232CB8ED4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_232CBA810(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_232CB571C(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v26, &v10->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }

    if (dword_232D01270[a3] != 9)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 550);
      v11 = sub_232CB571C(v27, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_232CB5858(&v26, &v11->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }

    *(v8 + 9) = 1;
    *(v8 + 11) = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_232CC0798(v12);
    }

    v13 = sub_232CB3D04(v12, 0x18uLL, sub_232CBF6E4);
    v13[2] = 0;
    *v13 = v12;
    v13[1] = 0;
    *v8 = v13;
  }

  else
  {
    if ((*(v7 + 9) & 1) == 0)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v14 = sub_232CB571C(v27, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v26, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }

    v15 = *(v8 + 8);
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_232CB571C(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v26, &v16->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }

    if (dword_232D01270[v15] != 9)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v17 = sub_232CB571C(v27, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_232CB5858(&v26, &v17->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }
  }

  v18 = *v8;
  v19 = *(v18 + 16);
  if (!v19)
  {
    v21 = *(v18 + 12);
LABEL_22:
    sub_232CC74E8(v18, v21 + 1);
    v19 = *(v18 + 16);
    v21 = *v19;
    goto LABEL_23;
  }

  v20 = *(v18 + 8);
  v21 = *v19;
  if (v20 < *v19)
  {
    *(v18 + 8) = v20 + 1;
    return *&v19[2 * v20 + 2];
  }

  if (v21 == *(v18 + 12))
  {
    goto LABEL_22;
  }

LABEL_23:
  *v19 = v21 + 1;
  v23 = *v18;
  if (!*v18)
  {
    operator new();
  }

  if (*(v23 + 24))
  {
    sub_232CB4874(*v18);
  }

  result = sub_232CB3D04(v23, 0x18uLL, sub_232CAFA9C);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v24 = *(v18 + 8);
  v25 = *(v18 + 16) + 8 * v24;
  *(v18 + 8) = v24 + 1;
  *(v25 + 8) = result;
  return result;
}

void sub_232CB91E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB9220(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_232CBA810(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_232CB571C(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v20, &v12->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    if (dword_232D01270[a3] != 10)
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 591);
      v13 = sub_232CB571C(v21, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_232CB5858(&v20, &v13->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    *(v10 + 9) = 0;
    *(v10 + 10) &= 0xFu;
    result = (*(*a4 + 32))(a4, *a1);
    *v10 = result;
    *(v10 + 10) &= 0xF0u;
  }

  else
  {
    if (*(v9 + 9))
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v15 = sub_232CB571C(v21, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v20, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    v16 = *(v10 + 8);
    if ((v16 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v17 = sub_232CB571C(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v20, &v17->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    if (dword_232D01270[v16] != 10)
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v18 = sub_232CB571C(v21, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_232CB5858(&v20, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    v19 = *(v10 + 10);
    *(v10 + 10) = v19 & 0xF0;
    result = *v10;
    if ((v19 & 0x10) != 0)
    {
      return (*(*result + 32))(result, a4);
    }
  }

  return result;
}

void sub_232CB947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB94B4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_232CBA810(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_232CB571C(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v25, &v12->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }

    if (dword_232D01270[a3] != 10)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 762);
      v13 = sub_232CB571C(v26, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_232CB5858(&v25, &v13->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }

    v10[9] = 1;
    v14 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v14 + 24))
    {
      sub_232CC07D8(*a1);
    }

    v15 = sub_232CB3D04(v14, 0x18uLL, sub_232CBF6E8);
    v15[2] = 0;
    *v15 = v14;
    v15[1] = 0;
    *v10 = v15;
  }

  else
  {
    if ((*(v9 + 9) & 1) == 0)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v16 = sub_232CB571C(v26, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v25, &v16->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }

    v17 = v10[8];
    if ((v17 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v18 = sub_232CB571C(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v25, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }

    if (dword_232D01270[v17] != 10)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v19 = sub_232CB571C(v26, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_232CB5858(&v25, &v19->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }
  }

  v20 = *v10;
  v21 = *(*v10 + 16);
  if (!v21 || (v22 = *(v20 + 8), v22 >= *v21) || (*(v20 + 8) = v22 + 1, (v23 = *&v21[2 * v22 + 2]) == 0))
  {
    v23 = (*(*a4 + 32))(a4, *a1);
    sub_232CBF800(*v10, v23);
  }

  return v23;
}

void sub_232CB976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_232CB97A4(unsigned __int8 *result)
{
  v2 = *(result + 2);
  if (*(result + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = (v2 + 1);
    v5 = v7;

    return sub_232CBF934(v5, v6);
  }

  else if (*(result + 5))
  {
    v3 = 32 * *(result + 5);
    v4 = (v2 + 1);
    do
    {
      result = sub_232CB5DF4(v4);
      v4 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

uint64_t *sub_232CB980C(uint64_t *result, size_t __sz)
{
  v2 = *(result + 4);
  if (v2 <= 0x100 && v2 < __sz)
  {
    v4 = result;
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

    while (v2 < __sz);
    v5 = result[2];
    v6 = *(result + 5);
    v7 = *result;
    if (v2 < 0x101u)
    {
      v8 = 32 * v2;
      if (v7)
      {
        if (*(v7 + 24))
        {
          sub_232CC0818(*result);
          v8 = 32 * v2;
        }

        result = sub_232CB4000(v7, v8);
      }

      else
      {
        result = operator new[](32 * v2);
      }

      v9 = result;
      if (v6)
      {
        result = memmove(result, v5, 32 * v6);
      }
    }

    else
    {
      if (!v7)
      {
        operator new();
      }

      if (*(v7 + 24))
      {
        sub_232CC0854(*result);
      }

      result = sub_232CB3D04(v7, 0x18uLL, sub_232CC0178);
      v9 = result;
      result[1] = 0;
      v10 = result + 1;
      result[2] = 0;
      *result = (result + 1);
      if (v6)
      {
        v11 = &v5[32 * v6];
        v12 = v5;
        do
        {
          v15 = *v12;
          v13 = *(v12 + 3);
          v16 = *(v12 + 8);
          v17 = v13;
          result = sub_232CC0180(v9, v10, &v15, &v15);
          v10 = result;
          v12 += 32;
        }

        while (v12 != v11);
      }
    }

    if (*v4)
    {
      v14 = 1;
    }

    else
    {
      v14 = v5 == 0;
    }

    if (!v14)
    {
      result = MEMORY[0x238392BE0](v5, 0x1062C802AB6010CLL);
    }

    *(v4 + 4) = v2;
    v4[2] = v9;
    if (v2 >= 0x101u)
    {
      *(v4 + 5) = 0;
    }
  }

  return result;
}

uint64_t sub_232CB99CC(char *a1, char *a2, void *a3, void *a4)
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

void sub_232CB9AD4(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a3 + 9) != 1)
  {
    if (*(a3 + 10))
    {
      return;
    }

    v11 = *(a3 + 8);
    if ((v11 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_232CB571C(v68, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v67, &v12->__r_.__value_.__l.__data_);
      sub_232CB5860(v68);
    }

    v13 = dword_232D01270[v11];
    if (v13 <= 5)
    {
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          sub_232CB6030(a1, a2, *(a3 + 8), *a3, a3[2]);
        }

        else if (v13 == 2)
        {
          sub_232CB6554(a1, a2, *(a3 + 8), *a3, a3[2]);
        }
      }

      else if (v13 == 3)
      {
        sub_232CB6A78(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else if (v13 == 4)
      {
        sub_232CB6F9C(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else
      {
        sub_232CB79F4(*a3, a1, a2, *(a3 + 8), a3[2]);
      }

      return;
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        sub_232CB74C0(*a3, a1, a2, *(a3 + 8), a3[2]);
      }

      else
      {
        sub_232CB7F28(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      return;
    }

    if (v13 == 8)
    {
      sub_232CB873C(a1, a2, *(a3 + 8), *a3, a3[2]);
      return;
    }

    if (v13 == 9)
    {
      v44 = *(a3 + 8);
      v45 = *a3;
      if (*(*a3 + 23) < 0)
      {
        sub_232C866C0(&v65, *v45, *(v45 + 1));
      }

      else
      {
        v46 = *v45;
        v66 = *(v45 + 2);
        v65 = v46;
      }

      v53 = sub_232CB8C60(a1, a2, v44, a3[2]);
      v54 = v53;
      if (*(v53 + 23) < 0)
      {
        operator delete(*v53);
      }

      v55 = v65;
      *(v54 + 16) = v66;
      *v54 = v55;
      return;
    }

    if (v13 != 10)
    {
      return;
    }

    v24 = a3[2];
    v25 = sub_232CBA810(a1, a2);
    v26 = v25;
    v25[2] = v24;
    if (v27)
    {
      *(v25 + 8) = *(a3 + 8);
      *(v25 + 11) = *(a3 + 11);
      *(v25 + 9) = 0;
      v28 = *(v25 + 10) & 0xF;
      if ((*(a3 + 10) & 0x10) != 0)
      {
        *(v25 + 10) = v28 | 0x10;
        v64 = (*(**a3 + 16))(*a3, *a1);
        *v26 = v64;
        (*(*v64 + 104))(v64, *a3);
        goto LABEL_151;
      }

      *(v25 + 10) = v28;
      v29 = (*(**a3 + 32))(*a3, *a1);
      *v26 = v29;
LABEL_118:
      (*(*v29 + 64))(v29, *a3);
LABEL_151:
      *(v26 + 10) &= 0xF0u;
      return;
    }

    if (*(v25 + 8) != *(a3 + 8))
    {
      sub_232CB5704(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1026);
      v47 = sub_232CB571C(v68, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_232CB5858(&v67, &v47->__r_.__value_.__l.__data_);
      sub_232CB5860(v68);
    }

    if (*(v26 + 11) != *(a3 + 11))
    {
      sub_232CB5704(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1027);
      v48 = sub_232CB571C(v68, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_232CB5858(&v67, &v48->__r_.__value_.__l.__data_);
      sub_232CB5860(v68);
    }

    if (*(v26 + 9) == 1)
    {
      sub_232CB5704(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1028);
      v49 = sub_232CB571C(v68, "CHECK failed: !extension->is_repeated: ");
      sub_232CB5858(&v67, &v49->__r_.__value_.__l.__data_);
      sub_232CB5860(v68);
    }

    v50 = *v26;
    v51 = *a3;
    if ((*(a3 + 10) & 0x10) != 0)
    {
      if ((*(v26 + 10) & 0x10) != 0)
      {
        (*(*v50 + 104))(*v26, v51);
        goto LABEL_151;
      }

      v51 = (*(*v51 + 24))(*a3, *v26);
      v52 = *v50;
    }

    else
    {
      v52 = *v50;
      if ((*(v26 + 10) & 0x10) != 0)
      {
        v29 = (*(v52 + 32))(*v26, v51);
        goto LABEL_118;
      }
    }

    (*(v52 + 64))(v50, v51);
    goto LABEL_151;
  }

  v6 = a3[2];
  v7 = sub_232CBA810(a1, a2);
  v8 = v7;
  v10 = v9;
  v7[2] = v6;
  if (v9)
  {
    *(v7 + 8) = *(a3 + 8);
    *(v7 + 11) = *(a3 + 11);
    *(v7 + 9) = 1;
  }

  else
  {
    if (*(v7 + 8) != *(a3 + 8))
    {
      sub_232CB5704(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 931);
      v14 = sub_232CB571C(v68, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_232CB5858(&v67, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v68);
    }

    if (*(v8 + 11) != *(a3 + 11))
    {
      sub_232CB5704(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 932);
      v15 = sub_232CB571C(v68, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_232CB5858(&v67, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v68);
    }

    if ((*(v8 + 9) & 1) == 0)
    {
      sub_232CB5704(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 933);
      v16 = sub_232CB571C(v68, "CHECK failed: extension->is_repeated: ");
      sub_232CB5858(&v67, &v16->__r_.__value_.__l.__data_);
      sub_232CB5860(v68);
    }
  }

  v17 = *(a3 + 8);
  if ((v17 - 19) <= 0xFFFFFFED)
  {
    sub_232CB5704(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v18 = sub_232CB571C(v68, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_232CB5858(&v67, &v18->__r_.__value_.__l.__data_);
    sub_232CB5860(v68);
  }

  v19 = dword_232D01270[v17];
  if (v19 <= 5)
  {
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        if (v10)
        {
          v37 = *a1;
          if (!v37)
          {
            operator new();
          }

          if (*(v37 + 24))
          {
            sub_232CC04A8(v37);
          }

          v38 = sub_232CB3D04(v37, 0x10uLL, sub_232CBF6D0);
          *v38 = 0;
          *(v38 + 8) = v37;
          *v8 = v38;
        }

        else
        {
          v38 = *v8;
        }

        sub_232CC5A2C(v38, *a3);
      }

      else if (v19 == 4)
      {
        if (v10)
        {
          v40 = *a1;
          if (!v40)
          {
            operator new();
          }

          if (*(v40 + 24))
          {
            sub_232CC04E8(v40);
          }

          v41 = sub_232CB3D04(v40, 0x10uLL, sub_232CBF6D4);
          *v41 = 0;
          *(v41 + 8) = v40;
          *v8 = v41;
        }

        else
        {
          v41 = *v8;
        }

        sub_232CC6684(v41, *a3);
      }

      else
      {
        if (v10)
        {
          v20 = *a1;
          if (!v20)
          {
            operator new();
          }

          if (*(v20 + 24))
          {
            sub_232CC0568(v20);
          }

          v21 = sub_232CB3D04(v20, 0x10uLL, sub_232CBF6DC);
          *v21 = 0;
          *(v21 + 8) = v20;
          *v8 = v21;
        }

        else
        {
          v21 = *v8;
        }

        sub_232CC72DC(v21, *a3);
      }

      return;
    }

    if (v19 != 1)
    {
      if (v19 == 2)
      {
        if (v10)
        {
          v30 = *a1;
          if (!v30)
          {
            operator new();
          }

          if (*(v30 + 24))
          {
            sub_232CC0468(v30);
          }

          v31 = sub_232CB3D04(v30, 0x10uLL, sub_232CBF6CC);
          *v31 = 0;
          *(v31 + 8) = v30;
          *v8 = v31;
        }

        else
        {
          v31 = *v8;
        }

        sub_232CC6058(v31, *a3);
      }

      return;
    }

    if (v10)
    {
      v34 = *a1;
      if (v34)
      {
        if (*(v34 + 24))
        {
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      goto LABEL_107;
    }

    goto LABEL_82;
  }

  if (v19 <= 7)
  {
    if (v19 == 6)
    {
      if (v10)
      {
        v35 = *a1;
        if (!v35)
        {
          operator new();
        }

        if (*(v35 + 24))
        {
          sub_232CC0528(v35);
        }

        v36 = sub_232CB3D04(v35, 0x10uLL, sub_232CBF6D8);
        *v36 = 0;
        *(v36 + 8) = v35;
        *v8 = v36;
      }

      else
      {
        v36 = *v8;
      }

      sub_232CC6CB0(v36, *a3);
    }

    else
    {
      if (v10)
      {
        v32 = *a1;
        if (!v32)
        {
          operator new();
        }

        if (*(v32 + 24))
        {
          sub_232CC05A8(v32);
        }

        v33 = sub_232CB3D04(v32, 0x10uLL, sub_232CBF6E0);
        *v33 = 0;
        *(v33 + 8) = v32;
        *v8 = v33;
      }

      else
      {
        v33 = *v8;
      }

      sub_232CC4DD8(v33, *a3);
    }
  }

  else
  {
    switch(v19)
    {
      case 8:
        if (v10)
        {
          v34 = *a1;
          if (v34)
          {
            if (*(v34 + 24))
            {
LABEL_80:
              sub_232CC0428(v34);
            }

LABEL_81:
            v39 = sub_232CB3D04(v34, 0x10uLL, sub_232CBF6C8);
            *v39 = 0;
            *(v39 + 8) = v34;
            *v8 = v39;
LABEL_108:
            sub_232CC5400(v39, *a3);
            return;
          }

LABEL_107:
          operator new();
        }

LABEL_82:
        v39 = *v8;
        goto LABEL_108;
      case 9:
        if (v10)
        {
          v42 = *a1;
          if (!v42)
          {
            operator new();
          }

          if (*(v42 + 24))
          {
            sub_232CC0798(v42);
          }

          v43 = sub_232CB3D04(v42, 0x18uLL, sub_232CBF6E4);
          *(v43 + 2) = 0;
          *v43 = v42;
          *(v43 + 1) = 0;
          *v8 = v43;
        }

        else
        {
          v43 = *v8;
        }

        sub_232CAFE94(v43, *a3);
        break;
      case 10:
        if (v10)
        {
          v22 = *a1;
          if (!*a1)
          {
            operator new();
          }

          if (*(v22 + 24))
          {
            sub_232CC07D8(*a1);
          }

          v23 = sub_232CB3D04(v22, 0x18uLL, sub_232CBF6E8);
          *(v23 + 2) = 0;
          *v23 = v22;
          *(v23 + 1) = 0;
          *v8 = v23;
        }

        v56 = *a3;
        if (*(v56 + 8) >= 1)
        {
          v57 = 0;
          do
          {
            v58 = sub_232CBF720(v56, v57);
            v59 = v58;
            v60 = *v8;
            v61 = *(*v8 + 2);
            if (!v61 || (v62 = v60[2], v62 >= *v61) || (v60[2] = v62 + 1, (v63 = *&v61[2 * v62 + 2]) == 0))
            {
              v63 = (*(*v58 + 32))(v58, *a1);
              sub_232CBF800(*v8, v63);
            }

            (*(*v63 + 64))(v63, v59);
            ++v57;
          }

          while (v57 < *(v56 + 8));
        }

        break;
    }
  }
}

uint64_t sub_232CBA744(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*result == *a2)
  {
    v4 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = *(result + 10);
    *(result + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    v6 = *(result + 16);
    *(result + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_232CE835C(&v7, a2);
    sub_232CB97A4(a2);
    sub_232CE835C(a2, v3);
    sub_232CB97A4(v3);
    sub_232CE835C(v3, &v7);
    return sub_232CB5D34(&v7);
  }

  return result;
}

void sub_232CBA7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5D34(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232CBA810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= 0x101)
  {
    *(&v14 + 1) = 0;
    v15 = 0;
    v16 = 0;
    LODWORD(v14) = a2;
    return sub_232CC00AC(v4, &v14, &v14) + 5;
  }

  else
  {
    v6 = *(a1 + 10);
    v7 = &v4[32 * v6];
    if (*(a1 + 10))
    {
      v8 = *(a1 + 10);
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
        *(a1 + 10) = v6 + 1;
        *v4 = a2;
        *(v4 + 1) = 0;
        result = (v4 + 8);
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        return result;
      }
    }

    else
    {
      if (*v4 == a2)
      {
        return (v4 + 8);
      }

      if (v6 < v3)
      {
        memmove(v4 + 32, v4, v7 - v4);
        LOWORD(v6) = *(a1 + 10);
        goto LABEL_15;
      }
    }

    sub_232CB980C(a1, v6 + 1);
    return sub_232CBA810(a1, a2);
  }
}

uint64_t sub_232CBA934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v8 = *v1;
    v7 = (v1 + 1);
    v6 = v8;
    if (v8 == v7)
    {
      return 1;
    }

    else
    {
      do
      {
        v4 = sub_232CBAA08(v6 + 40);
        if (!v4)
        {
          break;
        }

        v9 = *(v6 + 1);
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
            v10 = *(v6 + 2);
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v7);
    }
  }

  else
  {
    while (1)
    {
      v3 = *(a1 + 16) + 32 * *(a1 + 10);
      v4 = v1 == v3;
      if (v1 == v3)
      {
        break;
      }

      v5 = (v1 + 1);
      if (!sub_232CBAA08(v5))
      {
        break;
      }

      v1 = v5 + 24;
      if (*(a1 + 8) > 0x100u)
      {
        sub_232CC0884();
      }
    }
  }

  return v4;
}

uint64_t sub_232CBAA08(unsigned __int8 *a1)
{
  v2 = a1[8];
  if ((v2 - 19) <= 0xFFFFFFED)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v3 = sub_232CB571C(v10, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_232CB5858(&v9, &v3->__r_.__value_.__l.__data_);
    sub_232CB5860(v10);
  }

  if (dword_232D01270[v2] != 10)
  {
    return 1;
  }

  if (a1[9] == 1)
  {
    v4 = *a1;
    if (*(*a1 + 8) >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = sub_232CBF720(v4, v5);
        if (((*(*v6 + 48))(v6) & 1) == 0)
        {
          break;
        }

        ++v5;
        v4 = *a1;
        if (v5 >= *(*a1 + 8))
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (a1[10])
  {
    return 1;
  }

  v8 = **a1;
  if ((a1[10] & 0x10) != 0)
  {
    return ((*(v8 + 72))() & 1) != 0;
  }

  result = (*(v8 + 48))();
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_232CBAB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CBAB7C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = *a5;
    if ((v10 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v14, &v11->__r_.__value_.__l.__data_);
      sub_232CB5860(v15);
    }

    v12 = dword_232D012BC[v10];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v12 > 5)
      {
        sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 82);
        v13 = sub_232CB571C(v15, "can't reach here.");
        sub_232CB5858(&v14, &v13->__r_.__value_.__l.__data_);
        sub_232CB5860(v15);
      }

      else
      {
        result = 1;
        if (((1 << v12) & 0x1C) == 0)
        {
          *a6 = 1;
          return result;
        }
      }
    }

    return v12 == a2;
  }

  return result;
}

void sub_232CBACB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CBACD8(uint64_t *a1, unint64_t a2, char *a3, uint64_t a4, unint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_284815B40;
  v16[1] = a4;
  v11 = a2 >> 3;
  v15 = 0;
  if (sub_232CBAB7C(a1, a2 & 7, a2 >> 3, v16, v14, &v15))
  {
    return sub_232CBADB8(a1, v11, v15, v14, a5, a3, a6);
  }

  if (*a5)
  {
    v13 = (*a5 & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v13 = sub_232CA81A8(a5);
  }

  return sub_232CC2720(v9, v13, a3, a6);
}

_OWORD *sub_232CBADB8(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, char *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = a1;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v46 = sub_232CB844C(a1, a2, 1, *(a4 + 2), *(a4 + 24));

        result = sub_232CC25B8(v46, v8, a7);
        break;
      case 2:
        v47 = sub_232CB844C(a1, a2, 2, *(a4 + 2), *(a4 + 24));

        result = sub_232CC253C(v47, v8, a7);
        break;
      case 3:
        v36 = sub_232CB844C(a1, a2, 3, *(a4 + 2), *(a4 + 24));

        result = sub_232CC22FC(v36, v8, a7);
        break;
      case 4:
        v42 = sub_232CB844C(a1, a2, 4, *(a4 + 2), *(a4 + 24));

        result = sub_232CC230C(v42, v8, a7);
        break;
      case 5:
        v28 = sub_232CB844C(a1, a2, 5, *(a4 + 2), *(a4 + 24));

        result = sub_232CC22DC(v28, v8, a7);
        break;
      case 6:
        v55 = sub_232CB844C(a1, a2, 6, *(a4 + 2), *(a4 + 24));

        result = sub_232CC2444(v55, v8, a7);
        break;
      case 7:
        v63 = sub_232CB844C(a1, a2, 7, *(a4 + 2), *(a4 + 24));

        result = sub_232CC234C(v63, v8, a7);
        break;
      case 8:
        v44 = sub_232CB844C(a1, a2, 8, *(a4 + 2), *(a4 + 24));

        result = sub_232CC233C(v44, v8, a7);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        sub_232CB5704(&v94, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/extension_set_inl.h", 79);
        v13 = sub_232CB571C(&v94, "Non-primitive types can't be packed.");
        sub_232CB5858(&v93, &v13->__r_.__value_.__l.__data_);
        sub_232CB5860(&v94);
        goto LABEL_170;
      case 0xD:
        v29 = sub_232CB844C(a1, a2, 13, *(a4 + 2), *(a4 + 24));

        result = sub_232CC22EC(v29, v8, a7);
        break;
      case 0xE:
        v94.__r_.__value_.__r.__words[0] = sub_232CB844C(a1, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v94.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v95 = a5;
        v96 = v11;
        v8 = sub_232CBFA94(a7, v8, &v94, v52, v53);
        goto LABEL_170;
      case 0xF:
        v19 = sub_232CB844C(a1, a2, 15, *(a4 + 2), *(a4 + 24));

        result = sub_232CC23C8(v19, v8, a7);
        break;
      case 0x10:
        v38 = sub_232CB844C(a1, a2, 16, *(a4 + 2), *(a4 + 24));

        result = sub_232CC24C0(v38, v8, a7);
        break;
      case 0x11:
        v16 = sub_232CB844C(a1, a2, 17, *(a4 + 2), *(a4 + 24));

        result = sub_232CC231C(v16, v8, a7);
        break;
      case 0x12:
        v50 = sub_232CB844C(a1, a2, 18, *(a4 + 2), *(a4 + 24));

        result = sub_232CC232C(v50, v8, a7);
        break;
      default:
        goto LABEL_170;
    }
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v8 = a6 + 8;
        v48 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_232CB7C10(a1, v48, a2, 1, *(a4 + 2), *(a4 + 24));
        }

        else
        {
          sub_232CB79F4(v48, a1, a2, 1, *(a4 + 24));
        }

        goto LABEL_170;
      case 2:
        v8 = a6 + 4;
        v49 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_232CB76DC(a1, v49, a2, 2, *(a4 + 2), *(a4 + 24));
        }

        else
        {
          sub_232CB74C0(v49, a1, a2, 2, *(a4 + 24));
        }

        goto LABEL_170;
      case 3:
        v37 = *a6;
        if (v37 < 0)
        {
          v37 = (a6[1] << 7) + v37 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v37);
            if (!v8)
            {
              goto LABEL_170;
            }

            v37 = v89;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v41 = 3;
          goto LABEL_158;
        }

        v73 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v74 = 3;
        goto LABEL_160;
      case 4:
        v43 = *a6;
        if (v43 < 0)
        {
          v43 = (a6[1] << 7) + v43 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v43);
            if (!v8)
            {
              goto LABEL_170;
            }

            v43 = v90;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v56 = *(a4 + 2);
          v57 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v58 = 4;
          goto LABEL_148;
        }

        v75 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v76 = 4;
        goto LABEL_150;
      case 5:
        v31 = *a6;
        if (v31 < 0)
        {
          v31 = (a6[1] << 7) + v31 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v31);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v31) = v88;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v23 = 5;
          v85 = v31;
          goto LABEL_136;
        }

        v71 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v72 = 5;
        v86 = v31;
        goto LABEL_138;
      case 6:
        v8 = a6 + 8;
        v43 = *a6;
        if (*(a4 + 1) == 1)
        {
          v56 = *(a4 + 2);
          v57 = *(a4 + 24);
          v58 = 6;
LABEL_148:
          sub_232CB71B0(a1, a2, v58, v56, v43, v57);
        }

        else
        {
          v75 = *(a4 + 24);
          v76 = 6;
LABEL_150:
          sub_232CB6F9C(a1, a2, v76, v43, v75);
        }

        goto LABEL_170;
      case 7:
        v8 = a6 + 4;
        v64 = *a6;
        if (*(a4 + 1) == 1)
        {
          v65 = *(a4 + 2);
          v66 = *(a4 + 24);
          v67 = 7;
          v68 = v64;
          goto LABEL_129;
        }

        v81 = *(a4 + 24);
        v82 = 7;
        v83 = *a6;
        goto LABEL_131;
      case 8:
        v45 = *a6;
        if (v45 < 0)
        {
          v45 = (a6[1] << 7) + v45 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v45);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          sub_232CB813C(v12, v11, 8, *(a4 + 2), v45 != 0, *(a4 + 24));
        }

        else
        {
          sub_232CB7F28(v12, v11, 8, v45 != 0, *(a4 + 24));
        }

        goto LABEL_170;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v32 = sub_232CB8ED4(a1, a2, 9, v15);
        }

        else
        {
          v32 = sub_232CB8C60(a1, a2, 9, v15);
        }

        v33 = v32;
        v34 = *v8;
        if (*v8 < 0)
        {
          v69 = sub_232CE88A0(v8, *v8);
          if (!v69)
          {
LABEL_101:
            v8 = 0;
            goto LABEL_170;
          }

          v35 = v69;
          v34 = v70;
        }

        else
        {
          v35 = (v8 + 1);
        }

        return sub_232CBFA28(a7, v35, v34, v33);
      case 0xA:
        v59 = *(a4 + 1);
        v60 = *(a4 + 8);
        v61 = *(a4 + 24);
        if (v59 == 1)
        {
          v62 = sub_232CB94B4(a1, a2, 10, v60, v61);
        }

        else
        {
          v62 = sub_232CB9220(a1, a2, 10, v60, v61);
        }

        v77 = a7[11].i32[0];
        v78 = __OFSUB__(v77--, 1);
        a7[11].i32[0] = v77;
        if (v77 < 0 != v78)
        {
          goto LABEL_101;
        }

        ++a7[11].i32[1];
        v79 = (*(*v62 + 88))(v62, v8, a7);
        a7[11] = vadd_s32(a7[11], 0xFFFFFFFF00000001);
        v80 = a7[10].i32[0];
        a7[10].i32[0] = 0;
        if (v80 == ((8 * v11) | 3))
        {
          v8 = v79;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_170;
      case 0xB:
        v24 = *(a4 + 1);
        v25 = *(a4 + 8);
        v26 = *(a4 + 24);
        if (v24 == 1)
        {
          v27 = sub_232CB94B4(a1, a2, 11, v25, v26);
        }

        else
        {
          v27 = sub_232CB9220(a1, a2, 11, v25, v26);
        }

        return sub_232CC20BC(a7, v27, v8);
      case 0xD:
        v30 = *a6;
        if (v30 < 0)
        {
          v30 = (a6[1] << 7) + v30 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v30);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v30) = v87;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v65 = *(a4 + 2);
          v66 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v67 = 13;
          v68 = v30;
LABEL_129:
          sub_232CB6C8C(a1, a2, v67, v65, v68, v66);
        }

        else
        {
          v81 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v82 = 13;
          v83 = v30;
LABEL_131:
          sub_232CB6A78(a1, a2, v82, v83, v81);
        }

        goto LABEL_170;
      case 0xE:
        v54 = *a6;
        if ((v54 & 0x8000000000000000) != 0)
        {
          v84 = (a6[1] << 7) + v54;
          v54 = (v84 - 128);
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, (v84 - 128));
            if (!v8)
            {
              goto LABEL_170;
            }

            v54 = v91;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if ((*(a4 + 8))(*(a4 + 16), v54))
        {
          if (*(a4 + 1) == 1)
          {
            sub_232CB8950(v12, v11, 14, *(a4 + 2), v54, *(a4 + 24));
          }

          else
          {
            sub_232CB873C(v12, v11, 14, v54, *(a4 + 24));
          }
        }

        else
        {
          if (*a5)
          {
            v92 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v92 = sub_232CA81A8(a5);
          }

          sub_232CC20C0(v11, v54, v92);
        }

        goto LABEL_170;
      case 0xF:
        v8 = a6 + 4;
        v20 = *a6;
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          v23 = 15;
          goto LABEL_122;
        }

        v71 = *(a4 + 24);
        v72 = 15;
        goto LABEL_124;
      case 0x10:
        v8 = a6 + 8;
        v37 = *a6;
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          v41 = 16;
          goto LABEL_158;
        }

        v73 = *(a4 + 24);
        v74 = 16;
        goto LABEL_160;
      case 0x11:
        v18 = *a6;
        if (v18 < 0)
        {
          v18 = (a6[1] << 7) + v18 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v18);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        v20 = -(v18 & 1) ^ (v18 >> 1);
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v23 = 17;
LABEL_122:
          v85 = v20;
LABEL_136:
          sub_232CB6244(a1, a2, v23, v21, v85, v22);
        }

        else
        {
          v71 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v72 = 17;
LABEL_124:
          v86 = v20;
LABEL_138:
          sub_232CB6030(a1, a2, v72, v86, v71);
        }

        goto LABEL_170;
      case 0x12:
        v51 = *a6;
        if ((v51 & 0x8000000000000000) != 0)
        {
          v51 = (a6[1] << 7) + v51 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v51);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        v37 = -(v51 & 1) ^ (v51 >> 1);
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v41 = 18;
LABEL_158:
          sub_232CB6768(a1, a2, v41, v39, v37, v40);
        }

        else
        {
          v73 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v74 = 18;
LABEL_160:
          sub_232CB6554(a1, a2, v74, v37, v73);
        }

LABEL_170:
        result = v8;
        break;
      default:
        goto LABEL_170;
    }
  }

  return result;
}

void sub_232CBBA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CBBA8C(uint64_t a1, int a2, int a3, char *a4, unint64_t *a5)
{
  v7 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v18 = *(v7 + 1);
    v17 = v7 + 2;
    v16 = v18;
    if (v18)
    {
      v19 = v17;
      do
      {
        if (*(v16 + 32) >= a2)
        {
          v19 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 32) < a2));
      }

      while (v16);
      if (v19 != v17)
      {
        do
        {
          v20 = *(v19 + 8);
          if (v20 >= a3)
          {
            break;
          }

          a4 = sub_232CBBBB8(v19 + 40, v20, a4, a5);
          v21 = *(v19 + 1);
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
              v22 = *(v19 + 2);
              v23 = *v22 == v19;
              v19 = v22;
            }

            while (!v23);
          }

          v19 = v22;
        }

        while (v22 != v17);
      }
    }
  }

  else
  {
    v8 = *(a1 + 10);
    v9 = &v7[8 * v8];
    while (v8)
    {
      v10 = v8 >> 1;
      v11 = &v7[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = (v11 + 8);
      v8 += ~(v8 >> 1);
      if (v13 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    while (v7 != v9)
    {
      v14 = *v7;
      if (v14 >= a3)
      {
        break;
      }

      a4 = sub_232CBBBB8(v7 + 8, v14, a4, a5);
      v7 += 8;
    }
  }

  return a4;
}

char *sub_232CBBBB8(unsigned __int8 *a1, uint64_t a2, char *a3, unint64_t *a4)
{
  v5 = a3;
  if (a1[9] == 1)
  {
    if (a1[11] == 1)
    {
      if (*(a1 + 3))
      {
        if (*a4 <= a3)
        {
          v5 = sub_232CB4C78(a4, a3);
        }

        v8 = 8 * a2;
        if ((8 * a2) > 0x7F)
        {
          *v5 = v8 | 0x82;
          v33 = v8 >> 7;
          if (v8 >> 14)
          {
            v9 = v5 + 2;
            do
            {
              *(v9 - 1) = v33 | 0x80;
              v34 = v33 >> 7;
              ++v9;
              v35 = v33 >> 14;
              v33 >>= 7;
            }

            while (v35);
            *(v9 - 1) = v34;
          }

          else
          {
            v5[1] = v33;
            v9 = v5 + 2;
          }
        }

        else
        {
          *v5 = v8 | 2;
          v9 = v5 + 1;
        }

        v36 = *(a1 + 3);
        if (v36 > 0x7F)
        {
          *v9 = v36 | 0x80;
          v37 = v36 >> 7;
          if (v36 >> 14)
          {
            v5 = v9 + 2;
            do
            {
              *(v5 - 1) = v37 | 0x80;
              v38 = v37 >> 7;
              ++v5;
              v39 = v37 >> 14;
              v37 >>= 7;
            }

            while (v39);
            *(v5 - 1) = v38;
          }

          else
          {
            v9[1] = v37;
            v5 = v9 + 2;
          }
        }

        else
        {
          *v9 = v36;
          v5 = v9 + 1;
        }

        v40 = a1[8];
        if ((v40 - 19) <= 0xFFFFFFED)
        {
          sub_232CB5704(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
          v41 = sub_232CB571C(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
          sub_232CB5858(&v426, &v41->__r_.__value_.__l.__data_);
          sub_232CB5860(v427);
        }

        switch(v40)
        {
          case 1:
            v343 = *a1;
            if (**a1 >= 1)
            {
              v344 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v343 = *a1;
                }

                *v5 = *sub_232CC7124(v343, v344);
                v5 += 8;
                ++v344;
                v343 = *a1;
              }

              while (v344 < **a1);
            }

            break;
          case 2:
            v345 = *a1;
            if (**a1 >= 1)
            {
              v346 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v345 = *a1;
                }

                *v5 = *sub_232CC6AF8(v345, v346);
                v5 += 4;
                ++v346;
                v345 = *a1;
              }

              while (v346 < **a1);
            }

            break;
          case 3:
            v327 = *a1;
            if (**a1 >= 1)
            {
              v328 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v327 = *a1;
                }

                v329 = *sub_232CC5EA0(v327, v328);
                if (v329 > 0x7F)
                {
                  *v5 = v329 | 0x80;
                  v330 = v329 >> 7;
                  if (v329 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v330 | 0x80;
                      v331 = v330 >> 7;
                      ++v5;
                      v332 = v330 >> 14;
                      v330 >>= 7;
                    }

                    while (v332);
                    *(v5 - 1) = v331;
                  }

                  else
                  {
                    v5[1] = v330;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v329;
                }

                ++v328;
                v327 = *a1;
              }

              while (v328 < **a1);
            }

            break;
          case 4:
            v335 = *a1;
            if (**a1 >= 1)
            {
              v336 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v335 = *a1;
                }

                v337 = *sub_232CC64CC(v335, v336);
                if (v337 > 0x7F)
                {
                  *v5 = v337 | 0x80;
                  v338 = v337 >> 7;
                  if (v337 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v338 | 0x80;
                      v339 = v338 >> 7;
                      ++v5;
                      v340 = v338 >> 14;
                      v338 >>= 7;
                    }

                    while (v340);
                    *(v5 - 1) = v339;
                  }

                  else
                  {
                    v5[1] = v338;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v337;
                }

                ++v336;
                v335 = *a1;
              }

              while (v336 < **a1);
            }

            break;
          case 5:
            v315 = *a1;
            if (**a1 >= 1)
            {
              v316 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v315 = *a1;
                }

                v317 = *sub_232CC5248(v315, v316);
                if (v317 > 0x7F)
                {
                  *v5 = v317 | 0x80;
                  v318 = v317 >> 7;
                  if (v317 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v318 | 0x80;
                      v319 = v318 >> 7;
                      ++v5;
                      v320 = v318 >> 14;
                      v318 >>= 7;
                    }

                    while (v320);
                    *(v5 - 1) = v319;
                  }

                  else
                  {
                    v5[1] = v318;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v317;
                }

                ++v316;
                v315 = *a1;
              }

              while (v316 < **a1);
            }

            break;
          case 6:
            v360 = *a1;
            if (**a1 >= 1)
            {
              v361 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v360 = *a1;
                }

                *v5 = *sub_232CC64CC(v360, v361);
                v5 += 8;
                ++v361;
                v360 = *a1;
              }

              while (v361 < **a1);
            }

            break;
          case 7:
            v362 = *a1;
            if (**a1 >= 1)
            {
              v363 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v362 = *a1;
                }

                *v5 = *sub_232CC5874(v362, v363);
                v5 += 4;
                ++v363;
                v362 = *a1;
              }

              while (v363 < **a1);
            }

            break;
          case 8:
            v341 = *a1;
            if (**a1 >= 1)
            {
              v342 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v341 = *a1;
                }

                *v5++ = *sub_232CC4C20(v341, v342++);
                v341 = *a1;
              }

              while (v342 < **a1);
            }

            break;
          case 9:
          case 10:
          case 11:
          case 12:
            sub_232CB5704(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1966);
            v42 = sub_232CB571C(v427, "Non-primitive types can't be packed.");
            sub_232CB5858(&v426, &v42->__r_.__value_.__l.__data_);
            sub_232CB5860(v427);
            break;
          case 13:
            v321 = *a1;
            if (**a1 >= 1)
            {
              v322 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v321 = *a1;
                }

                v323 = *sub_232CC5874(v321, v322);
                if (v323 > 0x7F)
                {
                  *v5 = v323 | 0x80;
                  v324 = v323 >> 7;
                  if (v323 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v324 | 0x80;
                      v325 = v324 >> 7;
                      ++v5;
                      v326 = v324 >> 14;
                      v324 >>= 7;
                    }

                    while (v326);
                    *(v5 - 1) = v325;
                  }

                  else
                  {
                    v5[1] = v324;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v323;
                }

                ++v322;
                v321 = *a1;
              }

              while (v322 < **a1);
            }

            break;
          case 14:
            v354 = *a1;
            if (**a1 >= 1)
            {
              v355 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v354 = *a1;
                }

                v356 = *sub_232CC5248(v354, v355);
                if (v356 > 0x7F)
                {
                  *v5 = v356 | 0x80;
                  v357 = v356 >> 7;
                  if (v356 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v357 | 0x80;
                      v358 = v357 >> 7;
                      ++v5;
                      v359 = v357 >> 14;
                      v357 >>= 7;
                    }

                    while (v359);
                    *(v5 - 1) = v358;
                  }

                  else
                  {
                    v5[1] = v357;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v356;
                }

                ++v355;
                v354 = *a1;
              }

              while (v355 < **a1);
            }

            break;
          case 15:
            v313 = *a1;
            if (**a1 >= 1)
            {
              v314 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v313 = *a1;
                }

                *v5 = *sub_232CC5248(v313, v314);
                v5 += 4;
                ++v314;
                v313 = *a1;
              }

              while (v314 < **a1);
            }

            break;
          case 16:
            v333 = *a1;
            if (**a1 >= 1)
            {
              v334 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v333 = *a1;
                }

                *v5 = *sub_232CC5EA0(v333, v334);
                v5 += 8;
                ++v334;
                v333 = *a1;
              }

              while (v334 < **a1);
            }

            break;
          case 17:
            v306 = *a1;
            if (**a1 >= 1)
            {
              v307 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v306 = *a1;
                }

                v308 = sub_232CC5248(v306, v307);
                v309 = (2 * *v308) ^ (*v308 >> 31);
                if (v309 > 0x7F)
                {
                  *v5 = v309 | 0x80;
                  v310 = v309 >> 7;
                  if (v309 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v310 | 0x80;
                      v311 = v310 >> 7;
                      ++v5;
                      v312 = v310 >> 14;
                      v310 >>= 7;
                    }

                    while (v312);
                    *(v5 - 1) = v311;
                  }

                  else
                  {
                    v5[1] = v310;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v309;
                }

                ++v307;
                v306 = *a1;
              }

              while (v307 < **a1);
            }

            break;
          case 18:
            v347 = *a1;
            if (**a1 >= 1)
            {
              v348 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v347 = *a1;
                }

                v349 = sub_232CC5EA0(v347, v348);
                v350 = (2 * *v349) ^ (*v349 >> 63);
                if (v350 > 0x7F)
                {
                  *v5 = v350 | 0x80;
                  v351 = v350 >> 7;
                  if (v350 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v351 | 0x80;
                      v352 = v351 >> 7;
                      ++v5;
                      v353 = v351 >> 14;
                      v351 >>= 7;
                    }

                    while (v353);
                    *(v5 - 1) = v352;
                  }

                  else
                  {
                    v5[1] = v351;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v350;
                }

                ++v348;
                v347 = *a1;
              }

              while (v348 < **a1);
            }

            break;
          default:
            return v5;
        }
      }
    }

    else
    {
      v11 = a1[8];
      if ((v11 - 19) <= 0xFFFFFFED)
      {
        sub_232CB5704(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v12 = sub_232CB571C(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_232CB5858(&v426, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(v427);
      }

      switch(v11)
      {
        case 1:
          v13 = *a1;
          if (**a1 >= 1)
          {
            v14 = 0;
            v15 = 8 * a2;
            v16 = (8 * a2) | 0x81;
            v17 = (a2 >> 4) & 0x1FFFFFF;
            v18 = (8 * a2) | 1;
            v19 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v13 = *a1;
              }

              v20 = *sub_232CC7124(v13, v14);
              if (v15 > 0x7F)
              {
                *v5 = v16;
                if (v15 >= 0x4000)
                {
                  v21 = v5 + 2;
                  v22 = v17;
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
                  v5[1] = v19;
                  v21 = v5 + 2;
                }
              }

              else
              {
                *v5 = v18;
                v21 = v5 + 1;
              }

              *v21 = v20;
              v5 = (v21 + 1);
              ++v14;
              v13 = *a1;
            }

            while (v14 < **a1);
          }

          break;
        case 2:
          v205 = *a1;
          if (**a1 >= 1)
          {
            v206 = 0;
            v207 = 8 * a2;
            v208 = (a2 >> 4) & 0x1FFFFFF;
            v209 = (8 * a2) | 5;
            v210 = (8 * a2) >> 7;
            v211 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v205 = *a1;
              }

              v212 = *sub_232CC6AF8(v205, v206);
              if (v207 > 0x7F)
              {
                *v5 = v211;
                if (v207 >= 0x4000)
                {
                  v213 = v5 + 2;
                  v214 = v208;
                  do
                  {
                    *(v213 - 1) = v214 | 0x80;
                    v215 = v214 >> 7;
                    v213 = (v213 + 1);
                    v216 = v214 >> 14;
                    v214 >>= 7;
                  }

                  while (v216);
                  *(v213 - 1) = v215;
                }

                else
                {
                  v5[1] = v210;
                  v213 = v5 + 2;
                }
              }

              else
              {
                *v5 = v209;
                v213 = v5 + 1;
              }

              *v213 = v212;
              v5 = (v213 + 1);
              ++v206;
              v205 = *a1;
            }

            while (v206 < **a1);
          }

          break;
        case 3:
          v153 = *a1;
          if (**a1 >= 1)
          {
            v154 = 0;
            v155 = 8 * a2;
            v156 = (8 * a2) | 0x80;
            v157 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v153 = *a1;
              }

              v158 = *sub_232CC5EA0(v153, v154);
              if (v155 > 0x7F)
              {
                *v5 = v156;
                if (v155 >= 0x4000)
                {
                  v159 = v5 + 2;
                  v160 = v157;
                  do
                  {
                    *(v159 - 1) = v160 | 0x80;
                    v161 = v160 >> 7;
                    ++v159;
                    v162 = v160 >> 14;
                    v160 >>= 7;
                  }

                  while (v162);
                  *(v159 - 1) = v161;
                }

                else
                {
                  v5[1] = v155 >> 7;
                  v159 = v5 + 2;
                }
              }

              else
              {
                v159 = v5 + 1;
                *v5 = v155;
              }

              if (v158 > 0x7F)
              {
                *v159 = v158 | 0x80;
                v163 = v158 >> 7;
                if (v158 >> 14)
                {
                  v5 = v159 + 2;
                  do
                  {
                    *(v5 - 1) = v163 | 0x80;
                    v164 = v163 >> 7;
                    ++v5;
                    v165 = v163 >> 14;
                    v163 >>= 7;
                  }

                  while (v165);
                  *(v5 - 1) = v164;
                }

                else
                {
                  v159[1] = v163;
                  v5 = v159 + 2;
                }
              }

              else
              {
                *v159 = v158;
                v5 = v159 + 1;
              }

              ++v154;
              v153 = *a1;
            }

            while (v154 < **a1);
          }

          break;
        case 4:
          v180 = *a1;
          if (**a1 >= 1)
          {
            v181 = 0;
            v182 = 8 * a2;
            v183 = (8 * a2) | 0x80;
            v184 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v180 = *a1;
              }

              v185 = *sub_232CC64CC(v180, v181);
              if (v182 > 0x7F)
              {
                *v5 = v183;
                if (v182 >= 0x4000)
                {
                  v186 = v5 + 2;
                  v187 = v184;
                  do
                  {
                    *(v186 - 1) = v187 | 0x80;
                    v188 = v187 >> 7;
                    ++v186;
                    v189 = v187 >> 14;
                    v187 >>= 7;
                  }

                  while (v189);
                  *(v186 - 1) = v188;
                }

                else
                {
                  v5[1] = v182 >> 7;
                  v186 = v5 + 2;
                }
              }

              else
              {
                v186 = v5 + 1;
                *v5 = v182;
              }

              if (v185 > 0x7F)
              {
                *v186 = v185 | 0x80;
                v190 = v185 >> 7;
                if (v185 >> 14)
                {
                  v5 = v186 + 2;
                  do
                  {
                    *(v5 - 1) = v190 | 0x80;
                    v191 = v190 >> 7;
                    ++v5;
                    v192 = v190 >> 14;
                    v190 >>= 7;
                  }

                  while (v192);
                  *(v5 - 1) = v191;
                }

                else
                {
                  v186[1] = v190;
                  v5 = v186 + 2;
                }
              }

              else
              {
                *v186 = v185;
                v5 = v186 + 1;
              }

              ++v181;
              v180 = *a1;
            }

            while (v181 < **a1);
          }

          break;
        case 5:
          v103 = *a1;
          if (**a1 >= 1)
          {
            v104 = 0;
            v105 = 8 * a2;
            v106 = (8 * a2) | 0x80;
            v107 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v103 = *a1;
              }

              v108 = *sub_232CC5248(v103, v104);
              if (v105 > 0x7F)
              {
                *v5 = v106;
                if (v105 >= 0x4000)
                {
                  v109 = v5 + 2;
                  v110 = v107;
                  do
                  {
                    *(v109 - 1) = v110 | 0x80;
                    v111 = v110 >> 7;
                    ++v109;
                    v112 = v110 >> 14;
                    v110 >>= 7;
                  }

                  while (v112);
                  *(v109 - 1) = v111;
                }

                else
                {
                  v5[1] = v105 >> 7;
                  v109 = v5 + 2;
                }
              }

              else
              {
                v109 = v5 + 1;
                *v5 = v105;
              }

              if (v108 > 0x7F)
              {
                *v109 = v108 | 0x80;
                v113 = v108 >> 7;
                if (v108 >> 14)
                {
                  v5 = v109 + 2;
                  do
                  {
                    *(v5 - 1) = v113 | 0x80;
                    v114 = v113 >> 7;
                    ++v5;
                    v115 = v113 >> 14;
                    v113 >>= 7;
                  }

                  while (v115);
                  *(v5 - 1) = v114;
                }

                else
                {
                  v109[1] = v113;
                  v5 = v109 + 2;
                }
              }

              else
              {
                *v109 = v108;
                v5 = v109 + 1;
              }

              ++v104;
              v103 = *a1;
            }

            while (v104 < **a1);
          }

          break;
        case 6:
          v234 = *a1;
          if (**a1 >= 1)
          {
            v235 = 0;
            v236 = 8 * a2;
            v237 = (8 * a2) | 0x81;
            v238 = (a2 >> 4) & 0x1FFFFFF;
            v239 = (8 * a2) | 1;
            v240 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v234 = *a1;
              }

              v241 = *sub_232CC64CC(v234, v235);
              if (v236 > 0x7F)
              {
                *v5 = v237;
                if (v236 >= 0x4000)
                {
                  v242 = v5 + 2;
                  v243 = v238;
                  do
                  {
                    *(v242 - 1) = v243 | 0x80;
                    v244 = v243 >> 7;
                    v242 = (v242 + 1);
                    v245 = v243 >> 14;
                    v243 >>= 7;
                  }

                  while (v245);
                  *(v242 - 1) = v244;
                }

                else
                {
                  v5[1] = v240;
                  v242 = v5 + 2;
                }
              }

              else
              {
                *v5 = v239;
                v242 = v5 + 1;
              }

              *v242 = v241;
              v5 = (v242 + 1);
              ++v235;
              v234 = *a1;
            }

            while (v235 < **a1);
          }

          break;
        case 7:
          v260 = *a1;
          if (**a1 >= 1)
          {
            v261 = 0;
            v262 = 8 * a2;
            v263 = (a2 >> 4) & 0x1FFFFFF;
            v264 = (8 * a2) | 5;
            v265 = (8 * a2) >> 7;
            v266 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v260 = *a1;
              }

              v267 = *sub_232CC5874(v260, v261);
              if (v262 > 0x7F)
              {
                *v5 = v266;
                if (v262 >= 0x4000)
                {
                  v268 = v5 + 2;
                  v269 = v263;
                  do
                  {
                    *(v268 - 1) = v269 | 0x80;
                    v270 = v269 >> 7;
                    v268 = (v268 + 1);
                    v271 = v269 >> 14;
                    v269 >>= 7;
                  }

                  while (v271);
                  *(v268 - 1) = v270;
                }

                else
                {
                  v5[1] = v265;
                  v268 = v5 + 2;
                }
              }

              else
              {
                *v5 = v264;
                v268 = v5 + 1;
              }

              *v268 = v267;
              v5 = (v268 + 1);
              ++v261;
              v260 = *a1;
            }

            while (v261 < **a1);
          }

          break;
        case 8:
          v194 = *a1;
          if (**a1 >= 1)
          {
            v195 = 0;
            v196 = 8 * a2;
            v197 = (8 * a2) | 0x80;
            v198 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v194 = *a1;
              }

              v199 = *sub_232CC4C20(v194, v195);
              if (v196 > 0x7F)
              {
                *v5 = v197;
                if (v196 >= 0x4000)
                {
                  v200 = v5 + 2;
                  v201 = v198;
                  do
                  {
                    *(v200 - 1) = v201 | 0x80;
                    v202 = v201 >> 7;
                    ++v200;
                    v203 = v201 >> 14;
                    v201 >>= 7;
                  }

                  while (v203);
                  *(v200 - 1) = v202;
                }

                else
                {
                  v5[1] = v196 >> 7;
                  v200 = v5 + 2;
                }
              }

              else
              {
                *v5 = v196;
                v200 = v5 + 1;
              }

              *v200 = v199;
              v5 = v200 + 1;
              ++v195;
              v194 = *a1;
            }

            while (v195 < **a1);
          }

          break;
        case 9:
          v292 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v293 = 0;
            v294 = 8 * a2;
            v295 = -3;
            if ((8 * a2) < 0x80)
            {
              v295 = -2;
            }

            v296 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v296 = -5;
            }

            if (v294 < 0x200000)
            {
              v296 = -4;
            }

            if (v294 >= 0x4000)
            {
              v297 = v296;
            }

            else
            {
              v297 = v295;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v292 = *a1;
              }

              v298 = sub_232CAFC54(v292, v293);
              v299 = *(v298 + 23);
              if (v299 < 0 && (v299 = *(v298 + 8), v299 > 127) || (*a4 + v297 - v5 + 16) < v299)
              {
                v5 = sub_232CB51F0(a4, a2, v298, v5);
              }

              else
              {
                if (v294 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v294 >= 0x4000)
                  {
                    v300 = v5 + 2;
                    v301 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v300 - 1) = v301 | 0x80;
                      v302 = v301 >> 7;
                      ++v300;
                      v303 = v301 >> 14;
                      v301 >>= 7;
                    }

                    while (v303);
                    *(v300 - 1) = v302;
                  }

                  else
                  {
                    v5[1] = v294 >> 7;
                    v300 = v5 + 2;
                  }
                }

                else
                {
                  v300 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v300 = v299;
                v304 = v300 + 1;
                if (*(v298 + 23) >= 0)
                {
                  v305 = v298;
                }

                else
                {
                  v305 = *v298;
                }

                memcpy(v304, v305, v299);
                v5 = &v304[v299];
              }

              ++v293;
              v292 = *a1;
            }

            while (v293 < *(*a1 + 8));
          }

          break;
        case 10:
          v133 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v134 = 0;
            v135 = 8 * a2;
            v425 = (8 * a2) | 0x83;
            v136 = (a2 >> 4) & 0x1FFFFFF;
            v137 = (8 * a2) | 3;
            v138 = (8 * a2) | 4;
            v139 = (8 * a2) >> 7;
            v140 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v133 = *a1;
              }

              v141 = sub_232CBF720(v133, v134);
              if (v135 > 0x7F)
              {
                *v5 = v425;
                if (v135 >= 0x4000)
                {
                  v142 = v5 + 2;
                  v143 = v136;
                  do
                  {
                    *(v142 - 1) = v143 | 0x80;
                    v144 = v143 >> 7;
                    ++v142;
                    v145 = v143 >> 14;
                    v143 >>= 7;
                  }

                  while (v145);
                  *(v142 - 1) = v144;
                }

                else
                {
                  v5[1] = v139;
                  v142 = v5 + 2;
                }
              }

              else
              {
                v142 = v5 + 1;
                *v5 = v137;
              }

              v146 = (*(*v141 + 96))(v141, v142, a4);
              if (*a4 <= v146)
              {
                v146 = sub_232CB4C78(a4, v146);
              }

              if (v135 > 0x7F)
              {
                *v146 = v140;
                if (v135 >= 0x4000)
                {
                  v5 = v146 + 2;
                  v147 = v136;
                  do
                  {
                    *(v5 - 1) = v147 | 0x80;
                    v148 = v147 >> 7;
                    ++v5;
                    v149 = v147 >> 14;
                    v147 >>= 7;
                  }

                  while (v149);
                  *(v5 - 1) = v148;
                }

                else
                {
                  v146[1] = v139;
                  v5 = v146 + 2;
                }
              }

              else
              {
                v5 = v146 + 1;
                *v146 = v138;
              }

              ++v134;
              v133 = *a1;
            }

            while (v134 < *(*a1 + 8));
          }

          break;
        case 11:
          v272 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v273 = 0;
            v274 = 8 * a2;
            v275 = (a2 >> 4) & 0x1FFFFFF;
            v276 = (8 * a2) | 2;
            v277 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v272 = *a1;
              }

              v278 = sub_232CBF720(v272, v273);
              v279 = v278;
              if (v274 > 0x7F)
              {
                *v5 = v277;
                if (v274 >= 0x4000)
                {
                  v280 = v5 + 2;
                  v281 = v275;
                  do
                  {
                    *(v280 - 1) = v281 | 0x80;
                    v282 = v281 >> 7;
                    ++v280;
                    v283 = v281 >> 14;
                    v281 >>= 7;
                  }

                  while (v283);
                  *(v280 - 1) = v282;
                }

                else
                {
                  v5[1] = v274 >> 7;
                  v280 = v5 + 2;
                }
              }

              else
              {
                v280 = v5 + 1;
                *v5 = v276;
              }

              v284 = (*(*v278 + 80))(v278);
              if (v284 > 0x7F)
              {
                *v280 = v284 | 0x80;
                v286 = v284 >> 7;
                if (v284 >> 14)
                {
                  v285 = v280 + 2;
                  do
                  {
                    *(v285 - 1) = v286 | 0x80;
                    v287 = v286 >> 7;
                    ++v285;
                    v288 = v286 >> 14;
                    v286 >>= 7;
                  }

                  while (v288);
                  *(v285 - 1) = v287;
                }

                else
                {
                  v280[1] = v286;
                  v285 = v280 + 2;
                }
              }

              else
              {
                *v280 = v284;
                v285 = v280 + 1;
              }

              v5 = (*(*v279 + 96))(v279, v285, a4);
              ++v273;
              v272 = *a1;
            }

            while (v273 < *(*a1 + 8));
          }

          break;
        case 12:
          v78 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v79 = 0;
            v80 = 8 * a2;
            v81 = -3;
            if ((8 * a2) < 0x80)
            {
              v81 = -2;
            }

            v82 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v82 = -5;
            }

            if (v80 < 0x200000)
            {
              v82 = -4;
            }

            if (v80 >= 0x4000)
            {
              v83 = v82;
            }

            else
            {
              v83 = v81;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v78 = *a1;
              }

              v84 = sub_232CAFC54(v78, v79);
              v85 = *(v84 + 23);
              if (v85 < 0 && (v85 = *(v84 + 8), v85 > 127) || (*a4 + v83 - v5 + 16) < v85)
              {
                v5 = sub_232CB51F0(a4, a2, v84, v5);
              }

              else
              {
                if (v80 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v80 >= 0x4000)
                  {
                    v86 = v5 + 2;
                    v87 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v86 - 1) = v87 | 0x80;
                      v88 = v87 >> 7;
                      ++v86;
                      v89 = v87 >> 14;
                      v87 >>= 7;
                    }

                    while (v89);
                    *(v86 - 1) = v88;
                  }

                  else
                  {
                    v5[1] = v80 >> 7;
                    v86 = v5 + 2;
                  }
                }

                else
                {
                  v86 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v86 = v85;
                v90 = v86 + 1;
                if (*(v84 + 23) >= 0)
                {
                  v91 = v84;
                }

                else
                {
                  v91 = *v84;
                }

                memcpy(v90, v91, v85);
                v5 = &v90[v85];
              }

              ++v79;
              v78 = *a1;
            }

            while (v79 < *(*a1 + 8));
          }

          break;
        case 13:
          v118 = *a1;
          if (**a1 >= 1)
          {
            v119 = 0;
            v120 = 8 * a2;
            v121 = (8 * a2) | 0x80;
            v122 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v118 = *a1;
              }

              v123 = *sub_232CC5874(v118, v119);
              if (v120 > 0x7F)
              {
                *v5 = v121;
                if (v120 >= 0x4000)
                {
                  v124 = v5 + 2;
                  v125 = v122;
                  do
                  {
                    *(v124 - 1) = v125 | 0x80;
                    v126 = v125 >> 7;
                    ++v124;
                    v127 = v125 >> 14;
                    v125 >>= 7;
                  }

                  while (v127);
                  *(v124 - 1) = v126;
                }

                else
                {
                  v5[1] = v120 >> 7;
                  v124 = v5 + 2;
                }
              }

              else
              {
                v124 = v5 + 1;
                *v5 = v120;
              }

              if (v123 > 0x7F)
              {
                *v124 = v123 | 0x80;
                v128 = v123 >> 7;
                if (v123 >> 14)
                {
                  v5 = v124 + 2;
                  do
                  {
                    *(v5 - 1) = v128 | 0x80;
                    v129 = v128 >> 7;
                    ++v5;
                    v130 = v128 >> 14;
                    v128 >>= 7;
                  }

                  while (v130);
                  *(v5 - 1) = v129;
                }

                else
                {
                  v124[1] = v128;
                  v5 = v124 + 2;
                }
              }

              else
              {
                *v124 = v123;
                v5 = v124 + 1;
              }

              ++v119;
              v118 = *a1;
            }

            while (v119 < **a1);
          }

          break;
        case 14:
          v246 = *a1;
          if (**a1 >= 1)
          {
            v247 = 0;
            v248 = 8 * a2;
            v249 = (8 * a2) | 0x80;
            v250 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v246 = *a1;
              }

              v251 = *sub_232CC5248(v246, v247);
              if (v248 > 0x7F)
              {
                *v5 = v249;
                if (v248 >= 0x4000)
                {
                  v252 = v5 + 2;
                  v253 = v250;
                  do
                  {
                    *(v252 - 1) = v253 | 0x80;
                    v254 = v253 >> 7;
                    ++v252;
                    v255 = v253 >> 14;
                    v253 >>= 7;
                  }

                  while (v255);
                  *(v252 - 1) = v254;
                }

                else
                {
                  v5[1] = v248 >> 7;
                  v252 = v5 + 2;
                }
              }

              else
              {
                v252 = v5 + 1;
                *v5 = v248;
              }

              if (v251 > 0x7F)
              {
                *v252 = v251 | 0x80;
                v256 = v251 >> 7;
                if (v251 >> 14)
                {
                  v5 = v252 + 2;
                  do
                  {
                    *(v5 - 1) = v256 | 0x80;
                    v257 = v256 >> 7;
                    ++v5;
                    v258 = v256 >> 14;
                    v256 >>= 7;
                  }

                  while (v258);
                  *(v5 - 1) = v257;
                }

                else
                {
                  v252[1] = v256;
                  v5 = v252 + 2;
                }
              }

              else
              {
                *v252 = v251;
                v5 = v252 + 1;
              }

              ++v247;
              v246 = *a1;
            }

            while (v247 < **a1);
          }

          break;
        case 15:
          v60 = *a1;
          if (**a1 >= 1)
          {
            v61 = 0;
            v62 = 8 * a2;
            v63 = (a2 >> 4) & 0x1FFFFFF;
            v64 = (8 * a2) | 5;
            v65 = (8 * a2) >> 7;
            v66 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v60 = *a1;
              }

              v67 = *sub_232CC5248(v60, v61);
              if (v62 > 0x7F)
              {
                *v5 = v66;
                if (v62 >= 0x4000)
                {
                  v68 = v5 + 2;
                  v69 = v63;
                  do
                  {
                    *(v68 - 1) = v69 | 0x80;
                    v70 = v69 >> 7;
                    v68 = (v68 + 1);
                    v71 = v69 >> 14;
                    v69 >>= 7;
                  }

                  while (v71);
                  *(v68 - 1) = v70;
                }

                else
                {
                  v5[1] = v65;
                  v68 = v5 + 2;
                }
              }

              else
              {
                *v5 = v64;
                v68 = v5 + 1;
              }

              *v68 = v67;
              v5 = (v68 + 1);
              ++v61;
              v60 = *a1;
            }

            while (v61 < **a1);
          }

          break;
        case 16:
          v167 = *a1;
          if (**a1 >= 1)
          {
            v168 = 0;
            v169 = 8 * a2;
            v170 = (8 * a2) | 0x81;
            v171 = (a2 >> 4) & 0x1FFFFFF;
            v172 = (8 * a2) | 1;
            v173 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v167 = *a1;
              }

              v174 = *sub_232CC5EA0(v167, v168);
              if (v169 > 0x7F)
              {
                *v5 = v170;
                if (v169 >= 0x4000)
                {
                  v175 = v5 + 2;
                  v176 = v171;
                  do
                  {
                    *(v175 - 1) = v176 | 0x80;
                    v177 = v176 >> 7;
                    v175 = (v175 + 1);
                    v178 = v176 >> 14;
                    v176 >>= 7;
                  }

                  while (v178);
                  *(v175 - 1) = v177;
                }

                else
                {
                  v5[1] = v173;
                  v175 = v5 + 2;
                }
              }

              else
              {
                *v5 = v172;
                v175 = v5 + 1;
              }

              *v175 = v174;
              v5 = (v175 + 1);
              ++v168;
              v167 = *a1;
            }

            while (v168 < **a1);
          }

          break;
        case 17:
          v43 = *a1;
          if (**a1 >= 1)
          {
            v44 = 0;
            v45 = 8 * a2;
            v46 = (8 * a2) | 0x80;
            v47 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v43 = *a1;
              }

              v48 = *sub_232CC5248(v43, v44);
              if (v45 > 0x7F)
              {
                *v5 = v46;
                if (v45 >= 0x4000)
                {
                  v49 = v5 + 2;
                  v50 = v47;
                  do
                  {
                    *(v49 - 1) = v50 | 0x80;
                    v51 = v50 >> 7;
                    ++v49;
                    v52 = v50 >> 14;
                    v50 >>= 7;
                  }

                  while (v52);
                  *(v49 - 1) = v51;
                }

                else
                {
                  v5[1] = v45 >> 7;
                  v49 = v5 + 2;
                }
              }

              else
              {
                v49 = v5 + 1;
                *v5 = v45;
              }

              v53 = (2 * v48) ^ (v48 >> 31);
              if (v53 > 0x7F)
              {
                *v49 = v53 | 0x80;
                v54 = v53 >> 7;
                if (v53 >> 14)
                {
                  v5 = v49 + 2;
                  do
                  {
                    *(v5 - 1) = v54 | 0x80;
                    v55 = v54 >> 7;
                    ++v5;
                    v56 = v54 >> 14;
                    v54 >>= 7;
                  }

                  while (v56);
                  *(v5 - 1) = v55;
                }

                else
                {
                  v49[1] = v54;
                  v5 = v49 + 2;
                }
              }

              else
              {
                *v49 = v53;
                v5 = v49 + 1;
              }

              ++v44;
              v43 = *a1;
            }

            while (v44 < **a1);
          }

          break;
        case 18:
          v218 = *a1;
          if (**a1 >= 1)
          {
            v219 = 0;
            v220 = 8 * a2;
            v221 = (8 * a2) | 0x80;
            v222 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v218 = *a1;
              }

              v223 = *sub_232CC5EA0(v218, v219);
              if (v220 > 0x7F)
              {
                *v5 = v221;
                if (v220 >= 0x4000)
                {
                  v224 = v5 + 2;
                  v225 = v222;
                  do
                  {
                    *(v224 - 1) = v225 | 0x80;
                    v226 = v225 >> 7;
                    ++v224;
                    v227 = v225 >> 14;
                    v225 >>= 7;
                  }

                  while (v227);
                  *(v224 - 1) = v226;
                }

                else
                {
                  v5[1] = v220 >> 7;
                  v224 = v5 + 2;
                }
              }

              else
              {
                v224 = v5 + 1;
                *v5 = v220;
              }

              v228 = (2 * v223) ^ (v223 >> 63);
              if (v228 > 0x7F)
              {
                *v224 = v228 | 0x80;
                v229 = v228 >> 7;
                if (v228 >> 14)
                {
                  v5 = v224 + 2;
                  do
                  {
                    *(v5 - 1) = v229 | 0x80;
                    v230 = v229 >> 7;
                    ++v5;
                    v231 = v229 >> 14;
                    v229 >>= 7;
                  }

                  while (v231);
                  *(v5 - 1) = v230;
                }

                else
                {
                  v224[1] = v229;
                  v5 = v224 + 2;
                }
              }

              else
              {
                *v224 = v228;
                v5 = v224 + 1;
              }

              ++v219;
              v218 = *a1;
            }

            while (v219 < **a1);
          }

          break;
        default:
          return v5;
      }
    }

    return v5;
  }

  if (a1[10])
  {
    return v5;
  }

  v25 = a1[8];
  if ((v25 - 19) <= 0xFFFFFFED)
  {
    sub_232CB5704(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v26 = sub_232CB571C(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_232CB5858(&v426, &v26->__r_.__value_.__l.__data_);
    sub_232CB5860(v427);
  }

  switch(v25)
  {
    case 1:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = v5 + 2;
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v32 = v29 >> 14;
        v29 >>= 7;
      }

      while (v32);
      goto LABEL_698;
    case 2:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = v5 + 2;
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v217 = v74 >> 14;
        v74 >>= 7;
      }

      while (v217);
      goto LABEL_713;
    case 3:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v116 = *a1;
      v166 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v166 | 0x80;
        v368 = v166 >> 7;
        if (v166 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v368 | 0x80;
            v396 = v368 >> 7;
            ++v59;
            v397 = v368 >> 14;
            v368 >>= 7;
          }

          while (v397);
          *(v59 - 1) = v396;
        }

        else
        {
          v5[1] = v368;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v166;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v398 = v385 >> 14;
        v385 >>= 7;
      }

      while (v398);
      goto LABEL_710;
    case 4:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v116 = *a1;
      v193 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v193 | 0x80;
        v369 = v193 >> 7;
        if (v193 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v369 | 0x80;
            v399 = v369 >> 7;
            ++v59;
            v400 = v369 >> 14;
            v369 >>= 7;
          }

          while (v400);
          *(v59 - 1) = v399;
        }

        else
        {
          v5[1] = v369;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v193;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v401 = v385 >> 14;
        v385 >>= 7;
      }

      while (v401);
      goto LABEL_710;
    case 5:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v116 = *a1;
      v117 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v117 | 0x80;
        v365 = v117 >> 7;
        if (v117 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v365 | 0x80;
            v383 = v365 >> 7;
            ++v59;
            v384 = v365 >> 14;
            v365 >>= 7;
          }

          while (v384);
          *(v59 - 1) = v383;
        }

        else
        {
          v5[1] = v365;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v117;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v387 = v385 >> 14;
        v385 >>= 7;
      }

      while (v387);
      goto LABEL_710;
    case 6:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = v5 + 2;
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v410 = v29 >> 14;
        v29 >>= 7;
      }

      while (v410);
      goto LABEL_698;
    case 7:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = v5 + 2;
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v414 = v74 >> 14;
        v74 >>= 7;
      }

      while (v414);
      goto LABEL_713;
    case 8:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      LOBYTE(v131) = *a1;
      v204 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v204 | 0x80;
        v370 = v204 >> 7;
        if (v204 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v370 | 0x80;
            v402 = v370 >> 7;
            ++v59;
            v403 = v370 >> 14;
            v370 >>= 7;
          }

          while (v403);
          *(v59 - 1) = v402;
        }

        else
        {
          v5[1] = v370;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v204;
        v59 = v5 + 1;
      }

      goto LABEL_685;
    case 9:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = v92[1];
        if (v93 > 127)
        {
          return sub_232CB51F0(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
        goto LABEL_461;
      }

      v374 = 2;
      v375 = 3;
      v376 = 4;
      if (v95 >> 28)
      {
        v376 = 5;
      }

      if (v95 >= 0x200000)
      {
        v375 = v376;
      }

      if (v95 >= 0x4000)
      {
        v374 = v375;
      }

      if ((v94 + ~&v5[v374] + 16) < v93)
      {
        return sub_232CB51F0(a4, a2, v92, v5);
      }

      *v5 = v95 | 0x82;
      v99 = v95 >> 7;
      if (!(v95 >> 14))
      {
        goto LABEL_627;
      }

      v100 = v5 + 2;
      do
      {
        *(v100 - 1) = v99 | 0x80;
        v101 = v99 >> 7;
        ++v100;
        v416 = v99 >> 14;
        v99 >>= 7;
      }

      while (v416);
      goto LABEL_719;
    case 10:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v150 = *a1;
      v151 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v151 | 0x83;
        v367 = v151 >> 7;
        if (v151 >> 14)
        {
          v152 = v5 + 2;
          do
          {
            *(v152 - 1) = v367 | 0x80;
            v393 = v367 >> 7;
            ++v152;
            v394 = v367 >> 14;
            v367 >>= 7;
          }

          while (v394);
          *(v152 - 1) = v393;
        }

        else
        {
          v5[1] = v367;
          v152 = v5 + 2;
        }
      }

      else
      {
        *v5 = v151 | 3;
        v152 = v5 + 1;
      }

      v59 = (*(*v150 + 96))(v150, v152, a4);
      if (*a4 <= v59)
      {
        v59 = sub_232CB4C78(a4, v59);
      }

      if (v151 <= 0x7F)
      {
        LOBYTE(v131) = v151 | 4;
LABEL_685:
        *v59 = v131;
        return v59 + 1;
      }

      *v59 = v151 | 0x84;
      v380 = v151 >> 7;
      if (!(v151 >> 14))
      {
        goto LABEL_662;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v395 = v380 >> 14;
        v380 >>= 7;
      }

      while (v395);
      goto LABEL_665;
    case 11:
      if ((a1[10] & 0x10) != 0)
      {
        return (*(**a1 + 136))(*a1, a2, v5, a4);
      }

      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v289 = *a1;
      v290 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v290 | 0x82;
        v415 = v290 >> 7;
        if (v290 >> 14)
        {
          v291 = v5 + 2;
          do
          {
            *(v291 - 1) = v415 | 0x80;
            v418 = v415 >> 7;
            ++v291;
            v419 = v415 >> 14;
            v415 >>= 7;
          }

          while (v419);
          *(v291 - 1) = v418;
        }

        else
        {
          v5[1] = v415;
          v291 = v5 + 2;
        }
      }

      else
      {
        *v5 = v290 | 2;
        v291 = v5 + 1;
      }

      v420 = (*(*v289 + 80))(v289);
      if (v420 > 0x7F)
      {
        *v291 = v420 | 0x80;
        v422 = v420 >> 7;
        if (v420 >> 14)
        {
          v421 = v291 + 2;
          do
          {
            *(v421 - 1) = v422 | 0x80;
            v423 = v422 >> 7;
            ++v421;
            v424 = v422 >> 14;
            v422 >>= 7;
          }

          while (v424);
          *(v421 - 1) = v423;
        }

        else
        {
          v291[1] = v422;
          v421 = v291 + 2;
        }
      }

      else
      {
        *v291 = v420;
        v421 = v291 + 1;
      }

      return (*(*v289 + 96))(v289, v421, a4);
    case 12:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = v92[1];
        if (v93 > 127)
        {
          return sub_232CB51F0(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
LABEL_461:
        if ((v94 - v5 + 14) >= v93)
        {
          *v5 = v95 | 2;
          v100 = v5 + 1;
LABEL_720:
          *v100 = v93;
          v417 = v100 + 1;
          if (*(v92 + 23) < 0)
          {
            v92 = *v92;
          }

          memcpy(v417, v92, v93);
          return &v417[v93];
        }
      }

      else
      {
        v96 = 2;
        v97 = 3;
        v98 = 4;
        if (v95 >> 28)
        {
          v98 = 5;
        }

        if (v95 >= 0x200000)
        {
          v97 = v98;
        }

        if (v95 >= 0x4000)
        {
          v96 = v97;
        }

        if ((v94 + ~&v5[v96] + 16) >= v93)
        {
          *v5 = v95 | 0x82;
          v99 = v95 >> 7;
          if (v95 >> 14)
          {
            v100 = v5 + 2;
            do
            {
              *(v100 - 1) = v99 | 0x80;
              v101 = v99 >> 7;
              ++v100;
              v102 = v99 >> 14;
              v99 >>= 7;
            }

            while (v102);
LABEL_719:
            *(v100 - 1) = v101;
          }

          else
          {
LABEL_627:
            v5[1] = v99;
            v100 = v5 + 2;
          }

          goto LABEL_720;
        }
      }

      return sub_232CB51F0(a4, a2, v92, v5);
    case 13:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v131 = *a1;
      v132 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v132 | 0x80;
        v366 = v132 >> 7;
        if (v132 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v366 | 0x80;
            v388 = v366 >> 7;
            ++v59;
            v389 = v366 >> 14;
            v366 >>= 7;
          }

          while (v389);
          *(v59 - 1) = v388;
        }

        else
        {
          v5[1] = v366;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v132;
        v59 = v5 + 1;
      }

      if (v131 <= 0x7F)
      {
        goto LABEL_685;
      }

      *v59 = v131 | 0x80;
      v390 = v131 >> 7;
      if (!(v131 >> 14))
      {
        v59[1] = v390;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v390 | 0x80;
        v391 = v390 >> 7;
        ++v5;
        v392 = v390 >> 14;
        v390 >>= 7;
      }

      while (v392);
      *(v5 - 1) = v391;
      return v5;
    case 14:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v116 = *a1;
      v259 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v259 | 0x80;
        v372 = v259 >> 7;
        if (v259 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v372 | 0x80;
            v411 = v372 >> 7;
            ++v59;
            v412 = v372 >> 14;
            v372 >>= 7;
          }

          while (v412);
          *(v59 - 1) = v411;
        }

        else
        {
          v5[1] = v372;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v259;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
LABEL_704:
        *v59 = v116;
        return v59 + 1;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
LABEL_706:
        v59[1] = v385;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v413 = v385 >> 14;
        v385 >>= 7;
      }

      while (v413);
LABEL_710:
      *(v5 - 1) = v386;
      return v5;
    case 15:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_401:
        *v5 = v73 | 5;
        v75 = v5 + 1;
      }

      else
      {
        *v5 = v73 | 0x85;
        v74 = v73 >> 7;
        if (v73 >> 14)
        {
          v75 = v5 + 2;
          do
          {
            *(v75 - 1) = v74 | 0x80;
            v76 = v74 >> 7;
            v75 = (v75 + 1);
            v77 = v74 >> 14;
            v74 >>= 7;
          }

          while (v77);
LABEL_713:
          *(v75 - 1) = v76;
        }

        else
        {
LABEL_617:
          v5[1] = v74;
          v75 = v5 + 2;
        }
      }

      *v75 = v72;
      return (v75 + 1);
    case 16:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_360:
        *v5 = v28 | 1;
        v30 = v5 + 1;
      }

      else
      {
        *v5 = v28 | 0x81;
        v29 = v28 >> 7;
        if (v28 >> 14)
        {
          v30 = v5 + 2;
          do
          {
            *(v30 - 1) = v29 | 0x80;
            v31 = v29 >> 7;
            v30 = (v30 + 1);
            v179 = v29 >> 14;
            v29 >>= 7;
          }

          while (v179);
LABEL_698:
          *(v30 - 1) = v31;
        }

        else
        {
LABEL_613:
          v5[1] = v29;
          v30 = v5 + 2;
        }
      }

      *v30 = v27;
      return (v30 + 1);
    case 17:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v57 = *a1;
      v58 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v58 | 0x80;
        v364 = v58 >> 7;
        if (v58 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v364 | 0x80;
            v377 = v364 >> 7;
            ++v59;
            v378 = v364 >> 14;
            v364 >>= 7;
          }

          while (v378);
          *(v59 - 1) = v377;
        }

        else
        {
          v5[1] = v364;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v58;
        v59 = v5 + 1;
      }

      v379 = (2 * v57) ^ (v57 >> 31);
      if (v379 <= 0x7F)
      {
        *v59 = v379;
        return v59 + 1;
      }

      *v59 = v379 | 0x80;
      v380 = v379 >> 7;
      if (!(v379 >> 14))
      {
LABEL_662:
        v59[1] = v380;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v382 = v380 >> 14;
        v380 >>= 7;
      }

      while (v382);
LABEL_665:
      *(v5 - 1) = v381;
      return v5;
    case 18:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v232 = *a1;
      v233 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v233 | 0x80;
        v371 = v233 >> 7;
        if (v233 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v371 | 0x80;
            v404 = v371 >> 7;
            ++v59;
            v405 = v371 >> 14;
            v371 >>= 7;
          }

          while (v405);
          *(v59 - 1) = v404;
        }

        else
        {
          v5[1] = v371;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v233;
        v59 = v5 + 1;
      }

      v406 = (2 * v232) ^ (v232 >> 63);
      if (v406 > 0x7F)
      {
        *v59 = v406 | 0x80;
        v407 = v406 >> 7;
        if (v406 >> 14)
        {
          v5 = v59 + 2;
          do
          {
            *(v5 - 1) = v407 | 0x80;
            v408 = v407 >> 7;
            ++v5;
            v409 = v407 >> 14;
            v407 >>= 7;
          }

          while (v409);
          *(v5 - 1) = v408;
        }

        else
        {
          v59[1] = v407;
          return v59 + 2;
        }
      }

      else
      {
        *v59 = v406;
        return v59 + 1;
      }

      return v5;
    default:
      return v5;
  }
}

void sub_232CBE67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CBE6AC(uint64_t a1)
{
  v7 = 0;
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    sub_232CBFEC4(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(a1 + 10))
  {
    v2 = 0;
    v3 = &v1[8 * *(a1 + 10)];
    v4 = *(a1 + 16);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += sub_232CBE740(v1 + 1, v5);
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

unint64_t sub_232CBE740(_DWORD **a1, int a2)
{
  if (*(a1 + 9) == 1)
  {
    v4 = *(a1 + 8);
    v5 = v4 - 19;
    if (*(a1 + 11) == 1)
    {
      if (v5 <= 0xFFFFFFED)
      {
        sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v6 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_232CB5858(&v102, &v6->__r_.__value_.__l.__data_);
        sub_232CB5860(v103);
      }

      switch(v4)
      {
        case 1:
        case 6:
        case 16:
          v22 = 8 * **a1;
          goto LABEL_71;
        case 2:
        case 7:
        case 15:
          v22 = 4 * **a1;
          goto LABEL_71;
        case 3:
          v45 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v46 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_232CC5EA0(v45, v46++) | 1) ^ 0x3F) + 73) >> 6;
            v45 = *a1;
          }

          while (v46 < **a1);
          goto LABEL_71;
        case 4:
          v47 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v48 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_232CC64CC(v47, v48++) | 1) ^ 0x3F) + 73) >> 6;
            v47 = *a1;
          }

          while (v48 < **a1);
          goto LABEL_71;
        case 5:
          v37 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v38 = 0;
          do
          {
            v39 = sub_232CC5248(v37, v38);
            v40 = (9 * (__clz(*v39 | 1) ^ 0x1F) + 73) >> 6;
            if (*v39 >= 0)
            {
              v41 = v40;
            }

            else
            {
              v41 = 10;
            }

            v22 += v41;
            ++v38;
            v37 = *a1;
          }

          while (v38 < **a1);
          goto LABEL_71;
        case 8:
          v22 = **a1;
          goto LABEL_71;
        case 9:
        case 10:
        case 11:
        case 12:
          sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1599);
          v7 = sub_232CB571C(v103, "Non-primitive types can't be packed.");
          sub_232CB5858(&v102, &v7->__r_.__value_.__l.__data_);
          sub_232CB5860(v103);
          goto LABEL_7;
        case 13:
          v30 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v31 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_232CC5874(v30, v31++) | 1) ^ 0x1F) + 73) >> 6;
            v30 = *a1;
          }

          while (v31 < **a1);
          goto LABEL_71;
        case 14:
          v32 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v33 = 0;
          do
          {
            v34 = sub_232CC5248(v32, v33);
            v35 = (9 * (__clz(*v34 | 1) ^ 0x1F) + 73) >> 6;
            if (*v34 >= 0)
            {
              v36 = v35;
            }

            else
            {
              v36 = 10;
            }

            v22 += v36;
            ++v33;
            v32 = *a1;
          }

          while (v33 < **a1);
          goto LABEL_71;
        case 17:
          v27 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v28 = 0;
          do
          {
            v29 = sub_232CC5248(v27, v28);
            v22 += (9 * (__clz((2 * *v29) ^ (*v29 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            ++v28;
            v27 = *a1;
          }

          while (v28 < **a1);
          goto LABEL_71;
        case 18:
          v42 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v43 = 0;
          do
          {
            v44 = sub_232CC5EA0(v42, v43);
            v22 += (9 * (__clz((2 * *v44) ^ (*v44 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            ++v43;
            v42 = *a1;
          }

          while (v43 < **a1);
LABEL_71:
          *(a1 + 3) = v22;
          v49 = v22 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
          if (v22)
          {
            v8 = v49;
          }

          else
          {
            v8 = 0;
          }

          break;
        default:
LABEL_7:
          v8 = 0;
          *(a1 + 3) = 0;
          break;
      }
    }

    else
    {
      if (v5 > 0xFFFFFFED)
      {
        v11 = 0;
        v10 = *(a1 + 8);
      }

      else
      {
        sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v9 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_232CB5858(&v102, &v9->__r_.__value_.__l.__data_);
        sub_232CB5860(v103);
        v10 = *(a1 + 8);
        v11 = (v10 - 19) < 0xFFFFFFEE;
      }

      v16 = v4 == 10;
      if (v11)
      {
        sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v17 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_232CB5858(&v102, &v17->__r_.__value_.__l.__data_);
        sub_232CB5860(v103);
      }

      v18 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v16;
      switch(v10)
      {
        case 1:
        case 6:
        case 16:
          v19 = v18 + 8;
          goto LABEL_27;
        case 2:
        case 7:
        case 15:
          v19 = v18 + 4;
LABEL_27:
          v8 = v19 * **a1;
          break;
        case 3:
          v85 = *a1;
          v86 = **a1;
          v8 = v18 * v86;
          if (v86 >= 1)
          {
            v87 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_232CC5EA0(v85, v87++) | 1) ^ 0x3F) + 73) >> 6;
              v85 = *a1;
            }

            while (v87 < **a1);
          }

          break;
        case 4:
          v88 = *a1;
          v89 = **a1;
          v8 = v18 * v89;
          if (v89 >= 1)
          {
            v90 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_232CC64CC(v88, v90++) | 1) ^ 0x3F) + 73) >> 6;
              v88 = *a1;
            }

            while (v90 < **a1);
          }

          break;
        case 5:
          v75 = *a1;
          v76 = **a1;
          v8 = v18 * v76;
          if (v76 >= 1)
          {
            v77 = 0;
            do
            {
              v78 = sub_232CC5248(v75, v77);
              v79 = (9 * (__clz(*v78 | 1) ^ 0x1F) + 73) >> 6;
              if (*v78 >= 0)
              {
                v80 = v79;
              }

              else
              {
                v80 = 10;
              }

              v8 += v80;
              ++v77;
              v75 = *a1;
            }

            while (v77 < **a1);
          }

          break;
        case 8:
          v8 = **a1 + **a1 * v18;
          break;
        case 9:
          v96 = *a1;
          v97 = (*a1)[2];
          v8 = v18 * v97;
          if (v97 >= 1)
          {
            v98 = 0;
            do
            {
              v99 = sub_232CAFC54(v96, v98);
              v100 = *(v99 + 23);
              if ((v100 & 0x80u) != 0)
              {
                v100 = *(v99 + 8);
              }

              v8 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6);
              ++v98;
              v96 = *a1;
            }

            while (v98 < (*a1)[2]);
          }

          break;
        case 10:
          v58 = *a1;
          v59 = (*a1)[2];
          v8 = v18 * v59;
          if (v59 >= 1)
          {
            v60 = 0;
            do
            {
              v61 = sub_232CBF720(v58, v60);
              v8 += (*(*v61 + 72))(v61);
              ++v60;
              v58 = *a1;
            }

            while (v60 < (*a1)[2]);
          }

          break;
        case 11:
          v64 = *a1;
          v65 = (*a1)[2];
          v8 = v18 * v65;
          if (v65 >= 1)
          {
            v66 = 0;
            do
            {
              v67 = sub_232CBF720(v64, v66);
              v68 = (*(*v67 + 72))(v67);
              v8 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6);
              ++v66;
              v64 = *a1;
            }

            while (v66 < (*a1)[2]);
          }

          break;
        case 12:
          v91 = *a1;
          v92 = (*a1)[2];
          v8 = v18 * v92;
          if (v92 >= 1)
          {
            v93 = 0;
            do
            {
              v94 = sub_232CAFC54(v91, v93);
              v95 = *(v94 + 23);
              if ((v95 & 0x80u) != 0)
              {
                v95 = *(v94 + 8);
              }

              v8 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6);
              ++v93;
              v91 = *a1;
            }

            while (v93 < (*a1)[2]);
          }

          break;
        case 13:
          v55 = *a1;
          v56 = **a1;
          v8 = v18 * v56;
          if (v56 >= 1)
          {
            v57 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_232CC5874(v55, v57++) | 1) ^ 0x1F) + 73) >> 6;
              v55 = *a1;
            }

            while (v57 < **a1);
          }

          break;
        case 14:
          v69 = *a1;
          v70 = **a1;
          v8 = v18 * v70;
          if (v70 >= 1)
          {
            v71 = 0;
            do
            {
              v72 = sub_232CC5248(v69, v71);
              v73 = (9 * (__clz(*v72 | 1) ^ 0x1F) + 73) >> 6;
              if (*v72 >= 0)
              {
                v74 = v73;
              }

              else
              {
                v74 = 10;
              }

              v8 += v74;
              ++v71;
              v69 = *a1;
            }

            while (v71 < **a1);
          }

          break;
        case 17:
          v50 = *a1;
          v51 = **a1;
          v8 = v18 * v51;
          if (v51 >= 1)
          {
            v52 = 0;
            do
            {
              v53 = sub_232CC5248(v50, v52);
              v8 += (9 * (__clz((2 * *v53) ^ (*v53 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              ++v52;
              v50 = *a1;
            }

            while (v52 < **a1);
          }

          break;
        case 18:
          v81 = *a1;
          v82 = **a1;
          v8 = v18 * v82;
          if (v82 >= 1)
          {
            v83 = 0;
            do
            {
              v84 = sub_232CC5EA0(v81, v83);
              v8 += (9 * (__clz((2 * *v84) ^ (*v84 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              ++v83;
              v81 = *a1;
            }

            while (v83 < **a1);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(a1 + 10))
  {
    return 0;
  }

  else
  {
    v12 = *(a1 + 8);
    if ((v12 - 19) > 0xFFFFFFED)
    {
      v15 = 0;
      v14 = *(a1 + 8);
    }

    else
    {
      sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v13 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v102, &v13->__r_.__value_.__l.__data_);
      sub_232CB5860(v103);
      v14 = *(a1 + 8);
      v15 = (v14 - 19) < 0xFFFFFFEE;
    }

    v20 = v12 == 10;
    if (v15)
    {
      sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v21 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v102, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v103);
    }

    v8 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v20;
    switch(v14)
    {
      case 1:
      case 6:
      case 16:
        v8 += 8;
        return v8;
      case 2:
      case 7:
      case 15:
        v8 += 4;
        return v8;
      case 3:
      case 4:
        v23 = *a1;
        goto LABEL_116;
      case 5:
      case 14:
        v24 = (9 * (__clz(*a1 | 1) ^ 0x1F) + 73) >> 6;
        if (*a1 >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 10;
        }

        v8 += v25;
        return v8;
      case 8:
        return ++v8;
      case 9:
      case 12:
        v26 = *(*a1 + 1);
        if (*(*a1 + 23) >= 0)
        {
          v26 = *(*a1 + 23);
        }

        v8 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 10:
        v8 += (*(**a1 + 72))();
        return v8;
      case 11:
        v62 = **a1;
        if ((*(a1 + 10) & 0x10) != 0)
        {
          v63 = (*(v62 + 88))();
        }

        else
        {
          v63 = (*(v62 + 72))();
        }

        v8 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 13:
        v54 = *a1;
        goto LABEL_103;
      case 17:
        v54 = (2 * *a1) ^ (*a1 >> 31);
LABEL_103:
        v8 += (9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6;
        break;
      case 18:
        v23 = (2 * *a1) ^ (*a1 >> 63);
LABEL_116:
        v8 += (9 * (__clz(v23 | 1) ^ 0x3F) + 73) >> 6;
        break;
      default:
        return v8;
    }
  }

  return v8;
}

void sub_232CBF340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_232CBF380(unsigned __int8 *result)
{
  v1 = result;
  v2 = result[8];
  v3 = v2 - 19;
  if (result[9] != 1)
  {
    if (v3 <= 0xFFFFFFED)
    {
      sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v7 = sub_232CB571C(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v12, &v7->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v13);
    }

    v8 = dword_232D01270[v2];
    if (v8 == 10)
    {
      result = *v1;
      if ((v1[10] & 0x10) != 0)
      {
        if (!result)
        {
          return result;
        }
      }

      else if (!result)
      {
        return result;
      }

      return (*(*result + 8))(result);
    }

    if (v8 == 9)
    {
      v9 = *v1;
      if (v9)
      {
        if (v9[23] < 0)
        {
          operator delete(*v9);
        }

        v10 = 0x1012C40EC159624;
        v6 = v9;
        return MEMORY[0x238392C10](v6, v10);
      }
    }

    return result;
  }

  if (v3 <= 0xFFFFFFED)
  {
    sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = sub_232CB571C(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_232CB5858(&v12, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v13);
  }

  v5 = dword_232D01270[v2];
  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_232CC6C20(result);
      }

      else
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_232CC4D48(result);
      }

      goto LABEL_44;
    }

    if (v5 != 8)
    {
      if (v5 == 9)
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_232CC74E4(result);
      }

      else
      {
        if (v5 != 10)
        {
          return result;
        }

        v11 = *v1;
        if (!v11)
        {
          return result;
        }

        sub_232CC0020(v11);
        v6 = sub_232CA84A4(v11);
      }

      v10 = 0x1020C4014030ADELL;
      return MEMORY[0x238392C10](v6, v10);
    }

LABEL_34:
    result = *v1;
    if (!*v1)
    {
      return result;
    }

    v6 = sub_232CC5370(result);
    goto LABEL_44;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_232CC599C(result);
    }

    else if (v5 == 4)
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_232CC65F4(result);
    }

    else
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_232CC724C(result);
    }

    goto LABEL_44;
  }

  if (v5 == 1)
  {
    goto LABEL_34;
  }

  if (v5 == 2)
  {
    result = *v1;
    if (*v1)
    {
      v6 = sub_232CC5FC8(result);
LABEL_44:
      v10 = 0x1080C4057E67DB5;
      return MEMORY[0x238392C10](v6, v10);
    }
  }

  return result;
}

void sub_232CBF624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_232CBF658(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_232CBF380(v3 + 40);
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

uint64_t *sub_232CBF6E8(uint64_t *a1)
{
  sub_232CC0020(a1);

  return sub_232CA84A4(a1);
}

uint64_t sub_232CBF720(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232CBF7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unsigned int *sub_232CBF800(unsigned int *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (!v2)
  {
    return sub_232CBF854(result, a2);
  }

  v3 = *v2;
  if (v3 >= result[3])
  {
    return sub_232CBF854(result, a2);
  }

  v4 = v2 + 2;
  v5 = result[2];
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  result[2] = v5 + 1;
  ++**(result + 2);
  return result;
}

unsigned int *sub_232CBF854(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (!v4)
  {
    v5 = result[3];
    goto LABEL_11;
  }

  v5 = result[2];
  v6 = result[3];
  if (v5 == v6)
  {
LABEL_11:
    result = sub_232CC74E8(result, v5 + 1);
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

  result = *&v4[2 * v5 + 2];
  if (result)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = (*(*result + 8))(result);
    v4 = *(v3 + 2);
  }

LABEL_14:
  v10 = v3[2];
  v3[2] = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return result;
}

unsigned __int8 *sub_232CBF934(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_232CB5DF4(v3 + 40);
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

uint64_t *sub_232CBF9A4(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_232CB9AD4(a3, *(v5 + 8), v5 + 5);
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

_OWORD *sub_232CBFA28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x238392920](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return sub_232CE8580();
  }
}

char *sub_232CBFA94(uint64_t a1, char *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v7 = v9;
  }

  else
  {
    result = a2 + 1;
  }

  v10 = *(a1 + 8);
  v11 = v10 - result;
  if (v7 <= v10 - result)
  {
LABEL_15:
    v17 = &result[v7];
    v18 = a3[1];
    v20 = *a3;
    v21 = v18;
    v22 = *(a3 + 4);
    result = sub_232CBFCE4(result, v17, &v20);
    if (v17 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v12 = a3[1];
      v20 = *a3;
      v21 = v12;
      v22 = *(a3 + 4);
      result = sub_232CBFCE4(result, v10, &v20);
      if (!result)
      {
        break;
      }

      v13 = result - *(a1 + 8);
      if (v13 >= 0x11)
      {
        sub_232CB5704(&v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v14 = sub_232CB571C(&v20, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v23, &v14->__r_.__value_.__l.__data_);
        sub_232CB5860(&v20);
      }

      v15 = v7 - v11;
      if (v7 - v11 <= 16)
      {
        v25 = 0;
        v24 = 0;
        v23 = **(a1 + 8);
        v19 = a3[1];
        v20 = *a3;
        v21 = v19;
        v22 = *(a3 + 4);
        if (sub_232CBFCE4(&v23 + v13, &v23 + v15, &v20) != &v23 + v15)
        {
          return 0;
        }

        return (*(a1 + 8) + v15);
      }

      v7 = v7 - v11 - v13;
      if (v7 <= 0)
      {
        sub_232CB5704(&v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v16 = sub_232CB571C(&v20, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v23, &v16->__r_.__value_.__l.__data_);
        sub_232CB5860(&v20);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      result += v13;
      v10 = *(a1 + 8);
      v11 = v10 - result;
      if (v7 <= v10 - result)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

char *sub_232CBFCE4(char *a1, unint64_t a2, unsigned int **a3)
{
  v3 = a1;
  while (v3 < a2)
  {
    v6 = *v3;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v3[1] << 7) + v6;
      v6 = (v7 - 128);
      if (v3[1] < 0)
      {
        v3 = sub_232CC21D8(v3, (v7 - 128));
        if (!v3)
        {
          return v3;
        }

        v6 = v8;
      }

      else
      {
        v3 += 2;
      }
    }

    else
    {
      ++v3;
    }

    if ((a3[1])(a3[2], v6))
    {
      v9 = *a3;
      v10 = **a3;
      if (v10 == (*a3)[1])
      {
        v11 = v10 + 1;
        sub_232CC4F04(*a3, v10 + 1);
        *(sub_232CC5374(v9) + 4 * v10) = v6;
      }

      else
      {
        *(sub_232CC5374(*a3) + 4 * v10) = v6;
        v11 = v10 + 1;
      }

      *v9 = v11;
    }

    else
    {
      v12 = *(a3 + 8);
      v13 = a3[3];
      if (*v13)
      {
        v14 = ((*v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v14 = sub_232CA81A8(v13);
      }

      sub_232CC20C0(v12, v6, v14);
    }
  }

  return v3;
}

char *sub_232CBFE10(uint64_t a1, char *__src, int64_t __n)
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

void *sub_232CBFEC4(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += sub_232CBE740(v5 + 5, *(v5 + 8));
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

uint64_t sub_232CBFF50(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_232CB571C(v7, "CHECK failed: (n) >= (0): ");
    sub_232CB5858(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_232CB5860(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = (*(*v4 + 40))(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_232CC0008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC0020(void *a1)
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

uint64_t *sub_232CC00AC(uint64_t a1, int *a2, _OWORD *a3)
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

uint64_t sub_232CC0180(uint64_t **a1, uint64_t *a2, int *a3, _OWORD *a4)
{
  v4 = *sub_232CC0218(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_232CC0218(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

uint64_t sub_232CC03D0(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    sub_232C86764(a2, *(a2 + 8));

    JUMPOUT(0x238392C10);
  }

  return result;
}

void sub_232CC08D4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_232CC08E8()
{
  if ((atomic_load_explicit(&qword_27DDD4DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDD4DB0))
  {
    qword_27DDD5660 = 0;
    *algn_27DDD5668 = 0;
    qword_27DDD5670 = 0;
    sub_232CC13EC(sub_232CC08D4, &qword_27DDD5660);
    atomic_store(1u, &unk_27DDD5678);

    __cxa_guard_release(&qword_27DDD4DB0);
  }
}

uint64_t sub_232CC0994(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  (*(*v4 + 64))(v4, a1);
  (*(*a1 + 40))(a1);
  (*(*a1 + 64))(a1, a2);
  (*(*a2 + 40))(a2);
  (*(*a2 + 64))(a2, v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void sub_232CC0B20(_DWORD *a1)
{
  if ((atomic_load_explicit(byte_27DDD4DB8, memory_order_acquire) & 1) == 0)
  {
    sub_232CC0CFC();
  }

  v2 = pthread_self();
  if (qword_27DDD4DC0 == v2)
  {
    if (*a1 != 1)
    {
      sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v3 = sub_232CB571C(v5, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      sub_232CB5858(&v4, &v3->__r_.__value_.__l.__data_);
      sub_232CB5860(v5);
    }
  }

  else
  {
    if ((atomic_load_explicit(&unk_27DDD5678, memory_order_acquire) & 1) == 0)
    {
      sub_232CC08E8();
    }

    std::mutex::lock(&stru_27DDC8878);
    qword_27DDD4DC0 = v2;
    sub_232CC0C44(a1);
    qword_27DDD4DC0 = 0;

    std::mutex::unlock(&stru_27DDC8878);
  }
}

void sub_232CC0C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_232CC0C44(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result + 6;
    v3 = result[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *&v2[2 * i];
        if (v5)
        {
          sub_232CC0C44(v5);
          v3 = *(v1 + 1);
        }
      }
    }

    v6 = v3;
    v7 = *(v1 + 2);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = &v2[2 * v6];
      do
      {
        v10 = **&v9[2 * v8];
        if (v10)
        {
          sub_232CC0C44(v10);
          v7 = *(v1 + 2);
        }

        ++v8;
      }

      while (v8 < v7);
    }

    result = v1[2]();
    atomic_store(0, v1);
  }

  return result;
}

void sub_232CC0CFC()
{
  if (__cxa_guard_acquire(byte_27DDD4DB8))
  {
    __cxa_atexit(std::mutex::~mutex, &stru_27DDC8878, &dword_232B02000);

    __cxa_guard_release(byte_27DDD4DB8);
  }
}

uint64_t sub_232CC0DD0(uint64_t a1)
{
  sub_232CB5704(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  sub_232CC0E84("parse", a1, &__p);
  v2 = sub_232CB5748(v6, &__p);
  sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return sub_232CB5860(v6);
}

void sub_232CC0E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_232CB5860(&a16);
  _Unwind_Resume(a1);
}

void sub_232CC0E84(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ");
  std::string::append(a3, a1);
  std::string::append(a3, " message of type ");
  (*(*a2 + 16))(&__p, a2);
  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v11;
  }

  std::string::append(a3, p_p, v7);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ");
  (*(*a2 + 56))(&__p, a2);
  if ((v12 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v11;
  }

  std::string::append(a3, v8, v9);
  if (v12 < 0)
  {
    operator delete(__p);
  }
}

void sub_232CC0FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232CC1000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    sub_232CC17BC();
  }

  sub_232CC175C();
  return v4;
}

BOOL sub_232CC103C(uint64_t a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_232CB5704(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = sub_232CB571C(v9, "CHECK failed: IsInitialized(): ");
    sub_232CC0E84("serialize", a1, &__p);
    v5 = sub_232CB5748(v4, &__p);
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_232CB5860(v9);
  }

  return sub_232CC1148(a1, a2);
}

void sub_232CC1114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_232CB5860(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_232CC1148(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v20 = *MEMORY[0x277D85DE8];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    sub_232CB5704(v16, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = sub_232CB5748(v16, __p);
    v11 = sub_232CB571C(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = sub_232CB5994(v11, v6);
    sub_232CB5858(&v14, &v12->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = v16;
    goto LABEL_11;
  }

  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  *&v16[0].__r_.__value_.__l.__data_ = v2 + size + v6;
  v17 = 0;
  v18 = 0;
  v19 = byte_27DDD565C & 1;
  if (v16[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    sub_232CB5704(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = sub_232CB571C(__p, "CHECK failed: target + size == res: ");
    sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    sub_232CB5860(v9);
  }

  return v7 == 0;
}

BOOL sub_232CC137C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_232CC103C(a1, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_232CC13D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_232CC13EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232CC14F8();
  std::mutex::lock((v4 + 24));
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_232C84C3C();
    }

    v10 = v5 - *v4;
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

    if (v11)
    {
      sub_232CC1698(v4, v11);
    }

    v12 = (16 * v8);
    *v12 = a1;
    v12[1] = a2;
    v7 = 16 * v8 + 16;
    v13 = *(v4 + 8) - *v4;
    v14 = (16 * v8 - v13);
    memcpy(v14, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = a1;
    v6[1] = a2;
    v7 = (v6 + 2);
  }

  *(v4 + 8) = v7;

  std::mutex::unlock((v4 + 24));
}

uint64_t sub_232CC14F8()
{
  if ((atomic_load_explicit(&qword_27DDC88C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDC88C0))
  {
    operator new();
  }

  return qword_27DDC88B8;
}

void sub_232CC15A0()
{
  if ((byte_27DDD4DC8 & 1) == 0)
  {
    v0 = sub_232CC14F8();
    if (v0)
    {
      v1 = sub_232CC15F0(v0);
      MEMORY[0x238392C10](v1, 0x1020C40A0054943);
    }

    byte_27DDD4DC8 = 1;
  }
}

uint64_t sub_232CC15F0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - 2;
  if (*a1 != v3 && v4 > v2)
  {
    do
    {
      v6 = *v2;
      *v2 = *v4;
      *v4 = v6;
      v7 = v2[1];
      v2[1] = v4[1];
      v4[1] = v7;
      v2 += 2;
      v4 -= 2;
    }

    while (v2 < v4);
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  while (v2 != v3)
  {
    (*v2)(v2[1]);
    v2 += 2;
  }

  std::mutex::~mutex((a1 + 24));
  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_232CC1698(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232CC175C()
{
  sub_232CC1740();
  (*(v1 + 40))(v2);
  result = sub_232CE8490();
  *v0 = result;
  return result;
}

_OWORD *sub_232CC17E8(uint64_t a1)
{
  if (*(a1 + 28) <= 16)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = sub_232CB571C(v7, "CHECK failed: limit_ > kSlopBytes: ");
    sub_232CB5858(&v6, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v7);
  }

  result = sub_232CC18B0(a1, 0, -1);
  v4 = *(a1 + 8);
  if (result)
  {
    v5 = *(a1 + 28) + result - v4;
    *(a1 + 28) = v5;
    v4 += v5 & (v5 >> 31);
  }

  else
  {
    *(a1 + 80) = 1;
  }

  *a1 = v4;
  return result;
}

void sub_232CC1898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_232CC18B0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = (a1 + 40);
  if (v3 != a1 + 40)
  {
    v6 = *(a1 + 24);
    if (v6 <= 16)
    {
      sub_232CB5704(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = sub_232CB571C(v34, "CHECK failed: size_ > kSlopBytes: ");
      sub_232CB5858(&__src, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v34);
      v3 = *(a1 + 16);
      v6 = *(a1 + 24);
    }

    *(a1 + 8) = v3 + v6 - 16;
    *(a1 + 16) = v5;
    if (*(a1 + 72) == 1)
    {
      *(a1 + 72) = 2;
    }

    return v3;
  }

  *v5 = **(a1 + 8);
  if (*(a1 + 84) < 1)
  {
    goto LABEL_23;
  }

  v8 = a3;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  if (a2 < 0)
  {
    sub_232CB5704(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = sub_232CB571C(v34, "CHECK failed: overrun >= 0: ");
    sub_232CB5858(&__src, &v11->__r_.__value_.__l.__data_);
    sub_232CB5860(v34);
LABEL_27:
    v16 = a1 + 56;
    v17 = v5 + a2;
    v18 = v17;
    while (1)
    {
      v19 = *v18++;
      v20 = v19;
      if (v19 < 0)
      {
        v20 = v20 + (*v18 << 7) - 128;
        if (*v18 < 0)
        {
          v18 = v17 + 3;
          v25 = -21;
          while (1)
          {
            v20 += (*(v18 - 1) - 1) << (v25 + 35);
            if ((*(v18 - 1) & 0x80000000) == 0)
            {
              break;
            }

            ++v18;
            v25 += 7;
            if (!v25)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v18 = v17 + 2;
        }
      }

      if (v18 > v16)
      {
        goto LABEL_16;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20 & 7;
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            ++v8;
            break;
          case 4:
            v24 = __OFSUB__(v8--, 1);
            if (v8 < 0 != v24)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            v18 += 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v18 += 8;
        }

        else
        {
          v22 = *v18;
          if (*v18 < 0)
          {
            v23 = sub_232CE88A0(v18, v22);
            if (!v23)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v23 = (v18 + 1);
          }

          if ((v16 - v23) < v22)
          {
            goto LABEL_16;
          }

          v18 = (v23 + v22);
        }
      }

      else
      {
        v34[0].__r_.__value_.__r.__words[0] = 0;
        v18 = sub_232CC28B0(v18, v34);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v17 = v18;
      if (v18 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= 0x11)
  {
    sub_232CB5704(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = sub_232CB571C(v34, "CHECK failed: overrun <= kSlopBytes: ");
    sub_232CB5858(&__src, &v10->__r_.__value_.__l.__data_);
    sub_232CB5860(v34);
    goto LABEL_16;
  }

  if (a2 != 16)
  {
    goto LABEL_27;
  }

LABEL_16:
  __src = 0;
  if (!(*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24))
  {
LABEL_22:
    *(a1 + 84) = 0;
LABEL_23:
    if (*(a1 + 72) == 2)
    {
      *(a1 + 72) = *(a1 + 8) - v3;
    }

    *(a1 + 8) = a1 + 56;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    return v5;
  }

  while (1)
  {
    v12 = *(a1 + 24);
    *(a1 + 84) -= v12;
    if (v12 >= 17)
    {
      v28 = *(a1 + 72);
      v27 = (a1 + 72);
      v26 = v28;
      v29 = (v27 - 2);
      v30 = __src;
      *(v27 - 1) = *__src;
      *(v27 - 7) = v30;
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      break;
    }

    if (v12)
    {
      sub_232CB5704(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = sub_232CB571C(v34, "CHECK failed: size_ == 0: ");
      v14 = sub_232CB5914(v13, *(a1 + 24));
      sub_232CB5858(&v32, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v34);
    }

    if (((*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy((a1 + 56), __src, v12);
  v31 = *(a1 + 72);
  v27 = (a1 + 72);
  v26 = v31;
  v29 = v5 + v12;
  *(v27 - 7) = v5;
LABEL_59:
  *(v27 - 8) = v29;
  if (v26 > 1)
  {
    *v27 = 1;
  }

  return v5;
}

void sub_232CC1CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC1CDC(uint64_t a1, signed int a2, int a3)
{
  v3 = *(a1 + 28);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = sub_232CB571C(v19, "CHECK failed: overrun != limit_: ");
    sub_232CB5858(&v18, &v7->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= v5)
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = sub_232CB571C(v19, "CHECK failed: overrun < limit_: ");
    sub_232CB5858(&v18, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
    v3 = *(a1 + 28);
  }

  if (*a1 != *(a1 + 8) + (v3 & (v3 >> 31)))
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = sub_232CB571C(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    sub_232CB5858(&v18, &v9->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= 0)
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = sub_232CB571C(v19, "CHECK failed: limit_ > 0: ");
    sub_232CB5858(&v18, &v10->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
  }

  if (*a1 != *(a1 + 8))
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = sub_232CB571C(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    sub_232CB5858(&v18, &v11->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
  }

  while (1)
  {
    if (v5 < 0)
    {
      sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = sub_232CB571C(v19, "CHECK failed: overrun >= 0: ");
      sub_232CB5858(&v18, &v12->__r_.__value_.__l.__data_);
      sub_232CB5860(v19);
    }

    v13 = sub_232CC18B0(a1, v5, a3);
    if (!v13)
    {
      break;
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 28) + v13 - v14;
    *(a1 + 28) = v15;
    result = v13 + v5;
    v5 = result - v14;
    if (result - v14 < 0)
    {
      *a1 = v14 + (v15 & (v15 >> 31));
      return result;
    }
  }

  if (v5)
  {
    return 0;
  }

  if (*(a1 + 28) <= 0)
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = sub_232CB571C(v19, "CHECK failed: limit_ > 0: ");
    sub_232CB5858(&v18, &v17->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
  }

  result = *(a1 + 8);
  *a1 = result;
  *(a1 + 80) = 1;
  return result;
}

void sub_232CC1F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_232CC1FD4(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 8) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = sub_232CB571C(v10, "CHECK failed: size > chunk_size: ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    if (!*(a1 + 16) || *(a1 + 28) < 17)
    {
      break;
    }

    result = sub_232CC17E8(a1);
    if (!result)
    {
      return result;
    }

    v5 = *(a1 + 8) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

void sub_232CC20A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC20C0(int a1, unint64_t a2, std::string *this)
{
  v5 = (8 * a1);
  if (v5 < 0x80)
  {
    LOBYTE(v6) = 8 * a1;
  }

  else
  {
    do
    {
      std::string::push_back(this, v5 | 0x80);
      v6 = v5 >> 7;
      v7 = v5 >> 14;
      v5 >>= 7;
    }

    while (v7);
  }

  std::string::push_back(this, v6);
  if (a2 < 0x80)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    do
    {
      std::string::push_back(this, a2 | 0x80);
      v8 = a2 >> 7;
      v9 = a2 >> 14;
      a2 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
}

uint64_t sub_232CC216C(uint64_t a1, int a2)
{
  result = a1 + 3;
  v4 = -21;
  while (1)
  {
    a2 += (*(result - 1) - 1) << (v4 + 35);
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = a1 + 6;
      v6 = 5;
      result = 0;
      while (*(v5 - 1) < 0)
      {
        ++v5;
        if (!--v6)
        {
          return result;
        }
      }

      return v5;
    }
  }

  return result;
}

uint64_t sub_232CC21D8(uint64_t a1, uint64_t a2)
{
  a2 = a2;
  result = a1 + 3;
  v4 = (a1 + 2);
  v5 = 14;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << v5;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (v5 == 70)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_232CC2220(uint64_t a1, int a2)
{
  result = a1 + 3;
  v4 = (a1 + 2);
  v5 = -21;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << (v5 + 35);
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

char *sub_232CC2264(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CBFA28(a3, v6, v5, a1);
}

char *sub_232CC2350(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC3CF0(a3, v6, v5, a1);
}

char *sub_232CC23CC(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC3DF8(a3, v6, v5, a1);
}

char *sub_232CC2448(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC3F00(a3, v6, v5, a1);
}

char *sub_232CC24C4(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC4008(a3, v6, v5, a1);
}

char *sub_232CC2540(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC4110(a3, v6, v5, a1);
}

char *sub_232CC25BC(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC4218(a3, v6, v5, a1);
}

char *sub_232CC2634(uint64_t a1, char *a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    if (sub_232CA8068(a3, &v10, *(a3 + 92)))
    {
      return v10;
    }

    v5 = v10 + 1;
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = v10 + 3;
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          ++v5;
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = v10 + 2;
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = sub_232CC274C(v6, a1, v5);
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v5;
}

char *sub_232CC274C(unint64_t a1, std::string *a2, unsigned int *a3, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = a3;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        sub_232CB5704(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = sub_232CB571C(v12, "Can't happen");
        sub_232CB5858(&v11, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(v12);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = a3 + 1;
        sub_232CC4754(a2, v4, *a3);
      }

      return v5;
    }

    result = sub_232CC4628(a2, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = sub_232CC28B0(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_232CC4320(a2, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = a3 + 2;
    sub_232CC43E8(a2, v4, *a3);
    return v5;
  }

  result = sub_232CC44A8(a2, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_232CC2898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC28B0(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      result = a1 + 3;
      v5 = 14;
      while (1)
      {
        v4 += (*(result - 1) - 1) << v5;
        if ((*(result - 1) & 0x80000000) == 0)
        {
          break;
        }

        ++result;
        v5 += 7;
        if (v5 == 70)
        {
          result = 0;
          v4 = 0;
          break;
        }
      }

      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

char *sub_232CC2920(uint64_t a1, char *a2, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC2B40(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC2B40(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v15, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC2B40(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v16, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v15, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_232CC2B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC2B40(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC4F04(a3, v7 + 1);
      *(sub_232CC5374(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_232CC5374(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC2BF0(uint64_t a1, char *a2, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC2E10(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC2E10(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v15, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC2E10(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v16, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v15, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_232CC2DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC2E10(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC5530(a3, v7 + 1);
      *(sub_232CC59A0(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_232CC59A0(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC2EC0(uint64_t a1, char *a2, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC30E0(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC30E0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v15, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC30E0(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v16, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v15, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_232CC30B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC30E0(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC5B5C(a3, v7 + 1);
      *(sub_232CC5FCC(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_232CC5FCC(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC3190(uint64_t a1, char *a2, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC33B0(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC33B0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v15, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC33B0(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v16, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v15, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_232CC3388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC33B0(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC6188(a3, v7 + 1);
      *(sub_232CC65F8(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_232CC65F8(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC3460(uint64_t a1, char *a2, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC3680(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC3680(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v15, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC3680(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v16, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v15, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_232CC3658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC3680(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC4F04(a3, v7 + 1);
      *(sub_232CC5374(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_232CC5374(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC373C(uint64_t a1, char *a2, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC395C(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC395C(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v15, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC395C(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v16, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v15, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_232CC3934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC395C(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC5B5C(a3, v7 + 1);
      *(sub_232CC5FCC(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_232CC5FCC(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC3A18(uint64_t a1, char *a2, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC3C38(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC3C38(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v15, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC3C38(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v16, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v15, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_232CC3C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC3C38(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC48E0(a3, v7 + 1);
      *(sub_232CC4D4C(a3) + v7) = v6;
    }

    else
    {
      *(sub_232CC4D4C(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC3CF0(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC5530(a4, *a4 + (v5 >> 2));
    v11 = sub_232CC56D4(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC5530(a4, *a4 + (v7 >> 2));
      v9 = sub_232CC56D4(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = &result[-(v7 & 3) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC3DF8(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC4F04(a4, *a4 + (v5 >> 2));
    v11 = sub_232CC50A8(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC4F04(a4, *a4 + (v7 >> 2));
      v9 = sub_232CC50A8(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = &result[-(v7 & 3) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC3F00(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC6188(a4, *a4 + (v5 >> 3));
    v11 = sub_232CC632C(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC6188(a4, *a4 + (v7 >> 3));
      v9 = sub_232CC632C(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = &result[-(v7 & 7) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC4008(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC5B5C(a4, *a4 + (v5 >> 3));
    v11 = sub_232CC5D00(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC5B5C(a4, *a4 + (v7 >> 3));
      v9 = sub_232CC5D00(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = &result[-(v7 & 7) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC4110(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC67B4(a4, *a4 + (v5 >> 2));
    v11 = sub_232CC6958(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC67B4(a4, *a4 + (v7 >> 2));
      v9 = sub_232CC6958(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = &result[-(v7 & 3) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC4218(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC6DE0(a4, *a4 + (v5 >> 3));
    v11 = sub_232CC6F84(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC6DE0(a4, *a4 + (v7 >> 3));
      v9 = sub_232CC6F84(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = &result[-(v7 & 7) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_232CC4320(std::string **a1, int a2, unint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    v6 = (8 * a2);
    if (v6 < 0x80)
    {
      LOBYTE(v7) = 8 * a2;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9 = *a1;
    if (a3 < 0x80)
    {
      LOBYTE(v10) = a3;
    }

    else
    {
      do
      {
        std::string::push_back(v9, a3 | 0x80);
        v10 = a3 >> 7;
        v11 = a3 >> 14;
        a3 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v9, v10);
  }
}

std::string *sub_232CC43E8(std::string *result, int a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
    v6 = (8 * a2) | 1u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9[0] = a3;
    return std::string::append(*v5, v9, 8uLL);
  }

  return result;
}

std::string::value_type *sub_232CC44A8(std::string **a1, int a2, char *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = sub_232CE88A0(a3, *a3);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = *a1;
  if (*a1)
  {
    v10 = (8 * a2) | 2u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 2;
    }

    else
    {
      do
      {
        std::string::push_back(v9, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v9, v11);
    v14 = v7;
    v15 = *a1;
    if (v7 < 0x80)
    {
      LOBYTE(v16) = v7;
    }

    else
    {
      do
      {
        std::string::push_back(v15, v14 | 0x80);
        v16 = v14 >> 7;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
    }

    std::string::push_back(v15, v16);
    v18 = *a1;

    return sub_232CC47E8(a4, v8, v7, v18);
  }

  else if (*(a4 + 8) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return sub_232CC1FD4(a4, v8, v7);
  }
}

char *sub_232CC4628(std::string **a1, int a2, char *a3, int32x2_t *a4)
{
  v7 = *a1;
  v8 = 8 * a2;
  if (*a1)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = a4[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a4[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++a4[11].i32[1];
  v14 = sub_232CC2634(a1, a3, a4);
  a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
  v15 = a4[10].i32[0];
  a4[10].i32[0] = 0;
  if (v15 != (v8 | 3) || v14 == 0)
  {
    return 0;
  }

  v17 = v14;
  v18 = *a1;
  if (v18)
  {
    v19 = v8 | 4;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v18, v19 | 0x80);
        v20 = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v18, v20);
  }

  return v17;
}

std::string *sub_232CC4754(std::string *result, int a2, int a3)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
    v6 = (8 * a2) | 5u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    *__s = a3;
    return std::string::append(*v5, __s, 4uLL);
  }

  return result;
}

std::string::value_type *sub_232CC47E8(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return sub_232CE86AC();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void sub_232CC4854(uint64_t a1@<X8>)
{
  if (v1 >= 50000000)
  {
    v4 = 50000000;
  }

  else
  {
    v4 = v1;
  }

  std::string::reserve(v2, a1 + v4);
}

uint64_t sub_232CC48A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_232CB5704(va, 3, v4, 323);
}

std::string *sub_232CC48C8(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void sub_232CC48E0(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC4D4C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v12, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v13);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC4D4C(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  if (v6)
  {
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v10 = sub_232CB4000(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    v10 = operator new(v3 + 8);
  }

  *v10 = v6;
  a1[1] = v3;
  *(a1 + 1) = v10 + 1;
  sub_232CC4D4C(a1);
  if (*a1 >= 1)
  {
    v11 = sub_232CC4D4C(a1);
    memcpy(v11, v5 + 1, *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC4A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC4A80(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC4B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC4B40(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC4D4C(a1) + a2;
}

void sub_232CC4C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC4C20(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC4D4C(a1) + a2;
}

void sub_232CC4CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC4D00(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC4D4C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC4D4C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC4DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC4DD8(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC48E0(v3, *v3 + *a2);
    sub_232CC4A80(v3, *a2);
    v6 = sub_232CC4B40(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC4D4C(a2);
    return memcpy(v6, v8, *a2);
  }

  return result;
}

void sub_232CC4EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC4F04(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC5374(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC5374(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC5374(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC5374(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC5090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC50A8(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC5150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5168(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC5374(a1) + 4 * a2;
}

void sub_232CC5228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5248(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC5374(a1) + 4 * a2;
}

void sub_232CC5308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5328(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC5374(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC5374(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC53E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC5400(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC4F04(v3, *v3 + *a2);
    sub_232CC50A8(v3, *a2);
    v6 = sub_232CC5168(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC5374(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_232CC5510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC5530(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC59A0(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC59A0(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC59A0(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC59A0(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC56BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC56D4(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5794(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC59A0(a1) + 4 * a2;
}

void sub_232CC5854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5874(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC59A0(a1) + 4 * a2;
}

void sub_232CC5934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5954(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC59A0(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC59A0(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC5A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC5A2C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC5530(v3, *v3 + *a2);
    sub_232CC56D4(v3, *a2);
    v6 = sub_232CC5794(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC59A0(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_232CC5B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC5B5C(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC5FCC(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC5FCC(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC5FCC(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC5FCC(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC5CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5D00(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC5DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5DC0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC5FCC(a1) + 8 * a2;
}

void sub_232CC5E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5EA0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC5FCC(a1) + 8 * a2;
}

void sub_232CC5F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5F80(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC5FCC(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC5FCC(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC6040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC6058(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC5B5C(v3, *v3 + *a2);
    sub_232CC5D00(v3, *a2);
    v6 = sub_232CC5DC0(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC5FCC(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_232CC6168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC6188(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC65F8(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC65F8(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC65F8(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC65F8(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC6314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC632C(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC63D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC63EC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC65F8(a1) + 8 * a2;
}

void sub_232CC64AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC64CC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC65F8(a1) + 8 * a2;
}

void sub_232CC658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC65AC(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC65F8(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC65F8(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC6684(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC6188(v3, *v3 + *a2);
    sub_232CC632C(v3, *a2);
    v6 = sub_232CC63EC(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC65F8(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_232CC6794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC67B4(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC6C24(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC6C24(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC6C24(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC6C24(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC6940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6958(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC6A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6A18(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC6C24(a1) + 4 * a2;
}

void sub_232CC6AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6AF8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC6C24(a1) + 4 * a2;
}

void sub_232CC6BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6BD8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC6C24(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC6C24(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC6C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC6CB0(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC67B4(v3, *v3 + *a2);
    sub_232CC6958(v3, *a2);
    v6 = sub_232CC6A18(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC6C24(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_232CC6DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC6DE0(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC7250(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC7250(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC7250(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC7250(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC6F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6F84(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC702C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC7044(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC7250(a1) + 8 * a2;
}

void sub_232CC7104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC7124(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC7250(a1) + 8 * a2;
}

void sub_232CC71E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC7204(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC7250(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC7250(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC72C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC72DC(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC6DE0(v3, *v3 + *a2);
    sub_232CC6F84(v3, *a2);
    v6 = sub_232CC7044(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC7250(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_232CC73EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232CC740C(uint64_t *a1)
{
  sub_232CC7448(a1);

  return sub_232CA84A4(a1);
}

void sub_232CC7448(void *a1)
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

          MEMORY[0x238392C10](v5, 0x1012C40EC159624);
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

unsigned int *sub_232CC74E8(unsigned int *result, int a2)
{
  v2 = result[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return sub_232CC74FC(result, v4);
  }

  return result;
}

unsigned int *sub_232CC74FC(void *a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v2 + a2;
  v5 = a1[2];
  if (v3 < v2 + a2)
  {
    v7 = *a1;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 24))
      {
        sub_232CC764C(*a1);
      }

      v12 = sub_232CB4000(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      v12 = operator new(v10 + 8);
    }

    a1[2] = v12;
    *(a1 + 3) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(v12 + 2, v5 + 2, 8 * v13);
      v12 = a1[2];
      *v12 = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v12 = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        v12 = a1[2];
      }
    }

    v2 = *(a1 + 2);
    v5 = v12;
  }

  return &v5[2 * v2 + 2];
}

uint64_t sub_232CC7684(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_284815CC0;
  *(a1 + 16) = &unk_284815C80;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_284815C80;
  *(a1 + 40) = 0;
  sub_232CB32B4((a1 + 88));
  sub_232CC7778(a1, a2, a3, &v7);
  sub_232CB34D4((a1 + 88), &v7);
  sub_232CB32BC(&v7);
  return a1;
}

void sub_232CC7754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB32BC(va);
  sub_232CB32BC((v3 + 88));
  _Unwind_Resume(a1);
}

void *sub_232CC7778@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sub_232C80728(a2, a3, &v12, a4);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    result = sub_232CB1748(&v13, 4uLL, a4);
    if (!*a4)
    {
      sub_232CB32BC(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sub_232C80728(v13, v14, &v11, a4);
      if (!*a4)
      {
        sub_232CB32BC(a4);
        result = sub_232CB1748(&v13, 4uLL, a4);
        if (!*a4)
        {
          sub_232CB32BC(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sub_232C80728(v13, v14, &v10, a4);
          if (!*a4)
          {
            sub_232CB32BC(a4);
            result = sub_232CB1748(&v13, 4uLL, a4);
            if (!*a4)
            {
              sub_232CB32BC(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sub_232C8051C(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sub_232CB32BC(a4);
                result = sub_232CB1748(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sub_232CB32BC(a4);
                  *(a1 + 56) = v13;
                  v8 = sub_232CB16B8(*(a1 + 48), 4uLL);
                  result = sub_232CB1748(&v13, v8, a4);
                  if (!*a4)
                  {
                    sub_232CB32BC(a4);
                    *(a1 + 64) = v13;
                    result = sub_232CB1748(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sub_232CB32BC(a4);
                      *(a1 + 72) = v13;
                      result = sub_232CB1748(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        v9 = sub_232CB32BC(a4);
                        *(a1 + 80) = v13;
                        return sub_232CB32B4(v9);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_232CC79BC(void *a1)
{
  *a1 = &unk_284815CC0;
  sub_232CB32BC(a1 + 11);
  return a1;
}

void sub_232CC7A00(void *a1)
{
  *a1 = &unk_284815CC0;
  sub_232CB32BC(a1 + 11);

  JUMPOUT(0x238392C10);
}

uint64_t sub_232CC7A6C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = **(a1 + 72);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7AA0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7AD4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7B08(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7B3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7B94(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  v3 = *(*(a1 + 72) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

id sub_232CCAA1C()
{
  if (qword_2814E2600 != -1)
  {
    dispatch_once(&qword_2814E2600, &unk_284815D98);
  }

  v1 = qword_2814E2608;

  return v1;
}

void sub_232CCAA70()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.TextUnderstanding", "Server XPCClient");
  v2 = qword_2814E2608;
  qword_2814E2608 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_232CCAACC()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.TextUnderstanding", "File Notification");
  v2 = qword_27DDD4DD0;
  qword_27DDD4DD0 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_232CDFDC8(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v8 = *MEMORY[0x277CCA050];
  v9 = 1;
  v10 = MEMORY[0x277D86220];
  do
  {
    v11 = v9;
    v12 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5, v6, v7);
    v53 = 0;
    v14 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v12, v13, v2, 1, 0, &v53);
    v15 = v53;

    if (v14)
    {
      goto LABEL_15;
    }

    if (objc_msgSend_code(v15, v16, v17, v18, v19) == 640)
    {
      v24 = objc_msgSend_domain(v15, v20, v21, v22, v23);
      isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v8, v26, v27);

      if (isEqualToString)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v55 = v2;
          _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DUPaths: _createDirectoryAtPath: exiting due to lack of disk space while creating %@", buf, 0xCu);
        }

        if (objc_msgSend_isInternalBuild(MEMORY[0x277D42590], v48, v49, v50, v51) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "DUPaths: unable to create directory due to lack of space.", buf, 2u);
        }

        v47 = 4002;
        goto LABEL_30;
      }
    }

    if (objc_msgSend_code(v15, v20, v21, v22, v23) == 513)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v2;
        _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DUPaths: _createDirectoryAtPath: exiting due to lack of write permissions to directory %@", buf, 0xCu);
      }

      if (objc_msgSend_isInternalBuild(MEMORY[0x277D42590], v43, v44, v45, v46) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v55 = v2;
        _os_log_fault_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "DUPaths: unable to create directory %@ due to lack of permissions.", buf, 0xCu);
      }

LABEL_23:
      v47 = 4003;
LABEL_30:
      _exit(v47);
    }

    if (objc_msgSend_code(v15, v29, v30, v31, v32) != 516)
    {
      if (v15)
      {
        objc_msgSend_handleError_(FileErrorCode, v4, v15, v6, v7);
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v55 = v2;
      v56 = 2112;
      v57 = v15;
      _os_log_error_impl(&dword_232B02000, v10, OS_LOG_TYPE_ERROR, "DUPaths: deleting file squatting at %@ due to error %@", buf, 0x16u);
    }

    v37 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v33, v34, v35, v36);
    v52 = 0;
    objc_msgSend_removeItemAtPath_error_(v37, v38, v2, &v52, v39);
    v40 = v52;

    if (v40)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v55 = v2;
        v56 = 2112;
        v57 = v40;
        _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DUPaths: exiting due to failure to delete squatter file %@ due to error %@", buf, 0x16u);
      }

      goto LABEL_23;
    }

    v9 = 0;
  }

  while ((v11 & 1) != 0);
  v15 = 0;
LABEL_14:
  v41 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v4, v5, v6, v7);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, sel__createDirectoryAtPath_, v3, @"DUPaths.m", 239, @"DUPaths: _createDirectoryAtPath: %@ error: %@", v2, v15);

LABEL_15:
  objc_sync_exit(v3);
}

id sub_232CE01FC(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = @"TextUnderstanding";
  v4 = objc_opt_self();
  v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 0, v7, v8);

  if (!v9 || !objc_msgSend_length(v9, v10, v11, v12, v13))
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11, v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, sel_topDirectoryWithName_createIfNeeded_, v4, @"DUPaths.m", 133, @"failed to construct the root path");
  }

  v14 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_stringByAppendingPathComponent_(v9, v15, @"TextUnderstanding", v16, v17);
  objc_autoreleasePoolPop(v14);
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v22 = 138412290;
  v23 = v18;
  _os_log_debug_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "using top directory: %@", &v22, 0xCu);
  if (a2)
  {
LABEL_5:
    sub_232CDFDC8(v4, v18);
  }

LABEL_6:

  return v18;
}

void sub_232CE044C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_232CE01FC(*(a1 + 32), 1);
  v4 = qword_27DDD4DE0;
  qword_27DDD4DE0 = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_232CE0890(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = objc_msgSend_objcForResponse_(DUObjCCompatibilityUtils, v6, a2, v7, v8);
  (*(*(a1 + 32) + 16))();
}

void sub_232CE27DC(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238393A20]();
  if (v4 == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v3, "event_type");
    if (strcmp(string, "mds_index_updated") && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DocumentUnderstanding: DocumentUpdateHandler unknown event name", &v17, 2u);
    }

    uint64 = xpc_dictionary_get_uint64(v3, "num_updates");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = string;
      v19 = 1024;
      v20 = uint64;
      _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: DocumentUpdateHandler received event %s with number of updates %d", &v17, 0x12u);
    }

    objc_msgSend_triggerSpotlightFileUpdateNoArgsWithReply_(*(a1 + 32), v13, &unk_284815DD8, v14, v15);
  }

  else
  {
    v5 = v4;
    v6 = MEMORY[0x277D86480];
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v5 == v6)
    {
      if (v7)
      {
        v16 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v17 = 136315138;
        v18 = v16;
        v8 = MEMORY[0x277D86220];
        v9 = "DocumentUnderstanding: received DocumentUpdateHandler connection error %s";
        v10 = 12;
        goto LABEL_14;
      }
    }

    else if (v7)
    {
      LOWORD(v17) = 0;
      v8 = MEMORY[0x277D86220];
      v9 = "DocumentUnderstanding: DocumentUpdateHandler XPC connction unknown message type";
      v10 = 2;
LABEL_14:
      _os_log_error_impl(&dword_232B02000, v8, OS_LOG_TYPE_ERROR, v9, &v17, v10);
    }
  }
}

void sub_232CE29E8()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: DocumentUpdateHandler completed call to triggerSpotlightFileUpdateNoArgsWithReply", v0, 2u);
  }
}

void sub_232CE2B74(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238393A20]();
  if (v4 == MEMORY[0x277D86450])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v3;
      _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: DocumentUpdateHandler connection %p event from client", &v14, 0xCu);
    }

    objc_msgSend__newClientConnection_withTextUnderstandingManager_(*(a1 + 32), v11, v3, *(a1 + 40), v12);
  }

  else
  {
    v5 = v4;
    v6 = MEMORY[0x277D86480];
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v5 == v6)
    {
      if (v7)
      {
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v14 = 136315138;
        v15 = string;
        v8 = MEMORY[0x277D86220];
        v9 = "DocumentUnderstanding: DocumentUpdateHandler xpc connection error: %s";
        v10 = 12;
        goto LABEL_11;
      }
    }

    else if (v7)
    {
      LOWORD(v14) = 0;
      v8 = MEMORY[0x277D86220];
      v9 = "DocumentUnderstanding: DocumentUpdateHandler unknown message type";
      v10 = 2;
LABEL_11:
      _os_log_error_impl(&dword_232B02000, v8, OS_LOG_TYPE_ERROR, v9, &v14, v10);
    }
  }
}

void sub_232CE302C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_232CE3118(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = qword_27DDD4DF0;
  qword_27DDD4DF0 = v2;

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_232CE3384(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  objc_msgSend_setClientProcessName_(v5, v7, a3, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D42550]);
  v15 = objc_msgSend_processIdentifier(v6, v11, v12, v13, v14);
  v19 = objc_msgSend_initWithProcessIdentifier_(v10, v16, v15, v17, v18);
  objc_msgSend_setBundleIdResolver_(*(a1 + 32), v20, v19, v21, v22);

  v24 = objc_msgSend_checkForAndLogTrueBooleanEntitlement_connection_serviceName_(DUXPCServerHelper, v23, @"com.apple.TextUnderstanding.DocumentUnderstandingHarvesting", v6, @"com.apple.TextUnderstanding.DocumentUnderstandingHarvesting");
  return v24;
}

void sub_232CE3434()
{
  v0 = sub_232CCAA1C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_232B02000, v0, OS_LOG_TYPE_DEFAULT, "DUXPCServerHelper received call to invalidation handler", v1, 2u);
  }
}

void sub_232CE349C()
{
  v0 = sub_232CCAA1C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_232B02000, v0, OS_LOG_TYPE_DEFAULT, "DUXPCServerHelper received call to interruption handler", v1, 2u);
  }
}

void sub_232CE3648(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "synchronousEventExtractionWithSerializedDocument failed with error: %@", &v12, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = objc_msgSend_count(v5, v8, v9, v10, v11);
      _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "synchronousEventExtractionWithSerializedDocument completed. Detected %ld entities", &v12, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_232CE3864(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "requestExtractionOfPersonalIDFromDocument failed with error: %@", &v13, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
LABEL_5:
    v9();
    goto LABEL_10;
  }

  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "requestExtractionOfPersonalIDFromDocument completed. No entities detected", &v13, 2u);
    }

    v9 = *(*(a1 + 32) + 16);
    goto LABEL_5;
  }

  v10 = objc_alloc(MEMORY[0x277D06980]);
  isPartialExtraction = objc_msgSend_initWithResultType_attributes_isPartialExtraction_(v10, v11, a3, v7, 0);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = a3;
    _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "requestExtractionOfPersonalIDFromDocument completed. Detected entity of type '%ld'", &v13, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

LABEL_10:
}

id sub_232CE3EF8(int a1, int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x400uLL);
  *__error() = 0;
  v4 = proc_name(a1, buffer, 0x400u);
  if (a2)
  {
    *a2 = *__error();
  }

  if ((v4 & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = objc_msgSend_initWithBytes_length_encoding_(v5, v6, buffer, v4, 4);
  }

  return v7;
}

void sub_232CE43B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 160));
  _Unwind_Resume(a1);
}

void sub_232CE43E8(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = sub_232CCAA1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2048;
      v16 = objc_msgSend_processIdentifier(WeakRetained, v4, v5, v6, v7);
      _os_log_impl(&dword_232B02000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was interrupted.", &v11, 0x20u);
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_232CE44EC(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = sub_232CCAA1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2048;
      v16 = objc_msgSend_processIdentifier(WeakRetained, v4, v5, v6, v7);
      _os_log_impl(&dword_232B02000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was invalidated.", &v11, 0x20u);
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

uint64_t sub_232CE4820(uint64_t a1)
{
  if (!qword_27DDD4E00)
  {
    qword_27DDD4E00 = _sl_dlopen();
  }

  return qword_27DDD4E00;
}

uint64_t sub_232CE48F0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DDD4E10;
  v6 = qword_27DDD4E10;
  if (!qword_27DDD4E10)
  {
    v1 = sub_232CE4A2C();
    v4[3] = dlsym(v1, "CopyHTMLForIWorkFileAtURL");
    qword_27DDD4E10 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_232CE49C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_232CE49DC(uint64_t a1)
{
  v2 = sub_232CE4A2C();
  result = dlsym(v2, "CopyHTMLForIWorkFileAtURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DDD4E10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_232CE4A2C()
{
  v13 = 0;
  v0 = sub_232CE4820(&v13);
  if (!v0)
  {
    v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v1, v2, v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void *iWorkImportLibrary(void)", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v12, v11, @"iWorkImportCompatibility.m", 13, @"%s", v13);

    __break(1u);
    goto LABEL_5;
  }

  v5 = v0;
  v6 = v13;
  if (v13)
  {
LABEL_5:
    free(v6);
  }

  return v5;
}

uint64_t sub_232CE4ADC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27DDD4E00 = result;
  return result;
}

uint64_t sub_232CE4C40()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DDD4E08;
  v6 = qword_27DDD4E08;
  if (!qword_27DDD4E08)
  {
    v1 = sub_232CE4A2C();
    v4[3] = dlsym(v1, "CopyHTMLForIWorkDataWithUTI");
    qword_27DDD4E08 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_232CE4D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_232CE4D2C(uint64_t a1)
{
  v2 = sub_232CE4A2C();
  result = dlsym(v2, "CopyHTMLForIWorkDataWithUTI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DDD4E08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_232CE5314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_232CE5334(uint64_t a1)
{
  if (!qword_27DDD4E18)
  {
    qword_27DDD4E18 = _sl_dlopen();
  }

  return qword_27DDD4E18;
}

void sub_232CE5404(void *a1)
{
  v22 = 0;
  if (sub_232CE5334(&v22))
  {
    v6 = v22;
    if (!v22)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v2, v3, v4, v5);
    a1 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void *OfficeImportLibrary(void)", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v11, v15, a1, @"OfficeImportCompatibility.m", 17, @"%s", v22);

    __break(1u);
  }

  free(v6);
LABEL_3:
  *(*(a1[4] + 8) + 24) = objc_getClass("OISpotlightImporter");
  if (*(*(a1[4] + 8) + 24))
  {
    qword_27DDD4E20 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8, v9, v10);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "Class getOISpotlightImporterClass(void)_block_invoke", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v16, v21, v20, @"OfficeImportCompatibility.m", 18, @"Unable to find class %s", "OISpotlightImporter");

    __break(1u);
  }
}

uint64_t sub_232CE554C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27DDD4E18 = result;
  return result;
}

void sub_232CE5704(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_232CE57CC;
  block[3] = &unk_2789A7E10;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_232CE57CC(void *a1)
{
  if (*(a1[4] + 32))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = *(a1[4] + 32);
    if (isKindOfClass)
    {
      (*(v4 + 16))(v4, a1[5], 0);
    }

    else
    {
      v5 = a1[6];
      if (v5)
      {
        (*(v4 + 16))(v4, 0, v5);
      }

      else
      {
        v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v3, @"PageContentFetcher", -1, 0);
        (*(v4 + 16))(v4, 0, v8);
      }
    }

    v6 = a1[4];
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;
  }
}

void sub_232CE5950(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

id sub_232CE5A98(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return objc_msgSend_loadHTMLString_baseURL_(*(*(a1 + 32) + 8), v5, *(a1 + 40), 0, v6);
}

void sub_232CE5FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232CE5FD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_232CE6168(a1, a2, a3, a4, a5);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebsiteDataStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27DDD4E30 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7, v8, v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "Class getWKWebsiteDataStoreClass(void)_block_invoke", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v15, v14, @"PageContentFetcher.m", 21, @"Unable to find class %s", "WKWebsiteDataStore");

    __break(1u);
  }
}

void sub_232CE60A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_232CE6168(a1, a2, a3, a4, a5);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebpagePreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27DDD4E40 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7, v8, v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "Class getWKWebpagePreferencesClass(void)_block_invoke", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v15, v14, @"PageContentFetcher.m", 22, @"Unable to find class %s", "WKWebpagePreferences");

    __break(1u);
  }
}

void sub_232CE6168(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  if (!qword_27DDD4E38)
  {
    v12[1] = MEMORY[0x277D85DD0];
    v12[2] = 3221225472;
    v12[3] = sub_232CE62B8;
    v12[4] = &unk_2789A7E98;
    v12[5] = v12;
    v13 = xmmword_2789A7E80;
    v14 = 0;
    qword_27DDD4E38 = _sl_dlopen();
  }

  if (!qword_27DDD4E38)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void *WebKitLibrary(void)", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v11, v10, @"PageContentFetcher.m", 17, @"%s", v12[0]);

    __break(1u);
    goto LABEL_7;
  }

  v5 = v12[0];
  if (v12[0])
  {
LABEL_7:
    free(v5);
  }
}

uint64_t sub_232CE62B8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27DDD4E38 = result;
  return result;
}

void sub_232CE6590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_232CE67F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_232C8BFB4(va);
  _Unwind_Resume(a1);
}

void sub_232CE697C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232CE6BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_232CB32BC(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232CE6C40(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x238392C10](v3, 0x10B3C403AC161EFLL);

  _Unwind_Resume(a1);
}

sqlite3 *DU_UDF_prenorm_cosine_distance_create_function(sqlite3 *result)
{
  if (result)
  {
    return sqlite3_create_function(result, "prenorm_cosine_distance", 2, 1, 0, DU_UDF_prenorm_cosine_distance, 0, 0);
  }

  return result;
}

void DU_UDF_prenorm_cosine_distance(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 2 && ((v5 = sqlite3_value_bytes(*a3) >> 2, v6 = sqlite3_value_bytes(a3[1]) >> 2, v5 >= 1) ? (v7 = v5 == v6) : (v7 = 0), v7))
  {
    sqlite3_value_blob(*a3);
    sqlite3_value_blob(a3[1]);
    cblas_sdot_NEWLAPACK();
    v9 = 1.0 - v8;

    sqlite3_result_double(a1, v9);
  }

  else
  {

    sqlite3_result_null(a1);
  }
}

char *sub_232CE6D74(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CA5DD0(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

unsigned __int8 *sub_232CE6E3C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CA6D30(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_232CE6F04(uint64_t a1, char *a2, int32x2_t *a3)
{
  v275 = a2;
  v5 = sub_232CA8068(a3, &v275, a3[11].u32[1]);
  v6 = v275;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = v6 + 1;
    v8 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v8 + (*v7 << 7) - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = v6 + 2;
LABEL_6:
      v275 = v7;
      goto LABEL_7;
    }

    v26 = sub_232CC2220(v6, v8);
    v275 = v26;
    if (!v26)
    {
      return;
    }

    v7 = v26;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v275 = v9 + 1;
          if (!*(a1 + 72))
          {
            v11 = *(a1 + 68);
LABEL_16:
            sub_232CC74E8((a1 + 56), v11 + 1);
            v10 = *(a1 + 72);
            goto LABEL_17;
          }

          sub_232CB0664();
          if (v12 != v13)
          {
            sub_232CB064C();
            *(a1 + 64) = v15;
            v17 = *(v16 + 8);
            goto LABEL_22;
          }

          if (v11 == *(a1 + 68))
          {
            goto LABEL_16;
          }

LABEL_17:
          sub_232CB06A0(v10);
          v18 = *(a1 + 56);
          if (!v18)
          {
            sub_232CB06AC();
          }

          if (*(v18 + 24))
          {
            v24 = sub_232CB0604();
            (*(v25 + 40))(v24, &unk_284815898, 24);
          }

          v19 = sub_232CB058C();
          sub_232CB067C(v19);
          sub_232CB0670();
          *(a1 + 64) = v20;
          v17 = sub_232CB0658(v21, v22);
LABEL_22:
          v275 = sub_232CC2264(v17, v14, a3);
          if (v275)
          {
            sub_232CB0640();
            if (!(!v210 & v23) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        sub_232CB0694(*(a1 + 40) | 1);
        if (v43)
        {
          sub_232CB0688();
        }

        v44 = (a1 + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v153 = v7 + 1;
        v152 = *v7;
        if ((v152 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        sub_232CB0560();
        if (v155 < 0)
        {
          v275 = sub_232CC21D8(v154, v152);
          if (!v275)
          {
            return;
          }
        }

        else
        {
          v153 = (v154 + 2);
LABEL_183:
          v275 = v153;
        }

        if ((v152 - 1) > 3)
        {
          v269 = *(a1 + 8);
          if (v269)
          {
            v270 = ((v269 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v273 = v152;
            v274 = sub_232CA81A8((a1 + 8));
            v152 = v273;
            v270 = v274;
          }

          sub_232CC20C0(3, v152, v270);
        }

        else
        {
          *(a1 + 40) |= 0x800000u;
          *(a1 + 272) = v152;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x1000000);
        if ((v100 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        sub_232CB0578();
        if (v103 < 0)
        {
          v237 = sub_232CC21D8(v102, v100);
          v275 = v237;
          *(a1 + 276) = v238;
          if (!v237)
          {
            return;
          }
        }

        else
        {
          v101 = (v102 + 2);
LABEL_122:
          v275 = v101;
          *(a1 + 276) = v100;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v125 = v7 - 1;
        while (1)
        {
          v275 = v125 + 1;
          if (!*(a1 + 96))
          {
            break;
          }

          sub_232CB0664();
          if (v12 == v13)
          {
            if (v127 == *(a1 + 92))
            {
LABEL_154:
              sub_232CC74E8((a1 + 80), v127 + 1);
              v126 = *(a1 + 96);
            }

            sub_232CB06A0(v126);
            v132 = *(a1 + 80);
            if (!v132)
            {
              sub_232CB06AC();
            }

            if (*(v132 + 24))
            {
              v137 = sub_232CB0604();
              (*(v138 + 40))(v137, &unk_284815898, 24);
            }

            v133 = sub_232CB058C();
            sub_232CB067C(v133);
            sub_232CB0670();
            *(a1 + 88) = v134;
            v131 = sub_232CB0658(v135, v136);
            goto LABEL_160;
          }

          sub_232CB064C();
          *(a1 + 88) = v129;
          v131 = *(v130 + 8);
LABEL_160:
          v275 = sub_232CC2264(v131, v128, a3);
          if (!v275)
          {
            return;
          }

          sub_232CB0640();
          if (!(!v210 & v23) || *v125 != 42)
          {
            goto LABEL_267;
          }
        }

        v127 = *(a1 + 92);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x200);
        if ((v148 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        sub_232CB0578();
        if (v151 < 0)
        {
          v251 = sub_232CC21D8(v150, v148);
          v275 = v251;
          *(a1 + 224) = v252;
          if (!v251)
          {
            return;
          }
        }

        else
        {
          v149 = (v150 + 2);
LABEL_178:
          v275 = v149;
          *(a1 + 224) = v148;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        sub_232CB0694(*(a1 + 40) | 2);
        if (v43)
        {
          sub_232CB0688();
        }

        v44 = (a1 + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x2000000u;
        v179 = *v7;
        v118 = v7 + 4;
        *(a1 + 280) = v179;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(*(a1 + 40) | 0x800);
        if ((v77 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        sub_232CB0560();
        if (v80 < 0)
        {
          v227 = sub_232CC21D8(v79, v77);
          v275 = v227;
          *(a1 + 232) = v228;
          if (!v227)
          {
            return;
          }
        }

        else
        {
          v78 = (v79 + 2);
LABEL_100:
          v275 = v78;
          *(a1 + 232) = v77;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x400);
        if ((v180 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        sub_232CB0578();
        if (v183 < 0)
        {
          v257 = sub_232CC21D8(v182, v180);
          v275 = v257;
          *(a1 + 228) = v258;
          if (!v257)
          {
            return;
          }
        }

        else
        {
          v181 = (v182 + 2);
LABEL_234:
          v275 = v181;
          *(a1 + 228) = v180;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x1000);
        if ((v91 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        sub_232CB0578();
        if (v94 < 0)
        {
          v233 = sub_232CC21D8(v93, v91);
          v275 = v233;
          *(a1 + 240) = v234;
          if (!v233)
          {
            return;
          }
        }

        else
        {
          v92 = (v93 + 2);
LABEL_113:
          v275 = v92;
          *(a1 + 240) = v91;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x4000000);
        if ((v139 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        sub_232CB0578();
        if (v142 < 0)
        {
          v247 = sub_232CC21D8(v141, v139);
          v275 = v247;
          *(a1 + 284) = v248;
          if (!v247)
          {
            return;
          }
        }

        else
        {
          v140 = (v141 + 2);
LABEL_169:
          v275 = v140;
          *(a1 + 284) = v139;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x8000000u;
        v119 = *v7;
        v118 = v7 + 4;
        *(a1 + 288) = v119;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x10000000);
        if ((v59 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        sub_232CB0578();
        if (v62 < 0)
        {
          v225 = sub_232CC21D8(v61, v59);
          v275 = v225;
          *(a1 + 292) = v226;
          if (!v225)
          {
            return;
          }
        }

        else
        {
          v60 = (v61 + 2);
LABEL_76:
          v275 = v60;
          *(a1 + 292) = v59;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x20000000);
        if ((v170 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        sub_232CB0578();
        if (v173 < 0)
        {
          v253 = sub_232CC21D8(v172, v170);
          v275 = v253;
          *(a1 + 296) = v254;
          if (!v253)
          {
            return;
          }
        }

        else
        {
          v171 = (v172 + 2);
LABEL_217:
          v275 = v171;
          *(a1 + 296) = v170;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x40000000);
        if ((v174 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        sub_232CB0578();
        if (v177 < 0)
        {
          v255 = sub_232CC21D8(v176, v174);
          v275 = v255;
          *(a1 + 300) = v256;
          if (!v255)
          {
            return;
          }
        }

        else
        {
          v175 = (v176 + 2);
LABEL_222:
          v275 = v175;
          *(a1 + 300) = v174;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(*(a1 + 44) | 1);
        if (v192 < 0 && (sub_232CB0560(), v195 < 0))
        {
          sub_232CC21D8(v194, v193);
          sub_232CB05B4();
          *(a1 + 308) = v263;
          if (!v264)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 308) = v196;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x80000000);
        if ((v188 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        sub_232CB0578();
        if (v191 < 0)
        {
          v261 = sub_232CC21D8(v190, v188);
          v275 = v261;
          *(a1 + 304) = v262;
          if (!v261)
          {
            return;
          }
        }

        else
        {
          v189 = (v190 + 2);
LABEL_244:
          v275 = v189;
          *(a1 + 304) = v188;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(*(a1 + 44) | 2);
        if (v45 < 0 && (sub_232CB0560(), v48 < 0))
        {
          sub_232CC21D8(v47, v46);
          sub_232CB05B4();
          *(a1 + 309) = v219;
          if (!v220)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 309) = v49;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(*(a1 + 44) | 8);
        if (v120 < 0 && (sub_232CB0560(), v123 < 0))
        {
          sub_232CC21D8(v122, v121);
          sub_232CB05B4();
          *(a1 + 311) = v245;
          if (!v246)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 311) = v124;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(*(a1 + 44) | 4);
        if (v198 < 0 && (sub_232CB0560(), v201 < 0))
        {
          sub_232CC21D8(v200, v199);
          sub_232CB05B4();
          *(a1 + 310) = v265;
          if (!v266)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 310) = v202;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(*(a1 + 40) | 0x4000);
        if (v54 < 0 && (sub_232CB0560(), v57 < 0))
        {
          sub_232CC21D8(v56, v55);
          sub_232CB05B4();
          *(a1 + 245) = v223;
          if (!v224)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 245) = v58;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(*(a1 + 40) | 0x10000);
        if (v113 < 0 && (sub_232CB0560(), v116 < 0))
        {
          sub_232CC21D8(v115, v114);
          sub_232CB05B4();
          *(a1 + 247) = v243;
          if (!v244)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 247) = v117;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(*(a1 + 40) | 0x8000);
        if (v81 < 0 && (sub_232CB0560(), v84 < 0))
        {
          sub_232CC21D8(v83, v82);
          sub_232CB05B4();
          *(a1 + 246) = v229;
          if (!v230)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 246) = v85;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v156 = v7 - 2;
        while (1)
        {
          v275 = v156 + 2;
          if (!*(a1 + 120))
          {
            break;
          }

          sub_232CB0664();
          if (v12 == v13)
          {
            if (v158 == *(a1 + 116))
            {
LABEL_194:
              sub_232CC74E8((a1 + 104), v158 + 1);
              v157 = *(a1 + 120);
            }

            sub_232CB06A0(v157);
            v163 = *(a1 + 104);
            if (!v163)
            {
              sub_232CB06AC();
            }

            if (*(v163 + 24))
            {
              v168 = sub_232CB0604();
              (*(v169 + 40))(v168, &unk_284815898, 24);
            }

            v164 = sub_232CB058C();
            sub_232CB067C(v164);
            sub_232CB0670();
            *(a1 + 112) = v165;
            v162 = sub_232CB0658(v166, v167);
            goto LABEL_200;
          }

          sub_232CB064C();
          *(a1 + 112) = v160;
          v162 = *(v161 + 8);
LABEL_200:
          v275 = sub_232CC2264(v162, v159, a3);
          if (!v275)
          {
            return;
          }

          sub_232CB0640();
          if (!(!v210 & v23) || *v156 != 498)
          {
            goto LABEL_267;
          }
        }

        v158 = *(a1 + 116);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v63 = v7 - 2;
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(*(a1 + 44) | 0x10);
        if (v38 < 0 && (sub_232CB0560(), v41 < 0))
        {
          sub_232CC21D8(v40, v39);
          sub_232CB05B4();
          *(a1 + 312) = v217;
          if (!v218)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 312) = v42;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(*(a1 + 44) | 0x20);
        if (v203 < 0 && (sub_232CB0560(), v206 < 0))
        {
          sub_232CC21D8(v205, v204);
          sub_232CB05B4();
          *(a1 + 313) = v267;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 313) = v207;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(*(a1 + 40) | 0x40000);
        if (v95 < 0 && (sub_232CB0560(), v98 < 0))
        {
          sub_232CC21D8(v97, v96);
          sub_232CB05B4();
          *(a1 + 249) = v235;
          if (!v236)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 249) = v99;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(*(a1 + 40) | 0x20000);
        if (v104 < 0 && (sub_232CB0560(), v107 < 0))
        {
          sub_232CC21D8(v106, v105);
          sub_232CB05B4();
          *(a1 + 248) = v239;
          if (!v240)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 248) = v108;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        sub_232CB0694(*(a1 + 40) | 4);
        if (v43)
        {
          sub_232CB0688();
        }

        v44 = (a1 + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(*(a1 + 40) | 0x100000);
        if ((v109 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        sub_232CB0578();
        if (v112 < 0)
        {
          v241 = sub_232CC21D8(v111, v109);
          v275 = v241;
          *(a1 + 252) = v242;
          if (!v241)
          {
            return;
          }
        }

        else
        {
          v110 = (v111 + 2);
LABEL_135:
          v275 = v110;
          *(a1 + 252) = v109;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        sub_232CB0618(*(a1 + 44) | 0x40);
        if ((v31 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        sub_232CB0578();
        if (v34 < 0)
        {
          v215 = sub_232CC21D8(v33, v31);
          v275 = v215;
          *(a1 + 316) = v216;
          if (!v215)
          {
            return;
          }
        }

        else
        {
          v32 = (v33 + 2);
LABEL_38:
          v275 = v32;
          *(a1 + 316) = v31;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        sub_232CB0618(*(a1 + 44) | 0x80);
        if ((v50 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        sub_232CB0578();
        if (v53 < 0)
        {
          v221 = sub_232CC21D8(v52, v50);
          v275 = v221;
          *(a1 + 320) = v222;
          if (!v221)
          {
            return;
          }
        }

        else
        {
          v51 = (v52 + 2);
LABEL_67:
          v275 = v51;
          *(a1 + 320) = v50;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_232CB0618(*(a1 + 44) | 0x100);
        if ((v184 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        sub_232CB0578();
        if (v187 < 0)
        {
          v259 = sub_232CC21D8(v186, v184);
          v275 = v259;
          *(a1 + 324) = v260;
          if (!v259)
          {
            return;
          }
        }

        else
        {
          v185 = (v186 + 2);
LABEL_239:
          v275 = v185;
          *(a1 + 324) = v184;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 8);
        if (v35)
        {
          sub_232CB0634();
        }

        v36 = &off_27DDC8808;
        v37 = (a1 + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 0x10);
        if (v35)
        {
          sub_232CB0634();
        }

        v36 = &off_27DDC8788;
        v37 = (a1 + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 0x20);
        if (v35)
        {
          sub_232CB0634();
        }

        v36 = &off_27DDC87A8;
        v37 = (a1 + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 0x40);
        if (v35)
        {
          sub_232CB0634();
        }

        v36 = &off_27DDC87C8;
        v37 = (a1 + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 0x80);
        if (v35)
        {
          sub_232CB0634();
        }

        v36 = &off_27DDC87E8;
        v37 = (a1 + 208);
LABEL_264:
        v178 = sub_232CB45D4(v37, v36, v35);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(*(a1 + 40) | 0x80000);
        if (v86 < 0 && (sub_232CB0560(), v89 < 0))
        {
          sub_232CC21D8(v88, v87);
          sub_232CB05B4();
          *(a1 + 250) = v231;
          if (!v232)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 250) = v90;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(*(a1 + 40) | 0x2000);
        if (v143 < 0 && (sub_232CB0560(), v146 < 0))
        {
          sub_232CC21D8(v145, v144);
          sub_232CB05B4();
          *(a1 + 244) = v249;
          if (!v250)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 244) = v147;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x200000u;
        v197 = *v7;
        v118 = v7 + 4;
        *(a1 + 256) = v197;
LABEL_251:
        v275 = v118;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(*(a1 + 40) | 0x400000);
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        sub_232CB0560();
        if (v30 < 0)
        {
          v213 = sub_232CC21D8(v29, v27);
          v275 = v213;
          *(a1 + 264) = v214;
          if (!v213)
          {
            return;
          }
        }

        else
        {
          v28 = (v29 + 2);
LABEL_33:
          v275 = v28;
          *(a1 + 264) = v27;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        sub_232CB0694(*(a1 + 40) | 0x100);
        if (v43)
        {
          sub_232CB0688();
        }

        v44 = (a1 + 216);
LABEL_227:
        v178 = sub_232CB44C8(v44, v43);
LABEL_265:
        v208 = sub_232CC2264(v178, v275, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v210 = (v8 & 7) == 4;
        }

        else
        {
          v210 = 1;
        }

        if (v210)
        {
          a3[10].i32[0] = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v211 = *(a1 + 8);
          if (v211)
          {
            v212 = (v211 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v271 = v8;
            v272 = sub_232CA81A8((a1 + 8));
            v8 = v271;
            v212 = v272;
            v7 = v275;
          }

          v208 = sub_232CC2720(v8, v212, v7, a3);
        }

        else
        {
          v208 = sub_232CBACD8((a1 + 16), v8, v7, &unk_27DDD5398, (a1 + 8), a3);
        }

LABEL_266:
        v275 = v208;
        if (!v208)
        {
          return;
        }

LABEL_267:
        v209 = sub_232CA8068(a3, &v275, a3[11].u32[1]);
        v6 = v275;
        if (v209)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v275 = v63 + 2;
    if (!*(a1 + 144))
    {
      break;
    }

    sub_232CB0664();
    if (v12 == v13)
    {
      if (v65 == *(a1 + 140))
      {
LABEL_85:
        sub_232CC74E8((a1 + 128), v65 + 1);
        v64 = *(a1 + 144);
      }

      sub_232CB06A0(v64);
      v70 = *(a1 + 128);
      if (!v70)
      {
        sub_232CB06AC();
      }

      if (*(v70 + 24))
      {
        v75 = sub_232CB0604();
        (*(v76 + 40))(v75, &unk_284815898, 24);
      }

      v71 = sub_232CB058C();
      sub_232CB067C(v71);
      sub_232CB0670();
      *(a1 + 136) = v72;
      v69 = sub_232CB0658(v73, v74);
      goto LABEL_91;
    }

    sub_232CB064C();
    *(a1 + 136) = v67;
    v69 = *(v68 + 8);
LABEL_91:
    v275 = sub_232CC2264(v69, v66, a3);
    if (!v275)
    {
      return;
    }

    sub_232CB0640();
    if (!(!v210 & v23) || *v63 != 506)
    {
      goto LABEL_267;
    }
  }

  v65 = *(a1 + 140);
  goto LABEL_85;
}

char *sub_232CE7F74(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CAC45C(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

unsigned __int8 *sub_232CE803C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CAD3AC(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_232CE8104(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    v9 = sub_232CE88A0(a3, v7);
    if (!v9)
    {
      return;
    }

    v8 = v9;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sub_232CE6F04(a2, v8, a1);
    if (v15)
    {
      ++a1[11].i32[0];
      if (!a1[10].i32[0])
      {
        v16 = a1[3].i32[1] + v14;
        a1[3].i32[1] = v16;
        *a1 = (*&a1[1] + (v16 & (v16 >> 31)));
      }
    }
  }
}

char *sub_232CE81CC(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CAB7D4(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

char *sub_232CE8294(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CACB78(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_232CE835C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    v6 = &v5[32 * *(a1 + 10)];
    v7 = *(a2 + 16);
    if (v4 > 0x100)
    {
      v12 = sub_232CB99CC(v5, v6, *v7, (v7 + 8));
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 10);
      if (*(a1 + 10) && *(a2 + 10))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    sub_232CB980C(a1, v12);
  }

  v13 = *(a2 + 16);
  if (*(a2 + 8) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    sub_232CBF9A4(v17, v18, a1);
  }

  else if (*(a2 + 10))
  {
    v14 = &v13[8 * *(a2 + 10)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      sub_232CB9AD4(a1, v16, v13 + 1);
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t sub_232CE8490()
{
  sub_232CC1714();
  sub_232CC16F4();
  sub_232CC16E0();
  sub_232CBFE10(v2, v3, v4);
  sub_232CC1704();
  v5 = sub_232CC1734();
  v7 = v6(v5);
  result = 0;
  if (v7)
  {
    if ((v1 & 2) != 0)
    {
      return 1;
    }

    sub_232CC1728();
    if ((*(v9 + 48))(v0))
    {
      return 1;
    }

    else
    {
      sub_232CC0DD0(v0);
      return 0;
    }
  }

  return result;
}

_OWORD *sub_232CE8580()
{
  sub_232CC4894();
  if (*(v7 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v8 = *(v2 + 8);
  if (v8 - v3 + *(v2 + 28) >= v0)
  {
    v9 = *(v1 + 23);
    if (v9 < 0)
    {
      v9 = *(v1 + 8);
    }

    sub_232CC4854(v9);
    v8 = *(v2 + 8);
  }

  v10 = v8 - v3 + 16;
  while (1)
  {
    v11 = __OFSUB__(v0, v10);
    v0 -= v10;
    if ((v0 < 0) ^ v11 | (v0 == 0))
    {
      sub_232CC48A8(v4, v5, v6, v7);
      v12 = sub_232CB571C(v17, "CHECK failed: size > chunk_size: ");
      sub_232CB5858(&v16, &v12->__r_.__value_.__l.__data_);
      v4 = sub_232CB5860(v17);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_232CC48C8(v4, v5, v10);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_232CC17E8(v2);
    if (!result)
    {
      return result;
    }

    sub_232CC487C();
    if (v15 ^ v11 | v14)
    {
      sub_232CC48C8(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_232CE8694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_232CE86AC()
{
  sub_232CC4894();
  v8 = *(v4 + 8);
  if (v8 - v5 + *(v4 + 28) >= v6)
  {
    v9 = *(v1 + 23);
    if (v9 < 0)
    {
      v9 = *(v1 + 8);
    }

    sub_232CC4854(v9);
    v8 = *(v2 + 8);
  }

  v10 = v8 - v3 + 16;
  while (1)
  {
    v11 = __OFSUB__(v0, v10);
    v0 -= v10;
    if ((v0 < 0) ^ v11 | (v0 == 0))
    {
      sub_232CC48A8(v4, v5, v6, v7);
      v12 = sub_232CB571C(v17, "CHECK failed: size > chunk_size: ");
      sub_232CB5858(&v16, &v12->__r_.__value_.__l.__data_);
      v4 = sub_232CB5860(v17);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_232CC48C8(v4, v5, v10);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_232CC17E8(v2);
    if (!result)
    {
      return result;
    }

    sub_232CC487C();
    if (v15 ^ v11 | v14)
    {
      sub_232CC48C8(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_232CE87A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_232CE87B8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v15;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v9 = sub_232CA84D8(a1, v8, v7);
  v10 = *(a1 + 88);
  v11 = __OFSUB__(v10--, 1);
  *(a1 + 88) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, a1);
    if (!result)
    {
      return result;
    }

    ++*(a1 + 88);
    if (!*(a1 + 80))
    {
      v14 = *(a1 + 28) + v12;
      *(a1 + 28) = v14;
      *a1 = *(a1 + 8) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

uint64_t sub_232CE88A0(uint64_t a1, int a2)
{
  result = a1 + 2;
  v4 = -21;
  while (1)
  {
    a2 += (*(result - 1) - 1) << (v4 + 28);
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(a1 + 4);
      v6 = a1 + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x2821DE300](string);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
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

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}