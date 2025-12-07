void sub_186843984(void *a1, uint64_t *a2)
{
  std::vector<unsigned long>::resize(a1, *(a2 + 2));
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  if (v5 != *a1)
  {
    v7 = 0;
    v8 = v6 >> 3;
    v9 = *a2;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      *v4++ = *(v9 + (v7 >> 30));
      v7 += 0x100000000;
      --v8;
    }

    while (v8);
  }
}

int **sub_1868439EC(int **result, uint64_t *a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v7 = *(a2 + 2);
      if (v7 == *(a2 + 3))
      {
        result = AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 2);
        v2 = v5[1];
      }

      v8 = *a2;
      *(a2 + 2) = v7 + 1;
      *(v8 + 4 * v7) = v6;
      v3 += 2;
    }

    while (v3 != v2);
  }

  return result;
}

void sub_186843A64()
{
  if (__cxa_guard_acquire(&qword_1EA905378))
  {
    xmmword_1EA905380 = 0uLL;
    unk_1EA905390 = 0;

    __cxa_guard_release(&qword_1EA905378);
  }
}

std::string *sub_186843D8C@<X0>(uint64_t a1@<X0>, const std::string::value_type **a2@<X1>, AddrObjGoogle::protobuf *a3@<X2>, std::string *a4@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a1, *(a1 + 8));
  }

  else
  {
    *a4 = *a1;
  }

  if (*(a2 + 52) == 1)
  {
    std::string::append(a4, "(");
    v7 = a2[1];
    v8 = v7[23];
    if (v8 >= 0)
    {
      v9 = a2[1];
    }

    else
    {
      v9 = *v7;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 1);
    }

    std::string::append(a4, v9, v10);
    std::string::append(a4, ")");
  }

  else
  {
    v11 = (*a2)[23];
    if (v11 >= 0)
    {
      v12 = *a2;
    }

    else
    {
      v12 = **a2;
    }

    if (v11 >= 0)
    {
      v13 = *(*a2 + 23);
    }

    else
    {
      v13 = *(*a2 + 1);
    }

    std::string::append(a4, v12, v13);
  }

  if (a3 != -1)
  {
    std::string::append(a4, "[");
    AddrObjGoogle::protobuf::SimpleItoa(__p, a3, v14);
    if ((v19 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __p[1];
    }

    std::string::append(a4, v15, v16);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::append(a4, "]");
  }

  return std::string::append(a4, ".");
}

void sub_186843EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_186843F14(uint64_t a1, uint64_t a2, const std::string::value_type *a3, const std::string::value_type *a4)
{
  AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 84);
  v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v17, "Protocol Buffer reflection usage error:\n  Method      : AddrObjGoogle::protobuf::Reflection::");
  v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, a3);
  v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "\n  Message type: ");
  v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, *(a1 + 8));
  v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "\n  Field       : ");
  v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, *(a2 + 8));
  v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "\n  Problem     : ");
  v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, a4);
  AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v16, v15);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
}

void sub_186843FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_186843FE8(uint64_t a1, uint64_t a2, const std::string::value_type *a3, int a4)
{
  AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 110);
  v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v19, "Protocol Buffer reflection usage error:\n  Method      : AddrObjGoogle::protobuf::Reflection::");
  v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, a3);
  v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "\n  Message type: ");
  v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, *(a1 + 8));
  v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "\n  Field       : ");
  v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, *(a2 + 8));
  v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "\n  Problem     : Field is not the right type for this message:\n    Expected  : ");
  v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, off_1E704DAF0[a4]);
  v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, "\n    Field type: ");
  v17 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, off_1E704DAF0[AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 44)]]);
  AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v18, v17);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
}

void sub_1868440D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1868440E8(uint64_t a1, uint64_t a2, const std::string::value_type *a3, uint64_t a4)
{
  AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/generated_message_reflection.cc", 123);
  v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v19, "Protocol Buffer reflection usage error:\n  Method      : AddrObjGoogle::protobuf::Reflection::");
  v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, a3);
  v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "\n  Message type: ");
  v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, *(a1 + 8));
  v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "\n  Field       : ");
  v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, *(a2 + 8));
  v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "\n  Problem     : Enum value did not match field type:\n    Expected  : ");
  v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, *(*(a2 + 80) + 8));
  v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, "\n    Actual    : ");
  v17 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, *(a4 + 8));
  AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v18, v17);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
}

void sub_1868441BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1868441D4(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
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
        if (*(v76 + 40) < *(*v8 + 40))
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
      v89 = *(v85 + 40);
      v90 = *(*v8 + 40);
      v91 = *(v87 + 40);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = v8 + 1;
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = v8 + 2;
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = v8 + 2;
          result = v88;
          if (v91 >= v90)
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
      if (*(v140 + 40) < *(v85 + 40))
      {
        *v86 = v140;
        *(a2 - 1) = v85;
        v141 = *v86;
        v142 = *v84;
        v143 = *(v141 + 40);
        if (v143 < *(v142 + 40))
        {
          v8[1] = v141;
          v8[2] = v142;
          v144 = *v8;
          if (v143 < *(*v8 + 40))
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

      return sub_186844B88(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
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
            v101 = *(v99 + 40);
            if (v101 < *(v100 + 40))
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
                if (v101 >= *(v100 + 40))
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
          v138 = *(v136 + 40);
          if (v138 < *(v137 + 40))
          {
            v139 = v7;
            do
            {
              *v139 = v137;
              v137 = *(v139 - 2);
              --v139;
            }

            while (v138 < *(v137 + 40));
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
            if (2 * v106 + 2 < v9 && *(v109 + 40) < *(v108[1] + 40))
            {
              v109 = v108[1];
              ++v108;
              v107 = 2 * v106 + 2;
            }

            result = &v8[v106];
            v110 = *result;
            v111 = *(*result + 40);
            if (*(v109 + 40) >= v111)
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
                if (v114 < v9 && *(v109 + 40) < *(v108[1] + 40))
                {
                  v109 = v108[1];
                  ++v108;
                  v113 = v114;
                }

                result = v112;
                v107 = v113;
              }

              while (*(v109 + 40) >= v111);
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
              result = *(v120 + 40);
              if (result >= *(v124 + 40))
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
              v132 = *(*v119 + 40);
              if (*(*v129 + 40) < v132)
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

                while (*(*v129 + 40) < v132);
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
    v13 = *(v12 + 40);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 40);
      v17 = *(*v8 + 40);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 40) < *(*v8 + 40))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 40) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 40);
      v29 = *(v27 + 40);
      v30 = *(a2 - 2);
      v31 = *(v30 + 40);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 40) < *(v32 + 40))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 40) < v29)
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
      v39 = *(v37 + 40);
      v40 = *(v38 + 40);
      v41 = *(a2 - 3);
      v42 = *(v41 + 40);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 40) < *(v43 + 40))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 40) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 40);
      v48 = *(*v25 + 40);
      v49 = *v35;
      v50 = *(*v35 + 40);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
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
    v20 = *(*v8 + 40);
    v21 = *(*v11 + 40);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 40) < *(*v11 + 40))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 40) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 40);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 40) < v53);
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

        while (*(v59 + 40) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 40) >= v53);
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

          while (*(v63 + 40) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 40) >= v53);
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

      v66 = sub_186844CFC(v8, v65);
      v8 = v65 + 1;
      result = sub_186844CFC(v65 + 1, a2);
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
        result = sub_1868441D4(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 40);
      if (*(*(v8 - 1) + 40) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 40))
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

        while (v53 >= *(*v8 + 40));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 40));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 40));
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

          while (v53 >= *(v73 + 40));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 40));
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
  v80 = *(v79 + 40);
  v81 = *(*v8 + 40);
  v82 = *(a2 - 1);
  v83 = *(v82 + 40);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v135 = *v8;
      v134 = v8[1];
      if (*(v134 + 40) < *(*v8 + 40))
      {
        *v8 = v134;
        v8[1] = v135;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v145 = *(a2 - 1);
      if (*(v145 + 40) >= v81)
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

uint64_t *sub_186844B88(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 40);
  v8 = *(*result + 40);
  v9 = *a3;
  v10 = *(*a3 + 40);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
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
    if (*(*a3 + 40) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 40) < *(v5 + 40))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 40) < *(*a2 + 40))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 40) < *(*a4 + 40))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 40) < *(*a3 + 40))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 40) < *(*a2 + 40))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 40) < *(*result + 40))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_186844CFC(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 40);
      v8 = *(*a1 + 40);
      v9 = *(a2 - 1);
      v10 = *(v9 + 40);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 40) < *(*a1 + 40))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 40) >= v8)
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

      sub_186844B88(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 40);
    v26 = *(*a1 + 40);
    v27 = *(v23 + 40);
    if (v25 >= v26)
    {
      if (v27 >= v25)
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
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 40) < *(v21 + 40))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 40);
          if (v45 < *(v44 + 40))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 40))
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
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
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
    if (*(v3 + 40) < *(*a1 + 40))
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
  v15 = *(v13 + 40);
  v16 = *(*a1 + 40);
  v17 = *(v11 + 40);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
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
    v38 = *(*v33 + 40);
    if (v38 < *(v37 + 40))
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
        if (v38 >= *(v37 + 40))
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

void sub_1868450DC(float *a1, uint64_t **a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *v3;
  if (*v3)
  {
    v6 = 0;
    v7 = (v3 + 1);
    do
    {
      v6 = 5 * v6 + v5;
      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = v6 - v4;
  v10 = v9 + (v4 << 16);
  v11 = *(a1 + 2);
  if (!*&v11)
  {
    goto LABEL_24;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v9 + (v4 << 16);
    if (v10 >= *&v11)
    {
      v14 = v10 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v10;
  }

  v15 = *(*a1 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v10)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if (v16[2] != v4 || strcmp(v16[3], v3))
  {
    goto LABEL_23;
  }
}

uint64_t sub_18684552C(uint64_t a1)
{
  v1 = 0;
  v2 = *a1;
  if (*a1 <= 3)
  {
    switch(v2)
    {
      case 1:
        goto LABEL_9;
      case 2:
        v4 = *(a1 + 8) + 32;
        return *v4;
      case 3:
        goto LABEL_9;
    }
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        v3 = *(*(a1 + 8) + 24);
        goto LABEL_15;
      }

      if (v2 != 5)
      {
        return v1;
      }

LABEL_9:
      v3 = *(a1 + 8);
LABEL_15:
      v4 = v3 + 16;
      return *v4;
    }

    if (v2 == 6)
    {
      v3 = *(*(a1 + 8) + 16);
      goto LABEL_15;
    }

    if (v2 == 7)
    {
      v4 = a1 + 8;
      return *v4;
    }
  }

  return v1;
}

unint64_t sub_1868455C0(int8x8_t *a1, uint64_t *a2, char *a3)
{
  v6 = *a2;
  v40 = v6;
  if (v6)
  {
    AddrObjGoogle::protobuf::internal::Mutex::Lock(v6);
  }

  if (a3[23] >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = 0;
    v10 = (v7 + 1);
    do
    {
      v9 = 5 * v9 + v8;
      v11 = *v10++;
      v8 = v11;
    }

    while (v11);
  }

  else
  {
    v9 = 0;
  }

  v12 = a1[26];
  v13 = &qword_1EA905930;
  if (!*&v12)
  {
    goto LABEL_27;
  }

  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v9;
    if (v9 >= *&v12)
    {
      v16 = v9 % *&v12;
    }
  }

  else
  {
    v16 = (*&v12 - 1) & v9;
  }

  v17 = *(*&a1[25] + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_27:
    sub_1868474AC(v6, a2);
    v32 = &qword_1EA905930;
    goto LABEL_28;
  }

  while (1)
  {
    v19 = v18[1];
    if (v9 == v19)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v12)
      {
        v19 %= *&v12;
      }
    }

    else
    {
      v19 &= *&v12 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_27;
    }

LABEL_26:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_27;
    }
  }

  v6 = strcmp(v18[2], v7);
  if (v6)
  {
    goto LABEL_26;
  }

  v32 = v18 + 3;
LABEL_28:
  v20 = *v32;
  v21 = HIDWORD(*v32);
  if (!*v32)
  {
    v23 = a2[3];
    if (!v23 || (v24 = sub_1868455C0(*(v23 + 32), v23, a3), LODWORD(v20) = v24, v21 = HIDWORD(v24), !v24))
    {
      SymbolInFallbackDatabase = AddrObjGoogle::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, a3);
      if (SymbolInFallbackDatabase)
      {
        if (a3[23] < 0)
        {
          a3 = *a3;
        }

        v27 = *a3;
        if (*a3)
        {
          v28 = 0;
          v29 = (a3 + 1);
          v30 = a1;
          do
          {
            v28 = 5 * v28 + v27;
            v31 = *v29++;
            v27 = v31;
          }

          while (v31);
        }

        else
        {
          v28 = 0;
          v30 = a1;
        }

        v33 = v30[26];
        if (v33)
        {
          v34 = vcnt_s8(v33);
          v34.i16[0] = vaddlv_u8(v34);
          v35 = v34.u32[0];
          if (v34.u32[0] > 1uLL)
          {
            v36 = v28;
            if (v28 >= *&v33)
            {
              v36 = v28 % *&v33;
            }
          }

          else
          {
            v36 = (*&v33 - 1) & v28;
          }

          v37 = *(*&a1[25] + 8 * v36);
          if (v37)
          {
            for (i = *v37; i; i = *i)
            {
              v39 = i[1];
              if (v28 == v39)
              {
                SymbolInFallbackDatabase = strcmp(i[2], a3);
                if (!SymbolInFallbackDatabase)
                {
                  v13 = i + 3;
                  goto LABEL_58;
                }
              }

              else
              {
                if (v35 > 1)
                {
                  if (v39 >= *&v33)
                  {
                    v39 %= *&v33;
                  }
                }

                else
                {
                  v39 &= *&v33 - 1;
                }

                if (v39 != v36)
                {
                  break;
                }
              }
            }
          }
        }

        sub_1868474AC(SymbolInFallbackDatabase, v26);
LABEL_58:
        v20 = *v13;
        v21 = HIDWORD(*v13);
      }

      else
      {
        LODWORD(v20) = 0;
      }
    }
  }

  AddrObjGoogle::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v40);
  return v20 | (v21 << 32);
}

void sub_186845898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1868458B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = *v6;
  if (*v6)
  {
    v8 = 0;
    v9 = (v6 + 1);
    do
    {
      v8 = 5 * v8 + v7;
      v10 = *v9++;
      v7 = v10;
    }

    while (v10);
  }

  else
  {
    v8 = 0;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = v8 - a2 + (a2 << 16);
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v15 = v8 - a2 + (a2 << 16);
      if (v12 >= *&v11)
      {
        v15 = v12 % *&v11;
      }
    }

    else
    {
      v15 = (*&v11 - 1) & v12;
    }

    v16 = *(*a1 + 8 * v15);
    if (v16)
    {
      for (i = *v16; i; i = *i)
      {
        v18 = i[1];
        if (v12 == v18)
        {
          if (i[2] == a2)
          {
            a1 = strcmp(i[3], v6);
            if (!a1)
            {
              v20 = i + 4;
              goto LABEL_27;
            }
          }
        }

        else
        {
          if (v14 > 1)
          {
            if (v18 >= *&v11)
            {
              v18 %= *&v11;
            }
          }

          else
          {
            v18 &= *&v11 - 1;
          }

          if (v18 != v15)
          {
            break;
          }
        }
      }
    }
  }

  sub_1868474AC(a1, a2);
  v20 = &qword_1EA905930;
LABEL_27:
  result = *v20;
  if (*v20 != a4)
  {
    sub_1868474AC(result, a2);
    return qword_1EA905930;
  }

  return result;
}

BOOL sub_186845A24(uint64_t a1, uint64_t a2, std::string *a3)
{
  v5 = a1;
  v45 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100](&__p, 2 * a1, 32);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = sub_1868474DC(v5, a2, &v19);
  v8 = v19;
  v7 = v20;
  if (v6)
  {
    if (v20 == v19)
    {
      v7 = v19;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v24;
        p_p = __p;
        if (v24 >= 0)
        {
          p_p = &__p;
        }

        v43 = p_p;
        if (v24 < 0)
        {
          v11 = v23;
        }

        v44 = v11;
        v13 = v8 + v9;
        if (*(v8 + v9 + 23) >= 0)
        {
          v14 = v8 + v9;
        }

        else
        {
          v14 = *(v8 + v9);
        }

        v41 = v14;
        v15 = *(v13 + 23);
        v16 = *(v13 + 8);
        if ((v15 & 0x80u) == 0)
        {
          LODWORD(v16) = v15;
        }

        v42 = v16;
        v39 = 0;
        v40 = -1;
        v37 = 0;
        v38 = -1;
        v35 = 0;
        v36 = -1;
        v33 = 0;
        v34 = -1;
        v31 = 0;
        v32 = -1;
        v29 = 0;
        v30 = -1;
        v27 = 0;
        v28 = -1;
        v25 = 0;
        v26 = -1;
        *(&v18 + 1) = &v29;
        *&v18 = &v31;
        AddrObjGoogle::protobuf::strings::SubstituteAndAppend(a3, "$0option $1;\n", &v43, &v41, &v39, &v37, &v35, &v33, v18, &v27, &v25);
        ++v10;
        v8 = v19;
        v7 = v20;
        v9 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) > v10);
    }
  }

  v43 = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  return v8 != v7;
}

void sub_186845C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 - 144) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v21 - 144));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_186845C54(uint64_t a1, uint64_t a2, std::string *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (sub_1868474DC(a1, a2, &v11))
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    AddrObjGoogle::protobuf::JoinStrings(&v11, ", ", &__p);
    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v10 >= 0)
    {
      v5 = HIBYTE(v10);
    }

    else
    {
      v5 = v9;
    }

    std::string::append(a3, p_p, v5);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }
  }

  v6 = v11 != v12;
  __p = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v6;
}

void sub_186845D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_186845D38(int8x8_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    v7 = (v4 + 1);
    do
    {
      v6 = 5 * v6 + v5;
      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = a1[26];
  if (!*&v9)
  {
    goto LABEL_26;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v6;
    if (v6 >= *&v9)
    {
      v12 = v6 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v6;
  }

  v13 = *(*&a1[25] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v6)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_26;
    }

LABEL_25:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  result = strcmp(v14[2], v4);
  if (result)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1868461BC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  if (!a3)
  {
    v11 = a1[10];
  }

  v14 = sub_186845D38(a1[1], a2, a6, a7);
  if (v14)
  {
    if (sub_1868467F4(a1[11], v11, a4, a6, a7))
    {
      return 1;
    }

    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 2870);
    v23 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, "");
    v24 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v23, a2);
    v25 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v24, " not previously defined in symbols_by_name_, but was defined in symbols_by_parent_; this shouldn't be possible.");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v66, v25);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
  }

  else
  {
    v17 = a1[1];
    if (*(a2 + 23) >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    v19 = *v18;
    if (*v18)
    {
      v20 = 0;
      v21 = (v18 + 1);
      do
      {
        v20 = 5 * v20 + v19;
        v22 = *v21++;
        v19 = v22;
      }

      while (v22);
    }

    else
    {
      v20 = 0;
    }

    v26 = *(v17 + 208);
    if (v26)
    {
      v27 = vcnt_s8(v26);
      v27.i16[0] = vaddlv_u8(v27);
      v28 = v27.u32[0];
      if (v27.u32[0] > 1uLL)
      {
        v29 = v20;
        if (v20 >= *&v26)
        {
          v29 = v20 % *&v26;
        }
      }

      else
      {
        v29 = (*&v26 - 1) & v20;
      }

      v30 = *(*(v17 + 200) + 8 * v29);
      if (v30)
      {
        for (i = *v30; i; i = *i)
        {
          v32 = i[1];
          if (v20 == v32)
          {
            v14 = strcmp(i[2], v18);
            if (!v14)
            {
              v60 = (i + 3);
              v61 = (i + 4);
              goto LABEL_32;
            }
          }

          else
          {
            if (v28 > 1)
            {
              if (v32 >= *&v26)
              {
                v32 %= *&v26;
              }
            }

            else
            {
              v32 &= *&v26 - 1;
            }

            if (v32 != v29)
            {
              break;
            }
          }
        }
      }
    }

    sub_1868474AC(v14, v15);
    v60 = &qword_1EA905930;
    v61 = &qword_1EA905938;
LABEL_32:
    v33 = *v61;
    __p[0].__r_.__value_.__r.__words[0] = *v60;
    __p[0].__r_.__value_.__l.__size_ = v33;
    v34 = sub_18684552C(__p);
    if (v34 == a1[10])
    {
      v46 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
      if (v46 == -1)
      {
        std::operator+<char>();
        v58 = std::string::append(&v66, " is already defined.");
        v59 = *&v58->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v45 = v66.__r_.__value_.__r.__words[0];
      }

      else
      {
        v47 = v46;
        std::string::basic_string(&v63, a2, v46 + 1, 0xFFFFFFFFFFFFFFFFLL, &v62);
        v48 = std::string::insert(&v63, 0, "");
        v49 = *&v48->__r_.__value_.__l.__data_;
        v64.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v64.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        v50 = std::string::append(&v64, " is already defined in ");
        v51 = *&v50->__r_.__value_.__l.__data_;
        v65.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
        *&v65.__r_.__value_.__l.__data_ = v51;
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string(&v62, a2, 0, v47, v68);
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = &v62;
        }

        else
        {
          v52 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v62.__r_.__value_.__l.__size_;
        }

        v54 = std::string::append(&v65, v52, size);
        v55 = *&v54->__r_.__value_.__l.__data_;
        v66.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
        *&v66.__r_.__value_.__l.__data_ = v55;
        v54->__r_.__value_.__l.__size_ = 0;
        v54->__r_.__value_.__r.__words[2] = 0;
        v54->__r_.__value_.__r.__words[0] = 0;
        v56 = std::string::append(&v66, ".");
        v57 = *&v56->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v57;
        v56->__r_.__value_.__l.__size_ = 0;
        v56->__r_.__value_.__r.__words[2] = 0;
        v56->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v45 = v63.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v35 = v34;
      std::operator+<char>();
      v36 = std::string::append(&v64, " is already defined in file ");
      v37 = *&v36->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = *(*v35 + 23);
      if (v38 >= 0)
      {
        v39 = *v35;
      }

      else
      {
        v39 = **v35;
      }

      if (v38 >= 0)
      {
        v40 = *(*v35 + 23);
      }

      else
      {
        v40 = (*v35)[1];
      }

      v41 = std::string::append(&v65, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v66, ".");
      v44 = *&v43->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      AddrObjGoogle::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      v45 = v64.__r_.__value_.__r.__words[0];
    }

    operator delete(v45);
  }

  return 0;
}

void sub_1868466C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1868467F4(float *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = *v6;
  if (*v6)
  {
    v8 = 0;
    v9 = (v6 + 1);
    do
    {
      v8 = 5 * v8 + v7;
      v10 = *v9++;
      v7 = v10;
    }

    while (v10);
  }

  else
  {
    v8 = 0;
  }

  v11 = v8 - a2;
  v12 = v11 + (a2 << 16);
  v13 = *(a1 + 2);
  if (!*&v13)
  {
    goto LABEL_27;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11 + (a2 << 16);
    if (v12 >= *&v13)
    {
      v16 = v12 % *&v13;
    }
  }

  else
  {
    v16 = (*&v13 - 1) & v12;
  }

  v17 = *(*a1 + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_27:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v12)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v13)
      {
        v19 %= *&v13;
      }
    }

    else
    {
      v19 &= *&v13 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_27;
    }

LABEL_26:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_27;
    }
  }

  if (v18[2] != a2)
  {
    goto LABEL_26;
  }

  result = strcmp(v18[3], v6);
  if (result)
  {
    goto LABEL_26;
  }

  return result;
}

unint64_t sub_186846C6C(AddrObjGoogle::protobuf::DescriptorPool::Tables **a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = sub_186847178(a1, a2, a3, a5);
  v8 = v7;
  v9 = HIDWORD(v7);
  if (!v7)
  {
    if (*(*a1 + 41) == 1)
    {
      v10 = AddrObjGoogle::protobuf::DescriptorBuilder::ValidateQualifiedName(v7, a2);
      if (v10)
      {
        if (*(a2 + 23) >= 0)
        {
          v12 = a2;
        }

        else
        {
          v12 = *a2;
        }

        v13 = a1[1];
        if (*v12 == 46)
        {
          std::string::basic_string(&__p, a2, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v16);
          AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateString(v13, &__p);
        }

        AddrObjGoogle::protobuf::DescriptorPool::Tables::AllocateString(a1[1], a2);
      }

      sub_1868474AC(v10, v11);
      v8 = qword_1EA905930;
      v9 = HIDWORD(qword_1EA905930);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 | (v9 << 32);
}

void sub_186847148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_186847178(uint64_t a1, std::string *__str, uint64_t a3, int a4)
{
  *(a1 + 120) = 0;
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__str->__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    v8 = __str->__r_.__value_.__r.__words[0];
  }

  else
  {
    v8 = __str;
    if (!*(&__str->__r_.__value_.__s + 23))
    {
      goto LABEL_8;
    }
  }

  if (v8->__r_.__value_.__s.__data_[0] == 46)
  {
    std::string::basic_string(&v21, __str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &__p);
    v9 = sub_186847AAC(a1, &v21);
    goto LABEL_42;
  }

LABEL_8:
  v10 = std::string::find(__str, 46, 0);
  memset(&v21, 0, sizeof(v21));
  if (v10 == -1)
  {
    std::string::operator=(&v21, __str);
  }

  else
  {
    std::string::basic_string(&__p, __str, 0, v10, &v22);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v21 = __p;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  while (1)
  {
    v11 = std::string::rfind(&__p, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v11 == -1)
    {
      break;
    }

    std::string::erase(&__p, v11, 0xFFFFFFFFFFFFFFFFLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&__p, 1uLL, 46);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v21;
    }

    else
    {
      v13 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v21.__r_.__value_.__l.__size_;
    }

    std::string::append(&__p, v13, v14);
    v15 = sub_186847AAC(a1, &__p);
    v9 = v15;
    if (v15)
    {
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = v21.__r_.__value_.__l.__size_;
      }

      v17 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((v17 & 0x80u) != 0)
      {
        v17 = __str->__r_.__value_.__l.__size_;
      }

      if (v17 <= v16)
      {
        if (a4 != 1 || (v15 & 0xFFFFFFFD) == 1)
        {
          goto LABEL_40;
        }
      }

      else if (((v15 - 1) & 0xFFFFFFF9) == 0)
      {
        std::string::append(&__p, __str, v16, v17 - v16);
        v18 = sub_186847AAC(a1, &__p);
        goto LABEL_39;
      }
    }

    std::string::erase(&__p, size, 0xFFFFFFFFFFFFFFFFLL);
  }

  v18 = sub_186847AAC(a1, __str);
LABEL_39:
  v9 = v18;
LABEL_40:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1868473FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18684744C(void **this)
{
  *this = &unk_1EF7E1F20;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  addr_obj::Localization::getDisplayLanguage(this);
}

void sub_1868474AC(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1EA905928, memory_order_acquire) & 1) == 0)
  {
    sub_186848374();
  }
}

BOOL sub_1868474DC(int a1, uint64_t a2, uint64_t a3)
{
  v55[2] = *MEMORY[0x1E69E9840];
  std::vector<std::string>::clear[abi:ne200100](a3);
  v6 = (*(*a2 + 144))(a2);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v45 = v6;
  (*(*v6 + 96))(v6, a2, &v50);
  v7 = v50;
  if (v51 != v50)
  {
    v8 = 0;
    v46 = a2;
    while (1)
    {
      v47 = *(*&v7[8 * v8] + 48);
      if (v47 != 3)
      {
        break;
      }

      v9 = (*(*v45 + 48))(v45, a2);
      if (v9 >= 1)
      {
        goto LABEL_7;
      }

LABEL_66:
      ++v8;
      v7 = v50;
      if (v8 >= (v51 - v50) >> 3)
      {
        goto LABEL_67;
      }
    }

    v9 = 1;
LABEL_7:
    for (i = 0; i != v9; ++i)
    {
      memset(&v49, 0, sizeof(v49));
      v11 = *&v50[8 * v8];
      if ((*(v11 + 44) & 0xFFFFFFFE) == 0xA)
      {
        memset(&__p, 0, 24);
        AddrObjGoogle::protobuf::TextFormat::Printer::Printer(&v48);
        LODWORD(v48.__r_.__value_.__l.__data_) = a1 + 1;
        if (v47 == 3)
        {
          v12 = i;
        }

        else
        {
          v12 = 0xFFFFFFFFLL;
        }

        AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldValueToString(&v48, a2, *&v50[8 * v8], v12, &__p);
        std::string::append(&v49, "{\n");
        if (SHIBYTE(__p.__end_) >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__first_;
        }

        if (SHIBYTE(__p.__end_) >= 0)
        {
          end_high = HIBYTE(__p.__end_);
        }

        else
        {
          end_high = __p.__begin_;
        }

        std::string::append(&v49, p_p, end_high);
        std::string::append(&v49, 2 * a1, 32);
        std::string::append(&v49, "}");
        addr_obj::Localization::getDisplayLanguage(&v48);
        if (SHIBYTE(__p.__end_) < 0)
        {
          operator delete(__p.__first_);
        }
      }

      else
      {
        if (v47 == 3)
        {
          v15 = i;
        }

        else
        {
          v15 = 0xFFFFFFFFLL;
        }

        AddrObjGoogle::protobuf::TextFormat::PrintFieldValueToString(a2, v11, v15, &v49);
      }

      memset(&v48, 0, sizeof(v48));
      v16 = *&v50[8 * v8];
      if (*(v16 + 52) == 1)
      {
        std::operator+<char>();
        v17 = std::string::append(&__p, ")");
        v18 = v17->__r_.__value_.__r.__words[0];
        v54.__r_.__value_.__r.__words[0] = v17->__r_.__value_.__l.__size_;
        *(v54.__r_.__value_.__r.__words + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
        v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        v48.__r_.__value_.__r.__words[0] = v18;
        v48.__r_.__value_.__l.__size_ = v54.__r_.__value_.__r.__words[0];
        *(&v48.__r_.__value_.__r.__words[1] + 7) = *(v54.__r_.__value_.__r.__words + 7);
        *(&v48.__r_.__value_.__s + 23) = v19;
        if (SHIBYTE(__p.__end_) < 0)
        {
          operator delete(__p.__first_);
        }
      }

      else
      {
        std::string::operator=(&v48, *v16);
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v48.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v54, size + 3);
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v54;
      }

      else
      {
        v21 = v54.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v48;
        }

        else
        {
          v22 = v48.__r_.__value_.__r.__words[0];
        }

        memmove(v21, v22, size);
      }

      *(&v21->__r_.__value_.__l.__data_ + size) = 2112800;
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v49;
      }

      else
      {
        v23 = v49.__r_.__value_.__r.__words[0];
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v49.__r_.__value_.__l.__size_;
      }

      v25 = std::string::append(&v54, v23, v24);
      v26 = v25->__r_.__value_.__r.__words[0];
      v55[0] = v25->__r_.__value_.__l.__size_;
      *(v55 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
      v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v28 = *(a3 + 8);
      v29 = *(a3 + 16);
      if (v28 >= v29)
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *a3) >> 3);
        v33 = v32 + 1;
        if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a3) >> 3);
        if (2 * v34 > v33)
        {
          v33 = 2 * v34;
        }

        if (v34 >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v33;
        }

        __p.__end_cap_.__value_ = a3;
        if (v35)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v35);
        }

        v36 = 24 * v32;
        v37 = v55[0];
        *v36 = v26;
        *(v36 + 8) = v37;
        *(v36 + 15) = *(v55 + 7);
        *(v36 + 23) = v27;
        v31 = 24 * v32 + 24;
        v38 = *(a3 + 8) - *a3;
        v39 = v36 - v38;
        memcpy((v36 - v38), *a3, v38);
        v40 = *a3;
        *a3 = v39;
        *(a3 + 8) = v31;
        v41 = *(a3 + 16);
        *(a3 + 16) = 0;
        __p.__end_ = v40;
        __p.__end_cap_.__value_ = v41;
        __p.__first_ = v40;
        __p.__begin_ = v40;
        std::__split_buffer<std::string>::~__split_buffer(&__p);
        a2 = v46;
      }

      else
      {
        v30 = v55[0];
        *v28 = v26;
        *(v28 + 8) = v30;
        *(v28 + 15) = *(v55 + 7);
        *(v28 + 23) = v27;
        v31 = v28 + 24;
      }

      *(a3 + 8) = v31;
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_66;
  }

LABEL_67:
  v43 = *a3;
  v42 = *(a3 + 8);
  if (v7)
  {
    v51 = v7;
    operator delete(v7);
  }

  return v43 != v42;
}

void sub_1868479EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_186847AAC(uint64_t a1, std::string *a2)
{
  v4 = sub_186847BF4(a1, *a1, a2);
  v21[0] = v4;
  v21[1] = v5;
  if (v4)
  {
    if (*(*a1 + 40) == 1)
    {
      v6 = sub_18684552C(v21);
      v7 = *(a1 + 80);
      if (v6 != v7)
      {
        v8 = v6;
        v10 = (a1 + 104);
        for (i = *(a1 + 104); i; i = *i)
        {
          v11 = i[4];
          if (v6 >= v11)
          {
            if (v11 >= v6)
            {
              return v4;
            }

            ++i;
          }
        }

        if (v4 != 7)
        {
          goto LABEL_20;
        }

        v12 = AddrObjGoogle::protobuf::DescriptorBuilder::IsInPackage(v6, v7, &a2->__r_.__value_.__l.__data_);
        if (v12)
        {
          return v4;
        }

        v13 = *(a1 + 96);
        if (v13 == v10)
        {
LABEL_20:
          *(a1 + 120) = v8;
          v18 = std::string::operator=((a1 + 128), a2);
          sub_1868474AC(v18, v19);
          return qword_1EA905930;
        }

        while (1)
        {
          v14 = v13[4];
          if (v14)
          {
            LOBYTE(v12) = AddrObjGoogle::protobuf::DescriptorBuilder::IsInPackage(v12, v14, &a2->__r_.__value_.__l.__data_);
            if (v12)
            {
              break;
            }
          }

          v15 = v13[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v13[2];
              v17 = *v16 == v13;
              v13 = v16;
            }

            while (!v17);
          }

          v13 = v16;
          if (v16 == v10)
          {
            goto LABEL_20;
          }
        }
      }
    }
  }

  return v4;
}

unint64_t sub_186847BF4(uint64_t a1, AddrObjGoogle::protobuf::DescriptorPool *a2, char *a3)
{
  v5 = a1;
  if (*a1 == a2)
  {
    v40 = 0;
  }

  else
  {
    a1 = *a2;
    v40 = a1;
    if (a1)
    {
      AddrObjGoogle::protobuf::internal::Mutex::Lock(a1);
    }
  }

  v6 = *(a2 + 4);
  if (a3[23] >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = 0;
    v10 = (v7 + 1);
    do
    {
      v9 = 5 * v9 + v8;
      v11 = *v10++;
      v8 = v11;
    }

    while (v11);
  }

  else
  {
    v9 = 0;
  }

  v12 = *(v6 + 208);
  if (!*&v12)
  {
    goto LABEL_29;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v9;
    if (v9 >= *&v12)
    {
      v15 = v9 % *&v12;
    }
  }

  else
  {
    v15 = (*&v12 - 1) & v9;
  }

  v16 = *(*(v6 + 200) + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_29:
    sub_1868474AC(a1, a2);
    v32 = &qword_1EA905930;
    v31 = &qword_1EA905930;
    goto LABEL_30;
  }

  while (1)
  {
    v18 = v17[1];
    if (v9 == v18)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v18 >= *&v12)
      {
        v18 %= *&v12;
      }
    }

    else
    {
      v18 &= *&v12 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_29;
    }

LABEL_28:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_29;
    }
  }

  a1 = strcmp(v17[2], v7);
  if (a1)
  {
    goto LABEL_28;
  }

  v31 = v17 + 3;
  v32 = &qword_1EA905930;
LABEL_30:
  v19 = *v31;
  v20 = HIDWORD(*v31);
  if (!*v31)
  {
    v22 = *(a2 + 3);
    if (!v22 || (v23 = sub_186847BF4(v5, v22, a3), LODWORD(v19) = v23, v20 = HIDWORD(v23), !v23))
    {
      SymbolInFallbackDatabase = AddrObjGoogle::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, a3);
      if (SymbolInFallbackDatabase)
      {
        v26 = *(a2 + 4);
        if (a3[23] < 0)
        {
          a3 = *a3;
        }

        v27 = *a3;
        if (*a3)
        {
          v28 = 0;
          v29 = (a3 + 1);
          do
          {
            v28 = 5 * v28 + v27;
            v30 = *v29++;
            v27 = v30;
          }

          while (v30);
        }

        else
        {
          v28 = 0;
        }

        v33 = *(v26 + 208);
        if (v33)
        {
          v34 = vcnt_s8(v33);
          v34.i16[0] = vaddlv_u8(v34);
          v35 = v34.u32[0];
          if (v34.u32[0] > 1uLL)
          {
            v36 = v28;
            if (v28 >= *&v33)
            {
              v36 = v28 % *&v33;
            }
          }

          else
          {
            v36 = (*&v33 - 1) & v28;
          }

          v37 = *(*(v26 + 200) + 8 * v36);
          if (v37)
          {
            for (i = *v37; i; i = *i)
            {
              v39 = i[1];
              if (v28 == v39)
              {
                SymbolInFallbackDatabase = strcmp(i[2], a3);
                if (!SymbolInFallbackDatabase)
                {
                  v32 = i + 3;
                  goto LABEL_60;
                }
              }

              else
              {
                if (v35 > 1)
                {
                  if (v39 >= *&v33)
                  {
                    v39 %= *&v33;
                  }
                }

                else
                {
                  v39 &= *&v33 - 1;
                }

                if (v39 != v36)
                {
                  break;
                }
              }
            }
          }
        }

        sub_1868474AC(SymbolInFallbackDatabase, v25);
LABEL_60:
        v19 = *v32;
        v20 = HIDWORD(*v32);
      }

      else
      {
        LODWORD(v19) = 0;
      }
    }
  }

  AddrObjGoogle::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v40);
  return v19 | (v20 << 32);
}

void sub_186847EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

void sub_186847EF4(void **this)
{
  *this = &unk_1EF7E1F20;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  addr_obj::Localization::getDisplayLanguage(this);

  JUMPOUT(0x18CFD1E40);
}

std::string *sub_186847F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 31);
  if (v6 < 0)
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    std::string::append((a1 + 8), "; ");
  }

  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = *a4;
  }

  if (v7 >= 0)
  {
    v9 = *(a4 + 23);
  }

  else
  {
    v9 = *(a4 + 8);
  }

  return std::string::append((a1 + 8), v8, v9);
}

void sub_186847FDC(char **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = (v3 - *a1) >> 6;
    v9 = v8 + 1;
    if ((v8 + 1) >> 58)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - *a1;
    if (v10 >> 5 > v9)
    {
      v9 = v10 >> 5;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = v8 << 6;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v13 = *(a2 + 24);
    a2[1] = 0uLL;
    *a2 = 0uLL;
    *(v12 + 24) = v13;
    *(v12 + 40) = *(a2 + 5);
    a2[2] = 0uLL;
    *(v12 + 48) = a2[3];
    v14 = *a1;
    v15 = a1[1];
    v16 = (v12 + *a1 - v15);
    if (*a1 != v15)
    {
      v17 = *a1;
      v18 = (v12 + *a1 - v15);
      do
      {
        v19 = *v17;
        *(v18 + 2) = *(v17 + 2);
        *v18 = v19;
        *(v17 + 1) = 0;
        *(v17 + 2) = 0;
        *v17 = 0;
        v20 = *(v17 + 24);
        *(v18 + 5) = *(v17 + 5);
        *(v18 + 24) = v20;
        *(v17 + 4) = 0;
        *(v17 + 5) = 0;
        *(v17 + 3) = 0;
        *(v18 + 3) = *(v17 + 3);
        v17 += 64;
        v18 += 64;
      }

      while (v17 != v15);
      do
      {
        sub_186848294(v14);
        v14 += 64;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    v7 = (v12 + 64);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(v3 + 3) = a2[3];
    v7 = v3 + 64;
  }

  a1[1] = v7;
}

std::string *sub_1868481A4(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v10;
  }

  this[2].__r_.__value_.__r.__words[0] = a4;
  this[2].__r_.__value_.__l.__size_ = a5;
  return this;
}

void sub_186848234(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_186848250(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_186848294(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1868482EC()
{
  if (__cxa_guard_acquire(&qword_1EA905920))
  {
    xmmword_1EA905940 = 0u;
    unk_1EA905950 = 0u;
    dword_1EA905960 = 1065353216;
    unk_1EA905968 = 0u;
    unk_1EA905978 = 0u;
    dword_1EA905988 = 1065353216;
    xmmword_1EA905990 = 0u;
    unk_1EA9059A0 = 0u;
    dword_1EA9059B0 = 1065353216;
    unk_1EA9059B8 = 0u;
    unk_1EA9059C8 = 0u;
    dword_1EA9059D8 = 1065353216;
    xmmword_1EA9059E0 = 0u;
    unk_1EA9059F0 = 0u;
    dword_1EA905A00 = 1065353216;

    __cxa_guard_release(&qword_1EA905920);
  }
}

void sub_186848374()
{
  if (__cxa_guard_acquire(byte_1EA905928))
  {
    LODWORD(qword_1EA905930) = 0;
    qword_1EA905938 = 0;

    __cxa_guard_release(byte_1EA905928);
  }
}

BOOL sub_1868483CC(_BYTE *a1, int a2, unsigned int *a3)
{
  *a3 = 0;
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 1;
  }

  v3 = 0;
  v4 = &a1[a2];
  do
  {
    v5 = *a1;
    v6 = *a1 != 0;
    if (!*a1)
    {
      break;
    }

    v7 = 16 * v3;
    v8 = v5 - 48;
    v9 = v5 - 97;
    if ((v5 - 65) >= 0x1A)
    {
      v10 = -1;
    }

    else
    {
      v10 = v5 - 55;
    }

    v11 = v5 - 87;
    if (v9 > 0x19)
    {
      v11 = v10;
    }

    if (v8 <= 9)
    {
      v11 = v8;
    }

    v3 = v11 + v7;
    *a3 = v3;
    ++a1;
  }

  while (a1 < v4);
  return v6;
}

BOOL sub_186848494(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1868484C4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1868484F0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1868485FC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_18692E634(a1);

  *a2 = v3;
  return result;
}

_DWORD *sub_18684863C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_186848658()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1868486A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1868486E8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_186848734()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18684876C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1868487B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1868487F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8FD238, &qword_187FBA1B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_186848884(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_186848894(uint64_t a1, uint64_t a2)
{
  v4 = sub_187ED2F40();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_186848900(uint64_t a1, uint64_t a2)
{
  v4 = sub_187ED2F40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_186848970()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1868489A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1868489E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_186848A28()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_186848A7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_186848AE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_186848B1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_186848B54()
{
  sub_18694302C(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_186848BA8()
{
  v13 = sub_187ED3010();
  v1 = *(v13 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_187ED2FF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v14 = v2 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v13);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v14 | 7);
}

uint64_t sub_186848D44()
{
  v1 = sub_187ED3010();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_187ED2FF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v13 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v13 | 7);
}

uint64_t sub_186848ED0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_186848F1C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_186848F88()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_186848FD4()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_186849034()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8FD108, &qword_187FBA4B0);
  v1 = sub_187ED3360();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_186849130()
{
  v1 = *(v0 + 40);
  v16 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v15 = (v3 + 56) & ~v3;
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + *(v2 + 64) + v5) & ~v5;
  v13 = (((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8FD108, &qword_187FBA4B0);
  v7 = sub_187ED3360();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v13 + v9 + 8) & ~v9;
  v14 = *(v8 + 64);
  v11 = v3 | v5 | v9;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v15, AssociatedTypeWitness);
  (*(v4 + 8))(v0 + v6, v16);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v14, v11 | 7);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](a1 + 112);
  return a1;
}

void addr_obj::venue::LocalizedTemplate::~LocalizedTemplate(addr_obj::venue::LocalizedTemplate *this)
{
  v5 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 72);
  std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void addr_obj::venue::Template::~Template(addr_obj::venue::Template *this)
{
  v5 = (this + 72);
  std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void addr_obj::venue::Decorator::~Decorator(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1868859DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field const*,addr_obj::venue::Field const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<addr_obj::venue::Field>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_186885AD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*>(uint64_t *result, addr_obj::venue::Decorator *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<addr_obj::venue::Decorator>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_186885B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<addr_obj::venue::Decorator>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Decorator>>(a1, a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Decorator>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<addr_obj::venue::Decorator>,addr_obj::venue::Decorator const*,addr_obj::venue::Decorator const*,addr_obj::venue::Decorator*>(uint64_t a1, addr_obj::venue::Decorator *a2, addr_obj::venue::Decorator *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      addr_obj::venue::Decorator::Decorator(v4, v6);
      v6 = (v6 + 96);
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Decorator>,addr_obj::venue::Decorator*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *addr_obj::venue::Decorator::Decorator(std::string *this, const addr_obj::venue::Decorator *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  return this;
}

void sub_186885D88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Decorator>,addr_obj::venue::Decorator*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<addr_obj::venue::Decorator>,std::reverse_iterator<addr_obj::venue::Decorator*>,std::reverse_iterator<addr_obj::venue::Decorator*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<addr_obj::venue::Decorator>,std::reverse_iterator<addr_obj::venue::Decorator*>,std::reverse_iterator<addr_obj::venue::Decorator*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      if (*(v6 - 25) < 0)
      {
        operator delete(*(v6 - 6));
      }

      if (*(v6 - 49) < 0)
      {
        operator delete(*(v6 - 9));
      }

      v7 = v6 - 12;
      if (*(v6 - 73) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 12;
    }

    while (v7 != a5);
  }
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

addr_obj::venue::Template *addr_obj::venue::LocalizedTemplate::LocalizedTemplate(addr_obj::venue::Template *a1, const addr_obj::venue::Template *a2, void *a3, void *a4)
{
  v7 = addr_obj::venue::Template::Template(a1, a2);
  v7[12] = 0;
  v7[13] = 0;
  v7[14] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v7 + 12, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 15, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  return a1;
}

void sub_186885F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  addr_obj::venue::Template::~Template(v3);
  _Unwind_Resume(a1);
}

addr_obj::venue::Template *addr_obj::venue::Template::Template(addr_obj::venue::Template *this, const addr_obj::venue::Template *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 3, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field*,addr_obj::venue::Field*>(this + 6, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 4);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator*,addr_obj::venue::Decorator*>(this + 9, *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 5));
  return this;
}

void sub_186886058(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_186886104(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field*,addr_obj::venue::Field*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<addr_obj::venue::Field>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_186886180(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator*,addr_obj::venue::Decorator*>(uint64_t *result, addr_obj::venue::Decorator *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<addr_obj::venue::Decorator>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_186886204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<addr_obj::venue::Decorator>,addr_obj::venue::Decorator*,addr_obj::venue::Decorator*,addr_obj::venue::Decorator*>(uint64_t a1, addr_obj::venue::Decorator *a2, addr_obj::venue::Decorator *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      addr_obj::venue::Decorator::Decorator(v4, v6);
      v6 = (v6 + 96);
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Decorator>,addr_obj::venue::Decorator*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*>(uint64_t *result, addr_obj::venue::Template *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<addr_obj::venue::LocalizedTemplate>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_186886330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<addr_obj::venue::LocalizedTemplate>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::LocalizedTemplate>>(a1, a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::LocalizedTemplate>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

addr_obj::venue::Template *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<addr_obj::venue::LocalizedTemplate>,addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate const*,addr_obj::venue::LocalizedTemplate*>(uint64_t a1, addr_obj::venue::Template *a2, addr_obj::venue::Template *a3, addr_obj::venue::Template *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      addr_obj::venue::Template::Template(v4, v6);
      v4[12] = 0;
      v4[13] = 0;
      v4[14] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4 + 12, *(v6 + 12), *(v6 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 13) - *(v6 + 12)) >> 3));
      v4[15] = 0;
      v4[16] = 0;
      v4[17] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4 + 15, *(v6 + 15), *(v6 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 16) - *(v6 + 15)) >> 3));
      v6 = (v6 + 144);
      v4 = (v11 + 144);
      v11 = (v11 + 144);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::LocalizedTemplate>,addr_obj::venue::LocalizedTemplate*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void sub_1868864E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::LocalizedTemplate>,addr_obj::venue::LocalizedTemplate*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::LocalizedTemplate>,addr_obj::venue::LocalizedTemplate*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<addr_obj::venue::LocalizedTemplate>,std::reverse_iterator<addr_obj::venue::LocalizedTemplate*>,std::reverse_iterator<addr_obj::venue::LocalizedTemplate*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<addr_obj::venue::LocalizedTemplate>,std::reverse_iterator<addr_obj::venue::LocalizedTemplate*>,std::reverse_iterator<addr_obj::venue::LocalizedTemplate*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v13[3] = v5;
    v13[4] = v6;
    v8 = a3 - 9;
    do
    {
      v13[0] = v8 + 6;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
      v13[0] = v8 + 3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
      v13[0] = v8;
      std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](v13);
      v9 = *(v8 - 3);
      if (v9)
      {
        *(v8 - 2) = v9;
        operator delete(v9);
      }

      v10 = *(v8 - 6);
      if (v10)
      {
        *(v8 - 5) = v10;
        operator delete(v10);
      }

      v11 = *(v8 - 9);
      if (v11)
      {
        *(v8 - 8) = v11;
        operator delete(v11);
      }

      v12 = v8 - 9;
      v8 -= 18;
    }

    while (v12 != a5);
  }
}

void std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<addr_obj::venue::LocalizedTemplate>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<addr_obj::venue::LocalizedTemplate>::clear[abi:ne200100](void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 9;
    do
    {
      v9 = v4 + 6;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
      v9 = v4 + 3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
      v9 = v4;
      std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v9);
      v5 = *(v4 - 3);
      if (v5)
      {
        *(v4 - 2) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 6);
      if (v6)
      {
        *(v4 - 5) = v6;
        operator delete(v6);
      }

      v7 = *(v4 - 9);
      if (v7)
      {
        *(v4 - 8) = v7;
        operator delete(v7);
      }

      v8 = v4 - 9;
      v4 -= 18;
    }

    while (v8 != v3);
  }

  a1[1] = v3;
}

uint64_t *std::vector<addr_obj::venue::LocalizedTemplate>::__init_with_size[abi:ne200100]<addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(uint64_t *result, addr_obj::venue::Template *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<addr_obj::venue::LocalizedTemplate>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_186886774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

addr_obj::venue::Template *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<addr_obj::venue::LocalizedTemplate>,addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*,addr_obj::venue::LocalizedTemplate*>(uint64_t a1, addr_obj::venue::Template *a2, addr_obj::venue::Template *a3, addr_obj::venue::Template *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      addr_obj::venue::Template::Template(v4, v6);
      v4[12] = 0;
      v4[13] = 0;
      v4[14] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4 + 12, *(v6 + 12), *(v6 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 13) - *(v6 + 12)) >> 3));
      v4[15] = 0;
      v4[16] = 0;
      v4[17] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4 + 15, *(v6 + 15), *(v6 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 16) - *(v6 + 15)) >> 3));
      v6 = (v6 + 144);
      v4 = (v11 + 144);
      v11 = (v11 + 144);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::LocalizedTemplate>,addr_obj::venue::LocalizedTemplate*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void sub_186886878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::LocalizedTemplate>,addr_obj::venue::LocalizedTemplate*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::map<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::__map_value_compare<addr_obj::venue::LabelPattern,std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::less<addr_obj::venue::LabelPattern>,true>,std::allocator<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>>>::__emplace_hint_unique_key_args<addr_obj::venue::LabelPattern,std::pair<addr_obj::venue::LabelPattern const,std::vector<addr_obj::venue::LocalizedTemplate>> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::__map_value_compare<addr_obj::venue::LabelPattern,std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::less<addr_obj::venue::LabelPattern>,true>,std::allocator<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>>>::__emplace_hint_unique_key_args<addr_obj::venue::LabelPattern,std::pair<addr_obj::venue::LabelPattern const,std::vector<addr_obj::venue::LocalizedTemplate>> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::__map_value_compare<addr_obj::venue::LabelPattern,std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::less<addr_obj::venue::LabelPattern>,true>,std::allocator<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>>>::__find_equal<addr_obj::venue::LabelPattern>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::__map_value_compare<addr_obj::venue::LabelPattern,std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::less<addr_obj::venue::LabelPattern>,true>,std::allocator<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>>>::__construct_node<std::pair<addr_obj::venue::LabelPattern const,std::vector<addr_obj::venue::LocalizedTemplate>> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::__map_value_compare<addr_obj::venue::LabelPattern,std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::less<addr_obj::venue::LabelPattern>,true>,std::allocator<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>>>::__find_equal<addr_obj::venue::LabelPattern>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

void sub_186886BFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::__map_value_compare<addr_obj::venue::LabelPattern,std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::less<addr_obj::venue::LabelPattern>,true>,std::allocator<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__tree<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::__map_value_compare<addr_obj::venue::LabelPattern,std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::less<addr_obj::venue::LabelPattern>,true>,std::allocator<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::__map_value_compare<addr_obj::venue::LabelPattern,std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::less<addr_obj::venue::LabelPattern>,true>,std::allocator<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::__map_value_compare<addr_obj::venue::LabelPattern,std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>,std::less<addr_obj::venue::LabelPattern>,true>,std::allocator<std::__value_type<addr_obj::venue::LabelPattern,std::vector<addr_obj::venue::LocalizedTemplate>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<addr_obj::venue::LocalizedTemplate>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

std::runtime_error *addr_obj::Exception<std::runtime_error>::Exception(std::runtime_error *a1, const void **a2, uint64_t a3)
{
  v6 = std::runtime_error::runtime_error(a1, "");
  addr_obj::AddressObjectException::AddressObjectException(&v6[1], a2, a3);
  a1->__vftable = &unk_1EF7DF520;
  return a1;
}

void addr_obj::Exception<std::runtime_error>::~Exception(std::runtime_error *a1)
{
  addr_obj::Exception<std::runtime_error>::~Exception(a1);

  JUMPOUT(0x18CFD1E40);
}

void addr_obj::Exception<std::runtime_error>::~Exception(std::runtime_error *this)
{
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::runtime_error::~runtime_error(this);
}

void *addr_obj::Json::escape(void *a1, uint64_t *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "", 1);
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v4)
  {
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    while (1)
    {
      v7 = *v6;
      if (v7 <= 0xC)
      {
        break;
      }

      if (*v6 > 0x21u)
      {
        if (v7 == 34)
        {
          v8 = "\";
        }

        else
        {
          if (v7 != 92)
          {
LABEL_35:
            if (v7 > 0x1F)
            {
              LOBYTE(v18.__locale_) = *v6;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v18, 1);
            }

            else
            {
              v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\\u", 2);
              v13 = v12;
              v14 = *v12;
              *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
              *(v12 + *(v14 - 24) + 24) = 4;
              v15 = v12 + *(v14 - 24);
              if (*(v15 + 36) == -1)
              {
                std::ios_base::getloc((v12 + *(v14 - 24)));
                v16 = std::locale::use_facet(&v18, MEMORY[0x1E69E5318]);
                (v16->__vftable[2].~facet_0)(v16, 32);
                std::locale::~locale(&v18);
              }

              *(v15 + 36) = 48;
              MEMORY[0x18CFD1C40](v13, *v6);
            }

            goto LABEL_28;
          }

          v8 = "\\\"";
        }

        goto LABEL_26;
      }

      if (v7 == 13)
      {
        v8 = "\\r";
LABEL_26:
        v9 = 2;
        goto LABEL_27;
      }

      if (v7 != 27)
      {
        goto LABEL_35;
      }

      v8 = "\\\\u001b";
      v9 = 7;
LABEL_27:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v8, v9);
LABEL_28:
      v6 = (v6 + 1);
      v10 = *(a2 + 23);
      if ((v10 & 0x80u) == 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      if ((v10 & 0x80u) != 0)
      {
        v10 = a2[1];
      }

      if (v6 == (v11 + v10))
      {
        goto LABEL_40;
      }
    }

    if (*v6 > 9u)
    {
      if (v7 == 10)
      {
        v8 = "\\n";
      }

      else
      {
        if (v7 != 12)
        {
          goto LABEL_35;
        }

        v8 = "\\f";
      }
    }

    else if (v7 == 8)
    {
      v8 = "\\b";
    }

    else
    {
      if (v7 != 9)
      {
        goto LABEL_35;
      }

      v8 = "\\t";
    }

    goto LABEL_26;
  }

LABEL_40:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "", 1);
  return a1;
}

void sub_1868870D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  std::locale::~locale((v38 - 96));
  if (a2 == 4)
  {
    v41 = __cxa_begin_catch(a1);
    if (addr_obj::Logger::isInitialized(v41))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&a36);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a36, "std::exception: ", 16);
      v43 = (*(*v41 + 16))(v41);
      v44 = strlen(v43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
      std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
      std::string::basic_string[abi:ne200100]<0>(&a23, "escape");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      addr_obj::Logger::log(16, &a30, 60, &a23, &a17, &__p);
      if (a16 < 0)
      {
        operator delete(__p);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }

      if (a28 < 0)
      {
        operator delete(a23);
      }

      if (a35 < 0)
      {
        operator delete(a30);
      }

      std::ostringstream::~ostringstream(&a36);
    }

    v45 = addr_obj::Json::operator<<<char [3]>(v37, "; ");
    v46 = addr_obj::Json::operator<<<char [50]>(v45, "Json &addr_obj::Json::escape(const std::string &)");
    v47 = addr_obj::Json::operator<<<char [19]>(v46, ": std::exception: ");
    a36 = (*(*v41 + 16))(v41);
    addr_obj::Json::operator<<<char const*>(v47, &a36);
    __cxa_end_catch();
  }

  else if (a2 == 3)
  {
    v48 = __cxa_begin_catch(a1);
    a10 = v48;
    if (addr_obj::Logger::isInitialized(v48))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&a36);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a36, "const char* exception: ", 23);
      v50 = strlen(v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v48, v50);
      std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
      std::string::basic_string[abi:ne200100]<0>(&a23, "escape");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      addr_obj::Logger::log(16, &a30, 60, &a23, &a17, &__p);
      if (a16 < 0)
      {
        operator delete(__p);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }

      if (a28 < 0)
      {
        operator delete(a23);
      }

      if (a35 < 0)
      {
        operator delete(a30);
      }

      std::ostringstream::~ostringstream(&a36);
    }

    v51 = addr_obj::Json::operator<<<char [3]>(v37, "; ");
    v52 = addr_obj::Json::operator<<<char [50]>(v51, "Json &addr_obj::Json::escape(const std::string &)");
    v53 = addr_obj::Json::operator<<<char [17]>(v52, ": const char *: ");
    addr_obj::Json::operator<<<char const*>(v53, &a10);
    __cxa_end_catch();
  }

  else
  {
    v54 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v55 = v54;
      if (addr_obj::Logger::isInitialized(v54))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&a36);
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a36, "std::string exception: ", 23);
        v57 = *(v55 + 23);
        if (v57 >= 0)
        {
          v58 = v55;
        }

        else
        {
          v58 = *v55;
        }

        if (v57 >= 0)
        {
          v59 = *(v55 + 23);
        }

        else
        {
          v59 = *(v55 + 1);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v58, v59);
        std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
        std::string::basic_string[abi:ne200100]<0>(&a23, "escape");
        std::stringbuf::str();
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        addr_obj::Logger::log(16, &a30, 60, &a23, &a17, &__p);
        if (a16 < 0)
        {
          operator delete(__p);
        }

        if (a22 < 0)
        {
          operator delete(a17);
        }

        if (a28 < 0)
        {
          operator delete(a23);
        }

        if (a35 < 0)
        {
          operator delete(a30);
        }

        std::ostringstream::~ostringstream(&a36);
      }

      v60 = addr_obj::Json::operator<<<char [3]>(v37, "; ");
      v61 = addr_obj::Json::operator<<<char [50]>(v60, "Json &addr_obj::Json::escape(const std::string &)");
      v62 = addr_obj::Json::operator<<<char [26]>(v61, ": std::string exception: ");
      addr_obj::Json::escape(v62, v55);
      __cxa_end_catch();
    }

    else
    {
      if (addr_obj::Logger::isInitialized(v54))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&a36);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a36, "unknown exception", 17);
        std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
        std::string::basic_string[abi:ne200100]<0>(&a23, "escape");
        std::stringbuf::str();
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        addr_obj::Logger::log(16, &a30, 60, &a23, &a17, &__p);
        if (a16 < 0)
        {
          operator delete(__p);
        }

        if (a22 < 0)
        {
          operator delete(a17);
        }

        if (a28 < 0)
        {
          operator delete(a23);
        }

        if (a35 < 0)
        {
          operator delete(a30);
        }

        std::ostringstream::~ostringstream(&a36);
      }

      v63 = addr_obj::Json::operator<<<char [3]>(v37, "; ");
      v64 = addr_obj::Json::operator<<<char [50]>(v63, "Json &addr_obj::Json::escape(const std::string &)");
      addr_obj::Json::operator<<<char [20]>(v64, ": unknown exception");
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x1868870B4);
}

void sub_1868875EC(void *a1, int a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::string *a9, void *a10, void *__pa, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, __int128 a23, std::string::size_type a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (SHIBYTE(a16) < 0)
  {
    operator delete(__pa);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (SHIBYTE(a24) < 0)
  {
    operator delete(a23);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  std::ostringstream::~ostringstream(&a32);
  v40 = __cxa_begin_catch(a1);
  if (a2 == v37)
  {
    v41 = v40;
    std::string::basic_string[abi:ne200100]<0>(&a32, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a26, "escape");
    std::string::basic_string[abi:ne200100]<0>(&a17, "Exception caught during formatting of the log line: ");
    v42 = (*(*v41 + 16))(v41);
    v43 = std::string::append(&a17, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    a24 = v43->__r_.__value_.__r.__words[2];
    a23 = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a32, 60, &a26, &a23, &__pa);
    if (SHIBYTE(a16) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a24) < 0)
    {
      operator delete(a23);
    }

    if (a22 < 0)
    {
      operator delete(a17);
    }

    if (a31 < 0)
    {
      operator delete(a26);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a32, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a26, "escape");
    std::string::basic_string[abi:ne200100]<0>(&a23, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a17, "");
    addr_obj::Logger::log(16, &a32, 60, &a26, &a23, &a17);
    if (a22 < 0)
    {
      operator delete(a17);
    }

    if (SHIBYTE(a24) < 0)
    {
      operator delete(a23);
    }

    if (a31 < 0)
    {
      operator delete(a26);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868875BCLL);
}

void sub_1868878BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868875E4);
}

void sub_186887BD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868874ECLL);
}

void sub_186887D0C(void *a1, int a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::string *a9, void *a10, void *__pa, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, __int128 a23, std::string::size_type a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (SHIBYTE(a16) < 0)
  {
    operator delete(__pa);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (SHIBYTE(a24) < 0)
  {
    operator delete(a23);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  std::ostringstream::~ostringstream(&a32);
  v40 = __cxa_begin_catch(a1);
  if (a2 == v37)
  {
    v41 = v40;
    std::string::basic_string[abi:ne200100]<0>(&a32, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a26, "escape");
    std::string::basic_string[abi:ne200100]<0>(&a17, "Exception caught during formatting of the log line: ");
    v42 = (*(*v41 + 16))(v41);
    v43 = std::string::append(&a17, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    a24 = v43->__r_.__value_.__r.__words[2];
    a23 = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a32, 60, &a26, &a23, &__pa);
    if (SHIBYTE(a16) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a24) < 0)
    {
      operator delete(a23);
    }

    if (a22 < 0)
    {
      operator delete(a17);
    }

    if (a31 < 0)
    {
      operator delete(a26);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a32, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a26, "escape");
    std::string::basic_string[abi:ne200100]<0>(&a23, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a17, "");
    addr_obj::Logger::log(16, &a32, 60, &a26, &a23, &a17);
    if (a22 < 0)
    {
      operator delete(a17);
    }

    if (SHIBYTE(a24) < 0)
    {
      operator delete(a23);
    }

    if (a31 < 0)
    {
      operator delete(a26);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186887390);
}

void sub_186887F60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868873C0);
}

void sub_18688809C(void *a1, int a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::string *a9, void *a10, void *__pa, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, __int128 a23, std::string::size_type a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (SHIBYTE(a16) < 0)
  {
    operator delete(__pa);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (SHIBYTE(a24) < 0)
  {
    operator delete(a23);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  std::ostringstream::~ostringstream(&a32);
  v40 = __cxa_begin_catch(a1);
  if (a2 == v37)
  {
    v41 = v40;
    std::string::basic_string[abi:ne200100]<0>(&a32, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a26, "escape");
    std::string::basic_string[abi:ne200100]<0>(&a17, "Exception caught during formatting of the log line: ");
    v42 = (*(*v41 + 16))(v41);
    v43 = std::string::append(&a17, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    a24 = v43->__r_.__value_.__r.__words[2];
    a23 = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a32, 60, &a26, &a23, &__pa);
    if (SHIBYTE(a16) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a24) < 0)
    {
      operator delete(a23);
    }

    if (a22 < 0)
    {
      operator delete(a17);
    }

    if (a31 < 0)
    {
      operator delete(a26);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a32, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a26, "escape");
    std::string::basic_string[abi:ne200100]<0>(&a23, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a17, "");
    addr_obj::Logger::log(16, &a32, 60, &a26, &a23, &a17);
    if (a22 < 0)
    {
      operator delete(a17);
    }

    if (SHIBYTE(a24) < 0)
    {
      operator delete(a23);
    }

    if (a31 < 0)
    {
      operator delete(a26);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186887224);
}

void sub_18688810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::ostringstream::~ostringstream(va);
  JUMPOUT(0x186888144);
}

void sub_1868882FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186887288);
}

void *addr_obj::Json::operator<<<char [3]>(void *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  addr_obj::Json::escape(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void *addr_obj::Json::operator<<<char [50]>(void *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  addr_obj::Json::escape(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void *addr_obj::Json::operator<<<char [20]>(void *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  addr_obj::Json::escape(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void *addr_obj::Json::operator<<<char [26]>(void *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  addr_obj::Json::escape(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void *addr_obj::Json::operator<<<char [17]>(void *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  addr_obj::Json::escape(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void *addr_obj::Json::operator<<<char const*>(void *a1, char **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  addr_obj::Json::escape(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void *addr_obj::Json::operator<<<char [19]>(void *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  addr_obj::Json::escape(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

addr_obj::Json *addr_obj::Json::escape(addr_obj::Json *this, const AddrObjGoogle::protobuf::Message *a2)
{
  v4 = (*(*a2 + 144))(a2);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  (*(*v4 + 96))(v4, a2, &v63);
  v5 = v63;
  if (v63 != v64)
  {
    v42 = *MEMORY[0x1E69E54E8];
    v6 = 1;
    v7 = *(MEMORY[0x1E69E54E8] + 24);
    do
    {
      v8 = *v5;
      if (*(*v5 + 48) == 3)
      {
        v9 = 0;
        v10 = 1;
        while (v9 < (*(*v4 + 48))(v4, a2, v8))
        {
          if (v10)
          {
            if ((v6 & 1) == 0)
            {
              LOBYTE(__p) = 44;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, &__p, 1);
            }

            v11 = addr_obj::Json::escape(this, *(v8 + 24));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ":[", 2);
            v6 = 0;
          }

          else
          {
            LOBYTE(__p) = 44;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, &__p, 1);
          }

          switch(*(v8 + 44))
          {
            case 1:
              (*(*v4 + 320))(v4, a2, v8, v9);
              MEMORY[0x18CFD1C20](this);
              break;
            case 2:
              (*(*v4 + 312))(v4, a2, v8, v9);
              std::ostream::operator<<();
              break;
            case 3:
            case 0x10:
            case 0x12:
              v12 = (*(*v4 + 288))(v4, a2, v8, v9);
              MEMORY[0x18CFD1C70](this, v12);
              break;
            case 4:
            case 6:
              v15 = (*(*v4 + 304))(v4, a2, v8, v9);
              MEMORY[0x18CFD1C80](this, v15);
              break;
            case 5:
            case 0xF:
            case 0x11:
              v13 = (*(*v4 + 280))(v4, a2, v8, v9);
              MEMORY[0x18CFD1C40](this, v13);
              break;
            case 7:
            case 0xD:
              v14 = (*(*v4 + 296))(v4, a2, v8, v9);
              MEMORY[0x18CFD1C50](this, v14);
              break;
            case 8:
              v16 = (*(*v4 + 328))(v4, a2, v8, v9);
              MEMORY[0x18CFD1C10](this, v16);
              break;
            case 9:
              (*(*v4 + 336))(&__p, v4, a2, v8, v9);
              addr_obj::Json::escape(this, &__p);
              if (SHIBYTE(v59[0].__locale_) < 0)
              {
                operator delete(__p);
              }

              break;
            case 0xB:
              addr_obj::Json::Json(&__p);
              v17 = (*(*v4 + 352))(v4, a2, v8, v9);
              addr_obj::Json::escape(&__p, v17);
              addr_obj::Json::str();
              if (SHIBYTE(v53[0].__locale_) >= 0)
              {
                v18 = &v51;
              }

              else
              {
                v18 = v51;
              }

              if (SHIBYTE(v53[0].__locale_) >= 0)
              {
                locale_high = HIBYTE(v53[0].__locale_);
              }

              else
              {
                locale_high = v52;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, v18, locale_high);
              goto LABEL_50;
            case 0xE:
              v20 = (*(*v4 + 344))(v4, a2, v8, v9);
              addr_obj::Json::escape(this, *v20);
              break;
            default:
              std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
              v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "unsupported protobuf field type <", 33);
              v22 = MEMORY[0x18CFD1C40](v21, *(v8 + 44));
              v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ">", 1);
              if (addr_obj::Logger::isInitialized(v23))
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&v51);
                std::stringbuf::str();
                if ((v50 & 0x80u) == 0)
                {
                  v24 = &v48;
                }

                else
                {
                  v24 = v48;
                }

                if ((v50 & 0x80u) == 0)
                {
                  v25 = v50;
                }

                else
                {
                  v25 = v49;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, v24, v25);
                if (v50 < 0)
                {
                  operator delete(v48);
                }

                std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
                std::string::basic_string[abi:ne200100]<0>(v46, "escape");
                std::stringbuf::str();
                std::string::basic_string[abi:ne200100]<0>(v43, "");
                addr_obj::Logger::log(16, &v48, 140, v46, &v45, v43);
                if (v44 < 0)
                {
                  operator delete(v43[0]);
                }

                if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v45.__r_.__value_.__l.__data_);
                }

                if (v47 < 0)
                {
                  operator delete(v46[0]);
                }

                if (v50 < 0)
                {
                  operator delete(v48);
                }

                v51 = v42;
                *(&v51 + *(v42 - 3)) = v7;
                v52 = MEMORY[0x1E69E5548] + 16;
                if (v55 < 0)
                {
                  operator delete(v54);
                }

                v52 = MEMORY[0x1E69E5538] + 16;
                std::locale::~locale(v53);
                std::ostream::~ostream();
                MEMORY[0x18CFD1DA0](v56);
              }

              std::stringbuf::str();
              addr_obj::Json::escape(this, &v51);
LABEL_50:
              if (SHIBYTE(v53[0].__locale_) < 0)
              {
                operator delete(v51);
              }

              __p = v42;
              *(&__p + *(v42 - 3)) = v7;
              v58 = MEMORY[0x1E69E5548] + 16;
              if (v61 < 0)
              {
                operator delete(v60);
              }

              v58 = MEMORY[0x1E69E5538] + 16;
              std::locale::~locale(v59);
              std::ostream::~ostream();
              MEMORY[0x18CFD1DA0](v62);
              break;
          }

          v10 = 0;
          v9 = (v9 + 1);
        }

        if ((v10 & 1) == 0)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, "]", 1);
        }
      }

      else if ((*(*v4 + 40))(v4, a2, *v5))
      {
        if ((v6 & 1) == 0)
        {
          LOBYTE(__p) = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, &__p, 1);
        }

        v26 = addr_obj::Json::escape(this, *(v8 + 24));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ":", 1);
        switch(*(v8 + 44))
        {
          case 1:
            (*(*v4 + 144))(v4, a2, v8);
            MEMORY[0x18CFD1C20](this);
            break;
          case 2:
            (*(*v4 + 136))(v4, a2, v8);
            std::ostream::operator<<();
            break;
          case 3:
          case 0x10:
          case 0x12:
            v27 = (*(*v4 + 112))(v4, a2, v8);
            MEMORY[0x18CFD1C70](this, v27);
            break;
          case 4:
          case 6:
            v30 = (*(*v4 + 128))(v4, a2, v8);
            MEMORY[0x18CFD1C80](this, v30);
            break;
          case 5:
          case 0xF:
          case 0x11:
            v28 = (*(*v4 + 104))(v4, a2, v8);
            MEMORY[0x18CFD1C40](this, v28);
            break;
          case 7:
          case 0xD:
            v29 = (*(*v4 + 120))(v4, a2, v8);
            MEMORY[0x18CFD1C50](this, v29);
            break;
          case 8:
            v31 = (*(*v4 + 152))(v4, a2, v8);
            MEMORY[0x18CFD1C10](this, v31);
            break;
          case 9:
            (*(*v4 + 160))(&__p, v4, a2, v8);
            addr_obj::Json::escape(this, &__p);
            if (SHIBYTE(v59[0].__locale_) < 0)
            {
              operator delete(__p);
            }

            break;
          case 0xB:
            addr_obj::Json::Json(&__p);
            v32 = (*(*v4 + 176))(v4, a2, v8, 0);
            addr_obj::Json::escape(&__p, v32);
            addr_obj::Json::str();
            if (SHIBYTE(v53[0].__locale_) >= 0)
            {
              v33 = &v51;
            }

            else
            {
              v33 = v51;
            }

            if (SHIBYTE(v53[0].__locale_) >= 0)
            {
              v34 = HIBYTE(v53[0].__locale_);
            }

            else
            {
              v34 = v52;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, v33, v34);
            if ((SHIBYTE(v53[0].__locale_) & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            goto LABEL_78;
          case 0xE:
            v35 = (*(*v4 + 168))(v4, a2, v8);
            addr_obj::Json::escape(this, *v35);
            break;
          default:
            std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
            v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "unsupported protobuf field type <", 33);
            v37 = MEMORY[0x18CFD1C40](v36, *(v8 + 44));
            v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ">", 1);
            if (addr_obj::Logger::isInitialized(v38))
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&v51);
              std::stringbuf::str();
              if ((v50 & 0x80u) == 0)
              {
                v39 = &v48;
              }

              else
              {
                v39 = v48;
              }

              if ((v50 & 0x80u) == 0)
              {
                v40 = v50;
              }

              else
              {
                v40 = v49;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, v39, v40);
              if (v50 < 0)
              {
                operator delete(v48);
              }

              std::string::basic_string[abi:ne200100]<0>(&v48, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
              std::string::basic_string[abi:ne200100]<0>(v46, "escape");
              std::stringbuf::str();
              std::string::basic_string[abi:ne200100]<0>(v43, "");
              addr_obj::Logger::log(16, &v48, 202, v46, &v45, v43);
              if (v44 < 0)
              {
                operator delete(v43[0]);
              }

              if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v45.__r_.__value_.__l.__data_);
              }

              if (v47 < 0)
              {
                operator delete(v46[0]);
              }

              if (v50 < 0)
              {
                operator delete(v48);
              }

              v51 = v42;
              *(&v51 + *(v42 - 3)) = v7;
              v52 = MEMORY[0x1E69E5548] + 16;
              if (v55 < 0)
              {
                operator delete(v54);
              }

              v52 = MEMORY[0x1E69E5538] + 16;
              std::locale::~locale(v53);
              std::ostream::~ostream();
              MEMORY[0x18CFD1DA0](v56);
            }

            std::stringbuf::str();
            addr_obj::Json::escape(this, &v51);
            if (SHIBYTE(v53[0].__locale_) < 0)
            {
LABEL_78:
              operator delete(v51);
            }

LABEL_79:
            __p = v42;
            *(&__p + *(v42 - 3)) = v7;
            v58 = MEMORY[0x1E69E5548] + 16;
            if (v61 < 0)
            {
              operator delete(v60);
            }

            v58 = MEMORY[0x1E69E5538] + 16;
            std::locale::~locale(v59);
            std::ostream::~ostream();
            MEMORY[0x18CFD1DA0](v62);
            break;
        }

        v6 = 0;
      }

      ++v5;
    }

    while (v5 != v64);
  }

  addr_obj::Json::close(this);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  return this;
}

void sub_186889CA0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  __cxa_end_catch();
  std::ostringstream::~ostringstream(&a61);
  v63 = *(v61 - 112);
  if (v63)
  {
    *(v61 - 104) = v63;
    operator delete(v63);
  }

  __cxa_call_unexpected(a1);
}

void sub_186889DC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35)
{
  v37 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v38 = v37;
    if (addr_obj::Logger::isInitialized(v37))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&a34);
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a34, "std::exception: ", 16);
      v40 = (*(*v38 + 16))(v38);
      v41 = strlen(v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
      std::string::basic_string[abi:ne200100]<0>(&a28, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
      std::string::basic_string[abi:ne200100]<0>(&a21, "str");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      addr_obj::Logger::log(16, &a28, 278, &a21, &a15, &__p);
      if (a14 < 0)
      {
        operator delete(__p);
      }

      if (a20 < 0)
      {
        operator delete(a15);
      }

      if (a26 < 0)
      {
        operator delete(a21);
      }

      if (a33 < 0)
      {
        operator delete(a28);
      }

      std::ostringstream::~ostringstream(&a34);
    }

    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "; ", 2);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "std::string addr_obj::Json::str() const", 39);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ": std::exception: ", 18);
    v45 = (*(*v38 + 16))(v38);
    v46 = strlen(v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
    std::stringbuf::str();
    __cxa_end_catch();
  }

  else
  {
    if (addr_obj::Logger::isInitialized(v37))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&a34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a34, "unknown exception", 17);
      std::string::basic_string[abi:ne200100]<0>(&a28, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
      std::string::basic_string[abi:ne200100]<0>(&a21, "str");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      addr_obj::Logger::log(16, &a28, 288, &a21, &a15, &__p);
      if (a14 < 0)
      {
        operator delete(__p);
      }

      if (a20 < 0)
      {
        operator delete(a15);
      }

      if (a26 < 0)
      {
        operator delete(a21);
      }

      if (a33 < 0)
      {
        operator delete(a28);
      }

      std::ostringstream::~ostringstream(&a34);
    }

    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "; ", 2);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "std::string addr_obj::Json::str() const", 39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": unknown exception", 19);
    std::stringbuf::str();
    __cxa_end_catch();
  }

  JUMPOUT(0x186889DA4);
}

void sub_18688A0B8(void *__p, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, void *a8, void *__pa, int a10, __int16 a11, char a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, __int128 a21, std::string::size_type a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (SHIBYTE(a14) < 0)
  {
    operator delete(__pa);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (SHIBYTE(a22) < 0)
  {
    operator delete(a21);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ostringstream::~ostringstream(&a30);
  v37 = __cxa_begin_catch(__p);
  if (a2 == 2)
  {
    v38 = v37;
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "str");
    std::string::basic_string[abi:ne200100]<0>(&a15, "Exception caught during formatting of the log line: ");
    v39 = (*(*v38 + 16))(v38);
    v40 = std::string::append(&a15, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    a22 = v40->__r_.__value_.__r.__words[2];
    a21 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a30, 288, &a24, &a21, &__pa);
    if (SHIBYTE(a14) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (a29 < 0)
    {
      operator delete(a24);
    }

    if (a35 < 0)
    {
      operator delete(a30);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "str");
    std::string::basic_string[abi:ne200100]<0>(&a21, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a15, "");
    addr_obj::Logger::log(16, &a30, 288, &a24, &a21, &a15);
    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a29 < 0)
    {
      operator delete(a24);
    }

    if (a35 < 0)
    {
      operator delete(a30);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18688A03CLL);
}

void sub_18688A39C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18688A394);
}

void sub_18688A410(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18688A080);
}

void sub_18688A420(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18688A2F0);
}

void sub_18688A4AC(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18688A080);
}

void sub_18688A67C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18688A674);
}

void sub_18688A6F0(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186889F68);
}

void sub_18688A700(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18688A5D0);
}

void sub_18688A78C(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186889F68);
}

addr_obj::Json *addr_obj::Json::close(addr_obj::Json *this)
{
  v14 = *MEMORY[0x1E69E9840];
  std::stringbuf::str();
  v2 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (!v2)
  {
    v5 = 0;
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(__p[0]);
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  std::stringbuf::str();
  v3 = v8[1];
  if (v9 >= 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = v8[0];
  }

  if (v9 >= 0)
  {
    v3 = v9;
  }

  v5 = *(v3 + v4 - 1) == 44;
  if ((v9 & 0x8000000000000000) != 0)
  {
    operator delete(v8[0]);
  }

  if ((v12 & 0x80) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_16:
  MEMORY[0x18CFD1BE0](v10, this);
  v6 = this + *(*this - 24);
  if ((v6[32] & 5) == 0)
  {
    (*(**(v6 + 5) + 32))(__p);
    if (v13 == -1)
    {
      std::ios_base::clear((this + *(*this - 24)), *(this + *(*this - 24) + 32) | 4);
    }
  }

  MEMORY[0x18CFD1BF0](v10);
LABEL_20:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, "}", 1);
  return this;
}

void sub_18688A994(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::string *a17, void *a18, uint64_t a19, void *a20, void *a21, uint64_t a22, void *a23, char a24, uint64_t a25, void *a26, uint64_t a27, void *a28, uint64_t a29)
{
  v30 = a2;
  if (a2)
  {
    MEMORY[0x18CFD1BF0](&a26, a2, a3, a4, a5, a6, a7, a8);
    if (v30 == 4)
    {
      v32 = __cxa_begin_catch(exception_object);
      if (addr_obj::Logger::isInitialized(v32))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&a28);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a28, "std::exception: ", 16);
        v34 = (*(*v32 + 16))(v32);
        v35 = strlen(v34);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
        std::string::basic_string[abi:ne200100]<0>(&a23, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
        std::string::basic_string[abi:ne200100]<0>(&a20, "close");
        std::stringbuf::str();
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        addr_obj::Logger::log(16, &a23, 235, &a20, &a17, &__p);
        if (a16 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(a19) < 0)
        {
          operator delete(a17);
        }

        if (SHIBYTE(a22) < 0)
        {
          operator delete(a20);
        }

        if (SHIBYTE(a25) < 0)
        {
          operator delete(a23);
        }

        std::ostringstream::~ostringstream(&a28);
      }

      v36 = addr_obj::Json::operator<<<char [3]>(v29, "; ");
      v37 = addr_obj::Json::operator<<<char [30]>(v36, "Json &addr_obj::Json::close()");
      v38 = addr_obj::Json::operator<<<char [19]>(v37, ": std::exception: ");
      a28 = (*(*v32 + 16))(v32);
      addr_obj::Json::operator<<<char const*>(v38, &a28);
      __cxa_end_catch();
    }

    else if (v30 == 3)
    {
      v39 = __cxa_begin_catch(exception_object);
      a10 = v39;
      if (addr_obj::Logger::isInitialized(v39))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&a28);
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a28, "const char* exception: ", 23);
        v41 = strlen(v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v39, v41);
        std::string::basic_string[abi:ne200100]<0>(&a23, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
        std::string::basic_string[abi:ne200100]<0>(&a20, "close");
        std::stringbuf::str();
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        addr_obj::Logger::log(16, &a23, 235, &a20, &a17, &__p);
        if (a16 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(a19) < 0)
        {
          operator delete(a17);
        }

        if (SHIBYTE(a22) < 0)
        {
          operator delete(a20);
        }

        if (SHIBYTE(a25) < 0)
        {
          operator delete(a23);
        }

        std::ostringstream::~ostringstream(&a28);
      }

      v42 = addr_obj::Json::operator<<<char [3]>(v29, "; ");
      v43 = addr_obj::Json::operator<<<char [30]>(v42, "Json &addr_obj::Json::close()");
      v44 = addr_obj::Json::operator<<<char [17]>(v43, ": const char *: ");
      addr_obj::Json::operator<<<char const*>(v44, &a10);
      __cxa_end_catch();
    }

    else
    {
      v45 = __cxa_begin_catch(exception_object);
      if (v30 == 2)
      {
        v46 = v45;
        if (addr_obj::Logger::isInitialized(v45))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&a28);
          v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a28, "std::string exception: ", 23);
          v48 = *(v46 + 23);
          if (v48 >= 0)
          {
            v49 = v46;
          }

          else
          {
            v49 = *v46;
          }

          if (v48 >= 0)
          {
            v50 = *(v46 + 23);
          }

          else
          {
            v50 = *(v46 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
          std::string::basic_string[abi:ne200100]<0>(&a23, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
          std::string::basic_string[abi:ne200100]<0>(&a20, "close");
          std::stringbuf::str();
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          addr_obj::Logger::log(16, &a23, 235, &a20, &a17, &__p);
          if (a16 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(a19) < 0)
          {
            operator delete(a17);
          }

          if (SHIBYTE(a22) < 0)
          {
            operator delete(a20);
          }

          if (SHIBYTE(a25) < 0)
          {
            operator delete(a23);
          }

          std::ostringstream::~ostringstream(&a28);
        }

        v51 = addr_obj::Json::operator<<<char [3]>(v29, "; ");
        v52 = addr_obj::Json::operator<<<char [30]>(v51, "Json &addr_obj::Json::close()");
        v53 = addr_obj::Json::operator<<<char [26]>(v52, ": std::string exception: ");
        addr_obj::Json::escape(v53, v46);
        __cxa_end_catch();
      }

      else
      {
        if (addr_obj::Logger::isInitialized(v45))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&a28);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a28, "unknown exception", 17);
          std::string::basic_string[abi:ne200100]<0>(&a23, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Json.cpp");
          std::string::basic_string[abi:ne200100]<0>(&a20, "close");
          std::stringbuf::str();
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          addr_obj::Logger::log(16, &a23, 235, &a20, &a17, &__p);
          if (a16 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(a19) < 0)
          {
            operator delete(a17);
          }

          if (SHIBYTE(a22) < 0)
          {
            operator delete(a20);
          }

          if (SHIBYTE(a25) < 0)
          {
            operator delete(a23);
          }

          std::ostringstream::~ostringstream(&a28);
        }

        v54 = addr_obj::Json::operator<<<char [3]>(v29, "; ");
        v55 = addr_obj::Json::operator<<<char [30]>(v54, "Json &addr_obj::Json::close()");
        addr_obj::Json::operator<<<char [20]>(v55, ": unknown exception");
        __cxa_end_catch();
      }
    }

    JUMPOUT(0x18688A95CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_18688BB7C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18688BB88);
  }

  JUMPOUT(0x18688BB74);
}

void sub_18688BD50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18688AB7CLL);
  }

  JUMPOUT(0x18688BB74);
}

void sub_18688BEB8(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x18688BEC4);
  }

  JUMPOUT(0x18688BB74);
}

void sub_18688BECC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18688BB74);
}

void sub_18688BEDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18688BB74);
  }

  JUMPOUT(0x18688BB98);
}

void *addr_obj::Json::append(void *a1, uint64_t *a2, const AddrObjGoogle::protobuf::Message *a3)
{
  addr_obj::Json::Json(&v7);
  addr_obj::Json::escape(&v7, a3);
  addr_obj::Json::append(a1, a2, &v7);
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](&v11);
  return a1;
}

void sub_18688C050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *addr_obj::Json::append(void *a1, uint64_t *a2, addr_obj::Json *a3)
{
  v4 = addr_obj::Json::escape(a1, a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ":", 1);
  addr_obj::Json::str();
  if ((v11 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ",", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_18688C104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *addr_obj::Json::append(void *a1, uint64_t *a2, addr_obj::Localization *a3)
{
  addr_obj::Json::Json(&v8);
  addr_obj::parse<addr_obj::geo3::Address,addr_obj::SerializedAddress>(a3, v7);
  addr_obj::Json::escape(&v8, v7);
  addr_obj::Json::append(a1, a2, &v8);
  addr_obj::geo3::Address::~Address(v7);
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](&v12);
  return a1;
}

{
  addr_obj::Json::Json(&v8);
  addr_obj::parse<addr_obj::geo3::StructuredAddress,addr_obj::SerializedStructuredAddress>(a3, v7);
  addr_obj::Json::escape(&v8, v7);
  addr_obj::Json::append(a1, a2, &v8);
  addr_obj::geo3::StructuredAddress::~StructuredAddress(v7);
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](&v12);
  return a1;
}

void sub_18688C290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  addr_obj::geo3::Address::~Address(va);
  std::ostringstream::~ostringstream(va1);
  _Unwind_Resume(a1);
}

void addr_obj::parse<addr_obj::geo3::Address,addr_obj::SerializedAddress>(addr_obj::Localization *a1@<X0>, addr_obj::geo3::Address *a2@<X8>)
{
  addr_obj::geo3::Address::Address(v5);
  v4 = addr_obj::parse(a1, v5);
  addr_obj::geo3::Address::Address(a2, v4);
  addr_obj::geo3::Address::~Address(v5);
}

void sub_18688C48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  addr_obj::geo3::StructuredAddress::~StructuredAddress(&a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void addr_obj::parse<addr_obj::geo3::StructuredAddress,addr_obj::SerializedStructuredAddress>(addr_obj::Localization *a1@<X0>, addr_obj::geo3::StructuredAddress *a2@<X8>)
{
  addr_obj::geo3::StructuredAddress::StructuredAddress(v5);
  v4 = addr_obj::parse(a1, v5);
  addr_obj::geo3::StructuredAddress::StructuredAddress(a2, v4);
  addr_obj::geo3::StructuredAddress::~StructuredAddress(v5);
}

void sub_18688C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  addr_obj::geo3::StructuredAddress::~StructuredAddress(va);
  _Unwind_Resume(a1);
}

void *addr_obj::Json::operator<<<char [30]>(void *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  addr_obj::Json::escape(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

addr_obj::Json *addr_obj::Json::Json(addr_obj::Json *this)
{
  v2 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "{", 1);
  return this;
}

addr_obj::Json *addr_obj::Json::Json(addr_obj::Json *this, const addr_obj::Json *a2)
{
  std::stringbuf::str();
  std::ostringstream::basic_ostringstream[abi:ne200100](this, &__p, 16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_18688C618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[20] = 0;
  v6 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v7 = *(MEMORY[0x1E69E54E8] + 16);
  v8 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 1);
  v10 = MEMORY[0x1E69E5570] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[14] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), a2, a3 | 0x10);
  return a1;
}

void sub_18688C78C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](v1);
  _Unwind_Resume(a1);
}

void *addr_obj::Json::append(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = addr_obj::Json::escape(a1, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ":", 1);
  v6 = addr_obj::Json::escape(a1, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ",", 1);
  return a1;
}

void *addr_obj::Json::append(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  addr_obj::Json::Json(&v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "default");
  addr_obj::Json::append(&v11, __p, a3);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "true");
  addr_obj::Json::append(&v11, __p, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  addr_obj::Json::close(&v11);
  addr_obj::Json::append(a1, a2, &v11);
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](&v15);
  return a1;
}

void addr_obj::Localization::~Localization(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_18688CAC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_186743E68(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<addr_obj::V1AddressObject *,std::shared_ptr<addr_obj::AddressObject>::__shared_ptr_default_delete<addr_obj::AddressObject,addr_obj::V1AddressObject>,std::allocator<addr_obj::V1AddressObject>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x18CFD1E40);
}

uint64_t std::__shared_ptr_pointer<addr_obj::V1AddressObject *,std::shared_ptr<addr_obj::AddressObject>::__shared_ptr_default_delete<addr_obj::AddressObject,addr_obj::V1AddressObject>,std::allocator<addr_obj::V1AddressObject>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<addr_obj::V1AddressObject *,std::shared_ptr<addr_obj::AddressObject>::__shared_ptr_default_delete<addr_obj::AddressObject,addr_obj::V1AddressObject>,std::allocator<addr_obj::V1AddressObject>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_18688CC48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_186743E68(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<addr_obj::V2AddressObject *,std::shared_ptr<addr_obj::AddressObject>::__shared_ptr_default_delete<addr_obj::AddressObject,addr_obj::V2AddressObject>,std::allocator<addr_obj::V2AddressObject>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x18CFD1E40);
}

uint64_t std::__shared_ptr_pointer<addr_obj::V2AddressObject *,std::shared_ptr<addr_obj::AddressObject>::__shared_ptr_default_delete<addr_obj::AddressObject,addr_obj::V2AddressObject>,std::allocator<addr_obj::V2AddressObject>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<addr_obj::V2AddressObject *,std::shared_ptr<addr_obj::AddressObject>::__shared_ptr_default_delete<addr_obj::AddressObject,addr_obj::V2AddressObject>,std::allocator<addr_obj::V2AddressObject>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void addr_obj::AddressObjectFactory::fromContact(addr_obj::Logger *a1, addr_obj::Localization *a2, uint64_t **a3, uint64_t **a4, uint64_t **a5, uint64_t **a6, uint64_t **a7, uint64_t **a8, uint64_t **a10, uint64_t **a11, uint64_t **a12)
{
  if (addr_obj::Logger::isInitialized(a1))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v93);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "input parameters: ", 18);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "localization", 12);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "==", 2);
    v20 = addr_obj::operator<<(v19, a2);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "formattedAddress", 16);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "==", 2);
    v24 = *(a3 + 23);
    if (v24 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v24 >= 0)
    {
      v26 = *(a3 + 23);
    }

    else
    {
      v26 = a3[1];
    }

    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", ", 2);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "street", 6);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "==", 2);
    v31 = *(a4 + 23);
    if (v31 >= 0)
    {
      v32 = a4;
    }

    else
    {
      v32 = *a4;
    }

    if (v31 >= 0)
    {
      v33 = *(a4 + 23);
    }

    else
    {
      v33 = a4[1];
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", ", 2);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "city", 4);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "==", 2);
    v38 = *(a5 + 23);
    if (v38 >= 0)
    {
      v39 = a5;
    }

    else
    {
      v39 = *a5;
    }

    if (v38 >= 0)
    {
      v40 = *(a5 + 23);
    }

    else
    {
      v40 = a5[1];
    }

    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", ", 2);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "state", 5);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "==", 2);
    v45 = *(a6 + 23);
    if (v45 >= 0)
    {
      v46 = a6;
    }

    else
    {
      v46 = *a6;
    }

    if (v45 >= 0)
    {
      v47 = *(a6 + 23);
    }

    else
    {
      v47 = a6[1];
    }

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ", ", 2);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "postalCode", 10);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "==", 2);
    v52 = *(a7 + 23);
    if (v52 >= 0)
    {
      v53 = a7;
    }

    else
    {
      v53 = *a7;
    }

    if (v52 >= 0)
    {
      v54 = *(a7 + 23);
    }

    else
    {
      v54 = a7[1];
    }

    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ", ", 2);
    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "country", 7);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "==", 2);
    v59 = *(a8 + 23);
    if (v59 >= 0)
    {
      v60 = a8;
    }

    else
    {
      v60 = *a8;
    }

    if (v59 >= 0)
    {
      v61 = *(a8 + 23);
    }

    else
    {
      v61 = a8[1];
    }

    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v60, v61);
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ", ", 2);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "isoCountryCode", 14);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "==", 2);
    v66 = *(a10 + 23);
    if (v66 >= 0)
    {
      v67 = a10;
    }

    else
    {
      v67 = *a10;
    }

    if (v66 >= 0)
    {
      v68 = *(a10 + 23);
    }

    else
    {
      v68 = a10[1];
    }

    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v67, v68);
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, ", ", 2);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "subAdministrativeArea", 21);
    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "==", 2);
    v73 = *(a11 + 23);
    if (v73 >= 0)
    {
      v74 = a11;
    }

    else
    {
      v74 = *a11;
    }

    if (v73 >= 0)
    {
      v75 = *(a11 + 23);
    }

    else
    {
      v75 = a11[1];
    }

    v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v74, v75);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, ", ", 2);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "subLocality", 11);
    v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "==", 2);
    v80 = *(a12 + 23);
    if (v80 >= 0)
    {
      v81 = a12;
    }

    else
    {
      v81 = *a12;
    }

    if (v80 >= 0)
    {
      v82 = *(a12 + 23);
    }

    else
    {
      v82 = a12[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, v81, v82);
    std::string::basic_string[abi:ne200100]<0>(v91, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(v89, "fromContact");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    addr_obj::Logger::log(2, v91, 137, v89, &v87, __p);
    if (v86 < 0)
    {
      operator delete(__p[0]);
    }

    if (v88 < 0)
    {
      operator delete(v87);
    }

    if (v90 < 0)
    {
      operator delete(v89[0]);
    }

    if (v92 < 0)
    {
      operator delete(v91[0]);
    }

    v93 = *MEMORY[0x1E69E54E8];
    *(&v93 + *(v93 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v94 = MEMORY[0x1E69E5548] + 16;
    if (v96 < 0)
    {
      operator delete(v95[7].__locale_);
    }

    v94 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v95);
    std::ostream::~ostream();
    MEMORY[0x18CFD1DA0](&v97);
  }

  operator new();
}

void sub_18688D2F4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, addr_obj::Localization *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::string *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, addr_obj::Localization *a24, void *__pa, int a26, __int16 a27, char a28, char a29, void *a30, void *a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39, __int128 a40, std::string::size_type a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (SHIBYTE(a30) < 0)
  {
    operator delete(__pa);
  }

  if (a39 < 0)
  {
    operator delete(a31);
  }

  if (SHIBYTE(a41) < 0)
  {
    operator delete(a40);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  std::ostringstream::~ostringstream(&a48);
  v55 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v56 = v55;
    std::string::basic_string[abi:ne200100]<0>(&a48, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a42, "fromContact");
    std::string::basic_string[abi:ne200100]<0>(&a31, "Exception caught during formatting of the log line: ");
    v57 = (*(*v56 + 16))(v56);
    v58 = std::string::append(&a31, v57);
    v59 = *&v58->__r_.__value_.__l.__data_;
    a41 = v58->__r_.__value_.__r.__words[2];
    a40 = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(2, &a48, 137, &a42, &a40, &__pa);
    if (SHIBYTE(a30) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a41) < 0)
    {
      operator delete(a40);
    }

    if (a39 < 0)
    {
      v60 = a31;
LABEL_20:
      operator delete(v60);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a48, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a42, "fromContact");
    std::string::basic_string[abi:ne200100]<0>(&a40, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a31, "");
    addr_obj::Logger::log(2, &a48, 137, &a42, &a40, &a31);
    if (a39 < 0)
    {
      operator delete(a31);
    }

    if (SHIBYTE(a41) < 0)
    {
      v60 = a40;
      goto LABEL_20;
    }
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  __cxa_end_catch();
  JUMPOUT(0x18688D21CLL);
}

void sub_18688E874(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18688E86CLL);
}

void sub_18688E8F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18688E86CLL);
}

void addr_obj::AddressObjectFactory::fromLegacy(addr_obj::Logger *a1, addr_obj::Localization *a2, uint64_t **a3, unsigned __int8 *a4, uint64_t **a5, std::string *a6, unsigned __int8 *a7, std::string *a8, unsigned __int8 *a10, char **a11, uint64_t **a12, int a13)
{
  v13 = a4;
  if (addr_obj::Logger::isInitialized(a1))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v86);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "input parameters: ", 18);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "localization", 12);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "==", 2);
    v18 = addr_obj::operator<<(v17, a2);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "name", 4);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "==", 2);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", ", 2);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "address", 7);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "==", 2);
    v29 = addr_obj::operator<<(v28, v13);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", ", 2);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "spokenName", 10);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "==", 2);
    v33 = *(a5 + 23);
    if (v33 >= 0)
    {
      v34 = a5;
    }

    else
    {
      v34 = *a5;
    }

    if (v33 >= 0)
    {
      v35 = *(a5 + 23);
    }

    else
    {
      v35 = a5[1];
    }

    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", ", 2);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "spokenAddress", 13);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "==", 2);
    v40 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
    if (v40 >= 0)
    {
      v41 = a6;
    }

    else
    {
      v41 = a6->__r_.__value_.__r.__words[0];
    }

    if (v40 >= 0)
    {
      size = HIBYTE(a6->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a6->__r_.__value_.__l.__size_;
    }

    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v41, size);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ", ", 2);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "spokenStructuredAddress", 23);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "==", 2);
    v47 = addr_obj::operator<<(v46, a7);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ", ", 2);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "phoneticName", 12);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "==", 2);
    v51 = SHIBYTE(a8->__r_.__value_.__r.__words[2]);
    if (v51 >= 0)
    {
      v52 = a8;
    }

    else
    {
      v52 = a8->__r_.__value_.__r.__words[0];
    }

    if (v51 >= 0)
    {
      v53 = HIBYTE(a8->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v53 = a8->__r_.__value_.__l.__size_;
    }

    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v52, v53);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", ", 2);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "phoneticAddress", 15);
    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "==", 2);
    v58 = addr_obj::operator<<(v57, a10);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ", ", 2);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "venueData", 9);
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "==", 2);
    v62 = addr_obj::operator<<(v61, a11);
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ", ", 2);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "locationAddress", 15);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "==", 2);
    v66 = *(a12 + 23);
    if (v66 >= 0)
    {
      v67 = a12;
    }

    else
    {
      v67 = *a12;
    }

    if (v66 >= 0)
    {
      v68 = *(a12 + 23);
    }

    else
    {
      v68 = a12[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v67, v68);
    std::string::basic_string[abi:ne200100]<0>(v84, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(v82, "fromLegacy");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    addr_obj::Logger::log(2, v84, 171, v82, &v80, &__p);
    if (v79 < 0)
    {
      operator delete(__p);
    }

    if (v81 < 0)
    {
      operator delete(v80);
    }

    if (SHIBYTE(v83) < 0)
    {
      operator delete(v82[0]);
    }

    if (SHIBYTE(v85) < 0)
    {
      operator delete(v84[0]);
    }

    v86 = *MEMORY[0x1E69E54E8];
    *(&v86 + *(v86 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v87 = MEMORY[0x1E69E5548] + 16;
    if (v92 < 0)
    {
      operator delete(v91);
    }

    v87 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v88);
    std::ostream::~ostream();
    MEMORY[0x18CFD1DA0](&v93);
    v13 = a4;
  }

  addr_obj::geo3::Address::Address(&v86);
  v84[0] = 0;
  v84[1] = 0;
  v85 = 0;
  addr_obj::parse(v13, &v86);
  if ((v90 & 2) != 0)
  {
    v69 = v89;
    if (!v89)
    {
      v69 = *(addr_obj::geo3::Address::default_instance_(0) + 40);
    }

    addr_obj::getCountryCode(v82, v69);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(v84[0]);
    }

    *v84 = *v82;
    v85 = v83;
  }

  if (!a13)
  {
    v70 = *(a12 + 23);
    if ((v70 & 0x80u) != 0)
    {
      v70 = a12[1];
    }

    if (!v70 && !addr_obj::Formatting::overrideLegacyShortAddress(a2, v84))
    {
      operator new();
    }
  }

  operator new();
}

void sub_18688F0DC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 *a29, char **a30, uint64_t a31, addr_obj::Localization *a32, uint64_t a33, unsigned __int8 *a34, uint64_t a35, uint64_t a36, uint64_t a37, unsigned __int8 *a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x18CFD1E40](v66, 0x10F3C40CF03993ALL, a3, a4, a5, a6, a7, a8);
  if (a65 < 0)
  {
    operator delete(a62);
  }

  addr_obj::geo3::Address::~Address(&a66);
  if (a2 == 3)
  {
    v69 = __cxa_begin_catch(a1);
    std::ostringstream::basic_ostringstream[abi:ne200100](&a66);
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a66, "; ", 2);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "fromLegacy", 10);
    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " failed for ", 12);
    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "input parameters: ", 18);
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "localization", 12);
    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "==", 2);
    v76 = addr_obj::operator<<(v75, a32);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, ", ", 2);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "name", 4);
    v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "==", 2);
    v80 = *(a37 + 23);
    if (v80 >= 0)
    {
      v81 = a37;
    }

    else
    {
      v81 = *a37;
    }

    if (v80 >= 0)
    {
      v82 = *(a37 + 23);
    }

    else
    {
      v82 = *(a37 + 8);
    }

    v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, v81, v82);
    v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, ", ", 2);
    v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "address", 7);
    v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "==", 2);
    v87 = addr_obj::operator<<(v86, a38);
    v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, ", ", 2);
    v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "spokenName", 10);
    v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "==", 2);
    v91 = *(a36 + 23);
    if (v91 >= 0)
    {
      v92 = a36;
    }

    else
    {
      v92 = *a36;
    }

    if (v91 >= 0)
    {
      v93 = *(a36 + 23);
    }

    else
    {
      v93 = *(a36 + 8);
    }

    v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, v92, v93);
    v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, ", ", 2);
    v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "spokenAddress", 13);
    v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "==", 2);
    v98 = *(a35 + 23);
    if (v98 >= 0)
    {
      v99 = a35;
    }

    else
    {
      v99 = *a35;
    }

    if (v98 >= 0)
    {
      v100 = *(a35 + 23);
    }

    else
    {
      v100 = *(a35 + 8);
    }

    v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, v99, v100);
    v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, ", ", 2);
    v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, "spokenStructuredAddress", 23);
    v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "==", 2);
    v105 = addr_obj::operator<<(v104, a34);
    v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, ", ", 2);
    v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "phoneticName", 12);
    v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, "==", 2);
    v109 = *(a33 + 23);
    if (v109 >= 0)
    {
      v110 = a33;
    }

    else
    {
      v110 = *a33;
    }

    if (v109 >= 0)
    {
      v111 = *(a33 + 23);
    }

    else
    {
      v111 = *(a33 + 8);
    }

    v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, v110, v111);
    v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, ", ", 2);
    v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, "phoneticAddress", 15);
    v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, "==", 2);
    v116 = addr_obj::operator<<(v115, a29);
    v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, ", ", 2);
    v118 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v117, "venueData", 9);
    v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "==", 2);
    v120 = addr_obj::operator<<(v119, a30);
    v121 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, ", ", 2);
    v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, "locationAddress", 15);
    v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "==", 2);
    v124 = *(a31 + 23);
    if (v124 >= 0)
    {
      v125 = a31;
    }

    else
    {
      v125 = *a31;
    }

    if (v124 >= 0)
    {
      v126 = *(a31 + 23);
    }

    else
    {
      v126 = *(a31 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, v125, v126);
    std::stringbuf::str();
    addr_obj::AddressObjectException::operator+=(v69, &a62);
    if (a65 < 0)
    {
      operator delete(a62);
    }

    std::ostringstream::~ostringstream(&a66);
    __cxa_rethrow();
  }

  v127 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v128 = v127;
    if (addr_obj::Logger::isInitialized(v127))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&a66);
      v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a66, "fromLegacy", 10);
      v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v129, " failed: ", 9);
      v131 = (*(*v128 + 16))(v128);
      v132 = strlen(v131);
      v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, v131, v132);
      v134 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v133, "; for ", 6);
      v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, "input parameters: ", 18);
      v136 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, "localization", 12);
      v137 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, "==", 2);
      v138 = addr_obj::operator<<(v137, a32);
      v139 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v138, ", ", 2);
      v140 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v139, "name", 4);
      v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v140, "==", 2);
      v142 = *(a37 + 23);
      if (v142 >= 0)
      {
        v143 = a37;
      }

      else
      {
        v143 = *a37;
      }

      if (v142 >= 0)
      {
        v144 = *(a37 + 23);
      }

      else
      {
        v144 = *(a37 + 8);
      }

      v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v141, v143, v144);
      v146 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, ", ", 2);
      v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v146, "address", 7);
      v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v147, "==", 2);
      v149 = addr_obj::operator<<(v148, a38);
      v150 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v149, ", ", 2);
      v151 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v150, "spokenName", 10);
      v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v151, "==", 2);
      v153 = *(a36 + 23);
      if (v153 >= 0)
      {
        v154 = a36;
      }

      else
      {
        v154 = *a36;
      }

      if (v153 >= 0)
      {
        v155 = *(a36 + 23);
      }

      else
      {
        v155 = *(a36 + 8);
      }

      v156 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v152, v154, v155);
      v157 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v156, ", ", 2);
      v158 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v157, "spokenAddress", 13);
      v159 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v158, "==", 2);
      v160 = *(a35 + 23);
      if (v160 >= 0)
      {
        v161 = a35;
      }

      else
      {
        v161 = *a35;
      }

      if (v160 >= 0)
      {
        v162 = *(a35 + 23);
      }

      else
      {
        v162 = *(a35 + 8);
      }

      v163 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v159, v161, v162);
      v164 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v163, ", ", 2);
      v165 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v164, "spokenStructuredAddress", 23);
      v166 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v165, "==", 2);
      v167 = addr_obj::operator<<(v166, a34);
      v168 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v167, ", ", 2);
      v169 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v168, "phoneticName", 12);
      v170 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v169, "==", 2);
      v171 = *(a33 + 23);
      if (v171 >= 0)
      {
        v172 = a33;
      }

      else
      {
        v172 = *a33;
      }

      if (v171 >= 0)
      {
        v173 = *(a33 + 23);
      }

      else
      {
        v173 = *(a33 + 8);
      }

      v174 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v170, v172, v173);
      v175 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v174, ", ", 2);
      v176 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v175, "phoneticAddress", 15);
      v177 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v176, "==", 2);
      v178 = addr_obj::operator<<(v177, a29);
      v179 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v178, ", ", 2);
      v180 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v179, "venueData", 9);
      v181 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v180, "==", 2);
      v182 = addr_obj::operator<<(v181, a30);
      v183 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v182, ", ", 2);
      v184 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v183, "locationAddress", 15);
      v185 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v184, "==", 2);
      v186 = *(a31 + 23);
      if (v186 >= 0)
      {
        v187 = a31;
      }

      else
      {
        v187 = *a31;
      }

      if (v186 >= 0)
      {
        v188 = *(a31 + 23);
      }

      else
      {
        v188 = *(a31 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v185, v187, v188);
      std::string::basic_string[abi:ne200100]<0>(&a62, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
      std::string::basic_string[abi:ne200100]<0>(&a55, "fromLegacy");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&a43, "");
      addr_obj::Logger::log(16, &a62, 228, &a55, &__p, &a43);
      if (a48 < 0)
      {
        operator delete(a43);
      }

      if (a54 < 0)
      {
        operator delete(__p);
      }

      if (a60 < 0)
      {
        operator delete(a55);
      }

      if (a65 < 0)
      {
        operator delete(a62);
      }

      std::ostringstream::~ostringstream(&a66);
    }

    __cxa_rethrow();
  }

  if (addr_obj::Logger::isInitialized(v127))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&a66);
    v189 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a66, "fromLegacy", 10);
    v190 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v189, " failed for ", 12);
    v191 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v190, "input parameters: ", 18);
    v192 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v191, "localization", 12);
    v193 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v192, "==", 2);
    v194 = addr_obj::operator<<(v193, a32);
    v195 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v194, ", ", 2);
    v196 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v195, "name", 4);
    v197 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v196, "==", 2);
    v198 = *(a37 + 23);
    if (v198 >= 0)
    {
      v199 = a37;
    }

    else
    {
      v199 = *a37;
    }

    if (v198 >= 0)
    {
      v200 = *(a37 + 23);
    }

    else
    {
      v200 = *(a37 + 8);
    }

    v201 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v197, v199, v200);
    v202 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v201, ", ", 2);
    v203 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v202, "address", 7);
    v204 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v203, "==", 2);
    v205 = addr_obj::operator<<(v204, a38);
    v206 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v205, ", ", 2);
    v207 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v206, "spokenName", 10);
    v208 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v207, "==", 2);
    v209 = *(a36 + 23);
    if (v209 >= 0)
    {
      v210 = a36;
    }

    else
    {
      v210 = *a36;
    }

    if (v209 >= 0)
    {
      v211 = *(a36 + 23);
    }

    else
    {
      v211 = *(a36 + 8);
    }

    v212 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v208, v210, v211);
    v213 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v212, ", ", 2);
    v214 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "spokenAddress", 13);
    v215 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v214, "==", 2);
    v216 = *(a35 + 23);
    if (v216 >= 0)
    {
      v217 = a35;
    }

    else
    {
      v217 = *a35;
    }

    if (v216 >= 0)
    {
      v218 = *(a35 + 23);
    }

    else
    {
      v218 = *(a35 + 8);
    }

    v219 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v215, v217, v218);
    v220 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v219, ", ", 2);
    v221 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v220, "spokenStructuredAddress", 23);
    v222 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v221, "==", 2);
    v223 = addr_obj::operator<<(v222, a34);
    v224 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v223, ", ", 2);
    v225 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v224, "phoneticName", 12);
    v226 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v225, "==", 2);
    v227 = *(a33 + 23);
    if (v227 >= 0)
    {
      v228 = a33;
    }

    else
    {
      v228 = *a33;
    }

    if (v227 >= 0)
    {
      v229 = *(a33 + 23);
    }

    else
    {
      v229 = *(a33 + 8);
    }

    v230 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v226, v228, v229);
    v231 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v230, ", ", 2);
    v232 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v231, "phoneticAddress", 15);
    v233 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v232, "==", 2);
    v234 = addr_obj::operator<<(v233, a29);
    v235 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v234, ", ", 2);
    v236 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v235, "venueData", 9);
    v237 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v236, "==", 2);
    v238 = addr_obj::operator<<(v237, a30);
    v239 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v238, ", ", 2);
    v240 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v239, "locationAddress", 15);
    v241 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v240, "==", 2);
    v242 = *(a31 + 23);
    if (v242 >= 0)
    {
      v243 = a31;
    }

    else
    {
      v243 = *a31;
    }

    if (v242 >= 0)
    {
      v244 = *(a31 + 23);
    }

    else
    {
      v244 = *(a31 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v241, v243, v244);
    std::string::basic_string[abi:ne200100]<0>(&a62, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a55, "fromLegacy");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(&a43, "");
    addr_obj::Logger::log(16, &a62, 228, &a55, &__p, &a43);
    if (a48 < 0)
    {
      operator delete(a43);
    }

    if (a54 < 0)
    {
      operator delete(__p);
    }

    if (a60 < 0)
    {
      operator delete(a55);
    }

    if (a65 < 0)
    {
      operator delete(a62);
    }

    std::ostringstream::~ostringstream(&a66);
  }

  __cxa_rethrow();
}

void sub_18689065C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a65 < 0)
  {
    operator delete(*v65);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186890650);
}

void sub_1868907E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_186743E68(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<addr_obj::V0AddressObject *,std::shared_ptr<addr_obj::V0AddressObject>::__shared_ptr_default_delete<addr_obj::V0AddressObject,addr_obj::V0AddressObject>,std::allocator<addr_obj::V0AddressObject>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x18CFD1E40);
}

uint64_t std::__shared_ptr_pointer<addr_obj::V0AddressObject *,std::shared_ptr<addr_obj::V0AddressObject>::__shared_ptr_default_delete<addr_obj::V0AddressObject,addr_obj::V0AddressObject>,std::allocator<addr_obj::V0AddressObject>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<addr_obj::V0AddressObject *,std::shared_ptr<addr_obj::V0AddressObject>::__shared_ptr_default_delete<addr_obj::V0AddressObject,addr_obj::V0AddressObject>,std::allocator<addr_obj::V0AddressObject>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<addr_obj::V1AddressObject *,std::shared_ptr<addr_obj::V1AddressObject>::__shared_ptr_default_delete<addr_obj::V1AddressObject,addr_obj::V1AddressObject>,std::allocator<addr_obj::V1AddressObject>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x18CFD1E40);
}

uint64_t std::__shared_ptr_pointer<addr_obj::V1AddressObject *,std::shared_ptr<addr_obj::V1AddressObject>::__shared_ptr_default_delete<addr_obj::V1AddressObject,addr_obj::V1AddressObject>,std::allocator<addr_obj::V1AddressObject>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<addr_obj::V2AddressObject *,std::shared_ptr<addr_obj::V2AddressObject>::__shared_ptr_default_delete<addr_obj::V2AddressObject,addr_obj::V2AddressObject>,std::allocator<addr_obj::V2AddressObject>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x18CFD1E40);
}

uint64_t std::__shared_ptr_pointer<addr_obj::V2AddressObject *,std::shared_ptr<addr_obj::V2AddressObject>::__shared_ptr_default_delete<addr_obj::V2AddressObject,addr_obj::V2AddressObject>,std::allocator<addr_obj::V2AddressObject>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void addr_obj::AddressObjectBase::toBytes(addr_obj::AddressObjectBase *this@<X0>, std::string *a2@<X8>)
{
  addr_obj::AddressObjectProto::Clear((this + 136));
  (*(*this + 304))(this, this + 136);
  v23 = 0uLL;
  v24 = 0;
  v4 = AddrObjGoogle::protobuf::MessageLite::SerializeToString(this + 136, &v23);
  if (v4)
  {
    *&a2->__r_.__value_.__l.__data_ = v23;
    a2->__r_.__value_.__r.__words[2] = v24;
    v24 = 0;
    v23 = 0uLL;
  }

  else
  {
    isInitialized = addr_obj::Logger::isInitialized(v4);
    if (isInitialized)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "failed SerializeToString() for :", 32);
      AddrObjGoogle::protobuf::Message::ShortDebugString(&__p, (this + 136));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
      std::string::basic_string[abi:ne200100]<0>(v15, "toBytes");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v11, "");
      addr_obj::Logger::log(16, &__p, 50, v15, &v13, v11);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v18 = *MEMORY[0x1E69E54E8];
      *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v19 = MEMORY[0x1E69E5548] + 16;
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      v19 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v20);
      std::ostream::~ostream();
      isInitialized = MEMORY[0x18CFD1DA0](&v22);
    }

    v9 = addr_obj::emptyString(isInitialized);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      a2->__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&a2->__r_.__value_.__l.__data_ = v10;
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }
}

void sub_186890C78(void *__p, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, void *a8, void *__pa, int a10, __int16 a11, char a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, __int128 a21, std::string::size_type a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (SHIBYTE(a14) < 0)
  {
    operator delete(__pa);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (SHIBYTE(a22) < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  std::ostringstream::~ostringstream(&a34);
  v41 = __cxa_begin_catch(__p);
  if (a2 == 2)
  {
    v42 = v41;
    std::string::basic_string[abi:ne200100]<0>(&a34, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a27, "toBytes");
    std::string::basic_string[abi:ne200100]<0>(&a15, "Exception caught during formatting of the log line: ");
    v43 = (*(*v42 + 16))(v42);
    v44 = std::string::append(&a15, v43);
    v45 = *&v44->__r_.__value_.__l.__data_;
    a22 = v44->__r_.__value_.__r.__words[2];
    a21 = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a34, 50, &a27, &a21, &__pa);
    if (SHIBYTE(a14) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (a32 < 0)
    {
      operator delete(a27);
    }

    if (a39 < 0)
    {
      operator delete(a34);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a34, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a27, "toBytes");
    std::string::basic_string[abi:ne200100]<0>(&a21, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a15, "");
    addr_obj::Logger::log(16, &a34, 50, &a27, &a21, &a15);
    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a32 < 0)
    {
      operator delete(a27);
    }

    if (a39 < 0)
    {
      operator delete(a34);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186890C24);
}

void sub_186890ECC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186890EC4);
}

void sub_186890F40(void *a1, int a2, int a3, __int16 a4, char a5, char a6, void *__p, uint64_t a8, int a9, __int16 a10, char a11, char a12, std::string *a13, uint64_t a14, void *__pa, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36)
{
  __cxa_end_catch();
  if (*(v37 - 49) < 0)
  {
    operator delete(*(v37 - 72));
  }

  if (a2 == 3)
  {
    v40 = __cxa_begin_catch(a1);
    std::ostringstream::basic_ostringstream[abi:ne200100](&a35);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a35, "; ", 2);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "toBytes", 7);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " failed for ", 12);
    AddrObjGoogle::protobuf::Message::ShortDebugString((v37 - 72), (v36 + 136));
    v44 = *(v37 - 49);
    if (v44 >= 0)
    {
      v45 = v37 - 72;
    }

    else
    {
      v45 = *(v37 - 72);
    }

    if (v44 >= 0)
    {
      v46 = *(v37 - 49);
    }

    else
    {
      v46 = *(v37 - 64);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
    if (*(v37 - 49) < 0)
    {
      operator delete(*(v37 - 72));
    }

    std::stringbuf::str();
    addr_obj::AddressObjectException::operator+=(v40, (v37 - 72));
    if (*(v37 - 49) < 0)
    {
      operator delete(*(v37 - 72));
    }

    std::ostringstream::~ostringstream(&a35);
    __cxa_rethrow();
  }

  v47 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v48 = v47;
    if (addr_obj::Logger::isInitialized(v47))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&a35);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a35, "toBytes", 7);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " failed: ", 9);
      v51 = (*(*v48 + 16))(v48);
      v52 = strlen(v51);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v51, v52);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "; for ", 6);
      AddrObjGoogle::protobuf::Message::ShortDebugString((v37 - 72), (v36 + 136));
      v55 = *(v37 - 49);
      if (v55 >= 0)
      {
        v56 = v37 - 72;
      }

      else
      {
        v56 = *(v37 - 72);
      }

      if (v55 >= 0)
      {
        v57 = *(v37 - 49);
      }

      else
      {
        v57 = *(v37 - 64);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v56, v57);
      if (*(v37 - 49) < 0)
      {
        operator delete(*(v37 - 72));
      }

      std::string::basic_string[abi:ne200100]<0>((v37 - 72), "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
      std::string::basic_string[abi:ne200100]<0>(&a28, "toBytes");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&__pa, "");
      addr_obj::Logger::log(16, (v37 - 72), 55, &a28, &a21, &__pa);
      if (a20 < 0)
      {
        operator delete(__pa);
      }

      if (SHIBYTE(a23) < 0)
      {
        operator delete(a21);
      }

      if (a33 < 0)
      {
        operator delete(a28);
      }

      if (*(v37 - 49) < 0)
      {
        operator delete(*(v37 - 72));
      }

      std::ostringstream::~ostringstream(&a35);
    }

    __cxa_rethrow();
  }

  if (addr_obj::Logger::isInitialized(v47))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&a35);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a35, "toBytes", 7);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " failed for ", 12);
    AddrObjGoogle::protobuf::Message::ShortDebugString((v37 - 72), (v36 + 136));
    v60 = *(v37 - 49);
    if (v60 >= 0)
    {
      v61 = v37 - 72;
    }

    else
    {
      v61 = *(v37 - 72);
    }

    if (v60 >= 0)
    {
      v62 = *(v37 - 49);
    }

    else
    {
      v62 = *(v37 - 64);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v61, v62);
    if (*(v37 - 49) < 0)
    {
      operator delete(*(v37 - 72));
    }

    std::string::basic_string[abi:ne200100]<0>((v37 - 72), "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a28, "toBytes");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, (v37 - 72), 55, &a28, &a21, &__pa);
    if (a20 < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a23) < 0)
    {
      operator delete(a21);
    }

    if (a33 < 0)
    {
      operator delete(a28);
    }

    if (*(v37 - 49) < 0)
    {
      operator delete(*(v37 - 72));
    }

    std::ostringstream::~ostringstream(&a35);
  }

  __cxa_rethrow();
}

void addr_obj::AddressObjectBase::toBase64String(addr_obj::AddressObjectBase *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  (*(*this + 192))(__p);
  addr_obj::Base64::encodeString(__p, a2);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186891B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_186891C04(void *a1, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, void *a8, void *a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void **__pa, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35)
{
  v38 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v39 = v38;
    isInitialized = addr_obj::Logger::isInitialized(v38);
    if (isInitialized)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&a34);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a34, "toBase64String() failed: ", 25);
      v42 = (*(*v39 + 16))(v39);
      v43 = strlen(v42);
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " for ", 5);
      (*(*v36 + 208))(&__pa, v36);
      if (a33 >= 0)
      {
        p_pa = &__pa;
      }

      else
      {
        p_pa = __pa;
      }

      if (a33 >= 0)
      {
        v47 = a33;
      }

      else
      {
        v47 = a29;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, p_pa, v47);
      if (a33 < 0)
      {
        operator delete(__pa);
      }

      std::string::basic_string[abi:ne200100]<0>(&__pa, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
      std::string::basic_string[abi:ne200100]<0>(&a21, "asBase64String");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&a9, "");
      addr_obj::Logger::log(16, &__pa, 75, &a21, &__p, &a9);
      if (SHIBYTE(a14) < 0)
      {
        operator delete(a9);
      }

      if (a20 < 0)
      {
        operator delete(__p);
      }

      if (a26 < 0)
      {
        operator delete(a21);
      }

      if (a33 < 0)
      {
        operator delete(__pa);
      }

      isInitialized = std::ostringstream::~ostringstream(&a34);
    }

    v48 = addr_obj::emptyString(isInitialized);
    if (*(v48 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v35, *v48, *(v48 + 1));
    }

    else
    {
      v49 = *v48;
      v35->__r_.__value_.__r.__words[2] = *(v48 + 2);
      *&v35->__r_.__value_.__l.__data_ = v49;
    }

    __cxa_end_catch();
    JUMPOUT(0x186891BECLL);
  }

  if (addr_obj::Logger::isInitialized(v38))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&a34);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a34, "toBase64String() failed", 23);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " for ", 5);
    (*(*v36 + 208))(&__pa, v36);
    if (a33 >= 0)
    {
      v52 = &__pa;
    }

    else
    {
      v52 = __pa;
    }

    if (a33 >= 0)
    {
      v53 = a33;
    }

    else
    {
      v53 = a29;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, v53);
    if (a33 < 0)
    {
      operator delete(__pa);
    }

    std::string::basic_string[abi:ne200100]<0>(&__pa, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a21, "asBase64String");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(&a9, "");
    addr_obj::Logger::log(16, &__pa, 80, &a21, &__p, &a9);
    if (SHIBYTE(a14) < 0)
    {
      operator delete(a9);
    }

    if (a20 < 0)
    {
      operator delete(__p);
    }

    if (a26 < 0)
    {
      operator delete(a21);
    }

    if (a33 < 0)
    {
      operator delete(__pa);
    }

    std::ostringstream::~ostringstream(&a34);
  }

  __cxa_rethrow();
}

void sub_186892508(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186892500);
}

void sub_18689257C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  __cxa_end_catch();
  __cxa_end_catch();
  __cxa_call_unexpected(a1);
}

uint64_t addr_obj::AddressObjectBase::toDebugJsonString(addr_obj::AddressObjectBase *this)
{
  addr_obj::Json::Json(&v18);
  std::string::basic_string[abi:ne200100]<0>(&v13, "getName");
  (*(*this + 16))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getAddress");
  (*(*this + 24))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getSpokenName");
  (*(*this + 32))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getSpokenAddress");
  (*(*this + 40))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getSpokenStructuredAddress");
  (*(*this + 48))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getPhoneticName");
  (*(*this + 56))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getPhoneticAddress");
  (*(*this + 64))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getLocalization");
  v3 = (*(*this + 152))(this);
  addr_obj::Json::append<addr_obj::Localization>(&v18, &v13, v3);
  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getFullAddress");
  (*(*this + 72))(__p, this, 0);
  (*(*this + 72))(v11, this, 1);
  addr_obj::Json::append(&v18, &v13, __p, v11);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getShortAddress");
  (*(*this + 88))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getAboveDoorShortAddress");
  (*(*this + 104))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getCityAndAbove");
  (*(*this + 112))(__p, this, 0);
  (*(*this + 112))(v11, this, 1);
  addr_obj::Json::append(&v18, &v13, __p, v11);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getDisplayLocality");
  (*(*this + 136))(__p, this, 0);
  (*(*this + 136))(v11, this, 1);
  addr_obj::Json::append(&v18, &v13, __p, v11);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getSpokenLocality");
  (*(*this + 144))(__p, this, 0);
  (*(*this + 144))(v11, this, 1);
  addr_obj::Json::append(&v18, &v13, __p, v11);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getParkingName");
  (*(*this + 216))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getWeatherName");
  (*(*this + 224))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getWeatherLocationName");
  (*(*this + 232))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getCountryCode");
  (*(*this + 176))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getCountryName");
  (*(*this + 168))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getVenueShortAddress");
  (*(*this + 240))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getLocationAddress");
  (*(*this + 256))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getNeighborhoodName");
  (*(*this + 264))(__p, this, 0);
  (*(*this + 264))(v11, this, 1);
  addr_obj::Json::append(&v18, &v13, __p, v11);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "toVCard");
  (*(*this + 184))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "getVenueInfo");
  v4 = (*(*this + 160))(this);
  addr_obj::Json::append<addr_obj::VenueInfo>(&v18, &v13, v4);
  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "toBase64String");
  (*(*this + 200))(__p, this);
  addr_obj::Json::append(&v18, &v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15[0].__locale_) < 0)
  {
    operator delete(v13);
  }

  addr_obj::Json::Json(&v13);
  std::string::basic_string[abi:ne200100]<0>(__p, "accessors");
  v5 = addr_obj::Json::close(&v18);
  addr_obj::Json::append(&v13, __p, v5);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  addr_obj::AddressObjectProto::AddressObjectProto(__p);
  (*(*this + 304))(this, __p);
  std::string::basic_string[abi:ne200100]<0>(v11, "internal");
  addr_obj::Json::append(&v13, v11, __p);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  addr_obj::AddressObjectProto::~AddressObjectProto(__p);
  addr_obj::Json::close(&v13);
  addr_obj::Json::str();
  v13 = *MEMORY[0x1E69E54E8];
  v6 = v13;
  v7 = *(MEMORY[0x1E69E54E8] + 24);
  *(&v13 + *(v13 - 3)) = v7;
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](&v17);
  v18 = v6;
  *(&v18 + *(v6 - 3)) = v7;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x18CFD1DA0](&v22);
}